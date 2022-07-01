package §6!^§
{
   import § ,§.§+!_§;
   import § ,§.§>u§;
   import §"r§.§"]§;
   import §"r§.§"j§;
   import §"r§.§'!j§;
   import §"r§.§48§;
   import §&M§.§^!A§;
   import §0!$§.§#!-§;
   import §0!$§.§4!Z§;
   import §6t§.§3`§;
   import §8,§.§?J§;
   import §@!6§.§3!5§;
   import §['§.§%"4§;
   import §^!`§.§#p§;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.utils.getTimer;
   
   public class §1!7§ extends §48§ implements IEventDispatcher
   {
      
      public static var §#@§:Number;
      
      public static var §9W§:Number;
       
      
      public var §7!?§:Number;
      
      private var §>V§:EventDispatcher;
      
      private var §2e§:§>u§;
      
      public function §1!7§(param1:§>m§, param2:DisplayObjectContainer, param3:XML, param4:XML)
      {
         var canvas:§>m§ = param1;
         var loadingScreen:DisplayObjectContainer = param2;
         var uiData:XML = param3;
         var assetData:XML = param4;
         this.§>V§ = new EventDispatcher();
         super(canvas);
         if(§?"5§.stage)
         {
            this.init(loadingScreen,uiData,assetData);
         }
         else
         {
            §?"5§.addEventListener(Event.ADDED_TO_STAGE,function(param1:Event):void
            {
               §?"5§.removeEventListener(Event.ADDED_TO_STAGE,arguments.callee);
               init(loadingScreen,uiData,assetData);
            });
         }
      }
      
      public function get §<u§() : §>u§
      {
         return this.§2e§;
      }
      
      protected function §8!g§() : void
      {
         §3!5§.init();
      }
      
      protected function init(param1:DisplayObjectContainer, param2:XML, param3:XML) : void
      {
         this.§2e§ = new §>u§(new §+!_§("en"));
         §%"4§.initialize(stage);
         §%"4§.§ u§ = false;
         §#!-§.§,!2§(this.getVersionInfo());
         §#!-§.§8!E§ = this.getVersionInfo();
         §"j§.§5!+§ = §?"5§.stage.loaderInfo.parameters;
         this.§8!g§();
         §`1§(new §"]§(this.§<u§));
         var _loc4_:§'!j§ = this.initStateLoad();
         §`1§(_loc4_);
         _loc4_.setLoadingScreen(param1);
         _loc4_.§-z§(param3);
         §#p§.init(param2);
         if(§^!A§.§9!W§())
         {
            §^!A§.§0!@§("serverConnectionError");
         }
         §?n§(§'!j§.§7w§);
         this.§3g§();
      }
      
      protected function initStateLoad() : §'!j§
      {
         return new §'!j§(this.§<u§,true,§'!j§.§7w§,this.getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      public function §3g§() : void
      {
         §?"5§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         §?"5§.stage.addEventListener(Event.MOUSE_LEAVE,this.mouseLeave);
         §?"5§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.keyDown);
         §?"5§.stage.addEventListener(KeyboardEvent.KEY_UP,this.keyUp);
         this.§7!?§ = getTimer();
      }
      
      public function mouseLeave(param1:Event) : void
      {
         if(§2m§())
         {
            §2m§().mouseLeave();
         }
      }
      
      public function keyDown(param1:KeyboardEvent) : void
      {
         if(§2m§())
         {
            §2m§().keyDown(param1);
         }
         §#!-§.keyDown(param1);
      }
      
      public function keyUp(param1:KeyboardEvent) : void
      {
         if(§2m§())
         {
            §2m§().keyUp(param1);
         }
      }
      
      public function onEnterFrame(param1:Event) : void
      {
         var _loc2_:Number = getTimer() - this.§7!?§;
         this.§7!?§ = getTimer();
         §3`§.§<"5§.update(_loc2_);
         var _loc3_:§?J§ = new §?J§(§?J§.§0H§,_loc2_,param1.bubbles,param1.cancelable);
         this.§>V§.dispatchEvent(_loc3_);
         §4!Z§.mouseMove(§?"5§.mouseX,§?"5§.mouseY);
         if(§!0§())
         {
            return;
         }
         if(this.updateState(_loc2_) == §"j§.§-!2§)
         {
            §!0§();
         }
      }
      
      override public function updateState(param1:Number) : int
      {
         var _loc2_:int = super.updateState(param1);
         if(§2m§().isGenericState())
         {
            if(_loc2_ == §"j§.§-!2§)
            {
               §?"5§.addChild(§4!Z§.activate());
               this.setFirstGameState();
            }
         }
         return _loc2_;
      }
      
      override protected function previousStateDeactivate() : void
      {
         §3`§.§<"5§.§;!K§();
      }
      
      public function setFirstGameState() : void
      {
         §?n§(§"]§.§7w§);
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
         this.§>V§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         this.§>V§.removeEventListener(param1,param2,param3);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return false;
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§>V§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§>V§.willTrigger(param1);
      }
   }
}
