package §<R§
{
   import §+j§.§%&§;
   import §+j§.§0C§;
   import §+j§.§>T§;
   import §+j§.§@!_§;
   import §3!%§.§`!m§;
   import §6!C§.§;-§;
   import §9![§.§1!i§;
   import §=!7§.§1!7§;
   import §=!7§.§9c§;
   import §=3§.§`!F§;
   import §>!L§.§-"#§;
   import §[" §.§"!j§;
   import §]!d§.§-!<§;
   import §]!d§.§[w§;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.utils.getTimer;
   
   public class §!@§ extends §0C§ implements IEventDispatcher
   {
      
      public static var §[!d§:Number;
      
      public static var include:Number;
       
      
      public var §9E§:Number;
      
      private var §>Z§:EventDispatcher;
      
      private var §@d§:§-!<§;
      
      public function §!@§(param1:§[!u§, param2:DisplayObjectContainer, param3:XML, param4:XML)
      {
         var canvas:§[!u§ = param1;
         var loadingScreen:DisplayObjectContainer = param2;
         var uiData:XML = param3;
         var assetData:XML = param4;
         this.§>Z§ = new EventDispatcher();
         super(canvas);
         if(§"3§.stage)
         {
            this.init(loadingScreen,uiData,assetData);
         }
         else
         {
            §"3§.addEventListener(Event.ADDED_TO_STAGE,function(param1:Event):void
            {
               §"3§.removeEventListener(Event.ADDED_TO_STAGE,arguments.callee);
               init(loadingScreen,uiData,assetData);
            });
         }
      }
      
      public function get §&%§() : §-!<§
      {
         return this.§@d§;
      }
      
      protected function §#!3§() : void
      {
         §1!i§.init();
      }
      
      protected function init(param1:DisplayObjectContainer, param2:XML, param3:XML) : void
      {
         this.§@d§ = new §-!<§(new §[w§("en"));
         §`!m§.initialize(stage);
         §`!m§.§`!?§ = false;
         §1!7§.§%S§(this.getVersionInfo());
         §1!7§.§%"4§ = this.getVersionInfo();
         §@!_§.§2!;§ = §"3§.stage.loaderInfo.parameters;
         this.§#!3§();
         §-!r§(new §>T§(this.§&%§));
         var _loc4_:§%&§ = this.initStateLoad();
         §-!r§(_loc4_);
         _loc4_.setLoadingScreen(param1);
         _loc4_.§50§(param3);
         §"!j§.init(param2);
         if(§;-§.§!3§())
         {
            §;-§.§"t§("serverConnectionError");
         }
         §8=§(§%&§.§]O§);
         this.§[!p§();
      }
      
      protected function initStateLoad() : §%&§
      {
         return new §%&§(this.§&%§,true,§%&§.§]O§,this.getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      public function §[!p§() : void
      {
         §"3§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         §"3§.stage.addEventListener(Event.MOUSE_LEAVE,this.mouseLeave);
         §"3§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.keyDown);
         §"3§.stage.addEventListener(KeyboardEvent.KEY_UP,this.keyUp);
         this.§9E§ = getTimer();
      }
      
      public function mouseLeave(param1:Event) : void
      {
         if(§9!5§())
         {
            §9!5§().mouseLeave();
         }
      }
      
      public function keyDown(param1:KeyboardEvent) : void
      {
         if(§9!5§())
         {
            §9!5§().keyDown(param1);
         }
         §1!7§.keyDown(param1);
      }
      
      public function keyUp(param1:KeyboardEvent) : void
      {
         if(§9!5§())
         {
            §9!5§().keyUp(param1);
         }
      }
      
      public function onEnterFrame(param1:Event) : void
      {
         var _loc2_:Number = getTimer() - this.§9E§;
         this.§9E§ = getTimer();
         §`!F§.§=J§.update(_loc2_);
         var _loc3_:§-"#§ = new §-"#§(§-"#§.§@!t§,_loc2_,param1.bubbles,param1.cancelable);
         this.§>Z§.dispatchEvent(_loc3_);
         §9c§.mouseMove(§"3§.mouseX,§"3§.mouseY);
         if(§%<§())
         {
            return;
         }
         if(this.updateState(_loc2_) == §@!_§.§4"%§)
         {
            §%<§();
         }
      }
      
      override public function updateState(param1:Number) : int
      {
         var _loc2_:int = super.updateState(param1);
         if(§9!5§().isGenericState())
         {
            if(_loc2_ == §@!_§.§4"%§)
            {
               §"3§.addChild(§9c§.activate());
               this.setFirstGameState();
            }
         }
         return _loc2_;
      }
      
      override protected function previousStateDeactivate() : void
      {
         §`!F§.§=J§.§2"5§();
      }
      
      public function setFirstGameState() : void
      {
         §8=§(§>T§.§]O§);
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
         this.§>Z§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         this.§>Z§.removeEventListener(param1,param2,param3);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return false;
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§>Z§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§>Z§.willTrigger(param1);
      }
   }
}
