package §3i§
{
   import §!>§.§!#§;
   import §"A§.§`!N§;
   import §%!1§.§%E§;
   import §-!6§.§3M§;
   import §-!6§.§>I§;
   import §5!G§.§31§;
   import §75§.§<_§;
   import §<!P§.§9!I§;
   import §<!P§.§>l§;
   import §<!P§.§[!6§;
   import §<!P§.§[!T§;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.utils.getTimer;
   
   public class §6c§ extends §[!T§ implements IEventDispatcher
   {
      
      public static var §>r§:Number;
      
      public static var §=![§:Number;
       
      
      public var §1A§:Number;
      
      private var §var§:EventDispatcher;
      
      public function §6c§(param1:§2!`§, param2:DisplayObjectContainer, param3:XML, param4:XML)
      {
         var canvas:§2!`§ = param1;
         var loadingScreen:DisplayObjectContainer = param2;
         var uiData:XML = param3;
         var assetData:XML = param4;
         this.§var§ = new EventDispatcher();
         super(canvas);
         if(§`3§.stage)
         {
            this.init(loadingScreen,uiData,assetData);
         }
         else
         {
            §`3§.addEventListener(Event.ADDED_TO_STAGE,function(param1:Event):void
            {
               §`3§.removeEventListener(Event.ADDED_TO_STAGE,arguments.callee);
               init(loadingScreen,uiData,assetData);
            });
         }
      }
      
      protected function §<C§() : void
      {
         §31§.init();
      }
      
      protected function init(param1:DisplayObjectContainer, param2:XML, param3:XML) : void
      {
         §<_§.§8j§(stage);
         §<_§.§2p§ = false;
         §>I§.§>U§(this.getVersionInfo());
         §>l§.§+!F§ = §`3§.stage.loaderInfo.parameters;
         this.§<C§();
         §,!2§(new §9!I§());
         var _loc4_:§[!6§ = this.initStateLoad();
         §,!2§(_loc4_);
         _loc4_.§7!-§(param1);
         _loc4_.§6l§(param3);
         §`!N§.init(param2);
         if(§%E§.§`>§())
         {
            §%E§.§-,§("serverConnectionError");
         }
         § t§(§[!6§.§]U§);
         this.§=t§();
      }
      
      protected function initStateLoad() : §[!6§
      {
         return new §[!6§(true,§[!6§.§]U§,this.getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      public function §=t§() : void
      {
         §`3§.addEventListener(Event.ENTER_FRAME,this.§;!3§);
         §`3§.stage.addEventListener(Event.MOUSE_LEAVE,this.mouseLeave);
         §`3§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.keyDown);
         §`3§.stage.addEventListener(KeyboardEvent.KEY_UP,this.keyUp);
         this.§1A§ = getTimer();
      }
      
      public function mouseLeave(param1:Event) : void
      {
         if(§3!M§())
         {
            §3!M§().mouseLeave();
         }
      }
      
      public function keyDown(param1:KeyboardEvent) : void
      {
         if(§3!M§())
         {
            §3!M§().keyDown(param1);
         }
         §>I§.keyDown(param1);
      }
      
      public function keyUp(param1:KeyboardEvent) : void
      {
         if(§3!M§())
         {
            §3!M§().keyUp(param1);
         }
      }
      
      public function §;!3§(param1:Event) : void
      {
         var _loc2_:Number = getTimer() - this.§1A§;
         this.§1A§ = getTimer();
         §!#§.§!5§.update(_loc2_);
         this.§var§.dispatchEvent(param1);
         §3M§.§3O§(§`3§.mouseX,§`3§.mouseY);
         if(§2%§())
         {
            return;
         }
         if(this.updateState(_loc2_) == §>l§.STATE_STATUS_COMPLETED)
         {
            §2%§();
         }
      }
      
      override public function updateState(param1:Number) : int
      {
         var _loc2_:int = super.updateState(param1);
         if(§3!M§().isGenericState())
         {
            if(_loc2_ == §>l§.STATE_STATUS_COMPLETED)
            {
               §`3§.addChild(§3M§.activate());
               this.setFirstGameState();
            }
         }
         return _loc2_;
      }
      
      override protected function previousStateDeactivate() : void
      {
         §!#§.§!5§.§^W§();
      }
      
      public function setFirstGameState() : void
      {
         § t§(§9!I§.§]U§);
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
         this.§var§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         this.§var§.removeEventListener(param1,param2,param3);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return false;
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§var§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§var§.willTrigger(param1);
      }
   }
}
