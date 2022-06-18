package §@z§
{
   import §%t§.§9!X§;
   import §%t§.§@!%§;
   import §&!2§.§<!A§;
   import §-!O§.§&!1§;
   import §-!O§.§3!Y§;
   import §-!O§.§7!K§;
   import §-!O§.§7'§;
   import §1E§.§2^§;
   import §4x§.§"!X§;
   import §@k§.§5!D§;
   import §]!Y§.§4]§;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.utils.getTimer;
   
   public class §%>§ extends §3!Y§ implements IEventDispatcher
   {
      
      public static var §?O§:Number;
      
      public static var §8!M§:Number;
       
      
      public var §8!I§:Number;
      
      private var §5&§:EventDispatcher;
      
      public function §%>§(param1:§3u§, param2:DisplayObjectContainer, param3:XML, param4:XML)
      {
         var canvas:§3u§ = param1;
         var loadingScreen:DisplayObjectContainer = param2;
         var uiData:XML = param3;
         var assetData:XML = param4;
         this.§5&§ = new EventDispatcher();
         super(canvas);
         if(§8r§.stage)
         {
            this.init(loadingScreen,uiData,assetData);
         }
         else
         {
            §8r§.addEventListener(Event.ADDED_TO_STAGE,function(param1:Event):void
            {
               §8r§.removeEventListener(Event.ADDED_TO_STAGE,arguments.callee);
               init(loadingScreen,uiData,assetData);
            });
         }
      }
      
      protected function §%2§() : void
      {
         §2^§.init();
      }
      
      protected function init(param1:DisplayObjectContainer, param2:XML, param3:XML) : void
      {
         §<!A§.§?!V§(stage);
         §<!A§.§8!^§ = false;
         §@!%§.§0!"§(this.getVersionInfo());
         §@!%§.§ set§ = this.getVersionInfo();
         §7'§.§<!Q§ = §8r§.stage.loaderInfo.parameters;
         this.§%2§();
         §]M§(new §&!1§());
         var _loc4_:§7!K§ = this.initStateLoad();
         §]M§(_loc4_);
         _loc4_.§6;§(param1);
         _loc4_.§#_§(param3);
         §4]§.init(param2);
         if(§5!D§.§2n§())
         {
            §5!D§.§3!;§("serverConnectionError");
         }
         §?!-§(§7!K§.§@B§);
         this.§ c§();
      }
      
      protected function initStateLoad() : §7!K§
      {
         return new §7!K§(true,§7!K§.§@B§,this.getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      public function § c§() : void
      {
         §8r§.addEventListener(Event.ENTER_FRAME,this.§,!^§);
         §8r§.stage.addEventListener(Event.MOUSE_LEAVE,this.mouseLeave);
         §8r§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.keyDown);
         §8r§.stage.addEventListener(KeyboardEvent.KEY_UP,this.keyUp);
         this.§8!I§ = getTimer();
      }
      
      public function mouseLeave(param1:Event) : void
      {
         if(§;O§())
         {
            §;O§().mouseLeave();
         }
      }
      
      public function keyDown(param1:KeyboardEvent) : void
      {
         if(§;O§())
         {
            §;O§().keyDown(param1);
         }
         §@!%§.keyDown(param1);
      }
      
      public function keyUp(param1:KeyboardEvent) : void
      {
         if(§;O§())
         {
            §;O§().keyUp(param1);
         }
      }
      
      public function §,!^§(param1:Event) : void
      {
         var _loc2_:Number = getTimer() - this.§8!I§;
         this.§8!I§ = getTimer();
         §"!X§.§0E§.update(_loc2_);
         this.§5&§.dispatchEvent(param1);
         §9!X§.§-!8§(§8r§.mouseX,§8r§.mouseY);
         if(§]7§())
         {
            return;
         }
         if(this.updateState(_loc2_) == §7'§.STATE_STATUS_COMPLETED)
         {
            §]7§();
         }
      }
      
      override public function updateState(param1:Number) : int
      {
         var _loc2_:int = super.updateState(param1);
         if(§;O§().isGenericState())
         {
            if(_loc2_ == §7'§.STATE_STATUS_COMPLETED)
            {
               §8r§.addChild(§9!X§.activate());
               this.setFirstGameState();
            }
         }
         return _loc2_;
      }
      
      override protected function previousStateDeactivate() : void
      {
         §"!X§.§0E§.§]X§();
      }
      
      public function setFirstGameState() : void
      {
         §?!-§(§&!1§.§@B§);
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
         this.§5&§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         this.§5&§.removeEventListener(param1,param2,param3);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return false;
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§5&§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§5&§.willTrigger(param1);
      }
   }
}
