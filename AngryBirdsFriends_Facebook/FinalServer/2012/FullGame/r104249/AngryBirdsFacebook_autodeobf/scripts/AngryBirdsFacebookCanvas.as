package
{
   import §%!'§.§"!e§;
   import §%!'§.§>A§;
   import §+!F§.§1!D§;
   import §5!G§.§&2§;
   import §8!k§.§4"0§;
   import §`!n§.LevelManager;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.UncaughtErrorEvent;
   import flash.system.Security;
   import flash.utils.getTimer;
   
   public class AngryBirdsFacebookCanvas extends §4"0§
   {
      
      public static const §9"!§:String = "r104249";
       
      
      private var §=!&§:Boolean = false;
      
      public function AngryBirdsFacebookCanvas()
      {
         super();
         this.§9,§();
         if(stage)
         {
            this.init();
         }
         else
         {
            addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         }
      }
      
      private function init() : void
      {
         §>A§.§^7§(stage,"UA-23082676-15");
         §"!e§.§1v§();
         if(loaderInfo.bytesLoaded < loaderInfo.bytesTotal)
         {
            loaderInfo.addEventListener(Event.COMPLETE,this.§#!E§);
         }
         else
         {
            this.§6_§();
         }
      }
      
      private function §9,§() : void
      {
         Security.allowDomain("*");
         Security.allowInsecureDomain("*");
      }
      
      private function onAddedToStage(param1:Event) : void
      {
         removeEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         this.init();
      }
      
      private function §#!E§(param1:Event) : void
      {
         loaderInfo.removeEventListener(Event.COMPLETE,this.§#!E§);
         this.§6_§();
      }
      
      protected function §6_§() : void
      {
         loaderInfo.uncaughtErrorEvents.addEventListener(UncaughtErrorEvent.UNCAUGHT_ERROR,this.§]!n§);
         new §,"I§(this);
      }
      
      private function §]!n§(param1:UncaughtErrorEvent) : void
      {
         var _loc2_:int = 0;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc6_:int = 0;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc9_:String = null;
         var _loc10_:String = null;
         var _loc11_:Error = null;
         var _loc12_:ErrorEvent = null;
         var _loc13_:String = null;
         if(!this.§=!&§)
         {
            this.§=!&§ = true;
            _loc2_ = 0;
            _loc3_ = null;
            _loc4_ = "";
            _loc5_ = "-";
            _loc6_ = Math.round(getTimer() / 1000);
            if(param1.error is Error)
            {
               _loc2_ = (_loc11_ = param1.error as Error).errorID;
               _loc5_ = _loc11_.message;
               _loc3_ = _loc11_.getStackTrace();
            }
            else if(param1.error is ErrorEvent)
            {
               _loc2_ = (_loc12_ = param1.error as ErrorEvent).errorID;
            }
            §"!e§.§`M§(_loc2_,_loc6_);
            if(§&2§.§5!k§ != null)
            {
               _loc4_ = §&2§.§5!k§.§;!b§();
            }
            if(_loc4_ == null || _loc4_.length == 0)
            {
               _loc4_ = "NoState";
            }
            if((_loc7_ = LevelManager.§`-§) == null)
            {
               _loc7_ = "";
            }
            _loc8_ = "GPU";
            if(§1!D§.§7!T§ == null)
            {
               _loc8_ = "NULL";
            }
            else if(§1!D§.§9"I§)
            {
               _loc8_ = "CPU";
            }
            _loc9_ = AngryBirdsFP11.§-!H§ || "[Server version not loaded yet]";
            _loc10_ = _loc2_.toString() + "::" + _loc4_ + "::" + _loc5_ + "::" + _loc8_ + "::" + _loc7_ + "::" + _loc9_ + " " + §9"!§;
            §"!e§.§7"9§(§>A§.§0m§,_loc10_,_loc6_);
            if(_loc3_)
            {
               _loc13_ = _loc10_ + "::" + _loc3_;
               §"!e§.§7"9§(§>A§.§!! §,_loc13_,_loc6_);
            }
         }
      }
   }
}
