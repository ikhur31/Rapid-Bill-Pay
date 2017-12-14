using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace RapidBillPay
{
    public class BillPayEntry
    {
        String emailAddress;
        String paymentTransactionDate;
        String recipientBusinessName;
        String recipientBusinessAddress;
        String amountPaid;
        String paymentDetails;
        int status; /* 0 payment not completed, 1 payment completed */

        public String EmailAddress
        {
            get { return emailAddress; } /*ADD THE PROPERTIES AS SHOWN*/
                                         /*FOR THE REMAINING FIELDS.*/
            set { emailAddress = value; }
        }

        public String PaymentTransactionDate
        {
            get { return paymentTransactionDate; } /*ADD THE PROPERTIES AS SHOWN*/
                                                   /*FOR THE REMAINING FIELDS.*/
            set { paymentTransactionDate = value; }
        }

        public String RecipientBusinessName
        {
            get { return recipientBusinessName; } /*ADD THE PROPERTIES AS SHOWN*/
                                                  /*FOR THE REMAINING FIELDS.*/
            set { recipientBusinessName = value; }
        }

        public String RecipientBusinessAddress
        {
            get { return recipientBusinessAddress; } /*ADD THE PROPERTIES AS SHOWN*/
                                                     /*FOR THE REMAINING FIELDS.*/
            set { recipientBusinessAddress = value; }
        }

        public String AmountPaid
        {
            get { return amountPaid; } /*ADD THE PROPERTIES AS SHOWN*/
                                       /*FOR THE REMAINING FIELDS.*/
            set { amountPaid = value; }
        }

        public String PaymentDetails
        {
            get { return paymentDetails; } /*ADD THE PROPERTIES AS SHOWN*/
                                           /*FOR THE REMAINING FIELDS.*/
            set { paymentDetails = value; }
        }

        public int Status
        {
            get { return status; } /*ADD THE PROPERTIES AS SHOWN*/
                                           /*FOR THE REMAINING FIELDS.*/
            set { status = value; }
        }
    }
}