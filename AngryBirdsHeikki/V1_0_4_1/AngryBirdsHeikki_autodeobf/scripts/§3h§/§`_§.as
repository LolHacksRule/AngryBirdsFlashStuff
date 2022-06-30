package §3h§
{
   import §%!$§.§;!U§;
   import §%!$§.§[Z§;
   import §+$§.§>!W§;
   import §4;§.§'!!§;
   import §4;§.§,h§;
   import §4;§.§<!>§;
   import §4;§.§^]§;
   import §6-§.§"H§;
   import §7!X§.§%!=§;
   import §7h§.§7!"§;
   import §^!#§.§9!!§;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.utils.getTimer;
   
   public class §`_§ extends §^]§ implements IEventDispatcher
   {
      
      public static var §#!-§:Number;
      
      public static var §@'§:Number;
       
      
      public var §[! §:Number;
      
      private var §%![§:EventDispatcher;
      
      public function §`_§(param1:§8q§, param2:DisplayObjectContainer, param3:XML, param4:XML)
      {
         var canvas:§8q§ = param1;
         var loadingScreen:DisplayObjectContainer = param2;
         var uiData:XML = param3;
         var assetData:XML = param4;
         this.§%![§ = new EventDispatcher();
         super(canvas);
         if(§[!6§.stage)
         {
            this.init(loadingScreen,uiData,assetData);
         }
         else
         {
            §[!6§.addEventListener(Event.ADDED_TO_STAGE,function(param1:Event):void
            {
               §[!6§.removeEventListener(Event.ADDED_TO_STAGE,arguments.callee);
               init(loadingScreen,uiData,assetData);
            });
         }
      }
      
      protected function §^T§() : void
      {
         §7!"§.init();
      }
      
      protected function init(param1:DisplayObjectContainer, param2:XML, param3:XML) : void
      {
         §>!W§.initialize(stage);
         §>!W§.§!q§ = true;
         §[Z§.§^!K§(this.getVersionInfo());
         §,h§.§ !C§ = §[!6§.stage.loaderInfo.parameters;
         this.§^T§();
         §%!S§(new §'!!§());
         var _loc4_:§<!>§ = this.initStateLoad();
         §%!S§(_loc4_);
         _loc4_.§[T§(param1);
         _loc4_.§9c§(param3);
         §%!=§.init(param2);
         if(§9!!§.§@h§())
         {
            §9!!§.§-!S§("serverConnectionError");
         }
         §,!a§(§<!>§.§6! §);
         this.§&C§();
      }
      
      protected function initStateLoad() : §<!>§
      {
         return new §<!>§(true,§<!>§.§6! §,this.getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      public function §&C§() : void
      {
         §[!6§.addEventListener(Event.ENTER_FRAME,this.§8!a§);
         §[!6§.stage.addEventListener(Event.MOUSE_LEAVE,this.mouseLeave);
         §[!6§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.keyDown);
         §[!6§.stage.addEventListener(KeyboardEvent.KEY_UP,this.keyUp);
         this.§[! § = getTimer();
      }
      
      public function mouseLeave(param1:Event) : void
      {
         if(§!#§())
         {
            §!#§().mouseLeave();
         }
      }
      
      public function keyDown(param1:KeyboardEvent) : void
      {
         if(§!#§())
         {
            §!#§().keyDown(param1);
         }
         §[Z§.keyDown(param1);
      }
      
      public function keyUp(param1:KeyboardEvent) : void
      {
         if(§!#§())
         {
            §!#§().keyUp(param1);
         }
      }
      
      public function §8!a§(param1:Event) : void
      {
         var _loc2_:Number = getTimer() - this.§[! §;
         this.§[! § = getTimer();
         §"H§.§'![§.update(_loc2_);
         this.§%![§.dispatchEvent(param1);
         §;!U§.§!!%§(§[!6§.mouseX,§[!6§.mouseY);
         if(§[`§())
         {
            return;
         }
         if(this.updateState(_loc2_) == §,h§.STATE_STATUS_COMPLETED)
         {
            §[`§();
         }
      }
      
      override public function updateState(param1:Number) : int
      {
         var _loc2_:int = super.updateState(param1);
         if(§!#§().isGenericState())
         {
            if(_loc2_ == §,h§.STATE_STATUS_COMPLETED)
            {
               §[!6§.addChild(§;!U§.activate());
               this.setFirstGameState();
            }
         }
         return _loc2_;
      }
      
      override protected function previousStateDeactivate() : void
      {
         §"H§.§'![§.§&!8§();
      }
      
      public function setFirstGameState() : void
      {
         §,!a§(§'!!§.§6! §);
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
         this.§%![§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         this.§%![§.removeEventListener(param1,param2,param3);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return false;
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§%![§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§%![§.willTrigger(param1);
      }
   }
}
