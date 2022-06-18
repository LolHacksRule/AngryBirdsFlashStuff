package §`R§
{
   import §%q§.§'!A§;
   import §'0§.§]!2§;
   import §7=§.§,O§;
   import §7=§.§3!!§;
   import §7=§.§6S§;
   import §7=§.§9Y§;
   import §<h§.SWFWheel;
   import §=Y§.§-=§;
   import §?H§.§-!K§;
   import §@!;§.§!!=§;
   import §@!;§.§`P§;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.utils.getTimer;
   
   public class §8!1§ extends §6S§ implements IEventDispatcher
   {
      
      public static var §?!>§:Number;
      
      public static var §^!>§:Number;
       
      
      public var §^%§:Number;
      
      private var §'3§:EventDispatcher;
      
      public function §8!1§(param1:§8D§, param2:DisplayObjectContainer, param3:XML, param4:XML)
      {
         var canvas:§8D§ = param1;
         var loadingScreen:DisplayObjectContainer = param2;
         var uiData:XML = param3;
         var assetData:XML = param4;
         this.§'3§ = new EventDispatcher();
         super(canvas);
         if(§7!F§.stage)
         {
            this.init(loadingScreen,uiData,assetData);
         }
         else
         {
            §7!F§.addEventListener(Event.ADDED_TO_STAGE,function(param1:Event):void
            {
               §7!F§.removeEventListener(Event.ADDED_TO_STAGE,arguments.callee);
               init(loadingScreen,uiData,assetData);
            });
         }
      }
      
      protected function initSoundEngine() : void
      {
         §]!2§.init();
      }
      
      protected function init(param1:DisplayObjectContainer, param2:XML, param3:XML) : void
      {
         SWFWheel.initialize(stage);
         SWFWheel.§'A§ = false;
         §!!=§.§6-§(this.getVersionInfo());
         §!!=§.§=z§ = this.getVersionInfo();
         §9Y§.§ K§ = §7!F§.stage.loaderInfo.parameters;
         this.initSoundEngine();
         §%y§(new §3!!§());
         var _loc4_:§,O§ = this.initStateLoad();
         §%y§(_loc4_);
         _loc4_.setLoadingScreen(param1);
         _loc4_.§?F§(param3);
         §-!K§.init(param2);
         if(§-=§.§try §())
         {
            §-=§.§3!+§("serverConnectionError");
         }
         §3!K§(§,O§.§]! §);
         this.§,=§();
      }
      
      protected function initStateLoad() : §,O§
      {
         return new §,O§(true,§,O§.§]! §,this.getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      public function §,=§() : void
      {
         §7!F§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         §7!F§.stage.addEventListener(Event.MOUSE_LEAVE,this.mouseLeave);
         §7!F§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.keyDown);
         §7!F§.stage.addEventListener(KeyboardEvent.KEY_UP,this.keyUp);
         this.§^%§ = getTimer();
      }
      
      public function mouseLeave(param1:Event) : void
      {
         if(§6!6§())
         {
            §6!6§().mouseLeave();
         }
      }
      
      public function keyDown(param1:KeyboardEvent) : void
      {
         if(§6!6§())
         {
            §6!6§().keyDown(param1);
         }
         §!!=§.keyDown(param1);
      }
      
      public function keyUp(param1:KeyboardEvent) : void
      {
         if(§6!6§())
         {
            §6!6§().keyUp(param1);
         }
      }
      
      public function onEnterFrame(param1:Event) : void
      {
         var _loc2_:Number = getTimer() - this.§^%§;
         this.§^%§ = getTimer();
         §'!A§.§5+§.update(_loc2_);
         this.§'3§.dispatchEvent(param1);
         §`P§.§<!-§(§7!F§.mouseX,§7!F§.mouseY);
         if(§ V§())
         {
            return;
         }
         if(this.updateState(_loc2_) == §9Y§.STATE_STATUS_COMPLETED)
         {
            § V§();
         }
      }
      
      override public function updateState(param1:Number) : int
      {
         var _loc2_:int = super.updateState(param1);
         if(§6!6§().isGenericState())
         {
            if(_loc2_ == §9Y§.STATE_STATUS_COMPLETED)
            {
               §7!F§.addChild(§`P§.activate());
               this.setFirstGameState();
            }
         }
         return _loc2_;
      }
      
      override protected function previousStateDeactivate() : void
      {
         §'!A§.§5+§.§4J§();
      }
      
      public function setFirstGameState() : void
      {
         §3!K§(§3!!§.§]! §);
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
         this.§'3§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         this.§'3§.removeEventListener(param1,param2,param3);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return false;
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§'3§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§'3§.willTrigger(param1);
      }
   }
}
