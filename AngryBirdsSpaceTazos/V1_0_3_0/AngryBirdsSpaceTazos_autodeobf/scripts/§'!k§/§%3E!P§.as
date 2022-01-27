package §'!k§
{
   import §""=§.§&!M§;
   import §&!O§.§19§;
   import §+=§.§5h§;
   import §+k§.§7x§;
   import §6!C§.§6E§;
   import §6!C§.§8!T§;
   import §6O§.§+V§;
   import §6O§.§6!x§;
   import §6O§.§>R§;
   import §6O§.§@!w§;
   import §71§.§;l§;
   import §71§.§=!]§;
   import §9!U§.§@F§;
   import §>"!§.§@!9§;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.utils.getTimer;
   
   public class §>!P§ extends §@!w§ implements IEventDispatcher
   {
      
      public static var §-!`§:Number;
      
      public static var §;!2§:Number;
       
      
      public var §0!q§:Number;
      
      private var §^!x§:EventDispatcher;
      
      private var §3"%§:§;l§;
      
      public function §>!P§(param1:§"d§, param2:DisplayObjectContainer, param3:XML, param4:XML)
      {
         var canvas:§"d§ = param1;
         var loadingScreen:DisplayObjectContainer = param2;
         var uiData:XML = param3;
         var assetData:XML = param4;
         this.§^!x§ = new EventDispatcher();
         super(canvas);
         if(§"%§.stage)
         {
            this.init(loadingScreen,uiData,assetData);
         }
         else
         {
            §"%§.addEventListener(Event.ADDED_TO_STAGE,function(param1:Event):void
            {
               §"%§.removeEventListener(Event.ADDED_TO_STAGE,arguments.callee);
               init(loadingScreen,uiData,assetData);
            });
         }
      }
      
      public function get §2]§() : §;l§
      {
         return this.§3"%§;
      }
      
      protected function §[m§() : void
      {
         §@!9§.init();
      }
      
      protected function init(param1:DisplayObjectContainer, param2:XML, param3:XML) : void
      {
         this.§3"%§ = new §;l§(new §=!]§("en"));
         §19§.initialize(stage);
         §19§.§`M§ = false;
         §6E§.§%N§(this.getVersionInfo());
         §6E§.§7k§ = this.getVersionInfo();
         §6!x§.§]%§ = §"%§.stage.loaderInfo.parameters;
         this.§[m§();
         §,!B§(new §>R§(this.§2]§));
         var _loc4_:§+V§ = this.initStateLoad();
         §,!B§(_loc4_);
         _loc4_.setLoadingScreen(param1);
         _loc4_.§^!,§(param3);
         §7x§.init(param2);
         if(§&!M§.§2!7§())
         {
            §&!M§.§>3§("serverConnectionError");
         }
         §'Q§(§+V§.STATE_NAME);
         this.§=!5§();
      }
      
      protected function initStateLoad() : §+V§
      {
         return new §+V§(this.§2]§,true,§+V§.STATE_NAME,this.getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      public function §=!5§() : void
      {
         §"%§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         §"%§.stage.addEventListener(Event.MOUSE_LEAVE,this.mouseLeave);
         §"%§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.keyDown);
         §"%§.stage.addEventListener(KeyboardEvent.KEY_UP,this.keyUp);
         this.§0!q§ = getTimer();
      }
      
      public function mouseLeave(param1:Event) : void
      {
         if(§'B§())
         {
            §'B§().mouseLeave();
         }
      }
      
      public function keyDown(param1:KeyboardEvent) : void
      {
         if(§'B§())
         {
            §'B§().keyDown(param1);
         }
         §6E§.keyDown(param1);
      }
      
      public function keyUp(param1:KeyboardEvent) : void
      {
         if(§'B§())
         {
            §'B§().keyUp(param1);
         }
      }
      
      public function onEnterFrame(param1:Event) : void
      {
         var _loc2_:Number = getTimer() - this.§0!q§;
         this.§0!q§ = getTimer();
         §@F§.§8!J§.update(_loc2_);
         var _loc3_:§5h§ = new §5h§(§5h§.§ P§,_loc2_,param1.bubbles,param1.cancelable);
         this.§^!x§.dispatchEvent(_loc3_);
         §8!T§.§9"G§(§"%§.mouseX,§"%§.mouseY);
         if(§1!c§())
         {
            return;
         }
         if(this.updateState(_loc2_) == §6!x§.§>!Y§)
         {
            §1!c§();
         }
      }
      
      override public function updateState(param1:Number) : int
      {
         var _loc2_:int = super.updateState(param1);
         if(§'B§().isGenericState())
         {
            if(_loc2_ == §6!x§.§>!Y§)
            {
               §"%§.addChild(§8!T§.activate());
               this.setFirstGameState();
            }
         }
         return _loc2_;
      }
      
      override protected function previousStateDeactivate() : void
      {
         §@F§.§8!J§.§;6§();
      }
      
      public function setFirstGameState() : void
      {
         §'Q§(§>R§.STATE_NAME);
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
         this.§^!x§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         this.§^!x§.removeEventListener(param1,param2,param3);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return false;
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§^!x§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§^!x§.willTrigger(param1);
      }
   }
}
