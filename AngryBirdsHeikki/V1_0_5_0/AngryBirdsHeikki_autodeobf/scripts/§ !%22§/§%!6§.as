package § !"§
{
   import § !Y§.§7§;
   import §+!V§.§20§;
   import §1!K§.§4§;
   import §1!K§.§>!<§;
   import §2!Q§.§'[§;
   import §2H§.§%!>§;
   import §2H§.§1!Q§;
   import §2H§.§>!^§;
   import §2H§.§>7§;
   import §;c§.§[!T§;
   import §>!_§.§9!+§;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.utils.getTimer;
   
   public class §%!6§ extends §%!>§ implements IEventDispatcher
   {
      
      public static var §if §:Number;
      
      public static var §6!D§:Number;
       
      
      public var §4!Y§:Number;
      
      private var §=!5§:EventDispatcher;
      
      public function §%!6§(param1:§,g§, param2:DisplayObjectContainer, param3:XML, param4:XML)
      {
         var canvas:§,g§ = param1;
         var loadingScreen:DisplayObjectContainer = param2;
         var uiData:XML = param3;
         var assetData:XML = param4;
         this.§=!5§ = new EventDispatcher();
         super(canvas);
         if(§11§.stage)
         {
            this.init(loadingScreen,uiData,assetData);
         }
         else
         {
            §11§.addEventListener(Event.ADDED_TO_STAGE,function(param1:Event):void
            {
               §11§.removeEventListener(Event.ADDED_TO_STAGE,arguments.callee);
               init(loadingScreen,uiData,assetData);
            });
         }
      }
      
      protected function §5"§() : void
      {
         §'[§.init();
      }
      
      protected function init(param1:DisplayObjectContainer, param2:XML, param3:XML) : void
      {
         §20§.initialize(stage);
         §20§.§%f§ = true;
         §>!<§.§[!a§(this.getVersionInfo());
         §>!^§.§98§ = §11§.stage.loaderInfo.parameters;
         this.§5"§();
         §5!,§(new §1!Q§());
         var _loc4_:§>7§ = this.initStateLoad();
         §5!,§(_loc4_);
         _loc4_.§`!1§(param1);
         _loc4_.§!!8§(param3);
         §7§.init(param2);
         if(§[!T§.§6b§())
         {
            §[!T§.§8K§("serverConnectionError");
         }
         §8!P§(§>7§.§4l§);
         this.§1'§();
      }
      
      protected function initStateLoad() : §>7§
      {
         return new §>7§(true,§>7§.§4l§,this.getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      public function §1'§() : void
      {
         §11§.addEventListener(Event.ENTER_FRAME,this.§3Y§);
         §11§.stage.addEventListener(Event.MOUSE_LEAVE,this.mouseLeave);
         §11§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.keyDown);
         §11§.stage.addEventListener(KeyboardEvent.KEY_UP,this.keyUp);
         this.§4!Y§ = getTimer();
      }
      
      public function mouseLeave(param1:Event) : void
      {
         if(§?!0§())
         {
            §?!0§().mouseLeave();
         }
      }
      
      public function keyDown(param1:KeyboardEvent) : void
      {
         if(§?!0§())
         {
            §?!0§().keyDown(param1);
         }
         §>!<§.keyDown(param1);
      }
      
      public function keyUp(param1:KeyboardEvent) : void
      {
         if(§?!0§())
         {
            §?!0§().keyUp(param1);
         }
      }
      
      public function §3Y§(param1:Event) : void
      {
         var _loc2_:Number = getTimer() - this.§4!Y§;
         this.§4!Y§ = getTimer();
         §9!+§.§;!F§.update(_loc2_);
         this.§=!5§.dispatchEvent(param1);
         §4§.§1w§(§11§.mouseX,§11§.mouseY);
         if(§!!U§())
         {
            return;
         }
         if(this.updateState(_loc2_) == §>!^§.STATE_STATUS_COMPLETED)
         {
            §!!U§();
         }
      }
      
      override public function updateState(param1:Number) : int
      {
         var _loc2_:int = super.updateState(param1);
         if(§?!0§().isGenericState())
         {
            if(_loc2_ == §>!^§.STATE_STATUS_COMPLETED)
            {
               §11§.addChild(§4§.activate());
               this.setFirstGameState();
            }
         }
         return _loc2_;
      }
      
      override protected function previousStateDeactivate() : void
      {
         §9!+§.§;!F§.§!!'§();
      }
      
      public function setFirstGameState() : void
      {
         §8!P§(§1!Q§.§4l§);
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
         this.§=!5§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         this.§=!5§.removeEventListener(param1,param2,param3);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return false;
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§=!5§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§=!5§.willTrigger(param1);
      }
   }
}
