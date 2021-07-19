package §3"!§
{
   import § !Y§.§&$§;
   import §!?§.§'k§;
   import §!?§.ServerCallEvent;
   import §7!0§.§-!^§;
   import §9y§.§8"3§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class §'"1§ extends EventDispatcher implements §-!^§
   {
       
      
      public function §'"1§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            super();
         }
      }
      
      public function §>!!§(param1:String) : String
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc2_:String = "forgotPassword";
         if(!_loc9_)
         {
            §§push(param1);
            if(_loc10_)
            {
               if(§§pop().length == 0)
               {
                  if(_loc10_)
                  {
                     §§goto(addr31);
                  }
               }
               var _loc3_:RegExp = /^[a-z0-9_.-]+@[a-z0-9-]+[.][a-z0-9-.]+$/;
               if(_loc10_)
               {
                  if(!_loc3_.test(param1))
                  {
                     if(!(_loc9_ && _loc2_))
                     {
                        return §8"3§.INVALID_EMAIL;
                        addr50:
                     }
                  }
                  var _loc4_:URLLoader = new URLLoader();
                  var _loc5_:URLRequest;
                  (_loc5_ = new URLRequest()).method = URLRequestMethod.POST;
                  if(_loc10_)
                  {
                     _loc4_.dataFormat = URLLoaderDataFormat.TEXT;
                  }
                  var _loc6_:Object;
                  (_loc6_ = {}).email = param1;
                  var _loc7_:Object = {
                     "type":_loc2_,
                     "player":_loc6_,
                     "language":§&$§.§[!1§.§^!2§()
                  };
                  var _loc8_:§'k§ = new §'k§(_loc7_,§`Y§.§6T§ + _loc2_,this,§'k§.§;!^§);
                  return null;
               }
               §§goto(addr50);
            }
            §§goto(addr31);
         }
         addr31:
         return §8"3§.INVALID_EMAIL;
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:ServerCallEvent = new ServerCallEvent(ServerCallEvent.§-U§);
         if(!_loc3_)
         {
            _loc2_.text = §8"3§.FORGOT_PASSWORD_EMAIL_SENT;
            do
            {
               dispatchEvent(_loc2_);
            }
            while(_loc3_ && _loc3_);
            
         }
      }
      
      public function §9o§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §[G§(param1:IOErrorEvent) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:ServerCallEvent = new ServerCallEvent(ServerCallEvent.§+!K§);
         if(!(_loc3_ && _loc2_))
         {
            _loc2_.text = §8"3§.CONNECTION_ERROR_RETRY;
            do
            {
               dispatchEvent(_loc2_);
            }
            while(!(_loc4_ || _loc3_));
            
         }
      }
      
      public function dispose() : void
      {
      }
   }
}
