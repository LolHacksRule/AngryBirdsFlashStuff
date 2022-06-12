package
{
   import §!!T§.§"!S§;
   import §!",§.§ 7§;
   import §!",§.§"F§;
   import §!",§.§'!%§;
   import §!",§.§'[§;
   import §!",§.§>^§;
   import §!",§.StateLevelEditor;
   import §!",§.StateLevelEditorTestPlay;
   import §!",§.StateLevelPreview;
   import §!",§.§]7§;
   import §%h§.§+p§;
   import §,E§.§,!Z§;
   import §,E§.§0!g§;
   import §-P§.§"c§;
   import §-P§.§1!I§;
   import §-P§.§1""§;
   import §-P§.§1Z§;
   import §-P§.StateLoadBS;
   import §-P§.StatePlayBS;
   import §0!F§.§^d§;
   import §4u§.§<!>§;
   import §6!]§.§-d§;
   import §6`§.§?!7§;
   import §9e§.§"!e§;
   import §;!+§.§@!D§;
   import §>w§.§4E§;
   import §>w§.§=E§;
   import §`%§.§8!0§;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.net.SharedObject;
   import flash.utils.getTimer;
   import §var§.§,"1§;
   
   public class §3!P§ extends AngryBirdsFP11
   {
      
      public static var §,!?§:String;
      
      protected static var §!!s§:String;
      
      private static const §?H§:String = "AngryBirdsBuildAndShareSettings";
      
      public static const §?!t§:String = "/";
      
      public static const §;"#§:int = 800;
      
      public static const §3g§:int = 600;
      
      public static const §`"&§:Boolean = false;
      
      protected static var §^!w§:Class = §>!r§;
      
      protected static var §?!O§:Class = §@J§;
      
      protected static var §^7§:Class = §-!S§;
      
      protected static var §#U§:Class = §%§;
      
      public static var §9&§:Boolean = true;
      
      private static var §[""§:§3!P§ = null;
      
      public static var §!!t§:Boolean = false;
       
      
      public function §3!P§(param1:§-d§)
      {
         §,!?§ = param1.stage.loaderInfo.parameters.serverVersion || "[No version from server]";
         §!!s§ = param1.stage.loaderInfo.parameters.serverRoot || (!!§`"&§ ? "" : "");
         super(param1);
         §0!g§.enabled = true;
         §,!Z§.§8"0§(§0!g§.§6!E§);
         this.§9!L§();
      }
      
      public static function §<"§() : String
      {
         return "AngryBirdsBuildSharedMemory";
      }
      
      public static function get §"!U§() : §3!P§
      {
         return §[""§;
      }
      
      override protected function getLevelBackgrounds() : XML
      {
         return §<!>§.§%!$§(§^7§);
      }
      
      private function §%,§() : void
      {
         §@!D§.load(stage.loaderInfo.parameters.userId,stage.loaderInfo.parameters.accessToken,stage.loaderInfo.parameters.tokenExpiresIn);
      }
      
      protected function §9!L§() : void
      {
      }
      
      override protected function getAssetMap() : XML
      {
         return §<!>§.§%!$§(§?!O§);
      }
      
      override protected function getUIData() : XML
      {
         return §<!>§.§%!$§(§^!w§);
      }
      
      override protected function getItemData() : XML
      {
         return §<!>§.§%!$§(§#U§);
      }
      
      override protected function getLoadingScreen() : DisplayObjectContainer
      {
         return new §`o§();
      }
      
      override protected function initialize() : void
      {
         super.initialize();
         §[""§ = this;
         var _loc1_:SharedObject = SharedObject.getLocal("AB_BS_settings");
         if(_loc1_.data.soundsEnabled)
         {
            setSoundsEnabled(_loc1_.data.soundsEnabled);
         }
         §?!7§.§!!l§("CHANNEL_THEME",1,1);
      }
      
      override protected function onStageResize(param1:Event) : void
      {
         var _loc2_:int = Math.round(stage.stageWidth);
         var _loc3_:int = Math.round(stage.stageHeight);
         if(_loc2_ < 20 || _loc3_ < 20)
         {
            _loc2_ = §4!_§;
            _loc3_ = §,! §;
         }
         if(_loc2_ < 2 || _loc3_ < 2)
         {
            return;
         }
         if(_loc2_ / _loc3_ > 25 / 12)
         {
         }
         §8!0§.§,",§(0,0,_loc2_,_loc3_);
         setViewSize(_loc2_,_loc3_);
         §^d§.§+!f§.setCanvasSize(_loc2_,_loc3_);
         §4!_§ = _loc2_;
         §,! § = _loc3_;
      }
      
      override protected function initStates() : void
      {
         §"!S§.init(§4E§.§4!c§("callbackObject"));
         §8!0§.§&!S§.visible = false;
         §;r§(new StateLevelEditor(false));
         §;r§(new §"F§(false));
         §;r§(new StateLevelEditorTestPlay(false));
         §;r§(new § 7§(false));
         §;r§(new §'!%§(false));
         §;r§(new StatePlayBS(false));
         §;r§(new §"c§(false));
         §;r§(new §1""§(false));
         §;r§(new §1!I§(false));
         §;r§(new §'[§(false));
         §;r§(new §>^§(false));
         §;r§(new §]7§(false));
         §;r§(new StateLevelPreview(false));
         §;r§(new §1Z§(false));
         if(stage.loaderInfo.parameters.assetsUrl)
         {
            §,"1§.§9j§.init(stage.loaderInfo.parameters.assetsUrl);
         }
         else
         {
            §,"1§.§9j§.init("");
         }
         if(stage.stageWidth != §'A§ || stage.stageHeight != §7!;§)
         {
            this.onStageResize(null);
         }
         §"!S§.registerMethod("onSoundsToggle",this.onSoundsToggled);
      }
      
      private function onSoundsToggled() : void
      {
         var _loc1_:* = !AngryBirdsFP11.getSoundsEnabled();
         AngryBirdsFP11.setSoundsEnabled(_loc1_);
         §"!S§.doJsCall("onSoundsToggled",JSON.stringify(_loc1_));
      }
      
      override public function setFirstGameState() : void
      {
         super.setFirstGameState();
         §6?§(§1Z§.§#!w§);
         §!!t§ = true;
         var _loc1_:int = Math.round(getTimer() / 1000);
         §,!Z§.§8"0§(§0!g§.§>4§,_loc1_.toString(),_loc1_);
      }
      
      override protected function initStateLoad() : §=E§
      {
         return new StateLoadBS(true,§=E§.§#!w§,getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      override protected function initLevelMain() : void
      {
         §8!0§.§?2§ = new §+p§(stage);
      }
      
      override protected function initUserProgress() : void
      {
         §8!v§ = new §"!e§(§!!s§);
      }
      
      protected function §=!5§(param1:Event) : void
      {
      }
      
      protected function §4F§(param1:Event) : void
      {
      }
      
      protected function §;;§(param1:Event) : void
      {
      }
      
      protected function §-O§(param1:Event) : void
      {
      }
      
      protected function §5!m§(param1:Event) : void
      {
      }
      
      protected function §;!F§(param1:Event) : void
      {
      }
      
      protected function §9$§(param1:Event) : void
      {
      }
      
      protected function §&1§(param1:Event) : void
      {
      }
      
      protected function §5!C§(param1:Event) : void
      {
      }
      
      protected function §6!=§(param1:Event) : void
      {
      }
      
      override public function getAppWidth() : Number
      {
         return §;"#§;
      }
      
      override public function getAppHeight() : Number
      {
         return §3g§;
      }
   }
}
