package §-!$§
{
   import § !v§.SWFWheel;
   import §-^§.§?7§;
   import §1!B§.§7n§;
   import §1!B§.§<m§;
   import §8!H§.§"_§;
   import §8!H§.§&!C§;
   import §8!H§.§6!o§;
   import §8!H§.§9![§;
   import §>f§.§2!z§;
   import §[!b§.§-!Q§;
   import §]F§.§`!G§;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.utils.getTimer;
   
   public class §4P§ extends §6!o§ implements IEventDispatcher
   {
      
      public static var §#!t§:Number;
      
      public static var § !-§:Number;
       
      
      public var §`!R§:Number;
      
      private var §6t§:EventDispatcher;
      
      public function §4P§(param1:§,w§, param2:DisplayObjectContainer, param3:XML, param4:XML)
      {
         var canvas:§,w§ = param1;
         var loadingScreen:DisplayObjectContainer = param2;
         var uiData:XML = param3;
         var assetData:XML = param4;
         this.§6t§ = new EventDispatcher();
         super(canvas);
         if(§`O§.stage)
         {
            this.init(loadingScreen,uiData,assetData);
         }
         else
         {
            §`O§.addEventListener(Event.ADDED_TO_STAGE,function(param1:Event):void
            {
               §`O§.removeEventListener(Event.ADDED_TO_STAGE,arguments.callee);
               init(loadingScreen,uiData,assetData);
            });
         }
      }
      
      protected function §0;§() : void
      {
         §-!Q§.init();
      }
      
      protected function init(param1:DisplayObjectContainer, param2:XML, param3:XML) : void
      {
         SWFWheel.initialize(stage);
         SWFWheel.§7!w§ = false;
         §<m§.§^2§(this.getVersionInfo());
         §<m§.§>! § = this.getVersionInfo();
         §9![§.§?!4§ = §`O§.stage.loaderInfo.parameters;
         this.§0;§();
         §9X§(new §&!C§());
         var _loc4_:§"_§ = this.initStateLoad();
         §9X§(_loc4_);
         _loc4_.setLoadingScreen(param1);
         _loc4_.§<M§(param3);
         §2!z§.init(param2);
         if(§?7§.§8!i§())
         {
            §?7§.§,!c§("serverConnectionError");
         }
         §9!m§(§"_§.§'!q§);
         this.§5!8§();
      }
      
      protected function initStateLoad() : §"_§
      {
         return new §"_§(true,§"_§.§'!q§,this.getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      public function §5!8§() : void
      {
         §`O§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         §`O§.stage.addEventListener(Event.MOUSE_LEAVE,this.mouseLeave);
         §`O§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.keyDown);
         §`O§.stage.addEventListener(KeyboardEvent.KEY_UP,this.keyUp);
         this.§`!R§ = getTimer();
      }
      
      public function mouseLeave(param1:Event) : void
      {
         if(§>j§())
         {
            §>j§().mouseLeave();
         }
      }
      
      public function keyDown(param1:KeyboardEvent) : void
      {
         if(§>j§())
         {
            §>j§().keyDown(param1);
         }
         §<m§.keyDown(param1);
      }
      
      public function keyUp(param1:KeyboardEvent) : void
      {
         if(§>j§())
         {
            §>j§().keyUp(param1);
         }
      }
      
      public function onEnterFrame(param1:Event) : void
      {
         var _loc2_:Number = getTimer() - this.§`!R§;
         this.§`!R§ = getTimer();
         §`!G§.§[U§.update(_loc2_);
         this.§6t§.dispatchEvent(param1);
         §7n§.§&y§(§`O§.mouseX,§`O§.mouseY);
         if(§+Q§())
         {
            return;
         }
         if(this.updateState(_loc2_) == §9![§.STATE_STATUS_COMPLETED)
         {
            §+Q§();
         }
      }
      
      override public function updateState(param1:Number) : int
      {
         var _loc2_:int = super.updateState(param1);
         if(§>j§().isGenericState())
         {
            if(_loc2_ == §9![§.STATE_STATUS_COMPLETED)
            {
               §`O§.addChild(§7n§.activate());
               this.setFirstGameState();
            }
         }
         return _loc2_;
      }
      
      override protected function previousStateDeactivate() : void
      {
         §`!G§.§[U§.§+!Z§();
      }
      
      public function setFirstGameState() : void
      {
         §9!m§(§&!C§.§'!q§);
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
         this.§6t§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         this.§6t§.removeEventListener(param1,param2,param3);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return false;
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§6t§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§6t§.willTrigger(param1);
      }
   }
}
