package §#'§
{
   import §"!&§.§#!,§;
   import §"!&§.§#p§;
   import §"!&§.§7§;
   import §"!&§.§=F§;
   import §#M§.SWFWheel;
   import §+!"§.§5!<§;
   import §+!"§.§@P§;
   import §+?§.§03§;
   import §<!G§.§!I§;
   import §@D§.§6I§;
   import §`F§.§,B§;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.utils.getTimer;
   
   public class §0X§ extends §7§ implements IEventDispatcher
   {
      
      public static var §>p§:Number;
      
      public static var §76§:Number;
       
      
      public var § C§:Number;
      
      private var §[#§:EventDispatcher;
      
      public function §0X§(param1:§'Q§, param2:DisplayObjectContainer, param3:XML, param4:XML)
      {
         var canvas:§'Q§ = param1;
         var loadingScreen:DisplayObjectContainer = param2;
         var uiData:XML = param3;
         var assetData:XML = param4;
         this.§[#§ = new EventDispatcher();
         super(canvas);
         if(§7P§.stage)
         {
            this.init(loadingScreen,uiData,assetData);
         }
         else
         {
            §7P§.addEventListener(Event.ADDED_TO_STAGE,function(param1:Event):void
            {
               §7P§.removeEventListener(Event.ADDED_TO_STAGE,arguments.callee);
               init(loadingScreen,uiData,assetData);
            });
         }
      }
      
      protected function initSoundEngine() : void
      {
         §6I§.init();
      }
      
      protected function init(param1:DisplayObjectContainer, param2:XML, param3:XML) : void
      {
         SWFWheel.initialize(stage);
         SWFWheel.§27§ = true;
         §5!<§.§3!9§(this.getVersionInfo());
         §#!,§.§+!!§ = §7P§.stage.loaderInfo.parameters;
         this.initSoundEngine();
         §^'§(new §#p§());
         var _loc4_:§=F§ = this.initStateLoad();
         §^'§(_loc4_);
         _loc4_.setLoadingScreen(param1);
         _loc4_.§&!C§(param3);
         §!I§.init(param2);
         if(§03§.§&;§())
         {
            §03§.§7j§("serverConnectionError");
         }
         §'<§(§=F§.§?x§);
         this.§-d§();
      }
      
      protected function initStateLoad() : §=F§
      {
         return new §=F§(true,§=F§.§?x§,this.getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      public function §-d§() : void
      {
         §7P§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         §7P§.stage.addEventListener(Event.MOUSE_LEAVE,this.mouseLeave);
         §7P§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.keyDown);
         §7P§.stage.addEventListener(KeyboardEvent.KEY_UP,this.keyUp);
         this.§ C§ = getTimer();
      }
      
      public function mouseLeave(param1:Event) : void
      {
         if(§8y§())
         {
            §8y§().mouseLeave();
         }
      }
      
      public function keyDown(param1:KeyboardEvent) : void
      {
         if(§8y§())
         {
            §8y§().keyDown(param1);
         }
         §5!<§.keyDown(param1);
      }
      
      public function keyUp(param1:KeyboardEvent) : void
      {
         if(§8y§())
         {
            §8y§().keyUp(param1);
         }
      }
      
      public function onEnterFrame(param1:Event) : void
      {
         var _loc2_:Number = getTimer() - this.§ C§;
         this.§ C§ = getTimer();
         §,B§.§^n§.update(_loc2_);
         this.§[#§.dispatchEvent(param1);
         §@P§.§`H§(§7P§.mouseX,§7P§.mouseY);
         if(§'K§())
         {
            return;
         }
         if(this.updateState(_loc2_) == §#!,§.STATE_STATUS_COMPLETED)
         {
            §'K§();
         }
      }
      
      override public function updateState(param1:Number) : int
      {
         var _loc2_:int = super.updateState(param1);
         if(§8y§().isGenericState())
         {
            if(_loc2_ == §#!,§.STATE_STATUS_COMPLETED)
            {
               §7P§.addChild(§@P§.activate());
               this.setFirstGameState();
            }
         }
         return _loc2_;
      }
      
      override protected function previousStateDeactivate() : void
      {
         §,B§.§^n§.§-8§();
      }
      
      public function setFirstGameState() : void
      {
         §'<§(§#p§.§?x§);
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
         this.§[#§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         this.§[#§.removeEventListener(param1,param2,param3);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return false;
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§[#§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§[#§.willTrigger(param1);
      }
   }
}
