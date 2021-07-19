package §7!B§
{
   import §!?§.§'k§;
   import §!?§.ServerCallEvent;
   import §7!0§.§-!^§;
   import §7!0§.§4!u§;
   import §9y§.§8"3§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class §2"#§ extends EventDispatcher implements §-!^§
   {
       
      
      public function §2"#§()
      {
         super();
      }
      
      public function §[!W§(param1:String) : String
      {
         var _loc3_:URLLoader = new URLLoader();
         var _loc4_:URLRequest;
         (_loc4_ = new URLRequest()).method = URLRequestMethod.POST;
         _loc3_.dataFormat = URLLoaderDataFormat.TEXT;
         var _loc5_:Object = {
            "type":"checkVerified",
            "id":param1
         };
         var _loc6_:§'k§ = new §'k§(_loc5_,§`Y§.§6T§ + "checkVerified",this,§'k§.§;!^§);
         return null;
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc2_:Object = §4!u§.§&"D§((param1.currentTarget as URLLoader).data);
         if(_loc2_.verified != undefined)
         {
            §@!^§.§2j§.verified = _loc2_.verified;
         }
         var _loc3_:§^!q§ = new §^!q§(§^!q§.§&e§);
         dispatchEvent(_loc3_);
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
