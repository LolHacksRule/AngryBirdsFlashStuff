package §;!,§
{
   import §"!>§.§5?§;
   import §"!>§.§<!o§;
   import §""<§.§#N§;
   import §""<§.§9!p§;
   import §+w§.§?e§;
   import §-! §.§#!W§;
   import §9!G§.§"!S§;
   import §<!#§.§3"%§;
   import §<§.§<K§;
   import §]n§.§0!g§;
   import §]n§.§0b§;
   import §]n§.§5!N§;
   import §]n§.§5M§;
   import §`"!§.§<t§;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.utils.getTimer;
   
   public class §"q§ extends §5!N§ implements IEventDispatcher
   {
      
      public static var §"s§:Number;
      
      public static var §'^§:Number;
       
      
      public var §'!q§:Number;
      
      private var §+!z§:EventDispatcher;
      
      private var §4!T§:§<!o§;
      
      public function §"q§(param1:§6!`§, param2:DisplayObjectContainer, param3:XML, param4:XML)
      {
         var canvas:§6!`§ = param1;
         var loadingScreen:DisplayObjectContainer = param2;
         var uiData:XML = param3;
         var assetData:XML = param4;
         this.§+!z§ = new EventDispatcher();
         super(canvas);
         if(§`"D§.stage)
         {
            this.init(loadingScreen,uiData,assetData);
         }
         else
         {
            §`"D§.addEventListener(Event.ADDED_TO_STAGE,function(param1:Event):void
            {
               §`"D§.removeEventListener(Event.ADDED_TO_STAGE,arguments.callee);
               init(loadingScreen,uiData,assetData);
            });
         }
      }
      
      public function get §^"5§() : §<!o§
      {
         return this.§4!T§;
      }
      
      protected function §8n§() : void
      {
         §"!S§.init();
      }
      
      protected function init(param1:DisplayObjectContainer, param2:XML, param3:XML) : void
      {
         this.§4!T§ = new §<!o§(new §5?§("en"));
         §#!W§.initialize(stage);
         §#!W§.§2K§ = false;
         §#N§.§%`§(this.getVersionInfo());
         §#N§.§65§ = this.getVersionInfo();
         §0!g§.§+!t§ = §`"D§.stage.loaderInfo.parameters;
         this.§8n§();
         §-"%§(new §0b§(this.§^"5§));
         var _loc4_:§5M§ = this.initStateLoad();
         §-"%§(_loc4_);
         _loc4_.setLoadingScreen(param1);
         _loc4_.§>"E§(param3);
         §?e§.init(param2);
         if(§<t§.§+!5§())
         {
            §<t§.§&!"§("serverConnectionError");
         }
         §2g§(§5M§.STATE_NAME);
         this.§?!@§();
      }
      
      protected function initStateLoad() : §5M§
      {
         return new §5M§(this.§^"5§,true,§5M§.STATE_NAME,this.getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      public function §?!@§() : void
      {
         §`"D§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         §`"D§.stage.addEventListener(Event.MOUSE_LEAVE,this.mouseLeave);
         §`"D§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.keyDown);
         §`"D§.stage.addEventListener(KeyboardEvent.KEY_UP,this.keyUp);
         this.§'!q§ = getTimer();
      }
      
      public function mouseLeave(param1:Event) : void
      {
         if(§ ";§())
         {
            § ";§().mouseLeave();
         }
      }
      
      public function keyDown(param1:KeyboardEvent) : void
      {
         if(§ ";§())
         {
            § ";§().keyDown(param1);
         }
         §#N§.keyDown(param1);
      }
      
      public function keyUp(param1:KeyboardEvent) : void
      {
         if(§ ";§())
         {
            § ";§().keyUp(param1);
         }
      }
      
      public function onEnterFrame(param1:Event) : void
      {
         var _loc2_:Number = getTimer() - this.§'!q§;
         this.§'!q§ = getTimer();
         §<K§.§<"B§.update(_loc2_);
         var _loc3_:§3"%§ = new §3"%§(§3"%§.§9!w§,_loc2_,param1.bubbles,param1.cancelable);
         this.§+!z§.dispatchEvent(_loc3_);
         §9!p§.§]k§(§`"D§.mouseX,§`"D§.mouseY);
         if(§[!C§())
         {
            return;
         }
         if(this.updateState(_loc2_) == §0!g§.§'7§)
         {
            §[!C§();
         }
      }
      
      override public function updateState(param1:Number) : int
      {
         var _loc2_:int = super.updateState(param1);
         if(§ ";§().isGenericState())
         {
            if(_loc2_ == §0!g§.§'7§)
            {
               §`"D§.addChild(§9!p§.activate());
               this.setFirstGameState();
            }
         }
         return _loc2_;
      }
      
      override protected function previousStateDeactivate() : void
      {
         §<K§.§<"B§.§8!^§();
      }
      
      public function setFirstGameState() : void
      {
         §2g§(§0b§.STATE_NAME);
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
         this.§+!z§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         this.§+!z§.removeEventListener(param1,param2,param3);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return false;
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§+!z§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§+!z§.willTrigger(param1);
      }
   }
}
