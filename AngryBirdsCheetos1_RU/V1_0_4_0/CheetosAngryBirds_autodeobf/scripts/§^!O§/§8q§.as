package §^!O§
{
   import § N§.§;]§;
   import § N§.§]M§;
   import §!$§.§!!O§;
   import §&h§.§'!A§;
   import §&h§.§+Y§;
   import §&h§.§-!B§;
   import §&h§.§3!§;
   import §,!A§.§+!2§;
   import §1z§.§?!F§;
   import §6!S§.§!<§;
   import §>!D§.§3Q§;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.utils.getTimer;
   
   public class §8q§ extends §'!A§ implements IEventDispatcher
   {
      
      public static var §0+§:Number;
      
      public static var §4?§:Number;
       
      
      public var §-R§:Number;
      
      private var §,§:EventDispatcher;
      
      public function §8q§(param1:§=!S§, param2:DisplayObjectContainer, param3:XML, param4:XML)
      {
         var canvas:§=!S§ = param1;
         var loadingScreen:DisplayObjectContainer = param2;
         var uiData:XML = param3;
         var assetData:XML = param4;
         this.§,§ = new EventDispatcher();
         super(canvas);
         if(§&"§.stage)
         {
            this.init(loadingScreen,uiData,assetData);
         }
         else
         {
            §&"§.addEventListener(Event.ADDED_TO_STAGE,function(param1:Event):void
            {
               §&"§.removeEventListener(Event.ADDED_TO_STAGE,arguments.callee);
               init(loadingScreen,uiData,assetData);
            });
         }
      }
      
      protected function §%! §() : void
      {
         §!!O§.init();
      }
      
      protected function init(param1:DisplayObjectContainer, param2:XML, param3:XML) : void
      {
         §?!F§.§5M§(stage);
         §?!F§.§<B§ = false;
         §]M§.§,!G§(this.getVersionInfo());
         §]M§.§&S§ = this.getVersionInfo();
         §+Y§.§;_§ = §&"§.stage.loaderInfo.parameters;
         this.§%! §();
         §2v§(new §3!§());
         var _loc4_:§-!B§ = this.initStateLoad();
         §2v§(_loc4_);
         _loc4_.§]!K§(param1);
         _loc4_.§ !K§(param3);
         §3Q§.init(param2);
         if(§+!2§.§`Q§())
         {
            §+!2§.§-_§("serverConnectionError");
         }
         §1V§(§-!B§.§+!a§);
         this.§<!T§();
      }
      
      protected function initStateLoad() : §-!B§
      {
         return new §-!B§(true,§-!B§.§+!a§,this.getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      public function §<!T§() : void
      {
         §&"§.addEventListener(Event.ENTER_FRAME,this.§[!Y§);
         §&"§.stage.addEventListener(Event.MOUSE_LEAVE,this.mouseLeave);
         §&"§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.keyDown);
         §&"§.stage.addEventListener(KeyboardEvent.KEY_UP,this.keyUp);
         this.§-R§ = getTimer();
      }
      
      public function mouseLeave(param1:Event) : void
      {
         if(§[!0§())
         {
            §[!0§().mouseLeave();
         }
      }
      
      public function keyDown(param1:KeyboardEvent) : void
      {
         if(§[!0§())
         {
            §[!0§().keyDown(param1);
         }
         §]M§.keyDown(param1);
      }
      
      public function keyUp(param1:KeyboardEvent) : void
      {
         if(§[!0§())
         {
            §[!0§().keyUp(param1);
         }
      }
      
      public function §[!Y§(param1:Event) : void
      {
         var _loc2_:Number = getTimer() - this.§-R§;
         this.§-R§ = getTimer();
         §!<§.§%b§.update(_loc2_);
         this.§,§.dispatchEvent(param1);
         §;]§.§=;§(§&"§.mouseX,§&"§.mouseY);
         if(§"!C§())
         {
            return;
         }
         if(this.updateState(_loc2_) == §+Y§.STATE_STATUS_COMPLETED)
         {
            §"!C§();
         }
      }
      
      override public function updateState(param1:Number) : int
      {
         var _loc2_:int = super.updateState(param1);
         if(§[!0§().isGenericState())
         {
            if(_loc2_ == §+Y§.STATE_STATUS_COMPLETED)
            {
               §&"§.addChild(§;]§.activate());
               this.setFirstGameState();
            }
         }
         return _loc2_;
      }
      
      override protected function previousStateDeactivate() : void
      {
         §!<§.§%b§.§+u§();
      }
      
      public function setFirstGameState() : void
      {
         §1V§(§3!§.§+!a§);
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
         this.§,§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         this.§,§.removeEventListener(param1,param2,param3);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return false;
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§,§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§,§.willTrigger(param1);
      }
   }
}
