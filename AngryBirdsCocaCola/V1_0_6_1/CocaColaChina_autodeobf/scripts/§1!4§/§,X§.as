package §1!4§
{
   import §%3§.§>!A§;
   import §,f§.§5@§;
   import §6a§.§;!a§;
   import §<!!§.§-"§;
   import §<!!§.§<!B§;
   import §=L§.§@E§;
   import §@W§.§19§;
   import §@W§.§2!_§;
   import §@W§.§7E§;
   import §@W§.§[!'§;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.utils.getTimer;
   import §set §.§[!;§;
   
   public class §,X§ extends §[!'§ implements IEventDispatcher
   {
      
      public static var §%!1§:Number;
      
      public static var §3J§:Number;
       
      
      public var §6!H§:Number;
      
      private var §;C§:EventDispatcher;
      
      public function §,X§(param1:§^!^§, param2:DisplayObjectContainer, param3:XML, param4:XML)
      {
         var canvas:§^!^§ = param1;
         var loadingScreen:DisplayObjectContainer = param2;
         var uiData:XML = param3;
         var assetData:XML = param4;
         this.§;C§ = new EventDispatcher();
         super(canvas);
         if(§%D§.stage)
         {
            this.init(loadingScreen,uiData,assetData);
         }
         else
         {
            §%D§.addEventListener(Event.ADDED_TO_STAGE,function(param1:Event):void
            {
               §%D§.removeEventListener(Event.ADDED_TO_STAGE,arguments.callee);
               init(loadingScreen,uiData,assetData);
            });
         }
      }
      
      protected function §'!7§() : void
      {
         §@E§.init();
      }
      
      protected function init(param1:DisplayObjectContainer, param2:XML, param3:XML) : void
      {
         §5@§.§@#§(stage);
         §5@§.§throw§ = true;
         §-"§.§="§(this.getVersionInfo());
         §2!_§.§"!d§ = §%D§.stage.loaderInfo.parameters;
         this.§'!7§();
         §-e§(new §7E§());
         var _loc4_:§19§ = this.initStateLoad();
         §-e§(_loc4_);
         _loc4_.§`F§(param1);
         _loc4_.§3!#§(param3);
         §>!A§.init(param2);
         if(§[!;§.§6!9§())
         {
            §[!;§.§&&§("serverConnectionError");
         }
         § 7§(§19§.§^!O§);
         this.§2!§();
      }
      
      protected function initStateLoad() : §19§
      {
         return new §19§(true,§19§.§^!O§,this.getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      public function §2!§() : void
      {
         §%D§.addEventListener(Event.ENTER_FRAME,this.§6!2§);
         §%D§.stage.addEventListener(Event.MOUSE_LEAVE,this.mouseLeave);
         §%D§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.keyDown);
         §%D§.stage.addEventListener(KeyboardEvent.KEY_UP,this.keyUp);
         this.§6!H§ = getTimer();
      }
      
      public function mouseLeave(param1:Event) : void
      {
         if(§?!7§())
         {
            §?!7§().mouseLeave();
         }
      }
      
      public function keyDown(param1:KeyboardEvent) : void
      {
         if(§?!7§())
         {
            §?!7§().keyDown(param1);
         }
         §-"§.keyDown(param1);
      }
      
      public function keyUp(param1:KeyboardEvent) : void
      {
         if(§?!7§())
         {
            §?!7§().keyUp(param1);
         }
      }
      
      public function §6!2§(param1:Event) : void
      {
         var _loc2_:Number = getTimer() - this.§6!H§;
         this.§6!H§ = getTimer();
         §;!a§.§0%§.update(_loc2_);
         this.§;C§.dispatchEvent(param1);
         §<!B§.§;;§(§%D§.mouseX,§%D§.mouseY);
         if(§'e§())
         {
            return;
         }
         if(this.updateState(_loc2_) == §2!_§.STATE_STATUS_COMPLETED)
         {
            §'e§();
         }
      }
      
      override public function updateState(param1:Number) : int
      {
         var _loc2_:int = super.updateState(param1);
         if(§?!7§().isGenericState())
         {
            if(_loc2_ == §2!_§.STATE_STATUS_COMPLETED)
            {
               §%D§.addChild(§<!B§.activate());
               this.setFirstGameState();
            }
         }
         return _loc2_;
      }
      
      override protected function previousStateDeactivate() : void
      {
         §;!a§.§0%§.§60§();
      }
      
      public function setFirstGameState() : void
      {
         § 7§(§7E§.§^!O§);
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
         this.§;C§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         this.§;C§.removeEventListener(param1,param2,param3);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return false;
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§;C§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§;C§.willTrigger(param1);
      }
   }
}
