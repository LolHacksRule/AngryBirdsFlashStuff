package §?>§
{
   import §"1§.§3'§;
   import §"1§.§>I§;
   import §'8§.§5!H§;
   import §,!1§.§]e§;
   import §2!H§.SWFWheel;
   import §>!7§.§`d§;
   import §@!M§.§5!&§;
   import §^w§.§-!,§;
   import §^w§.§3!"§;
   import §^w§.§@!O§;
   import §^w§.§`l§;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.utils.getTimer;
   
   public class §`!P§ extends §@!O§ implements IEventDispatcher
   {
      
      public static var §>L§:Number;
      
      public static var §%!0§:Number;
       
      
      public var §2!"§:Number;
      
      private var §[5§:EventDispatcher;
      
      public function §`!P§(param1:§19§, param2:DisplayObjectContainer, param3:XML, param4:XML)
      {
         var canvas:§19§ = param1;
         var loadingScreen:DisplayObjectContainer = param2;
         var uiData:XML = param3;
         var assetData:XML = param4;
         this.§[5§ = new EventDispatcher();
         super(canvas);
         if(§1^§.stage)
         {
            this.init(loadingScreen,uiData,assetData);
         }
         else
         {
            §1^§.addEventListener(Event.ADDED_TO_STAGE,function(param1:Event):void
            {
               §1^§.removeEventListener(Event.ADDED_TO_STAGE,arguments.callee);
               init(loadingScreen,uiData,assetData);
            });
         }
      }
      
      protected function initSoundEngine() : void
      {
         §]e§.init();
      }
      
      protected function init(param1:DisplayObjectContainer, param2:XML, param3:XML) : void
      {
         SWFWheel.initialize(stage);
         SWFWheel.§>!4§ = false;
         §3'§.§@!>§(this.getVersionInfo());
         §3'§.§&!7§ = this.getVersionInfo();
         §-!,§.§ f§ = §1^§.stage.loaderInfo.parameters;
         this.initSoundEngine();
         §^!3§(new §`l§());
         var _loc4_:§3!"§ = this.initStateLoad();
         §^!3§(_loc4_);
         _loc4_.setLoadingScreen(param1);
         _loc4_.§1]§(param3);
         §`d§.init(param2);
         if(§5!H§.§2A§())
         {
            §5!H§.§&I§("serverConnectionError");
         }
         §?%§(§3!"§.§@§);
         this.§0!;§();
      }
      
      protected function initStateLoad() : §3!"§
      {
         return new §3!"§(true,§3!"§.§@§,this.getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      public function §0!;§() : void
      {
         §1^§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         §1^§.stage.addEventListener(Event.MOUSE_LEAVE,this.mouseLeave);
         §1^§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.keyDown);
         §1^§.stage.addEventListener(KeyboardEvent.KEY_UP,this.keyUp);
         this.§2!"§ = getTimer();
      }
      
      public function mouseLeave(param1:Event) : void
      {
         if(§[x§())
         {
            §[x§().mouseLeave();
         }
      }
      
      public function keyDown(param1:KeyboardEvent) : void
      {
         if(§[x§())
         {
            §[x§().keyDown(param1);
         }
         §3'§.keyDown(param1);
      }
      
      public function keyUp(param1:KeyboardEvent) : void
      {
         if(§[x§())
         {
            §[x§().keyUp(param1);
         }
      }
      
      public function onEnterFrame(param1:Event) : void
      {
         var _loc2_:Number = getTimer() - this.§2!"§;
         this.§2!"§ = getTimer();
         §5!&§.§@!&§.update(_loc2_);
         this.§[5§.dispatchEvent(param1);
         §>I§.§^T§(§1^§.mouseX,§1^§.mouseY);
         if(§#! §())
         {
            return;
         }
         if(this.updateState(_loc2_) == §-!,§.STATE_STATUS_COMPLETED)
         {
            §#! §();
         }
      }
      
      override public function updateState(param1:Number) : int
      {
         var _loc2_:int = super.updateState(param1);
         if(§[x§().isGenericState())
         {
            if(_loc2_ == §-!,§.STATE_STATUS_COMPLETED)
            {
               §1^§.addChild(§>I§.activate());
               this.setFirstGameState();
            }
         }
         return _loc2_;
      }
      
      override protected function previousStateDeactivate() : void
      {
         §5!&§.§@!&§.§ '§();
      }
      
      public function setFirstGameState() : void
      {
         §?%§(§`l§.§@§);
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
         this.§[5§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         this.§[5§.removeEventListener(param1,param2,param3);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return false;
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§[5§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§[5§.willTrigger(param1);
      }
   }
}
