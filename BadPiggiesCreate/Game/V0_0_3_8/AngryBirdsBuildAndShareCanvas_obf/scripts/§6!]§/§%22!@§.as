package §6!]§
{
   import §"!0§.§"!5§;
   import §%!k§.§=M§;
   import §+H§.§3",§;
   import §4u§.§9<§;
   import §4u§.§<!L§;
   import §6`§.§?!7§;
   import §>w§.§%!!§;
   import §>w§.§4E§;
   import §>w§.§=E§;
   import §>w§.§`!L§;
   import §?!V§.§"a§;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.utils.getTimer;
   
   public class §"!@§ extends §`!L§ implements IEventDispatcher
   {
      
      public static var §+!o§:Number;
      
      public static var §8!C§:Number;
       
      
      public var §@A§:Number;
      
      private var §@!C§:EventDispatcher;
      
      public function §"!@§(param1:§-d§, param2:DisplayObjectContainer, param3:XML, param4:XML)
      {
         var canvas:§-d§ = param1;
         var loadingScreen:DisplayObjectContainer = param2;
         var uiData:XML = param3;
         var assetData:XML = param4;
         this.§@!C§ = new EventDispatcher();
         super(canvas);
         if(§,W§.stage)
         {
            this.init(loadingScreen,uiData,assetData);
         }
         else
         {
            §,W§.addEventListener(Event.ADDED_TO_STAGE,function(param1:Event):void
            {
               §,W§.removeEventListener(Event.ADDED_TO_STAGE,arguments.callee);
               init(loadingScreen,uiData,assetData);
            });
         }
      }
      
      protected function §[J§() : void
      {
         §?!7§.init();
      }
      
      protected function init(param1:DisplayObjectContainer, param2:XML, param3:XML) : void
      {
         §3",§.initialize(stage);
         §3",§.§>![§ = false;
         §<!L§.§'!Q§(this.getVersionInfo());
         §<!L§.§8?§ = this.getVersionInfo();
         §4E§.§9C§ = §,W§.stage.loaderInfo.parameters;
         this.§[J§();
         §;r§(new §%!!§());
         var _loc4_:§=E§ = this.initStateLoad();
         §;r§(_loc4_);
         _loc4_.§]U§(param1);
         _loc4_.§0""§(param3);
         §"a§.init(param2);
         if(§=M§.§6!^§())
         {
            §=M§.§!3§("serverConnectionError");
         }
         §6?§(§=E§.§#!w§);
         this.§8!"§();
      }
      
      protected function initStateLoad() : §=E§
      {
         return new §=E§(true,§=E§.§#!w§,this.getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      public function §8!"§() : void
      {
         §,W§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         §,W§.stage.addEventListener(Event.MOUSE_LEAVE,this.mouseLeave);
         §,W§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.keyDown);
         §,W§.stage.addEventListener(KeyboardEvent.KEY_UP,this.keyUp);
         this.§@A§ = getTimer();
      }
      
      public function mouseLeave(param1:Event) : void
      {
         if(§ #§())
         {
            § #§().mouseLeave();
         }
      }
      
      public function keyDown(param1:KeyboardEvent) : void
      {
         if(§ #§())
         {
            § #§().keyDown(param1);
         }
         §<!L§.keyDown(param1);
      }
      
      public function keyUp(param1:KeyboardEvent) : void
      {
         if(§ #§())
         {
            § #§().keyUp(param1);
         }
      }
      
      public function onEnterFrame(param1:Event) : void
      {
         var _loc2_:Number = getTimer() - this.§@A§;
         this.§@A§ = getTimer();
         §"!5§.§9j§.update(_loc2_);
         this.§@!C§.dispatchEvent(param1);
         §9<§.§3!L§(§,W§.mouseX,§,W§.mouseY);
         if(§0v§())
         {
            return;
         }
         if(this.updateState(_loc2_) == §4E§.STATE_STATUS_COMPLETED)
         {
            §0v§();
         }
      }
      
      override public function updateState(param1:Number) : int
      {
         var _loc2_:int = super.updateState(param1);
         if(§ #§().isGenericState())
         {
            if(_loc2_ == §4E§.STATE_STATUS_COMPLETED)
            {
               §,W§.addChild(§9<§.activate());
               this.setFirstGameState();
            }
         }
         return _loc2_;
      }
      
      override protected function previousStateDeactivate() : void
      {
         §"!5§.§9j§.§0!f§();
      }
      
      public function setFirstGameState() : void
      {
         §6?§(§%!!§.§#!w§);
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
         this.§@!C§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         this.§@!C§.removeEventListener(param1,param2,param3);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return false;
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§@!C§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§@!C§.willTrigger(param1);
      }
   }
}
