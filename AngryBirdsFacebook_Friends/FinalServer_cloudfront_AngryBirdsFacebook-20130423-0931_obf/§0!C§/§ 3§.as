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
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            super();
         }
         do
         {
            §1"I§ = param1;
         }
         while(_loc3_ && param1);
         
      }
      
      public function §3"B§(param1:String) : URLRequest
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:URLRequest = new URLRequest(param1);
         if(!(_loc5_ && this))
         {
            _loc2_.method = URLRequestMethod.GET;
         }
         var _loc3_:URLVariables = new URLVariables();
         if(!(_loc5_ && _loc3_))
         {
            _loc3_.access_token = §1"I§;
         }
         do
         {
            _loc2_.data = _loc3_;
         }
         while(!_loc4_);
         
         return _loc2_;
      }
   }
}
