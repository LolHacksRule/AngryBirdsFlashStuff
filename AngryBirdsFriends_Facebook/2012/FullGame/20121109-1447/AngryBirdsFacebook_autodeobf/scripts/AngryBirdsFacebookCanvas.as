package
{
   import §#!e§.LevelManager;
   import §'6§.§"]§;
   import §-"6§.§5E§;
   import §<a§.§+!B§;
   import §<a§.§>f§;
   import §]!A§.;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.UncaughtErrorEvent;
   import flash.utils.getTimer;
   
   public class AngryBirdsFacebookCanvas extends §5E§
   {
      
      public static const §'P§:String = "r101181";
       
      
      private var §?"-§:Boolean = false;
      
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
         §>f§.§;!$§(stage,"UA-23082676-15");
         §+!B§.§-o§();
         if(loaderInfo.bytesLoaded < loaderInfo.bytesTotal)
         {
            loaderInfo.addEventListener(Event.COMPLETE,this.§#a§);
         }
         else
         {
            this.§=^§();
         }
      }
      
      private function onAddedToStage(param1:Event) : void
      {
         removeEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         this.init();
      }
      
      private function §#a§(param1:Event) : void
      {
         loaderInfo.removeEventListener(Event.COMPLETE,this.§#a§);
         this.§=^§();
      }
      
      protected function §=^§() : void
      {
         loaderInfo.uncaughtErrorEvents.addEventListener(UncaughtErrorEvent.UNCAUGHT_ERROR,this.§;m§);
         new §3T§(this);
      }
      
      private function §;m§(param1:UncaughtErrorEvent) : void
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
         if(!this.§?"-§)
         {
            this.§?"-§ = true;
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
            §+!B§.§@!g§(_loc2_,_loc6_);
            if(§#6§.§ q§ != null)
            {
               _loc4_ = §#6§.§ q§.§<!W§();
            }
            if(_loc4_ == null || _loc4_.length == 0)
            {
               _loc4_ = "NoState";
            }
            if((_loc7_ = LevelManager.§'!O§) == null)
            {
               _loc7_ = "";
            }
            _loc8_ = "GPU";
            if(§"]§.§!X§ == null)
            {
               _loc8_ = "NULL";
            }
            else if(§"]§.§4"!§)
            {
               _loc8_ = "CPU";
            }
            _loc9_ = AngryBirdsFP11.§&"D§ || "[Server version not loaded yet]";
            _loc10_ = _loc2_.toString() + "::" + _loc4_ + "::" + _loc5_ + "::" + _loc8_ + "::" + _loc7_ + "::" + _loc9_ + " " + §'P§;
            §+!B§.§""1§(§>f§.§0@§,_loc10_,_loc6_);
            if(_loc3_)
            {
               _loc13_ = _loc10_ + "::" + _loc3_;
               §+!B§.§""1§(§>f§.§+k§,_loc13_,_loc6_);
            }
         }
      }
   }
}
