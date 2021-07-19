package §7!0§
{
   import § !Y§.§&$§;
   import §!?§.§'k§;
   import §4"§.§6!H§;
   import §7!B§.§@!^§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class §]!e§ extends EventDispatcher implements §-!^§
   {
       
      
      public function §]!e§()
      {
         super();
      }
      
      public function §@9§() : void
      {
         var _loc2_:URLLoader = new URLLoader();
         var _loc3_:URLRequest = new URLRequest();
         _loc3_.method = URLRequestMethod.POST;
         _loc2_.dataFormat = URLLoaderDataFormat.TEXT;
         var _loc4_:String = §@!^§.§2j§.id;
         var _loc5_:String = §&$§.§[!1§.§^!2§();
         var _loc6_:Object = {
            "type":"resendVerification",
            "id":_loc4_,
            "language":_loc5_
         };
         new §'k§(_loc6_,§`Y§.§6T§ + "resendVerification",this,§'k§.§;!^§);
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc3_:§6!H§ = null;
         var _loc2_:Object = §4!u§.§&"D§((param1.currentTarget as URLLoader).data);
         if(_loc2_.result && _loc2_.result == "ok")
         {
            _loc3_ = new §6!H§(§6!H§.§''§);
            dispatchEvent(_loc3_);
         }
         else
         {
            _loc3_ = new §6!H§(§6!H§.§3!b§);
            dispatchEvent(_loc3_);
         }
      }
      
      public function §9o§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §[G§(param1:IOErrorEvent) : void
      {
      }
   }
}
