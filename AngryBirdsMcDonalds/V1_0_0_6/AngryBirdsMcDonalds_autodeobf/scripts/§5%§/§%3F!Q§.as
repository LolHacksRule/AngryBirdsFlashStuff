package §5%§
{
   import § !Z§.§0V§;
   import §"f§.§%1§;
   import §0;§.§`!`§;
   import §5!5§.§'j§;
   import §5!5§.§1!E§;
   import §5!5§.§1!b§;
   import §5!5§.§^g§;
   import §8!1§.§'`§;
   import §8<§.§ !+§;
   import §8<§.§<!7§;
   import §^!K§.§ !$§;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.utils.getTimer;
   
   public class §?!Q§ extends §^g§ implements IEventDispatcher
   {
      
      public static var §#D§:Number;
      
      public static var §2!i§:Number;
       
      
      public var §4!I§:Number;
      
      private var §''§:EventDispatcher;
      
      public function §?!Q§(param1:§%!,§, param2:DisplayObjectContainer, param3:XML, param4:XML)
      {
         var canvas:§%!,§ = param1;
         var loadingScreen:DisplayObjectContainer = param2;
         var uiData:XML = param3;
         var assetData:XML = param4;
         this.§''§ = new EventDispatcher();
         super(canvas);
         if(§ !!§.stage)
         {
            this.init(loadingScreen,uiData,assetData);
         }
         else
         {
            § !!§.addEventListener(Event.ADDED_TO_STAGE,function(param1:Event):void
            {
               § !!§.removeEventListener(Event.ADDED_TO_STAGE,arguments.callee);
               init(loadingScreen,uiData,assetData);
            });
         }
      }
      
      protected function §4!C§() : void
      {
         § !$§.init();
      }
      
      protected function init(param1:DisplayObjectContainer, param2:XML, param3:XML) : void
      {
         §'`§.initialize(stage);
         §'`§.§0!Z§ = false;
         §<!7§.§6!g§(this.getVersionInfo());
         §<!7§.§5!R§ = this.getVersionInfo();
         §1!b§.§+=§ = § !!§.stage.loaderInfo.parameters;
         this.§4!C§();
         §;!a§(new §1!E§());
         var _loc4_:§'j§ = this.initStateLoad();
         §;!a§(_loc4_);
         _loc4_.§0!n§(param1);
         _loc4_.§@9§(param3);
         §`!`§.init(param2);
         if(§0V§.§+!H§())
         {
            §0V§.§71§("serverConnectionError");
         }
         §]!D§(§'j§.§!_§);
         this.§,!a§();
      }
      
      protected function initStateLoad() : §'j§
      {
         return new §'j§(true,§'j§.§!_§,this.getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      public function §,!a§() : void
      {
         § !!§.addEventListener(Event.ENTER_FRAME,this.§1+§);
         § !!§.stage.addEventListener(Event.MOUSE_LEAVE,this.mouseLeave);
         § !!§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.keyDown);
         § !!§.stage.addEventListener(KeyboardEvent.KEY_UP,this.keyUp);
         this.§4!I§ = getTimer();
      }
      
      public function mouseLeave(param1:Event) : void
      {
         if(§9!B§())
         {
            §9!B§().mouseLeave();
         }
      }
      
      public function keyDown(param1:KeyboardEvent) : void
      {
         if(§9!B§())
         {
            §9!B§().keyDown(param1);
         }
         §<!7§.keyDown(param1);
      }
      
      public function keyUp(param1:KeyboardEvent) : void
      {
         if(§9!B§())
         {
            §9!B§().keyUp(param1);
         }
      }
      
      public function §1+§(param1:Event) : void
      {
         var _loc2_:Number = getTimer() - this.§4!I§;
         this.§4!I§ = getTimer();
         §%1§.§+j§.update(_loc2_);
         this.§''§.dispatchEvent(param1);
         § !+§.§1!3§(§ !!§.mouseX,§ !!§.mouseY);
         if(§;!F§())
         {
            return;
         }
         if(this.updateState(_loc2_) == §1!b§.STATE_STATUS_COMPLETED)
         {
            §;!F§();
         }
      }
      
      override public function updateState(param1:Number) : int
      {
         var _loc2_:int = super.updateState(param1);
         if(§9!B§().isGenericState())
         {
            if(_loc2_ == §1!b§.STATE_STATUS_COMPLETED)
            {
               § !!§.addChild(§ !+§.activate());
               this.setFirstGameState();
            }
         }
         return _loc2_;
      }
      
      override protected function previousStateDeactivate() : void
      {
         §%1§.§+j§.§5[§();
      }
      
      public function setFirstGameState() : void
      {
         §]!D§(§1!E§.§!_§);
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
         this.§''§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         this.§''§.removeEventListener(param1,param2,param3);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return false;
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§''§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§''§.willTrigger(param1);
      }
   }
}
