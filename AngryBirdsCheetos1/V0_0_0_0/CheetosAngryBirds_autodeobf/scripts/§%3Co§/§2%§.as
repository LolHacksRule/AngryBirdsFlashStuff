package §<o§
{
   import § ;§.§4N§;
   import §%!$§.§=m§;
   import §&! §.§0!V§;
   import §+?§.§@]§;
   import §@,§.§"j§;
   import §@,§.§4h§;
   import §@[§.§1q§;
   import §[!#§.§6v§;
   import §]2§.*;
   import flash.display.DisplayObjectContainer;
   import flash.events.*;
   import flash.utils.*;
   
   public class §2%§ extends §%!B§
   {
      
      public static var §0!,§:Number;
      
      public static var §6M§:Number;
       
      
      public var §=+§:Number;
      
      private var §4u§:Vector.<§0!V§>;
      
      public function §2%§(param1:§7!1§, param2:DisplayObjectContainer, param3:XML, param4:XML)
      {
         var canvas:§7!1§ = param1;
         var loadingScreen:DisplayObjectContainer = param2;
         var uiData:XML = param3;
         var assetData:XML = param4;
         this.§4u§ = new Vector.<§0!V§>();
         super(canvas);
         if(§;0§.stage)
         {
            this.init(loadingScreen,uiData,assetData);
         }
         else
         {
            §;0§.addEventListener(Event.ADDED_TO_STAGE,function(param1:Event):void
            {
               §;0§.removeEventListener(Event.ADDED_TO_STAGE,arguments.callee);
               init(loadingScreen,uiData,assetData);
            });
         }
      }
      
      protected function init(param1:DisplayObjectContainer, param2:XML, param3:XML) : void
      {
         §1q§.§[I§(stage);
         §1q§.static = true;
         §4h§.§6§(this.getVersionInfo());
         §[4§.§@z§ = §;0§.stage.loaderInfo.parameters;
         §=m§.init();
         §6'§(new §6!Z§());
         var _loc4_:§6t§ = this.§&x§();
         §6'§(_loc4_);
         _loc4_.§-!S§(param1);
         _loc4_.§?v§(param3);
         §@]§.init(param2);
         if(§6v§.§]r§())
         {
            §6v§.§9!D§("serverConnectionError");
         }
         §[!K§(§6t§.§`O§);
         this.§+!7§();
      }
      
      protected function §&x§() : §6t§
      {
         return new §6t§(true,§6t§.§`O§,this.getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      public function §+!7§() : void
      {
         §;0§.addEventListener(Event.ENTER_FRAME,this.§[x§);
         §;0§.stage.addEventListener(Event.MOUSE_LEAVE,this.mouseLeave);
         §;0§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.keyDown);
         §;0§.stage.addEventListener(KeyboardEvent.KEY_UP,this.keyUp);
         this.§=+§ = getTimer();
      }
      
      public function mouseLeave(param1:Event) : void
      {
         if(§2! §())
         {
            §2! §().mouseLeave();
         }
      }
      
      public function keyDown(param1:KeyboardEvent) : void
      {
         if(§2! §())
         {
            §2! §().keyDown(param1);
         }
         §4h§.keyDown(param1);
      }
      
      public function keyUp(param1:KeyboardEvent) : void
      {
         if(§2! §())
         {
            §2! §().keyUp(param1);
         }
      }
      
      public function §[x§(param1:Event) : void
      {
         var _loc3_:§0!V§ = null;
         var _loc2_:Number = getTimer() - this.§=+§;
         this.§=+§ = getTimer();
         §4N§.§!!L§.update(_loc2_);
         for each(_loc3_ in this.§4u§)
         {
            _loc3_.§[x§();
         }
         §"j§.§9Q§(§;0§.mouseX,§;0§.mouseY);
         if(§2y§())
         {
            return;
         }
         if(this.updateState(_loc2_) == §[4§.STATE_STATUS_COMPLETED)
         {
            §2y§();
         }
      }
      
      override public function updateState(param1:Number) : int
      {
         var _loc2_:int = super.updateState(param1);
         if(§2! §().isGenericState())
         {
            if(_loc2_ == §[4§.STATE_STATUS_COMPLETED)
            {
               §;0§.addChild(§"j§.activate());
               this.setFirstGameState();
            }
         }
         return _loc2_;
      }
      
      override protected function previousStateDeactivate() : void
      {
         §4N§.§!!L§.§8!4§();
      }
      
      public function setFirstGameState() : void
      {
         §[!K§(§6!Z§.§`O§);
      }
      
      public function getMinLoadingScreenTime() : Number
      {
         return 1000;
      }
      
      public function getVersionInfo() : String
      {
         return "unknown";
      }
      
      public function §]!P§(param1:§0!V§) : void
      {
         if(this.§4u§.indexOf(param1) < 0)
         {
            this.§4u§.push(param1);
         }
      }
      
      public function §'K§(param1:§0!V§) : void
      {
         var _loc2_:int = this.§4u§.indexOf(param1);
         if(_loc2_ >= 0)
         {
            this.§4u§.splice(_loc2_,1);
         }
      }
   }
}
