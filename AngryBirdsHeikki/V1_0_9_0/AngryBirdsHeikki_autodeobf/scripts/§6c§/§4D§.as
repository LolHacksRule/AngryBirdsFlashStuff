package §6c§
{
   import §#Q§.§8#§;
   import §%i§.§#`§;
   import §&!6§.§!!T§;
   import §&!6§.§%8§;
   import §&!6§.§5r§;
   import §&!6§.§@D§;
   import §0i§.§8!b§;
   import §0i§.§]_§;
   import §6j§.§<%§;
   import §8!-§.§2!B§;
   import §9!D§.§&!d§;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.utils.getTimer;
   
   public class §4D§ extends §!!T§ implements IEventDispatcher
   {
      
      public static var § !7§:Number;
      
      public static var §=!R§:Number;
       
      
      public var §6!J§:Number;
      
      private var §66§:EventDispatcher;
      
      public function §4D§(param1:§=!Y§, param2:DisplayObjectContainer, param3:XML, param4:XML)
      {
         var canvas:§=!Y§ = param1;
         var loadingScreen:DisplayObjectContainer = param2;
         var uiData:XML = param3;
         var assetData:XML = param4;
         this.§66§ = new EventDispatcher();
         super(canvas);
         if(§`!]§.stage)
         {
            this.init(loadingScreen,uiData,assetData);
         }
         else
         {
            §`!]§.addEventListener(Event.ADDED_TO_STAGE,function(param1:Event):void
            {
               §`!]§.removeEventListener(Event.ADDED_TO_STAGE,arguments.callee);
               init(loadingScreen,uiData,assetData);
            });
         }
      }
      
      protected function §'@§() : void
      {
         §#`§.init();
      }
      
      protected function init(param1:DisplayObjectContainer, param2:XML, param3:XML) : void
      {
         §<%§.initialize(stage);
         §<%§.§'!,§ = false;
         §]_§.§"I§(this.getVersionInfo());
         §]_§.§-"§ = this.getVersionInfo();
         §5r§.§,K§ = §`!]§.stage.loaderInfo.parameters;
         this.§'@§();
         §#!O§(new §@D§());
         var _loc4_:§%8§ = this.initStateLoad();
         §#!O§(_loc4_);
         _loc4_.§!!3§(param1);
         _loc4_.§1!U§(param3);
         §8#§.init(param2);
         if(§&!d§.§@!N§())
         {
            §&!d§.§get §("serverConnectionError");
         }
         §<'§(§%8§.§94§);
         this.§[m§();
      }
      
      protected function initStateLoad() : §%8§
      {
         return new §%8§(true,§%8§.§94§,this.getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      public function §[m§() : void
      {
         §`!]§.addEventListener(Event.ENTER_FRAME,this.§-!e§);
         §`!]§.stage.addEventListener(Event.MOUSE_LEAVE,this.mouseLeave);
         §`!]§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.keyDown);
         §`!]§.stage.addEventListener(KeyboardEvent.KEY_UP,this.keyUp);
         this.§6!J§ = getTimer();
      }
      
      public function mouseLeave(param1:Event) : void
      {
         if(§,!;§())
         {
            §,!;§().mouseLeave();
         }
      }
      
      public function keyDown(param1:KeyboardEvent) : void
      {
         if(§,!;§())
         {
            §,!;§().keyDown(param1);
         }
         §]_§.keyDown(param1);
      }
      
      public function keyUp(param1:KeyboardEvent) : void
      {
         if(§,!;§())
         {
            §,!;§().keyUp(param1);
         }
      }
      
      public function §-!e§(param1:Event) : void
      {
         var _loc2_:Number = getTimer() - this.§6!J§;
         this.§6!J§ = getTimer();
         §2!B§.§,!U§.update(_loc2_);
         this.§66§.dispatchEvent(param1);
         §8!b§.§"!§(§`!]§.mouseX,§`!]§.mouseY);
         if(§8!`§())
         {
            return;
         }
         if(this.updateState(_loc2_) == §5r§.STATE_STATUS_COMPLETED)
         {
            §8!`§();
         }
      }
      
      override public function updateState(param1:Number) : int
      {
         var _loc2_:int = super.updateState(param1);
         if(§,!;§().isGenericState())
         {
            if(_loc2_ == §5r§.STATE_STATUS_COMPLETED)
            {
               §`!]§.addChild(§8!b§.activate());
               this.setFirstGameState();
            }
         }
         return _loc2_;
      }
      
      override protected function previousStateDeactivate() : void
      {
         §2!B§.§,!U§.§=!O§();
      }
      
      public function setFirstGameState() : void
      {
         §<'§(§@D§.§94§);
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
         this.§66§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         this.§66§.removeEventListener(param1,param2,param3);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return false;
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§66§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§66§.willTrigger(param1);
      }
   }
}
