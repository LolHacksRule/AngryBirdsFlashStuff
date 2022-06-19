package com.angrybirds.graphapi
{
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class GraphAPICaller
   {
      
      public static var sAccessToken:String;
       
      
      public function GraphAPICaller(accessToken:String)
      {
         super();
         sAccessToken = accessToken;
      }
      
      public function createGraphAPIRequest(facebookGraphCallURL:String) : URLRequest
      {
         var urlReq:URLRequest = new URLRequest(facebookGraphCallURL);
         urlReq.method = URLRequestMethod.GET;
         var urlVar:URLVariables = new URLVariables();
         urlVar.access_token = sAccessToken;
         urlReq.data = urlVar;
         return urlReq;
      }
   }
}
