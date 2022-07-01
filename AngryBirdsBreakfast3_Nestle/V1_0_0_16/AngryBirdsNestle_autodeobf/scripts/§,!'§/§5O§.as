package §,!'§
{
   import §!""§.§1=§;
   import §,M§.§+f§;
   import §,M§.§8"&§;
   import §1`§.§7I§;
   import §2!&§.§+h§;
   import §24§.;
   import §24§.§=!L§;
   import §37§.§4=§;
   import §37§.§9!c§;
   import §37§.§>n§;
   import §37§.§?!r§;
   import §;g§.§0!o§;
   import §@!^§.§<!?§;
   import §[!Z§.§>D§;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.utils.getTimer;
   
   public class §5O§ extends §>n§ implements IEventDispatcher
   {
      
      public static var §5!k§:Number;
      
      public static var §!O§:Number;
       
      
      public var §@J§:Number;
      
      private var §=%§:EventDispatcher;
      
      private var §8&§:§+f§;
      
      public function §5O§(param1:§6!L§, param2:DisplayObjectContainer, param3:XML, param4:XML)
      {
         var canvas:§6!L§ = param1;
         var loadingScreen:DisplayObjectContainer = param2;
         var uiData:XML = param3;
         var assetData:XML = param4;
         this.§=%§ = new EventDispatcher();
         super(canvas);
         if(§-!x§.stage)
         {
            this.init(loadingScreen,uiData,assetData);
         }
         else
         {
            §-!x§.addEventListener(Event.ADDED_TO_STAGE,function(param1:Event):void
            {
               §-!x§.removeEventListener(Event.ADDED_TO_STAGE,arguments.callee);
               init(loadingScreen,uiData,assetData);
            });
         }
      }
      
      public function get §,$§() : §+f§
      {
         return this.§8&§;
      }
      
      protected function §2!`§() : void
      {
         §>D§.init();
      }
      
      protected function init(param1:DisplayObjectContainer, param2:XML, param3:XML) : void
      {
         this.§8&§ = new §+f§(new §8"&§("en"));
         §<!?§.initialize(stage);
         §<!?§.§;!G§ = false;
         §#7§.§>j§(this.getVersionInfo());
         §#7§.§=d§ = this.getVersionInfo();
         §9!c§.§^!y§ = §-!x§.stage.loaderInfo.parameters;
         this.§2!`§();
         §1""§(new §?!r§(this.§,$§));
         var _loc4_:§4=§ = this.initStateLoad();
         §1""§(_loc4_);
         _loc4_.setLoadingScreen(param1);
         _loc4_.§^'§(param3);
         §7I§.init(param2);
         if(§+h§.§#",§())
         {
            §+h§.§2!W§("serverConnectionError");
         }
         §7"6§(§4=§.§8"%§);
         this.§`"%§();
      }
      
      protected function initStateLoad() : §4=§
      {
         return new §4=§(this.§,$§,true,§4=§.§8"%§,this.getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      public function §`"%§() : void
      {
         §-!x§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         §-!x§.stage.addEventListener(Event.MOUSE_LEAVE,this.mouseLeave);
         §-!x§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.keyDown);
         §-!x§.stage.addEventListener(KeyboardEvent.KEY_UP,this.keyUp);
         this.§@J§ = getTimer();
      }
      
      public function mouseLeave(param1:Event) : void
      {
         if(§-!w§())
         {
            §-!w§().mouseLeave();
         }
      }
      
      public function keyDown(param1:KeyboardEvent) : void
      {
         if(§-!w§())
         {
            §-!w§().keyDown(param1);
         }
         §#7§.keyDown(param1);
      }
      
      public function keyUp(param1:KeyboardEvent) : void
      {
         if(§-!w§())
         {
            §-!w§().keyUp(param1);
         }
      }
      
      public function onEnterFrame(param1:Event) : void
      {
         var _loc2_:Number = getTimer() - this.§@J§;
         this.§@J§ = getTimer();
         §0!o§.§,2§.update(_loc2_);
         var _loc3_:§1=§ = new §1=§(§1=§.§]!l§,_loc2_,param1.bubbles,param1.cancelable);
         this.§=%§.dispatchEvent(_loc3_);
         §=!L§.mouseMove(§-!x§.mouseX,§-!x§.mouseY);
         if(§6!;§())
         {
            return;
         }
         if(this.updateState(_loc2_) == §9!c§.§6+§)
         {
            §6!;§();
         }
      }
      
      override public function updateState(param1:Number) : int
      {
         var _loc2_:int = super.updateState(param1);
         if(§-!w§().isGenericState())
         {
            if(_loc2_ == §9!c§.§6+§)
            {
               §-!x§.addChild(§=!L§.activate());
               this.setFirstGameState();
            }
         }
         return _loc2_;
      }
      
      override protected function previousStateDeactivate() : void
      {
         §0!o§.§,2§.§<!q§();
      }
      
      public function setFirstGameState() : void
      {
         §7"6§(§?!r§.§8"%§);
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
         this.§=%§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         this.§=%§.removeEventListener(param1,param2,param3);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return false;
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§=%§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§=%§.willTrigger(param1);
      }
   }
}
