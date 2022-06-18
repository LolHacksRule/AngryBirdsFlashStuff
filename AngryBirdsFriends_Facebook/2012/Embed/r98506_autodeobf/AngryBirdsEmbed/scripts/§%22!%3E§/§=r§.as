package §"!>§
{
   import §,u§.§8A§;
   import §-p§.§&2§;
   import §-p§.§5<§;
   import §1G§.§3!!§;
   import §1G§.§>!$§;
   import §1G§.§`U§;
   import §1G§.§`w§;
   import §3!A§.§9!0§;
   import §;=§.§>!2§;
   import §=6§.SWFWheel;
   import §[R§.§3!@§;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.utils.getTimer;
   
   public class §=r§ extends §3!!§ implements IEventDispatcher
   {
      
      public static var §3H§:Number;
      
      public static var §`!E§:Number;
       
      
      public var §-f§:Number;
      
      private var §"G§:EventDispatcher;
      
      public function §=r§(param1:§=n§, param2:DisplayObjectContainer, param3:XML, param4:XML)
      {
         var canvas:§=n§ = param1;
         var loadingScreen:DisplayObjectContainer = param2;
         var uiData:XML = param3;
         var assetData:XML = param4;
         this.§"G§ = new EventDispatcher();
         super(canvas);
         if(§1!0§.stage)
         {
            this.init(loadingScreen,uiData,assetData);
         }
         else
         {
            §1!0§.addEventListener(Event.ADDED_TO_STAGE,function(param1:Event):void
            {
               §1!0§.removeEventListener(Event.ADDED_TO_STAGE,arguments.callee);
               init(loadingScreen,uiData,assetData);
            });
         }
      }
      
      protected function initSoundEngine() : void
      {
         §9!0§.init();
      }
      
      protected function init(param1:DisplayObjectContainer, param2:XML, param3:XML) : void
      {
         SWFWheel.initialize(stage);
         SWFWheel.§+t§ = false;
         §&2§.§<M§(this.getVersionInfo());
         §&2§.§94§ = this.getVersionInfo();
         §`U§.§8!%§ = §1!0§.stage.loaderInfo.parameters;
         this.initSoundEngine();
         §%p§(new §`w§());
         var _loc4_:§>!$§ = this.initStateLoad();
         §%p§(_loc4_);
         _loc4_.setLoadingScreen(param1);
         _loc4_.§!!;§(param3);
         §3!@§.init(param2);
         if(§8A§.§-!I§())
         {
            §8A§.§#m§("serverConnectionError");
         }
         §>A§(§>!$§.§?1§);
         this.§?a§();
      }
      
      protected function initStateLoad() : §>!$§
      {
         return new §>!$§(true,§>!$§.§?1§,this.getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      public function §?a§() : void
      {
         §1!0§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         §1!0§.stage.addEventListener(Event.MOUSE_LEAVE,this.mouseLeave);
         §1!0§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.keyDown);
         §1!0§.stage.addEventListener(KeyboardEvent.KEY_UP,this.keyUp);
         this.§-f§ = getTimer();
      }
      
      public function mouseLeave(param1:Event) : void
      {
         if(§%!>§())
         {
            §%!>§().mouseLeave();
         }
      }
      
      public function keyDown(param1:KeyboardEvent) : void
      {
         if(§%!>§())
         {
            §%!>§().keyDown(param1);
         }
         §&2§.keyDown(param1);
      }
      
      public function keyUp(param1:KeyboardEvent) : void
      {
         if(§%!>§())
         {
            §%!>§().keyUp(param1);
         }
      }
      
      public function onEnterFrame(param1:Event) : void
      {
         var _loc2_:Number = getTimer() - this.§-f§;
         this.§-f§ = getTimer();
         §>!2§.§72§.update(_loc2_);
         this.§"G§.dispatchEvent(param1);
         §5<§.§7G§(§1!0§.mouseX,§1!0§.mouseY);
         if(§ ^§())
         {
            return;
         }
         if(this.updateState(_loc2_) == §`U§.STATE_STATUS_COMPLETED)
         {
            § ^§();
         }
      }
      
      override public function updateState(param1:Number) : int
      {
         var _loc2_:int = super.updateState(param1);
         if(§%!>§().isGenericState())
         {
            if(_loc2_ == §`U§.STATE_STATUS_COMPLETED)
            {
               §1!0§.addChild(§5<§.activate());
               this.setFirstGameState();
            }
         }
         return _loc2_;
      }
      
      override protected function previousStateDeactivate() : void
      {
         §>!2§.§72§.§]l§();
      }
      
      public function setFirstGameState() : void
      {
         §>A§(§`w§.§?1§);
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
         this.§"G§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         this.§"G§.removeEventListener(param1,param2,param3);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return false;
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§"G§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§"G§.willTrigger(param1);
      }
   }
}
