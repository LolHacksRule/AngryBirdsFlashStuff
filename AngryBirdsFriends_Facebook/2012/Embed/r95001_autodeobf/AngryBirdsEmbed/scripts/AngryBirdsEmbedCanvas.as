package
{
   import § "§.§8!3§;
   import §-'§.§[g§;
   import §-'§.§in§;
   import §10§.§#!4§;
   import §9!2§.§7N§;
   import §[!&§.§[R§;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.UncaughtErrorEvent;
   import flash.ui.ContextMenu;
   import flash.utils.getTimer;
   
   public class AngryBirdsEmbedCanvas extends §[R§
   {
      
      public static const §&T§:String = "0.0.0.1 (r95001) beta";
       
      
      private var §&!>§:Boolean = false;
      
      private var §3!%§:ClickToPlay;
      
      private var §%-§:Number;
      
      private var §;r§:Number;
      
      public function AngryBirdsEmbedCanvas()
      {
         super();
         if(stage)
         {
            this.init();
         }
         else
         {
            addEventListener(Event.ADDED_TO_STAGE,this.§!H§);
         }
      }
      
      private function init() : void
      {
         this.§%-§ = stage.stageWidth;
         this.§;r§ = stage.stageHeight;
         §in§.§!j§(stage,"UA-23082676-19");
         §in§.enabled = true;
         §[g§.§34§();
         if(loaderInfo.bytesLoaded < loaderInfo.bytesTotal)
         {
            loaderInfo.addEventListener(Event.COMPLETE,this.§!5§);
         }
         else
         {
            this.§6!<§();
         }
      }
      
      private function §!H§(param1:Event) : void
      {
         removeEventListener(Event.ADDED_TO_STAGE,this.§!H§);
         this.init();
      }
      
      private function §!5§(param1:Event) : void
      {
         loaderInfo.removeEventListener(Event.COMPLETE,this.§!5§);
         this.§6!<§();
      }
      
      protected function §6!<§() : void
      {
         loaderInfo.uncaughtErrorEvents.addEventListener(UncaughtErrorEvent.UNCAUGHT_ERROR,this.§<!#§);
         var _loc1_:ContextMenu = new ContextMenu();
         _loc1_.hideBuiltInItems();
         this.contextMenu = _loc1_;
         if(!stage.loaderInfo.parameters.paused)
         {
            this.§"-§();
         }
         else
         {
            this.§3!%§ = new ClickToPlay();
            this.§3!%§.useHandCursor = true;
            this.§3!%§.buttonMode = true;
            stage.addChild(this.§3!%§);
            this.§3!%§.x = stage.stageWidth - this.§3!%§.width >> 1;
            this.§3!%§.y = stage.stageHeight - this.§3!%§.height >> 1;
            this.§3!%§.TextField_LevelName.text = §@j§.§-!?§(stage.loaderInfo.parameters.levelId);
            stage.addEventListener(MouseEvent.CLICK,this.§!>§);
            stage.addEventListener(Event.RESIZE,this.onStageResize);
         }
      }
      
      private function onStageResize(param1:Event) : void
      {
         if(this.§3!%§)
         {
            this.§3!%§.x = stage.stageWidth - this.§3!%§.width >> 1;
            this.§3!%§.y = stage.stageHeight - this.§3!%§.height >> 1;
         }
      }
      
      private function §!>§(param1:MouseEvent) : void
      {
         stage.removeEventListener(Event.RESIZE,this.onStageResize);
         stage.removeEventListener(MouseEvent.CLICK,this.§!>§);
         if(stage.contains(this.§3!%§))
         {
            stage.removeChild(this.§3!%§);
         }
         this.§"-§();
      }
      
      private function §"-§() : void
      {
         new §#@§(this,this.§%-§,this.§;r§);
      }
      
      protected function §<!#§(param1:UncaughtErrorEvent) : void
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
         if(!this.§&!>§)
         {
            this.§&!>§ = true;
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
            §[g§.§;!4§(_loc2_,_loc6_);
            if(§#!4§.§='§ != null)
            {
               _loc4_ = §#!4§.§='§.§<#§();
            }
            if(_loc4_ == null || _loc4_.length == 0)
            {
               _loc4_ = "NoState";
            }
            if((_loc7_ = §8!3§.§-[§) == null)
            {
               _loc7_ = "";
            }
            _loc8_ = "GPU";
            if(§7N§.§17§ == null)
            {
               _loc8_ = "NULL";
            }
            else if(§7N§.§;Y§)
            {
               _loc8_ = "CPU";
            }
            _loc9_ = _loc2_.toString() + "::" + _loc4_ + "::" + _loc5_ + "::" + _loc8_ + "::" + _loc7_ + "::" + §&T§;
            §[g§.§>W§(§in§.§]X§,_loc9_,_loc6_);
            if(_loc3_)
            {
               _loc12_ = _loc9_ + "::" + _loc3_;
               §[g§.§>W§(§in§.§!U§,_loc12_,_loc6_);
            }
         }
      }
   }
}
