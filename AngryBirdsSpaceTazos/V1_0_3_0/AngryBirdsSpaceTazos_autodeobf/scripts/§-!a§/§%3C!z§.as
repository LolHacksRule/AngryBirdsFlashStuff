package §-!a§
{
   import §!!r§.§&!D§;
   import §&e§.§<x§;
   import §'!n§.§[!I§;
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
   
   public class §<!z§ extends EventDispatcher implements §&!D§
   {
       
      
      public function §<!z§()
      {
         super();
      }
      
      public function §`<§(param1:String) : String
      {
         if(param1.length == 0)
         {
            return §<x§.INVALID_EMAIL;
         }
         var _loc3_:RegExp = /^[a-z0-9_.-]+@[a-z0-9-]+[.][a-z0-9-.]+$/;
         if(!_loc3_.test(param1))
         {
            return §<x§.INVALID_EMAIL;
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
            "language":§[!I§.§8!J§.§,"+§()
         };
         var _loc8_:§=F§ = new §=F§(_loc7_,§["!§.§7!h§ + "forgotPassword",this,§=F§.§8"H§);
         return null;
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc2_:ServerCallEvent = new ServerCallEvent(ServerCallEvent.§1"8§);
         _loc2_.text = §<x§.FORGOT_PASSWORD_EMAIL_SENT;
         dispatchEvent(_loc2_);
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
