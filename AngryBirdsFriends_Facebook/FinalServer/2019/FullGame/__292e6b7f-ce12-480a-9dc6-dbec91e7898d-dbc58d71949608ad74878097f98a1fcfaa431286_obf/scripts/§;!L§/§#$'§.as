package §;!L§
{
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §#$'§
   {
      
      public static var §8!-§:String;
       
      
      public function §#$'§(param1:String)
      {
         super();
         §8!-§ = param1;
      }
      
      public function §;"Q§(param1:String) : URLRequest
      {
         var _loc2_:URLRequest = new URLRequest(param1);
         _loc2_.method = URLRequestMethod.GET;
         var _loc3_:URLVariables = new URLVariables();
         _loc3_.access_token = §8!-§;
         _loc2_.data = _loc3_;
         return _loc2_;
      }
   }
}
