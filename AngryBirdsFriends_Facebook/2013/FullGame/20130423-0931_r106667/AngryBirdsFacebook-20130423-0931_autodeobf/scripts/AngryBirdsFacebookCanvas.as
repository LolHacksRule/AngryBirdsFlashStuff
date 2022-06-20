package
{
   import §"a§.§!"J§;
   import §%"J§.§!`§;
   import §9!n§.LevelManager;
   import §9@§.§3w§;
   import §9@§.§@q§;
   import §@!"§.§?l§;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.UncaughtErrorEvent;
   import flash.utils.getTimer;
   
   public class AngryBirdsFacebookCanvas extends §!`§
   {
      
      public static const §2&§:String = "r106667";
       
      
      private var § !0§:Boolean = false;
      
      public function AngryBirdsFacebookCanvas()
      {
         super();
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
         §3w§.§&"B§(stage,"UA-23082676-15");
         §@q§.§7!q§();
         if(loaderInfo.bytesLoaded < loaderInfo.bytesTotal)
         {
            loaderInfo.addEventListener(Event.COMPLETE,this.§`!#§);
         }
         else
         {
            this.§'3§();
         }
      }
      
      private function onAddedToStage(param1:Event) : void
      {
         removeEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         this.init();
      }
      
      private function §`!#§(param1:Event) : void
      {
         loaderInfo.removeEventListener(Event.COMPLETE,this.§`!#§);
         this.§'3§();
      }
      
      protected function §'3§() : void
      {
         loaderInfo.uncaughtErrorEvents.addEventListener(UncaughtErrorEvent.UNCAUGHT_ERROR,this.§,7§);
         new §%"S§(this);
      }
      
      private function §,7§(param1:UncaughtErrorEvent) : void
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
         if(!this.§ !0§)
         {
            this.§ !0§ = true;
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
            §@q§.§&d§(_loc2_,_loc6_,stage.loaderInfo.parameters.userId,_loc3_);
            if(§?l§.§ "G§ != null)
            {
               _loc4_ = §?l§.§ "G§.§%^§();
            }
            if(_loc4_ == null || _loc4_.length == 0)
            {
               _loc4_ = "NoState";
            }
            if((_loc7_ = LevelManager.§ T§) == null)
            {
               _loc7_ = "";
            }
            _loc8_ = "GPU";
            if(§!"J§.§1&§ == null)
            {
               _loc8_ = "NULL";
            }
            else if(§!"J§.§!X§)
            {
               _loc8_ = "CPU";
            }
            _loc9_ = AngryBirdsFP11.§@!x§ || "[Server version not loaded yet]";
            _loc10_ = _loc2_.toString() + "::" + _loc4_ + "::" + _loc5_ + "::" + _loc8_ + "::" + _loc7_ + "::" + _loc9_ + " " + §2&§;
            §@q§.§#!0§(§3w§.§-!f§,_loc10_,_loc6_);
            if(_loc3_)
            {
               _loc13_ = _loc10_ + "::" + _loc3_;
               §@q§.§#!0§(§3w§.§08§,_loc13_,_loc6_);
            }
         }
      }
   }
}
