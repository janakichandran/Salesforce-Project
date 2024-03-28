import { LightningElement, api, wire } from 'lwc';
import getCulturalDetails from '@salesforce/apex/CulturalFetchStudClass.getCulturalDetails';
export default class CulturalDetailsinStudentComponent extends LightningElement {
    @api recordId;
    @wire(getCulturalDetails, {stId :'$recordId'})
    culturalList;
    

}