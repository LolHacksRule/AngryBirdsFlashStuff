package §[m§
{
   import §!+§.§67§;
   import §"p§.§@8§;
   import §"p§.§`!y§;
   import §%!,§.§,v§;
   import §%!,§.§5!C§;
   import §%!,§.§58§;
   import §%!,§.§6!b§;
   import §%B§.§^k§;
   import §0Z§.§-!M§;
   import §@">§.§#! §;
   import §[8§.§[!`§;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.utils.getTimer;
   
   public class §!";§ extends §5!C§ implements IEventDispatcher
   {
      
      public static var §="<§:Number;
      
      public static var §38§:Number;
       
      
      public var §<"5§:Number;
      
      private var §?!>§:EventDispatcher;
      
      public function §!";§(param1:§^^§, param2:DisplayObjectContainer, param3:XML, param4:XML)
      {
         var canvas:§^^§ = param1;
         var loadingScreen:DisplayObjectContainer = param2;
         var uiData:XML = param3;
         var assetData:XML = param4;
         this.§?!>§ = new EventDispatcher();
         super(canvas);
         if(§`!T§.stage)
         {
            this.init(loadingScreen,uiData,assetData);
         }
         else
         {
            §`!T§.addEventListener(Event.ADDED_TO_STAGE,function(param1:Event):void
            {
               §`!T§.removeEventListener(Event.ADDED_TO_STAGE,arguments.callee);
               init(loadingScreen,uiData,assetData);
            });
         }
      }
      
      protected function §]p§() : void
      {
         §^k§.init();
      }
      
      protected function init(param1:DisplayObjectContainer, param2:XML, param3:XML) : void
      {
         §67§.initialize(stage);
         §67§.§;>§ = false;
         §@8§.§!!R§(this.getVersionInfo());
         §@8§.§^s§ = this.getVersionInfo();
         §,v§.§""<§ = §`!T§.stage.loaderInfo.parameters;
         this.§]p§();
         §3!B§(new §6!b§());
         var _loc4_:§58§ = this.initStateLoad();
         §3!B§(_loc4_);
         _loc4_.§3[§(param1);
         _loc4_.§4!@§(param3);
         §#! §.init(param2);
         if(§[!`§.§?R§())
         {
            §[!`§.§+!a§("serverConnectionError");
         }
         §0!Q§(§58§.§8n§);
         this.§1!o§();
      }
      
      protected function initStateLoad() : §58§
      {
         return new §58§(true,§58§.§8n§,this.getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      public function §1!o§() : void
      {
         §`!T§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         §`!T§.stage.addEventListener(Event.MOUSE_LEAVE,this.mouseLeave);
         §`!T§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.keyDown);
         §`!T§.stage.addEventListener(KeyboardEvent.KEY_UP,this.keyUp);
         this.§<"5§ = getTimer();
      }
      
      public function mouseLeave(param1:Event) : void
      {
         if(§%"0§())
         {
            §%"0§().mouseLeave();
         }
      }
      
      public function keyDown(param1:KeyboardEvent) : void
      {
         if(§%"0§())
         {
            §%"0§().keyDown(param1);
         }
         §@8§.keyDown(param1);
      }
      
      public function keyUp(param1:KeyboardEvent) : void
      {
         if(§%"0§())
         {
            §%"0§().keyUp(param1);
         }
      }
      
      public function onEnterFrame(param1:Event) : void
      {
         var _loc2_:Number = getTimer() - this.§<"5§;
         this.§<"5§ = getTimer();
         §-!M§.§ "!§.update(_loc2_);
         this.§?!>§.dispatchEvent(param1);
         §`!y§.§-g§(§`!T§.mouseX,§`!T§.mouseY);
         if(§2!4§())
         {
            return;
         }
         if(this.updateState(_loc2_) == §,v§.STATE_STATUS_COMPLETED)
         {
            §2!4§();
         }
      }
      
      override public function updateState(param1:Number) : int
      {
         var _loc2_:int = super.updateState(param1);
         if(§%"0§().isGenericState())
         {
            if(_loc2_ == §,v§.STATE_STATUS_COMPLETED)
            {
               §`!T§.addChild(§`!y§.activate());
               this.setFirstGameState();
            }
         }
         return _loc2_;
      }
      
      override protected function previousStateDeactivate() : void
      {
         §-!M§.§ "!§.§7!E§();
      }
      
      public function setFirstGameState() : void
      {
         §0!Q§(§6!b§.§8n§);
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
         this.§?!>§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         this.§?!>§.removeEventListener(param1,param2,param3);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return false;
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§?!>§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§?!>§.willTrigger(param1);
      }
   }
}
