package §?""§
{
   import §-!;§.§^!!§;
   import §1!`§.§8!s§;
   import §1T§.§'!c§;
   import §5!%§.§"!F§;
   import §7!§.§#"0§;
   import §;0§.§&G§;
   import §;0§.§6h§;
   import §?@§.§'^§;
   import §?z§.§%r§;
   import §?z§.§4!C§;
   import §?z§.§;B§;
   import §?z§.static;
   import each.§!!'§;
   import each.§5<§;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.utils.getTimer;
   
   public class §6!A§ extends §;B§ implements IEventDispatcher
   {
      
      public static var §7!;§:Number;
      
      public static var §66§:Number;
       
      
      public var §&]§:Number;
      
      private var §`!'§:EventDispatcher;
      
      private var §-!]§:§6h§;
      
      public function §6!A§(param1:§`!o§, param2:DisplayObjectContainer, param3:XML, param4:XML)
      {
         var canvas:§`!o§ = param1;
         var loadingScreen:DisplayObjectContainer = param2;
         var uiData:XML = param3;
         var assetData:XML = param4;
         this.§`!'§ = new EventDispatcher();
         super(canvas);
         if(§!!U§.stage)
         {
            this.init(loadingScreen,uiData,assetData);
         }
         else
         {
            §!!U§.addEventListener(Event.ADDED_TO_STAGE,function(param1:Event):void
            {
               §!!U§.removeEventListener(Event.ADDED_TO_STAGE,arguments.callee);
               init(loadingScreen,uiData,assetData);
            });
         }
      }
      
      public function get §@!>§() : §6h§
      {
         return this.§-!]§;
      }
      
      protected function § in§() : void
      {
         §'!c§.init();
      }
      
      protected function init(param1:DisplayObjectContainer, param2:XML, param3:XML) : void
      {
         this.§-!]§ = new §6h§(new §&G§("en"));
         §"!F§.initialize(stage);
         §"!F§.§,P§ = false;
         §!!'§.§<K§(this.getVersionInfo());
         §!!'§.§1"-§ = this.getVersionInfo();
         §4!C§.§#Z§ = §!!U§.stage.loaderInfo.parameters;
         this.§ in§();
         §7p§(new static(this.§@!>§));
         var _loc4_:§%r§ = this.initStateLoad();
         §7p§(_loc4_);
         _loc4_.setLoadingScreen(param1);
         _loc4_.§6!o§(param3);
         §#"0§.init(param2);
         if(§8!s§.§]!s§())
         {
            §8!s§.§;!$§("serverConnectionError");
         }
         §<f§(§%r§.§-!q§);
         this.§"9§();
      }
      
      protected function initStateLoad() : §%r§
      {
         return new §%r§(this.§@!>§,true,§%r§.§-!q§,this.getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      public function §"9§() : void
      {
         §!!U§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         §!!U§.stage.addEventListener(Event.MOUSE_LEAVE,this.mouseLeave);
         §!!U§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.keyDown);
         §!!U§.stage.addEventListener(KeyboardEvent.KEY_UP,this.keyUp);
         this.§&]§ = getTimer();
      }
      
      public function mouseLeave(param1:Event) : void
      {
         if(§'E§())
         {
            §'E§().mouseLeave();
         }
      }
      
      public function keyDown(param1:KeyboardEvent) : void
      {
         if(§'E§())
         {
            §'E§().keyDown(param1);
         }
         §!!'§.keyDown(param1);
      }
      
      public function keyUp(param1:KeyboardEvent) : void
      {
         if(§'E§())
         {
            §'E§().keyUp(param1);
         }
      }
      
      public function onEnterFrame(param1:Event) : void
      {
         var _loc2_:Number = getTimer() - this.§&]§;
         this.§&]§ = getTimer();
         §'^§.§2Z§.update(_loc2_);
         var _loc3_:§^!!§ = new §^!!§(§^!!§.§&o§,_loc2_,param1.bubbles,param1.cancelable);
         this.§`!'§.dispatchEvent(_loc3_);
         §5<§.mouseMove(§!!U§.mouseX,§!!U§.mouseY);
         if(§&!k§())
         {
            return;
         }
         if(this.updateState(_loc2_) == §4!C§.§8s§)
         {
            §&!k§();
         }
      }
      
      override public function updateState(param1:Number) : int
      {
         var _loc2_:int = super.updateState(param1);
         if(§'E§().isGenericState())
         {
            if(_loc2_ == §4!C§.§8s§)
            {
               §!!U§.addChild(§5<§.activate());
               this.setFirstGameState();
            }
         }
         return _loc2_;
      }
      
      override protected function previousStateDeactivate() : void
      {
         §'^§.§2Z§.§2!$§();
      }
      
      public function setFirstGameState() : void
      {
         §<f§(static.§-!q§);
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
         this.§`!'§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         this.§`!'§.removeEventListener(param1,param2,param3);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return false;
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§`!'§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§`!'§.willTrigger(param1);
      }
   }
}
