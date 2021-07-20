package com.angrybirds.utils
{
   import com.angrybirds.ui.ErrorPane;
   import com.rovio.adobe.serialization.json.JSONRovio;
   import com.rovio.factory.Base64;
   
   public class ValidateResponse
   {
       
      
      public function ValidateResponse()
      {
         super();
      }
      
      public static function decodeBase64(param1:String) : String
      {
         var response:String = param1;
         var decoded:String = response;
         try
         {
            decoded = Base64.decode(decoded);
         }
         catch(b64Error:Error)
         {
         }
         return decoded;
      }
      
      public static function parseJSON(param1:String) : Object
      {
         var userObject:Object = null;
         var response:String = param1;
         try
         {
            userObject = JSONRovio.decode(response);
         }
         catch(error:Error)
         {
            userObject = {"error":ErrorPane.CONNECTION_ERROR_RETRY};
         }
         return userObject;
      }
   }
}
