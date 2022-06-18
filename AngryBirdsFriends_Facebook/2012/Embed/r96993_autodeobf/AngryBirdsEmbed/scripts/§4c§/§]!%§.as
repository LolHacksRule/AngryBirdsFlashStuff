package §4c§
{
   import §#=§.§<!C§;
   import §'N§.§^]§;
   import §3v§.§1a§;
   import §3v§.§5G§;
   import §6[§.§;q§;
   import §[A§.§3!'§;
   import §[A§.§8!B§;
   import §[A§.§=l§;
   import §[A§.§>!6§;
   import §^s§.§?O§;
   import §`Z§.SWFWheel;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.utils.getTimer;
   
   public class §]!%§ extends §8!B§ implements IEventDispatcher
   {
      
      public static var §=z§:Number;
      
      public static var §`s§:Number;
       
      
      public var §"r§:Number;
      
      private var §4]§:EventDispatcher;
      
      public function §]!%§(param1:§,!§, param2:DisplayObjectContainer, param3:XML, param4:XML)
      {
         var canvas:§,!§ = param1;
         var loadingScreen:DisplayObjectContainer = param2;
         var uiData:XML = param3;
         var assetData:XML = param4;
         this.§4]§ = new EventDispatcher();
         super(canvas);
         if(§'!5§.stage)
         {
            this.init(loadingScreen,uiData,assetData);
         }
         else
         {
            §'!5§.addEventListener(Event.ADDED_TO_STAGE,function(param1:Event):void
            {
               §'!5§.removeEventListener(Event.ADDED_TO_STAGE,arguments.callee);
               init(loadingScreen,uiData,assetData);
            });
         }
      }
      
      protected function initSoundEngine() : void
      {
         §^]§.init();
      }
      
      protected function init(param1:DisplayObjectContainer, param2:XML, param3:XML) : void
      {
         SWFWheel.initialize(stage);
         SWFWheel.§!U§ = true;
         §1a§.§3+§(this.getVersionInfo());
         §3!'§.§;!C§ = §'!5§.stage.loaderInfo.parameters;
         this.initSoundEngine();
         §&n§(new §=l§());
         var _loc4_:§>!6§ = this.initStateLoad();
         §&n§(_loc4_);
         _loc4_.setLoadingScreen(param1);
         _loc4_.§,q§(param3);
         §?O§.init(param2);
         if(§<!C§.§2l§())
         {
            §<!C§.§+%§("serverConnectionError");
         }
         §2O§(§>!6§.§9"§);
         this.§`e§();
      }
      
      protected function initStateLoad() : §>!6§
      {
         return new §>!6§(true,§>!6§.§9"§,this.getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      public function §`e§() : void
      {
         §'!5§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         §'!5§.stage.addEventListener(Event.MOUSE_LEAVE,this.mouseLeave);
         §'!5§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.keyDown);
         §'!5§.stage.addEventListener(KeyboardEvent.KEY_UP,this.keyUp);
         this.§"r§ = getTimer();
      }
      
      public function mouseLeave(param1:Event) : void
      {
         if(§%5§())
         {
            §%5§().mouseLeave();
         }
      }
      
      public function keyDown(param1:KeyboardEvent) : void
      {
         if(§%5§())
         {
            §%5§().keyDown(param1);
         }
         §1a§.keyDown(param1);
      }
      
      public function keyUp(param1:KeyboardEvent) : void
      {
         if(§%5§())
         {
            §%5§().keyUp(param1);
         }
      }
      
      public function onEnterFrame(param1:Event) : void
      {
         var _loc2_:Number = getTimer() - this.§"r§;
         this.§"r§ = getTimer();
         §;q§.§9r§.update(_loc2_);
         this.§4]§.dispatchEvent(param1);
         §5G§.§"P§(§'!5§.mouseX,§'!5§.mouseY);
         if(§4!7§())
         {
            return;
         }
         if(this.updateState(_loc2_) == §3!'§.STATE_STATUS_COMPLETED)
         {
            §4!7§();
         }
      }
      
      override public function updateState(param1:Number) : int
      {
         var _loc2_:int = super.updateState(param1);
         if(§%5§().isGenericState())
         {
            if(_loc2_ == §3!'§.STATE_STATUS_COMPLETED)
            {
               §'!5§.addChild(§5G§.activate());
               this.setFirstGameState();
            }
         }
         return _loc2_;
      }
      
      override protected function previousStateDeactivate() : void
      {
         §;q§.§9r§.§<!'§();
      }
      
      public function setFirstGameState() : void
      {
         §2O§(§=l§.§9"§);
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
         this.§4]§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         this.§4]§.removeEventListener(param1,param2,param3);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return false;
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§4]§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§4]§.willTrigger(param1);
      }
   }
}
