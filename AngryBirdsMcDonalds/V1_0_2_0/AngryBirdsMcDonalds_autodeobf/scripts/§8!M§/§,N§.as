package §8!M§
{
   import § !m§.§6h§;
   import §,!L§.§ !j§;
   import §09§.§4!c§;
   import §6!Q§.§ !"§;
   import §6!Q§.§"!H§;
   import §6!Q§.§@!8§;
   import §6!Q§.§`4§;
   import §=!F§.§"!2§;
   import §=<§.§&5§;
   import §=<§.§1+§;
   import §@`§.§]8§;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.utils.getTimer;
   
   public class §,N§ extends §"!H§ implements IEventDispatcher
   {
      
      public static var §9!T§:Number;
      
      public static var §>!7§:Number;
       
      
      public var §3X§:Number;
      
      private var §4l§:EventDispatcher;
      
      public function §,N§(param1:§'!]§, param2:DisplayObjectContainer, param3:XML, param4:XML)
      {
         var canvas:§'!]§ = param1;
         var loadingScreen:DisplayObjectContainer = param2;
         var uiData:XML = param3;
         var assetData:XML = param4;
         this.§4l§ = new EventDispatcher();
         super(canvas);
         if(§[A§.stage)
         {
            this.init(loadingScreen,uiData,assetData);
         }
         else
         {
            §[A§.addEventListener(Event.ADDED_TO_STAGE,function(param1:Event):void
            {
               §[A§.removeEventListener(Event.ADDED_TO_STAGE,arguments.callee);
               init(loadingScreen,uiData,assetData);
            });
         }
      }
      
      protected function §"]§() : void
      {
         §6h§.init();
      }
      
      protected function init(param1:DisplayObjectContainer, param2:XML, param3:XML) : void
      {
         § !j§.initialize(stage);
         § !j§.§0!U§ = false;
         §1+§.§`d§(this.getVersionInfo());
         §1+§.§5!G§ = this.getVersionInfo();
         § !"§.§'!"§ = §[A§.stage.loaderInfo.parameters;
         this.§"]§();
         §8!n§(new §@!8§());
         var _loc4_:§`4§ = this.initStateLoad();
         §8!n§(_loc4_);
         _loc4_.§-x§(param1);
         _loc4_.§[!m§(param3);
         §]8§.init(param2);
         if(§4!c§.§>! §())
         {
            §4!c§.§@E§("serverConnectionError");
         }
         §0! §(§`4§.§4D§);
         this.§=?§();
      }
      
      protected function initStateLoad() : §`4§
      {
         return new §`4§(true,§`4§.§4D§,this.getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      public function §=?§() : void
      {
         §[A§.addEventListener(Event.ENTER_FRAME,this.§<'§);
         §[A§.stage.addEventListener(Event.MOUSE_LEAVE,this.mouseLeave);
         §[A§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.keyDown);
         §[A§.stage.addEventListener(KeyboardEvent.KEY_UP,this.keyUp);
         this.§3X§ = getTimer();
      }
      
      public function mouseLeave(param1:Event) : void
      {
         if(§7z§())
         {
            §7z§().mouseLeave();
         }
      }
      
      public function keyDown(param1:KeyboardEvent) : void
      {
         if(§7z§())
         {
            §7z§().keyDown(param1);
         }
         §1+§.keyDown(param1);
      }
      
      public function keyUp(param1:KeyboardEvent) : void
      {
         if(§7z§())
         {
            §7z§().keyUp(param1);
         }
      }
      
      public function §<'§(param1:Event) : void
      {
         var _loc2_:Number = getTimer() - this.§3X§;
         this.§3X§ = getTimer();
         §"!2§.§'!S§.update(_loc2_);
         this.§4l§.dispatchEvent(param1);
         §&5§.§ '§(§[A§.mouseX,§[A§.mouseY);
         if(§2!S§())
         {
            return;
         }
         if(this.updateState(_loc2_) == § !"§.STATE_STATUS_COMPLETED)
         {
            §2!S§();
         }
      }
      
      override public function updateState(param1:Number) : int
      {
         var _loc2_:int = super.updateState(param1);
         if(§7z§().isGenericState())
         {
            if(_loc2_ == § !"§.STATE_STATUS_COMPLETED)
            {
               §[A§.addChild(§&5§.activate());
               this.setFirstGameState();
            }
         }
         return _loc2_;
      }
      
      override protected function previousStateDeactivate() : void
      {
         §"!2§.§'!S§.§^Q§();
      }
      
      public function setFirstGameState() : void
      {
         §0! §(§@!8§.§4D§);
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
         this.§4l§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         this.§4l§.removeEventListener(param1,param2,param3);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return false;
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§4l§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§4l§.willTrigger(param1);
      }
   }
}
