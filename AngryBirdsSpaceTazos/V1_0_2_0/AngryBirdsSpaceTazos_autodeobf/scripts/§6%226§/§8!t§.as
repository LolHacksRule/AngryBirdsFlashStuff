package §6"6§
{
   import §""%§.§#`§;
   import §""%§.ServerCallEvent;
   import §4!x§.§`[§;
   import §4!x§.§`q§;
   import §5s§.§ !_§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class §8!t§ extends EventDispatcher implements §`[§
   {
       
      
      public function §8!t§()
      {
         super();
      }
      
      public function §<>§(param1:String) : String
      {
         var _loc3_:URLLoader = new URLLoader();
         var _loc4_:URLRequest;
         (_loc4_ = new URLRequest()).method = URLRequestMethod.POST;
         _loc3_.dataFormat = URLLoaderDataFormat.TEXT;
         var _loc5_:Object = {
            "type":"checkVerified",
            "id":param1
         };
         var _loc6_:§#`§ = new §#`§(_loc5_,§^"=§.§^"3§ + "checkVerified",this,§#`§.§-n§);
         return null;
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc2_:Object = §`q§.§<f§((param1.currentTarget as URLLoader).data);
         if(_loc2_.verified != undefined)
         {
            §40§.§1"$§.verified = _loc2_.verified;
         }
         var _loc3_:§ get§ = new § get§(§ get§.§#U§);
         dispatchEvent(_loc3_);
      }
      
      public function §"!7§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §5"9§(param1:IOErrorEvent) : void
      {
         var _loc2_:ServerCallEvent = new ServerCallEvent(ServerCallEvent.§?!Q§);
         _loc2_.text = § !_§.CONNECTION_ERROR_RETRY;
         dispatchEvent(_loc2_);
      }
      
      public function dispose() : void
      {
      }
   }
}
