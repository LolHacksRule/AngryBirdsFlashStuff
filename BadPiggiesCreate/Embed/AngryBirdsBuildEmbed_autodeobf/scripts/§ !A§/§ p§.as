package § !A§
{
   import § !r§.§%s§;
   import § !r§.§`![§;
   import §!y§.§=!Z§;
   import §&!0§.§%!`§;
   import §1?§.§+!§;
   import §9!n§.§@!T§;
   import §=!3§.§;!!§;
   import §=!3§.§;w§;
   import §=!3§.§<!=§;
   import §=!3§.§=!p§;
   import §^!B§.SWFWheel;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.utils.getTimer;
   
   public class § p§ extends §=!p§ implements IEventDispatcher
   {
      
      public static var §,!3§:Number;
      
      public static var §-h§:Number;
       
      
      public var §"4§:Number;
      
      private var §?9§:EventDispatcher;
      
      public function § p§(param1:§"!8§, param2:DisplayObjectContainer, param3:XML, param4:XML)
      {
         var canvas:§"!8§ = param1;
         var loadingScreen:DisplayObjectContainer = param2;
         var uiData:XML = param3;
         var assetData:XML = param4;
         this.§?9§ = new EventDispatcher();
         super(canvas);
         if(§4a§.stage)
         {
            this.init(loadingScreen,uiData,assetData);
         }
         else
         {
            §4a§.addEventListener(Event.ADDED_TO_STAGE,function(param1:Event):void
            {
               §4a§.removeEventListener(Event.ADDED_TO_STAGE,arguments.callee);
               init(loadingScreen,uiData,assetData);
            });
         }
      }
      
      protected function initSoundEngine() : void
      {
         §+!§.init();
      }
      
      protected function init(param1:DisplayObjectContainer, param2:XML, param3:XML) : void
      {
         SWFWheel.initialize(stage);
         SWFWheel.§8!6§ = true;
         §`![§.§!!w§(this.getVersionInfo());
         §;!!§.§[e§ = §4a§.stage.loaderInfo.parameters;
         this.initSoundEngine();
         § Y§(new §;w§());
         var _loc4_:§<!=§ = this.initStateLoad();
         § Y§(_loc4_);
         _loc4_.setLoadingScreen(param1);
         _loc4_.§4f§(param3);
         §=!Z§.init(param2);
         if(§%!`§.§ N§())
         {
            §%!`§.§7!E§("serverConnectionError");
         }
         §8!W§(§<!=§.STATE_NAME);
         this.§3!I§();
      }
      
      protected function initStateLoad() : §<!=§
      {
         return new §<!=§(true,§<!=§.STATE_NAME,this.getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      public function §3!I§() : void
      {
         §4a§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         §4a§.stage.addEventListener(Event.MOUSE_LEAVE,this.mouseLeave);
         §4a§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.keyDown);
         §4a§.stage.addEventListener(KeyboardEvent.KEY_UP,this.keyUp);
         this.§"4§ = getTimer();
      }
      
      public function mouseLeave(param1:Event) : void
      {
         if(§?8§())
         {
            §?8§().mouseLeave();
         }
      }
      
      public function keyDown(param1:KeyboardEvent) : void
      {
         if(§?8§())
         {
            §?8§().keyDown(param1);
         }
         §`![§.keyDown(param1);
      }
      
      public function keyUp(param1:KeyboardEvent) : void
      {
         if(§?8§())
         {
            §?8§().keyUp(param1);
         }
      }
      
      public function onEnterFrame(param1:Event) : void
      {
         var _loc2_:Number = getTimer() - this.§"4§;
         this.§"4§ = getTimer();
         §@!T§.§`!t§.update(_loc2_);
         this.§?9§.dispatchEvent(param1);
         §%s§.§6!!§(§4a§.mouseX,§4a§.mouseY);
         if(§0!v§())
         {
            return;
         }
         if(this.updateState(_loc2_) == §;!!§.STATE_STATUS_COMPLETED)
         {
            §0!v§();
         }
      }
      
      override public function updateState(param1:Number) : int
      {
         var _loc2_:int = super.updateState(param1);
         if(§?8§().isGenericState())
         {
            if(_loc2_ == §;!!§.STATE_STATUS_COMPLETED)
            {
               §4a§.addChild(§%s§.activate());
               this.setFirstGameState();
            }
         }
         return _loc2_;
      }
      
      override protected function previousStateDeactivate() : void
      {
         §@!T§.§`!t§.§%!4§();
      }
      
      public function setFirstGameState() : void
      {
         §8!W§(§;w§.STATE_NAME);
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
         this.§?9§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         this.§?9§.removeEventListener(param1,param2,param3);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return false;
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§?9§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§?9§.willTrigger(param1);
      }
   }
}
