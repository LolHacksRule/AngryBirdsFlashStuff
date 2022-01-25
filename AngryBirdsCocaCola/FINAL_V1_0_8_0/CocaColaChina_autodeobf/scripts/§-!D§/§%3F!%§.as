package §-!D§
{
   import § !C§.§'h§;
   import § !C§.§2F§;
   import § !C§.§3!>§;
   import § !C§.§6!W§;
   import §#!&§.§?u§;
   import §+x§.§-6§;
   import §0o§.§]!^§;
   import §7H§.§8Q§;
   import §^6§.§5@§;
   import §^=§.§,!X§;
   import §^=§.§8!6§;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.utils.getTimer;
   
   public class §?!%§ extends §'h§ implements IEventDispatcher
   {
      
      public static var §1!%§:Number;
      
      public static var §`b§:Number;
       
      
      public var §1`§:Number;
      
      private var §;$§:EventDispatcher;
      
      public function §?!%§(param1:§8!]§, param2:DisplayObjectContainer, param3:XML, param4:XML)
      {
         var canvas:§8!]§ = param1;
         var loadingScreen:DisplayObjectContainer = param2;
         var uiData:XML = param3;
         var assetData:XML = param4;
         this.§;$§ = new EventDispatcher();
         super(canvas);
         if(§6!0§.stage)
         {
            this.init(loadingScreen,uiData,assetData);
         }
         else
         {
            §6!0§.addEventListener(Event.ADDED_TO_STAGE,function(param1:Event):void
            {
               §6!0§.removeEventListener(Event.ADDED_TO_STAGE,arguments.callee);
               init(loadingScreen,uiData,assetData);
            });
         }
      }
      
      protected function §#!^§() : void
      {
         §-6§.init();
      }
      
      protected function init(param1:DisplayObjectContainer, param2:XML, param3:XML) : void
      {
         §]!^§.§=D§(stage);
         §]!^§.§+!,§ = false;
         §8!6§.§5!X§(this.getVersionInfo());
         §8!6§.§,`§ = this.getVersionInfo();
         §6!W§.§ !_§ = §6!0§.stage.loaderInfo.parameters;
         this.§#!^§();
         §-!e§(new §2F§());
         var _loc4_:§3!>§ = this.initStateLoad();
         §-!e§(_loc4_);
         _loc4_.§4b§(param1);
         _loc4_.§@[§(param3);
         §5@§.init(param2);
         if(§?u§.§%!M§())
         {
            §?u§.§%!I§("serverConnectionError");
         }
         §"G§(§3!>§.§ !P§);
         this.§=q§();
      }
      
      protected function initStateLoad() : §3!>§
      {
         return new §3!>§(true,§3!>§.§ !P§,this.getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      public function §=q§() : void
      {
         §6!0§.addEventListener(Event.ENTER_FRAME,this.§3!I§);
         §6!0§.stage.addEventListener(Event.MOUSE_LEAVE,this.mouseLeave);
         §6!0§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.keyDown);
         §6!0§.stage.addEventListener(KeyboardEvent.KEY_UP,this.keyUp);
         this.§1`§ = getTimer();
      }
      
      public function mouseLeave(param1:Event) : void
      {
         if(§<!"§())
         {
            §<!"§().mouseLeave();
         }
      }
      
      public function keyDown(param1:KeyboardEvent) : void
      {
         if(§<!"§())
         {
            §<!"§().keyDown(param1);
         }
         §8!6§.keyDown(param1);
      }
      
      public function keyUp(param1:KeyboardEvent) : void
      {
         if(§<!"§())
         {
            §<!"§().keyUp(param1);
         }
      }
      
      public function §3!I§(param1:Event) : void
      {
         var _loc2_:Number = getTimer() - this.§1`§;
         this.§1`§ = getTimer();
         §8Q§.§]!D§.update(_loc2_);
         this.§;$§.dispatchEvent(param1);
         §,!X§.§<B§(§6!0§.mouseX,§6!0§.mouseY);
         if(§0C§())
         {
            return;
         }
         if(this.updateState(_loc2_) == §6!W§.STATE_STATUS_COMPLETED)
         {
            §0C§();
         }
      }
      
      override public function updateState(param1:Number) : int
      {
         var _loc2_:int = super.updateState(param1);
         if(§<!"§().isGenericState())
         {
            if(_loc2_ == §6!W§.STATE_STATUS_COMPLETED)
            {
               §6!0§.addChild(§,!X§.activate());
               this.setFirstGameState();
            }
         }
         return _loc2_;
      }
      
      override protected function previousStateDeactivate() : void
      {
         §8Q§.§]!D§.§8J§();
      }
      
      public function setFirstGameState() : void
      {
         §"G§(§2F§.§ !P§);
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
         this.§;$§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         this.§;$§.removeEventListener(param1,param2,param3);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return false;
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§;$§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§;$§.willTrigger(param1);
      }
   }
}
