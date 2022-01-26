package §=9§
{
   import §"!?§.SWFWheel;
   import §#!2§.§0T§;
   import §'m§.§<7§;
   import §'m§.§^S§;
   import §+N§.§!j§;
   import §87§.§2-§;
   import §>Z§.§2;§;
   import §`<§.§&d§;
   import §`<§.§,!6§;
   import §`<§.§7^§;
   import §`<§.§;a§;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.utils.getTimer;
   
   public class §]!B§ extends §7^§ implements IEventDispatcher
   {
      
      public static var §^t§:Number;
      
      public static var §=4§:Number;
       
      
      public var §,8§:Number;
      
      private var §8&§:EventDispatcher;
      
      public function §]!B§(param1:§#!+§, param2:DisplayObjectContainer, param3:XML, param4:XML)
      {
         var canvas:§#!+§ = param1;
         var loadingScreen:DisplayObjectContainer = param2;
         var uiData:XML = param3;
         var assetData:XML = param4;
         this.§8&§ = new EventDispatcher();
         super(canvas);
         if(§9e§.stage)
         {
            this.init(loadingScreen,uiData,assetData);
         }
         else
         {
            §9e§.addEventListener(Event.ADDED_TO_STAGE,function(param1:Event):void
            {
               §9e§.removeEventListener(Event.ADDED_TO_STAGE,arguments.callee);
               init(loadingScreen,uiData,assetData);
            });
         }
      }
      
      protected function initSoundEngine() : void
      {
         §2;§.init();
      }
      
      protected function init(param1:DisplayObjectContainer, param2:XML, param3:XML) : void
      {
         SWFWheel.initialize(stage);
         SWFWheel.§8A§ = true;
         §^S§.§;l§(this.getVersionInfo());
         §,!6§.§#G§ = §9e§.stage.loaderInfo.parameters;
         this.initSoundEngine();
         §0m§(new §&d§());
         var _loc4_:§;a§ = this.initStateLoad();
         §0m§(_loc4_);
         _loc4_.setLoadingScreen(param1);
         _loc4_.§&^§(param3);
         §2-§.init(param2);
         if(§0T§.§!2§())
         {
            §0T§.§ H§("serverConnectionError");
         }
         §"y§(§;a§.§`%§);
         this.§^L§();
      }
      
      protected function initStateLoad() : §;a§
      {
         return new §;a§(true,§;a§.§`%§,this.getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      public function §^L§() : void
      {
         §9e§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         §9e§.stage.addEventListener(Event.MOUSE_LEAVE,this.mouseLeave);
         §9e§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.keyDown);
         §9e§.stage.addEventListener(KeyboardEvent.KEY_UP,this.keyUp);
         this.§,8§ = getTimer();
      }
      
      public function mouseLeave(param1:Event) : void
      {
         if(§8U§())
         {
            §8U§().mouseLeave();
         }
      }
      
      public function keyDown(param1:KeyboardEvent) : void
      {
         if(§8U§())
         {
            §8U§().keyDown(param1);
         }
         §^S§.keyDown(param1);
      }
      
      public function keyUp(param1:KeyboardEvent) : void
      {
         if(§8U§())
         {
            §8U§().keyUp(param1);
         }
      }
      
      public function onEnterFrame(param1:Event) : void
      {
         var _loc2_:Number = getTimer() - this.§,8§;
         this.§,8§ = getTimer();
         §!j§.§5!B§.update(_loc2_);
         this.§8&§.dispatchEvent(param1);
         §<7§.§-0§(§9e§.mouseX,§9e§.mouseY);
         if(§'!7§())
         {
            return;
         }
         if(this.updateState(_loc2_) == §,!6§.STATE_STATUS_COMPLETED)
         {
            §'!7§();
         }
      }
      
      override public function updateState(param1:Number) : int
      {
         var _loc2_:int = super.updateState(param1);
         if(§8U§().isGenericState())
         {
            if(_loc2_ == §,!6§.STATE_STATUS_COMPLETED)
            {
               §9e§.addChild(§<7§.activate());
               this.setFirstGameState();
            }
         }
         return _loc2_;
      }
      
      override protected function previousStateDeactivate() : void
      {
         §!j§.§5!B§.§52§();
      }
      
      public function setFirstGameState() : void
      {
         §"y§(§&d§.§`%§);
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
         this.§8&§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         this.§8&§.removeEventListener(param1,param2,param3);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return false;
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§8&§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§8&§.willTrigger(param1);
      }
   }
}
