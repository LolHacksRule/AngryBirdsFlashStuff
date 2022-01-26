package
{
   import §"!S§.§"_§;
   import §,!?§.StateConnecting;
   import §2!I§.§[!,§;
   import §;!<§.§>W§;
   import §?u§.§+V§;
   import §@z§.§3u§;
   import §^!!§.§'!_§;
   import §`!@§.§&[§;
   import §`!@§.§^@§;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.UncaughtErrorEvent;
   import flash.external.ExternalInterface;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.utils.getTimer;
   
   public class CheetosAngryBirdsCanvas extends §3u§
   {
      
      public static const VERSION:String = "1.0.1.1";
       
      
      private var §4!,§:Boolean = false;
      
      public function CheetosAngryBirdsCanvas()
      {
         super();
         if(stage)
         {
            this.init();
         }
         else
         {
            addEventListener(Event.ADDED_TO_STAGE,this.§4y§);
         }
      }
      
      private function init() : void
      {
         this.addExternalInterfaceCallbacks();
         if(loaderInfo.bytesLoaded < loaderInfo.bytesTotal)
         {
            loaderInfo.addEventListener(Event.COMPLETE,this.§[p§);
         }
         else
         {
            this.§=![§();
         }
      }
      
      private function §7!A§() : Boolean
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
         §+V§.addCallback("loginPlayer",this.loginPlayer);
         §+V§.addCallback("logout",this.logout);
      }
      
      public function loginPlayer(param1:String) : Boolean
      {
         if(param1)
         {
            if(§'!_§.§=!"§ == null)
            {
               this.§`'§(param1);
            }
            else if(§'!_§.§=!"§.name != param1)
            {
               this.logout();
               this.§`'§(param1);
            }
            return true;
         }
         return false;
      }
      
      private function §`'§(param1:String) : void
      {
         §'!_§.§=!"§ = new §[!,§();
         §'!_§.§&C§ = §>W§.§&![§();
         §'!_§.§=!"§.§^!F§ = param1;
         §'!_§.§=!"§.name = param1;
         §2!-§.§"7§.§+!7§();
      }
      
      public function logout() : Boolean
      {
         §'!_§.§=!"§ = null;
         §'!_§.§&C§ = null;
         §2!-§.§"7§.§&q§(StateConnecting.§@B§);
         return true;
      }
      
      private function §4y§(param1:Event) : void
      {
         removeEventListener(Event.ADDED_TO_STAGE,this.§4y§);
         this.init();
      }
      
      private function §[p§(param1:Event) : void
      {
         loaderInfo.removeEventListener(Event.COMPLETE,this.§[p§);
         this.§=![§();
      }
      
      private function §]!§(param1:Event) : void
      {
      }
      
      private function §0M§(param1:Event) : void
      {
      }
      
      private function §=![§() : void
      {
         loaderInfo.uncaughtErrorEvents.addEventListener(UncaughtErrorEvent.UNCAUGHT_ERROR,this.§1%§);
         new §2!-§(this);
      }
      
      private function §1%§(param1:UncaughtErrorEvent) : void
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
         if(!this.§4!,§)
         {
            this.§4!,§ = true;
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
            §^@§.§ !9§(§&[§.ACTION_APPLICATION_CRASH,_loc2_.toString());
            if(§"_§.§[!P§ != null)
            {
               _loc4_ = §"_§.§[!P§.§1B§();
            }
            if(_loc4_ == null || _loc4_.length == 0)
            {
               _loc4_ = "NoState";
            }
            _loc7_ = _loc2_.toString() + "::" + _loc4_ + "::" + _loc5_ + "::" + VERSION;
            §^@§.§ !9§(§&[§.§]<§,_loc7_,_loc6_);
            if(_loc3_)
            {
               _loc10_ = _loc7_ + "::" + _loc3_;
               §^@§.§ !9§(§&[§.§?d§,_loc10_,_loc6_);
            }
         }
      }
   }
}
