package §&m§
{
   import § !j§.§4#c§;
   import § !j§.§7!0§;
   import §!"'§.§2"?§;
   import §%!-§.§?l§;
   import §&$3§.§"!&§;
   import §1#v§.§4"l§;
   import §1#v§.§;!Y§;
   import §1L§.§;u§;
   import §6#[§.SWFWheel;
   import §8#K§.§3Z§;
   import §>"W§.§%#+§;
   import §>"W§.§7Y§;
   import §>"W§.§=$8§;
   import §>"W§.§?!^§;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.utils.getTimer;
   
   public class §#U§ extends §=$8§ implements IEventDispatcher
   {
      
      public static var §2!§:Number;
      
      public static var §!]§:Number;
       
      
      public var §;!6§:Number;
      
      private var §8!A§:EventDispatcher;
      
      private var §+" §:§4#c§;
      
      public function §#U§(param1:§'5§, param2:DisplayObjectContainer, param3:XML, param4:XML)
      {
         var canvas:§'5§ = param1;
         var loadingScreen:DisplayObjectContainer = param2;
         var uiData:XML = param3;
         var assetData:XML = param4;
         this.§8!A§ = new EventDispatcher();
         super(canvas);
         if(§0#W§.stage)
         {
            this.init(loadingScreen,uiData,assetData);
         }
         else
         {
            §0#W§.addEventListener(Event.ADDED_TO_STAGE,function(param1:Event):void
            {
               §0#W§.removeEventListener(Event.ADDED_TO_STAGE,arguments.callee);
               init(loadingScreen,uiData,assetData);
            });
         }
      }
      
      public function get §-U§() : §4#c§
      {
         return this.§+" §;
      }
      
      protected function §%"[§() : void
      {
         §3Z§.init();
      }
      
      protected function init(param1:DisplayObjectContainer, param2:XML, param3:XML) : void
      {
         this.§+" § = new §4#c§(new §7!0§("en"));
         SWFWheel.initialize(stage);
         SWFWheel.§5#5§ = false;
         §;!Y§.§3$D§(this.getVersionInfo());
         §;!Y§.§>"`§ = this.getVersionInfo();
         §7Y§.§ "U§ = §0#W§.stage.loaderInfo.parameters;
         this.§%"[§();
         §]!s§(new §?!^§(this.§-U§));
         var _loc4_:§%#+§ = this.initStateLoad();
         §]!s§(_loc4_);
         _loc4_.setLoadingScreen(param1);
         _loc4_.§4"a§(param3);
         §?l§.init(param2);
         if(§;u§.§0#y§())
         {
            §;u§.§2!k§("serverConnectionError");
         }
         §1!L§(§%#+§.STATE_NAME);
         this.§8-§();
      }
      
      protected function initStateLoad() : §%#+§
      {
         return new §%#+§(this.§-U§,true,§%#+§.STATE_NAME,this.getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      public function §8-§() : void
      {
         §0#W§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         §0#W§.stage.addEventListener(Event.MOUSE_LEAVE,this.mouseLeave);
         §0#W§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.keyDown);
         §0#W§.stage.addEventListener(KeyboardEvent.KEY_UP,this.keyUp);
         this.§;!6§ = getTimer();
      }
      
      public function mouseLeave(param1:Event) : void
      {
         if(§-j§())
         {
            §-j§().mouseLeave();
         }
      }
      
      public function keyDown(param1:KeyboardEvent) : void
      {
         if(§-j§())
         {
            §-j§().keyDown(param1);
         }
         §;!Y§.keyDown(param1);
      }
      
      public function keyUp(param1:KeyboardEvent) : void
      {
         if(§-j§())
         {
            §-j§().keyUp(param1);
         }
      }
      
      public function onEnterFrame(param1:Event) : void
      {
         var _loc2_:Number = getTimer() - this.§;!6§;
         this.§;!6§ = getTimer();
         §"!&§.§`"H§.update(_loc2_);
         var _loc3_:§2"?§ = new §2"?§(§2"?§.§?#Y§,_loc2_,param1.bubbles,param1.cancelable);
         this.§8!A§.dispatchEvent(_loc3_);
         §4"l§.§-!§(§0#W§.mouseX,§0#W§.mouseY);
         if(§`!A§())
         {
            return;
         }
         if(this.updateState(_loc2_) == §7Y§.§ try§)
         {
            §`!A§();
         }
      }
      
      override public function updateState(param1:Number) : int
      {
         var _loc2_:int = super.updateState(param1);
         if(§-j§().isGenericState())
         {
            if(_loc2_ == §7Y§.§ try§)
            {
               §0#W§.addChild(§4"l§.activate());
               this.setFirstGameState();
            }
         }
         return _loc2_;
      }
      
      override protected function previousStateDeactivate() : void
      {
         §"!&§.§`"H§.§ "N§();
      }
      
      public function setFirstGameState() : void
      {
         §1!L§(§?!^§.STATE_NAME);
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
         this.§8!A§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         this.§8!A§.removeEventListener(param1,param2,param3);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return false;
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§8!A§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§8!A§.willTrigger(param1);
      }
   }
}
