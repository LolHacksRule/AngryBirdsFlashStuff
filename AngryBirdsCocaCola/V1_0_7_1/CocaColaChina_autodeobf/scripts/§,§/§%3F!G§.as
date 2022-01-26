package §,§
{
   import § 3§.§5!E§;
   import §%!G§.§-h§;
   import §,!0§.§-4§;
   import §6!@§.§ !!§;
   import §6!@§.§4!V§;
   import §6!@§.§7!§;
   import §6!@§.§[!8§;
   import §7m§.§7I§;
   import §?@§.§ !,§;
   import §?@§.§"]§;
   import §[!=§.§!!K§;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.utils.getTimer;
   
   public class §?!G§ extends §4!V§ implements IEventDispatcher
   {
      
      public static var §=1§:Number;
      
      public static var §&H§:Number;
       
      
      public var §#!A§:Number;
      
      private var §implements§:EventDispatcher;
      
      public function §?!G§(param1:§!!I§, param2:DisplayObjectContainer, param3:XML, param4:XML)
      {
         var canvas:§!!I§ = param1;
         var loadingScreen:DisplayObjectContainer = param2;
         var uiData:XML = param3;
         var assetData:XML = param4;
         this.§implements§ = new EventDispatcher();
         super(canvas);
         if(§;!Y§.stage)
         {
            this.init(loadingScreen,uiData,assetData);
         }
         else
         {
            §;!Y§.addEventListener(Event.ADDED_TO_STAGE,function(param1:Event):void
            {
               §;!Y§.removeEventListener(Event.ADDED_TO_STAGE,arguments.callee);
               init(loadingScreen,uiData,assetData);
            });
         }
      }
      
      protected function §10§() : void
      {
         §7I§.init();
      }
      
      protected function init(param1:DisplayObjectContainer, param2:XML, param3:XML) : void
      {
         §5!E§.§1!b§(stage);
         §5!E§.§7`§ = true;
         §"]§.§!G§(this.getVersionInfo());
         § !!§.§<!5§ = §;!Y§.stage.loaderInfo.parameters;
         this.§10§();
         §7!E§(new §7!§());
         var _loc4_:§[!8§ = this.initStateLoad();
         §7!E§(_loc4_);
         _loc4_.§"!F§(param1);
         _loc4_.§1!K§(param3);
         §-h§.init(param2);
         if(§-4§.§8f§())
         {
            §-4§.§&[§("serverConnectionError");
         }
         §3!9§(§[!8§.§^6§);
         this.§5J§();
      }
      
      protected function initStateLoad() : §[!8§
      {
         return new §[!8§(true,§[!8§.§^6§,this.getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      public function §5J§() : void
      {
         §;!Y§.addEventListener(Event.ENTER_FRAME,this.§;9§);
         §;!Y§.stage.addEventListener(Event.MOUSE_LEAVE,this.mouseLeave);
         §;!Y§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.keyDown);
         §;!Y§.stage.addEventListener(KeyboardEvent.KEY_UP,this.keyUp);
         this.§#!A§ = getTimer();
      }
      
      public function mouseLeave(param1:Event) : void
      {
         if(§&!Y§())
         {
            §&!Y§().mouseLeave();
         }
      }
      
      public function keyDown(param1:KeyboardEvent) : void
      {
         if(§&!Y§())
         {
            §&!Y§().keyDown(param1);
         }
         §"]§.keyDown(param1);
      }
      
      public function keyUp(param1:KeyboardEvent) : void
      {
         if(§&!Y§())
         {
            §&!Y§().keyUp(param1);
         }
      }
      
      public function §;9§(param1:Event) : void
      {
         var _loc2_:Number = getTimer() - this.§#!A§;
         this.§#!A§ = getTimer();
         §!!K§.§'!C§.update(_loc2_);
         this.§implements§.dispatchEvent(param1);
         § !,§.§0!S§(§;!Y§.mouseX,§;!Y§.mouseY);
         if(§1!2§())
         {
            return;
         }
         if(this.updateState(_loc2_) == § !!§.STATE_STATUS_COMPLETED)
         {
            §1!2§();
         }
      }
      
      override public function updateState(param1:Number) : int
      {
         var _loc2_:int = super.updateState(param1);
         if(§&!Y§().isGenericState())
         {
            if(_loc2_ == § !!§.STATE_STATUS_COMPLETED)
            {
               §;!Y§.addChild(§ !,§.activate());
               this.setFirstGameState();
            }
         }
         return _loc2_;
      }
      
      override protected function previousStateDeactivate() : void
      {
         §!!K§.§'!C§.§'X§();
      }
      
      public function setFirstGameState() : void
      {
         §3!9§(§7!§.§^6§);
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
         this.§implements§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         this.§implements§.removeEventListener(param1,param2,param3);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return false;
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§implements§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§implements§.willTrigger(param1);
      }
   }
}
