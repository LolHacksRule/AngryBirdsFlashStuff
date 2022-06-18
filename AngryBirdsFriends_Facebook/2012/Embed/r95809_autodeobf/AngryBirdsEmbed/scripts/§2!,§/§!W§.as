package §2!,§
{
   import §"V§.§"M§;
   import §"V§.§8U§;
   import §"V§.§`]§;
   import §"V§.§true§;
   import §1!8§.§;!>§;
   import §2x§.§'!@§;
   import §2x§.§9!@§;
   import §5Y§.§1!$§;
   import §?!%§.§?!7§;
   import §?m§.SWFWheel;
   import §^<§.§`p§;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.utils.getTimer;
   
   public class §!W§ extends §8U§ implements IEventDispatcher
   {
      
      public static var §7q§:Number;
      
      public static var §`R§:Number;
       
      
      public var §'!E§:Number;
      
      private var §7<§:EventDispatcher;
      
      public function §!W§(param1:§,`§, param2:DisplayObjectContainer, param3:XML, param4:XML)
      {
         var canvas:§,`§ = param1;
         var loadingScreen:DisplayObjectContainer = param2;
         var uiData:XML = param3;
         var assetData:XML = param4;
         this.§7<§ = new EventDispatcher();
         super(canvas);
         if(§`!>§.stage)
         {
            this.init(loadingScreen,uiData,assetData);
         }
         else
         {
            §`!>§.addEventListener(Event.ADDED_TO_STAGE,function(param1:Event):void
            {
               §`!>§.removeEventListener(Event.ADDED_TO_STAGE,arguments.callee);
               init(loadingScreen,uiData,assetData);
            });
         }
      }
      
      protected function initSoundEngine() : void
      {
         §;!>§.init();
      }
      
      protected function init(param1:DisplayObjectContainer, param2:XML, param3:XML) : void
      {
         SWFWheel.initialize(stage);
         SWFWheel.§75§ = true;
         §'!@§.§+&§(this.getVersionInfo());
         §true§.§5!"§ = §`!>§.stage.loaderInfo.parameters;
         this.initSoundEngine();
         §8w§(new §"M§());
         var _loc4_:§`]§ = this.initStateLoad();
         §8w§(_loc4_);
         _loc4_.setLoadingScreen(param1);
         _loc4_.§-Q§(param3);
         §1!$§.init(param2);
         if(§`p§.§8q§())
         {
            §`p§.§6e§("serverConnectionError");
         }
         §]I§(§`]§.§4!&§);
         this.§+l§();
      }
      
      protected function initStateLoad() : §`]§
      {
         return new §`]§(true,§`]§.§4!&§,this.getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      public function §+l§() : void
      {
         §`!>§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         §`!>§.stage.addEventListener(Event.MOUSE_LEAVE,this.mouseLeave);
         §`!>§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.keyDown);
         §`!>§.stage.addEventListener(KeyboardEvent.KEY_UP,this.keyUp);
         this.§'!E§ = getTimer();
      }
      
      public function mouseLeave(param1:Event) : void
      {
         if(§&!5§())
         {
            §&!5§().mouseLeave();
         }
      }
      
      public function keyDown(param1:KeyboardEvent) : void
      {
         if(§&!5§())
         {
            §&!5§().keyDown(param1);
         }
         §'!@§.keyDown(param1);
      }
      
      public function keyUp(param1:KeyboardEvent) : void
      {
         if(§&!5§())
         {
            §&!5§().keyUp(param1);
         }
      }
      
      public function onEnterFrame(param1:Event) : void
      {
         var _loc2_:Number = getTimer() - this.§'!E§;
         this.§'!E§ = getTimer();
         §?!7§.§^7§.update(_loc2_);
         this.§7<§.dispatchEvent(param1);
         §9!@§.§<Q§(§`!>§.mouseX,§`!>§.mouseY);
         if(§!!,§())
         {
            return;
         }
         if(this.updateState(_loc2_) == §true§.STATE_STATUS_COMPLETED)
         {
            §!!,§();
         }
      }
      
      override public function updateState(param1:Number) : int
      {
         var _loc2_:int = super.updateState(param1);
         if(§&!5§().isGenericState())
         {
            if(_loc2_ == §true§.STATE_STATUS_COMPLETED)
            {
               §`!>§.addChild(§9!@§.activate());
               this.setFirstGameState();
            }
         }
         return _loc2_;
      }
      
      override protected function previousStateDeactivate() : void
      {
         §?!7§.§^7§.§-!3§();
      }
      
      public function setFirstGameState() : void
      {
         §]I§(§"M§.§4!&§);
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
         this.§7<§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         this.§7<§.removeEventListener(param1,param2,param3);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return false;
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§7<§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§7<§.willTrigger(param1);
      }
   }
}
