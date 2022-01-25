package §=1§
{
   import §#%§.§0!K§;
   import §'!G§.§1C§;
   import §'!G§.§42§;
   import §6!@§.§ !!§;
   import §6!@§.§4!V§;
   import §6!@§.§7!§;
   import §6!@§.§[!8§;
   import §7I§.§<!0§;
   import §=!4§.§"!3§;
   import §[!=§.§!!K§;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.utils.getTimer;
   
   public class §[!'§ extends §4!V§ implements IEventDispatcher
   {
      
      public static var §[q§:Number;
      
      public static var §#!^§:Number;
       
      
      public var §6!'§:Number;
      
      private var §implements§:EventDispatcher;
      
      public function §[!'§(param1:§&H§, param2:DisplayObjectContainer, param3:XML, param4:XML)
      {
         var canvas:§&H§ = param1;
         var loadingScreen:DisplayObjectContainer = param2;
         var uiData:XML = param3;
         var assetData:XML = param4;
         this.§implements§ = new EventDispatcher();
         super(canvas);
         if(§4!?§.stage)
         {
            this.init(loadingScreen,uiData,assetData);
         }
         else
         {
            §4!?§.addEventListener(Event.ADDED_TO_STAGE,function(param1:Event):void
            {
               §4!?§.removeEventListener(Event.ADDED_TO_STAGE,arguments.callee);
               init(loadingScreen,uiData,assetData);
            });
         }
      }
      
      protected function §5!M§() : void
      {
         §<!0§.init();
      }
      
      protected function init(param1:DisplayObjectContainer, param2:XML, param3:XML) : void
      {
         §"!3§.§1!b§(stage);
         §"!3§.§3B§ = true;
         §1C§.§1F§(this.getVersionInfo());
         § !!§.§<!5§ = §4!?§.stage.loaderInfo.parameters;
         this.§5!M§();
         §7!E§(new §7!§());
         var _loc4_:§[!8§ = this.initStateLoad();
         §7!E§(_loc4_);
         _loc4_.§"!F§(param1);
         _loc4_.§1!K§(param3);
         §7!^§.init(param2);
         if(§0!K§.§+!M§())
         {
            §0!K§.§`>§("serverConnectionError");
         }
         §3!9§(§[!8§.§^6§);
         this.§%y§();
      }
      
      protected function initStateLoad() : §[!8§
      {
         return new §[!8§(true,§[!8§.§^6§,this.getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      public function §%y§() : void
      {
         §4!?§.addEventListener(Event.ENTER_FRAME,this.§^f§);
         §4!?§.stage.addEventListener(Event.MOUSE_LEAVE,this.mouseLeave);
         §4!?§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.keyDown);
         §4!?§.stage.addEventListener(KeyboardEvent.KEY_UP,this.keyUp);
         this.§6!'§ = getTimer();
      }
      
      public function mouseLeave(param1:Event) : void
      {
         if(§&!Y§())
         {
            §&!Y§().mouseLeave();
         }
      }
      
      public function keyDown(param1:KeyboardEvent) : void
      {
         if(§&!Y§())
         {
            §&!Y§().keyDown(param1);
         }
         §1C§.keyDown(param1);
      }
      
      public function keyUp(param1:KeyboardEvent) : void
      {
         if(§&!Y§())
         {
            §&!Y§().keyUp(param1);
         }
      }
      
      public function §^f§(param1:Event) : void
      {
         var _loc2_:Number = getTimer() - this.§6!'§;
         this.§6!'§ = getTimer();
         §!!K§.§@!c§.update(_loc2_);
         this.§implements§.dispatchEvent(param1);
         §42§.§^k§(§4!?§.mouseX,§4!?§.mouseY);
         if(§1!2§())
         {
            return;
         }
         if(this.updateState(_loc2_) == § !!§.STATE_STATUS_COMPLETED)
         {
            §1!2§();
         }
      }
      
      override public function updateState(param1:Number) : int
      {
         var _loc2_:int = super.updateState(param1);
         if(§&!Y§().isGenericState())
         {
            if(_loc2_ == § !!§.STATE_STATUS_COMPLETED)
            {
               §4!?§.addChild(§42§.activate());
               this.setFirstGameState();
            }
         }
         return _loc2_;
      }
      
      override protected function previousStateDeactivate() : void
      {
         §!!K§.§@!c§.§'X§();
      }
      
      public function setFirstGameState() : void
      {
         §3!9§(§7!§.§^6§);
      }
      
      public function getMinLoadingScreenTime() : Number
      {
         return 1000;
      }
      
      public function getVersionInfo() : String
      {
         return "unknown";
      }
      
      public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         this.§implements§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         this.§implements§.removeEventListener(param1,param2,param3);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return false;
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§implements§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§implements§.willTrigger(param1);
      }
   }
}
