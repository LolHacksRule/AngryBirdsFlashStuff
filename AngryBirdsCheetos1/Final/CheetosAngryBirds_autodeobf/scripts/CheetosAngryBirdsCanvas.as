package
{
   import § !0§.§##§;
   import §#!F§.§"!L§;
   import §#!F§.§'^§;
   import §%w§.StateConnecting;
   import §&!7§.§,!A§;
   import §&o§.§^O§;
   import §&p§.§9!H§;
   import §'!3§.§`!X§;
   import §?m§.§7?§;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.UncaughtErrorEvent;
   import flash.utils.getTimer;
   
   public class CheetosAngryBirdsCanvas extends §##§
   {
      
      public static const VERSION:String = "1.0.1.1";
       
      
      private var §&!S§:Boolean = false;
      
      public function CheetosAngryBirdsCanvas()
      {
         super();
         if(stage)
         {
            this.init();
         }
         else
         {
            addEventListener(Event.ADDED_TO_STAGE,this.§]j§);
         }
      }
      
      private function init() : void
      {
         this.addExternalInterfaceCallbacks();
         if(loaderInfo.bytesLoaded < loaderInfo.bytesTotal)
         {
            loaderInfo.addEventListener(Event.COMPLETE,this.§9R§);
         }
         else
         {
            this.§<F§();
         }
      }
      
      private function addExternalInterfaceCallbacks() : void
      {
         §,!A§.addCallback("loginPlayer",this.loginPlayer);
         §,!A§.addCallback("logout",this.logout);
      }
      
      public function loginPlayer(param1:String) : Boolean
      {
         if(param1)
         {
            if(§9!H§.§ o§ == null)
            {
               this.§]!C§(param1);
            }
            else if(§9!H§.§ o§.name != param1)
            {
               this.logout();
               this.§]!C§(param1);
            }
            return true;
         }
         return false;
      }
      
      private function §]!C§(param1:String) : void
      {
         §9!H§.§ o§ = new §^O§();
         §9!H§.§<!7§ = §`!X§.§&1§();
         §9!H§.§ o§.§ I§ = param1;
         §9!H§.§ o§.name = param1;
         §#x§.§=!!§.§9!2§();
      }
      
      public function logout() : Boolean
      {
         §9!H§.§ o§ = null;
         §9!H§.§<!7§ = null;
         §#x§.§=!!§.§3!3§(StateConnecting.§9!P§);
         return true;
      }
      
      private function §]j§(param1:Event) : void
      {
         removeEventListener(Event.ADDED_TO_STAGE,this.§]j§);
         this.init();
      }
      
      private function §9R§(param1:Event) : void
      {
         loaderInfo.removeEventListener(Event.COMPLETE,this.§9R§);
         this.§<F§();
      }
      
      private function §?T§(param1:Event) : void
      {
      }
      
      private function §?!+§(param1:Event) : void
      {
      }
      
      private function §<F§() : void
      {
         loaderInfo.uncaughtErrorEvents.addEventListener(UncaughtErrorEvent.UNCAUGHT_ERROR,this.§-8§);
         new §#x§(this);
      }
      
      private function §-8§(param1:UncaughtErrorEvent) : void
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
         if(!this.§&!S§)
         {
            this.§&!S§ = true;
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
            §'^§.§`0§(§"!L§.ACTION_APPLICATION_CRASH,_loc2_.toString());
            if(§7?§.§>!M§ != null)
            {
               _loc4_ = §7?§.§>!M§.§&G§();
            }
            if(_loc4_ == null || _loc4_.length == 0)
            {
               _loc4_ = "NoState";
            }
            _loc7_ = _loc2_.toString() + "::" + _loc4_ + "::" + _loc5_ + "::" + VERSION;
            §'^§.§`0§(§"!L§.§;!O§,_loc7_,_loc6_);
            if(_loc3_)
            {
               _loc10_ = _loc7_ + "::" + _loc3_;
               §'^§.§`0§(§"!L§.§#!7§,_loc10_,_loc6_);
            }
         }
      }
   }
}
