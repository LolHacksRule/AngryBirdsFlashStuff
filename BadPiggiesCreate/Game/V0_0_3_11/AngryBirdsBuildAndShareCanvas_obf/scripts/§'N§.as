package
{
   import § J§.§#!r§;
   import § J§.§2u§;
   import § J§.§38§;
   import § J§.§6"6§;
   import § J§.§=§;
   import § J§.§=&§;
   import § J§.StateLevelEditor;
   import § J§.StateLevelEditorTestPlay;
   import § J§.StateLevelPreview;
   import §"!2§.§>9§;
   import §""6§.§!"1§;
   import §""6§.§1f§;
   import §""6§.§<a§;
   import §""6§.StateLoadBS;
   import §""6§.StatePlayBS;
   import §""6§.§^"'§;
   import §'x§.§?z§;
   import §,Q§.§="2§;
   import §0P§.§!!l§;
   import §1!v§.§&f§;
   import §1z§.§2!J§;
   import §2!O§.§,w§;
   import §2!O§.§-!#§;
   import §2i§.§,,§;
   import §2i§.§=Q§;
   import §2j§.§ +§;
   import §;X§.§1x§;
   import §?!k§.§0!t§;
   import §]X§.§+!+§;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.net.SharedObject;
   import flash.utils.getTimer;
   
   public class §'N§ extends AngryBirdsFP11
   {
      
      public static var §^"7§:String;
      
      protected static var § >§:String;
      
      private static const §^!3§:String = "AngryBirdsBuildAndShareSettings";
      
      public static const §6!A§:String = "/";
      
      public static const § !q§:int = 800;
      
      public static const §%"2§:int = 600;
      
      public static const §8&§:Boolean = false;
      
      protected static var §9V§:Class = §?s§;
      
      protected static var §6!1§:Class = §3!p§;
      
      protected static var §3!E§:Class = §%b§;
      
      protected static var §#+§:Class = §&K§;
      
      public static var §0E§:Boolean = true;
      
      private static var § set§:§'N§ = null;
      
      public static var §`"+§:Boolean = false;
       
      
      public function §'N§(param1:§ +§)
      {
         §^"7§ = param1.stage.loaderInfo.parameters.serverVersion || "[No version from server]";
         § >§ = param1.stage.loaderInfo.parameters.serverRoot || (!!§8&§ ? "" : "");
         super(param1);
         §=Q§.enabled = true;
         §,,§.§<Q§(§=Q§.§<! §);
         this.§@!w§();
      }
      
      public static function §@!S§() : String
      {
         return "AngryBirdsBuildSharedMemory";
      }
      
      public static function get §@!N§() : §'N§
      {
         return § set§;
      }
      
      override protected function getLevelBackgrounds() : XML
      {
         return §1x§.§9!t§(§3!E§);
      }
      
      private function §-!>§() : void
      {
         §+!+§.load(stage.loaderInfo.parameters.userId,stage.loaderInfo.parameters.accessToken,stage.loaderInfo.parameters.tokenExpiresIn);
      }
      
      protected function §@!w§() : void
      {
      }
      
      override protected function getAssetMap() : XML
      {
         return §1x§.§9!t§(§6!1§);
      }
      
      override protected function getUIData() : XML
      {
         return §1x§.§9!t§(§9V§);
      }
      
      override protected function getItemData() : XML
      {
         return §1x§.§9!t§(§#+§);
      }
      
      override protected function getLoadingScreen() : DisplayObjectContainer
      {
         return new §2#§();
      }
      
      override protected function initialize() : void
      {
         super.initialize();
         § set§ = this;
         var _loc1_:SharedObject = SharedObject.getLocal("AB_BS_settings");
         if(_loc1_.data.soundsEnabled)
         {
            setSoundsEnabled(_loc1_.data.soundsEnabled);
         }
         §0!t§.§2Q§("CHANNEL_THEME",1,1);
      }
      
      override protected function onStageResize(param1:Event) : void
      {
         var _loc2_:int = Math.round(stage.stageWidth);
         var _loc3_:int = Math.round(stage.stageHeight);
         if(_loc2_ < 20 || _loc3_ < 20)
         {
            _loc2_ = §3!>§;
            _loc3_ = §else§;
         }
         if(_loc2_ < 2 || _loc3_ < 2)
         {
            return;
         }
         if(_loc2_ / _loc3_ > 25 / 12)
         {
         }
         §?z§.§'a§(0,0,_loc2_,_loc3_);
         setViewSize(_loc2_,_loc3_);
         §!!l§.§`7§.setCanvasSize(_loc2_,_loc3_);
         §3!>§ = _loc2_;
         §else§ = _loc3_;
      }
      
      override protected function initStates() : void
      {
         §="2§.init(§,w§.§?I§("callbackObject"));
         §?z§.§^!t§.visible = false;
         §6w§(new StateLevelEditor(false));
         §6w§(new §6"6§(false));
         §6w§(new StateLevelEditorTestPlay(false));
         §6w§(new §2u§(false));
         §6w§(new §#!r§(false));
         §6w§(new StatePlayBS(false));
         §6w§(new §!"1§(false));
         §6w§(new §<a§(false));
         §6w§(new §^"'§(false));
         §6w§(new §=§(false));
         §6w§(new §38§(false));
         §6w§(new §=&§(false));
         §6w§(new StateLevelPreview(false));
         §6w§(new §1f§(false));
         if(stage.loaderInfo.parameters.assetsUrl)
         {
            §2!J§.§if §.init(stage.loaderInfo.parameters.assetsUrl);
         }
         else
         {
            §2!J§.§if §.init("");
         }
         if(stage.stageWidth != §#k§ || stage.stageHeight != §!7§)
         {
            this.onStageResize(null);
         }
         §="2§.registerMethod("onSoundsToggle",this.onSoundsToggled);
      }
      
      private function onSoundsToggled() : void
      {
         var _loc1_:* = !AngryBirdsFP11.getSoundsEnabled();
         AngryBirdsFP11.setSoundsEnabled(_loc1_);
         §="2§.doJsCall("onSoundsToggled",JSON.stringify(_loc1_));
      }
      
      override public function setFirstGameState() : void
      {
         super.setFirstGameState();
         §2!]§(§1f§.§^z§);
         §`"+§ = true;
         var _loc1_:int = Math.round(getTimer() / 1000);
         §,,§.§<Q§(§=Q§.§%O§,_loc1_.toString(),_loc1_);
      }
      
      override protected function initStateLoad() : §-!#§
      {
         return new StateLoadBS(true,§-!#§.§^z§,getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      override protected function initLevelMain() : void
      {
         §?z§.§=7§ = new §&f§(stage);
      }
      
      override protected function initUserProgress() : void
      {
         §8!I§ = new §>9§(§ >§);
      }
      
      protected function §9l§(param1:Event) : void
      {
      }
      
      protected function §;z§(param1:Event) : void
      {
      }
      
      protected function §@"2§(param1:Event) : void
      {
      }
      
      protected function §?!`§(param1:Event) : void
      {
      }
      
      protected function §%"$§(param1:Event) : void
      {
      }
      
      protected function §@!g§(param1:Event) : void
      {
      }
      
      protected function §0p§(param1:Event) : void
      {
      }
      
      protected function §4!d§(param1:Event) : void
      {
      }
      
      protected function §3!t§(param1:Event) : void
      {
      }
      
      protected function §22§(param1:Event) : void
      {
      }
      
      override public function getAppWidth() : Number
      {
         return § !q§;
      }
      
      override public function getAppHeight() : Number
      {
         return §%"2§;
      }
   }
}
