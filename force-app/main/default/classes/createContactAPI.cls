@RESTResource(urlMapping = '/createcon/') 
global class createContactAPI{
@HTTPGet
    global static string retrieveStudentRecord(){
        string objName, Department; 
        RestRequest req = RestContext.request;
        RestResponse res = RestContext.response;
        objName = req.headers.get('objectName');
        Department = req.headers.get('Dpt');
        String qr = 'Select Name, Age From' +objName+ 'where Department__c =: Dpt';
        sObject s = Database.query(qr);
        String jsonResponse = '{\"Name\" : \" '+s.get('Name')+'\" , \"Age\" : \" '+s.get('Age__c')+'\" , \"Major\" : \" '+s.get('Major__c')+'\"}';
        return jsonResponse;    
    }
@HTTPPost
    global static String createContactRecord(){
      String LastName, Title, Department, fieldName, fieldValue;
        String LName, Tit, Dept;
        RestRequest req = RestContext.request;
        RestResponse res = RestContext.response;
        String jsonBody = req.requestBody.toString();
         JSONParser parser =JSON.createParser(jsonBody);
        while(parser.nextToken() != null)
        {
            if(parser.getCurrentToken() != JSONToken.END_OBJECT)
            {
                fieldName = parser.getCurrentName();
                fieldValue = parser.getText();
                if(fieldName == 'LastName')
                {
                   LName = fieldValue;                    
                }
                else if(fieldName == 'Title')
                {
                    Tit = fieldValue;
                }
                 else if(fieldName == 'Department')
                {
                    Dept = fieldValue;
                }
            }
        }
        Contact con = new Contact(LastName = LName, Title =  Tit, Department = Dept);
        insert con;
        system.debug(jsonBody);
        return con.id;
    }
}