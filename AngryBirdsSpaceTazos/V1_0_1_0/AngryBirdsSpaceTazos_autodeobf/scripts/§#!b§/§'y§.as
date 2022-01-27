package §#!b§
{
   import §%!r§.§&!!§;
   import §%!r§.§3!'§;
   import §+!h§.§#V§;
   import §0N§.§2!@§;
   import §0N§.§5!^§;
   import §1%§.§0!3§;
   import §1%§.§9!s§;
   import §1%§.§@!t§;
   import §1%§.§[L§;
   import §3"#§.§<!O§;
   import §7!a§.§;G§;
   import §<W§.§!!u§;
   import §=u§.§!D§;
   import §^=§.§-G§;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.utils.getTimer;
   
   public class §'y§ extends §9!s§ implements IEventDispatcher
   {
      
      public static var §8&§:Number;
      
      public static var §`w§:Number;
       
      
      public var §8!c§:Number;
      
      private var §`!<§:EventDispatcher;
      
      private var §7Z§:§3!'§;
      
      public function §'y§(param1:§"!"§, param2:DisplayObjectContainer, param3:XML, param4:XML)
      {
         var canvas:§"!"§ = param1;
         var loadingScreen:DisplayObjectContainer = param2;
         var uiData:XML = param3;
         var assetData:XML = param4;
         this.§`!<§ = new EventDispatcher();
         super(canvas);
         if(§2! §.stage)
         {
            this.init(loadingScreen,uiData,assetData);
         }
         else
         {
            §2! §.addEventListener(Event.ADDED_TO_STAGE,function(param1:Event):void
            {
               §2! §.removeEventListener(Event.ADDED_TO_STAGE,arguments.callee);
               init(loadingScreen,uiData,assetData);
            });
         }
      }
      
      public function get §super§() : §3!'§
      {
         return this.§7Z§;
      }
      
      protected function §;!d§() : void
      {
         §<!O§.init();
      }
      
      protected function init(param1:DisplayObjectContainer, param2:XML, param3:XML) : void
      {
         this.§7Z§ = new §3!'§(new §&!!§("en"));
         §;G§.initialize(stage);
         §;G§.§&![§ = false;
         §2!@§.§ G§(this.getVersionInfo());
         §2!@§.§>C§ = this.getVersionInfo();
         §0!3§.§]>§ = §2! §.stage.loaderInfo.parameters;
         this.§;!d§();
         §0j§(new §[L§(this.§super§));
         var _loc4_:§@!t§ = this.initStateLoad();
         §0j§(_loc4_);
         _loc4_.setLoadingScreen(param1);
         _loc4_.§%!,§(param3);
         §-G§.init(param2);
         if(§#V§.§[,§())
         {
            §#V§.§!r§("serverConnectionError");
         }
         §8!^§(§@!t§.STATE_NAME);
         this.§for §();
      }
      
      protected function initStateLoad() : §@!t§
      {
         return new §@!t§(this.§super§,true,§@!t§.STATE_NAME,this.getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      public function §for §() : void
      {
         §2! §.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         §2! §.stage.addEventListener(Event.MOUSE_LEAVE,this.mouseLeave);
         §2! §.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.keyDown);
         §2! §.stage.addEventListener(KeyboardEvent.KEY_UP,this.keyUp);
         this.§8!c§ = getTimer();
      }
      
      public function mouseLeave(param1:Event) : void
      {
         if(§,"7§())
         {
            §,"7§().mouseLeave();
         }
      }
      
      public function keyDown(param1:KeyboardEvent) : void
      {
         if(§,"7§())
         {
            §,"7§().keyDown(param1);
         }
         §2!@§.keyDown(param1);
      }
      
      public function keyUp(param1:KeyboardEvent) : void
      {
         if(§,"7§())
         {
            §,"7§().keyUp(param1);
         }
      }
      
      public function onEnterFrame(param1:Event) : void
      {
         var _loc2_:Number = getTimer() - this.§8!c§;
         this.§8!c§ = getTimer();
         §!D§.§[!1§.update(_loc2_);
         var _loc3_:§!!u§ = new §!!u§(§!!u§.§8!Q§,_loc2_,param1.bubbles,param1.cancelable);
         this.§`!<§.dispatchEvent(_loc3_);
         §5!^§.§#`§(§2! §.mouseX,§2! §.mouseY);
         if(§@1§())
         {
            return;
         }
         if(this.updateState(_loc2_) == §0!3§.§-c§)
         {
            §@1§();
         }
      }
      
      override public function updateState(param1:Number) : int
      {
         var _loc2_:int = super.updateState(param1);
         if(§,"7§().isGenericState())
         {
            if(_loc2_ == §0!3§.§-c§)
            {
               §2! §.addChild(§5!^§.activate());
               this.setFirstGameState();
            }
         }
         return _loc2_;
      }
      
      override protected function previousStateDeactivate() : void
      {
         §!D§.§[!1§.§+'§();
      }
      
      public function setFirstGameState() : void
      {
         §8!^§(§[L§.STATE_NAME);
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
         this.§`!<§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         this.§`!<§.removeEventListener(param1,param2,param3);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return false;
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§`!<§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§`!<§.willTrigger(param1);
      }
   }
}
