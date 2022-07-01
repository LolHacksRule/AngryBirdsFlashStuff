package §="3§
{
   import § !Q§.§"D§;
   import § !Q§.§9%§;
   import §"V§.§0"#§;
   import §'!u§.§&S§;
   import §'!u§.§6A§;
   import §-b§.§"!d§;
   import §2,§.§"G§;
   import §4W§.§]l§;
   import §8!$§.§4!u§;
   import §8!$§.§@![§;
   import §8!$§.§]M§;
   import §8!$§.§`0§;
   import §;s§.§%!c§;
   import §^6§.§=!A§;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.utils.getTimer;
   
   public class §[N§ extends §]M§ implements IEventDispatcher
   {
      
      public static var §'5§:Number;
      
      public static var §0A§:Number;
       
      
      public var §[X§:Number;
      
      private var §!!"§:EventDispatcher;
      
      private var §-F§:§&S§;
      
      public function §[N§(param1:§0!z§, param2:DisplayObjectContainer, param3:XML, param4:XML)
      {
         var canvas:§0!z§ = param1;
         var loadingScreen:DisplayObjectContainer = param2;
         var uiData:XML = param3;
         var assetData:XML = param4;
         this.§!!"§ = new EventDispatcher();
         super(canvas);
         if(§6L§.stage)
         {
            this.init(loadingScreen,uiData,assetData);
         }
         else
         {
            §6L§.addEventListener(Event.ADDED_TO_STAGE,function(param1:Event):void
            {
               §6L§.removeEventListener(Event.ADDED_TO_STAGE,arguments.callee);
               init(loadingScreen,uiData,assetData);
            });
         }
      }
      
      public function get §!""§() : §&S§
      {
         return this.§-F§;
      }
      
      protected function §"2§() : void
      {
         §%!c§.init();
      }
      
      protected function init(param1:DisplayObjectContainer, param2:XML, param3:XML) : void
      {
         this.§-F§ = new §&S§(new §6A§("en"));
         §]l§.initialize(stage);
         §]l§.§ #§ = false;
         §"D§.§3""§(this.getVersionInfo());
         §"D§.§,L§ = this.getVersionInfo();
         §@![§.§90§ = §6L§.stage.loaderInfo.parameters;
         this.§"2§();
         §["4§(new §4!u§(this.§!""§));
         var _loc4_:§`0§ = this.initStateLoad();
         §["4§(_loc4_);
         _loc4_.setLoadingScreen(param1);
         _loc4_.§=w§(param3);
         §=!A§.init(param2);
         if(§"G§.§"!6§())
         {
            §"G§.§@!m§("serverConnectionError");
         }
         §8!`§(§`0§.§+a§);
         this.§9! §();
      }
      
      protected function initStateLoad() : §`0§
      {
         return new §`0§(this.§!""§,true,§`0§.§+a§,this.getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      public function §9! §() : void
      {
         §6L§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         §6L§.stage.addEventListener(Event.MOUSE_LEAVE,this.mouseLeave);
         §6L§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.keyDown);
         §6L§.stage.addEventListener(KeyboardEvent.KEY_UP,this.keyUp);
         this.§[X§ = getTimer();
      }
      
      public function mouseLeave(param1:Event) : void
      {
         if(§']§())
         {
            §']§().mouseLeave();
         }
      }
      
      public function keyDown(param1:KeyboardEvent) : void
      {
         if(§']§())
         {
            §']§().keyDown(param1);
         }
         §"D§.keyDown(param1);
      }
      
      public function keyUp(param1:KeyboardEvent) : void
      {
         if(§']§())
         {
            §']§().keyUp(param1);
         }
      }
      
      public function onEnterFrame(param1:Event) : void
      {
         var _loc2_:Number = getTimer() - this.§[X§;
         this.§[X§ = getTimer();
         §"!d§.§>!P§.update(_loc2_);
         var _loc3_:§0"#§ = new §0"#§(§0"#§.§2;§,_loc2_,param1.bubbles,param1.cancelable);
         this.§!!"§.dispatchEvent(_loc3_);
         §9%§.mouseMove(§6L§.mouseX,§6L§.mouseY);
         if(§?F§())
         {
            return;
         }
         if(this.updateState(_loc2_) == §@![§.§1!?§)
         {
            §?F§();
         }
      }
      
      override public function updateState(param1:Number) : int
      {
         var _loc2_:int = super.updateState(param1);
         if(§']§().isGenericState())
         {
            if(_loc2_ == §@![§.§1!?§)
            {
               §6L§.addChild(§9%§.activate());
               this.setFirstGameState();
            }
         }
         return _loc2_;
      }
      
      override protected function previousStateDeactivate() : void
      {
         §"!d§.§>!P§.§4m§();
      }
      
      public function setFirstGameState() : void
      {
         §8!`§(§4!u§.§+a§);
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
         this.§!!"§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         this.§!!"§.removeEventListener(param1,param2,param3);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return false;
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§!!"§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§!!"§.willTrigger(param1);
      }
   }
}
