package §<!7§
{
   import §"!&§.§%!>§;
   import §'X§.§%y§;
   import §'X§.§8s§;
   import §'X§.§9[§;
   import §'X§.§@P§;
   import §-i§.SWFWheel;
   import §0!<§.§#y§;
   import §0!<§.§%r§;
   import §1;§.§0!&§;
   import §?!?§.§3!E§;
   import §[H§.§7P§;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.utils.getTimer;
   
   public class §5i§ extends §%y§ implements IEventDispatcher
   {
      
      public static var §,B§:Number;
      
      public static var §"D§:Number;
       
      
      public var §1!G§:Number;
      
      private var §`F§:EventDispatcher;
      
      public function §5i§(param1:§2+§, param2:DisplayObjectContainer, param3:XML, param4:XML)
      {
         var canvas:§2+§ = param1;
         var loadingScreen:DisplayObjectContainer = param2;
         var uiData:XML = param3;
         var assetData:XML = param4;
         this.§`F§ = new EventDispatcher();
         super(canvas);
         if(§<P§.stage)
         {
            this.init(loadingScreen,uiData,assetData);
         }
         else
         {
            §<P§.addEventListener(Event.ADDED_TO_STAGE,function(param1:Event):void
            {
               §<P§.removeEventListener(Event.ADDED_TO_STAGE,arguments.callee);
               init(loadingScreen,uiData,assetData);
            });
         }
      }
      
      protected function initSoundEngine() : void
      {
         §3!E§.init();
      }
      
      protected function init(param1:DisplayObjectContainer, param2:XML, param3:XML) : void
      {
         SWFWheel.initialize(stage);
         SWFWheel.§7n§ = true;
         §#y§.§=h§(this.getVersionInfo());
         §9[§.§=l§ = §<P§.stage.loaderInfo.parameters;
         this.initSoundEngine();
         §0!5§(new §@P§());
         var _loc4_:§8s§ = this.initStateLoad();
         §0!5§(_loc4_);
         _loc4_.setLoadingScreen(param1);
         _loc4_.§@c§(param3);
         §0!&§.init(param2);
         if(§7P§.§]F§())
         {
            §7P§.§?!4§("serverConnectionError");
         }
         §,t§(§8s§.§0!7§);
         this.§6D§();
      }
      
      protected function initStateLoad() : §8s§
      {
         return new §8s§(true,§8s§.§0!7§,this.getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      public function §6D§() : void
      {
         §<P§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         §<P§.stage.addEventListener(Event.MOUSE_LEAVE,this.mouseLeave);
         §<P§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.keyDown);
         §<P§.stage.addEventListener(KeyboardEvent.KEY_UP,this.keyUp);
         this.§1!G§ = getTimer();
      }
      
      public function mouseLeave(param1:Event) : void
      {
         if(§0!H§())
         {
            §0!H§().mouseLeave();
         }
      }
      
      public function keyDown(param1:KeyboardEvent) : void
      {
         if(§0!H§())
         {
            §0!H§().keyDown(param1);
         }
         §#y§.keyDown(param1);
      }
      
      public function keyUp(param1:KeyboardEvent) : void
      {
         if(§0!H§())
         {
            §0!H§().keyUp(param1);
         }
      }
      
      public function onEnterFrame(param1:Event) : void
      {
         var _loc2_:Number = getTimer() - this.§1!G§;
         this.§1!G§ = getTimer();
         §%!>§.§-]§.update(_loc2_);
         this.§`F§.dispatchEvent(param1);
         §%r§.§06§(§<P§.mouseX,§<P§.mouseY);
         if(§`!9§())
         {
            return;
         }
         if(this.updateState(_loc2_) == §9[§.STATE_STATUS_COMPLETED)
         {
            §`!9§();
         }
      }
      
      override public function updateState(param1:Number) : int
      {
         var _loc2_:int = super.updateState(param1);
         if(§0!H§().isGenericState())
         {
            if(_loc2_ == §9[§.STATE_STATUS_COMPLETED)
            {
               §<P§.addChild(§%r§.activate());
               this.setFirstGameState();
            }
         }
         return _loc2_;
      }
      
      override protected function previousStateDeactivate() : void
      {
         §%!>§.§-]§.§-5§();
      }
      
      public function setFirstGameState() : void
      {
         §,t§(§@P§.§0!7§);
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
         this.§`F§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         this.§`F§.removeEventListener(param1,param2,param3);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return false;
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§`F§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§`F§.willTrigger(param1);
      }
   }
}
