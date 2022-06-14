package §-"6§
{
   import § "C§.§2"=§;
   import §#^§.§ "A§;
   import §0!G§.§#`§;
   import §0!G§.§%"+§;
   import §0!G§.§&"5§;
   import §0!G§.§1-§;
   import §0§.SWFWheel;
   import §6!B§.§>!E§;
   import §6o§.§+!k§;
   import §6o§.§="7§;
   import §8!v§.§>!+§;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.utils.getTimer;
   
   public class §3X§ extends §&"5§ implements IEventDispatcher
   {
      
      public static var §9!"§:Number;
      
      public static var §4t§:Number;
       
      
      public var §>!1§:Number;
      
      private var §`!s§:EventDispatcher;
      
      public function §3X§(param1:§5E§, param2:DisplayObjectContainer, param3:XML, param4:XML)
      {
         var canvas:§5E§ = param1;
         var loadingScreen:DisplayObjectContainer = param2;
         var uiData:XML = param3;
         var assetData:XML = param4;
         this.§`!s§ = new EventDispatcher();
         super(canvas);
         if(§5!X§.stage)
         {
            this.init(loadingScreen,uiData,assetData);
         }
         else
         {
            §5!X§.addEventListener(Event.ADDED_TO_STAGE,function(param1:Event):void
            {
               §5!X§.removeEventListener(Event.ADDED_TO_STAGE,arguments.callee);
               init(loadingScreen,uiData,assetData);
            });
         }
      }
      
      protected function §="-§() : void
      {
         §>!E§.init();
      }
      
      protected function init(param1:DisplayObjectContainer, param2:XML, param3:XML) : void
      {
         SWFWheel.initialize(stage);
         SWFWheel.§9!K§ = false;
         §+!k§.§0!2§(this.getVersionInfo());
         §+!k§.§9>§ = this.getVersionInfo();
         §1-§.§[U§ = §5!X§.stage.loaderInfo.parameters;
         this.§="-§();
         §[3§(new §%"+§());
         var _loc4_:§#`§ = this.initStateLoad();
         §[3§(_loc4_);
         _loc4_.setLoadingScreen(param1);
         _loc4_.§ "-§(param3);
         § "A§.init(param2);
         if(§2"=§.§%"E§())
         {
            §2"=§.§'!x§("serverConnectionError");
         }
         §=!w§(§#`§.STATE_NAME);
         this.§'!1§();
      }
      
      protected function initStateLoad() : §#`§
      {
         return new §#`§(true,§#`§.STATE_NAME,this.getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      public function §'!1§() : void
      {
         §5!X§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         §5!X§.stage.addEventListener(Event.MOUSE_LEAVE,this.mouseLeave);
         §5!X§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.keyDown);
         §5!X§.stage.addEventListener(KeyboardEvent.KEY_UP,this.keyUp);
         this.§>!1§ = getTimer();
      }
      
      public function mouseLeave(param1:Event) : void
      {
         if(§>k§())
         {
            §>k§().mouseLeave();
         }
      }
      
      public function keyDown(param1:KeyboardEvent) : void
      {
         if(§>k§())
         {
            §>k§().keyDown(param1);
         }
         §+!k§.keyDown(param1);
      }
      
      public function keyUp(param1:KeyboardEvent) : void
      {
         if(§>k§())
         {
            §>k§().keyUp(param1);
         }
      }
      
      public function onEnterFrame(param1:Event) : void
      {
         var _loc2_:Number = getTimer() - this.§>!1§;
         this.§>!1§ = getTimer();
         §>!+§.§;"§.update(_loc2_);
         this.§`!s§.dispatchEvent(param1);
         §="7§.§4!O§(§5!X§.mouseX,§5!X§.mouseY);
         if(§[!@§())
         {
            return;
         }
         if(this.updateState(_loc2_) == §1-§.STATE_STATUS_COMPLETED)
         {
            §[!@§();
         }
      }
      
      override public function updateState(param1:Number) : int
      {
         var _loc2_:int = super.updateState(param1);
         if(§>k§().isGenericState())
         {
            if(_loc2_ == §1-§.STATE_STATUS_COMPLETED)
            {
               §5!X§.addChild(§="7§.activate());
               this.setFirstGameState();
            }
         }
         return _loc2_;
      }
      
      override protected function previousStateDeactivate() : void
      {
         §>!+§.§;"§.§&7§();
      }
      
      public function setFirstGameState() : void
      {
         §=!w§(§%"+§.STATE_NAME);
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
         this.§`!s§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         this.§`!s§.removeEventListener(param1,param2,param3);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return false;
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§`!s§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§`!s§.willTrigger(param1);
      }
   }
}
