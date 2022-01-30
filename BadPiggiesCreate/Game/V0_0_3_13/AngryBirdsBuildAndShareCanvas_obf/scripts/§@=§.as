package
{
   import §""§.§]!^§;
   import §#!8§.§&!'§;
   import §&W§.§3g§;
   import §,!!§.§!U§;
   import §,!!§.§%!L§;
   import §-!+§.§6"6§;
   import §-!H§.§0!]§;
   import §07§.§4!@§;
   import §2x§.§!!6§;
   import §2x§.§5!h§;
   import §2x§.§7o§;
   import §2x§.§<!`§;
   import §2x§.StateLoadBS;
   import §2x§.StatePlayBS;
   import §4!S§.§<V§;
   import §4!y§.StateMap;
   import §8!E§.§2w§;
   import §9";§.§,"4§;
   import §=!&§.§3h§;
   import §=!<§.§5!U§;
   import §>!5§.§>!O§;
   import §>!5§.§>!T§;
   import §>Z§.§5;§;
   import §^^§.§+J§;
   import §^^§.§1§;
   import §^^§.§3'§;
   import §^^§.§9!]§;
   import §^^§.§;R§;
   import §^^§.StateLevelEditor;
   import §^^§.StateLevelEditorTestPlay;
   import §^^§.StateLevelPreview;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.net.SharedObject;
   import flash.utils.getTimer;
   
   public class §@=§ extends AngryBirdsFP11
   {
      
      public static var §`]§:String;
      
      protected static var §;!N§:String;
      
      private static const §5!^§:String = "AngryBirdsBuildAndShareSettings";
      
      public static const §]"&§:String = "/";
      
      public static const §`!_§:int = 1024;
      
      public static const §?_§:int = 480;
      
      public static const §1D§:Boolean = false;
      
      protected static var §1!q§:Class = §2F§;
      
      protected static var §[Y§:Class = §&![§;
      
      protected static var § !w§:Class = §,!$§;
      
      protected static var §@7§:Class = §#v§;
      
      public static var §[j§:Boolean = true;
      
      private static var §+!g§:§@=§ = null;
      
      public static var §%"2§:Boolean = false;
       
      
      public function §@=§(param1:§,"4§)
      {
         §`]§ = param1.stage.loaderInfo.parameters.serverVersion || "[No version from server]";
         §;!N§ = param1.stage.loaderInfo.parameters.serverRoot || (!!§1D§ ? "" : "");
         super(param1);
         §%!L§.enabled = true;
         §!U§.§"!@§(§%!L§.§&!+§);
         this.§4M§();
      }
      
      public static function §<&§() : String
      {
         return "AngryBirdsBuildSharedMemory";
      }
      
      public static function get §2p§() : §@=§
      {
         return §+!g§;
      }
      
      override protected function getLevelBackgrounds() : XML
      {
         return §3g§.§5">§(§ !w§);
      }
      
      private function §+$§() : void
      {
         §4!@§.load(stage.loaderInfo.parameters.userId,stage.loaderInfo.parameters.accessToken,stage.loaderInfo.parameters.tokenExpiresIn);
      }
      
      protected function §4M§() : void
      {
         §]!^§.initialize(canvas.stage);
      }
      
      override protected function getAssetMap() : XML
      {
         return §3g§.§5">§(§[Y§);
      }
      
      override protected function getUIData() : XML
      {
         return §3g§.§5">§(§1!q§);
      }
      
      override protected function getItemData() : XML
      {
         return §3g§.§5">§(§@7§);
      }
      
      override protected function getLoadingScreen() : DisplayObjectContainer
      {
         return new §%-§();
      }
      
      override protected function initialize() : void
      {
         super.initialize();
         §+!g§ = this;
         var _loc1_:SharedObject = SharedObject.getLocal("AB_BS_settings");
         if(_loc1_.data.soundsEnabled)
         {
            setSoundsEnabled(_loc1_.data.soundsEnabled);
         }
         §5;§.§9L§("CHANNEL_THEME",3,1);
      }
      
      override protected function onStageResize(param1:Event) : void
      {
         var _loc2_:int = Math.round(stage.stageWidth);
         var _loc3_:int = Math.round(stage.stageHeight);
         if(_loc2_ < 20 || _loc3_ < 20)
         {
            _loc2_ = §6"7§;
            _loc3_ = §-z§;
         }
         if(_loc2_ < 2 || _loc3_ < 2)
         {
            return;
         }
         if(_loc2_ / _loc3_ > 25 / 12)
         {
         }
         §5!U§.§;"#§(0,0,_loc2_,_loc3_);
         setViewSize(_loc2_,_loc3_);
         §6"6§.§^F§.setCanvasSize(_loc2_,_loc3_);
         §]!^§.setViewSize(_loc2_,_loc3_);
         §6"7§ = _loc2_;
         §-z§ = _loc3_;
      }
      
      override protected function initStates() : void
      {
         §&!'§.init(§>!T§.§&!D§("callbackObject"));
         §5!U§.§+p§.visible = false;
         §'"§(new StateLevelEditor(false));
         §'"§(new §1§(false));
         §'"§(new StateLevelEditorTestPlay(false));
         §'"§(new §+J§(false));
         §'"§(new StatePlayBS(false));
         §'"§(new §7o§(false));
         §'"§(new §5!h§(false));
         §'"§(new §<!`§(false));
         §'"§(new §3'§(false));
         §'"§(new §9!]§(false));
         §'"§(new §;R§(false));
         §'"§(new StateLevelPreview(false));
         §'"§(new §!!6§(false));
         §'"§(new StateMap(false));
         if(stage.loaderInfo.parameters.assetsUrl)
         {
            §<V§.§7!?§.init(stage.loaderInfo.parameters.assetsUrl);
            §3h§.§7!?§.init(stage.loaderInfo.parameters.assetsUrl);
         }
         else
         {
            §<V§.§7!?§.init("");
            §3h§.§7!?§.init("");
         }
         if(stage.stageWidth != §`!4§ || stage.stageHeight != §!,§)
         {
            this.onStageResize(null);
         }
         §&!'§.registerMethod("onSoundsToggle",this.onSoundsToggled);
      }
      
      private function onSoundsToggled() : void
      {
         var _loc1_:* = !AngryBirdsFP11.getSoundsEnabled();
         AngryBirdsFP11.setSoundsEnabled(_loc1_);
         §&!'§.doJsCall("onSoundsToggled",JSON.stringify(_loc1_));
      }
      
      override public function setFirstGameState() : void
      {
         super.setFirstGameState();
         §4>§(§!!6§.§>H§);
         §%"2§ = true;
         var _loc1_:int = Math.round(getTimer() / 1000);
         §!U§.§"!@§(§%!L§.§-Z§,_loc1_.toString(),_loc1_);
      }
      
      override protected function initStateLoad() : §>!O§
      {
         return new StateLoadBS(true,§>!O§.§>H§,getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      override protected function initLevelMain() : void
      {
         §5!U§.§,!E§ = new §2w§(stage);
      }
      
      override protected function initUserProgress() : void
      {
         §"!c§ = new §0!]§(§;!N§);
      }
      
      protected function §7!5§(param1:Event) : void
      {
      }
      
      protected function §&3§(param1:Event) : void
      {
      }
      
      protected function §^"3§(param1:Event) : void
      {
      }
      
      protected function §2f§(param1:Event) : void
      {
      }
      
      protected function §6!E§(param1:Event) : void
      {
      }
      
      protected function §`,§(param1:Event) : void
      {
      }
      
      protected function §>!@§(param1:Event) : void
      {
      }
      
      protected function §+!K§(param1:Event) : void
      {
      }
      
      protected function §3!G§(param1:Event) : void
      {
      }
      
      protected function §="=§(param1:Event) : void
      {
      }
      
      override public function getAppWidth() : Number
      {
         return §`!_§;
      }
      
      override public function getAppHeight() : Number
      {
         return §?_§;
      }
   }
}
