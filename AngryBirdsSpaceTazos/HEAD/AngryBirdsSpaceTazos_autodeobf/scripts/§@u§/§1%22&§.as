package §@u§
{
   import §"o§.§-e§;
   import §"o§.§4!h§;
   import §"o§.§6!u§;
   import §"o§.§>!!§;
   import §#!O§.§"!t§;
   import §#J§.§;8§;
   import §#R§.§0<§;
   import §%"%§.§2Z§;
   import §%"%§.§9!u§;
   import §,!M§.§@!T§;
   import §3!S§.§<5§;
   import §8!i§.§>j§;
   import §`!w§.§&!Q§;
   import §`!w§.§^!$§;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.utils.getTimer;
   
   public class §1"&§ extends §6!u§ implements IEventDispatcher
   {
      
      public static var §']§:Number;
      
      public static var §'!O§:Number;
       
      
      public var §]"B§:Number;
      
      private var §'W§:EventDispatcher;
      
      private var § "@§:§2Z§;
      
      public function §1"&§(param1:§#'§, param2:DisplayObjectContainer, param3:XML, param4:XML)
      {
         var canvas:§#'§ = param1;
         var loadingScreen:DisplayObjectContainer = param2;
         var uiData:XML = param3;
         var assetData:XML = param4;
         this.§'W§ = new EventDispatcher();
         super(canvas);
         if(§?"3§.stage)
         {
            this.init(loadingScreen,uiData,assetData);
         }
         else
         {
            §?"3§.addEventListener(Event.ADDED_TO_STAGE,function(param1:Event):void
            {
               §?"3§.removeEventListener(Event.ADDED_TO_STAGE,arguments.callee);
               init(loadingScreen,uiData,assetData);
            });
         }
      }
      
      public function get §@!,§() : §2Z§
      {
         return this.§ "@§;
      }
      
      protected function §&Q§() : void
      {
         §<5§.init();
      }
      
      protected function init(param1:DisplayObjectContainer, param2:XML, param3:XML) : void
      {
         this.§ "@§ = new §2Z§(new §9!u§("en"));
         §;8§.initialize(stage);
         §;8§.§6!g§ = false;
         §^!$§.§!W§(this.getVersionInfo());
         §^!$§.§=!H§ = this.getVersionInfo();
         §>!!§.§ !n§ = §?"3§.stage.loaderInfo.parameters;
         this.§&Q§();
         §0!c§(new §-e§(this.§@!,§));
         var _loc4_:§4!h§ = this.initStateLoad();
         §0!c§(_loc4_);
         _loc4_.setLoadingScreen(param1);
         _loc4_.§<"A§(param3);
         §@!T§.init(param2);
         if(§>j§.§"!5§())
         {
            §>j§.§"!W§("serverConnectionError");
         }
         § !I§(§4!h§.STATE_NAME);
         this.§+"6§();
      }
      
      protected function initStateLoad() : §4!h§
      {
         return new §4!h§(this.§@!,§,true,§4!h§.STATE_NAME,this.getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      public function §+"6§() : void
      {
         §?"3§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         §?"3§.stage.addEventListener(Event.MOUSE_LEAVE,this.mouseLeave);
         §?"3§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.keyDown);
         §?"3§.stage.addEventListener(KeyboardEvent.KEY_UP,this.keyUp);
         this.§]"B§ = getTimer();
      }
      
      public function mouseLeave(param1:Event) : void
      {
         if(§[Z§())
         {
            §[Z§().mouseLeave();
         }
      }
      
      public function keyDown(param1:KeyboardEvent) : void
      {
         if(§[Z§())
         {
            §[Z§().keyDown(param1);
         }
         §^!$§.keyDown(param1);
      }
      
      public function keyUp(param1:KeyboardEvent) : void
      {
         if(§[Z§())
         {
            §[Z§().keyUp(param1);
         }
      }
      
      public function onEnterFrame(param1:Event) : void
      {
         var _loc2_:Number = getTimer() - this.§]"B§;
         this.§]"B§ = getTimer();
         §"!t§.§3R§.update(_loc2_);
         var _loc3_:§0<§ = new §0<§(§0<§.§?"8§,_loc2_,param1.bubbles,param1.cancelable);
         this.§'W§.dispatchEvent(_loc3_);
         §&!Q§.§]"§(§?"3§.mouseX,§?"3§.mouseY);
         if(§8!I§())
         {
            return;
         }
         if(this.updateState(_loc2_) == §>!!§.§,!w§)
         {
            §8!I§();
         }
      }
      
      override public function updateState(param1:Number) : int
      {
         var _loc2_:int = super.updateState(param1);
         if(§[Z§().isGenericState())
         {
            if(_loc2_ == §>!!§.§,!w§)
            {
               §?"3§.addChild(§&!Q§.activate());
               this.setFirstGameState();
            }
         }
         return _loc2_;
      }
      
      override protected function previousStateDeactivate() : void
      {
         §"!t§.§3R§.§>"%§();
      }
      
      public function setFirstGameState() : void
      {
         § !I§(§-e§.STATE_NAME);
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
         this.§'W§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         this.§'W§.removeEventListener(param1,param2,param3);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return false;
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§'W§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§'W§.willTrigger(param1);
      }
   }
}
