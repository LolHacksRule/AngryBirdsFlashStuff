package §"! §
{
   import §#!0§.§#-§;
   import §3!O§.§ !2§;
   import §3!O§.§5q§;
   import §4M§.;
   import §;!!§.§"Q§;
   import §;!!§.§+t§;
   import §;!!§.§0H§;
   import §;!!§.§4!;§;
   import §<@§.§^m§;
   import §]$§.§5^§;
   import §^!"§.SWFWheel;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.utils.getTimer;
   
   public class §<B§ extends §"Q§ implements IEventDispatcher
   {
      
      public static var §0o§:Number;
      
      public static var §<v§:Number;
       
      
      public var §`%§:Number;
      
      private var §7e§:EventDispatcher;
      
      public function §<B§(param1:§6<§, param2:DisplayObjectContainer, param3:XML, param4:XML)
      {
         var canvas:§6<§ = param1;
         var loadingScreen:DisplayObjectContainer = param2;
         var uiData:XML = param3;
         var assetData:XML = param4;
         this.§7e§ = new EventDispatcher();
         super(canvas);
         if(§`r§.stage)
         {
            this.init(loadingScreen,uiData,assetData);
         }
         else
         {
            §`r§.addEventListener(Event.ADDED_TO_STAGE,function(param1:Event):void
            {
               §`r§.removeEventListener(Event.ADDED_TO_STAGE,arguments.callee);
               init(loadingScreen,uiData,assetData);
            });
         }
      }
      
      protected function initSoundEngine() : void
      {
         §#-§.init();
      }
      
      protected function init(param1:DisplayObjectContainer, param2:XML, param3:XML) : void
      {
         SWFWheel.initialize(stage);
         SWFWheel.§'u§ = false;
         §5q§.§`w§(this.getVersionInfo());
         §5q§.§7Z§ = this.getVersionInfo();
         §0H§.§13§ = §`r§.stage.loaderInfo.parameters;
         this.initSoundEngine();
         §1!O§(new §4!;§());
         var _loc4_:§+t§ = this.initStateLoad();
         §1!O§(_loc4_);
         _loc4_.setLoadingScreen(param1);
         _loc4_.§9c§(param3);
         §#4§.init(param2);
         if(§^m§.§!!B§())
         {
            §^m§.§,_§("serverConnectionError");
         }
         §"x§(§+t§.§2`§);
         this.§-t§();
      }
      
      protected function initStateLoad() : §+t§
      {
         return new §+t§(true,§+t§.§2`§,this.getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      public function §-t§() : void
      {
         §`r§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         §`r§.stage.addEventListener(Event.MOUSE_LEAVE,this.mouseLeave);
         §`r§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.keyDown);
         §`r§.stage.addEventListener(KeyboardEvent.KEY_UP,this.keyUp);
         this.§`%§ = getTimer();
      }
      
      public function mouseLeave(param1:Event) : void
      {
         if(§-!>§())
         {
            §-!>§().mouseLeave();
         }
      }
      
      public function keyDown(param1:KeyboardEvent) : void
      {
         if(§-!>§())
         {
            §-!>§().keyDown(param1);
         }
         §5q§.keyDown(param1);
      }
      
      public function keyUp(param1:KeyboardEvent) : void
      {
         if(§-!>§())
         {
            §-!>§().keyUp(param1);
         }
      }
      
      public function onEnterFrame(param1:Event) : void
      {
         var _loc2_:Number = getTimer() - this.§`%§;
         this.§`%§ = getTimer();
         §5^§.§<"§.update(_loc2_);
         this.§7e§.dispatchEvent(param1);
         § !2§.§9#§(§`r§.mouseX,§`r§.mouseY);
         if(§84§())
         {
            return;
         }
         if(this.updateState(_loc2_) == §0H§.STATE_STATUS_COMPLETED)
         {
            §84§();
         }
      }
      
      override public function updateState(param1:Number) : int
      {
         var _loc2_:int = super.updateState(param1);
         if(§-!>§().isGenericState())
         {
            if(_loc2_ == §0H§.STATE_STATUS_COMPLETED)
            {
               §`r§.addChild(§ !2§.activate());
               this.setFirstGameState();
            }
         }
         return _loc2_;
      }
      
      override protected function previousStateDeactivate() : void
      {
         §5^§.§<"§.§ !0§();
      }
      
      public function setFirstGameState() : void
      {
         §"x§(§4!;§.§2`§);
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
         this.§7e§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         this.§7e§.removeEventListener(param1,param2,param3);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return false;
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§7e§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§7e§.willTrigger(param1);
      }
   }
}
