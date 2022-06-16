package §@l§
{
   import § %§.§1Q§;
   import §!#"§.§&"H§;
   import §""T§.SWFWheel;
   import §3"I§.§?#N§;
   import §5P§.§""C§;
   import §5P§.§@"r§;
   import §7"§.§7P§;
   import §7"§.§<! §;
   import §7"§.§^#H§;
   import §7"§.§`#@§;
   import §@!M§.§!"p§;
   import §@V§.§0X§;
   import §]!6§.§6Y§;
   import §]!6§.§7Z§;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.utils.getTimer;
   
   public class §6$9§ extends §<! § implements IEventDispatcher
   {
      
      public static var §-I§:Number;
      
      public static var §?!X§:Number;
       
      
      public var §["v§:Number;
      
      private var §=#R§:EventDispatcher;
      
      private var §1a§:§""C§;
      
      public function §6$9§(param1:§8"9§, param2:DisplayObjectContainer, param3:XML, param4:XML)
      {
         var canvas:§8"9§ = param1;
         var loadingScreen:DisplayObjectContainer = param2;
         var uiData:XML = param3;
         var assetData:XML = param4;
         this.§=#R§ = new EventDispatcher();
         super(canvas);
         if(§2D§.stage)
         {
            this.init(loadingScreen,uiData,assetData);
         }
         else
         {
            §2D§.addEventListener(Event.ADDED_TO_STAGE,function(param1:Event):void
            {
               §2D§.removeEventListener(Event.ADDED_TO_STAGE,arguments.callee);
               init(loadingScreen,uiData,assetData);
            });
         }
      }
      
      public function get §+U§() : §""C§
      {
         return this.§1a§;
      }
      
      protected function §6#D§() : void
      {
         §!"p§.init();
      }
      
      protected function init(param1:DisplayObjectContainer, param2:XML, param3:XML) : void
      {
         this.§1a§ = new §""C§(new §@"r§("en"));
         SWFWheel.initialize(stage);
         SWFWheel.§2#L§ = false;
         §6Y§.§"5§(this.getVersionInfo());
         §6Y§.§8"u§ = this.getVersionInfo();
         §`#@§.§0#k§ = §2D§.stage.loaderInfo.parameters;
         this.§6#D§();
         §,#Z§(new §7P§(this.§+U§));
         var _loc4_:§^#H§ = this.initStateLoad();
         §,#Z§(_loc4_);
         _loc4_.setLoadingScreen(param1);
         _loc4_.§[#'§(param3);
         §1Q§.init(param2);
         if(§0X§.§ "y§())
         {
            §0X§.§[#m§("serverConnectionError");
         }
         §1"h§(§^#H§.STATE_NAME);
         this.§3#!§();
      }
      
      protected function initStateLoad() : §^#H§
      {
         return new §^#H§(this.§+U§,true,§^#H§.STATE_NAME,this.getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      public function §3#!§() : void
      {
         §2D§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         §2D§.stage.addEventListener(Event.MOUSE_LEAVE,this.mouseLeave);
         §2D§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.keyDown);
         §2D§.stage.addEventListener(KeyboardEvent.KEY_UP,this.keyUp);
         this.§["v§ = getTimer();
      }
      
      public function mouseLeave(param1:Event) : void
      {
         if(§=!&§())
         {
            §=!&§().mouseLeave();
         }
      }
      
      public function keyDown(param1:KeyboardEvent) : void
      {
         if(§=!&§())
         {
            §=!&§().keyDown(param1);
         }
         §6Y§.keyDown(param1);
      }
      
      public function keyUp(param1:KeyboardEvent) : void
      {
         if(§=!&§())
         {
            §=!&§().keyUp(param1);
         }
      }
      
      public function onEnterFrame(param1:Event) : void
      {
         var _loc2_:Number = getTimer() - this.§["v§;
         this.§["v§ = getTimer();
         §&"H§.§6!§.update(_loc2_);
         var _loc3_:§?#N§ = new §?#N§(§?#N§.§1!I§,_loc2_,param1.bubbles,param1.cancelable);
         this.§=#R§.dispatchEvent(_loc3_);
         §7Z§.§]-§(§2D§.mouseX,§2D§.mouseY);
         if(§]"<§())
         {
            return;
         }
         if(this.updateState(_loc2_) == §`#@§.§]"H§)
         {
            §]"<§();
         }
      }
      
      override public function updateState(param1:Number) : int
      {
         var _loc2_:int = super.updateState(param1);
         if(§=!&§().isGenericState())
         {
            if(_loc2_ == §`#@§.§]"H§)
            {
               §2D§.addChild(§7Z§.activate());
               this.setFirstGameState();
            }
         }
         return _loc2_;
      }
      
      override protected function previousStateDeactivate() : void
      {
         §&"H§.§6!§.§ $0§();
      }
      
      public function setFirstGameState() : void
      {
         §1"h§(§7P§.STATE_NAME);
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
         this.§=#R§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         this.§=#R§.removeEventListener(param1,param2,param3);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return false;
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§=#R§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§=#R§.willTrigger(param1);
      }
   }
}
