package §""3§
{
   import §&!J§.§%!Y§;
   import §&"'§.§7!E§;
   import §-!n§.§5!U§;
   import §1"2§.§`7§;
   import §5"-§.§0=§;
   import §5"-§.§5y§;
   import §5"-§.§`$§;
   import §5"-§.§`^§;
   import §=!M§.§"o§;
   import §=!M§.§9!P§;
   import §@!v§.§6!Q§;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.utils.getTimer;
   
   public class §0Y§ extends §`$§ implements IEventDispatcher
   {
      
      public static var §?!,§:Number;
      
      public static var §;!Z§:Number;
       
      
      public var §8c§:Number;
      
      private var §?!w§:EventDispatcher;
      
      public function §0Y§(param1:§,"5§, param2:DisplayObjectContainer, param3:XML, param4:XML)
      {
         var canvas:§,"5§ = param1;
         var loadingScreen:DisplayObjectContainer = param2;
         var uiData:XML = param3;
         var assetData:XML = param4;
         this.§?!w§ = new EventDispatcher();
         super(canvas);
         if(§6!q§.stage)
         {
            this.init(loadingScreen,uiData,assetData);
         }
         else
         {
            §6!q§.addEventListener(Event.ADDED_TO_STAGE,function(param1:Event):void
            {
               §6!q§.removeEventListener(Event.ADDED_TO_STAGE,arguments.callee);
               init(loadingScreen,uiData,assetData);
            });
         }
      }
      
      protected function §?9§() : void
      {
         §5!U§.init();
      }
      
      protected function init(param1:DisplayObjectContainer, param2:XML, param3:XML) : void
      {
         §%!Y§.initialize(stage);
         §%!Y§.§%o§ = false;
         §9!P§.§#!?§(this.getVersionInfo());
         §9!P§.§]!o§ = this.getVersionInfo();
         §5y§.§;" § = §6!q§.stage.loaderInfo.parameters;
         this.§?9§();
         §,Y§(new §0=§());
         var _loc4_:§`^§ = this.initStateLoad();
         §,Y§(_loc4_);
         _loc4_.§&!6§(param1);
         _loc4_.§#'§(param3);
         §`7§.init(param2);
         if(§6!Q§.§1h§())
         {
            §6!Q§.§>c§("serverConnectionError");
         }
         §1!b§(§`^§.§'=§);
         this.§]!w§();
      }
      
      protected function initStateLoad() : §`^§
      {
         return new §`^§(true,§`^§.§'=§,this.getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      public function §]!w§() : void
      {
         §6!q§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         §6!q§.stage.addEventListener(Event.MOUSE_LEAVE,this.mouseLeave);
         §6!q§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.keyDown);
         §6!q§.stage.addEventListener(KeyboardEvent.KEY_UP,this.keyUp);
         this.§8c§ = getTimer();
      }
      
      public function mouseLeave(param1:Event) : void
      {
         if(§&[§())
         {
            §&[§().mouseLeave();
         }
      }
      
      public function keyDown(param1:KeyboardEvent) : void
      {
         if(§&[§())
         {
            §&[§().keyDown(param1);
         }
         §9!P§.keyDown(param1);
      }
      
      public function keyUp(param1:KeyboardEvent) : void
      {
         if(§&[§())
         {
            §&[§().keyUp(param1);
         }
      }
      
      public function onEnterFrame(param1:Event) : void
      {
         var _loc2_:Number = getTimer() - this.§8c§;
         this.§8c§ = getTimer();
         §7!E§.§2=§.update(_loc2_);
         this.§?!w§.dispatchEvent(param1);
         §"o§.§-P§(§6!q§.mouseX,§6!q§.mouseY);
         if(§ !@§())
         {
            return;
         }
         if(this.updateState(_loc2_) == §5y§.STATE_STATUS_COMPLETED)
         {
            § !@§();
         }
      }
      
      override public function updateState(param1:Number) : int
      {
         var _loc2_:int = super.updateState(param1);
         if(§&[§().isGenericState())
         {
            if(_loc2_ == §5y§.STATE_STATUS_COMPLETED)
            {
               §6!q§.addChild(§"o§.activate());
               this.setFirstGameState();
            }
         }
         return _loc2_;
      }
      
      override protected function previousStateDeactivate() : void
      {
         §7!E§.§2=§.§`!7§();
      }
      
      public function setFirstGameState() : void
      {
         §1!b§(§0=§.§'=§);
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
         this.§?!w§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         this.§?!w§.removeEventListener(param1,param2,param3);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return false;
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§?!w§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§?!w§.willTrigger(param1);
      }
   }
}
