package §`2§
{
   import § =§.§ x§;
   import § =§.§,!R§;
   import § =§.§5!2§;
   import § =§.§?!V§;
   import §!4§.§%!]§;
   import §!4§.§=!Z§;
   import §'Y§.§"!J§;
   import §+k§.§+!&§;
   import §,!E§.§>3§;
   import §;C§.§5!O§;
   import §`y§.§4!T§;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.utils.getTimer;
   
   public class §>Z§ extends §5!2§ implements IEventDispatcher
   {
      
      public static var §+!P§:Number;
      
      public static var §^q§:Number;
       
      
      public var §5%§:Number;
      
      private var §>0§:EventDispatcher;
      
      public function §>Z§(param1:§ if§, param2:DisplayObjectContainer, param3:XML, param4:XML)
      {
         var canvas:§ if§ = param1;
         var loadingScreen:DisplayObjectContainer = param2;
         var uiData:XML = param3;
         var assetData:XML = param4;
         this.§>0§ = new EventDispatcher();
         super(canvas);
         if(§,$§.stage)
         {
            this.init(loadingScreen,uiData,assetData);
         }
         else
         {
            §,$§.addEventListener(Event.ADDED_TO_STAGE,function(param1:Event):void
            {
               §,$§.removeEventListener(Event.ADDED_TO_STAGE,arguments.callee);
               init(loadingScreen,uiData,assetData);
            });
         }
      }
      
      protected function §[!B§() : void
      {
         §5!O§.init();
      }
      
      protected function init(param1:DisplayObjectContainer, param2:XML, param3:XML) : void
      {
         §>3§.§]!^§(stage);
         §>3§.§;8§ = false;
         §=!Z§.§=3§(this.getVersionInfo());
         § x§.§+!-§ = §,$§.stage.loaderInfo.parameters;
         this.§[!B§();
         §4!K§(new §?!V§());
         var _loc4_:§,!R§ = this.initStateLoad();
         §4!K§(_loc4_);
         _loc4_.§'!<§(param1);
         _loc4_.§?q§(param3);
         §"!J§.init(param2);
         if(§4!T§.§`N§())
         {
            §4!T§.§3!B§("serverConnectionError");
         }
         §?!#§(§,!R§.§="§);
         this.§@!`§();
      }
      
      protected function initStateLoad() : §,!R§
      {
         return new §,!R§(true,§,!R§.§="§,this.getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      public function §@!`§() : void
      {
         §,$§.addEventListener(Event.ENTER_FRAME,this.§!!^§);
         §,$§.stage.addEventListener(Event.MOUSE_LEAVE,this.mouseLeave);
         §,$§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.keyDown);
         §,$§.stage.addEventListener(KeyboardEvent.KEY_UP,this.keyUp);
         this.§5%§ = getTimer();
      }
      
      public function mouseLeave(param1:Event) : void
      {
         if(§>t§())
         {
            §>t§().mouseLeave();
         }
      }
      
      public function keyDown(param1:KeyboardEvent) : void
      {
         if(§>t§())
         {
            §>t§().keyDown(param1);
         }
         §=!Z§.keyDown(param1);
      }
      
      public function keyUp(param1:KeyboardEvent) : void
      {
         if(§>t§())
         {
            §>t§().keyUp(param1);
         }
      }
      
      public function §!!^§(param1:Event) : void
      {
         var _loc2_:Number = getTimer() - this.§5%§;
         this.§5%§ = getTimer();
         §+!&§.§,§.update(_loc2_);
         this.§>0§.dispatchEvent(param1);
         §%!]§.§4>§(§,$§.mouseX,§,$§.mouseY);
         if(§!!P§())
         {
            return;
         }
         if(this.updateState(_loc2_) == § x§.STATE_STATUS_COMPLETED)
         {
            §!!P§();
         }
      }
      
      override public function updateState(param1:Number) : int
      {
         var _loc2_:int = super.updateState(param1);
         if(§>t§().isGenericState())
         {
            if(_loc2_ == § x§.STATE_STATUS_COMPLETED)
            {
               §,$§.addChild(§%!]§.activate());
               this.setFirstGameState();
            }
         }
         return _loc2_;
      }
      
      override protected function previousStateDeactivate() : void
      {
         §+!&§.§,§.§@!,§();
      }
      
      public function setFirstGameState() : void
      {
         §?!#§(§?!V§.§="§);
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
         this.§>0§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         this.§>0§.removeEventListener(param1,param2,param3);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return false;
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§>0§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§>0§.willTrigger(param1);
      }
   }
}
