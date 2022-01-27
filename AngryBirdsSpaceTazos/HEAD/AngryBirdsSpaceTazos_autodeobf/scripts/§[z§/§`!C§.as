package §[z§
{
   import §%!P§.§7""§;
   import §4u§.§!H§;
   import §5"@§.§1!N§;
   import §8Y§.§,y§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class §`!C§ extends EventDispatcher implements §[!A§
   {
       
      
      public function §`!C§()
      {
         super();
      }
      
      public function §?!v§() : void
      {
         var _loc2_:URLLoader = new URLLoader();
         var _loc3_:URLRequest = new URLRequest();
         _loc3_.method = URLRequestMethod.POST;
         _loc2_.dataFormat = URLLoaderDataFormat.TEXT;
         var _loc4_:String = §1!N§.§,!<§.id;
         var _loc5_:String = §!H§.§3R§.§6"-§();
         var _loc6_:Object = {
            "type":"resendVerification",
            "id":_loc4_,
            "language":_loc5_
         };
         new §7""§(_loc6_,§@T§.§&Z§ + "resendVerification",this,§7""§.§4!8§);
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc3_:§,y§ = null;
         var _loc2_:Object = §4!L§.§#";§((param1.currentTarget as URLLoader).data);
         if(_loc2_.result && _loc2_.result == "ok")
         {
            _loc3_ = new §,y§(§,y§.§8"5§);
            dispatchEvent(_loc3_);
         }
         else
         {
            _loc3_ = new §,y§(§,y§.§49§);
            dispatchEvent(_loc3_);
         }
      }
      
      public function §&U§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §[!J§(param1:IOErrorEvent) : void
      {
      }
   }
}
