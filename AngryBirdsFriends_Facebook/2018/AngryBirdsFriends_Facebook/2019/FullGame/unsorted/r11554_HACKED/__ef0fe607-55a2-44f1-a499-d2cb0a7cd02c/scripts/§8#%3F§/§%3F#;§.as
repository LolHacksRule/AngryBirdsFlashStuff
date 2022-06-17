package §8#?§
{
   import §#$§.SWFWheel;
   import §%#v§.§0"j§;
   import §3"G§.§,!D§;
   import §3"G§.§16§;
   import §5"G§.§^"&§;
   import §6§.§'#n§;
   import §9#K§.§=#f§;
   import §9#K§.§=^§;
   import §>"9§.§[#%§;
   import §>"Q§.§>!d§;
   import §?#h§.§#!S§;
   import §?#h§.§1!j§;
   import §?#h§.§3#=§;
   import §?#h§.§4"7§;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.utils.getTimer;
   
   public class §?#;§ extends §1!j§ implements IEventDispatcher
   {
      
      public static var §'#$§:Number;
      
      public static var §!#?§:Number;
       
      
      public var §+"0§:Number;
      
      private var §?'§:EventDispatcher;
      
      private var §1#@§:§16§;
      
      public function §?#;§(param1:§!!y§, param2:DisplayObjectContainer, param3:XML, param4:XML)
      {
         var canvas:§!!y§ = param1;
         var loadingScreen:DisplayObjectContainer = param2;
         var uiData:XML = param3;
         var assetData:XML = param4;
         this.§?'§ = new EventDispatcher();
         super(canvas);
         if(§ $"§.stage)
         {
            this.init(loadingScreen,uiData,assetData);
         }
         else
         {
            § $"§.addEventListener(Event.ADDED_TO_STAGE,function(param1:Event):void
            {
               § $"§.removeEventListener(Event.ADDED_TO_STAGE,arguments.callee);
               init(loadingScreen,uiData,assetData);
            });
         }
      }
      
      public function get §6"-§() : §16§
      {
         return this.§1#@§;
      }
      
      protected function §""c§() : void
      {
         §[#%§.init();
      }
      
      protected function init(param1:DisplayObjectContainer, param2:XML, param3:XML) : void
      {
         this.§1#@§ = new §16§(new §,!D§("en"));
         SWFWheel.initialize(stage);
         SWFWheel.§7j§ = false;
         §=#f§.§=Q§(this.getVersionInfo());
         §=#f§.§]#U§ = this.getVersionInfo();
         §3#=§.§+y§ = § $"§.stage.loaderInfo.parameters;
         this.§""c§();
         §7u§(new §#!S§(this.§6"-§));
         var _loc4_:§4"7§ = this.initStateLoad();
         §7u§(_loc4_);
         _loc4_.setLoadingScreen(param1);
         _loc4_.§>x§(param3);
         §0"j§.init(param2);
         if(§>!d§.§0"o§())
         {
            §>!d§.§>!X§("serverConnectionError");
         }
         §%D§(§4"7§.STATE_NAME);
         this.§&"f§();
      }
      
      protected function initStateLoad() : §4"7§
      {
         return new §4"7§(this.§6"-§,true,§4"7§.STATE_NAME,this.getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      public function §&"f§() : void
      {
         § $"§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         § $"§.stage.addEventListener(Event.MOUSE_LEAVE,this.mouseLeave);
         § $"§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.keyDown);
         § $"§.stage.addEventListener(KeyboardEvent.KEY_UP,this.keyUp);
         this.§+"0§ = getTimer();
      }
      
      public function mouseLeave(param1:Event) : void
      {
         if(§1h§())
         {
            §1h§().mouseLeave();
         }
      }
      
      public function keyDown(param1:KeyboardEvent) : void
      {
         if(§1h§())
         {
            §1h§().keyDown(param1);
         }
         §=#f§.keyDown(param1);
      }
      
      public function keyUp(param1:KeyboardEvent) : void
      {
         if(§1h§())
         {
            §1h§().keyUp(param1);
         }
      }
      
      public function onEnterFrame(param1:Event) : void
      {
         var _loc2_:Number = getTimer() - this.§+"0§;
         this.§+"0§ = getTimer();
         §'#n§.§?q§.update(_loc2_);
         var _loc3_:§^"&§ = new §^"&§(§^"&§.§>"q§,_loc2_,param1.bubbles,param1.cancelable);
         this.§?'§.dispatchEvent(_loc3_);
         §=^§.§%G§(§ $"§.mouseX,§ $"§.mouseY);
         if(§-#%§())
         {
            return;
         }
         if(this.updateState(_loc2_) == §3#=§.§6#z§)
         {
            §-#%§();
         }
      }
      
      override public function updateState(param1:Number) : int
      {
         var _loc2_:int = super.updateState(param1);
         if(§1h§().isGenericState())
         {
            if(_loc2_ == §3#=§.§6#z§)
            {
               § $"§.addChild(§=^§.activate());
               this.setFirstGameState();
            }
         }
         return _loc2_;
      }
      
      override protected function previousStateDeactivate() : void
      {
         §'#n§.§?q§.§3#t§();
      }
      
      public function setFirstGameState() : void
      {
         §%D§(§#!S§.STATE_NAME);
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
         this.§?'§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         this.§?'§.removeEventListener(param1,param2,param3);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return false;
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§?'§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§?'§.willTrigger(param1);
      }
   }
}
