package §<!F§
{
   import §'$§.SWFWheel;
   import §,!<§.§39§;
   import §,!<§.§6!M§;
   import §,!<§.§7! §;
   import §,!<§.§>u§;
   import §-!5§.§1`§;
   import §-!5§.§5s§;
   import §1!#§.§<t§;
   import §[N§.§9k§;
   import §]!O§.§;Q§;
   import §break§.§8!B§;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.utils.getTimer;
   
   public class §,f§ extends §7! § implements IEventDispatcher
   {
      
      public static var §]!I§:Number;
      
      public static var §;H§:Number;
       
      
      public var § '§:Number;
      
      private var §`x§:EventDispatcher;
      
      public function §,f§(param1:§-q§, param2:DisplayObjectContainer, param3:XML, param4:XML)
      {
         var canvas:§-q§ = param1;
         var loadingScreen:DisplayObjectContainer = param2;
         var uiData:XML = param3;
         var assetData:XML = param4;
         this.§`x§ = new EventDispatcher();
         super(canvas);
         if(§[a§.stage)
         {
            this.init(loadingScreen,uiData,assetData);
         }
         else
         {
            §[a§.addEventListener(Event.ADDED_TO_STAGE,function(param1:Event):void
            {
               §[a§.removeEventListener(Event.ADDED_TO_STAGE,arguments.callee);
               init(loadingScreen,uiData,assetData);
            });
         }
      }
      
      protected function initSoundEngine() : void
      {
         §9k§.init();
      }
      
      protected function init(param1:DisplayObjectContainer, param2:XML, param3:XML) : void
      {
         SWFWheel.initialize(stage);
         SWFWheel.§0I§ = false;
         §5s§.§6Y§(this.getVersionInfo());
         §5s§.§7Y§ = this.getVersionInfo();
         §6!M§.§>!9§ = §[a§.stage.loaderInfo.parameters;
         this.initSoundEngine();
         §7N§(new §>u§());
         var _loc4_:§39§ = this.initStateLoad();
         §7N§(_loc4_);
         _loc4_.setLoadingScreen(param1);
         _loc4_.§<^§(param3);
         §;Q§.init(param2);
         if(§8!B§.§"j§())
         {
            §8!B§.§2<§("serverConnectionError");
         }
         §3!;§(§39§.§=,§);
         this.§<W§();
      }
      
      protected function initStateLoad() : §39§
      {
         return new §39§(true,§39§.§=,§,this.getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      public function §<W§() : void
      {
         §[a§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         §[a§.stage.addEventListener(Event.MOUSE_LEAVE,this.mouseLeave);
         §[a§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.keyDown);
         §[a§.stage.addEventListener(KeyboardEvent.KEY_UP,this.keyUp);
         this.§ '§ = getTimer();
      }
      
      public function mouseLeave(param1:Event) : void
      {
         if(§-!9§())
         {
            §-!9§().mouseLeave();
         }
      }
      
      public function keyDown(param1:KeyboardEvent) : void
      {
         if(§-!9§())
         {
            §-!9§().keyDown(param1);
         }
         §5s§.keyDown(param1);
      }
      
      public function keyUp(param1:KeyboardEvent) : void
      {
         if(§-!9§())
         {
            §-!9§().keyUp(param1);
         }
      }
      
      public function onEnterFrame(param1:Event) : void
      {
         var _loc2_:Number = getTimer() - this.§ '§;
         this.§ '§ = getTimer();
         §<t§.§4J§.update(_loc2_);
         this.§`x§.dispatchEvent(param1);
         §1`§.§8A§(§[a§.mouseX,§[a§.mouseY);
         if(§4e§())
         {
            return;
         }
         if(this.updateState(_loc2_) == §6!M§.STATE_STATUS_COMPLETED)
         {
            §4e§();
         }
      }
      
      override public function updateState(param1:Number) : int
      {
         var _loc2_:int = super.updateState(param1);
         if(§-!9§().isGenericState())
         {
            if(_loc2_ == §6!M§.STATE_STATUS_COMPLETED)
            {
               §[a§.addChild(§1`§.activate());
               this.setFirstGameState();
            }
         }
         return _loc2_;
      }
      
      override protected function previousStateDeactivate() : void
      {
         §<t§.§4J§.§[!8§();
      }
      
      public function setFirstGameState() : void
      {
         §3!;§(§>u§.§=,§);
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
         this.§`x§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         this.§`x§.removeEventListener(param1,param2,param3);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return false;
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§`x§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§`x§.willTrigger(param1);
      }
   }
}
