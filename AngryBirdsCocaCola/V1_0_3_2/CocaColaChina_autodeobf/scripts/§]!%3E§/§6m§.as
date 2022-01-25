package §]!>§
{
   import § !9§.§'!U§;
   import §!!L§.§!"§;
   import §!!L§.§&!R§;
   import §!!L§.§9F§;
   import §!!L§.§[!C§;
   import §+!Z§.§=!2§;
   import §3!`§.§8h§;
   import §5L§.§-<§;
   import §6!Q§.§7!7§;
   import §6!Q§.§;!I§;
   import §>!8§.§71§;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.utils.getTimer;
   
   public class §6m§ extends §[!C§ implements IEventDispatcher
   {
      
      public static var § !6§:Number;
      
      public static var §!!-§:Number;
       
      
      public var §1!8§:Number;
      
      private var §]!c§:EventDispatcher;
      
      public function §6m§(param1:§&"§, param2:DisplayObjectContainer, param3:XML, param4:XML)
      {
         var canvas:§&"§ = param1;
         var loadingScreen:DisplayObjectContainer = param2;
         var uiData:XML = param3;
         var assetData:XML = param4;
         this.§]!c§ = new EventDispatcher();
         super(canvas);
         if(§#R§.stage)
         {
            this.init(loadingScreen,uiData,assetData);
         }
         else
         {
            §#R§.addEventListener(Event.ADDED_TO_STAGE,function(param1:Event):void
            {
               §#R§.removeEventListener(Event.ADDED_TO_STAGE,arguments.callee);
               init(loadingScreen,uiData,assetData);
            });
         }
      }
      
      protected function §]!2§() : void
      {
         §'!U§.init();
      }
      
      protected function init(param1:DisplayObjectContainer, param2:XML, param3:XML) : void
      {
         §-<§.§4"§(stage);
         §-<§.§1!A§ = true;
         §7!7§.§&!C§(this.getVersionInfo());
         §&!R§.§>!;§ = §#R§.stage.loaderInfo.parameters;
         this.§]!2§();
         §'!K§(new §!"§());
         var _loc4_:§9F§ = this.initStateLoad();
         §'!K§(_loc4_);
         _loc4_.§-!B§(param1);
         _loc4_.§9+§(param3);
         §71§.init(param2);
         if(§=!2§.§`!§())
         {
            §=!2§.§@f§("serverConnectionError");
         }
         §!d§(§9F§.§'2§);
         this.§9B§();
      }
      
      protected function initStateLoad() : §9F§
      {
         return new §9F§(true,§9F§.§'2§,this.getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      public function §9B§() : void
      {
         §#R§.addEventListener(Event.ENTER_FRAME,this.§#@§);
         §#R§.stage.addEventListener(Event.MOUSE_LEAVE,this.mouseLeave);
         §#R§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.keyDown);
         §#R§.stage.addEventListener(KeyboardEvent.KEY_UP,this.keyUp);
         this.§1!8§ = getTimer();
      }
      
      public function mouseLeave(param1:Event) : void
      {
         if(§8D§())
         {
            §8D§().mouseLeave();
         }
      }
      
      public function keyDown(param1:KeyboardEvent) : void
      {
         if(§8D§())
         {
            §8D§().keyDown(param1);
         }
         §7!7§.keyDown(param1);
      }
      
      public function keyUp(param1:KeyboardEvent) : void
      {
         if(§8D§())
         {
            §8D§().keyUp(param1);
         }
      }
      
      public function §#@§(param1:Event) : void
      {
         var _loc2_:Number = getTimer() - this.§1!8§;
         this.§1!8§ = getTimer();
         §8h§.§`G§.update(_loc2_);
         this.§]!c§.dispatchEvent(param1);
         §;!I§.§2U§(§#R§.mouseX,§#R§.mouseY);
         if(§2?§())
         {
            return;
         }
         if(this.updateState(_loc2_) == §&!R§.STATE_STATUS_COMPLETED)
         {
            §2?§();
         }
      }
      
      override public function updateState(param1:Number) : int
      {
         var _loc2_:int = super.updateState(param1);
         if(§8D§().isGenericState())
         {
            if(_loc2_ == §&!R§.STATE_STATUS_COMPLETED)
            {
               §#R§.addChild(§;!I§.activate());
               this.setFirstGameState();
            }
         }
         return _loc2_;
      }
      
      override protected function previousStateDeactivate() : void
      {
         §8h§.§`G§.§;+§();
      }
      
      public function setFirstGameState() : void
      {
         §!d§(§!"§.§'2§);
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
         this.§]!c§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         this.§]!c§.removeEventListener(param1,param2,param3);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return false;
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§]!c§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§]!c§.willTrigger(param1);
      }
   }
}
