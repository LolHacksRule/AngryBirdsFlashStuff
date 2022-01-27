package §>!E§
{
   import § !3§.§!X§;
   import § !3§.§9v§;
   import §!a§.§&6§;
   import §!a§.§2"§;
   import §!a§.§?v§;
   import §!a§.§[d§;
   import §#!+§.§?V§;
   import §#;§.§42§;
   import §-Y§.§>!'§;
   import §2!D§.§'!7§;
   import §=b§.§7]§;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.utils.getTimer;
   
   public class §=!_§ extends §?v§ implements IEventDispatcher
   {
      
      public static var §]!W§:Number;
      
      public static var §&t§:Number;
       
      
      public var §5! §:Number;
      
      private var §'!,§:EventDispatcher;
      
      public function §=!_§(param1:§@x§, param2:DisplayObjectContainer, param3:XML, param4:XML)
      {
         var canvas:§@x§ = param1;
         var loadingScreen:DisplayObjectContainer = param2;
         var uiData:XML = param3;
         var assetData:XML = param4;
         this.§'!,§ = new EventDispatcher();
         super(canvas);
         if(§1!]§.stage)
         {
            this.init(loadingScreen,uiData,assetData);
         }
         else
         {
            §1!]§.addEventListener(Event.ADDED_TO_STAGE,function(param1:Event):void
            {
               §1!]§.removeEventListener(Event.ADDED_TO_STAGE,arguments.callee);
               init(loadingScreen,uiData,assetData);
            });
         }
      }
      
      protected function §^!J§() : void
      {
         §42§.init();
      }
      
      protected function init(param1:DisplayObjectContainer, param2:XML, param3:XML) : void
      {
         §7]§.initialize(stage);
         §7]§.§?!&§ = false;
         §!X§.§&;§(this.getVersionInfo());
         §!X§.§'g§ = this.getVersionInfo();
         §&6§.§7!L§ = §1!]§.stage.loaderInfo.parameters;
         this.§^!J§();
         §&#§(new §[d§());
         var _loc4_:§2"§ = this.initStateLoad();
         §&#§(_loc4_);
         _loc4_.§6!5§(param1);
         _loc4_.§2&§(param3);
         §?V§.init(param2);
         if(§>!'§.§9!+§())
         {
            §>!'§.§3@§("serverConnectionError");
         }
         §@z§(§2"§.§+Z§);
         this.§8!<§();
      }
      
      protected function initStateLoad() : §2"§
      {
         return new §2"§(true,§2"§.§+Z§,this.getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      public function §8!<§() : void
      {
         §1!]§.addEventListener(Event.ENTER_FRAME,this.§!<§);
         §1!]§.stage.addEventListener(Event.MOUSE_LEAVE,this.mouseLeave);
         §1!]§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.keyDown);
         §1!]§.stage.addEventListener(KeyboardEvent.KEY_UP,this.keyUp);
         this.§5! § = getTimer();
      }
      
      public function mouseLeave(param1:Event) : void
      {
         if(§,m§())
         {
            §,m§().mouseLeave();
         }
      }
      
      public function keyDown(param1:KeyboardEvent) : void
      {
         if(§,m§())
         {
            §,m§().keyDown(param1);
         }
         §!X§.keyDown(param1);
      }
      
      public function keyUp(param1:KeyboardEvent) : void
      {
         if(§,m§())
         {
            §,m§().keyUp(param1);
         }
      }
      
      public function §!<§(param1:Event) : void
      {
         var _loc2_:Number = getTimer() - this.§5! §;
         this.§5! § = getTimer();
         §'!7§.§=,§.update(_loc2_);
         this.§'!,§.dispatchEvent(param1);
         §9v§.§5<§(§1!]§.mouseX,§1!]§.mouseY);
         if(§9U§())
         {
            return;
         }
         if(this.updateState(_loc2_) == §&6§.STATE_STATUS_COMPLETED)
         {
            §9U§();
         }
      }
      
      override public function updateState(param1:Number) : int
      {
         var _loc2_:int = super.updateState(param1);
         if(§,m§().isGenericState())
         {
            if(_loc2_ == §&6§.STATE_STATUS_COMPLETED)
            {
               §1!]§.addChild(§9v§.activate());
               this.setFirstGameState();
            }
         }
         return _loc2_;
      }
      
      override protected function previousStateDeactivate() : void
      {
         §'!7§.§=,§.§?`§();
      }
      
      public function setFirstGameState() : void
      {
         §@z§(§[d§.§+Z§);
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
         this.§'!,§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         this.§'!,§.removeEventListener(param1,param2,param3);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return false;
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§'!,§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§'!,§.willTrigger(param1);
      }
   }
}
