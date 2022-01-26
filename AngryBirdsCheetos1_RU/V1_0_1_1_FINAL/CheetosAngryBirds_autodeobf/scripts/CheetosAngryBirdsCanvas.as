package
{
   import §&>§.§;[§;
   import §,+§.§4!Z§;
   import §,+§.§6!&§;
   import §2!C§.StateConnecting;
   import §3!8§.§ !A§;
   import §[p§.§"w§;
   import §]u§.§+e§;
   import §^!O§.§=!S§;
   import §^Q§.§,^§;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.UncaughtErrorEvent;
   import flash.external.ExternalInterface;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.utils.getTimer;
   
   public class CheetosAngryBirdsCanvas extends §=!S§
   {
      
      public static const VERSION:String = "1.0.1.1";
       
      
      private var §5!L§:Boolean = false;
      
      public function CheetosAngryBirdsCanvas()
      {
         super();
         if(stage)
         {
            this.init();
         }
         else
         {
            addEventListener(Event.ADDED_TO_STAGE,this.§,!'§);
         }
      }
      
      private function init() : void
      {
         this.addExternalInterfaceCallbacks();
         if(loaderInfo.bytesLoaded < loaderInfo.bytesTotal)
         {
            loaderInfo.addEventListener(Event.COMPLETE,this.§"@§);
         }
         else
         {
            this.§-O§();
         }
      }
      
      private function §9u§() : Boolean
      {
         var pageURL:String = null;
         try
         {
            pageURL = ExternalInterface.call("window.location.href.toString");
         }
         catch(e:Error)
         {
            pageURL == null;
         }
         catch(e:SecurityError)
         {
            pageURL == null;
         }
         if(pageURL == null || pageURL.indexOf(".swf") != -1)
         {
            navigateToURL(new URLRequest("http://cheetos.angrybirds.com"));
            return false;
         }
         return true;
      }
      
      private function addExternalInterfaceCallbacks() : void
      {
         §+e§.addCallback("loginPlayer",this.loginPlayer);
         §+e§.addCallback("logout",this.logout);
      }
      
      public function loginPlayer(param1:String) : Boolean
      {
         if(param1)
         {
            if(§"w§.§2C§ == null)
            {
               this.§,@§(param1);
            }
            else if(§"w§.§2C§.name != param1)
            {
               this.logout();
               this.§,@§(param1);
            }
            return true;
         }
         return false;
      }
      
      private function §,@§(param1:String) : void
      {
         §"w§.§2C§ = new §;[§();
         §"w§.§98§ = § !A§.§`!_§();
         §"w§.§2C§.§0m§ = param1;
         §"w§.§2C§.name = param1;
         §7d§.§`!<§.§'i§();
      }
      
      public function logout() : Boolean
      {
         §"w§.§2C§ = null;
         §"w§.§98§ = null;
         §7d§.§`!<§.§%>§(StateConnecting.§+!a§);
         return true;
      }
      
      private function §,!'§(param1:Event) : void
      {
         removeEventListener(Event.ADDED_TO_STAGE,this.§,!'§);
         this.init();
      }
      
      private function §"@§(param1:Event) : void
      {
         loaderInfo.removeEventListener(Event.COMPLETE,this.§"@§);
         this.§-O§();
      }
      
      private function §5!_§(param1:Event) : void
      {
      }
      
      private function §9<§(param1:Event) : void
      {
      }
      
      private function §-O§() : void
      {
         loaderInfo.uncaughtErrorEvents.addEventListener(UncaughtErrorEvent.UNCAUGHT_ERROR,this.§&R§);
         new §7d§(this);
      }
      
      private function §&R§(param1:UncaughtErrorEvent) : void
      {
         var _loc2_:int = 0;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc6_:int = 0;
         var _loc7_:String = null;
         var _loc8_:Error = null;
         var _loc9_:ErrorEvent = null;
         var _loc10_:String = null;
         if(!this.§5!L§)
         {
            this.§5!L§ = true;
            _loc2_ = 0;
            _loc3_ = null;
            _loc4_ = "";
            _loc5_ = "-";
            _loc6_ = Math.round(getTimer() / 1000);
            if(param1.error is Error)
            {
               _loc2_ = (_loc8_ = param1.error as Error).errorID;
               _loc5_ = _loc8_.message;
               _loc3_ = _loc8_.getStackTrace();
            }
            else if(param1.error is ErrorEvent)
            {
               _loc2_ = (_loc9_ = param1.error as ErrorEvent).errorID;
            }
            §6!&§.§08§(§4!Z§.ACTION_APPLICATION_CRASH,_loc2_.toString());
            if(§,^§.§?D§ != null)
            {
               _loc4_ = §,^§.§?D§.§<!Z§();
            }
            if(_loc4_ == null || _loc4_.length == 0)
            {
               _loc4_ = "NoState";
            }
            _loc7_ = _loc2_.toString() + "::" + _loc4_ + "::" + _loc5_ + "::" + VERSION;
            §6!&§.§08§(§4!Z§.§!e§,_loc7_,_loc6_);
            if(_loc3_)
            {
               _loc10_ = _loc7_ + "::" + _loc3_;
               §6!&§.§08§(§4!Z§.§0!R§,_loc10_,_loc6_);
            }
         }
      }
   }
}
