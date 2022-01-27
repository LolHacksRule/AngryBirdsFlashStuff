package §6#§
{
   import §""%§.§#`§;
   import §""%§.ServerCallEvent;
   import §'#§.§^4§;
   import §4!x§.§`[§;
   import §5s§.§ !_§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class §7",§ extends EventDispatcher implements §`[§
   {
       
      
      public function §7",§()
      {
         super();
      }
      
      public function §;b§(param1:String) : String
      {
         if(param1.length == 0)
         {
            return § !_§.INVALID_EMAIL;
         }
         var _loc3_:RegExp = /^[a-z0-9_.-]+@[a-z0-9-]+[.][a-z0-9-.]+$/;
         if(!_loc3_.test(param1))
         {
            return § !_§.INVALID_EMAIL;
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
            "language":§^4§.§<"B§.§+!P§()
         };
         var _loc8_:§#`§ = new §#`§(_loc7_,§^"=§.§^"3§ + "forgotPassword",this,§#`§.§-n§);
         return null;
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc2_:ServerCallEvent = new ServerCallEvent(ServerCallEvent.§ !5§);
         _loc2_.text = § !_§.FORGOT_PASSWORD_EMAIL_SENT;
         dispatchEvent(_loc2_);
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
