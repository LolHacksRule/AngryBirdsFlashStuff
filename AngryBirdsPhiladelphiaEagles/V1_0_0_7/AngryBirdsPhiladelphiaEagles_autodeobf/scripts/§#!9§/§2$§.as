package §#!9§
{
   import §!6§.§3!5§;
   import §!6§.§[!<§;
   import §#I§.SWFWheel;
   import §5!<§.§^!$§;
   import §<!4§.§25§;
   import §?!=§.§5!,§;
   import §?!=§.§5!9§;
   import §?!=§.§9!B§;
   import §?!=§.§<!>§;
   import §?!C§.§[!-§;
   import §]8§.§6v§;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.utils.getTimer;
   
   public class §2$§ extends §5!,§ implements IEventDispatcher
   {
      
      public static var §'Q§:Number;
      
      public static var §"l§:Number;
       
      
      public var §2!H§:Number;
      
      private var §?!@§:EventDispatcher;
      
      public function §2$§(param1:§?Z§, param2:DisplayObjectContainer, param3:XML, param4:XML)
      {
         var canvas:§?Z§ = param1;
         var loadingScreen:DisplayObjectContainer = param2;
         var uiData:XML = param3;
         var assetData:XML = param4;
         this.§?!@§ = new EventDispatcher();
         super(canvas);
         if(§3s§.stage)
         {
            this.init(loadingScreen,uiData,assetData);
         }
         else
         {
            §3s§.addEventListener(Event.ADDED_TO_STAGE,function(param1:Event):void
            {
               §3s§.removeEventListener(Event.ADDED_TO_STAGE,arguments.callee);
               init(loadingScreen,uiData,assetData);
            });
         }
      }
      
      protected function initSoundEngine() : void
      {
         §25§.init();
      }
      
      protected function init(param1:DisplayObjectContainer, param2:XML, param3:XML) : void
      {
         SWFWheel.initialize(stage);
         SWFWheel.§%;§ = false;
         §3!5§.§4!%§(this.getVersionInfo());
         §3!5§.§8!A§ = this.getVersionInfo();
         §<!>§.§8z§ = §3s§.stage.loaderInfo.parameters;
         this.initSoundEngine();
         §]!E§(new §9!B§());
         var _loc4_:§5!9§ = this.initStateLoad();
         §]!E§(_loc4_);
         _loc4_.setLoadingScreen(param1);
         _loc4_.§7!B§(param3);
         §^!$§.init(param2);
         if(§6v§.§#!6§())
         {
            §6v§.§-J§("serverConnectionError");
         }
         §%`§(§5!9§.§4!C§);
         this.§3!1§();
      }
      
      protected function initStateLoad() : §5!9§
      {
         return new §5!9§(true,§5!9§.§4!C§,this.getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      public function §3!1§() : void
      {
         §3s§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         §3s§.stage.addEventListener(Event.MOUSE_LEAVE,this.mouseLeave);
         §3s§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.keyDown);
         §3s§.stage.addEventListener(KeyboardEvent.KEY_UP,this.keyUp);
         this.§2!H§ = getTimer();
      }
      
      public function mouseLeave(param1:Event) : void
      {
         if(§%x§())
         {
            §%x§().mouseLeave();
         }
      }
      
      public function keyDown(param1:KeyboardEvent) : void
      {
         if(§%x§())
         {
            §%x§().keyDown(param1);
         }
         §3!5§.keyDown(param1);
      }
      
      public function keyUp(param1:KeyboardEvent) : void
      {
         if(§%x§())
         {
            §%x§().keyUp(param1);
         }
      }
      
      public function onEnterFrame(param1:Event) : void
      {
         var _loc2_:Number = getTimer() - this.§2!H§;
         this.§2!H§ = getTimer();
         §[!-§.§ set§.update(_loc2_);
         this.§?!@§.dispatchEvent(param1);
         §[!<§.§0u§(§3s§.mouseX,§3s§.mouseY);
         if(§extends§())
         {
            return;
         }
         if(this.updateState(_loc2_) == §<!>§.STATE_STATUS_COMPLETED)
         {
            §extends§();
         }
      }
      
      override public function updateState(param1:Number) : int
      {
         var _loc2_:int = super.updateState(param1);
         if(§%x§().isGenericState())
         {
            if(_loc2_ == §<!>§.STATE_STATUS_COMPLETED)
            {
               §3s§.addChild(§[!<§.activate());
               this.setFirstGameState();
            }
         }
         return _loc2_;
      }
      
      override protected function previousStateDeactivate() : void
      {
         §[!-§.§ set§.§,@§();
      }
      
      public function setFirstGameState() : void
      {
         §%`§(§9!B§.§4!C§);
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
         this.§?!@§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         this.§?!@§.removeEventListener(param1,param2,param3);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return false;
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§?!@§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§?!@§.willTrigger(param1);
      }
   }
}
