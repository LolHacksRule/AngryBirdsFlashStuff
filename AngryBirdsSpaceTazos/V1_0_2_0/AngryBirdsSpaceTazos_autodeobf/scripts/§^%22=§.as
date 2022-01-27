package
{
   import § X§.§!h§;
   import § X§.§^"+§;
   import §""%§.§"!@§;
   import §""%§.§7"§;
   import §""<§.§!!?§;
   import §""<§.§=Q§;
   import §"_§.§&r§;
   import §"_§.§=X§;
   import §%"7§.§+"C§;
   import §'#§.§9Y§;
   import §'#§.§9m§;
   import §'#§.§=`§;
   import §'#§.§^4§;
   import §+!9§.§;0§;
   import §,§.;
   import §,§.§%!y§;
   import §1!]§.§+U§;
   import §1!]§.§8'§;
   import §4!x§.§0!?§;
   import §4!x§.§6!7§;
   import §6"6§.§1";§;
   import §6"6§.§40§;
   import §6"6§.§>o§;
   import §6"6§.§^!E§;
   import §7!c§.§,!9§;
   import §7!c§.§,l§;
   import §7!c§.§2m§;
   import §7!c§.§8",§;
   import §7!c§.StateEpisodeSelection;
   import §7!c§.§[!>§;
   import §7!c§.§]!^§;
   import §7!c§.§^!9§;
   import §7!c§.static;
   import §9!G§.§"!S§;
   import §;!,§.§6!`§;
   import §;!0§.;
   import §;!0§.§;"<§;
   import §;"=§.§3"=§;
   import §;"=§.§6!<§;
   import §;"=§.§<!8§;
   import §<l§.§#r§;
   import §?!<§.§'!1§;
   import §?!<§.§5L§;
   import §]n§.§5M§;
   import com.rovio.assets.LoadingScreenBlack;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.geom.Rectangle;
   import flash.ui.ContextMenu;
   import flash.ui.ContextMenuItem;
   import flash.utils.getTimer;
   
   public class §^"=§ extends §&!h§
   {
      
      protected static var §>!z§:Class = §9!0§;
      
      protected static var §"b§:Class = §!!=§;
      
      protected static var §!D§:Class = §1@§;
      
      private static var §%"#§:Class = §@!C§;
      
      public static const §,!o§:String = "(r103977)";
      
      public static const §%!f§:int = 760;
      
      public static const §#=§:int = 220;
      
      public static const §5+§:int = 570;
      
      public static const §1!h§:String = "ABSpaceTazos";
      
      public static var §5Q§:String = "http://head.angrybirds-spacetazos.appspot.com/";
      
      public static var §^"3§:String = "../";
      
      public static const §?A§:Boolean = true;
       
      
      private var §+!1§:§6!7§;
      
      protected var §`!]§:§+U§;
      
      private var §@2§:§%!y§;
      
      private var §1!^§:§>o§;
      
      private var §;%§:§0!?§;
      
      public function §^"=§(param1:§6!`§, param2:String, param3:String)
      {
         if(param2 == null)
         {
            §^"3§ = §5Q§;
         }
         this.§;%§ = new §0!?§();
         this.§+!1§ = new §6!7§(param1.loaderInfo.uncaughtErrorEvents,§,!o§);
         §9m§.enabled = true;
         §9Y§.§6x§(§9m§.§5",§);
         if(param2 == null)
         {
            param2 = "(Head)";
         }
         if(param2.indexOf(".") >= 0)
         {
            param2 = param2.substring(0,param2.indexOf("."));
         }
         super(param1,param2,param3);
         this.resizeViews(§%!f§,§5+§);
         this.§+!1§.§0!G§(§,W§);
      }
      
      public static function §`=§() : void
      {
         if(§"!S§.§2"6§("Channel_Theme") == null || !§"!S§.§2"6§("Channel_Theme").§`]§())
         {
            §"!S§.playSound("title_theme","Channel_Theme",100,0.65);
         }
      }
      
      override protected function initialize() : void
      {
         super.initialize();
         this.§'$§();
      }
      
      private function §'$§() : void
      {
         var _loc1_:ContextMenu = new ContextMenu();
         _loc1_.hideBuiltInItems();
         _loc1_.customItems.push(new ContextMenuItem("Client version: " + §,!o§.replace("{svn_version}","local dev build"),false,false));
         _loc1_.customItems.push(new ContextMenuItem("Server version: " + §^!0§,false,false));
         canvas.contextMenu = _loc1_;
      }
      
      override protected function initializeManagers() : void
      {
         super.initializeManagers();
         this.§4!u§();
      }
      
      override protected function initStateLoad() : §5M§
      {
         return new §8",§(§^"5§,true,§5M§.STATE_NAME,1000,stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      override protected function initializeStates() : void
      {
         §^4§.§]!k§ = false;
         §^4§.§<"B§.§]1§(§=Q§.§%!g§(§%"#§));
         §^4§.§<"B§.setLanguage("es");
         this.§2J§();
         §-"%§(new §,!9§(§,W§,§^"5§,§6!<§(§@1§),false));
         §-"%§(new §]!^§(§,W§,§^"5§,§6!<§(§@1§),false));
         §-"%§(new §^!9§(§,W§,§^"5§,this.§1!^§,false));
         §-"%§(new static(§,W§,§^"5§,false,§6!<§(§@1§)));
         §-"%§(new §[!>§(§,W§,false,§[!>§.STATE_NAME,§^"5§,§6!<§(§@1§)));
         §-"%§(new §,l§(§,W§,false,§,l§.STATE_NAME,§^"5§));
         §-"%§(new §2m§(§,W§,§^"5§,false));
         if(stage.stageWidth != screenWidth || stage.stageHeight != screenHeight)
         {
            §[X§(null);
         }
      }
      
      private function §2J§() : void
      {
         var _loc1_:String = §#r§.§#!2§("readCookie","c_language") as String;
         if(_loc1_ == "en")
         {
            §^4§.§<"B§.setLanguage("en");
         }
         else
         {
            §^4§.§<"B§.setLanguage("es");
         }
      }
      
      override protected function setupPopupManager() : void
      {
         §9"'§ = new MovieClip();
         §`"D§.stage.addChild(§9"'§);
         §+k§ = new §8'§(§9"'§,§^"5§,this);
         §+k§.addEventListener(§+"C§.OPEN,§2Y§);
         §+k§.addEventListener(§+"C§.CLOSE,§?!1§);
         § #§.userProgress = new §^!E§("",§,W§);
         §&O§ = new §!h§(§+k§,§ #§,§=X§.§-r§,new §^"+§());
         §+k§.addLayer(§=X§.§89§,true,new Rectangle(0,0,-180,0));
         §+k§.addLayer(§=X§.§-r§,true,new Rectangle(0,0,0,0));
      }
      
      override protected function initializeUserProgress() : void
      {
         this.§&l§();
      }
      
      private function §4!u§() : void
      {
         this.§1!^§ = new §>o§();
      }
      
      public function §&l§() : void
      {
         §40§.§1"$§ = new §1";§();
      }
      
      override protected function initializeLevelItemManager() : §3"=§
      {
         return new §<!8§();
      }
      
      override protected function initializeLevelThemeManager() : §,§.§#0§
      {
         if(!this.§@2§)
         {
            this.§@2§ = new §%!y§();
         }
         return this.§@2§;
      }
      
      override protected function initializeLevelMain() : §'!1§
      {
         return new §5L§(stage,§@1§,§,!r§,§,W§);
      }
      
      override protected function initializePackageManager() : §"!@§
      {
         return new §7"§(§,W§,this.§#!T§);
      }
      
      protected function get §9h§() : §7"§
      {
         return §!!$§ as §7"§;
      }
      
      override protected function loadItems() : void
      {
         var _loc2_:String = null;
         this.§#!T§.§-!!§(this.§9h§.§;D§());
         this.§#!T§.§1"F§(this.§9h§.§0"2§(),this.§9h§.§1!S§());
         this.§#!T§.§^!v§(this.§9h§.§7"<§());
         this.§#!T§.§0#§(this.§9h§.§#"6§());
         this.§#!T§.§#!=§(this.§9h§.§8"#§());
         var _loc1_:int = this.§9h§.§0!v§ - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§9h§.§#!k§(_loc1_);
            this.§#!T§.§@Z§(_loc2_);
            _loc1_--;
         }
         (§,W§ as §;"<§).§5Y§(this.§9h§.§8" §(),this.§#!T§);
      }
      
      override protected function resizeViews(param1:int, param2:int) : void
      {
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc3_:Number = stage.stageWidth / §%!f§;
         var _loc4_:Number = stage.stageHeight / §5+§;
         if(_loc3_ < _loc4_)
         {
            §`"D§.scaleX = §`"D§.scaleY = _loc3_;
            §;0§.§'0§(§`"D§.x,§`"D§.y,stage.stageWidth,stage.stageWidth * (§5+§ / §%!f§));
         }
         else
         {
            §`"D§.scaleX = §`"D§.scaleY = _loc4_;
            _loc5_ = stage.stageHeight * (§%!f§ / §5+§);
            _loc6_ = stage.stageHeight;
            §;0§.§'0§(§`"D§.x,§`"D§.y,_loc5_,_loc6_);
         }
         §+k§.setViewSize(_loc5_,_loc6_);
      }
      
      override protected function initializeGame() : void
      {
         super.initializeGame();
         this.§`!]§ = new §+U§(this.§1!^§);
         §-"F§.openPopup(this.§`!]§);
         §-"F§.setPersistentLayer(§&r§.§>I§,true);
         this.§`!]§.§?!,§.§2!x§();
         var _loc1_:int = Math.round(getTimer() / 1000);
         §9Y§.§6x§(§9m§.§-!D§,_loc1_.toString(),_loc1_);
      }
      
      override protected function loadBackgrounds() : void
      {
         this.§@2§.§^!X§(this.§@""§());
      }
      
      override public function setFirstGameState() : void
      {
         super.setFirstGameState();
         §2g§(StateEpisodeSelection.STATE_NAME);
      }
      
      protected function §@""§() : String
      {
         return §!!?§.§%!g§(§!D§);
      }
      
      public function get §?P§() : §+U§
      {
         return this.§`!]§;
      }
      
      override protected function getAssetMap() : XML
      {
         return §=Q§.§%!g§(§>!z§);
      }
      
      override protected function getUIData() : XML
      {
         var _loc1_:XML = super.getUIData();
         var _loc2_:XML = §=Q§.§%!g§(§"b§);
         §=`§.§2x§(_loc2_,_loc1_,["Views","Components"],true);
         return _loc1_;
      }
      
      protected function get §#!T§() : §<!8§
      {
         return §@1§ as §<!8§;
      }
      
      override protected function getLoadingScreen() : DisplayObjectContainer
      {
         return new LoadingScreenBlack();
      }
      
      override public function getVersionInfo() : String
      {
         return "Client: " + §,!o§.replace("{svn_version}","local dev build") + ", " + "Server: " + §^!0§;
      }
      
      public function get §>F§() : §;!0§.§#2§
      {
         return §,W§;
      }
      
      override protected function initializeLevelManager() : §;!0§.§#2§
      {
         return new §;"<§();
      }
      
      public function get §^!7§() : §^!E§
      {
         return § #§.userProgress as §^!E§;
      }
      
      public function set §^!7§(param1:§^!E§) : void
      {
         § #§.userProgress = param1;
      }
      
      public function get §5!d§() : §>o§
      {
         return this.§1!^§;
      }
      
      public function get §`!=§() : §0!?§
      {
         return this.§;%§;
      }
   }
}
