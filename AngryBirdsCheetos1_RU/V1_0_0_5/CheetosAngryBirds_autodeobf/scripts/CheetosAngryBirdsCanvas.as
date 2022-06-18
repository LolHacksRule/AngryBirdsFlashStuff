package
{
   import §!%§.§ D§;
   import §!%§.§!w§;
   import §&!`§.StateConnecting;
   import §'d§.§3>§;
   import §4!§.§ d§;
   import §5B§.§^`§;
   import §9$§.§;!K§;
   import §?!N§.§?!"§;
   import §`2§.§ if§;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.UncaughtErrorEvent;
   import flash.external.ExternalInterface;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.utils.getTimer;
   
   public class CheetosAngryBirdsCanvas extends § if§
   {
      
      public static const VERSION:String = "1.0.1.1";
       
      
      private var §-Y§:Boolean = false;
      
      public function CheetosAngryBirdsCanvas()
      {
         super();
         if(stage)
         {
            this.init();
         }
         else
         {
            addEventListener(Event.ADDED_TO_STAGE,this.§5!]§);
         }
      }
      
      private function init() : void
      {
         this.addExternalInterfaceCallbacks();
         if(loaderInfo.bytesLoaded < loaderInfo.bytesTotal)
         {
            loaderInfo.addEventListener(Event.COMPLETE,this.§^e§);
         }
         else
         {
            this.§5!P§();
         }
      }
      
      private function §?!B§() : Boolean
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
         §?!"§.addCallback("loginPlayer",this.loginPlayer);
         §?!"§.addCallback("logout",this.logout);
      }
      
      public function loginPlayer(param1:String) : Boolean
      {
         if(param1)
         {
            if(§;!K§.§+!K§ == null)
            {
               this.§>!@§(param1);
            }
            else if(§;!K§.§+!K§.name != param1)
            {
               this.logout();
               this.§>!@§(param1);
            }
            return true;
         }
         return false;
      }
      
      private function §>!@§(param1:String) : void
      {
         §;!K§.§+!K§ = new §^`§();
         §;!K§.§`! § = § d§.§[!^§();
         §;!K§.§+!K§.§'!9§ = param1;
         §;!K§.§+!K§.name = param1;
         §3§.§]T§.§;!O§();
      }
      
      public function logout() : Boolean
      {
         §;!K§.§+!K§ = null;
         §;!K§.§`! § = null;
         §3§.§]T§.§]s§(StateConnecting.§="§);
         return true;
      }
      
      private function §5!]§(param1:Event) : void
      {
         removeEventListener(Event.ADDED_TO_STAGE,this.§5!]§);
         this.init();
      }
      
      private function §^e§(param1:Event) : void
      {
         loaderInfo.removeEventListener(Event.COMPLETE,this.§^e§);
         this.§5!P§();
      }
      
      private function §[?§(param1:Event) : void
      {
      }
      
      private function §5W§(param1:Event) : void
      {
      }
      
      private function §5!P§() : void
      {
         loaderInfo.uncaughtErrorEvents.addEventListener(UncaughtErrorEvent.UNCAUGHT_ERROR,this.§@U§);
         new §3§(this);
      }
      
      private function §@U§(param1:UncaughtErrorEvent) : void
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
         if(!this.§-Y§)
         {
            this.§-Y§ = true;
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
            §!w§.§]!§(§ D§.ACTION_APPLICATION_CRASH,_loc2_.toString());
            if(§3>§.§9!L§ != null)
            {
               _loc4_ = §3>§.§9!L§.§@!K§();
            }
            if(_loc4_ == null || _loc4_.length == 0)
            {
               _loc4_ = "NoState";
            }
            _loc7_ = _loc2_.toString() + "::" + _loc4_ + "::" + _loc5_ + "::" + VERSION;
            §!w§.§]!§(§ D§.§9!,§,_loc7_,_loc6_);
            if(_loc3_)
            {
               _loc10_ = _loc7_ + "::" + _loc3_;
               §!w§.§]!§(§ D§.§]z§,_loc10_,_loc6_);
            }
         }
      }
   }
}
