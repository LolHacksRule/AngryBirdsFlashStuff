package § !0§
{
   import § !G§.§ #§;
   import § !G§.§`e§;
   import §#!V§.§';§;
   import §-H§.§ 5§;
   import §-H§.§&c§;
   import §-H§.§>!T§;
   import §-H§.§@!-§;
   import §0F§.§0p§;
   import §9!=§.§[!6§;
   import §`!4§.§ !]§;
   import §`!K§.§!!>§;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.utils.getTimer;
   
   public class §<O§ extends § 5§ implements IEventDispatcher
   {
      
      public static var §[E§:Number;
      
      public static var §&a§:Number;
       
      
      public var §3d§:Number;
      
      private var §;!>§:EventDispatcher;
      
      public function §<O§(param1:§##§, param2:DisplayObjectContainer, param3:XML, param4:XML)
      {
         var canvas:§##§ = param1;
         var loadingScreen:DisplayObjectContainer = param2;
         var uiData:XML = param3;
         var assetData:XML = param4;
         this.§;!>§ = new EventDispatcher();
         super(canvas);
         if(§1C§.stage)
         {
            this.init(loadingScreen,uiData,assetData);
         }
         else
         {
            §1C§.addEventListener(Event.ADDED_TO_STAGE,function(param1:Event):void
            {
               §1C§.removeEventListener(Event.ADDED_TO_STAGE,arguments.callee);
               init(loadingScreen,uiData,assetData);
            });
         }
      }
      
      protected function § !$§() : void
      {
         §!!>§.init();
      }
      
      protected function init(param1:DisplayObjectContainer, param2:XML, param3:XML) : void
      {
         § !]§.§&O§(stage);
         § !]§.§%l§ = true;
         § #§.§8R§(this.getVersionInfo());
         §&c§.§&!0§ = §1C§.stage.loaderInfo.parameters;
         this.§ !$§();
         §#d§(new §>!T§());
         var _loc4_:§@!-§ = this.initStateLoad();
         §#d§(_loc4_);
         _loc4_.§3!U§(param1);
         _loc4_.§<!!§(param3);
         §0p§.init(param2);
         if(§[!6§.§#D§())
         {
            §[!6§.§%!G§("serverConnectionError");
         }
         §=T§(§@!-§.§9!P§);
         this.§+!+§();
      }
      
      protected function initStateLoad() : §@!-§
      {
         return new §@!-§(true,§@!-§.§9!P§,this.getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      public function §+!+§() : void
      {
         §1C§.addEventListener(Event.ENTER_FRAME,this.§<!%§);
         §1C§.stage.addEventListener(Event.MOUSE_LEAVE,this.mouseLeave);
         §1C§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.keyDown);
         §1C§.stage.addEventListener(KeyboardEvent.KEY_UP,this.keyUp);
         this.§3d§ = getTimer();
      }
      
      public function mouseLeave(param1:Event) : void
      {
         if(§?!1§())
         {
            §?!1§().mouseLeave();
         }
      }
      
      public function keyDown(param1:KeyboardEvent) : void
      {
         if(§?!1§())
         {
            §?!1§().keyDown(param1);
         }
         § #§.keyDown(param1);
      }
      
      public function keyUp(param1:KeyboardEvent) : void
      {
         if(§?!1§())
         {
            §?!1§().keyUp(param1);
         }
      }
      
      public function §<!%§(param1:Event) : void
      {
         var _loc2_:Number = getTimer() - this.§3d§;
         this.§3d§ = getTimer();
         §';§.§%!O§.update(_loc2_);
         this.§;!>§.dispatchEvent(param1);
         §`e§.§'9§(§1C§.mouseX,§1C§.mouseY);
         if(§"3§())
         {
            return;
         }
         if(this.updateState(_loc2_) == §&c§.STATE_STATUS_COMPLETED)
         {
            §"3§();
         }
      }
      
      override public function updateState(param1:Number) : int
      {
         var _loc2_:int = super.updateState(param1);
         if(§?!1§().isGenericState())
         {
            if(_loc2_ == §&c§.STATE_STATUS_COMPLETED)
            {
               §1C§.addChild(§`e§.activate());
               this.setFirstGameState();
            }
         }
         return _loc2_;
      }
      
      override protected function previousStateDeactivate() : void
      {
         §';§.§%!O§.§ e§();
      }
      
      public function setFirstGameState() : void
      {
         §=T§(§>!T§.§9!P§);
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
         this.§;!>§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         this.§;!>§.removeEventListener(param1,param2,param3);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return false;
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§;!>§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§;!>§.willTrigger(param1);
      }
   }
}
