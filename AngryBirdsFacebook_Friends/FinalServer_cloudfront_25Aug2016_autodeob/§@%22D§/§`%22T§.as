package §@"D§
{
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §`"T§
   {
      
      public static var §9z§:String;
       
      
      public function §`"T§(param1:String)
      {
         super();
         §9z§ = param1;
      }
      
      public function §1#_§(param1:String) : URLRequest
      {
         var _loc2_:URLRequest = new URLRequest(param1);
         _loc2_.method = URLRequestMethod.GET;
         var _loc3_:URLVariables = new URLVariables();
         _loc3_.access_token = §9z§;
         _loc2_.data = _loc3_;
         return _loc2_;
      }
   }
}
