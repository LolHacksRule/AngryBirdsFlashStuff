package §@!1§
{
   import §'+§.§,K§;
   import §'+§.§1u§;
   import §,!H§.§ for§;
   import §,!H§.§0+§;
   import §,!H§.§6U§;
   import §,!H§.§6Y§;
   import §3D§.§8x§;
   import §4!A§.§7#§;
   import §7p§.§>!m§;
   import §=u§.§-!F§;
   import §[!4§.§-#§;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.utils.getTimer;
   
   public class §#!<§ extends §6Y§ implements IEventDispatcher
   {
      
      public static var §else §:Number;
      
      public static var §%h§:Number;
       
      
      public var §;!I§:Number;
      
      private var §[p§:EventDispatcher;
      
      public function §#!<§(param1:§&!J§, param2:DisplayObjectContainer, param3:XML, param4:XML)
      {
         var canvas:§&!J§ = param1;
         var loadingScreen:DisplayObjectContainer = param2;
         var uiData:XML = param3;
         var assetData:XML = param4;
         this.§[p§ = new EventDispatcher();
         super(canvas);
         if(§5B§.stage)
         {
            this.init(loadingScreen,uiData,assetData);
         }
         else
         {
            §5B§.addEventListener(Event.ADDED_TO_STAGE,function(param1:Event):void
            {
               §5B§.removeEventListener(Event.ADDED_TO_STAGE,arguments.callee);
               init(loadingScreen,uiData,assetData);
            });
         }
      }
      
      protected function §'!%§() : void
      {
         §-#§.init();
      }
      
      protected function init(param1:DisplayObjectContainer, param2:XML, param3:XML) : void
      {
         §8x§.initialize(stage);
         §8x§.§[=§ = false;
         §1u§.§27§(this.getVersionInfo());
         §1u§.§,!#§ = this.getVersionInfo();
         § for§.§;!E§ = §5B§.stage.loaderInfo.parameters;
         this.§'!%§();
         §!!e§(new §6U§());
         var _loc4_:§0+§ = this.initStateLoad();
         §!!e§(_loc4_);
         _loc4_.§8D§(param1);
         _loc4_.§=!T§(param3);
         §>!m§.init(param2);
         if(§-!F§.§`!R§())
         {
            §-!F§.§<!]§("serverConnectionError");
         }
         §^?§(§0+§.§>d§);
         this.§,@§();
      }
      
      protected function initStateLoad() : §0+§
      {
         return new §0+§(true,§0+§.§>d§,this.getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      public function §,@§() : void
      {
         §5B§.addEventListener(Event.ENTER_FRAME,this.§'V§);
         §5B§.stage.addEventListener(Event.MOUSE_LEAVE,this.mouseLeave);
         §5B§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.keyDown);
         §5B§.stage.addEventListener(KeyboardEvent.KEY_UP,this.keyUp);
         this.§;!I§ = getTimer();
      }
      
      public function mouseLeave(param1:Event) : void
      {
         if(§`L§())
         {
            §`L§().mouseLeave();
         }
      }
      
      public function keyDown(param1:KeyboardEvent) : void
      {
         if(§`L§())
         {
            §`L§().keyDown(param1);
         }
         §1u§.keyDown(param1);
      }
      
      public function keyUp(param1:KeyboardEvent) : void
      {
         if(§`L§())
         {
            §`L§().keyUp(param1);
         }
      }
      
      public function §'V§(param1:Event) : void
      {
         var _loc2_:Number = getTimer() - this.§;!I§;
         this.§;!I§ = getTimer();
         §7#§.§5!!§.update(_loc2_);
         this.§[p§.dispatchEvent(param1);
         §,K§.§ !I§(§5B§.mouseX,§5B§.mouseY);
         if(§-!=§())
         {
            return;
         }
         if(this.updateState(_loc2_) == § for§.STATE_STATUS_COMPLETED)
         {
            §-!=§();
         }
      }
      
      override public function updateState(param1:Number) : int
      {
         var _loc2_:int = super.updateState(param1);
         if(§`L§().isGenericState())
         {
            if(_loc2_ == § for§.STATE_STATUS_COMPLETED)
            {
               §5B§.addChild(§,K§.activate());
               this.setFirstGameState();
            }
         }
         return _loc2_;
      }
      
      override protected function previousStateDeactivate() : void
      {
         §7#§.§5!!§.§=!G§();
      }
      
      public function setFirstGameState() : void
      {
         §^?§(§6U§.§>d§);
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
         this.§[p§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         this.§[p§.removeEventListener(param1,param2,param3);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return false;
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§[p§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§[p§.willTrigger(param1);
      }
   }
}
