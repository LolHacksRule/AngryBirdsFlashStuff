package §5"@§
{
   import §%!P§.§7""§;
   import §%!P§.ServerCallEvent;
   import §[z§.§4!L§;
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
   
   public class §[!f§ extends EventDispatcher implements §[!A§
   {
       
      
      public function §[!f§()
      {
         super();
      }
      
      public function §9y§(param1:String) : String
      {
         var _loc3_:URLLoader = new URLLoader();
         var _loc4_:URLRequest;
         (_loc4_ = new URLRequest()).method = URLRequestMethod.POST;
         _loc3_.dataFormat = URLLoaderDataFormat.TEXT;
         var _loc5_:Object = {
            "type":"checkVerified",
            "id":param1
         };
         var _loc6_:§7""§ = new §7""§(_loc5_,§@T§.§&Z§ + "checkVerified",this,§7""§.§4!8§);
         return null;
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc2_:Object = §4!L§.§#";§((param1.currentTarget as URLLoader).data);
         if(_loc2_.verified != undefined)
         {
            §1!N§.§,!<§.verified = _loc2_.verified;
         }
         var _loc3_:§;x§ = new §;x§(§;x§.§=!8§);
         dispatchEvent(_loc3_);
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
