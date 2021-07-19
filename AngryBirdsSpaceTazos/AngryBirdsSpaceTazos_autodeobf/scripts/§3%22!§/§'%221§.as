package §3"!§
{
   import § !Y§.§&$§;
   import §!?§.§'k§;
   import §!?§.ServerCallEvent;
   import §7!0§.§-!^§;
   import §9y§.§8"3§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class §'"1§ extends EventDispatcher implements §-!^§
   {
       
      
      public function §'"1§()
      {
         super();
      }
      
      public function §>!!§(param1:String) : String
      {
         if(param1.length == 0)
         {
            return §8"3§.INVALID_EMAIL;
         }
         var _loc3_:RegExp = /^[a-z0-9_.-]+@[a-z0-9-]+[.][a-z0-9-.]+$/;
         if(!_loc3_.test(param1))
         {
            return §8"3§.INVALID_EMAIL;
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
            "language":§&$§.§[!1§.§^!2§()
         };
         var _loc8_:§'k§ = new §'k§(_loc7_,§`Y§.§6T§ + "forgotPassword",this,§'k§.§;!^§);
         return null;
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc2_:ServerCallEvent = new ServerCallEvent(ServerCallEvent.§-U§);
         _loc2_.text = §8"3§.FORGOT_PASSWORD_EMAIL_SENT;
         dispatchEvent(_loc2_);
      }
      
      public function §9o§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §[G§(param1:IOErrorEvent) : void
      {
         var _loc2_:ServerCallEvent = new ServerCallEvent(ServerCallEvent.§+!K§);
         _loc2_.text = §8"3§.CONNECTION_ERROR_RETRY;
         dispatchEvent(_loc2_);
      }
      
      public function dispose() : void
      {
      }
   }
}
