package
{
   import §#";§.§0"#§;
   import §%!0§.§&@§;
   import §%!j§.§%K§;
   import §,P§.§'_§;
   import §05§.§?s§;
   import §50§.StateMap;
   import §5u§.§=!2§;
   import §6!k§.§@B§;
   import §6]§.§+!T§;
   import §7!@§.§+`§;
   import §;" §.§5L§;
   import §;<§.§'B§;
   import §;<§.§1N§;
   import §;b§.§!l§;
   import §;b§.§&H§;
   import §;b§.§0C§;
   import §;b§.§<b§;
   import §;b§.§@"0§;
   import §;b§.StateLevelEditor;
   import §;b§.StateLevelEditorTestPlay;
   import §;b§.StateLevelPreview;
   import §<!1§.§&%§;
   import §<!1§.§0W§;
   import §>!d§.§,$§;
   import §?!'§.§]!]§;
   import §^U§.§&y§;
   import §^U§.§4!T§;
   import §^U§.§7!r§;
   import §^U§.§<"5§;
   import §^U§.StateLoadBS;
   import §^U§.StatePlayBS;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.net.SharedObject;
   import flash.utils.getTimer;
   
   public class §[!^§ extends AngryBirdsFP11
   {
      
      public static var §["5§:String;
      
      protected static var § !i§:String;
      
      private static const § !$§:String = "AngryBirdsBuildAndShareSettings";
      
      public static const §@";§:String = "/";
      
      public static const §["3§:int = 800;
      
      public static const §7$§:int = 600;
      
      public static const §^q§:Boolean = false;
      
      protected static var §%!%§:Class = §-x§;
      
      protected static var §&L§:Class = §%"4§;
      
      protected static var §<!=§:Class = §?!l§;
      
      protected static var §7!t§:Class = §@`§;
      
      public static var §;!h§:Boolean = true;
      
      private static var §%"1§:§[!^§ = null;
      
      public static var §["!§:Boolean = false;
       
      
      public function §[!^§(param1:§@B§)
      {
         §["5§ = param1.stage.loaderInfo.parameters.serverVersion || "[No version from server]";
         § !i§ = param1.stage.loaderInfo.parameters.serverRoot || (!!§^q§ ? "" : "");
         super(param1);
         §&%§.enabled = true;
         §0W§.§#W§(§&%§.§if§);
         this.§^z§();
      }
      
      public static function §1"#§() : String
      {
         return "AngryBirdsBuildSharedMemory";
      }
      
      public static function get §@"7§() : §[!^§
      {
         return §%"1§;
      }
      
      override protected function getLevelBackgrounds() : XML
      {
         return §+!T§.§`x§(§<!=§);
      }
      
      private function §>!X§() : void
      {
         §=!2§.load(stage.loaderInfo.parameters.userId,stage.loaderInfo.parameters.accessToken,stage.loaderInfo.parameters.tokenExpiresIn);
      }
      
      protected function §^z§() : void
      {
         §]!]§.initialize(canvas.stage);
      }
      
      override protected function getAssetMap() : XML
      {
         return §+!T§.§`x§(§&L§);
      }
      
      override protected function getUIData() : XML
      {
         return §+!T§.§`x§(§%!%§);
      }
      
      override protected function getItemData() : XML
      {
         return §+!T§.§`x§(§7!t§);
      }
      
      override protected function getLoadingScreen() : DisplayObjectContainer
      {
         return new §!]§();
      }
      
      override protected function initialize() : void
      {
         super.initialize();
         §%"1§ = this;
         var _loc1_:SharedObject = SharedObject.getLocal("AB_BS_settings");
         if(_loc1_.data.soundsEnabled)
         {
            setSoundsEnabled(_loc1_.data.soundsEnabled);
         }
         §0"#§.§4!m§("CHANNEL_THEME",3,1);
      }
      
      override protected function onStageResize(param1:Event) : void
      {
         var _loc2_:int = Math.round(stage.stageWidth);
         var _loc3_:int = Math.round(stage.stageHeight);
         if(_loc2_ < 20 || _loc3_ < 20)
         {
            _loc2_ = §7!u§;
            _loc3_ = §1"?§;
         }
         if(_loc2_ < 2 || _loc3_ < 2)
         {
            return;
         }
         if(_loc2_ / _loc3_ > 25 / 12)
         {
         }
         §'_§.§=!R§(0,0,_loc2_,_loc3_);
         setViewSize(_loc2_,_loc3_);
         §%K§.§`9§.setCanvasSize(_loc2_,_loc3_);
         §]!]§.setViewSize(_loc2_,_loc3_);
         §7!u§ = _loc2_;
         §1"?§ = _loc3_;
      }
      
      override protected function initStates() : void
      {
         §?s§.init(§'B§.§'M§("callbackObject"));
         §'_§.§5k§.visible = false;
         §&p§(new StateLevelEditor(false));
         §&p§(new §@"0§(false));
         §&p§(new StateLevelEditorTestPlay(false));
         §&p§(new §&H§(false));
         §&p§(new StatePlayBS(false));
         §&p§(new §4!T§(false));
         §&p§(new §<"5§(false));
         §&p§(new §7!r§(false));
         §&p§(new §!l§(false));
         §&p§(new §0C§(false));
         §&p§(new §<b§(false));
         §&p§(new StateLevelPreview(false));
         §&p§(new §&y§(false));
         §&p§(new StateMap(false));
         if(stage.loaderInfo.parameters.assetsUrl)
         {
            §5L§.§[E§.init(stage.loaderInfo.parameters.assetsUrl);
            §,$§.§[E§.init(stage.loaderInfo.parameters.assetsUrl);
         }
         else
         {
            §5L§.§[E§.init("");
            §,$§.§[E§.init("");
         }
         if(stage.stageWidth != §6j§ || stage.stageHeight != §+#§)
         {
            this.onStageResize(null);
         }
         §?s§.registerMethod("onSoundsToggle",this.onSoundsToggled);
      }
      
      private function onSoundsToggled() : void
      {
         var _loc1_:* = !AngryBirdsFP11.getSoundsEnabled();
         AngryBirdsFP11.setSoundsEnabled(_loc1_);
         §?s§.doJsCall("onSoundsToggled",JSON.stringify(_loc1_));
      }
      
      override public function setFirstGameState() : void
      {
         super.setFirstGameState();
         §<t§(§&y§.§%!Q§);
         §["!§ = true;
         var _loc1_:int = Math.round(getTimer() / 1000);
         §0W§.§#W§(§&%§.§`!2§,_loc1_.toString(),_loc1_);
      }
      
      override protected function initStateLoad() : §1N§
      {
         return new StateLoadBS(true,§1N§.§%!Q§,getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      override protected function initLevelMain() : void
      {
         §'_§.§=M§ = new §&@§(stage);
      }
      
      override protected function initUserProgress() : void
      {
         §>!7§ = new §+`§(§ !i§);
      }
      
      protected function §2!h§(param1:Event) : void
      {
      }
      
      protected function §+v§(param1:Event) : void
      {
      }
      
      protected function §;!#§(param1:Event) : void
      {
      }
      
      protected function §0!1§(param1:Event) : void
      {
      }
      
      protected function §9!t§(param1:Event) : void
      {
      }
      
      protected function §3#§(param1:Event) : void
      {
      }
      
      protected function §8!]§(param1:Event) : void
      {
      }
      
      protected function §7O§(param1:Event) : void
      {
      }
      
      protected function §3!Z§(param1:Event) : void
      {
      }
      
      protected function §?[§(param1:Event) : void
      {
      }
      
      override public function getAppWidth() : Number
      {
         return §["3§;
      }
      
      override public function getAppHeight() : Number
      {
         return §7$§;
      }
   }
}
