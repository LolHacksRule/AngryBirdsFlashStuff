package §^"U§
{
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §`#n§
   {
      
      public static var §&X§:String;
       
      
      public function §`#n§(param1:String)
      {
         super();
         §&X§ = param1;
      }
      
      public function §8?§(param1:String) : URLRequest
      {
         var _loc2_:URLRequest = new URLRequest(param1);
         _loc2_.method = URLRequestMethod.GET;
         var _loc3_:URLVariables = new URLVariables();
         _loc3_.access_token = §&X§;
         _loc2_.data = _loc3_;
         return _loc2_;
      }
   }
}
