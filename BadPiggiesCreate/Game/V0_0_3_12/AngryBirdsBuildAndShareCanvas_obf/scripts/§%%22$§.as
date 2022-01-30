package
{
   import §"p§.§@=§;
   import §%!,§.§,v§;
   import §%!,§.§58§;
   import §%B§.§^k§;
   import §,r§.§ !<§;
   import §,r§.§0>§;
   import §,r§.§2!_§;
   import §,r§.§5!L§;
   import §,r§.StateLoadBS;
   import §,r§.StatePlayBS;
   import §-!@§.§6P§;
   import §-!^§.§-y§;
   import §-!^§.§6k§;
   import §0O§.§<!x§;
   import §2!w§.§[D§;
   import §2L§.StateMap;
   import §3",§.§0"<§;
   import §7"1§.§%W§;
   import §7N§.§!F§;
   import §7N§.§#!&§;
   import §7N§.§@!x§;
   import §7N§.StateLevelEditor;
   import §7N§.StateLevelEditorTestPlay;
   import §7N§.StateLevelPreview;
   import §7N§.§]! §;
   import §7N§.§]",§;
   import §=e§.§1!@§;
   import §>!#§.§#"#§;
   import §>";§.§#§;
   import §[B§.§1!z§;
   import §[m§.§^^§;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.net.SharedObject;
   import flash.utils.getTimer;
   
   public class §%"$§ extends AngryBirdsFP11
   {
      
      public static var §8! §:String;
      
      protected static var §7!A§:String;
      
      private static const §`j§:String = "AngryBirdsBuildAndShareSettings";
      
      public static const §,`§:String = "/";
      
      public static const §0<§:int = 1024;
      
      public static const §-!'§:int = 480;
      
      public static const §;[§:Boolean = false;
      
      protected static var §4"-§:Class = §7!5§;
      
      protected static var § 0§:Class = §8f§;
      
      protected static var § !v§:Class = §>f§;
      
      protected static var §2!5§:Class = §-w§;
      
      public static var § @§:Boolean = true;
      
      private static var §null §:§%"$§ = null;
      
      public static var §;U§:Boolean = false;
       
      
      public function §%"$§(param1:§^^§)
      {
         §8! § = param1.stage.loaderInfo.parameters.serverVersion || "[No version from server]";
         §7!A§ = param1.stage.loaderInfo.parameters.serverRoot || (!!§;[§ ? "" : "");
         super(param1);
         §-y§.enabled = true;
         §6k§.§+"=§(§-y§.§]a§);
         this.§@!J§();
      }
      
      public static function §;!s§() : String
      {
         return "AngryBirdsBuildSharedMemory";
      }
      
      public static function get §"!V§() : §%"$§
      {
         return §null §;
      }
      
      override protected function getLevelBackgrounds() : XML
      {
         return §@=§.§="#§(§ !v§);
      }
      
      private function §'n§() : void
      {
         §#"#§.load(stage.loaderInfo.parameters.userId,stage.loaderInfo.parameters.accessToken,stage.loaderInfo.parameters.tokenExpiresIn);
      }
      
      protected function §@!J§() : void
      {
         §6P§.initialize(canvas.stage);
      }
      
      override protected function getAssetMap() : XML
      {
         return §@=§.§="#§(§ 0§);
      }
      
      override protected function getUIData() : XML
      {
         return §@=§.§="#§(§4"-§);
      }
      
      override protected function getItemData() : XML
      {
         return §@=§.§="#§(§2!5§);
      }
      
      override protected function getLoadingScreen() : DisplayObjectContainer
      {
         return new § !L§();
      }
      
      override protected function initialize() : void
      {
         super.initialize();
         §null § = this;
         var _loc1_:SharedObject = SharedObject.getLocal("AB_BS_settings");
         if(_loc1_.data.soundsEnabled)
         {
            setSoundsEnabled(_loc1_.data.soundsEnabled);
         }
         §^k§.§>7§("CHANNEL_THEME",1,1);
      }
      
      override protected function onStageResize(param1:Event) : void
      {
         var _loc2_:int = Math.round(stage.stageWidth);
         var _loc3_:int = Math.round(stage.stageHeight);
         if(_loc2_ < 20 || _loc3_ < 20)
         {
            _loc2_ = §=C§;
            _loc3_ = §&@§;
         }
         if(_loc2_ < 2 || _loc3_ < 2)
         {
            return;
         }
         if(_loc2_ / _loc3_ > 25 / 12)
         {
         }
         §%W§.§18§(0,0,_loc2_,_loc3_);
         setViewSize(_loc2_,_loc3_);
         §0"<§.§<?§.setCanvasSize(_loc2_,_loc3_);
         §6P§.setViewSize(_loc2_,_loc3_);
         §=C§ = _loc2_;
         §&@§ = _loc3_;
      }
      
      override protected function initStates() : void
      {
         §1!@§.init(§,v§.§ T§("callbackObject"));
         §%W§.§=X§.visible = false;
         §3!B§(new StateLevelEditor(false));
         §3!B§(new §@!x§(false));
         §3!B§(new StateLevelEditorTestPlay(false));
         §3!B§(new §]",§(false));
         §3!B§(new StatePlayBS(false));
         §3!B§(new §0>§(false));
         §3!B§(new § !<§(false));
         §3!B§(new §2!_§(false));
         §3!B§(new §#!&§(false));
         §3!B§(new §!F§(false));
         §3!B§(new §]! §(false));
         §3!B§(new StateLevelPreview(false));
         §3!B§(new §5!L§(false));
         §3!B§(new StateMap(false));
         if(stage.loaderInfo.parameters.assetsUrl)
         {
            §[D§.§ "!§.init(stage.loaderInfo.parameters.assetsUrl);
            §<!x§.§ "!§.init(stage.loaderInfo.parameters.assetsUrl);
         }
         else
         {
            §[D§.§ "!§.init("");
            §<!x§.§ "!§.init("");
         }
         if(stage.stageWidth != §<J§ || stage.stageHeight != §%T§)
         {
            this.onStageResize(null);
         }
         §1!@§.registerMethod("onSoundsToggle",this.onSoundsToggled);
      }
      
      private function onSoundsToggled() : void
      {
         var _loc1_:* = !AngryBirdsFP11.getSoundsEnabled();
         AngryBirdsFP11.setSoundsEnabled(_loc1_);
         §1!@§.doJsCall("onSoundsToggled",JSON.stringify(_loc1_));
      }
      
      override public function setFirstGameState() : void
      {
         super.setFirstGameState();
         §0!Q§(§5!L§.§8n§);
         §;U§ = true;
         var _loc1_:int = Math.round(getTimer() / 1000);
         §6k§.§+"=§(§-y§.§""3§,_loc1_.toString(),_loc1_);
      }
      
      override protected function initStateLoad() : §58§
      {
         return new StateLoadBS(true,§58§.§8n§,getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      override protected function initLevelMain() : void
      {
         §%W§.§5"8§ = new §1!z§(stage);
      }
      
      override protected function initUserProgress() : void
      {
         §`!j§ = new §#§(§7!A§);
      }
      
      protected function §2!Y§(param1:Event) : void
      {
      }
      
      protected function §7!N§(param1:Event) : void
      {
      }
      
      protected function §3!0§(param1:Event) : void
      {
      }
      
      protected function §;b§(param1:Event) : void
      {
      }
      
      protected function §#$§(param1:Event) : void
      {
      }
      
      protected function §3T§(param1:Event) : void
      {
      }
      
      protected function §[!J§(param1:Event) : void
      {
      }
      
      protected function §8!N§(param1:Event) : void
      {
      }
      
      protected function §3"!§(param1:Event) : void
      {
      }
      
      protected function §#!"§(param1:Event) : void
      {
      }
      
      override public function getAppWidth() : Number
      {
         return §0<§;
      }
      
      override public function getAppHeight() : Number
      {
         return §-!'§;
      }
   }
}
