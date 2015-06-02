@isTest                        
global class MDWrapperWebServiceMock implements WebServiceMock {
   global void doInvoke(
           Object stub,
           Object request,
           Map<String, Object> response,
           String endpoint,
           String soapAction,
           String requestName,
           String responseNS,
           String responseName,
           String responseType) {
           if(responseType == 'MetadataService.listMetadataResponse_element'){
               response.put('response_x', new MetadataService.listMetadataResponse_element()); 
           } else if (responseType == 'MetadataService.createMetadataResponse_element') {
                MetadataService.createMetadataResponse_element respElt =
                    new MetadataService.createMetadataResponse_element();
                respElt.result = new List<MetadataService.SaveResult>();
                MetadataService.SaveResult sr = new MetadataService.SaveResult();
                sr.success = true;
                respElt.result.add(sr);
                response.put('response_x', respElt);
        	}
   }
}