package §@!,§
{
   import §&N§.§[-§;
   import §2!5§.§";§;
   import §2]§.§set §;
   import §3O§.§@6§;
   import §8#§.SWFWheel;
   import §;8§.§!$§;
   import §;8§.§3f§;
   import §]4§.§ !G§;
   import §]4§.§&"§;
   import §]4§.§-§;
   import §]4§.§4!1§;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.utils.getTimer;
   
   public class §`!,§ extends §&"§ implements IEventDispatcher
   {
      
      public static var §'F§:Number;
      
      public static var §=b§:Number;
       
      
      public var §^&§:Number;
      
      private var §6a§:EventDispatcher;
      
      public function §`!,§(param1:§8!6§, param2:DisplayObjectContainer, param3:XML, param4:XML)
      {
         var canvas:§8!6§ = param1;
         var loadingScreen:DisplayObjectContainer = param2;
         var uiData:XML = param3;
         var assetData:XML = param4;
         this.§6a§ = new EventDispatcher();
         super(canvas);
         if(§5A§.stage)
         {
            this.init(loadingScreen,uiData,assetData);
         }
         else
         {
            §5A§.addEventListener(Event.ADDED_TO_STAGE,function(param1:Event):void
            {
               §5A§.removeEventListener(Event.ADDED_TO_STAGE,arguments.callee);
               init(loadingScreen,uiData,assetData);
            });
         }
      }
      
      protected function initSoundEngine() : void
      {
         §@6§.init();
      }
      
      protected function init(param1:DisplayObjectContainer, param2:XML, param3:XML) : void
      {
         SWFWheel.initialize(stage);
         SWFWheel.§14§ = true;
         §3f§.§'! §(this.getVersionInfo());
         §-§.§"!G§ = §5A§.stage.loaderInfo.parameters;
         this.initSoundEngine();
         §9!2§(new §4!1§());
         var _loc4_:§ !G§ = this.initStateLoad();
         §9!2§(_loc4_);
         _loc4_.setLoadingScreen(param1);
         _loc4_.§=T§(param3);
         §set §.init(param2);
         if(§[-§.§4!=§())
         {
            §[-§.§2w§("serverConnectionError");
         }
         §&K§(§ !G§.§?B§);
         this.§,!H§();
      }
      
      protected function initStateLoad() : § !G§
      {
         return new § !G§(true,§ !G§.§?B§,this.getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      public function §,!H§() : void
      {
         §5A§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         §5A§.stage.addEventListener(Event.MOUSE_LEAVE,this.mouseLeave);
         §5A§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.keyDown);
         §5A§.stage.addEventListener(KeyboardEvent.KEY_UP,this.keyUp);
         this.§^&§ = getTimer();
      }
      
      public function mouseLeave(param1:Event) : void
      {
         if(§"! §())
         {
            §"! §().mouseLeave();
         }
      }
      
      public function keyDown(param1:KeyboardEvent) : void
      {
         if(§"! §())
         {
            §"! §().keyDown(param1);
         }
         §3f§.keyDown(param1);
      }
      
      public function keyUp(param1:KeyboardEvent) : void
      {
         if(§"! §())
         {
            §"! §().keyUp(param1);
         }
      }
      
      public function onEnterFrame(param1:Event) : void
      {
         var _loc2_:Number = getTimer() - this.§^&§;
         this.§^&§ = getTimer();
         §";§.§[8§.update(_loc2_);
         this.§6a§.dispatchEvent(param1);
         §!$§.§`u§(§5A§.mouseX,§5A§.mouseY);
         if(§,!>§())
         {
            return;
         }
         if(this.updateState(_loc2_) == §-§.STATE_STATUS_COMPLETED)
         {
            §,!>§();
         }
      }
      
      override public function updateState(param1:Number) : int
      {
         var _loc2_:int = super.updateState(param1);
         if(§"! §().isGenericState())
         {
            if(_loc2_ == §-§.STATE_STATUS_COMPLETED)
            {
               §5A§.addChild(§!$§.activate());
               this.setFirstGameState();
            }
         }
         return _loc2_;
      }
      
      override protected function previousStateDeactivate() : void
      {
         §";§.§[8§.§1N§();
      }
      
      public function setFirstGameState() : void
      {
         §&K§(§4!1§.§?B§);
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
         this.§6a§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         this.§6a§.removeEventListener(param1,param2,param3);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return false;
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§6a§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§6a§.willTrigger(param1);
      }
   }
}
