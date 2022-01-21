package §"!C§
{
   import §-!#§.§5!6§;
   import §3l§.§9m§;
   import §9!8§.§8n§;
   import §]!A§.§1!f§;
   import §^5§.§;!7§;
   import §^5§.§<!R§;
   import §^5§.§@!8§;
   import §^5§.§]!,§;
   import §^O§.§7m§;
   import §`!W§.§'"§;
   import §`!W§.§2v§;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.utils.getTimer;
   
   public class §8?§ extends §<!R§ implements IEventDispatcher
   {
      
      public static var §@!R§:Number;
      
      public static var §=z§:Number;
       
      
      public var §9=§:Number;
      
      private var §2]§:EventDispatcher;
      
      public function §8?§(param1:§9>§, param2:DisplayObjectContainer, param3:XML, param4:XML)
      {
         var canvas:§9>§ = param1;
         var loadingScreen:DisplayObjectContainer = param2;
         var uiData:XML = param3;
         var assetData:XML = param4;
         this.§2]§ = new EventDispatcher();
         super(canvas);
         if(§'!0§.stage)
         {
            this.init(loadingScreen,uiData,assetData);
         }
         else
         {
            §'!0§.addEventListener(Event.ADDED_TO_STAGE,function(param1:Event):void
            {
               §'!0§.removeEventListener(Event.ADDED_TO_STAGE,arguments.callee);
               init(loadingScreen,uiData,assetData);
            });
         }
      }
      
      protected function §5K§() : void
      {
         §5!6§.init();
      }
      
      protected function init(param1:DisplayObjectContainer, param2:XML, param3:XML) : void
      {
         §7m§.initialize(stage);
         §7m§.§catch§ = false;
         §2v§.§3!e§(this.getVersionInfo());
         §2v§.§%S§ = this.getVersionInfo();
         §]!,§.§=!@§ = §'!0§.stage.loaderInfo.parameters;
         this.§5K§();
         §<&§(new §;!7§());
         var _loc4_:§@!8§ = this.initStateLoad();
         §<&§(_loc4_);
         _loc4_.§]!U§(param1);
         _loc4_.§@y§(param3);
         §8n§.init(param2);
         if(§1!f§.§&s§())
         {
            §1!f§.§63§("serverConnectionError");
         }
         §^!Z§(§@!8§.§<P§);
         this.§7x§();
      }
      
      protected function initStateLoad() : §@!8§
      {
         return new §@!8§(true,§@!8§.§<P§,this.getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      public function §7x§() : void
      {
         §'!0§.addEventListener(Event.ENTER_FRAME,this.§1%§);
         §'!0§.stage.addEventListener(Event.MOUSE_LEAVE,this.mouseLeave);
         §'!0§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.keyDown);
         §'!0§.stage.addEventListener(KeyboardEvent.KEY_UP,this.keyUp);
         this.§9=§ = getTimer();
      }
      
      public function mouseLeave(param1:Event) : void
      {
         if(§]!d§())
         {
            §]!d§().mouseLeave();
         }
      }
      
      public function keyDown(param1:KeyboardEvent) : void
      {
         if(§]!d§())
         {
            §]!d§().keyDown(param1);
         }
         §2v§.keyDown(param1);
      }
      
      public function keyUp(param1:KeyboardEvent) : void
      {
         if(§]!d§())
         {
            §]!d§().keyUp(param1);
         }
      }
      
      public function §1%§(param1:Event) : void
      {
         var _loc2_:Number = getTimer() - this.§9=§;
         this.§9=§ = getTimer();
         §9m§.§>E§.update(_loc2_);
         this.§2]§.dispatchEvent(param1);
         §'"§.§,!K§(§'!0§.mouseX,§'!0§.mouseY);
         if(§2!2§())
         {
            return;
         }
         if(this.updateState(_loc2_) == §]!,§.STATE_STATUS_COMPLETED)
         {
            §2!2§();
         }
      }
      
      override public function updateState(param1:Number) : int
      {
         var _loc2_:int = super.updateState(param1);
         if(§]!d§().isGenericState())
         {
            if(_loc2_ == §]!,§.STATE_STATUS_COMPLETED)
            {
               §'!0§.addChild(§'"§.activate());
               this.setFirstGameState();
            }
         }
         return _loc2_;
      }
      
      override protected function previousStateDeactivate() : void
      {
         §9m§.§>E§.§%!;§();
      }
      
      public function setFirstGameState() : void
      {
         §^!Z§(§;!7§.§<P§);
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
         this.§2]§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         this.§2]§.removeEventListener(param1,param2,param3);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return false;
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§2]§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§2]§.willTrigger(param1);
      }
   }
}
