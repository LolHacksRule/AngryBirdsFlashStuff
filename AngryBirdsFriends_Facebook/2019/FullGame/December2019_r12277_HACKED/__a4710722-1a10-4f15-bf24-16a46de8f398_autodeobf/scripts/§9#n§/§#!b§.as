package §9#n§
{
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §#!b§
   {
      
      public static var §?L§:String;
       
      
      public function §#!b§(param1:String)
      {
         super();
         §?L§ = param1;
      }
      
      public function §"#-§(param1:String) : URLRequest
      {
         var _loc2_:URLRequest = new URLRequest(param1);
         _loc2_.method = URLRequestMethod.GET;
         var _loc3_:URLVariables = new URLVariables();
         _loc3_.access_token = §?L§;
         _loc2_.data = _loc3_;
         return _loc2_;
      }
   }
}
