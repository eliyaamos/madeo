<?php

namespace App\Listeners;

use App\Events\RepaymentCreated;
use App\Events\RepaymentNotification;
use App\Helpers\GeneralHelper;
use App\Mail\RepaymentReceived;
use App\Models\Email;
use App\Models\Setting;
use App\Models\Sms;
use Cartalyst\Sentinel\Laravel\Facades\Sentinel;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\View;
use PDF;

class SendRepaymentNotifications
{
    /**
     * Create the event listener.
     *
     * @return void
     */
    public function __construct()
    {
        //
    }

    /**
     * Handle the event.
     *
     * @param  RepaymentNotification $event
     * @return void
     */
    public function handle(RepaymentNotification $event)
    {
        $loan_transaction = $event->loan_transaction;
        $borrower = $loan_transaction->borrower;
        if (Setting::where('setting_key', 'auto_payment_receipt_email')->first()->setting_value == 1) {
            //sent via email
            if (!empty($borrower->email)) {
                Mail::to($borrower->email)->send(new RepaymentReceived($loan_transaction));
            }
        }
        if (Setting::where('setting_key',
                'auto_payment_receipt_sms')->first()->setting_value == 1 && Setting::where('setting_key',
                'sms_enabled')->first()->setting_value == 1
        ) {
            if (!empty($borrower->mobile)) {
                $body = Setting::where('setting_key',
                    'payment_received_sms_template')->first()->setting_value;
                $body = str_replace('{borrowerTitle}', $borrower->title, $body);
                $body = str_replace('{borrowerFirstName}', $borrower->first_name, $body);
                $body = str_replace('{borrowerLastName}', $borrower->last_name, $body);
                $body = str_replace('{borrowerAddress}', $borrower->address, $body);
                $body = str_replace('{borrowerUniqueNumber}', $borrower->unique_number, $body);
                $body = str_replace('{borrowerMobile}', $borrower->mobile, $body);
                $body = str_replace('{borrowerPhone}', $borrower->phone, $body);
                $body = str_replace('{borrowerEmail}', $borrower->email, $body);
                $body = str_replace('{loanNumber}', '#' . $loan_transaction->loan->id, $body);
                $body = str_replace('{paymentAmount}', $loan_transaction->credit, $body);
                $body = str_replace('{paymentDate}', $loan_transaction->date, $body);
                $body = str_replace('{loanAmount}', $loan_transaction->loan->principal, $body);
                $body = str_replace('{loanDue}',
                    round(GeneralHelper::loan_total_due_amount($loan_transaction->loan_id), 2), $body);
                $body = str_replace('{loanBalance}',
                    round(GeneralHelper::loan_total_due_amount($loan_transaction->loan_id) - GeneralHelper::loan_total_paid($loan_transaction->loan_id),
                        2), $body);
                $body = str_replace('{loansDue}',
                    round(GeneralHelper::borrower_loans_total_due($borrower->id), 2), $body);
                $body = str_replace('{loansBalance}',
                    round((GeneralHelper::borrower_loans_total_due($borrower->id) - GeneralHelper::borrower_loans_total_paid($borrower->id)),
                        2), $body);
                $body = str_replace('{loansPayments}',
                    GeneralHelper::borrower_loans_total_paid($borrower->id),
                    $body);
                $body = trim(strip_tags($body));
                if (!empty($borrower->mobile)) {
                    $active_sms = Setting::where('setting_key', 'active_sms')->first()->setting_value;
                    GeneralHelper::send_sms($borrower->mobile, $body);
                    $sms = new Sms();
                    $sms->user_id = Sentinel::getUser()->id;
                    $sms->message = $body;
                    $sms->gateway = $active_sms;
                    $sms->recipients = 1;
                    $sms->send_to = $borrower->first_name . ' ' . $borrower->last_name . '(' . $borrower->unique_number . ')';
                    $sms->save();
                }
            }
        }
    }
}
