package
{
   import §!!+§.§"Z§;
   import §!!+§.§&3§;
   import §!!+§.§+c§;
   import §!!+§.§4!l§;
   import §!!+§.§7m§;
   import §!!+§.§?! §;
   import §!!+§.StateLevelEditor;
   import §!!+§.StateLevelEditorTestPlay;
   import §!!+§.StateLevelPreview;
   import §&!&§.§2!w§;
   import §&!&§.§8F§;
   import §+!v§.§01§;
   import §,i§.§#!5§;
   import §,i§.§&"9§;
   import §,i§.§4!q§;
   import §,i§.§8!0§;
   import §,i§.StateLoadBS;
   import §,i§.StatePlayBS;
   import §1!p§.§`!#§;
   import §1U§.§"!V§;
   import §3[§.§0!K§;
   import §3[§.§6S§;
   import §4!s§.§#!,§;
   import §5!5§.§^e§;
   import §5^§.§ !x§;
   import §8"!§.§'e§;
   import §8"'§.§?!`§;
   import §9!G§.§<$§;
   import §="$§.§?3§;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.net.SharedObject;
   import flash.utils.getTimer;
   
   public class §7"$§ extends AngryBirdsFP11
   {
      
      public static var §'d§:String;
      
      protected static var §8V§:String;
      
      private static const §83§:String = "AngryBirdsBuildAndShareSettings";
      
      public static const §3"2§:String = "/";
      
      public static const §<!8§:int = 800;
      
      public static const §[V§:int = 600;
      
      public static const §2!_§:Boolean = false;
      
      protected static var §`g§:Class = §?O§;
      
      protected static var §7!,§:Class = §!!C§;
      
      protected static var §6"-§:Class = §]"4§;
      
      protected static var §#s§:Class = §<!?§;
      
      public static var §!!N§:Boolean = true;
      
      private static var §&!W§:§7"$§ = null;
      
      public static var §3!O§:Boolean = false;
       
      
      public function §7"$§(param1:§'e§)
      {
         §'d§ = param1.stage.loaderInfo.parameters.serverVersion || "[No version from server]";
         §8V§ = param1.stage.loaderInfo.parameters.serverRoot || (!!§2!_§ ? "" : "");
         super(param1);
         §2!w§.enabled = true;
         §8F§.§1p§(§2!w§.§-W§);
         this.§='§();
      }
      
      public static function §1f§() : String
      {
         return "AngryBirdsBuildSharedMemory";
      }
      
      public static function get §'"0§() : §7"$§
      {
         return §&!W§;
      }
      
      override protected function getLevelBackgrounds() : XML
      {
         return §<$§.§ "7§(§6"-§);
      }
      
      private function §9!'§() : void
      {
         §01§.load(stage.loaderInfo.parameters.userId,stage.loaderInfo.parameters.accessToken,stage.loaderInfo.parameters.tokenExpiresIn);
      }
      
      protected function §='§() : void
      {
      }
      
      override protected function getAssetMap() : XML
      {
         return §<$§.§ "7§(§7!,§);
      }
      
      override protected function getUIData() : XML
      {
         return §<$§.§ "7§(§`g§);
      }
      
      override protected function getItemData() : XML
      {
         return §<$§.§ "7§(§#s§);
      }
      
      override protected function getLoadingScreen() : DisplayObjectContainer
      {
         return new §!l§();
      }
      
      override protected function initialize() : void
      {
         super.initialize();
         §&!W§ = this;
         var _loc1_:SharedObject = SharedObject.getLocal("AB_BS_settings");
         if(_loc1_.data.soundsEnabled)
         {
            setSoundsEnabled(_loc1_.data.soundsEnabled);
         }
         § !x§.§'^§("CHANNEL_THEME",1,1);
      }
      
      override protected function onStageResize(param1:Event) : void
      {
         var _loc2_:int = Math.round(stage.stageWidth);
         var _loc3_:int = Math.round(stage.stageHeight);
         if(_loc2_ < 20 || _loc3_ < 20)
         {
            _loc2_ = §"!r§;
            _loc3_ = §#!A§;
         }
         if(_loc2_ < 2 || _loc3_ < 2)
         {
            return;
         }
         if(_loc2_ / _loc3_ > 25 / 12)
         {
         }
         §"!V§.§7!K§(0,0,_loc2_,_loc3_);
         setViewSize(_loc2_,_loc3_);
         §^e§.§-_§.setCanvasSize(_loc2_,_loc3_);
         §"!r§ = _loc2_;
         §#!A§ = _loc3_;
      }
      
      override protected function initStates() : void
      {
         §?!`§.init(§0!K§.§ !U§("callbackObject"));
         §"!V§.§8!§.visible = false;
         §@!c§(new StateLevelEditor(false));
         §@!c§(new §4!l§(false));
         §@!c§(new StateLevelEditorTestPlay(false));
         §@!c§(new §"Z§(false));
         §@!c§(new §?! §(false));
         §@!c§(new StatePlayBS(false));
         §@!c§(new §#!5§(false));
         §@!c§(new §4!q§(false));
         §@!c§(new §&"9§(false));
         §@!c§(new §&3§(false));
         §@!c§(new §+c§(false));
         §@!c§(new §7m§(false));
         §@!c§(new StateLevelPreview(false));
         §@!c§(new §8!0§(false));
         if(stage.loaderInfo.parameters.assetsUrl)
         {
            §?3§.§,l§.init(stage.loaderInfo.parameters.assetsUrl);
         }
         else
         {
            §?3§.§,l§.init("");
         }
         if(stage.stageWidth != §#"8§ || stage.stageHeight != §2!e§)
         {
            this.onStageResize(null);
         }
         §?!`§.registerMethod("onSoundsToggle",this.onSoundsToggled);
      }
      
      private function onSoundsToggled() : void
      {
         var _loc1_:* = !AngryBirdsFP11.getSoundsEnabled();
         AngryBirdsFP11.setSoundsEnabled(_loc1_);
         §?!`§.doJsCall("onSoundsToggled",JSON.stringify(_loc1_));
      }
      
      override public function setFirstGameState() : void
      {
         super.setFirstGameState();
         §%-§(§8!0§.§]"2§);
         §3!O§ = true;
         var _loc1_:int = Math.round(getTimer() / 1000);
         §8F§.§1p§(§2!w§.§[""§,_loc1_.toString(),_loc1_);
      }
      
      override protected function initStateLoad() : §6S§
      {
         return new StateLoadBS(true,§6S§.§]"2§,getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      override protected function initLevelMain() : void
      {
         §"!V§.§!j§ = new §#!,§(stage);
      }
      
      override protected function initUserProgress() : void
      {
         §<U§ = new §`!#§(§8V§);
      }
      
      protected function §;!7§(param1:Event) : void
      {
      }
      
      protected function §#p§(param1:Event) : void
      {
      }
      
      protected function §6!o§(param1:Event) : void
      {
      }
      
      protected function §0!z§(param1:Event) : void
      {
      }
      
      protected function §^",§(param1:Event) : void
      {
      }
      
      protected function §7;§(param1:Event) : void
      {
      }
      
      protected function §]K§(param1:Event) : void
      {
      }
      
      protected function §%"8§(param1:Event) : void
      {
      }
      
      protected function §9$§(param1:Event) : void
      {
      }
      
      protected function §5;§(param1:Event) : void
      {
      }
      
      override public function getAppWidth() : Number
      {
         return §<!8§;
      }
      
      override public function getAppHeight() : Number
      {
         return §[V§;
      }
   }
}
