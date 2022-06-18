package §4y§
{
   import § if§.§&$§;
   import § if§.§2q§;
   import § if§.§^!1§;
   import § if§.§if §;
   import §"!K§.§while§;
   import §8T§.§@o§;
   import §=2§.§6z§;
   import §>L§.SWFWheel;
   import §?!8§.§2>§;
   import §?!8§.§7X§;
   import §@q§.§6;§;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.utils.getTimer;
   
   public class §9%§ extends §&$§ implements IEventDispatcher
   {
      
      public static var §3k§:Number;
      
      public static var §6S§:Number;
       
      
      public var §default§:Number;
      
      private var §+y§:EventDispatcher;
      
      public function §9%§(param1:§"s§, param2:DisplayObjectContainer, param3:XML, param4:XML)
      {
         var canvas:§"s§ = param1;
         var loadingScreen:DisplayObjectContainer = param2;
         var uiData:XML = param3;
         var assetData:XML = param4;
         this.§+y§ = new EventDispatcher();
         super(canvas);
         if(§3v§.stage)
         {
            this.init(loadingScreen,uiData,assetData);
         }
         else
         {
            §3v§.addEventListener(Event.ADDED_TO_STAGE,function(param1:Event):void
            {
               §3v§.removeEventListener(Event.ADDED_TO_STAGE,arguments.callee);
               init(loadingScreen,uiData,assetData);
            });
         }
      }
      
      protected function initSoundEngine() : void
      {
         §@o§.init();
      }
      
      protected function init(param1:DisplayObjectContainer, param2:XML, param3:XML) : void
      {
         SWFWheel.initialize(stage);
         SWFWheel.§-!E§ = false;
         §2>§.§>]§(this.getVersionInfo());
         §2>§.§"2§ = this.getVersionInfo();
         §2q§.§false§ = §3v§.stage.loaderInfo.parameters;
         this.initSoundEngine();
         §01§(new §if §());
         var _loc4_:§^!1§ = this.initStateLoad();
         §01§(_loc4_);
         _loc4_.setLoadingScreen(param1);
         _loc4_.§4t§(param3);
         §while§.init(param2);
         if(§6z§.§>8§())
         {
            §6z§.§2d§("serverConnectionError");
         }
         §`m§(§^!1§.§&! §);
         this.§6u§();
      }
      
      protected function initStateLoad() : §^!1§
      {
         return new §^!1§(true,§^!1§.§&! §,this.getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      public function §6u§() : void
      {
         §3v§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         §3v§.stage.addEventListener(Event.MOUSE_LEAVE,this.mouseLeave);
         §3v§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.keyDown);
         §3v§.stage.addEventListener(KeyboardEvent.KEY_UP,this.keyUp);
         this.§default§ = getTimer();
      }
      
      public function mouseLeave(param1:Event) : void
      {
         if(§?I§())
         {
            §?I§().mouseLeave();
         }
      }
      
      public function keyDown(param1:KeyboardEvent) : void
      {
         if(§?I§())
         {
            §?I§().keyDown(param1);
         }
         §2>§.keyDown(param1);
      }
      
      public function keyUp(param1:KeyboardEvent) : void
      {
         if(§?I§())
         {
            §?I§().keyUp(param1);
         }
      }
      
      public function onEnterFrame(param1:Event) : void
      {
         var _loc2_:Number = getTimer() - this.§default§;
         this.§default§ = getTimer();
         §6;§.§&e§.update(_loc2_);
         this.§+y§.dispatchEvent(param1);
         §7X§.§+d§(§3v§.mouseX,§3v§.mouseY);
         if(§>K§())
         {
            return;
         }
         if(this.updateState(_loc2_) == §2q§.STATE_STATUS_COMPLETED)
         {
            §>K§();
         }
      }
      
      override public function updateState(param1:Number) : int
      {
         var _loc2_:int = super.updateState(param1);
         if(§?I§().isGenericState())
         {
            if(_loc2_ == §2q§.STATE_STATUS_COMPLETED)
            {
               §3v§.addChild(§7X§.activate());
               this.setFirstGameState();
            }
         }
         return _loc2_;
      }
      
      override protected function previousStateDeactivate() : void
      {
         §6;§.§&e§.§2#§();
      }
      
      public function setFirstGameState() : void
      {
         §`m§(§if §.§&! §);
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
         this.§+y§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         this.§+y§.removeEventListener(param1,param2,param3);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return false;
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§+y§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§+y§.willTrigger(param1);
      }
   }
}
