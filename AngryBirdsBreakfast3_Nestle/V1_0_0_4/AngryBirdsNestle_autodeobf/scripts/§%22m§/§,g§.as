package §"m§
{
   import §"I§.§=!U§;
   import §"I§.§?"4§;
   import §&!>§.§3!k§;
   import §02§.§+!b§;
   import §0n§.§9!I§;
   import §3"%§.§>K§;
   import §9!a§.§9g§;
   import §9!a§.§@8§;
   import §9!a§.§@S§;
   import §9!a§.§]D§;
   import §;!b§.§%>§;
   import §;!b§.§;!]§;
   import §><§.§0!M§;
   import §?!4§.§6"&§;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.utils.getTimer;
   
   public class §,g§ extends §]D§ implements IEventDispatcher
   {
      
      public static var §@!L§:Number;
      
      public static var §2!>§:Number;
       
      
      public var §]]§:Number;
      
      private var §6!X§:EventDispatcher;
      
      private var §"q§:§%>§;
      
      public function §,g§(param1:§'!6§, param2:DisplayObjectContainer, param3:XML, param4:XML)
      {
         var canvas:§'!6§ = param1;
         var loadingScreen:DisplayObjectContainer = param2;
         var uiData:XML = param3;
         var assetData:XML = param4;
         this.§6!X§ = new EventDispatcher();
         super(canvas);
         if(§^J§.stage)
         {
            this.init(loadingScreen,uiData,assetData);
         }
         else
         {
            §^J§.addEventListener(Event.ADDED_TO_STAGE,function(param1:Event):void
            {
               §^J§.removeEventListener(Event.ADDED_TO_STAGE,arguments.callee);
               init(loadingScreen,uiData,assetData);
            });
         }
      }
      
      public function get §@!W§() : §%>§
      {
         return this.§"q§;
      }
      
      protected function §5!x§() : void
      {
         §3!k§.init();
      }
      
      protected function init(param1:DisplayObjectContainer, param2:XML, param3:XML) : void
      {
         this.§"q§ = new §%>§(new §;!]§("en"));
         §9!I§.initialize(stage);
         §9!I§.§;"1§ = false;
         §=!U§.§=!<§(this.getVersionInfo());
         §=!U§.§1!k§ = this.getVersionInfo();
         §@S§.§4!f§ = §^J§.stage.loaderInfo.parameters;
         this.§5!x§();
         §8Q§(new §9g§(this.§@!W§));
         var _loc4_:§@8§ = this.initStateLoad();
         §8Q§(_loc4_);
         _loc4_.setLoadingScreen(param1);
         _loc4_.§%!F§(param3);
         §+!b§.init(param2);
         if(§>K§.§6!+§())
         {
            §>K§.§%!V§("serverConnectionError");
         }
         §0!w§(§@8§.§+B§);
         this.§5" §();
      }
      
      protected function initStateLoad() : §@8§
      {
         return new §@8§(this.§@!W§,true,§@8§.§+B§,this.getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      public function §5" §() : void
      {
         §^J§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         §^J§.stage.addEventListener(Event.MOUSE_LEAVE,this.mouseLeave);
         §^J§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.keyDown);
         §^J§.stage.addEventListener(KeyboardEvent.KEY_UP,this.keyUp);
         this.§]]§ = getTimer();
      }
      
      public function mouseLeave(param1:Event) : void
      {
         if(§'!K§())
         {
            §'!K§().mouseLeave();
         }
      }
      
      public function keyDown(param1:KeyboardEvent) : void
      {
         if(§'!K§())
         {
            §'!K§().keyDown(param1);
         }
         §=!U§.keyDown(param1);
      }
      
      public function keyUp(param1:KeyboardEvent) : void
      {
         if(§'!K§())
         {
            §'!K§().keyUp(param1);
         }
      }
      
      public function onEnterFrame(param1:Event) : void
      {
         var _loc2_:Number = getTimer() - this.§]]§;
         this.§]]§ = getTimer();
         §0!M§.§?!+§.update(_loc2_);
         var _loc3_:§6"&§ = new §6"&§(§6"&§.§"!w§,_loc2_,param1.bubbles,param1.cancelable);
         this.§6!X§.dispatchEvent(_loc3_);
         §?"4§.mouseMove(§^J§.mouseX,§^J§.mouseY);
         if(§1§())
         {
            return;
         }
         if(this.updateState(_loc2_) == §@S§.§-!R§)
         {
            §1§();
         }
      }
      
      override public function updateState(param1:Number) : int
      {
         var _loc2_:int = super.updateState(param1);
         if(§'!K§().isGenericState())
         {
            if(_loc2_ == §@S§.§-!R§)
            {
               §^J§.addChild(§?"4§.activate());
               this.setFirstGameState();
            }
         }
         return _loc2_;
      }
      
      override protected function previousStateDeactivate() : void
      {
         §0!M§.§?!+§.§"!V§();
      }
      
      public function setFirstGameState() : void
      {
         §0!w§(§9g§.§+B§);
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
         this.§6!X§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         this.§6!X§.removeEventListener(param1,param2,param3);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return false;
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§6!X§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§6!X§.willTrigger(param1);
      }
   }
}
