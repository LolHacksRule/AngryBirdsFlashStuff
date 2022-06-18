package
{
   import §#N§.§?!#§;
   import §0!F§.§,!U§;
   import §0!F§.§3>§;
   import §3i§.§2!`§;
   import §7!U§.§2!7§;
   import §8!#§.§6G§;
   import §>!1§.§#,§;
   import §>!6§.§0L§;
   import §@1§.StateConnecting;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.UncaughtErrorEvent;
   import flash.external.ExternalInterface;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.utils.getTimer;
   
   public class CheetosAngryBirdsCanvas extends §2!`§
   {
      
      public static const VERSION:String = "1.0.1.1";
       
      
      private var §-!L§:Boolean = false;
      
      public function CheetosAngryBirdsCanvas()
      {
         super();
         if(stage)
         {
            this.init();
         }
         else
         {
            addEventListener(Event.ADDED_TO_STAGE,this.§!!2§);
         }
      }
      
      private function init() : void
      {
         this.addExternalInterfaceCallbacks();
         if(loaderInfo.bytesLoaded < loaderInfo.bytesTotal)
         {
            loaderInfo.addEventListener(Event.COMPLETE,this.§>?§);
         }
         else
         {
            this.§4!U§();
         }
      }
      
      private function §1,§() : Boolean
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
         §0L§.addCallback("loginPlayer",this.loginPlayer);
         §0L§.addCallback("logout",this.logout);
      }
      
      public function loginPlayer(param1:String) : Boolean
      {
         if(param1)
         {
            if(§6G§.§+J§ == null)
            {
               this.§+q§(param1);
            }
            else if(§6G§.§+J§.name != param1)
            {
               this.logout();
               this.§+q§(param1);
            }
            return true;
         }
         return false;
      }
      
      private function §+q§(param1:String) : void
      {
         §6G§.§+J§ = new §?!#§();
         §6G§.§<!W§ = §#,§.§2h§();
         §6G§.§+J§.§0C§ = param1;
         §6G§.§+J§.name = param1;
         §+§.§ each§.§2!6§();
      }
      
      public function logout() : Boolean
      {
         §6G§.§+J§ = null;
         §6G§.§<!W§ = null;
         §+§.§ each§.§=!0§(StateConnecting.§]U§);
         return true;
      }
      
      private function §!!2§(param1:Event) : void
      {
         removeEventListener(Event.ADDED_TO_STAGE,this.§!!2§);
         this.init();
      }
      
      private function §>?§(param1:Event) : void
      {
         loaderInfo.removeEventListener(Event.COMPLETE,this.§>?§);
         this.§4!U§();
      }
      
      private function §<!$§(param1:Event) : void
      {
      }
      
      private function §[! §(param1:Event) : void
      {
      }
      
      private function §4!U§() : void
      {
         loaderInfo.uncaughtErrorEvents.addEventListener(UncaughtErrorEvent.UNCAUGHT_ERROR,this.§6!Y§);
         new §+§(this);
      }
      
      private function §6!Y§(param1:UncaughtErrorEvent) : void
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
         if(!this.§-!L§)
         {
            this.§-!L§ = true;
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
            §3>§.§7!]§(§,!U§.ACTION_APPLICATION_CRASH,_loc2_.toString());
            if(§2!7§.§6'§ != null)
            {
               _loc4_ = §2!7§.§6'§.§0^§();
            }
            if(_loc4_ == null || _loc4_.length == 0)
            {
               _loc4_ = "NoState";
            }
            _loc7_ = _loc2_.toString() + "::" + _loc4_ + "::" + _loc5_ + "::" + VERSION;
            §3>§.§7!]§(§,!U§.§2!,§,_loc7_,_loc6_);
            if(_loc3_)
            {
               _loc10_ = _loc7_ + "::" + _loc3_;
               §3>§.§7!]§(§,!U§.§"!_§,_loc10_,_loc6_);
            }
         }
      }
   }
}
