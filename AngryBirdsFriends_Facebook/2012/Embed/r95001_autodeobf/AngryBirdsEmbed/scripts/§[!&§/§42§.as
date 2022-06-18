package §[!&§
{
   import §0m§.§"!9§;
   import §0m§.§'T§;
   import §0m§.§,5§;
   import §0m§.§1!,§;
   import §1!?§.§7_§;
   import §3&§.SWFWheel;
   import §6!,§.§1W§;
   import §9H§.§-!7§;
   import §9H§.§@M§;
   import §]5§.§,G§;
   import §`X§.§%!5§;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.utils.getTimer;
   
   public class §42§ extends §"!9§ implements IEventDispatcher
   {
      
      public static var §+D§:Number;
      
      public static var §4c§:Number;
       
      
      public var §<M§:Number;
      
      private var §2$§:EventDispatcher;
      
      public function §42§(param1:§[R§, param2:DisplayObjectContainer, param3:XML, param4:XML)
      {
         var canvas:§[R§ = param1;
         var loadingScreen:DisplayObjectContainer = param2;
         var uiData:XML = param3;
         var assetData:XML = param4;
         this.§2$§ = new EventDispatcher();
         super(canvas);
         if(§<!E§.stage)
         {
            this.init(loadingScreen,uiData,assetData);
         }
         else
         {
            §<!E§.addEventListener(Event.ADDED_TO_STAGE,function(param1:Event):void
            {
               §<!E§.removeEventListener(Event.ADDED_TO_STAGE,arguments.callee);
               init(loadingScreen,uiData,assetData);
            });
         }
      }
      
      protected function initSoundEngine() : void
      {
         §7_§.init();
      }
      
      protected function init(param1:DisplayObjectContainer, param2:XML, param3:XML) : void
      {
         SWFWheel.initialize(stage);
         SWFWheel.§@8§ = true;
         §@M§.§!!B§(this.getVersionInfo());
         §1!,§.§#s§ = §<!E§.stage.loaderInfo.parameters;
         this.initSoundEngine();
         §!a§(new §'T§());
         var _loc4_:§,5§ = this.initStateLoad();
         §!a§(_loc4_);
         _loc4_.setLoadingScreen(param1);
         _loc4_.§<a§(param3);
         §1W§.init(param2);
         if(§%!5§.§else§())
         {
            §%!5§.§"!0§("serverConnectionError");
         }
         §case§(§,5§.§5%§);
         this.§6I§();
      }
      
      protected function initStateLoad() : §,5§
      {
         return new §,5§(true,§,5§.§5%§,this.getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      public function §6I§() : void
      {
         §<!E§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         §<!E§.stage.addEventListener(Event.MOUSE_LEAVE,this.mouseLeave);
         §<!E§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.keyDown);
         §<!E§.stage.addEventListener(KeyboardEvent.KEY_UP,this.keyUp);
         this.§<M§ = getTimer();
      }
      
      public function mouseLeave(param1:Event) : void
      {
         if(§^b§())
         {
            §^b§().mouseLeave();
         }
      }
      
      public function keyDown(param1:KeyboardEvent) : void
      {
         if(§^b§())
         {
            §^b§().keyDown(param1);
         }
         §@M§.keyDown(param1);
      }
      
      public function keyUp(param1:KeyboardEvent) : void
      {
         if(§^b§())
         {
            §^b§().keyUp(param1);
         }
      }
      
      public function onEnterFrame(param1:Event) : void
      {
         var _loc2_:Number = getTimer() - this.§<M§;
         this.§<M§ = getTimer();
         §,G§.§+S§.update(_loc2_);
         this.§2$§.dispatchEvent(param1);
         §-!7§.§0C§(§<!E§.mouseX,§<!E§.mouseY);
         if(§7`§())
         {
            return;
         }
         if(this.updateState(_loc2_) == §1!,§.STATE_STATUS_COMPLETED)
         {
            §7`§();
         }
      }
      
      override public function updateState(param1:Number) : int
      {
         var _loc2_:int = super.updateState(param1);
         if(§^b§().isGenericState())
         {
            if(_loc2_ == §1!,§.STATE_STATUS_COMPLETED)
            {
               §<!E§.addChild(§-!7§.activate());
               this.setFirstGameState();
            }
         }
         return _loc2_;
      }
      
      override protected function previousStateDeactivate() : void
      {
         §,G§.§+S§.§0,§();
      }
      
      public function setFirstGameState() : void
      {
         §case§(§'T§.§5%§);
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
         this.§2$§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         this.§2$§.removeEventListener(param1,param2,param3);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return false;
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§2$§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§2$§.willTrigger(param1);
      }
   }
}
