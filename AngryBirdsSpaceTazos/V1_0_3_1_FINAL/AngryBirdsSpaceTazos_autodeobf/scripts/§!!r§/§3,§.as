package §!!r§
{
   import §!"4§.§;";§;
   import §'!n§.§[!I§;
   import §1!C§.§'!N§;
   import §5R§.§=F§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class §3,§ extends EventDispatcher implements §&!D§
   {
       
      
      public function §3,§()
      {
         super();
      }
      
      public function §9!V§() : void
      {
         var _loc2_:URLLoader = new URLLoader();
         var _loc3_:URLRequest = new URLRequest();
         _loc3_.method = URLRequestMethod.POST;
         _loc2_.dataFormat = URLLoaderDataFormat.TEXT;
         var _loc4_:String = §;";§.§3U§.id;
         var _loc5_:String = §[!I§.§8!J§.§,"+§();
         var _loc6_:Object = {
            "type":"resendVerification",
            "id":_loc4_,
            "language":_loc5_
         };
         new §=F§(_loc6_,§["!§.§7!h§ + "resendVerification",this,§=F§.§8"H§);
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc3_:§'!N§ = null;
         var _loc2_:Object = §,!u§.§4!E§((param1.currentTarget as URLLoader).data);
         if(_loc2_.result && _loc2_.result == "ok")
         {
            _loc3_ = new §'!N§(§'!N§.§1k§);
            dispatchEvent(_loc3_);
         }
         else
         {
            _loc3_ = new §'!N§(§'!N§.§?!>§);
            dispatchEvent(_loc3_);
         }
      }
      
      public function dynamic(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §1x§(param1:IOErrorEvent) : void
      {
      }
   }
}
