package
{
   import §!!r§.§4y§;
   import §!!r§.§6!b§;
   import §!"4§.§4!k§;
   import §!"4§.§;";§;
   import §!"4§.§]<§;
   import §!"4§.§]a§;
   import §'!k§.§"d§;
   import §'!n§.§1!x§;
   import §'!n§.§2!j§;
   import §'!n§.§3"7§;
   import §'!n§.§[!I§;
   import §+"2§.§2!=§;
   import §+"2§.§?d§;
   import §+"C§.§"!k§;
   import §+"C§.§8!;§;
   import §3R§.§1!R§;
   import §3R§.§]!F§;
   import §4!Z§.§%^§;
   import §4",§.§,!j§;
   import §4",§.§`!1§;
   import §5R§.§0!P§;
   import §5R§.§3w§;
   import §6!C§.§7[§;
   import §6!C§.§[n§;
   import §6!M§.§1",§;
   import §6!M§.§3Y§;
   import §6!M§.§8"3§;
   import §6O§.§+V§;
   import §7!C§.§8!w§;
   import §<!<§.§0`§;
   import §<!<§.§?t§;
   import §=!"§.§2"&§;
   import §=" §.§ "G§;
   import §=" §.§%",§;
   import §=" §.§&5§;
   import §=" §.§+!8§;
   import §=" §.§-k§;
   import §=" §.§4@§;
   import §=" §.StateEpisodeSelection;
   import §=" §.§["8§;
   import §=" §.§[N§;
   import §>!X§.§ !a§;
   import §>!X§.§+"9§;
   import §>"!§.§@!9§;
   import com.rovio.assets.LoadingScreenBlack;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.geom.Rectangle;
   import flash.ui.ContextMenu;
   import flash.ui.ContextMenuItem;
   import flash.utils.getTimer;
   
   public class §["!§ extends §&"<§
   {
      
      protected static var §&!b§:Class = §<""§;
      
      protected static var §2N§:Class = §[E§;
      
      protected static var §,"C§:Class = §8!F§;
      
      private static var §+"-§:Class = §7!y§;
      
      public static const §8Q§:String = "(r105266)";
      
      public static const §35§:int = 760;
      
      public static const §&f§:int = 220;
      
      public static const §9"-§:int = 570;
      
      public static const §6!=§:String = "ABSpaceTazos";
      
      public static var §>Q§:String = "http://head.angrybirds-spacetazos.appspot.com/";
      
      public static var §7!h§:String = "../";
      
      public static const §+!"§:Boolean = true;
       
      
      private var §?e§:§4y§;
      
      protected var §=>§:§8!;§;
      
      private var §>y§:§?t§;
      
      private var §^§:§]<§;
      
      private var §<P§:§6!b§;
      
      public function §["!§(param1:§"d§, param2:String, param3:String)
      {
         if(param2 == null)
         {
            §7!h§ = §>Q§;
         }
         this.§<P§ = new §6!b§();
         this.§?e§ = new §4y§(param1.loaderInfo.uncaughtErrorEvents,§8Q§);
         §3"7§.enabled = true;
         §1!x§.§6"6§(§3"7§.§0" §);
         if(param2 == null)
         {
            param2 = "(Head)";
         }
         if(param2.indexOf(".") >= 0)
         {
            param2 = param2.substring(0,param2.indexOf("."));
         }
         super(param1,param2,param3);
         this.resizeViews(§35§,§9"-§);
         this.§?e§.§@!-§(§]m§);
      }
      
      public static function §>X§() : void
      {
         if(§@!9§.§!y§("Channel_Theme") == null || !§@!9§.§!y§("Channel_Theme").§]X§())
         {
            §@!9§.playSound("title_theme","Channel_Theme",100,0.65);
         }
      }
      
      override protected function initialize() : void
      {
         super.initialize();
         this.§+!t§();
      }
      
      private function §+!t§() : void
      {
         var _loc1_:ContextMenu = new ContextMenu();
         _loc1_.hideBuiltInItems();
         _loc1_.customItems.push(new ContextMenuItem("Client version: " + §8Q§.replace("{svn_version}","local dev build"),false,false));
         _loc1_.customItems.push(new ContextMenuItem("Server version: " + §9!Z§,false,false));
         canvas.contextMenu = _loc1_;
      }
      
      override protected function initializeManagers() : void
      {
         super.initializeManagers();
         this.§<"§();
      }
      
      override protected function initStateLoad() : §+V§
      {
         return new §["8§(§2]§,true,§+V§.STATE_NAME,1000,stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      override protected function initializeStates() : void
      {
         §[!I§.§%!w§ = false;
         §[!I§.§8!J§.§!!V§(§7[§.§[!n§(§+"-§));
         §[!I§.§8!J§.setLanguage("es");
         this.§@&§();
         §,!B§(new §-k§(§]m§,§2]§,§3Y§(§2!?§),false));
         §,!B§(new §%",§(§]m§,§2]§,§3Y§(§2!?§),false));
         §,!B§(new §4@§(§]m§,§2]§,this.§^§,false));
         §,!B§(new § "G§(§]m§,§2]§,false,§3Y§(§2!?§)));
         §,!B§(new §[N§(§]m§,false,§[N§.STATE_NAME,§2]§,§3Y§(§2!?§)));
         §,!B§(new §&5§(§]m§,false,§&5§.STATE_NAME,§2]§));
         §,!B§(new §+!8§(§]m§,§2]§,false));
         if(stage.stageWidth != screenWidth || stage.stageHeight != screenHeight)
         {
            §]!T§(null);
         }
      }
      
      private function §@&§() : void
      {
         var _loc1_:String = §%^§.§]"3§("readCookie","c_language") as String;
         if(_loc1_ == "en")
         {
            §[!I§.§8!J§.setLanguage("en");
         }
         else
         {
            §[!I§.§8!J§.setLanguage("es");
         }
      }
      
      override protected function setupPopupManager() : void
      {
         §<!Q§ = new MovieClip();
         §"%§.stage.addChild(§<!Q§);
         §;R§ = new §"!k§(§<!Q§,§2]§,this);
         §;R§.addEventListener(§2"&§.OPEN,§8![§);
         §;R§.addEventListener(§2"&§.CLOSE,§>"'§);
         §,!P§.userProgress = new §4!k§("",§]m§);
         §;8§ = new § !a§(§;R§,§,!P§,§2!=§.§^l§,new §+"9§());
         §;R§.addLayer(§2!=§.§-;§,true,new Rectangle(0,0,-180,0));
         §;R§.addLayer(§2!=§.§^l§,true,new Rectangle(0,0,0,0));
      }
      
      override protected function initializeUserProgress() : void
      {
         this.§>!J§();
      }
      
      private function §<"§() : void
      {
         this.§^§ = new §]<§();
      }
      
      public function §>!J§() : void
      {
         §;";§.§3U§ = new §]a§();
      }
      
      override protected function initializeLevelItemManager() : §8"3§
      {
         return new §1",§();
      }
      
      override protected function initializeLevelThemeManager() : §0`§
      {
         if(!this.§>y§)
         {
            this.§>y§ = new §?t§();
         }
         return this.§>y§;
      }
      
      override protected function initializeLevelMain() : §1!R§
      {
         return new §]!F§(stage,§2!?§,§4!+§,§]m§);
      }
      
      override protected function initializePackageManager() : §0!P§
      {
         return new §3w§(§]m§,this.§]E§);
      }
      
      protected function get §7";§() : §3w§
      {
         return §4J§ as §3w§;
      }
      
      override protected function loadItems() : void
      {
         var _loc2_:String = null;
         this.§]E§.§@h§(this.§7";§.§-!i§());
         this.§]E§.§=!m§(this.§7";§.§="8§(),this.§7";§.§?!w§());
         this.§]E§.§+y§(this.§7";§.§0!h§());
         this.§]E§.§2<§(this.§7";§.§`!Z§());
         this.§]E§.§[!@§(this.§7";§.§,"G§());
         var _loc1_:int = this.§7";§.§[@§ - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§7";§.§2!g§(_loc1_);
            this.§]E§.§%!K§(_loc2_);
            _loc1_--;
         }
         (§]m§ as §`!1§).§1!A§(this.§7";§.§+!A§(),this.§]E§);
      }
      
      override protected function resizeViews(param1:int, param2:int) : void
      {
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc3_:Number = stage.stageWidth / §35§;
         var _loc4_:Number = stage.stageHeight / §9"-§;
         if(_loc3_ < _loc4_)
         {
            §"%§.scaleX = §"%§.scaleY = _loc3_;
            §8!w§.§7"0§(§"%§.x,§"%§.y,stage.stageWidth,stage.stageWidth * (§9"-§ / §35§));
         }
         else
         {
            §"%§.scaleX = §"%§.scaleY = _loc4_;
            _loc5_ = stage.stageHeight * (§35§ / §9"-§);
            _loc6_ = stage.stageHeight;
            §8!w§.§7"0§(§"%§.x,§"%§.y,_loc5_,_loc6_);
         }
         §;R§.setViewSize(_loc5_,_loc6_);
      }
      
      override protected function initializeGame() : void
      {
         super.initializeGame();
         this.§=>§ = new §8!;§(this.§^§);
         §1"0§.openPopup(this.§=>§);
         §1"0§.setPersistentLayer(§?d§.§+!o§,true);
         this.§=>§.§>"0§.§3A§();
         var _loc1_:int = Math.round(getTimer() / 1000);
         §1!x§.§6"6§(§3"7§.§2"6§,_loc1_.toString(),_loc1_);
      }
      
      override protected function loadBackgrounds() : void
      {
         this.§>y§.§?"!§(this.§"!f§());
      }
      
      override public function setFirstGameState() : void
      {
         super.setFirstGameState();
         §'Q§(StateEpisodeSelection.STATE_NAME);
      }
      
      protected function §"!f§() : String
      {
         return §[n§.§[!n§(§,"C§);
      }
      
      public function get §^"<§() : §8!;§
      {
         return this.§=>§;
      }
      
      override protected function getAssetMap() : XML
      {
         return §7[§.§[!n§(§&!b§);
      }
      
      override protected function getUIData() : XML
      {
         var _loc1_:XML = super.getUIData();
         var _loc2_:XML = §7[§.§[!n§(§2N§);
         §2!j§.§?"A§(_loc2_,_loc1_,["Views","Components"],true);
         return _loc1_;
      }
      
      protected function get §]E§() : §1",§
      {
         return §2!?§ as §1",§;
      }
      
      override protected function getLoadingScreen() : DisplayObjectContainer
      {
         return new LoadingScreenBlack();
      }
      
      override public function getVersionInfo() : String
      {
         return "Client: " + §8Q§.replace("{svn_version}","local dev build") + ", " + "Server: " + §9!Z§;
      }
      
      public function get §;!u§() : §,!j§
      {
         return §]m§;
      }
      
      override protected function initializeLevelManager() : §,!j§
      {
         return new §`!1§();
      }
      
      public function get §<!%§() : §4!k§
      {
         return §,!P§.userProgress as §4!k§;
      }
      
      public function set §<!%§(param1:§4!k§) : void
      {
         §,!P§.userProgress = param1;
      }
      
      public function get §&!I§() : §]<§
      {
         return this.§^§;
      }
      
      public function get §-!8§() : §6!b§
      {
         return this.§<P§;
      }
   }
}
