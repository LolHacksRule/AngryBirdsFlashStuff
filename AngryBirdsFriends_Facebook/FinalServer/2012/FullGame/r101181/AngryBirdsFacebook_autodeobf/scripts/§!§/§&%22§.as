package §!§
{
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §&"§
   {
      
      public static var §6"8§:String;
       
      
      public function §&"§(param1:String)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            super();
         }
         do
         {
            §6"8§ = param1;
         }
         while(!(_loc3_ || this));
         
      }
      
      public function §@8§(param1:String) : URLRequest
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:URLRequest = new URLRequest(param1);
         if(!_loc5_)
         {
            _loc2_.method = URLRequestMethod.GET;
         }
         var _loc3_:URLVariables = new URLVariables();
         if(_loc4_ || _loc3_)
         {
            _loc3_.access_token = §6"8§;
            do
            {
               _loc2_.data = _loc3_;
            }
            while(!_loc4_);
            
         }
         return _loc2_;
      }
   }
}
