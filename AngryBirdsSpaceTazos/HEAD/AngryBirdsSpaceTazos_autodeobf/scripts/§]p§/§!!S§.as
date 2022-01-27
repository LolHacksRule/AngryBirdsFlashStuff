package §]p§
{
   import §%!P§.§7""§;
   import §%!P§.ServerCallEvent;
   import §4u§.§!H§;
   import §[z§.§[!A§;
   import §`>§.§>7§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class §!!S§ extends EventDispatcher implements §[!A§
   {
       
      
      public function §!!S§()
      {
         super();
      }
      
      public function §<O§(param1:String) : String
      {
         if(param1.length == 0)
         {
            return §>7§.INVALID_EMAIL;
         }
         var _loc3_:RegExp = /^[a-z0-9_.-]+@[a-z0-9-]+[.][a-z0-9-.]+$/;
         if(!_loc3_.test(param1))
         {
            return §>7§.INVALID_EMAIL;
         }
         var _loc4_:URLLoader = new URLLoader();
         var _loc5_:URLRequest;
         (_loc5_ = new URLRequest()).method = URLRequestMethod.POST;
         _loc4_.dataFormat = URLLoaderDataFormat.TEXT;
         var _loc6_:Object;
         (_loc6_ = {}).email = param1;
         var _loc7_:Object = {
            "type":"forgotPassword",
            "player":_loc6_,
            "language":§!H§.§3R§.§6"-§()
         };
         var _loc8_:§7""§ = new §7""§(_loc7_,§@T§.§&Z§ + "forgotPassword",this,§7""§.§4!8§);
         return null;
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc2_:ServerCallEvent = new ServerCallEvent(ServerCallEvent.§'!x§);
         _loc2_.text = §>7§.FORGOT_PASSWORD_EMAIL_SENT;
         dispatchEvent(_loc2_);
      }
      
      public function §&U§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §[!J§(param1:IOErrorEvent) : void
      {
         var _loc2_:ServerCallEvent = new ServerCallEvent(ServerCallEvent.§9v§);
         _loc2_.text = §>7§.CONNECTION_ERROR_RETRY;
         dispatchEvent(_loc2_);
      }
      
      public function dispose() : void
      {
      }
   }
}
