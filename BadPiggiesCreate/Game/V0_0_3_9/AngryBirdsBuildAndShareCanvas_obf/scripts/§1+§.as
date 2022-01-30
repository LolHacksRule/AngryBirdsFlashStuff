package
{
   import § !%§.§^2§;
   import §!!A§.§ "!§;
   import §!!A§.§@P§;
   import §"h§.§<"+§;
   import §"h§.§>C§;
   import §&"&§.§8!"§;
   import §&"8§.§[`§;
   import §-N§.§=!]§;
   import §3!S§.§%s§;
   import §6p§.§'!B§;
   import §9!#§.§#!R§;
   import §9!#§.§4X§;
   import §9!#§.§=!A§;
   import §9!#§.§?w§;
   import §9!#§.StateLoadBS;
   import §9!#§.StatePlayBS;
   import §=;§.§!g§;
   import §=;§.§%!B§;
   import §=;§.§-1§;
   import §=;§.§=!"§;
   import §=;§.§=&§;
   import §=;§.§@!h§;
   import §=;§.StateLevelEditor;
   import §=;§.StateLevelEditorTestPlay;
   import §=;§.StateLevelPreview;
   import §=b§.§@!6§;
   import §@!;§.§+b§;
   import §]'§.§"!>§;
   import §^s§.§#!p§;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.net.SharedObject;
   import flash.utils.getTimer;
   
   public class §1+§ extends AngryBirdsFP11
   {
      
      public static var §7v§:String;
      
      protected static var §`]§:String;
      
      private static const §9G§:String = "AngryBirdsBuildAndShareSettings";
      
      public static const §>F§:String = "/";
      
      public static const §"<§:int = 800;
      
      public static const §9%§:int = 600;
      
      public static const §3'§:Boolean = false;
      
      protected static var §""7§:Class = §^#§;
      
      protected static var §0!p§:Class = §+a§;
      
      protected static var §%"%§:Class = §70§;
      
      protected static var §7!i§:Class = §;""§;
      
      public static var §?!P§:Boolean = true;
      
      private static var §1!S§:§1+§ = null;
      
      public static var §&g§:Boolean = false;
       
      
      public function §1+§(param1:§#!p§)
      {
         §7v§ = param1.stage.loaderInfo.parameters.serverVersion || "[No version from server]";
         §`]§ = param1.stage.loaderInfo.parameters.serverRoot || (!!§3'§ ? "" : "");
         super(param1);
         §@P§.enabled = true;
         § "!§.static(§@P§.§ !T§);
         this.§-"1§();
      }
      
      public static function §[! §() : String
      {
         return "AngryBirdsBuildSharedMemory";
      }
      
      public static function get §?!-§() : §1+§
      {
         return §1!S§;
      }
      
      override protected function getLevelBackgrounds() : XML
      {
         return §+b§.§0x§(§%"%§);
      }
      
      private function §2!D§() : void
      {
         §"!>§.load(stage.loaderInfo.parameters.userId,stage.loaderInfo.parameters.accessToken,stage.loaderInfo.parameters.tokenExpiresIn);
      }
      
      protected function §-"1§() : void
      {
      }
      
      override protected function getAssetMap() : XML
      {
         return §+b§.§0x§(§0!p§);
      }
      
      override protected function getUIData() : XML
      {
         return §+b§.§0x§(§""7§);
      }
      
      override protected function getItemData() : XML
      {
         return §+b§.§0x§(§7!i§);
      }
      
      override protected function getLoadingScreen() : DisplayObjectContainer
      {
         return new §2!l§();
      }
      
      override protected function initialize() : void
      {
         super.initialize();
         §1!S§ = this;
         var _loc1_:SharedObject = SharedObject.getLocal("AB_BS_settings");
         if(_loc1_.data.soundsEnabled)
         {
            setSoundsEnabled(_loc1_.data.soundsEnabled);
         }
         §'!B§.§#3§("CHANNEL_THEME",1,1);
      }
      
      override protected function onStageResize(param1:Event) : void
      {
         var _loc2_:int = Math.round(stage.stageWidth);
         var _loc3_:int = Math.round(stage.stageHeight);
         if(_loc2_ < 20 || _loc3_ < 20)
         {
            _loc2_ = §!y§;
            _loc3_ = § u§;
         }
         if(_loc2_ < 2 || _loc3_ < 2)
         {
            return;
         }
         if(_loc2_ / _loc3_ > 25 / 12)
         {
         }
         §%s§.§4!@§(0,0,_loc2_,_loc3_);
         setViewSize(_loc2_,_loc3_);
         §=!]§.§@§.setCanvasSize(_loc2_,_loc3_);
         §!y§ = _loc2_;
         § u§ = _loc3_;
      }
      
      override protected function initStates() : void
      {
         §8!"§.init(§<"+§.§]"$§("callbackObject"));
         §%s§.§7H§.visible = false;
         §?!B§(new StateLevelEditor(false));
         §?!B§(new §=!"§(false));
         §?!B§(new StateLevelEditorTestPlay(false));
         §?!B§(new §%!B§(false));
         §?!B§(new §=&§(false));
         §?!B§(new StatePlayBS(false));
         §?!B§(new §#!R§(false));
         §?!B§(new §4X§(false));
         §?!B§(new §=!A§(false));
         §?!B§(new §@!h§(false));
         §?!B§(new §!g§(false));
         §?!B§(new §-1§(false));
         §?!B§(new StateLevelPreview(false));
         §?!B§(new §?w§(false));
         if(stage.loaderInfo.parameters.assetsUrl)
         {
            §[`§.§'!o§.init(stage.loaderInfo.parameters.assetsUrl);
         }
         else
         {
            §[`§.§'!o§.init("");
         }
         if(stage.stageWidth != §`6§ || stage.stageHeight != § "2§)
         {
            this.onStageResize(null);
         }
         §8!"§.registerMethod("onSoundsToggle",this.onSoundsToggled);
      }
      
      private function onSoundsToggled() : void
      {
         var _loc1_:* = !AngryBirdsFP11.getSoundsEnabled();
         AngryBirdsFP11.setSoundsEnabled(_loc1_);
         §8!"§.doJsCall("onSoundsToggled",JSON.stringify(_loc1_));
      }
      
      override public function setFirstGameState() : void
      {
         super.setFirstGameState();
         §<g§(§?w§.§8G§);
         §&g§ = true;
         var _loc1_:int = Math.round(getTimer() / 1000);
         § "!§.static(§@P§.§2!+§,_loc1_.toString(),_loc1_);
      }
      
      override protected function initStateLoad() : §>C§
      {
         return new StateLoadBS(true,§>C§.§8G§,getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      override protected function initLevelMain() : void
      {
         §%s§.§`!f§ = new §@!6§(stage);
      }
      
      override protected function initUserProgress() : void
      {
         §5!c§ = new §^2§(§`]§);
      }
      
      protected function §2W§(param1:Event) : void
      {
      }
      
      protected function §^i§(param1:Event) : void
      {
      }
      
      protected function §"t§(param1:Event) : void
      {
      }
      
      protected function §"!Y§(param1:Event) : void
      {
      }
      
      protected function §'I§(param1:Event) : void
      {
      }
      
      protected function §>S§(param1:Event) : void
      {
      }
      
      protected function §,!C§(param1:Event) : void
      {
      }
      
      protected function §3!h§(param1:Event) : void
      {
      }
      
      protected function §1!9§(param1:Event) : void
      {
      }
      
      protected function §=J§(param1:Event) : void
      {
      }
      
      override public function getAppWidth() : Number
      {
         return §"<§;
      }
      
      override public function getAppHeight() : Number
      {
         return §9%§;
      }
   }
}
