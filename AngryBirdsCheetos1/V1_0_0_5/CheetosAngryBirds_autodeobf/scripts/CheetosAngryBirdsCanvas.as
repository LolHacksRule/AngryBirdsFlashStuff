package
{
   import §!J§.§[&§;
   import §![§.§4!6§;
   import §&! §.§%!Q§;
   import §0!>§.§"!+§;
   import §3!C§.§3o§;
   import §<!U§.StateConnecting;
   import §<!Y§.§<o§;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.UncaughtErrorEvent;
   import flash.utils.getTimer;
   import static.§]B§;
   
   public class CheetosAngryBirdsCanvas extends §<o§
   {
      
      public static const VERSION:String = "0.0.0.10";
       
      
      private var §'0§:Boolean = false;
      
      public function CheetosAngryBirdsCanvas()
      {
         super();
         if(stage)
         {
            this.init();
         }
         else
         {
            addEventListener(Event.ADDED_TO_STAGE,this.§?!?§);
         }
      }
      
      private function init() : void
      {
         this.addExternalInterfaceCallbacks();
         if(loaderInfo.bytesLoaded < loaderInfo.bytesTotal)
         {
            loaderInfo.addEventListener(Event.COMPLETE,this.§[l§);
         }
         else
         {
            this.§;O§();
         }
      }
      
      private function addExternalInterfaceCallbacks() : void
      {
         §4!6§.addCallback("loginPlayer",this.loginPlayer);
         §4!6§.addCallback("logout",this.logout);
      }
      
      public function loginPlayer(param1:String) : Boolean
      {
         if(param1)
         {
            if(§3o§.§-j§ == null)
            {
               this.§9&§(param1);
            }
            else if(§3o§.§-j§.name != param1)
            {
               this.logout();
               this.§9&§(param1);
            }
            return true;
         }
         return false;
      }
      
      private function §9&§(param1:String) : void
      {
         §3o§.§-j§ = new §]B§();
         §3o§.§`S§ = §"!+§.§&2§();
         §3o§.§-j§.§7'§ = param1;
         §3o§.§-j§.name = param1;
         §,l§.§,?§.§^!=§();
      }
      
      public function logout() : Boolean
      {
         §3o§.§-j§ = null;
         §3o§.§`S§ = null;
         §,l§.§,?§.§2y§(StateConnecting.§`O§);
         return true;
      }
      
      private function §?!?§(param1:Event) : void
      {
         removeEventListener(Event.ADDED_TO_STAGE,this.§?!?§);
         this.init();
      }
      
      private function §[l§(param1:Event) : void
      {
         loaderInfo.removeEventListener(Event.COMPLETE,this.§[l§);
         this.§;O§();
      }
      
      private function §#!?§(param1:Event) : void
      {
      }
      
      private function §1b§(param1:Event) : void
      {
      }
      
      private function §;O§() : void
      {
         loaderInfo.uncaughtErrorEvents.addEventListener(UncaughtErrorEvent.UNCAUGHT_ERROR,this.§>u§);
         new §,l§(this);
      }
      
      private function §>u§(param1:UncaughtErrorEvent) : void
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
         if(!this.§'0§)
         {
            this.§'0§ = true;
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
            §%!Q§.§4$§(§%!Q§.§1!W§,_loc2_.toString());
            if(§[&§.§;L§ != null)
            {
               _loc4_ = §[&§.§;L§.§0!B§();
            }
            if(_loc4_ == null || _loc4_.length == 0)
            {
               _loc4_ = "NoState";
            }
            _loc7_ = _loc2_.toString() + "::" + _loc4_ + "::" + _loc5_ + "::" + VERSION;
            §%!Q§.§4$§(§%!Q§.§<!'§,_loc7_,_loc6_);
            if(_loc3_)
            {
               _loc10_ = _loc7_ + "::" + _loc3_;
               §%!Q§.§4$§(§%!Q§.§5!C§,_loc10_,_loc6_);
            }
         }
      }
   }
}
