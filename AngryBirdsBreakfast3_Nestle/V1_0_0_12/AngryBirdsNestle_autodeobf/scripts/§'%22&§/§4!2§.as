package §'"&§
{
   import §&!I§.§8!@§;
   import §+!2§.§%!-§;
   import §1!c§.§@N§;
   import §7"6§.§8b§;
   import §7"6§.§^!_§;
   import §8!$§.§ !D§;
   import §8!$§.§?p§;
   import §;X§.§4!@§;
   import §=j§.§^!J§;
   import §?9§.§ x§;
   import §?9§.§,^§;
   import §?9§.§@!]§;
   import §?9§.§@P§;
   import §@!0§.§%"!§;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.utils.getTimer;
   
   public class §4!2§ extends §@!]§ implements IEventDispatcher
   {
      
      public static var §<^§:Number;
      
      public static var §`r§:Number;
       
      
      public var §?2§:Number;
      
      private var §5!o§:EventDispatcher;
      
      private var §%E§:§^!_§;
      
      public function §4!2§(param1:§9X§, param2:DisplayObjectContainer, param3:XML, param4:XML)
      {
         var canvas:§9X§ = param1;
         var loadingScreen:DisplayObjectContainer = param2;
         var uiData:XML = param3;
         var assetData:XML = param4;
         this.§5!o§ = new EventDispatcher();
         super(canvas);
         if(§8@§.stage)
         {
            this.init(loadingScreen,uiData,assetData);
         }
         else
         {
            §8@§.addEventListener(Event.ADDED_TO_STAGE,function(param1:Event):void
            {
               §8@§.removeEventListener(Event.ADDED_TO_STAGE,arguments.callee);
               init(loadingScreen,uiData,assetData);
            });
         }
      }
      
      public function get §`"6§() : §^!_§
      {
         return this.§%E§;
      }
      
      protected function §7!s§() : void
      {
         §4!@§.init();
      }
      
      protected function init(param1:DisplayObjectContainer, param2:XML, param3:XML) : void
      {
         this.§%E§ = new §^!_§(new §8b§("en"));
         §@N§.initialize(stage);
         §@N§.§!!,§ = false;
         §?p§.§?0§(this.getVersionInfo());
         §?p§.§'![§ = this.getVersionInfo();
         § x§.§2k§ = §8@§.stage.loaderInfo.parameters;
         this.§7!s§();
         §<!,§(new §,^§(this.§`"6§));
         var _loc4_:§@P§ = this.initStateLoad();
         §<!,§(_loc4_);
         _loc4_.setLoadingScreen(param1);
         _loc4_.§1!o§(param3);
         §%!-§.init(param2);
         if(§^!J§.§!&§())
         {
            §^!J§.§79§("serverConnectionError");
         }
         §]a§(§@P§.§]!y§);
         this.§7D§();
      }
      
      protected function initStateLoad() : §@P§
      {
         return new §@P§(this.§`"6§,true,§@P§.§]!y§,this.getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      public function §7D§() : void
      {
         §8@§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         §8@§.stage.addEventListener(Event.MOUSE_LEAVE,this.mouseLeave);
         §8@§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.keyDown);
         §8@§.stage.addEventListener(KeyboardEvent.KEY_UP,this.keyUp);
         this.§?2§ = getTimer();
      }
      
      public function mouseLeave(param1:Event) : void
      {
         if(§4!^§())
         {
            §4!^§().mouseLeave();
         }
      }
      
      public function keyDown(param1:KeyboardEvent) : void
      {
         if(§4!^§())
         {
            §4!^§().keyDown(param1);
         }
         §?p§.keyDown(param1);
      }
      
      public function keyUp(param1:KeyboardEvent) : void
      {
         if(§4!^§())
         {
            §4!^§().keyUp(param1);
         }
      }
      
      public function onEnterFrame(param1:Event) : void
      {
         var _loc2_:Number = getTimer() - this.§?2§;
         this.§?2§ = getTimer();
         §%"!§.§&!;§.update(_loc2_);
         var _loc3_:§8!@§ = new §8!@§(§8!@§.§-!P§,_loc2_,param1.bubbles,param1.cancelable);
         this.§5!o§.dispatchEvent(_loc3_);
         § !D§.mouseMove(§8@§.mouseX,§8@§.mouseY);
         if(§!J§())
         {
            return;
         }
         if(this.updateState(_loc2_) == § x§.§]F§)
         {
            §!J§();
         }
      }
      
      override public function updateState(param1:Number) : int
      {
         var _loc2_:int = super.updateState(param1);
         if(§4!^§().isGenericState())
         {
            if(_loc2_ == § x§.§]F§)
            {
               §8@§.addChild(§ !D§.activate());
               this.setFirstGameState();
            }
         }
         return _loc2_;
      }
      
      override protected function previousStateDeactivate() : void
      {
         §%"!§.§&!;§.§?"7§();
      }
      
      public function setFirstGameState() : void
      {
         §]a§(§,^§.§]!y§);
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
         this.§5!o§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         this.§5!o§.removeEventListener(param1,param2,param3);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return false;
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§5!o§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§5!o§.willTrigger(param1);
      }
   }
}
