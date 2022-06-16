package §-"3§
{
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §[">§
   {
      
      public static var §`f§:String;
       
      
      public function §[">§(param1:String)
      {
         super();
         §`f§ = param1;
      }
      
      public function §[";§(param1:String) : URLRequest
      {
         var _loc2_:URLRequest = new URLRequest(param1);
         _loc2_.method = URLRequestMethod.GET;
         var _loc3_:URLVariables = new URLVariables();
         _loc3_.access_token = §`f§;
         _loc2_.data = _loc3_;
         return _loc2_;
      }
   }
}
