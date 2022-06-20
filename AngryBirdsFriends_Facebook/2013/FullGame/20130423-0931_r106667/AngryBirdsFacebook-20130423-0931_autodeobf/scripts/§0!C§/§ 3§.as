package §0!C§
{
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class § 3§
   {
      
      public static var §1"I§:String;
       
      
      public function § 3§(param1:String)
      {
         super();
         §1"I§ = param1;
      }
      
      public function §3"B§(param1:String) : URLRequest
      {
         var _loc2_:URLRequest = new URLRequest(param1);
         _loc2_.method = URLRequestMethod.GET;
         var _loc3_:URLVariables = new URLVariables();
         _loc3_.access_token = §1"I§;
         _loc2_.data = _loc3_;
         return _loc2_;
      }
   }
}
