package §8!9§
{
   import §"!&§.§%!>§;
   import §0!§.§"!,§;
   import §0!§.§'X§;
   import §0!§.§0!5§;
   import §0!§.§while§;
   import §1;§.§0!&§;
   import §2!<§.§?!?§;
   import §2§.§0!<§;
   import §2§.§=h§;
   import §>x§.SWFWheel;
   import §[H§.§7P§;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.utils.getTimer;
   
   public class §2+§ extends §'X§ implements IEventDispatcher
   {
      
      public static var §6D§:Number;
      
      public static var §,B§:Number;
       
      
      public var §5i§:Number;
      
      private var §`F§:EventDispatcher;
      
      public function §2+§(param1:§<!7§, param2:DisplayObjectContainer, param3:XML, param4:XML)
      {
         var canvas:§<!7§ = param1;
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
         §?!?§.init();
      }
      
      protected function init(param1:DisplayObjectContainer, param2:XML, param3:XML) : void
      {
         SWFWheel.initialize(stage);
         SWFWheel.§ A§ = true;
         §0!<§.§"3§(this.getVersionInfo());
         §0!5§.§ !+§ = §<P§.stage.loaderInfo.parameters;
         this.initSoundEngine();
         §7!&§(new §"!,§());
         var _loc4_:§while§ = this.initStateLoad();
         §7!&§(_loc4_);
         _loc4_.setLoadingScreen(param1);
         _loc4_.§#!@§(param3);
         §0!&§.init(param2);
         if(§7P§.§]F§())
         {
            §7P§.§?!4§("serverConnectionError");
         }
         §3S§(§while§.§0!7§);
         this.§1!G§();
      }
      
      protected function initStateLoad() : §while§
      {
         return new §while§(true,§while§.§0!7§,this.getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      public function §1!G§() : void
      {
         §<P§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         §<P§.stage.addEventListener(Event.MOUSE_LEAVE,this.mouseLeave);
         §<P§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.keyDown);
         §<P§.stage.addEventListener(KeyboardEvent.KEY_UP,this.keyUp);
         this.§5i§ = getTimer();
      }
      
      public function mouseLeave(param1:Event) : void
      {
         if(§@!;§())
         {
            §@!;§().mouseLeave();
         }
      }
      
      public function keyDown(param1:KeyboardEvent) : void
      {
         if(§@!;§())
         {
            §@!;§().keyDown(param1);
         }
         §0!<§.keyDown(param1);
      }
      
      public function keyUp(param1:KeyboardEvent) : void
      {
         if(§@!;§())
         {
            §@!;§().keyUp(param1);
         }
      }
      
      public function onEnterFrame(param1:Event) : void
      {
         var _loc2_:Number = getTimer() - this.§5i§;
         this.§5i§ = getTimer();
         §%!>§.§-]§.update(_loc2_);
         this.§`F§.dispatchEvent(param1);
         §=h§.§1b§(§<P§.mouseX,§<P§.mouseY);
         if(§^,§())
         {
            return;
         }
         if(this.updateState(_loc2_) == §0!5§.STATE_STATUS_COMPLETED)
         {
            §^,§();
         }
      }
      
      override public function updateState(param1:Number) : int
      {
         var _loc2_:int = super.updateState(param1);
         if(§@!;§().isGenericState())
         {
            if(_loc2_ == §0!5§.STATE_STATUS_COMPLETED)
            {
               §<P§.addChild(§=h§.activate());
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
         §3S§(§"!,§.§0!7§);
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
