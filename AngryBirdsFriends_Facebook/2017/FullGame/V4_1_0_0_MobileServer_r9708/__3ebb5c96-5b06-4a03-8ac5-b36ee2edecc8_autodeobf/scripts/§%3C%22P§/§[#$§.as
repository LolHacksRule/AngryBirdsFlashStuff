package §<"P§
{
   import § $%§.§ $7§;
   import §!^§.SWFWheel;
   import §&$!§.§+#!§;
   import §&$!§.§7[§;
   import §1#W§.§!#&§;
   import §8#D§.§=>§;
   import §8Z§.§6"w§;
   import §<"p§.§9#D§;
   import §<"p§.§?!T§;
   import §<o§.§7"P§;
   import §>@§.§#§;
   import §>@§.§%!4§;
   import §>@§.§'!L§;
   import §>@§.§>x§;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.utils.getTimer;
   
   public class §[#$§ extends §%!4§ implements IEventDispatcher
   {
      
      public static var §3e§:Number;
      
      public static var §"#M§:Number;
       
      
      public var §0!k§:Number;
      
      private var §^#>§:EventDispatcher;
      
      private var §-"Q§:§+#!§;
      
      public function §[#$§(param1:§8#-§, param2:DisplayObjectContainer, param3:XML, param4:XML)
      {
         var canvas:§8#-§ = param1;
         var loadingScreen:DisplayObjectContainer = param2;
         var uiData:XML = param3;
         var assetData:XML = param4;
         this.§^#>§ = new EventDispatcher();
         super(canvas);
         if(§'!P§.stage)
         {
            this.init(loadingScreen,uiData,assetData);
         }
         else
         {
            §'!P§.addEventListener(Event.ADDED_TO_STAGE,function(param1:Event):void
            {
               §'!P§.removeEventListener(Event.ADDED_TO_STAGE,arguments.callee);
               init(loadingScreen,uiData,assetData);
            });
         }
      }
      
      public function get §0"C§() : §+#!§
      {
         return this.§-"Q§;
      }
      
      protected function §<'§() : void
      {
         §!#&§.init();
      }
      
      protected function init(param1:DisplayObjectContainer, param2:XML, param3:XML) : void
      {
         this.§-"Q§ = new §+#!§(new §7[§("en"));
         SWFWheel.initialize(stage);
         SWFWheel.§6$§ = false;
         §?!T§.§-#y§(this.getVersionInfo());
         §?!T§.§,"&§ = this.getVersionInfo();
         §'!L§.§`$=§ = §'!P§.stage.loaderInfo.parameters;
         this.§<'§();
         §?!7§(new §##9§(this.§0"C§));
         var _loc4_:§>x§ = this.initStateLoad();
         §?!7§(_loc4_);
         _loc4_.setLoadingScreen(param1);
         _loc4_.§@!#§(param3);
         §=>§.init(param2);
         if(§ $7§.§`#&§())
         {
            § $7§.§9"`§("serverConnectionError");
         }
         §5"p§(§>x§.STATE_NAME);
         this.§9!e§();
      }
      
      protected function initStateLoad() : §>x§
      {
         return new §>x§(this.§0"C§,true,§>x§.STATE_NAME,this.getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      public function §9!e§() : void
      {
         §'!P§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         §'!P§.stage.addEventListener(Event.MOUSE_LEAVE,this.mouseLeave);
         §'!P§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.keyDown);
         §'!P§.stage.addEventListener(KeyboardEvent.KEY_UP,this.keyUp);
         this.§0!k§ = getTimer();
      }
      
      public function mouseLeave(param1:Event) : void
      {
         if(§[##§())
         {
            §[##§().mouseLeave();
         }
      }
      
      public function keyDown(param1:KeyboardEvent) : void
      {
         if(§[##§())
         {
            §[##§().keyDown(param1);
         }
         §?!T§.keyDown(param1);
      }
      
      public function keyUp(param1:KeyboardEvent) : void
      {
         if(§[##§())
         {
            §[##§().keyUp(param1);
         }
      }
      
      public function onEnterFrame(param1:Event) : void
      {
         var _loc2_:Number = getTimer() - this.§0!k§;
         this.§0!k§ = getTimer();
         §6"w§.§ "D§.update(_loc2_);
         var _loc3_:§7"P§ = new §7"P§(§7"P§.§,"!§,_loc2_,param1.bubbles,param1.cancelable);
         this.§^#>§.dispatchEvent(_loc3_);
         §9#D§.§&#W§(§'!P§.mouseX,§'!P§.mouseY);
         if(§?"m§())
         {
            return;
         }
         if(this.updateState(_loc2_) == §'!L§.§`!?§)
         {
            §?"m§();
         }
      }
      
      override public function updateState(param1:Number) : int
      {
         var _loc2_:int = super.updateState(param1);
         if(§[##§().isGenericState())
         {
            if(_loc2_ == §'!L§.§`!?§)
            {
               §'!P§.addChild(§9#D§.activate());
               this.setFirstGameState();
            }
         }
         return _loc2_;
      }
      
      override protected function previousStateDeactivate() : void
      {
         §6"w§.§ "D§.§-#@§();
      }
      
      public function setFirstGameState() : void
      {
         §5"p§(§##9§.STATE_NAME);
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
         this.§^#>§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         this.§^#>§.removeEventListener(param1,param2,param3);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return false;
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§^#>§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§^#>§.willTrigger(param1);
      }
   }
}
