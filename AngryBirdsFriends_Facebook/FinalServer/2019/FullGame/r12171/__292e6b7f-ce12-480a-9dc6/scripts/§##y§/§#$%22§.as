package §##y§
{
   import §";§.§false§;
   import §+`§.§%"q§;
   import §+`§.§2s§;
   import §3"V§.§ b§;
   import §4S§.§<#j§;
   import §6"p§.§8"M§;
   import §6"p§.§^"t§;
   import §;"5§.§6"W§;
   import §[c§.§ #a§;
   import §[c§.§8#[§;
   import §[c§.§@!<§;
   import §[c§.§]"a§;
   import §^w§.SWFWheel;
   import §`§.§?$B§;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.utils.getTimer;
   
   public class §#$"§ extends §@!<§ implements IEventDispatcher
   {
      
      public static var §'z§:Number;
      
      public static var §&!W§:Number;
       
      
      public var §finally§:Number;
      
      private var §8#q§:EventDispatcher;
      
      private var §#$&§:§%"q§;
      
      public function §#$"§(param1:§<Y§, param2:DisplayObjectContainer, param3:XML, param4:XML)
      {
         var canvas:§<Y§ = param1;
         var loadingScreen:DisplayObjectContainer = param2;
         var uiData:XML = param3;
         var assetData:XML = param4;
         this.§8#q§ = new EventDispatcher();
         super(canvas);
         if(§]#s§.stage)
         {
            this.init(loadingScreen,uiData,assetData);
         }
         else
         {
            §]#s§.addEventListener(Event.ADDED_TO_STAGE,function(param1:Event):void
            {
               §]#s§.removeEventListener(Event.ADDED_TO_STAGE,arguments.callee);
               init(loadingScreen,uiData,assetData);
            });
         }
      }
      
      public function get §,%§() : §%"q§
      {
         return this.§#$&§;
      }
      
      protected function §?9§() : void
      {
         § b§.init();
      }
      
      protected function init(param1:DisplayObjectContainer, param2:XML, param3:XML) : void
      {
         this.§#$&§ = new §%"q§(new §2s§("en"));
         SWFWheel.initialize(stage);
         SWFWheel.§[#e§ = false;
         §^"t§.§"p§(this.getVersionInfo());
         §^"t§.§7!Q§ = this.getVersionInfo();
         § #a§.§@"G§ = §]#s§.stage.loaderInfo.parameters;
         this.§?9§();
         §!#G§(new §8#[§(this.§,%§));
         var _loc4_:§]"a§ = this.initStateLoad();
         §!#G§(_loc4_);
         _loc4_.setLoadingScreen(param1);
         _loc4_.§%!F§(param3);
         §false§.init(param2);
         if(§<#j§.§`"N§())
         {
            §<#j§.§`"A§("serverConnectionError");
         }
         §3#§(§]"a§.STATE_NAME);
         this.§3"!§();
      }
      
      protected function initStateLoad() : §]"a§
      {
         return new §]"a§(this.§,%§,true,§]"a§.STATE_NAME,this.getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      public function §3"!§() : void
      {
         §]#s§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         §]#s§.stage.addEventListener(Event.MOUSE_LEAVE,this.mouseLeave);
         §]#s§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.keyDown);
         §]#s§.stage.addEventListener(KeyboardEvent.KEY_UP,this.keyUp);
         this.§finally§ = getTimer();
      }
      
      public function mouseLeave(param1:Event) : void
      {
         if(§9"n§())
         {
            §9"n§().mouseLeave();
         }
      }
      
      public function keyDown(param1:KeyboardEvent) : void
      {
         if(§9"n§())
         {
            §9"n§().keyDown(param1);
         }
         §^"t§.keyDown(param1);
      }
      
      public function keyUp(param1:KeyboardEvent) : void
      {
         if(§9"n§())
         {
            §9"n§().keyUp(param1);
         }
      }
      
      public function onEnterFrame(param1:Event) : void
      {
         var _loc2_:Number = getTimer() - this.§finally§;
         this.§finally§ = getTimer();
         §6"W§.§+!,§.update(_loc2_);
         var _loc3_:§?$B§ = new §?$B§(§?$B§.§^"%§,_loc2_,param1.bubbles,param1.cancelable);
         this.§8#q§.dispatchEvent(_loc3_);
         §8"M§.§#!y§(§]#s§.mouseX,§]#s§.mouseY);
         if(§=5§())
         {
            return;
         }
         if(this.updateState(_loc2_) == § #a§.§2#1§)
         {
            §=5§();
         }
      }
      
      override public function updateState(param1:Number) : int
      {
         var _loc2_:int = super.updateState(param1);
         if(§9"n§().isGenericState())
         {
            if(_loc2_ == § #a§.§2#1§)
            {
               §]#s§.addChild(§8"M§.activate());
               this.setFirstGameState();
            }
         }
         return _loc2_;
      }
      
      override protected function previousStateDeactivate() : void
      {
         §6"W§.§+!,§.§^$D§();
      }
      
      public function setFirstGameState() : void
      {
         §3#§(§8#[§.STATE_NAME);
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
         this.§8#q§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         this.§8#q§.removeEventListener(param1,param2,param3);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return false;
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§8#q§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§8#q§.willTrigger(param1);
      }
   }
}
