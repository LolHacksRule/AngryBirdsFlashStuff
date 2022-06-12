package §0P§
{
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §%"A§
   {
      
      public static var §>!7§:String;
       
      
      public function §%"A§(param1:String)
      {
         super();
         §>!7§ = param1;
      }
      
      public function §=#p§(param1:String) : URLRequest
      {
         var _loc2_:URLRequest = new URLRequest(param1);
         _loc2_.method = URLRequestMethod.GET;
         var _loc3_:URLVariables = new URLVariables();
         _loc3_.access_token = §>!7§;
         _loc2_.data = _loc3_;
         return _loc2_;
      }
   }
}
