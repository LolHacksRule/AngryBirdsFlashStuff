package §9L§
{
   import §&!9§.§ T§;
   import §-!"§.§=p§;
   import §-!"§.§>!W§;
   import §-!"§.§[u§;
   import §-!"§.§]7§;
   import §5!1§.§"!X§;
   import §<u§.§;A§;
   import §@R§.§!!%§;
   import §@R§.§4,§;
   import §^!0§.§&M§;
   import §^V§.§4!H§;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.utils.getTimer;
   
   public class §]o§ extends §]7§ implements IEventDispatcher
   {
      
      public static var § f§:Number;
      
      public static var §=8§:Number;
       
      
      public var §#!>§:Number;
      
      private var §'l§:EventDispatcher;
      
      public function §]o§(param1:§^D§, param2:DisplayObjectContainer, param3:XML, param4:XML)
      {
         var canvas:§^D§ = param1;
         var loadingScreen:DisplayObjectContainer = param2;
         var uiData:XML = param3;
         var assetData:XML = param4;
         this.§'l§ = new EventDispatcher();
         super(canvas);
         if(§=Z§.stage)
         {
            this.init(loadingScreen,uiData,assetData);
         }
         else
         {
            §=Z§.addEventListener(Event.ADDED_TO_STAGE,function(param1:Event):void
            {
               §=Z§.removeEventListener(Event.ADDED_TO_STAGE,arguments.callee);
               init(loadingScreen,uiData,assetData);
            });
         }
      }
      
      protected function § S§() : void
      {
         §&M§.init();
      }
      
      protected function init(param1:DisplayObjectContainer, param2:XML, param3:XML) : void
      {
         § T§.initialize(stage);
         § T§.§7!#§ = false;
         §4,§.§&!#§(this.getVersionInfo());
         §4,§.§?+§ = this.getVersionInfo();
         §=p§.§<!I§ = §=Z§.stage.loaderInfo.parameters;
         this.§ S§();
         §?!%§(new §[u§());
         var _loc4_:§>!W§ = this.initStateLoad();
         §?!%§(_loc4_);
         _loc4_.§&G§(param1);
         _loc4_.§4!S§(param3);
         §;A§.init(param2);
         if(§4!H§.§7!"§())
         {
            §4!H§.§-%§("serverConnectionError");
         }
         §9^§(§>!W§.§@o§);
         this.§>E§();
      }
      
      protected function initStateLoad() : §>!W§
      {
         return new §>!W§(true,§>!W§.§@o§,this.getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      public function §>E§() : void
      {
         §=Z§.addEventListener(Event.ENTER_FRAME,this.§@8§);
         §=Z§.stage.addEventListener(Event.MOUSE_LEAVE,this.mouseLeave);
         §=Z§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.keyDown);
         §=Z§.stage.addEventListener(KeyboardEvent.KEY_UP,this.keyUp);
         this.§#!>§ = getTimer();
      }
      
      public function mouseLeave(param1:Event) : void
      {
         if(§=!@§())
         {
            §=!@§().mouseLeave();
         }
      }
      
      public function keyDown(param1:KeyboardEvent) : void
      {
         if(§=!@§())
         {
            §=!@§().keyDown(param1);
         }
         §4,§.keyDown(param1);
      }
      
      public function keyUp(param1:KeyboardEvent) : void
      {
         if(§=!@§())
         {
            §=!@§().keyUp(param1);
         }
      }
      
      public function §@8§(param1:Event) : void
      {
         var _loc2_:Number = getTimer() - this.§#!>§;
         this.§#!>§ = getTimer();
         §"!X§.§ s§.update(_loc2_);
         this.§'l§.dispatchEvent(param1);
         §!!%§.§`0§(§=Z§.mouseX,§=Z§.mouseY);
         if(§1G§())
         {
            return;
         }
         if(this.updateState(_loc2_) == §=p§.STATE_STATUS_COMPLETED)
         {
            §1G§();
         }
      }
      
      override public function updateState(param1:Number) : int
      {
         var _loc2_:int = super.updateState(param1);
         if(§=!@§().isGenericState())
         {
            if(_loc2_ == §=p§.STATE_STATUS_COMPLETED)
            {
               §=Z§.addChild(§!!%§.activate());
               this.setFirstGameState();
            }
         }
         return _loc2_;
      }
      
      override protected function previousStateDeactivate() : void
      {
         §"!X§.§ s§.§"!`§();
      }
      
      public function setFirstGameState() : void
      {
         §9^§(§[u§.§@o§);
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
         this.§'l§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         this.§'l§.removeEventListener(param1,param2,param3);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return false;
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§'l§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§'l§.willTrigger(param1);
      }
   }
}
