package §1_§
{
   import §"I§.§%Q§;
   import §"I§.§,r§;
   import §"I§.§-x§;
   import §"I§.§6!+§;
   import §&8§.§8h§;
   import §-!;§.§^!,§;
   import §1o§.§'M§;
   import §=g§.§3U§;
   import §=g§.§@!L§;
   import §>U§.§3u§;
   import §@!Y§.§<U§;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.utils.getTimer;
   
   public class §`!N§ extends §,r§ implements IEventDispatcher
   {
      
      public static var §`!]§:Number;
      
      public static var § >§:Number;
       
      
      public var §-6§:Number;
      
      private var §?!>§:EventDispatcher;
      
      public function §`!N§(param1:§[V§, param2:DisplayObjectContainer, param3:XML, param4:XML)
      {
         var canvas:§[V§ = param1;
         var loadingScreen:DisplayObjectContainer = param2;
         var uiData:XML = param3;
         var assetData:XML = param4;
         this.§?!>§ = new EventDispatcher();
         super(canvas);
         if(§`z§.stage)
         {
            this.init(loadingScreen,uiData,assetData);
         }
         else
         {
            §`z§.addEventListener(Event.ADDED_TO_STAGE,function(param1:Event):void
            {
               §`z§.removeEventListener(Event.ADDED_TO_STAGE,arguments.callee);
               init(loadingScreen,uiData,assetData);
            });
         }
      }
      
      protected function §+!T§() : void
      {
         §'M§.init();
      }
      
      protected function init(param1:DisplayObjectContainer, param2:XML, param3:XML) : void
      {
         §3u§.§>!W§(stage);
         §3u§.§`!L§ = false;
         §@!L§.§]!_§(this.getVersionInfo());
         §@!L§.§;1§ = this.getVersionInfo();
         §-x§.§]!+§ = §`z§.stage.loaderInfo.parameters;
         this.§+!T§();
         §9>§(new §%Q§());
         var _loc4_:§6!+§ = this.initStateLoad();
         §9>§(_loc4_);
         _loc4_.§>!Z§(param1);
         _loc4_.§^R§(param3);
         §8h§.init(param2);
         if(§<U§.§^7§())
         {
            §<U§.§%!4§("serverConnectionError");
         }
         §1!?§(§6!+§.§,!+§);
         this.§;B§();
      }
      
      protected function initStateLoad() : §6!+§
      {
         return new §6!+§(true,§6!+§.§,!+§,this.getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      public function §;B§() : void
      {
         §`z§.addEventListener(Event.ENTER_FRAME,this.§%!0§);
         §`z§.stage.addEventListener(Event.MOUSE_LEAVE,this.mouseLeave);
         §`z§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.keyDown);
         §`z§.stage.addEventListener(KeyboardEvent.KEY_UP,this.keyUp);
         this.§-6§ = getTimer();
      }
      
      public function mouseLeave(param1:Event) : void
      {
         if(§ <§())
         {
            § <§().mouseLeave();
         }
      }
      
      public function keyDown(param1:KeyboardEvent) : void
      {
         if(§ <§())
         {
            § <§().keyDown(param1);
         }
         §@!L§.keyDown(param1);
      }
      
      public function keyUp(param1:KeyboardEvent) : void
      {
         if(§ <§())
         {
            § <§().keyUp(param1);
         }
      }
      
      public function §%!0§(param1:Event) : void
      {
         var _loc2_:Number = getTimer() - this.§-6§;
         this.§-6§ = getTimer();
         §^!,§.§0!S§.update(_loc2_);
         this.§?!>§.dispatchEvent(param1);
         §3U§.§^!9§(§`z§.mouseX,§`z§.mouseY);
         if(§3![§())
         {
            return;
         }
         if(this.updateState(_loc2_) == §-x§.STATE_STATUS_COMPLETED)
         {
            §3![§();
         }
      }
      
      override public function updateState(param1:Number) : int
      {
         var _loc2_:int = super.updateState(param1);
         if(§ <§().isGenericState())
         {
            if(_loc2_ == §-x§.STATE_STATUS_COMPLETED)
            {
               §`z§.addChild(§3U§.activate());
               this.setFirstGameState();
            }
         }
         return _loc2_;
      }
      
      override protected function previousStateDeactivate() : void
      {
         §^!,§.§0!S§.§3!7§();
      }
      
      public function setFirstGameState() : void
      {
         §1!?§(§%Q§.§,!+§);
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
         this.§?!>§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         this.§?!>§.removeEventListener(param1,param2,param3);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return false;
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§?!>§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§?!>§.willTrigger(param1);
      }
   }
}
