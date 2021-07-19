package §throw§
{
   import §"§.§%!$§;
   import §"§.§4K§;
   import §"§.§;!?§;
   import §"§.§]!&§;
   import §-!Q§.§,!7§;
   import §2!B§.§>!^§;
   import §3@§.§>#§;
   import §<!0§.§%g§;
   import §>P§.§>!;§;
   import §>^§.§!6§;
   import §>^§.§;!P§;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.utils.getTimer;
   
   public class §3W§ extends §]!&§ implements IEventDispatcher
   {
      
      public static var §'9§:Number;
      
      public static var §#!1§:Number;
       
      
      public var §3!V§:Number;
      
      private var §`!#§:EventDispatcher;
      
      public function §3W§(param1:§=! §, param2:DisplayObjectContainer, param3:XML, param4:XML)
      {
         var canvas:§=! § = param1;
         var loadingScreen:DisplayObjectContainer = param2;
         var uiData:XML = param3;
         var assetData:XML = param4;
         this.§`!#§ = new EventDispatcher();
         super(canvas);
         if(§#Z§.stage)
         {
            this.init(loadingScreen,uiData,assetData);
         }
         else
         {
            §#Z§.addEventListener(Event.ADDED_TO_STAGE,function(param1:Event):void
            {
               §#Z§.removeEventListener(Event.ADDED_TO_STAGE,arguments.callee);
               init(loadingScreen,uiData,assetData);
            });
         }
      }
      
      protected function §`!P§() : void
      {
         §,!7§.init();
      }
      
      protected function init(param1:DisplayObjectContainer, param2:XML, param3:XML) : void
      {
         §>!^§.§,a§(stage);
         §>!^§.§0!f§ = false;
         §!6§.§,!;§(this.getVersionInfo());
         §!6§.§+>§ = this.getVersionInfo();
         §%!$§.§@!'§ = §#Z§.stage.loaderInfo.parameters;
         this.§`!P§();
         §4y§(new §4K§());
         var _loc4_:§;!?§ = this.initStateLoad();
         §4y§(_loc4_);
         _loc4_.§=c§(param1);
         _loc4_.§8!-§(param3);
         §>!;§.init(param2);
         if(§>#§.§`!6§())
         {
            §>#§.§2!g§("serverConnectionError");
         }
         §'A§(§;!?§.§3!?§);
         this.§,!M§();
      }
      
      protected function initStateLoad() : §;!?§
      {
         return new §;!?§(true,§;!?§.§3!?§,this.getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      public function §,!M§() : void
      {
         §#Z§.addEventListener(Event.ENTER_FRAME,this.§,,§);
         §#Z§.stage.addEventListener(Event.MOUSE_LEAVE,this.mouseLeave);
         §#Z§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.keyDown);
         §#Z§.stage.addEventListener(KeyboardEvent.KEY_UP,this.keyUp);
         this.§3!V§ = getTimer();
      }
      
      public function mouseLeave(param1:Event) : void
      {
         if(§!!%§())
         {
            §!!%§().mouseLeave();
         }
      }
      
      public function keyDown(param1:KeyboardEvent) : void
      {
         if(§!!%§())
         {
            §!!%§().keyDown(param1);
         }
         §!6§.keyDown(param1);
      }
      
      public function keyUp(param1:KeyboardEvent) : void
      {
         if(§!!%§())
         {
            §!!%§().keyUp(param1);
         }
      }
      
      public function §,,§(param1:Event) : void
      {
         var _loc2_:Number = getTimer() - this.§3!V§;
         this.§3!V§ = getTimer();
         §%g§.§'I§.update(_loc2_);
         this.§`!#§.dispatchEvent(param1);
         §;!P§.§0!?§(§#Z§.mouseX,§#Z§.mouseY);
         if(§%n§())
         {
            return;
         }
         if(this.updateState(_loc2_) == §%!$§.STATE_STATUS_COMPLETED)
         {
            §%n§();
         }
      }
      
      override public function updateState(param1:Number) : int
      {
         var _loc2_:int = super.updateState(param1);
         if(§!!%§().isGenericState())
         {
            if(_loc2_ == §%!$§.STATE_STATUS_COMPLETED)
            {
               §#Z§.addChild(§;!P§.activate());
               this.setFirstGameState();
            }
         }
         return _loc2_;
      }
      
      override protected function previousStateDeactivate() : void
      {
         §%g§.§'I§.§77§();
      }
      
      public function setFirstGameState() : void
      {
         §'A§(§4K§.§3!?§);
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
         this.§`!#§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         this.§`!#§.removeEventListener(param1,param2,param3);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return false;
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§`!#§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§`!#§.willTrigger(param1);
      }
   }
}
