package §,h§
{
   import §#K§.§,3§;
   import §6!P§.§^!>§;
   import §9U§.§]!W§;
   import §?!F§.§&!L§;
   import §?!F§.§,P§;
   import §?!F§.§0!Y§;
   import §?!F§.§]T§;
   import §^!&§.§#U§;
   import §^!&§.§;C§;
   import §`B§.§ P§;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.utils.getTimer;
   import §var§.§?!"§;
   
   public class §%! § extends §]T§ implements IEventDispatcher
   {
      
      public static var §;8§:Number;
      
      public static var §=!^§:Number;
       
      
      public var §5!!§:Number;
      
      private var §-7§:EventDispatcher;
      
      public function §%! §(param1:§^7§, param2:DisplayObjectContainer, param3:XML, param4:XML)
      {
         var canvas:§^7§ = param1;
         var loadingScreen:DisplayObjectContainer = param2;
         var uiData:XML = param3;
         var assetData:XML = param4;
         this.§-7§ = new EventDispatcher();
         super(canvas);
         if(§^U§.stage)
         {
            this.init(loadingScreen,uiData,assetData);
         }
         else
         {
            §^U§.addEventListener(Event.ADDED_TO_STAGE,function(param1:Event):void
            {
               §^U§.removeEventListener(Event.ADDED_TO_STAGE,arguments.callee);
               init(loadingScreen,uiData,assetData);
            });
         }
      }
      
      protected function §-u§() : void
      {
         §,3§.init();
      }
      
      protected function init(param1:DisplayObjectContainer, param2:XML, param3:XML) : void
      {
         §?!"§.§7x§(stage);
         §?!"§.§0!K§ = false;
         §;C§.§6O§(this.getVersionInfo());
         §0!Y§.§1!+§ = §^U§.stage.loaderInfo.parameters;
         this.§-u§();
         §?i§(new §,P§());
         var _loc4_:§&!L§ = this.initStateLoad();
         §?i§(_loc4_);
         _loc4_.§8!?§(param1);
         _loc4_.§@<§(param3);
         § P§.init(param2);
         if(§]!W§.§+D§())
         {
            §]!W§.§?!J§("serverConnectionError");
         }
         §implements§(§&!L§.§1o§);
         this.§%_§();
      }
      
      protected function initStateLoad() : §&!L§
      {
         return new §&!L§(true,§&!L§.§1o§,this.getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      public function §%_§() : void
      {
         §^U§.addEventListener(Event.ENTER_FRAME,this.§0!'§);
         §^U§.stage.addEventListener(Event.MOUSE_LEAVE,this.mouseLeave);
         §^U§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.keyDown);
         §^U§.stage.addEventListener(KeyboardEvent.KEY_UP,this.keyUp);
         this.§5!!§ = getTimer();
      }
      
      public function mouseLeave(param1:Event) : void
      {
         if(§^1§())
         {
            §^1§().mouseLeave();
         }
      }
      
      public function keyDown(param1:KeyboardEvent) : void
      {
         if(§^1§())
         {
            §^1§().keyDown(param1);
         }
         §;C§.keyDown(param1);
      }
      
      public function keyUp(param1:KeyboardEvent) : void
      {
         if(§^1§())
         {
            §^1§().keyUp(param1);
         }
      }
      
      public function §0!'§(param1:Event) : void
      {
         var _loc2_:Number = getTimer() - this.§5!!§;
         this.§5!!§ = getTimer();
         §^!>§.§[P§.update(_loc2_);
         this.§-7§.dispatchEvent(param1);
         §#U§.§@>§(§^U§.mouseX,§^U§.mouseY);
         if(§'!%§())
         {
            return;
         }
         if(this.updateState(_loc2_) == §0!Y§.STATE_STATUS_COMPLETED)
         {
            §'!%§();
         }
      }
      
      override public function updateState(param1:Number) : int
      {
         var _loc2_:int = super.updateState(param1);
         if(§^1§().isGenericState())
         {
            if(_loc2_ == §0!Y§.STATE_STATUS_COMPLETED)
            {
               §^U§.addChild(§#U§.activate());
               this.setFirstGameState();
            }
         }
         return _loc2_;
      }
      
      override protected function previousStateDeactivate() : void
      {
         §^!>§.§[P§.§1h§();
      }
      
      public function setFirstGameState() : void
      {
         §implements§(§,P§.§1o§);
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
         this.§-7§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         this.§-7§.removeEventListener(param1,param2,param3);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return false;
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§-7§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§-7§.willTrigger(param1);
      }
   }
}
