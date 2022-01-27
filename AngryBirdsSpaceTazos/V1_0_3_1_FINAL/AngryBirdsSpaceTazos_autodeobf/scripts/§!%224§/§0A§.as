package §!"4§
{
   import §!!r§.§&!D§;
   import §!!r§.§,!u§;
   import §&e§.§<x§;
   import §5R§.§=F§;
   import §5R§.ServerCallEvent;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class §0A§ extends EventDispatcher implements §&!D§
   {
       
      
      public function §0A§()
      {
         super();
      }
      
      public function §"! §(param1:String) : String
      {
         var _loc3_:URLLoader = new URLLoader();
         var _loc4_:URLRequest;
         (_loc4_ = new URLRequest()).method = URLRequestMethod.POST;
         _loc3_.dataFormat = URLLoaderDataFormat.TEXT;
         var _loc5_:Object = {
            "type":"checkVerified",
            "id":param1
         };
         var _loc6_:§=F§ = new §=F§(_loc5_,§["!§.§7!h§ + "checkVerified",this,§=F§.§8"H§);
         return null;
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc2_:Object = §,!u§.§4!E§((param1.currentTarget as URLLoader).data);
         if(_loc2_.verified != undefined)
         {
            §;";§.§3U§.verified = _loc2_.verified;
         }
         var _loc3_:§catch§ = new §catch§(§catch§.§=S§);
         dispatchEvent(_loc3_);
      }
      
      public function dynamic(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §1x§(param1:IOErrorEvent) : void
      {
         var _loc2_:ServerCallEvent = new ServerCallEvent(ServerCallEvent.§0i§);
         _loc2_.text = §<x§.CONNECTION_ERROR_RETRY;
         dispatchEvent(_loc2_);
      }
      
      public function dispose() : void
      {
      }
   }
}
