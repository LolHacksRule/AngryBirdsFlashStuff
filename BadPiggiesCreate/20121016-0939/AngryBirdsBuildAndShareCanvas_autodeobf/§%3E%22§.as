package
{
   import § "@§.§#"?§;
   import § "@§.§%!3§;
   import § "@§.§%!x§;
   import § "@§.§-m§;
   import § "@§.§;q§;
   import § "@§.StateLevelEditor;
   import § "@§.StateLevelEditorTestPlay;
   import § "@§.StateLevelPreview;
   import §""3§.§,"5§;
   import §%_§.§4m§;
   import §%c§.§=!X§;
   import §'@§.§4!n§;
   import §'@§.§4&§;
   import §+h§.§^!]§;
   import §,B§.StateMap;
   import §-!n§.§5!U§;
   import §0![§.§7!Y§;
   import §0![§.§@8§;
   import §0![§.§@l§;
   import §0![§.StateLoadBS;
   import §0![§.StatePlayBS;
   import §0![§.§^! §;
   import §5!V§.§1!L§;
   import §5"-§.§5y§;
   import §5"-§.§`^§;
   import §6p§.§?%§;
   import §8" §.§,!q§;
   import §9!O§.§0x§;
   import §=!M§.§?!1§;
   import §="6§.§3!S§;
   import §^!y§.§'"#§;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.net.SharedObject;
   import flash.utils.getTimer;
   
   public class §>"§ extends AngryBirdsFP11
   {
      
      public static var §@R§:String;
      
      protected static var §0!^§:String;
      
      private static const §`S§:String = "AngryBirdsBuildAndShareSettings";
      
      public static const §6!c§:String = "/";
      
      public static const §^!N§:int = 1024;
      
      public static const §5!P§:int = 480;
      
      public static const §>3§:Boolean = false;
      
      protected static var §0l§:Class = §-!,§;
      
      protected static var §2!`§:Class = §7!4§;
      
      protected static var §^!3§:Class = §`!H§;
      
      protected static var §9"3§:Class = § ![§;
      
      public static var §`&§:Boolean = true;
      
      private static var §>7§:§>"§ = null;
      
      public static var §,!v§:Boolean = false;
       
      
      public function §>"§(param1:§,"5§)
      {
         §@R§ = param1.stage.loaderInfo.parameters.serverVersion || "[No version from server]";
         §0!^§ = param1.stage.loaderInfo.parameters.serverRoot || (!!§>3§ ? "" : "");
         super(param1);
         §4!n§.enabled = true;
         §4&§.§@!Q§(§4!n§.§%!Q§);
         this.§+!8§();
      }
      
      public static function §1"3§() : String
      {
         return "AngryBirdsBuildSharedMemory";
      }
      
      public static function get §%d§() : §>"§
      {
         return §>7§;
      }
      
      override protected function getLevelBackgrounds() : XML
      {
         return §?!1§.§ !?§(§^!3§);
      }
      
      private function §]5§() : void
      {
         §3!S§.load(stage.loaderInfo.parameters.userId,stage.loaderInfo.parameters.accessToken,stage.loaderInfo.parameters.tokenExpiresIn);
      }
      
      protected function §+!8§() : void
      {
         §^!]§.initialize(canvas.stage);
      }
      
      override protected function getAssetMap() : XML
      {
         return §?!1§.§ !?§(§2!`§);
      }
      
      override protected function getUIData() : XML
      {
         return §?!1§.§ !?§(§0l§);
      }
      
      override protected function getItemData() : XML
      {
         return §?!1§.§ !?§(§9"3§);
      }
      
      override protected function getLoadingScreen() : DisplayObjectContainer
      {
         return new §&"=§();
      }
      
      override protected function initialize() : void
      {
         super.initialize();
         §>7§ = this;
         var _loc1_:SharedObject = SharedObject.getLocal("AB_BS_settings");
         if(_loc1_.data.soundsEnabled)
         {
            setSoundsEnabled(_loc1_.data.soundsEnabled);
         }
         §5!U§.§2R§("CHANNEL_THEME",3,1);
      }
      
      override protected function onStageResize(param1:Event) : void
      {
         var _loc2_:int = Math.round(stage.stageWidth);
         var _loc3_:int = Math.round(stage.stageHeight);
         if(_loc2_ < 20 || _loc3_ < 20)
         {
            _loc2_ = §>6§;
            _loc3_ = §<!R§;
         }
         if(_loc2_ < 2 || _loc3_ < 2)
         {
            return;
         }
         if(_loc2_ / _loc3_ > 25 / 12)
         {
         }
         §=!X§.§%" §(0,0,_loc2_,_loc3_);
         setViewSize(_loc2_,_loc3_);
         §?%§.§%b§.setCanvasSize(_loc2_,_loc3_);
         §^!]§.setViewSize(_loc2_,_loc3_);
         §>6§ = _loc2_;
         §<!R§ = _loc3_;
      }
      
      override protected function initStates() : void
      {
         §4m§.init(§5y§.§"!>§("callbackObject"));
         §=!X§.§29§.visible = false;
         §,Y§(new StateLevelEditor(false));
         §,Y§(new §%!3§(false));
         §,Y§(new StateLevelEditorTestPlay(false));
         §,Y§(new §;q§(false));
         §,Y§(new StatePlayBS(false));
         §,Y§(new §@l§(false));
         §,Y§(new §@8§(false));
         §,Y§(new §7!Y§(false));
         §,Y§(new §%!x§(false));
         §,Y§(new §-m§(false));
         §,Y§(new §#"?§(false));
         §,Y§(new StateLevelPreview(false));
         §,Y§(new §^! §(false));
         §,Y§(new StateMap(false));
         if(stage.loaderInfo.parameters.assetsUrl)
         {
            §,!q§.§2=§.init(stage.loaderInfo.parameters.assetsUrl);
            §0x§.§2=§.init(stage.loaderInfo.parameters.assetsUrl);
         }
         else
         {
            §,!q§.§2=§.init("");
            §0x§.§2=§.init("");
         }
         if(stage.stageWidth != §>!U§ || stage.stageHeight != §>Y§)
         {
            this.onStageResize(null);
         }
         §4m§.registerMethod("onSoundsToggle",this.onSoundsToggled);
      }
      
      private function onSoundsToggled() : void
      {
         var _loc1_:* = !AngryBirdsFP11.getSoundsEnabled();
         AngryBirdsFP11.setSoundsEnabled(_loc1_);
         §4m§.doJsCall("onSoundsToggled",JSON.stringify(_loc1_));
      }
      
      override public function setFirstGameState() : void
      {
         super.setFirstGameState();
         §1!b§(§^! §.§'=§);
         §,!v§ = true;
         var _loc1_:int = Math.round(getTimer() / 1000);
         §4&§.§@!Q§(§4!n§.§&!1§,_loc1_.toString(),_loc1_);
      }
      
      override protected function initStateLoad() : §`^§
      {
         return new StateLoadBS(true,§`^§.§'=§,getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      override protected function initLevelMain() : void
      {
         §=!X§.§!'§ = new §1!L§(stage);
      }
      
      override protected function initUserProgress() : void
      {
         §>" § = new §'"#§(§0!^§);
      }
      
      protected function §9!@§(param1:Event) : void
      {
      }
      
      protected function §+!k§(param1:Event) : void
      {
      }
      
      protected function §[W§(param1:Event) : void
      {
      }
      
      protected function §'!a§(param1:Event) : void
      {
      }
      
      protected function §>"=§(param1:Event) : void
      {
      }
      
      protected function §<=§(param1:Event) : void
      {
      }
      
      protected function §`",§(param1:Event) : void
      {
      }
      
      protected function §1!q§(param1:Event) : void
      {
      }
      
      protected function §!!y§(param1:Event) : void
      {
      }
      
      protected function §52§(param1:Event) : void
      {
      }
      
      override public function getAppWidth() : Number
      {
         return §^!N§;
      }
      
      override public function getAppHeight() : Number
      {
         return §5!P§;
      }
   }
}
