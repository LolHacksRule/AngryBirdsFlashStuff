package §0M§
{
   import §!!t§.§,-§;
   import §!!t§.§5K§;
   import §!!t§.§7t§;
   import §!!t§.§[!A§;
   import §+A§.SWFWheel;
   import §0!?§.§'!$§;
   import §0!?§.§<K§;
   import §0r§.§7!b§;
   import §1k§.§%4§;
   import §9"%§.§?V§;
   import §]!F§.§1"-§;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.utils.getTimer;
   
   public class §=!K§ extends §7t§ implements IEventDispatcher
   {
      
      public static var §@!X§:Number;
      
      public static var §;N§:Number;
       
      
      public var §;",§:Number;
      
      private var §"o§:EventDispatcher;
      
      public function §=!K§(param1:§`!9§, param2:DisplayObjectContainer, param3:XML, param4:XML)
      {
         var canvas:§`!9§ = param1;
         var loadingScreen:DisplayObjectContainer = param2;
         var uiData:XML = param3;
         var assetData:XML = param4;
         this.§"o§ = new EventDispatcher();
         super(canvas);
         if(§"=§.stage)
         {
            this.init(loadingScreen,uiData,assetData);
         }
         else
         {
            §"=§.addEventListener(Event.ADDED_TO_STAGE,function(param1:Event):void
            {
               §"=§.removeEventListener(Event.ADDED_TO_STAGE,arguments.callee);
               init(loadingScreen,uiData,assetData);
            });
         }
      }
      
      protected function §-"7§() : void
      {
         §%4§.init();
      }
      
      protected function init(param1:DisplayObjectContainer, param2:XML, param3:XML) : void
      {
         SWFWheel.initialize(stage);
         SWFWheel.§2n§ = false;
         §'!$§.§^C§(this.getVersionInfo());
         §'!$§.§&!9§ = this.getVersionInfo();
         §,-§.§ R§ = §"=§.stage.loaderInfo.parameters;
         this.§-"7§();
         §?F§(new §5K§());
         var _loc4_:§[!A§ = this.initStateLoad();
         §?F§(_loc4_);
         _loc4_.setLoadingScreen(param1);
         _loc4_.§7!J§(param3);
         §1"-§.init(param2);
         if(§?V§.§7z§())
         {
            §?V§.§@!c§("serverConnectionError");
         }
         § !`§(§[!A§.STATE_NAME);
         this.§&[§();
      }
      
      protected function initStateLoad() : §[!A§
      {
         return new §[!A§(true,§[!A§.STATE_NAME,this.getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      public function §&[§() : void
      {
         §"=§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         §"=§.stage.addEventListener(Event.MOUSE_LEAVE,this.mouseLeave);
         §"=§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.keyDown);
         §"=§.stage.addEventListener(KeyboardEvent.KEY_UP,this.keyUp);
         this.§;",§ = getTimer();
      }
      
      public function mouseLeave(param1:Event) : void
      {
         if(§>p§())
         {
            §>p§().mouseLeave();
         }
      }
      
      public function keyDown(param1:KeyboardEvent) : void
      {
         if(§>p§())
         {
            §>p§().keyDown(param1);
         }
         §'!$§.keyDown(param1);
      }
      
      public function keyUp(param1:KeyboardEvent) : void
      {
         if(§>p§())
         {
            §>p§().keyUp(param1);
         }
      }
      
      public function onEnterFrame(param1:Event) : void
      {
         var _loc2_:Number = getTimer() - this.§;",§;
         this.§;",§ = getTimer();
         §7!b§.§8c§.update(_loc2_);
         this.§"o§.dispatchEvent(param1);
         §<K§.§<P§(§"=§.mouseX,§"=§.mouseY);
         if(§`[§())
         {
            return;
         }
         if(this.updateState(_loc2_) == §,-§.STATE_STATUS_COMPLETED)
         {
            §`[§();
         }
      }
      
      override public function updateState(param1:Number) : int
      {
         var _loc2_:int = super.updateState(param1);
         if(§>p§().isGenericState())
         {
            if(_loc2_ == §,-§.STATE_STATUS_COMPLETED)
            {
               §"=§.addChild(§<K§.activate());
               this.setFirstGameState();
            }
         }
         return _loc2_;
      }
      
      override protected function previousStateDeactivate() : void
      {
         §7!b§.§8c§.§ "?§();
      }
      
      public function setFirstGameState() : void
      {
         § !`§(§5K§.STATE_NAME);
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
         this.§"o§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         this.§"o§.removeEventListener(param1,param2,param3);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return false;
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§"o§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§"o§.willTrigger(param1);
      }
   }
}
