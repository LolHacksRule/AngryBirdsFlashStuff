package §,o§
{
   import §0i§.§4!%§;
   import §0i§.§6`§;
   import §3<§.§9&§;
   import §7E§.§ =§;
   import §7E§.§%7§;
   import §7E§.§%L§;
   import §7E§.§&]§;
   import §=!m§.§4T§;
   import §@N§.§7!m§;
   import §]^§.§7G§;
   import §^m§.§=!a§;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.utils.getTimer;
   
   public class § !=§ extends §%7§ implements IEventDispatcher
   {
      
      public static var §9!K§:Number;
      
      public static var §case §:Number;
       
      
      public var §%W§:Number;
      
      private var §+,§:EventDispatcher;
      
      public function § !=§(param1:§ j§, param2:DisplayObjectContainer, param3:XML, param4:XML)
      {
         var canvas:§ j§ = param1;
         var loadingScreen:DisplayObjectContainer = param2;
         var uiData:XML = param3;
         var assetData:XML = param4;
         this.§+,§ = new EventDispatcher();
         super(canvas);
         if(§3A§.stage)
         {
            this.init(loadingScreen,uiData,assetData);
         }
         else
         {
            §3A§.addEventListener(Event.ADDED_TO_STAGE,function(param1:Event):void
            {
               §3A§.removeEventListener(Event.ADDED_TO_STAGE,arguments.callee);
               init(loadingScreen,uiData,assetData);
            });
         }
      }
      
      protected function §0Q§() : void
      {
         §7G§.init();
      }
      
      protected function init(param1:DisplayObjectContainer, param2:XML, param3:XML) : void
      {
         §7!m§.initialize(stage);
         §7!m§.§=`§ = false;
         §4!%§.§>@§(this.getVersionInfo());
         §4!%§.§]4§ = this.getVersionInfo();
         § =§.§=9§ = §3A§.stage.loaderInfo.parameters;
         this.§0Q§();
         §-H§(new §%L§());
         var _loc4_:§&]§ = this.initStateLoad();
         §-H§(_loc4_);
         _loc4_.§7^§(param1);
         _loc4_.§9!1§(param3);
         §9&§.init(param2);
         if(§4T§.§5U§())
         {
            §4T§.§[!+§("serverConnectionError");
         }
         §3N§(§&]§.§[!1§);
         this.§]H§();
      }
      
      protected function initStateLoad() : §&]§
      {
         return new §&]§(true,§&]§.§[!1§,this.getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      public function §]H§() : void
      {
         §3A§.addEventListener(Event.ENTER_FRAME,this.§3![§);
         §3A§.stage.addEventListener(Event.MOUSE_LEAVE,this.mouseLeave);
         §3A§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.keyDown);
         §3A§.stage.addEventListener(KeyboardEvent.KEY_UP,this.keyUp);
         this.§%W§ = getTimer();
      }
      
      public function mouseLeave(param1:Event) : void
      {
         if(§#!k§())
         {
            §#!k§().mouseLeave();
         }
      }
      
      public function keyDown(param1:KeyboardEvent) : void
      {
         if(§#!k§())
         {
            §#!k§().keyDown(param1);
         }
         §4!%§.keyDown(param1);
      }
      
      public function keyUp(param1:KeyboardEvent) : void
      {
         if(§#!k§())
         {
            §#!k§().keyUp(param1);
         }
      }
      
      public function §3![§(param1:Event) : void
      {
         var _loc2_:Number = getTimer() - this.§%W§;
         this.§%W§ = getTimer();
         §=!a§.§9$§.update(_loc2_);
         this.§+,§.dispatchEvent(param1);
         §6`§.§%!@§(§3A§.mouseX,§3A§.mouseY);
         if(§4$§())
         {
            return;
         }
         if(this.updateState(_loc2_) == § =§.STATE_STATUS_COMPLETED)
         {
            §4$§();
         }
      }
      
      override public function updateState(param1:Number) : int
      {
         var _loc2_:int = super.updateState(param1);
         if(§#!k§().isGenericState())
         {
            if(_loc2_ == § =§.STATE_STATUS_COMPLETED)
            {
               §3A§.addChild(§6`§.activate());
               this.setFirstGameState();
            }
         }
         return _loc2_;
      }
      
      override protected function previousStateDeactivate() : void
      {
         §=!a§.§9$§.§9[§();
      }
      
      public function setFirstGameState() : void
      {
         §3N§(§%L§.§[!1§);
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
         this.§+,§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         this.§+,§.removeEventListener(param1,param2,param3);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return false;
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§+,§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§+,§.willTrigger(param1);
      }
   }
}
