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
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            super();
         }
      }
      
      public function §@9§() : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc1_:String = "resendVerification";
         var _loc2_:URLLoader = new URLLoader();
         var _loc3_:URLRequest = new URLRequest();
         if(!(_loc8_ && _loc1_))
         {
            _loc3_.method = URLRequestMethod.POST;
            if(_loc7_)
            {
               _loc2_.dataFormat = URLLoaderDataFormat.TEXT;
            }
         }
         var _loc4_:String = §@!^§.§2j§.id;
         §§push(§&$§.§[!1§.§^!2§());
         if(!_loc8_)
         {
            §§push(§§pop());
         }
         var _loc5_:* = §§pop();
         var _loc6_:Object = {
            "type":_loc1_,
            "id":_loc4_,
            "language":_loc5_
         };
         if(!(_loc8_ && this))
         {
            new §'k§(_loc6_,§`Y§.§6T§ + _loc1_,this,§'k§.§;!^§);
         }
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§6!H§ = null;
         var _loc2_:Object = §4!u§.§&"D§((param1.currentTarget as URLLoader).data);
         if(!_loc4_)
         {
            §§push(Boolean(_loc2_.result));
            if(!(_loc4_ && _loc3_))
            {
               if(§§pop())
               {
                  if(!(_loc4_ && param1))
                  {
                     §§pop();
                     if(!_loc4_)
                     {
                        §§goto(addr67);
                     }
                     §§goto(addr68);
                  }
               }
            }
            addr67:
            §§goto(addr63);
         }
         addr63:
         if(_loc2_.result == "ok")
         {
            addr68:
            _loc3_ = new §6!H§(§6!H§.§''§);
            if(_loc5_)
            {
               dispatchEvent(_loc3_);
            }
         }
         else
         {
            _loc3_ = new §6!H§(§6!H§.§3!b§);
            if(!(_loc4_ && _loc2_))
            {
               dispatchEvent(_loc3_);
            }
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
