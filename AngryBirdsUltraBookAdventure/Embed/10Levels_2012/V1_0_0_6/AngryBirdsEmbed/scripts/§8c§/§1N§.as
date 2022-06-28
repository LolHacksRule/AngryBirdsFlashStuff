package §8c§
{
   import §#h§.§ !H§;
   import §0w§.§06§;
   import §5m§.§2!&§;
   import §6H§.§5S§;
   import §6H§.§>3§;
   import §6H§.§?i§;
   import §6H§.§`h§;
   import §8!E§.SWFWheel;
   import §>K§.§7R§;
   import §>K§.§9X§;
   import §?!+§.§,!G§;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.utils.getTimer;
   
   public class §1N§ extends §5S§ implements IEventDispatcher
   {
      
      public static var §1§:Number;
      
      public static var §2Q§:Number;
       
      
      public var §8!-§:Number;
      
      private var §5!#§:EventDispatcher;
      
      public function §1N§(param1:§ p§, param2:DisplayObjectContainer, param3:XML, param4:XML)
      {
         var canvas:§ p§ = param1;
         var loadingScreen:DisplayObjectContainer = param2;
         var uiData:XML = param3;
         var assetData:XML = param4;
         this.§5!#§ = new EventDispatcher();
         super(canvas);
         if(§6#§.stage)
         {
            this.init(loadingScreen,uiData,assetData);
         }
         else
         {
            §6#§.addEventListener(Event.ADDED_TO_STAGE,function(param1:Event):void
            {
               §6#§.removeEventListener(Event.ADDED_TO_STAGE,arguments.callee);
               init(loadingScreen,uiData,assetData);
            });
         }
      }
      
      protected function initSoundEngine() : void
      {
         § !H§.init();
      }
      
      protected function init(param1:DisplayObjectContainer, param2:XML, param3:XML) : void
      {
         SWFWheel.initialize(stage);
         SWFWheel.§=g§ = false;
         §9X§.§8y§(this.getVersionInfo());
         §>3§.§,n§ = §6#§.stage.loaderInfo.parameters;
         this.initSoundEngine();
         §5!%§(new §`h§());
         var _loc4_:§?i§ = this.initStateLoad();
         §5!%§(_loc4_);
         _loc4_.setLoadingScreen(param1);
         _loc4_.§`8§(param3);
         §06§.init(param2);
         if(§2!&§.§^U§())
         {
            §2!&§.§]K§("serverConnectionError");
         }
         each(§?i§.§-!A§);
         this.§#%§();
      }
      
      protected function initStateLoad() : §?i§
      {
         return new §?i§(true,§?i§.§-!A§,this.getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      public function §#%§() : void
      {
         §6#§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         §6#§.stage.addEventListener(Event.MOUSE_LEAVE,this.mouseLeave);
         §6#§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.keyDown);
         §6#§.stage.addEventListener(KeyboardEvent.KEY_UP,this.keyUp);
         this.§8!-§ = getTimer();
      }
      
      public function mouseLeave(param1:Event) : void
      {
         if(§>A§())
         {
            §>A§().mouseLeave();
         }
      }
      
      public function keyDown(param1:KeyboardEvent) : void
      {
         if(§>A§())
         {
            §>A§().keyDown(param1);
         }
         §9X§.keyDown(param1);
      }
      
      public function keyUp(param1:KeyboardEvent) : void
      {
         if(§>A§())
         {
            §>A§().keyUp(param1);
         }
      }
      
      public function onEnterFrame(param1:Event) : void
      {
         var _loc2_:Number = getTimer() - this.§8!-§;
         this.§8!-§ = getTimer();
         §,!G§.§@j§.update(_loc2_);
         this.§5!#§.dispatchEvent(param1);
         §7R§.§]E§(§6#§.mouseX,§6#§.mouseY);
         if(§0$§())
         {
            return;
         }
         if(this.updateState(_loc2_) == §>3§.STATE_STATUS_COMPLETED)
         {
            §0$§();
         }
      }
      
      override public function updateState(param1:Number) : int
      {
         var _loc2_:int = super.updateState(param1);
         if(§>A§().isGenericState())
         {
            if(_loc2_ == §>3§.STATE_STATUS_COMPLETED)
            {
               §6#§.addChild(§7R§.activate());
               this.setFirstGameState();
            }
         }
         return _loc2_;
      }
      
      override protected function previousStateDeactivate() : void
      {
         §,!G§.§@j§.§3u§();
      }
      
      public function setFirstGameState() : void
      {
         each(§`h§.§-!A§);
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
         this.§5!#§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         this.§5!#§.removeEventListener(param1,param2,param3);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return false;
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§5!#§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§5!#§.willTrigger(param1);
      }
   }
}
