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
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            super();
         }
      }
      
      public function §[!W§(param1:String) : String
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc2_:String = "checkVerified";
         var _loc3_:URLLoader = new URLLoader();
         var _loc4_:URLRequest;
         (_loc4_ = new URLRequest()).method = URLRequestMethod.POST;
         if(!_loc7_)
         {
            _loc3_.dataFormat = URLLoaderDataFormat.TEXT;
         }
         var _loc5_:Object = {
            "type":_loc2_,
            "id":param1
         };
         var _loc6_:§'k§ = new §'k§(_loc5_,§`Y§.§6T§ + _loc2_,this,§'k§.§;!^§);
         return null;
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:Object = §4!u§.§&"D§((param1.currentTarget as URLLoader).data);
         if(_loc4_)
         {
            if(_loc2_.verified != undefined)
            {
               if(_loc4_)
               {
                  addr43:
                  §@!^§.§2j§.verified = _loc2_.verified;
               }
            }
            var _loc3_:§^!q§ = new §^!q§(§^!q§.§&e§);
            if(!_loc5_)
            {
               dispatchEvent(_loc3_);
            }
            return;
         }
         §§goto(addr43);
      }
      
      public function §9o§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §[G§(param1:IOErrorEvent) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:ServerCallEvent = new ServerCallEvent(ServerCallEvent.§+!K§);
         if(_loc3_ || _loc2_)
         {
            _loc2_.text = §8"3§.CONNECTION_ERROR_RETRY;
            do
            {
               dispatchEvent(_loc2_);
            }
            while(!_loc3_);
            
         }
      }
      
      public function dispose() : void
      {
      }
   }
}
