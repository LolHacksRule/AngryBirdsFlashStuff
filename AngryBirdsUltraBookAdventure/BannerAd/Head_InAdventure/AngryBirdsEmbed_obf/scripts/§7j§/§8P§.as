package §7j§
{
   import §#P§.§@7§;
   import §#X§.§,!F§;
   import §-!D§.§5A§;
   import §1!+§.SWFWheel;
   import §3a§.§'q§;
   import §3a§.§7!+§;
   import §6!F§.§9A§;
   import §7g§.§'!;§;
   import §7g§.§-;§;
   import §7g§.§1Q§;
   import §7g§.§`!8§;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.utils.getTimer;
   
   public class §8P§ extends §`!8§ implements IEventDispatcher
   {
      
      public static var §1!N§:Number;
      
      public static var §#o§:Number;
       
      
      public var §6L§:Number;
      
      private var §2!I§:EventDispatcher;
      
      public function §8P§(param1:§5!N§, param2:DisplayObjectContainer, param3:XML, param4:XML)
      {
         var canvas:§5!N§ = param1;
         var loadingScreen:DisplayObjectContainer = param2;
         var uiData:XML = param3;
         var assetData:XML = param4;
         this.§2!I§ = new EventDispatcher();
         super(canvas);
         if(§"B§.stage)
         {
            this.init(loadingScreen,uiData,assetData);
         }
         else
         {
            §"B§.addEventListener(Event.ADDED_TO_STAGE,function(param1:Event):void
            {
               §"B§.removeEventListener(Event.ADDED_TO_STAGE,arguments.callee);
               init(loadingScreen,uiData,assetData);
            });
         }
      }
      
      protected function initSoundEngine() : void
      {
         §,!F§.init();
      }
      
      protected function init(param1:DisplayObjectContainer, param2:XML, param3:XML) : void
      {
         SWFWheel.initialize(stage);
         SWFWheel.§'Q§ = false;
         §7!+§.§9!!§(this.getVersionInfo());
         §7!+§.§+M§ = this.getVersionInfo();
         §1Q§.§%!8§ = §"B§.stage.loaderInfo.parameters;
         this.initSoundEngine();
         §8Y§(new §-;§());
         var _loc4_:§'!;§ = this.initStateLoad();
         §8Y§(_loc4_);
         _loc4_.setLoadingScreen(param1);
         _loc4_.§'!+§(param3);
         §5A§.init(param2);
         if(§9A§.§>s§())
         {
            §9A§.§>!M§("serverConnectionError");
         }
         §+N§(§'!;§.§>9§);
         this.§5s§();
      }
      
      protected function initStateLoad() : §'!;§
      {
         return new §'!;§(true,§'!;§.§>9§,this.getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      public function §5s§() : void
      {
         §"B§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         §"B§.stage.addEventListener(Event.MOUSE_LEAVE,this.mouseLeave);
         §"B§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.keyDown);
         §"B§.stage.addEventListener(KeyboardEvent.KEY_UP,this.keyUp);
         this.§6L§ = getTimer();
      }
      
      public function mouseLeave(param1:Event) : void
      {
         if(§@v§())
         {
            §@v§().mouseLeave();
         }
      }
      
      public function keyDown(param1:KeyboardEvent) : void
      {
         if(§@v§())
         {
            §@v§().keyDown(param1);
         }
         §7!+§.keyDown(param1);
      }
      
      public function keyUp(param1:KeyboardEvent) : void
      {
         if(§@v§())
         {
            §@v§().keyUp(param1);
         }
      }
      
      public function onEnterFrame(param1:Event) : void
      {
         var _loc2_:Number = getTimer() - this.§6L§;
         this.§6L§ = getTimer();
         §@7§.§@6§.update(_loc2_);
         this.§2!I§.dispatchEvent(param1);
         §'q§.§7!G§(§"B§.mouseX,§"B§.mouseY);
         if(§=2§())
         {
            return;
         }
         if(this.updateState(_loc2_) == §1Q§.STATE_STATUS_COMPLETED)
         {
            §=2§();
         }
      }
      
      override public function updateState(param1:Number) : int
      {
         var _loc2_:int = super.updateState(param1);
         if(§@v§().isGenericState())
         {
            if(_loc2_ == §1Q§.STATE_STATUS_COMPLETED)
            {
               §"B§.addChild(§'q§.activate());
               this.setFirstGameState();
            }
         }
         return _loc2_;
      }
      
      override protected function previousStateDeactivate() : void
      {
         §@7§.§@6§.§+!E§();
      }
      
      public function setFirstGameState() : void
      {
         §+N§(§-;§.§>9§);
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
         this.§2!I§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         this.§2!I§.removeEventListener(param1,param2,param3);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return false;
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§2!I§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§2!I§.willTrigger(param1);
      }
   }
}
