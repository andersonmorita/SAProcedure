namespace my.tech;

    entity APPROVAL_STATUS {
    	key ID : Integer;
        APPROVALSTATUS   : Association to HEADER;
        TEXT : String 
    }

    entity HEADER {
    	key ID : Integer;
            PURCHASEORDERID : Association to many ITEM on PURCHASEORDERID.PURCHASEORDERID = $self;
            CURRENCY        : String;
            GROSSAMOUNT     : Decimal(15,2);
            NETAMOUNT       : Decimal(15,2);
            APPROVALSTATUS  : String;
    }


    entity ITEM {
    	key ID : Integer;	
            PURCHASEORDERID   :  Association to HEADER;
            PURCHASEORDERITEM : UUID;
            PRODUCTID         : String;
            CURRENCY          : String;
            GROSSAMOUNT       : Decimal(15, 2);
            NETAMOUNT         : String;
            QUANTITY          : Decimal(5, 2);
            QUANTITYUNIT      : String;
    }
    
   
   