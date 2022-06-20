package §4!m§
{
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §>x§
   {
      
      public static var §<!#§:String;
       
      
      public function §>x§(param1:String)
      {
         super();
         §<!#§ = param1;
      }
      
      public function §#%§(param1:String) : URLRequest
      {
         var _loc2_:URLRequest = new URLRequest(param1);
         _loc2_.method = URLRequestMethod.GET;
         var _loc3_:URLVariables = new URLVariables();
         _loc3_.access_token = §<!#§;
         _loc2_.data = _loc3_;
         return _loc2_;
      }
   }
}
