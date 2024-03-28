import { LightningElement, api, wire } from 'lwc';
import{getRecord, getFieldValue} from 'lightning/uiRecordApi';

import NAME_FIELD  from '@salesforce/schema/Account.Name'; 
import PHONE_FIELD  from '@salesforce/schema/Account.Phone'; 
import TYPE_FIELD  from '@salesforce/schema/Account.Type'; 
import RATING_FIELD  from '@salesforce/schema/Account.Rating'; 
export default class ImportObjectsComponent extends LightningElement {

    @api recordId;
    @wire(getRecord, {recordId : '$recordId', fields : [NAME_FIELD, PHONE_FIELD, TYPE_FIELD, RATING_FIELD]})
    record;

    get name(){
        return this.record.data ? getFieldValue(this.record.data, NAME_FIELD ) : "novalue";

    }
    
    get phone(){
        return this.record.data ? getFieldValue(this.record.data, PHONE_FIELD ) : "novalue";

    }
    
    get type(){
        return this.record.data ? getFieldValue(this.record.data, TYPE_FIELD ) : "novalue";

    }
    
    get rating(){
        return this.record.data ? getFieldValue(this.record.data, RATING_FIELD ) : "novalue";

    }
    


}