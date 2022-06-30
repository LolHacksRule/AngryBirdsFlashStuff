package §>'§
{
   import §&!b§.§ c§;
   import §&!b§.§7!G§;
   import §-!f§.§=T§;
   import §1!d§.§9m§;
   import §;$§.§0M§;
   import §>!G§.§+3§;
   import §>!G§.§1o§;
   import §>!G§.§6!9§;
   import §>!G§.§^l§;
   import §]!S§.§5s§;
   import §^f§.§<q§;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.utils.getTimer;
   
   public class §super§ extends §+3§ implements IEventDispatcher
   {
      
      public static var §>!%§:Number;
      
      public static var § r§:Number;
       
      
      public var §?N§:Number;
      
      private var §@^§:EventDispatcher;
      
      public function §super§(param1:§??§, param2:DisplayObjectContainer, param3:XML, param4:XML)
      {
         var canvas:§??§ = param1;
         var loadingScreen:DisplayObjectContainer = param2;
         var uiData:XML = param3;
         var assetData:XML = param4;
         this.§@^§ = new EventDispatcher();
         super(canvas);
         if(§8!I§.stage)
         {
            this.init(loadingScreen,uiData,assetData);
         }
         else
         {
            §8!I§.addEventListener(Event.ADDED_TO_STAGE,function(param1:Event):void
            {
               §8!I§.removeEventListener(Event.ADDED_TO_STAGE,arguments.callee);
               init(loadingScreen,uiData,assetData);
            });
         }
      }
      
      protected function §>!f§() : void
      {
         §<q§.init();
      }
      
      protected function init(param1:DisplayObjectContainer, param2:XML, param3:XML) : void
      {
         §5s§.initialize(stage);
         §5s§.§>J§ = false;
         § c§.§7K§(this.getVersionInfo());
         § c§.§]E§ = this.getVersionInfo();
         §6!9§.§#'§ = §8!I§.stage.loaderInfo.parameters;
         this.§>!f§();
         §%Y§(new §^l§());
         var _loc4_:§1o§ = this.initStateLoad();
         §%Y§(_loc4_);
         _loc4_.§#!5§(param1);
         _loc4_.§;l§(param3);
         §=T§.init(param2);
         if(§0M§.§3!3§())
         {
            §0M§.§=Q§("serverConnectionError");
         }
         §0!9§(§1o§.§[!%§);
         this.§`F§();
      }
      
      protected function initStateLoad() : §1o§
      {
         return new §1o§(true,§1o§.§[!%§,this.getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      public function §`F§() : void
      {
         §8!I§.addEventListener(Event.ENTER_FRAME,this.§+A§);
         §8!I§.stage.addEventListener(Event.MOUSE_LEAVE,this.mouseLeave);
         §8!I§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.keyDown);
         §8!I§.stage.addEventListener(KeyboardEvent.KEY_UP,this.keyUp);
         this.§?N§ = getTimer();
      }
      
      public function mouseLeave(param1:Event) : void
      {
         if(§6e§())
         {
            §6e§().mouseLeave();
         }
      }
      
      public function keyDown(param1:KeyboardEvent) : void
      {
         if(§6e§())
         {
            §6e§().keyDown(param1);
         }
         § c§.keyDown(param1);
      }
      
      public function keyUp(param1:KeyboardEvent) : void
      {
         if(§6e§())
         {
            §6e§().keyUp(param1);
         }
      }
      
      public function §+A§(param1:Event) : void
      {
         var _loc2_:Number = getTimer() - this.§?N§;
         this.§?N§ = getTimer();
         §9m§.§?! §.update(_loc2_);
         this.§@^§.dispatchEvent(param1);
         §7!G§.§6T§(§8!I§.mouseX,§8!I§.mouseY);
         if(§4!`§())
         {
            return;
         }
         if(this.updateState(_loc2_) == §6!9§.STATE_STATUS_COMPLETED)
         {
            §4!`§();
         }
      }
      
      override public function updateState(param1:Number) : int
      {
         var _loc2_:int = super.updateState(param1);
         if(§6e§().isGenericState())
         {
            if(_loc2_ == §6!9§.STATE_STATUS_COMPLETED)
            {
               §8!I§.addChild(§7!G§.activate());
               this.setFirstGameState();
            }
         }
         return _loc2_;
      }
      
      override protected function previousStateDeactivate() : void
      {
         §9m§.§?! §.§[!1§();
      }
      
      public function setFirstGameState() : void
      {
         §0!9§(§^l§.§[!%§);
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
         this.§@^§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         this.§@^§.removeEventListener(param1,param2,param3);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return false;
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§@^§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§@^§.willTrigger(param1);
      }
   }
}
