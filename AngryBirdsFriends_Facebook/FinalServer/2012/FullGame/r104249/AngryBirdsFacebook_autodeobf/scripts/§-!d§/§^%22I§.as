package §-!d§
{
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §^"I§
   {
      
      public static var §"!J§:String;
       
      
      public function §^"I§(param1:String)
      {
         super();
         §"!J§ = param1;
      }
      
      public function §+@§(param1:String) : URLRequest
      {
         var _loc2_:URLRequest = new URLRequest(param1);
         _loc2_.method = URLRequestMethod.GET;
         var _loc3_:URLVariables = new URLVariables();
         _loc3_.access_token = §"!J§;
         _loc2_.data = _loc3_;
         return _loc2_;
      }
   }
}
