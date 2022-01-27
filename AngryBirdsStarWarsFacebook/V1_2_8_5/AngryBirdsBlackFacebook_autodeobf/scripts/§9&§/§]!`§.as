package §9&§
{
   import §%!G§.§8##§;
   import §&!j§.§5#+§;
   import §&!j§.§^J§;
   import §0"g§.§5!%§;
   import §2[§.§"§;
   import §9"`§.§-"H§;
   import §9"`§.§]s§;
   import §9§.§1" §;
   import §9§.§3!?§;
   import §9§.§=q§;
   import §9§.§`w§;
   import §=!4§.§7!@§;
   import §[!H§.§^x§;
   import §`"1§.§=Q§;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.utils.getTimer;
   
   public class §]!`§ extends §`w§ implements IEventDispatcher
   {
      
      public static var §@!H§:Number;
      
      public static var §1l§:Number;
       
      
      public var §!"§:Number;
      
      private var §`"=§:EventDispatcher;
      
      private var §-1§:§5#+§;
      
      public function §]!`§(param1:§@"K§, param2:DisplayObjectContainer, param3:XML, param4:XML)
      {
         var canvas:§@"K§ = param1;
         var loadingScreen:DisplayObjectContainer = param2;
         var uiData:XML = param3;
         var assetData:XML = param4;
         this.§`"=§ = new EventDispatcher();
         super(canvas);
         if(§1!e§.stage)
         {
            this.init(loadingScreen,uiData,assetData);
         }
         else
         {
            §1!e§.addEventListener(Event.ADDED_TO_STAGE,function(param1:Event):void
            {
               §1!e§.removeEventListener(Event.ADDED_TO_STAGE,arguments.callee);
               init(loadingScreen,uiData,assetData);
            });
         }
      }
      
      public function get §1!L§() : §5#+§
      {
         return this.§-1§;
      }
      
      protected function §;"A§() : void
      {
         §=Q§.init();
      }
      
      protected function init(param1:DisplayObjectContainer, param2:XML, param3:XML) : void
      {
         this.§-1§ = new §5#+§(new §^J§("en"));
         §"#1§.initialize(stage);
         §"#1§.§ R§ = false;
         §-"H§.§]"K§(this.getVersionInfo());
         §-"H§.§6"T§ = this.getVersionInfo();
         §1" §.§[-§ = §1!e§.stage.loaderInfo.parameters;
         this.§;"A§();
         §^!%§(new §=q§(this.§1!L§));
         var _loc4_:§3!?§ = this.initStateLoad();
         §^!%§(_loc4_);
         _loc4_.setLoadingScreen(param1);
         _loc4_.§6"§(param3);
         §^x§.init(param2);
         if(§8##§.§14§())
         {
            §8##§.§#d§("serverConnectionError");
         }
         §`0§(§3!?§.§-!U§);
         this.§1!D§();
      }
      
      protected function initStateLoad() : §3!?§
      {
         return new §3!?§(this.§1!L§,true,§3!?§.§-!U§,this.getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      public function §1!D§() : void
      {
         §1!e§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         §1!e§.stage.addEventListener(Event.MOUSE_LEAVE,this.mouseLeave);
         §1!e§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.keyDown);
         §1!e§.stage.addEventListener(KeyboardEvent.KEY_UP,this.keyUp);
         this.§!"§ = getTimer();
      }
      
      public function mouseLeave(param1:Event) : void
      {
         if(§%#&§())
         {
            §%#&§().mouseLeave();
         }
      }
      
      public function keyDown(param1:KeyboardEvent) : void
      {
         if(§%#&§())
         {
            §%#&§().keyDown(param1);
         }
         §-"H§.keyDown(param1);
      }
      
      public function keyUp(param1:KeyboardEvent) : void
      {
         if(§%#&§())
         {
            §%#&§().keyUp(param1);
         }
      }
      
      public function onEnterFrame(param1:Event) : void
      {
         var _loc2_:Number = getTimer() - this.§!"§;
         this.§!"§ = getTimer();
         §5!%§.§!6§.update(_loc2_);
         var _loc3_:§7!@§ = new §7!@§(§7!@§.§6,§,_loc2_,param1.bubbles,param1.cancelable);
         this.§`"=§.dispatchEvent(_loc3_);
         §]s§.§&!r§(§1!e§.mouseX,§1!e§.mouseY);
         if(§[!R§())
         {
            return;
         }
         if(this.updateState(_loc2_) == §1" §.§,!R§)
         {
            §[!R§();
         }
      }
      
      override public function updateState(param1:Number) : int
      {
         var _loc2_:int = super.updateState(param1);
         if(§%#&§().isGenericState())
         {
            if(_loc2_ == §1" §.§,!R§)
            {
               §1!e§.addChild(§]s§.activate());
               this.setFirstGameState();
            }
         }
         return _loc2_;
      }
      
      override protected function previousStateDeactivate() : void
      {
         §5!%§.§!6§.§!"K§();
      }
      
      public function setFirstGameState() : void
      {
         §`0§(§=q§.§-!U§);
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
         this.§`"=§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         this.§`"=§.removeEventListener(param1,param2,param3);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return false;
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§`"=§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§`"=§.willTrigger(param1);
      }
   }
}
