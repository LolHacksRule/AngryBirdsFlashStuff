package §0P§
{
   import §"!G§.§3!f§;
   import §"!G§.§8f§;
   import §53§.§6!u§;
   import §5<§.§8!1§;
   import §8q§.§]d§;
   import §;4§.§-!+§;
   import §;4§.§]!%§;
   import §<" §.§@!H§;
   import §@!P§.§'!Q§;
   import §]!5§.§^""§;
   import §^C§.§""1§;
   import §^C§.§5!L§;
   import §^C§.§>!w§;
   import §^C§.§`!x§;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.utils.getTimer;
   
   public class §+!l§ extends §""1§ implements IEventDispatcher
   {
      
      public static var §9!i§:Number;
      
      public static var §^!N§:Number;
       
      
      public var §=[§:Number;
      
      private var §^!@§:EventDispatcher;
      
      private var §>!L§:§3!f§;
      
      public function §+!l§(param1:§with§, param2:DisplayObjectContainer, param3:XML, param4:XML)
      {
         var canvas:§with§ = param1;
         var loadingScreen:DisplayObjectContainer = param2;
         var uiData:XML = param3;
         var assetData:XML = param4;
         this.§^!@§ = new EventDispatcher();
         super(canvas);
         if(§`!j§.stage)
         {
            this.init(loadingScreen,uiData,assetData);
         }
         else
         {
            §`!j§.addEventListener(Event.ADDED_TO_STAGE,function(param1:Event):void
            {
               §`!j§.removeEventListener(Event.ADDED_TO_STAGE,arguments.callee);
               init(loadingScreen,uiData,assetData);
            });
         }
      }
      
      public function get §&"&§() : §3!f§
      {
         return this.§>!L§;
      }
      
      protected function §[Z§() : void
      {
         §]d§.init();
      }
      
      protected function init(param1:DisplayObjectContainer, param2:XML, param3:XML) : void
      {
         this.§>!L§ = new §3!f§(new §8f§("en"));
         §'!Q§.initialize(stage);
         §'!Q§.§@!6§ = false;
         §]!%§.§?x§(this.getVersionInfo());
         §]!%§.§8M§ = this.getVersionInfo();
         §5!L§.§;w§ = §`!j§.stage.loaderInfo.parameters;
         this.§[Z§();
         §,!H§(new §`!x§(this.§&"&§));
         var _loc4_:§>!w§ = this.initStateLoad();
         §,!H§(_loc4_);
         _loc4_.setLoadingScreen(param1);
         _loc4_.§7K§(param3);
         §8!1§.init(param2);
         if(§^""§.§]![§())
         {
            §^""§.§function§("serverConnectionError");
         }
         §'"6§(§>!w§.§'u§);
         this.§<"0§();
      }
      
      protected function initStateLoad() : §>!w§
      {
         return new §>!w§(this.§&"&§,true,§>!w§.§'u§,this.getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      public function §<"0§() : void
      {
         §`!j§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         §`!j§.stage.addEventListener(Event.MOUSE_LEAVE,this.mouseLeave);
         §`!j§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.keyDown);
         §`!j§.stage.addEventListener(KeyboardEvent.KEY_UP,this.keyUp);
         this.§=[§ = getTimer();
      }
      
      public function mouseLeave(param1:Event) : void
      {
         if(§3!>§())
         {
            §3!>§().mouseLeave();
         }
      }
      
      public function keyDown(param1:KeyboardEvent) : void
      {
         if(§3!>§())
         {
            §3!>§().keyDown(param1);
         }
         §]!%§.keyDown(param1);
      }
      
      public function keyUp(param1:KeyboardEvent) : void
      {
         if(§3!>§())
         {
            §3!>§().keyUp(param1);
         }
      }
      
      public function onEnterFrame(param1:Event) : void
      {
         var _loc2_:Number = getTimer() - this.§=[§;
         this.§=[§ = getTimer();
         §6!u§.§"e§.update(_loc2_);
         var _loc3_:§@!H§ = new §@!H§(§@!H§.§;I§,_loc2_,param1.bubbles,param1.cancelable);
         this.§^!@§.dispatchEvent(_loc3_);
         §-!+§.mouseMove(§`!j§.mouseX,§`!j§.mouseY);
         if(§&!-§())
         {
            return;
         }
         if(this.updateState(_loc2_) == §5!L§.§>3§)
         {
            §&!-§();
         }
      }
      
      override public function updateState(param1:Number) : int
      {
         var _loc2_:int = super.updateState(param1);
         if(§3!>§().isGenericState())
         {
            if(_loc2_ == §5!L§.§>3§)
            {
               §`!j§.addChild(§-!+§.activate());
               this.setFirstGameState();
            }
         }
         return _loc2_;
      }
      
      override protected function previousStateDeactivate() : void
      {
         §6!u§.§"e§.§9!5§();
      }
      
      public function setFirstGameState() : void
      {
         §'"6§(§`!x§.§'u§);
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
         this.§^!@§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         this.§^!@§.removeEventListener(param1,param2,param3);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return false;
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§^!@§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§^!@§.willTrigger(param1);
      }
   }
}
