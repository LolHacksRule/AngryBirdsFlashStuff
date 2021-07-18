package §<!'§
{
   import §!x§.§4"I§;
   import §!x§.§4"d§;
   import §&#S§.§""Z§;
   import §'U§.§]#[§;
   import §'U§.§`#V§;
   import §3!T§.§5"8§;
   import §8§.§#$+§;
   import §9"#§.§%j§;
   import §9"#§.§4$5§;
   import §9"#§.§4w§;
   import §9"#§.§;"m§;
   import §<!O§.§@#`§;
   import §[!^§.SWFWheel;
   import §]$9§.§-!5§;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.utils.getTimer;
   
   public class § "6§ extends §4w§ implements IEventDispatcher
   {
      
      public static var §!"Q§:Number;
      
      public static var §7,§:Number;
       
      
      public var §8!]§:Number;
      
      private var §1X§:EventDispatcher;
      
      private var §'#w§:§]#[§;
      
      public function § "6§(param1:§-"$§, param2:DisplayObjectContainer, param3:XML, param4:XML)
      {
         var canvas:§-"$§ = param1;
         var loadingScreen:DisplayObjectContainer = param2;
         var uiData:XML = param3;
         var assetData:XML = param4;
         this.§1X§ = new EventDispatcher();
         super(canvas);
         if(§]!i§.stage)
         {
            this.init(loadingScreen,uiData,assetData);
         }
         else
         {
            §]!i§.addEventListener(Event.ADDED_TO_STAGE,function(param1:Event):void
            {
               §]!i§.removeEventListener(Event.ADDED_TO_STAGE,arguments.callee);
               init(loadingScreen,uiData,assetData);
            });
         }
      }
      
      public function get §1#%§() : §]#[§
      {
         return this.§'#w§;
      }
      
      protected function §&^§() : void
      {
         §#$+§.init();
      }
      
      protected function init(param1:DisplayObjectContainer, param2:XML, param3:XML) : void
      {
         this.§'#w§ = new §]#[§(new §`#V§("en"));
         SWFWheel.initialize(stage);
         SWFWheel.§'$3§ = false;
         §4"d§.§<!R§(this.getVersionInfo());
         §4"d§.§=!T§ = this.getVersionInfo();
         §4$5§.§ !8§ = §]!i§.stage.loaderInfo.parameters;
         this.§&^§();
         §4!§(new §%j§(this.§1#%§));
         var _loc4_:§;"m§ = this.initStateLoad();
         §4!§(_loc4_);
         _loc4_.setLoadingScreen(param1);
         _loc4_.§"#X§(param3);
         §@#`§.init(param2);
         if(§-!5§.§^!D§())
         {
            §-!5§.§+"Z§("serverConnectionError");
         }
         §7P§(§;"m§.STATE_NAME);
         this.§0!d§();
      }
      
      protected function initStateLoad() : §;"m§
      {
         return new §;"m§(this.§1#%§,true,§;"m§.STATE_NAME,this.getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      public function §0!d§() : void
      {
         §]!i§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         §]!i§.stage.addEventListener(Event.MOUSE_LEAVE,this.mouseLeave);
         §]!i§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.keyDown);
         §]!i§.stage.addEventListener(KeyboardEvent.KEY_UP,this.keyUp);
         this.§8!]§ = getTimer();
      }
      
      public function mouseLeave(param1:Event) : void
      {
         if(§ "-§())
         {
            § "-§().mouseLeave();
         }
      }
      
      public function keyDown(param1:KeyboardEvent) : void
      {
         if(§ "-§())
         {
            § "-§().keyDown(param1);
         }
         §4"d§.keyDown(param1);
      }
      
      public function keyUp(param1:KeyboardEvent) : void
      {
         if(§ "-§())
         {
            § "-§().keyUp(param1);
         }
      }
      
      public function onEnterFrame(param1:Event) : void
      {
         var _loc2_:Number = getTimer() - this.§8!]§;
         this.§8!]§ = getTimer();
         §""Z§.§3!]§.update(_loc2_);
         var _loc3_:§5"8§ = new §5"8§(§5"8§.§>#x§,_loc2_,param1.bubbles,param1.cancelable);
         this.§1X§.dispatchEvent(_loc3_);
         §4"I§.§=F§(§]!i§.mouseX,§]!i§.mouseY);
         if(§"$2§())
         {
            return;
         }
         if(this.updateState(_loc2_) == §4$5§.§'!]§)
         {
            §"$2§();
         }
      }
      
      override public function updateState(param1:Number) : int
      {
         var _loc2_:int = super.updateState(param1);
         if(§ "-§().isGenericState())
         {
            if(_loc2_ == §4$5§.§'!]§)
            {
               §]!i§.addChild(§4"I§.activate());
               this.setFirstGameState();
            }
         }
         return _loc2_;
      }
      
      override protected function previousStateDeactivate() : void
      {
         §""Z§.§3!]§.§`N§();
      }
      
      public function setFirstGameState() : void
      {
         §7P§(§%j§.STATE_NAME);
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
         this.§1X§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         this.§1X§.removeEventListener(param1,param2,param3);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return false;
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§1X§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§1X§.willTrigger(param1);
      }
   }
}
