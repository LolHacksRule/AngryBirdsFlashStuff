package §2j§
{
   import §2!O§.§,w§;
   import §2!O§.§-!#§;
   import §2!O§.§2!x§;
   import §2!O§.§<"3§;
   import §45§.§@"'§;
   import §;"$§.§8!O§;
   import §;X§.§ "2§;
   import §;X§.§ do§;
   import §?!k§.§0!t§;
   import §?h§.§%!Z§;
   import §@!9§.§0!?§;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.utils.getTimer;
   
   public class §2B§ extends §2!x§ implements IEventDispatcher
   {
      
      public static var §+!s§:Number;
      
      public static var §%!g§:Number;
       
      
      public var §3!+§:Number;
      
      private var §2"'§:EventDispatcher;
      
      public function §2B§(param1:§ +§, param2:DisplayObjectContainer, param3:XML, param4:XML)
      {
         var canvas:§ +§ = param1;
         var loadingScreen:DisplayObjectContainer = param2;
         var uiData:XML = param3;
         var assetData:XML = param4;
         this.§2"'§ = new EventDispatcher();
         super(canvas);
         if(§+q§.stage)
         {
            this.init(loadingScreen,uiData,assetData);
         }
         else
         {
            §+q§.addEventListener(Event.ADDED_TO_STAGE,function(param1:Event):void
            {
               §+q§.removeEventListener(Event.ADDED_TO_STAGE,arguments.callee);
               init(loadingScreen,uiData,assetData);
            });
         }
      }
      
      protected function §`v§() : void
      {
         §0!t§.init();
      }
      
      protected function init(param1:DisplayObjectContainer, param2:XML, param3:XML) : void
      {
         §0!?§.initialize(stage);
         §0!?§.§2!!§ = false;
         § do§.§0X§(this.getVersionInfo());
         § do§.§^!H§ = this.getVersionInfo();
         §,w§.§`!+§ = §+q§.stage.loaderInfo.parameters;
         this.§`v§();
         §6w§(new §<"3§());
         var _loc4_:§-!#§ = this.initStateLoad();
         §6w§(_loc4_);
         _loc4_.§[!Y§(param1);
         _loc4_.§?!-§(param3);
         §8!O§.init(param2);
         if(§@"'§.§,d§())
         {
            §@"'§.§1!N§("serverConnectionError");
         }
         §2!]§(§-!#§.§^z§);
         this.§!!s§();
      }
      
      protected function initStateLoad() : §-!#§
      {
         return new §-!#§(true,§-!#§.§^z§,this.getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      public function §!!s§() : void
      {
         §+q§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         §+q§.stage.addEventListener(Event.MOUSE_LEAVE,this.mouseLeave);
         §+q§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.keyDown);
         §+q§.stage.addEventListener(KeyboardEvent.KEY_UP,this.keyUp);
         this.§3!+§ = getTimer();
      }
      
      public function mouseLeave(param1:Event) : void
      {
         if(§1w§())
         {
            §1w§().mouseLeave();
         }
      }
      
      public function keyDown(param1:KeyboardEvent) : void
      {
         if(§1w§())
         {
            §1w§().keyDown(param1);
         }
         § do§.keyDown(param1);
      }
      
      public function keyUp(param1:KeyboardEvent) : void
      {
         if(§1w§())
         {
            §1w§().keyUp(param1);
         }
      }
      
      public function onEnterFrame(param1:Event) : void
      {
         var _loc2_:Number = getTimer() - this.§3!+§;
         this.§3!+§ = getTimer();
         §%!Z§.§if §.update(_loc2_);
         this.§2"'§.dispatchEvent(param1);
         § "2§.§=!X§(§+q§.mouseX,§+q§.mouseY);
         if(§]"'§())
         {
            return;
         }
         if(this.updateState(_loc2_) == §,w§.STATE_STATUS_COMPLETED)
         {
            §]"'§();
         }
      }
      
      override public function updateState(param1:Number) : int
      {
         var _loc2_:int = super.updateState(param1);
         if(§1w§().isGenericState())
         {
            if(_loc2_ == §,w§.STATE_STATUS_COMPLETED)
            {
               §+q§.addChild(§ "2§.activate());
               this.setFirstGameState();
            }
         }
         return _loc2_;
      }
      
      override protected function previousStateDeactivate() : void
      {
         §%!Z§.§if §.§'2§();
      }
      
      public function setFirstGameState() : void
      {
         §2!]§(§<"3§.§^z§);
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
         this.§2"'§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         this.§2"'§.removeEventListener(param1,param2,param3);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return false;
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§2"'§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§2"'§.willTrigger(param1);
      }
   }
}
