package §&1§
{
   import § "v§.§4$4§;
   import § #_§.§&$2§;
   import § #_§.§?!>§;
   import § null§.§5"<§;
   import §!"y§.SWFWheel;
   import §#"3§.§2#>§;
   import §#"3§.§4!h§;
   import §6#x§.§#$1§;
   import §6#x§.§&#S§;
   import §6#x§.§'!G§;
   import §6#x§.§4"2§;
   import §7"1§.§[#U§;
   import §=X§.§`#x§;
   import §[#A§.§&n§;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.utils.getTimer;
   
   public class §4""§ extends §&#S§ implements IEventDispatcher
   {
      
      public static var §>p§:Number;
      
      public static var §>#2§:Number;
       
      
      public var §;##§:Number;
      
      private var §4$<§:EventDispatcher;
      
      private var §,#a§:§?!>§;
      
      public function §4""§(param1:§,"I§, param2:DisplayObjectContainer, param3:XML, param4:XML)
      {
         var canvas:§,"I§ = param1;
         var loadingScreen:DisplayObjectContainer = param2;
         var uiData:XML = param3;
         var assetData:XML = param4;
         this.§4$<§ = new EventDispatcher();
         super(canvas);
         if(§ "U§.stage)
         {
            this.init(loadingScreen,uiData,assetData);
         }
         else
         {
            § "U§.addEventListener(Event.ADDED_TO_STAGE,function(param1:Event):void
            {
               § "U§.removeEventListener(Event.ADDED_TO_STAGE,arguments.callee);
               init(loadingScreen,uiData,assetData);
            });
         }
      }
      
      public function get §6%§() : §?!>§
      {
         return this.§,#a§;
      }
      
      protected function §2#n§() : void
      {
         §4$4§.init();
      }
      
      protected function init(param1:DisplayObjectContainer, param2:XML, param3:XML) : void
      {
         this.§,#a§ = new §?!>§(new §&$2§("en"));
         SWFWheel.initialize(stage);
         SWFWheel.§#!!§ = false;
         §4!h§.§!y§(this.getVersionInfo());
         §4!h§.§^#d§ = this.getVersionInfo();
         §'!G§.§9!k§ = § "U§.stage.loaderInfo.parameters;
         this.§2#n§();
         §"<§(new §#$1§(this.§6%§));
         var _loc4_:§4"2§ = this.initStateLoad();
         §"<§(_loc4_);
         _loc4_.setLoadingScreen(param1);
         _loc4_.§3#z§(param3);
         §&n§.init(param2);
         if(§[#U§.§!"F§())
         {
            §[#U§.§]9§("serverConnectionError");
         }
         §%!?§(§4"2§.STATE_NAME);
         this.§!U§();
      }
      
      protected function initStateLoad() : §4"2§
      {
         return new §4"2§(this.§6%§,true,§4"2§.STATE_NAME,this.getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      public function §!U§() : void
      {
         § "U§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         § "U§.stage.addEventListener(Event.MOUSE_LEAVE,this.mouseLeave);
         § "U§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.keyDown);
         § "U§.stage.addEventListener(KeyboardEvent.KEY_UP,this.keyUp);
         this.§;##§ = getTimer();
      }
      
      public function mouseLeave(param1:Event) : void
      {
         if(§8"v§())
         {
            §8"v§().mouseLeave();
         }
      }
      
      public function keyDown(param1:KeyboardEvent) : void
      {
         if(§8"v§())
         {
            §8"v§().keyDown(param1);
         }
         §4!h§.keyDown(param1);
      }
      
      public function keyUp(param1:KeyboardEvent) : void
      {
         if(§8"v§())
         {
            §8"v§().keyUp(param1);
         }
      }
      
      public function onEnterFrame(param1:Event) : void
      {
         var _loc2_:Number = getTimer() - this.§;##§;
         this.§;##§ = getTimer();
         §5"<§.§3"1§.update(_loc2_);
         var _loc3_:§`#x§ = new §`#x§(§`#x§.§2"F§,_loc2_,param1.bubbles,param1.cancelable);
         this.§4$<§.dispatchEvent(_loc3_);
         §2#>§.§#"U§(§ "U§.mouseX,§ "U§.mouseY);
         if(§7"x§())
         {
            return;
         }
         if(this.updateState(_loc2_) == §'!G§.§3!Q§)
         {
            §7"x§();
         }
      }
      
      override public function updateState(param1:Number) : int
      {
         var _loc2_:int = super.updateState(param1);
         if(§8"v§().isGenericState())
         {
            if(_loc2_ == §'!G§.§3!Q§)
            {
               § "U§.addChild(§2#>§.activate());
               this.setFirstGameState();
            }
         }
         return _loc2_;
      }
      
      override protected function previousStateDeactivate() : void
      {
         §5"<§.§3"1§.§^#>§();
      }
      
      public function setFirstGameState() : void
      {
         §%!?§(§#$1§.STATE_NAME);
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
         this.§4$<§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         this.§4$<§.removeEventListener(param1,param2,param3);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return false;
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§4$<§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§4$<§.willTrigger(param1);
      }
   }
}
