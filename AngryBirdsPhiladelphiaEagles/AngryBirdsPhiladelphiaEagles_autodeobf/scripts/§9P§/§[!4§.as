package §9P§
{
   import §&^§.§[!7§;
   import §'!O§.§'!#§;
   import §'!O§.§'3§;
   import §'!O§.§,!?§;
   import §'!O§.§]L§;
   import §'K§.§3C§;
   import §;f§.§7P§;
   import §<p§.SWFWheel;
   import §]!-§.§`Z§;
   import §`K§.§ L§;
   import §`K§.§4N§;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.utils.getTimer;
   
   public class §[!4§ extends §,!?§ implements IEventDispatcher
   {
      
      public static var §6!6§:Number;
      
      public static var §3d§:Number;
       
      
      public var §@0§:Number;
      
      private var §=9§:EventDispatcher;
      
      public function §[!4§(param1:§'B§, param2:DisplayObjectContainer, param3:XML, param4:XML)
      {
         var canvas:§'B§ = param1;
         var loadingScreen:DisplayObjectContainer = param2;
         var uiData:XML = param3;
         var assetData:XML = param4;
         this.§=9§ = new EventDispatcher();
         super(canvas);
         if(§#!G§.stage)
         {
            this.init(loadingScreen,uiData,assetData);
         }
         else
         {
            §#!G§.addEventListener(Event.ADDED_TO_STAGE,function(param1:Event):void
            {
               §#!G§.removeEventListener(Event.ADDED_TO_STAGE,arguments.callee);
               init(loadingScreen,uiData,assetData);
            });
         }
      }
      
      protected function initSoundEngine() : void
      {
         §[!7§.init();
      }
      
      protected function init(param1:DisplayObjectContainer, param2:XML, param3:XML) : void
      {
         SWFWheel.initialize(stage);
         SWFWheel.§=!E§ = false;
         § L§.§8;§(this.getVersionInfo());
         § L§.§-g§ = this.getVersionInfo();
         §'!#§.§#f§ = §#!G§.stage.loaderInfo.parameters;
         this.initSoundEngine();
         §#!F§(new §'3§());
         var _loc4_:§]L§ = this.initStateLoad();
         §#!F§(_loc4_);
         _loc4_.setLoadingScreen(param1);
         _loc4_.§#W§(param3);
         §`Z§.init(param2);
         if(§7P§.§3#§())
         {
            §7P§.§-e§("serverConnectionError");
         }
         §8n§(§]L§.§-A§);
         this.§<N§();
      }
      
      protected function initStateLoad() : §]L§
      {
         return new §]L§(true,§]L§.§-A§,this.getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      public function §<N§() : void
      {
         §#!G§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         §#!G§.stage.addEventListener(Event.MOUSE_LEAVE,this.mouseLeave);
         §#!G§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.keyDown);
         §#!G§.stage.addEventListener(KeyboardEvent.KEY_UP,this.keyUp);
         this.§@0§ = getTimer();
      }
      
      public function mouseLeave(param1:Event) : void
      {
         if(§@!@§())
         {
            §@!@§().mouseLeave();
         }
      }
      
      public function keyDown(param1:KeyboardEvent) : void
      {
         if(§@!@§())
         {
            §@!@§().keyDown(param1);
         }
         § L§.keyDown(param1);
      }
      
      public function keyUp(param1:KeyboardEvent) : void
      {
         if(§@!@§())
         {
            §@!@§().keyUp(param1);
         }
      }
      
      public function onEnterFrame(param1:Event) : void
      {
         var _loc2_:Number = getTimer() - this.§@0§;
         this.§@0§ = getTimer();
         §3C§.§>o§.update(_loc2_);
         this.§=9§.dispatchEvent(param1);
         §4N§.§6!F§(§#!G§.mouseX,§#!G§.mouseY);
         if(§+!H§())
         {
            return;
         }
         if(this.updateState(_loc2_) == §'!#§.STATE_STATUS_COMPLETED)
         {
            §+!H§();
         }
      }
      
      override public function updateState(param1:Number) : int
      {
         var _loc2_:int = super.updateState(param1);
         if(§@!@§().isGenericState())
         {
            if(_loc2_ == §'!#§.STATE_STATUS_COMPLETED)
            {
               §#!G§.addChild(§4N§.activate());
               this.setFirstGameState();
            }
         }
         return _loc2_;
      }
      
      override protected function previousStateDeactivate() : void
      {
         §3C§.§>o§.§"!6§();
      }
      
      public function setFirstGameState() : void
      {
         §8n§(§'3§.§-A§);
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
         this.§=9§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         this.§=9§.removeEventListener(param1,param2,param3);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return false;
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§=9§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§=9§.willTrigger(param1);
      }
   }
}
