package §1G§
{
   import §#!k§.§`L§;
   import §'! §.§41§;
   import §'+§.§7#&§;
   import §'+§.§="B§;
   import §+G§.§!!v§;
   import §,!_§.§2"V§;
   import §,"v§.§@§;
   import §0"I§.§0"b§;
   import §0"I§.§5!s§;
   import §7"l§.§,!Y§;
   import §7"l§.§8";§;
   import §7"l§.§>">§;
   import §7"l§.§[!0§;
   import §^!`§.§%n§;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.utils.getTimer;
   
   public class §8!a§ extends §8";§ implements IEventDispatcher
   {
      
      public static var §4#§:Number;
      
      public static var §`d§:Number;
       
      
      public var §!&§:Number;
      
      private var §6#0§:EventDispatcher;
      
      private var §8-§:§="B§;
      
      public function §8!a§(param1:§7m§, param2:DisplayObjectContainer, param3:XML, param4:XML)
      {
         var canvas:§7m§ = param1;
         var loadingScreen:DisplayObjectContainer = param2;
         var uiData:XML = param3;
         var assetData:XML = param4;
         this.§6#0§ = new EventDispatcher();
         super(canvas);
         if(§7"A§.stage)
         {
            this.init(loadingScreen,uiData,assetData);
         }
         else
         {
            §7"A§.addEventListener(Event.ADDED_TO_STAGE,function(param1:Event):void
            {
               §7"A§.removeEventListener(Event.ADDED_TO_STAGE,arguments.callee);
               init(loadingScreen,uiData,assetData);
            });
         }
      }
      
      public function get §!# §() : §="B§
      {
         return this.§8-§;
      }
      
      protected function §]"3§() : void
      {
         §@§.init();
      }
      
      protected function init(param1:DisplayObjectContainer, param2:XML, param3:XML) : void
      {
         this.§8-§ = new §="B§(new §7#&§("en"));
         §!!v§.initialize(stage);
         §!!v§.§5!U§ = false;
         §5!s§.§="'§(this.getVersionInfo());
         §5!s§.§]"f§ = this.getVersionInfo();
         §,!Y§.§&!?§ = §7"A§.stage.loaderInfo.parameters;
         this.§]"3§();
         §;"g§(new §>">§(this.§!# §));
         var _loc4_:§[!0§ = this.initStateLoad();
         §;"g§(_loc4_);
         _loc4_.setLoadingScreen(param1);
         _loc4_.§,"1§(param3);
         §%n§.init(param2);
         if(§2"V§.§0!u§())
         {
            §2"V§.§30§("serverConnectionError");
         }
         §0"B§(§[!0§.§'#2§);
         this.§3!K§();
      }
      
      protected function initStateLoad() : §[!0§
      {
         return new §[!0§(this.§!# §,true,§[!0§.§'#2§,this.getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      public function §3!K§() : void
      {
         §7"A§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         §7"A§.stage.addEventListener(Event.MOUSE_LEAVE,this.mouseLeave);
         §7"A§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.keyDown);
         §7"A§.stage.addEventListener(KeyboardEvent.KEY_UP,this.keyUp);
         this.§!&§ = getTimer();
      }
      
      public function mouseLeave(param1:Event) : void
      {
         if(§[s§())
         {
            §[s§().mouseLeave();
         }
      }
      
      public function keyDown(param1:KeyboardEvent) : void
      {
         if(§[s§())
         {
            §[s§().keyDown(param1);
         }
         §5!s§.keyDown(param1);
      }
      
      public function keyUp(param1:KeyboardEvent) : void
      {
         if(§[s§())
         {
            §[s§().keyUp(param1);
         }
      }
      
      public function onEnterFrame(param1:Event) : void
      {
         var _loc2_:Number = getTimer() - this.§!&§;
         this.§!&§ = getTimer();
         §41§.§-G§.update(_loc2_);
         var _loc3_:§`L§ = new §`L§(§`L§.§4f§,_loc2_,param1.bubbles,param1.cancelable);
         this.§6#0§.dispatchEvent(_loc3_);
         §0"b§.§-#,§(§7"A§.mouseX,§7"A§.mouseY);
         if(§[T§())
         {
            return;
         }
         if(this.updateState(_loc2_) == §,!Y§.§8"+§)
         {
            §[T§();
         }
      }
      
      override public function updateState(param1:Number) : int
      {
         var _loc2_:int = super.updateState(param1);
         if(§[s§().isGenericState())
         {
            if(_loc2_ == §,!Y§.§8"+§)
            {
               §7"A§.addChild(§0"b§.activate());
               this.setFirstGameState();
            }
         }
         return _loc2_;
      }
      
      override protected function previousStateDeactivate() : void
      {
         §41§.§-G§.§0!M§();
      }
      
      public function setFirstGameState() : void
      {
         §0"B§(§>">§.§'#2§);
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
         this.§6#0§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         this.§6#0§.removeEventListener(param1,param2,param3);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return false;
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§6#0§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§6#0§.willTrigger(param1);
      }
   }
}
