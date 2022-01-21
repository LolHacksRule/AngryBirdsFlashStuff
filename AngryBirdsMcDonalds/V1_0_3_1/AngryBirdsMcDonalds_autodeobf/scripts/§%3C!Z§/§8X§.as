package §<!Z§
{
   import §%!B§.§`+§;
   import §&!V§.§2!§;
   import §&!V§.§4!V§;
   import §&!V§.§=O§;
   import §&!V§.§^z§;
   import §3g§.§%E§;
   import §5K§.§6]§;
   import §5K§.§[C§;
   import §?!g§.§ !d§;
   import §`!"§.§;i§;
   import §`p§.§%!G§;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.utils.getTimer;
   
   public class §8X§ extends §^z§ implements IEventDispatcher
   {
      
      public static var §>G§:Number;
      
      public static var §%!e§:Number;
       
      
      public var §#p§:Number;
      
      private var §^&§:EventDispatcher;
      
      public function §8X§(param1:§,H§, param2:DisplayObjectContainer, param3:XML, param4:XML)
      {
         var canvas:§,H§ = param1;
         var loadingScreen:DisplayObjectContainer = param2;
         var uiData:XML = param3;
         var assetData:XML = param4;
         this.§^&§ = new EventDispatcher();
         super(canvas);
         if(§,!6§.stage)
         {
            this.init(loadingScreen,uiData,assetData);
         }
         else
         {
            §,!6§.addEventListener(Event.ADDED_TO_STAGE,function(param1:Event):void
            {
               §,!6§.removeEventListener(Event.ADDED_TO_STAGE,arguments.callee);
               init(loadingScreen,uiData,assetData);
            });
         }
      }
      
      protected function §>!>§() : void
      {
         § !d§.init();
      }
      
      protected function init(param1:DisplayObjectContainer, param2:XML, param3:XML) : void
      {
         §%!G§.initialize(stage);
         §%!G§.§%!&§ = false;
         §[C§.§-!'§(this.getVersionInfo());
         §[C§.§[H§ = this.getVersionInfo();
         §=O§.§-!0§ = §,!6§.stage.loaderInfo.parameters;
         this.§>!>§();
         §%!7§(new §4!V§());
         var _loc4_:§2!§ = this.initStateLoad();
         §%!7§(_loc4_);
         _loc4_.§`!R§(param1);
         _loc4_.§]!I§(param3);
         §%E§.init(param2);
         if(§`+§.§5!X§())
         {
            §`+§.§3G§("serverConnectionError");
         }
         §>R§(§2!§.§<@§);
         this.§#h§();
      }
      
      protected function initStateLoad() : §2!§
      {
         return new §2!§(true,§2!§.§<@§,this.getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      public function §#h§() : void
      {
         §,!6§.addEventListener(Event.ENTER_FRAME,this.§0W§);
         §,!6§.stage.addEventListener(Event.MOUSE_LEAVE,this.mouseLeave);
         §,!6§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.keyDown);
         §,!6§.stage.addEventListener(KeyboardEvent.KEY_UP,this.keyUp);
         this.§#p§ = getTimer();
      }
      
      public function mouseLeave(param1:Event) : void
      {
         if(§,y§())
         {
            §,y§().mouseLeave();
         }
      }
      
      public function keyDown(param1:KeyboardEvent) : void
      {
         if(§,y§())
         {
            §,y§().keyDown(param1);
         }
         §[C§.keyDown(param1);
      }
      
      public function keyUp(param1:KeyboardEvent) : void
      {
         if(§,y§())
         {
            §,y§().keyUp(param1);
         }
      }
      
      public function §0W§(param1:Event) : void
      {
         var _loc2_:Number = getTimer() - this.§#p§;
         this.§#p§ = getTimer();
         §;i§.§@!7§.update(_loc2_);
         this.§^&§.dispatchEvent(param1);
         §6]§.§ K§(§,!6§.mouseX,§,!6§.mouseY);
         if(§[!]§())
         {
            return;
         }
         if(this.updateState(_loc2_) == §=O§.STATE_STATUS_COMPLETED)
         {
            §[!]§();
         }
      }
      
      override public function updateState(param1:Number) : int
      {
         var _loc2_:int = super.updateState(param1);
         if(§,y§().isGenericState())
         {
            if(_loc2_ == §=O§.STATE_STATUS_COMPLETED)
            {
               §,!6§.addChild(§6]§.activate());
               this.setFirstGameState();
            }
         }
         return _loc2_;
      }
      
      override protected function previousStateDeactivate() : void
      {
         §;i§.§@!7§.§;?§();
      }
      
      public function setFirstGameState() : void
      {
         §>R§(§4!V§.§<@§);
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
         this.§^&§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         this.§^&§.removeEventListener(param1,param2,param3);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return false;
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§^&§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§^&§.willTrigger(param1);
      }
   }
}
