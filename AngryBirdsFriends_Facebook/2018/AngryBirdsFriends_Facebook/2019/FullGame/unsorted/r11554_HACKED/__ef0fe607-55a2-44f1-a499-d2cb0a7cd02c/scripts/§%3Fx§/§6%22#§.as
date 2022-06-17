package §?x§
{
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §6"#§
   {
      
      public static var §%!d§:String;
       
      
      public function §6"#§(param1:String)
      {
         super();
         §%!d§ = param1;
      }
      
      public function §<W§(param1:String) : URLRequest
      {
         var _loc2_:URLRequest = new URLRequest(param1);
         _loc2_.method = URLRequestMethod.GET;
         var _loc3_:URLVariables = new URLVariables();
         _loc3_.access_token = §%!d§;
         _loc2_.data = _loc3_;
         return _loc2_;
      }
   }
}
