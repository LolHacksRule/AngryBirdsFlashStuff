package §6!k§
{
   import §#";§.§0"#§;
   import §&!<§.§]!M§;
   import §'V§.§7I§;
   import §4!B§.§3K§;
   import §6]§.§,"0§;
   import §6]§.§8!W§;
   import §;<§.§ "4§;
   import §;<§.§'B§;
   import §;<§.§1N§;
   import §;<§.§[!h§;
   import §^!m§.§6§;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.utils.getTimer;
   
   public class §@!L§ extends § "4§ implements IEventDispatcher
   {
      
      public static var §<3§:Number;
      
      public static var §=!l§:Number;
       
      
      public var §>w§:Number;
      
      private var §-H§:EventDispatcher;
      
      public function §@!L§(param1:§@B§, param2:DisplayObjectContainer, param3:XML, param4:XML)
      {
         var canvas:§@B§ = param1;
         var loadingScreen:DisplayObjectContainer = param2;
         var uiData:XML = param3;
         var assetData:XML = param4;
         this.§-H§ = new EventDispatcher();
         super(canvas);
         if(§&"!§.stage)
         {
            this.init(loadingScreen,uiData,assetData);
         }
         else
         {
            §&"!§.addEventListener(Event.ADDED_TO_STAGE,function(param1:Event):void
            {
               §&"!§.removeEventListener(Event.ADDED_TO_STAGE,arguments.callee);
               init(loadingScreen,uiData,assetData);
            });
         }
      }
      
      protected function §4!]§() : void
      {
         §0"#§.init();
      }
      
      protected function init(param1:DisplayObjectContainer, param2:XML, param3:XML) : void
      {
         §3K§.initialize(stage);
         §3K§.§-$§ = false;
         §,"0§.§&!u§(this.getVersionInfo());
         §,"0§.§5i§ = this.getVersionInfo();
         §'B§.§!u§ = §&"!§.stage.loaderInfo.parameters;
         this.§4!]§();
         §&p§(new §[!h§());
         var _loc4_:§1N§ = this.initStateLoad();
         §&p§(_loc4_);
         _loc4_.§]""§(param1);
         _loc4_.§'X§(param3);
         §]!M§.init(param2);
         if(§6§.§^J§())
         {
            §6§.§#q§("serverConnectionError");
         }
         §<t§(§1N§.§%!Q§);
         this.§@n§();
      }
      
      protected function initStateLoad() : §1N§
      {
         return new §1N§(true,§1N§.§%!Q§,this.getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      public function §@n§() : void
      {
         §&"!§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         §&"!§.stage.addEventListener(Event.MOUSE_LEAVE,this.mouseLeave);
         §&"!§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.keyDown);
         §&"!§.stage.addEventListener(KeyboardEvent.KEY_UP,this.keyUp);
         this.§>w§ = getTimer();
      }
      
      public function mouseLeave(param1:Event) : void
      {
         if(§<"%§())
         {
            §<"%§().mouseLeave();
         }
      }
      
      public function keyDown(param1:KeyboardEvent) : void
      {
         if(§<"%§())
         {
            §<"%§().keyDown(param1);
         }
         §,"0§.keyDown(param1);
      }
      
      public function keyUp(param1:KeyboardEvent) : void
      {
         if(§<"%§())
         {
            §<"%§().keyUp(param1);
         }
      }
      
      public function onEnterFrame(param1:Event) : void
      {
         var _loc2_:Number = getTimer() - this.§>w§;
         this.§>w§ = getTimer();
         §7I§.§[E§.update(_loc2_);
         this.§-H§.dispatchEvent(param1);
         §8!W§.§;M§(§&"!§.mouseX,§&"!§.mouseY);
         if(§-![§())
         {
            return;
         }
         if(this.updateState(_loc2_) == §'B§.STATE_STATUS_COMPLETED)
         {
            §-![§();
         }
      }
      
      override public function updateState(param1:Number) : int
      {
         var _loc2_:int = super.updateState(param1);
         if(§<"%§().isGenericState())
         {
            if(_loc2_ == §'B§.STATE_STATUS_COMPLETED)
            {
               §&"!§.addChild(§8!W§.activate());
               this.setFirstGameState();
            }
         }
         return _loc2_;
      }
      
      override protected function previousStateDeactivate() : void
      {
         §7I§.§[E§.§^!=§();
      }
      
      public function setFirstGameState() : void
      {
         §<t§(§[!h§.§%!Q§);
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
         this.§-H§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         this.§-H§.removeEventListener(param1,param2,param3);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return false;
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§-H§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§-H§.willTrigger(param1);
      }
   }
}
