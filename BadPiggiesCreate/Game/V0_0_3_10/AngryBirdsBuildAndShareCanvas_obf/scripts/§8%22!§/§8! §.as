package §8"!§
{
   import § i§.§'V§;
   import §3[§.§-!&§;
   import §3[§.§0!K§;
   import §3[§.§6S§;
   import §3[§.§@!J§;
   import §4!t§.§1!=§;
   import §5^§.§ !x§;
   import §5u§.§ !J§;
   import §9!G§.§>!n§;
   import §9!G§.§]!e§;
   import §>"2§.§<y§;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.utils.getTimer;
   
   public class §8! § extends §-!&§ implements IEventDispatcher
   {
      
      public static var §0f§:Number;
      
      public static var §>5§:Number;
       
      
      public var §&!'§:Number;
      
      private var §0!L§:EventDispatcher;
      
      public function §8! §(param1:§'e§, param2:DisplayObjectContainer, param3:XML, param4:XML)
      {
         var canvas:§'e§ = param1;
         var loadingScreen:DisplayObjectContainer = param2;
         var uiData:XML = param3;
         var assetData:XML = param4;
         this.§0!L§ = new EventDispatcher();
         super(canvas);
         if(§7!;§.stage)
         {
            this.init(loadingScreen,uiData,assetData);
         }
         else
         {
            §7!;§.addEventListener(Event.ADDED_TO_STAGE,function(param1:Event):void
            {
               §7!;§.removeEventListener(Event.ADDED_TO_STAGE,arguments.callee);
               init(loadingScreen,uiData,assetData);
            });
         }
      }
      
      protected function §5S§() : void
      {
         § !x§.init();
      }
      
      protected function init(param1:DisplayObjectContainer, param2:XML, param3:XML) : void
      {
         § !J§.initialize(stage);
         § !J§.§'1§ = false;
         §]!e§.§2!>§(this.getVersionInfo());
         §]!e§.§!!n§ = this.getVersionInfo();
         §0!K§.§2"$§ = §7!;§.stage.loaderInfo.parameters;
         this.§5S§();
         §@!c§(new §@!J§());
         var _loc4_:§6S§ = this.initStateLoad();
         §@!c§(_loc4_);
         _loc4_.§ 6§(param1);
         _loc4_.§?!e§(param3);
         §1!=§.init(param2);
         if(§'V§.§=E§())
         {
            §'V§.§-X§("serverConnectionError");
         }
         §%-§(§6S§.§]"2§);
         this.§3#§();
      }
      
      protected function initStateLoad() : §6S§
      {
         return new §6S§(true,§6S§.§]"2§,this.getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      public function §3#§() : void
      {
         §7!;§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         §7!;§.stage.addEventListener(Event.MOUSE_LEAVE,this.mouseLeave);
         §7!;§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.keyDown);
         §7!;§.stage.addEventListener(KeyboardEvent.KEY_UP,this.keyUp);
         this.§&!'§ = getTimer();
      }
      
      public function mouseLeave(param1:Event) : void
      {
         if(§7F§())
         {
            §7F§().mouseLeave();
         }
      }
      
      public function keyDown(param1:KeyboardEvent) : void
      {
         if(§7F§())
         {
            §7F§().keyDown(param1);
         }
         §]!e§.keyDown(param1);
      }
      
      public function keyUp(param1:KeyboardEvent) : void
      {
         if(§7F§())
         {
            §7F§().keyUp(param1);
         }
      }
      
      public function onEnterFrame(param1:Event) : void
      {
         var _loc2_:Number = getTimer() - this.§&!'§;
         this.§&!'§ = getTimer();
         §<y§.§,l§.update(_loc2_);
         this.§0!L§.dispatchEvent(param1);
         §>!n§.§1!b§(§7!;§.mouseX,§7!;§.mouseY);
         if(§+!#§())
         {
            return;
         }
         if(this.updateState(_loc2_) == §0!K§.STATE_STATUS_COMPLETED)
         {
            §+!#§();
         }
      }
      
      override public function updateState(param1:Number) : int
      {
         var _loc2_:int = super.updateState(param1);
         if(§7F§().isGenericState())
         {
            if(_loc2_ == §0!K§.STATE_STATUS_COMPLETED)
            {
               §7!;§.addChild(§>!n§.activate());
               this.setFirstGameState();
            }
         }
         return _loc2_;
      }
      
      override protected function previousStateDeactivate() : void
      {
         §<y§.§,l§.§="1§();
      }
      
      public function setFirstGameState() : void
      {
         §%-§(§@!J§.§]"2§);
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
         this.§0!L§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         this.§0!L§.removeEventListener(param1,param2,param3);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return false;
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§0!L§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§0!L§.willTrigger(param1);
      }
   }
}
