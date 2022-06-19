package §<!Y§
{
   import § ;§.§4N§;
   import §&! §.§0!V§;
   import §&N§.§6§;
   import §&N§.§@,§;
   import §-M§.§+?§;
   import §2!6§.§%!$§;
   import §4!H§.*;
   import §<!>§.§@[§;
   import §<[§.§[!#§;
   import flash.display.DisplayObjectContainer;
   import flash.events.*;
   import flash.utils.*;
   
   public class §7!1§ extends §]2§
   {
      
      public static var §'K§:Number;
      
      public static var §0!,§:Number;
       
      
      public var §2%§:Number;
      
      private var §=+§:Vector.<§0!V§>;
      
      public function §7!1§(param1:§<o§, param2:DisplayObjectContainer, param3:XML, param4:XML)
      {
         var canvas:§<o§ = param1;
         var loadingScreen:DisplayObjectContainer = param2;
         var uiData:XML = param3;
         var assetData:XML = param4;
         this.§=+§ = new Vector.<§0!V§>();
         super(canvas);
         if(§^!E§.stage)
         {
            this.init(loadingScreen,uiData,assetData);
         }
         else
         {
            §^!E§.addEventListener(Event.ADDED_TO_STAGE,function(param1:Event):void
            {
               §^!E§.removeEventListener(Event.ADDED_TO_STAGE,arguments.callee);
               init(loadingScreen,uiData,assetData);
            });
         }
      }
      
      protected function init(param1:DisplayObjectContainer, param2:XML, param3:XML) : void
      {
         §@[§.§<!E§(stage);
         §@[§.§;H§ = true;
         §@,§.§=L§(this.getVersionInfo());
         §[4§.§@z§ = §^!E§.stage.loaderInfo.parameters;
         §%!$§.init();
         §3C§(new §6!Z§());
         var _loc4_:§6t§ = this.§4u§();
         §3C§(_loc4_);
         _loc4_.§-!S§(param1);
         _loc4_.§?v§(param3);
         §+?§.init(param2);
         if(§[!#§.§?!;§())
         {
            §[!#§.§&P§("serverConnectionError");
         }
         §&>§(§6t§.§`O§);
         this.§&x§();
      }
      
      protected function §4u§() : §6t§
      {
         return new §6t§(true,§6t§.§`O§,this.getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      public function §&x§() : void
      {
         §^!E§.addEventListener(Event.ENTER_FRAME,this.§[x§);
         §^!E§.stage.addEventListener(Event.MOUSE_LEAVE,this.mouseLeave);
         §^!E§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.keyDown);
         §^!E§.stage.addEventListener(KeyboardEvent.KEY_UP,this.keyUp);
         this.§2%§ = getTimer();
      }
      
      public function mouseLeave(param1:Event) : void
      {
         if(§6!T§())
         {
            §6!T§().mouseLeave();
         }
      }
      
      public function keyDown(param1:KeyboardEvent) : void
      {
         if(§6!T§())
         {
            §6!T§().keyDown(param1);
         }
         §@,§.keyDown(param1);
      }
      
      public function keyUp(param1:KeyboardEvent) : void
      {
         if(§6!T§())
         {
            §6!T§().keyUp(param1);
         }
      }
      
      public function §[x§(param1:Event) : void
      {
         var _loc3_:§0!V§ = null;
         var _loc2_:Number = getTimer() - this.§2%§;
         this.§2%§ = getTimer();
         §4N§.§-!U§.update(_loc2_);
         for each(_loc3_ in this.§=+§)
         {
            _loc3_.§[x§();
         }
         §6§.§8!Y§(§^!E§.mouseX,§^!E§.mouseY);
         if(§0n§())
         {
            return;
         }
         if(this.updateState(_loc2_) == §[4§.STATE_STATUS_COMPLETED)
         {
            §0n§();
         }
      }
      
      override public function updateState(param1:Number) : int
      {
         var _loc2_:int = super.updateState(param1);
         if(§6!T§().isGenericState())
         {
            if(_loc2_ == §[4§.STATE_STATUS_COMPLETED)
            {
               §^!E§.addChild(§6§.activate());
               this.setFirstGameState();
            }
         }
         return _loc2_;
      }
      
      override protected function previousStateDeactivate() : void
      {
         §4N§.§-!U§.§8!4§();
      }
      
      public function setFirstGameState() : void
      {
         §&>§(§6!Z§.§`O§);
      }
      
      public function getMinLoadingScreenTime() : Number
      {
         return 1000;
      }
      
      public function getVersionInfo() : String
      {
         return "unknown";
      }
      
      public function §+!7§(param1:§0!V§) : void
      {
         if(this.§=+§.indexOf(param1) < 0)
         {
            this.§=+§.push(param1);
         }
      }
      
      public function §]!P§(param1:§0!V§) : void
      {
         var _loc2_:int = this.§=+§.indexOf(param1);
         if(_loc2_ >= 0)
         {
            this.§=+§.splice(_loc2_,1);
         }
      }
   }
}
