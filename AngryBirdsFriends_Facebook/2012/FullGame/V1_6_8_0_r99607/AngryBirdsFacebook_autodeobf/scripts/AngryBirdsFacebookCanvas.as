package
{
   import §+"6§.§5!H§;
   import §+I§.§9!%§;
   import §0M§.§`!9§;
   import §<!<§.§%!#§;
   import §<!<§.§7c§;
   import §[!z§.LevelManager;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.UncaughtErrorEvent;
   import flash.utils.getTimer;
   
   public class AngryBirdsFacebookCanvas extends §`!9§
   {
      
      public static const §2>§:String = "1.6.8.0 (r99607)";
       
      
      private var §&!G§:Boolean = false;
      
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
         §7c§.§3">§(stage,"UA-23082676-15");
         §%!#§.§;i§();
         if(loaderInfo.bytesLoaded < loaderInfo.bytesTotal)
         {
            loaderInfo.addEventListener(Event.COMPLETE,this.§#C§);
         }
         else
         {
            this.§^8§();
         }
      }
      
      private function onAddedToStage(param1:Event) : void
      {
         removeEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         this.init();
      }
      
      private function §#C§(param1:Event) : void
      {
         loaderInfo.removeEventListener(Event.COMPLETE,this.§#C§);
         this.§^8§();
      }
      
      protected function §^8§() : void
      {
         loaderInfo.uncaughtErrorEvents.addEventListener(UncaughtErrorEvent.UNCAUGHT_ERROR,this.§%"2§);
         new § W§(this);
      }
      
      private function §%"2§(param1:UncaughtErrorEvent) : void
      {
         var _loc2_:int = 0;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc6_:int = 0;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc9_:String = null;
         var _loc10_:Error = null;
         var _loc11_:ErrorEvent = null;
         var _loc12_:String = null;
         if(!this.§&!G§)
         {
            this.§&!G§ = true;
            _loc2_ = 0;
            _loc3_ = null;
            _loc4_ = "";
            _loc5_ = "-";
            _loc6_ = Math.round(getTimer() / 1000);
            if(param1.error is Error)
            {
               _loc2_ = (_loc10_ = param1.error as Error).errorID;
               _loc5_ = _loc10_.message;
               _loc3_ = _loc10_.getStackTrace();
            }
            else if(param1.error is ErrorEvent)
            {
               _loc2_ = (_loc11_ = param1.error as ErrorEvent).errorID;
            }
            §%!#§.§-!O§(_loc2_,_loc6_);
            if(§9!%§.§ !W§ != null)
            {
               _loc4_ = §9!%§.§ !W§.§="'§();
            }
            if(_loc4_ == null || _loc4_.length == 0)
            {
               _loc4_ = "NoState";
            }
            if((_loc7_ = LevelManager.§[!<§) == null)
            {
               _loc7_ = "";
            }
            _loc8_ = "GPU";
            if(§5!H§.§%n§ == null)
            {
               _loc8_ = "NULL";
            }
            else if(§5!H§.§#!l§)
            {
               _loc8_ = "CPU";
            }
            _loc9_ = _loc2_.toString() + "::" + _loc4_ + "::" + _loc5_ + "::" + _loc8_ + "::" + _loc7_ + "::" + §2>§;
            §%!#§.§'"-§(§7c§.§""6§,_loc9_,_loc6_);
            if(_loc3_)
            {
               _loc12_ = _loc9_ + "::" + _loc3_;
               §%!#§.§'"-§(§7c§.§%C§,_loc12_,_loc6_);
            }
         }
      }
   }
}
