package
{
   import § !Y§.§%Y§;
   import § !Y§.§&$§;
   import § !Y§.§1!j§;
   import § !Y§.§="6§;
   import §!?§.§,!8§;
   import §!?§.§@"C§;
   import §!X§.§8_§;
   import §!X§.§?1§;
   import §"!&§.§!"7§;
   import §"!&§.§-!M§;
   import §"!&§.§8"F§;
   import §#!b§.§"!"§;
   import §'4§.§=!R§;
   import §'4§.§^g§;
   import §+!a§.§<-§;
   import §+!a§.§`b§;
   import §,"&§.§9q§;
   import §0N§.§0!g§;
   import §0N§.§3x§;
   import §1%§.§@!t§;
   import §3"#§.§<!O§;
   import §3C§.§4!!§;
   import §3C§.§`!A§;
   import §7!0§.§%!P§;
   import §7!0§.§1H§;
   import §7!B§.§?A§;
   import §7!B§.§@!^§;
   import §7!B§.§@!w§;
   import §7!B§.§@"@§;
   import §7!H§.§!!4§;
   import §7!H§.§1#§;
   import §8!_§.§ ! §;
   import §8!_§.§"p§;
   import §8!_§.§'u§;
   import §8!_§.§1!i§;
   import §8!_§.§6Q§;
   import §8!_§.§<"#§;
   import §8!_§.§>!N§;
   import §8!_§.StateEpisodeSelection;
   import §8!_§.§`!4§;
   import §^r§.§@!T§;
   import §`!j§.§&",§;
   import §`!j§.§9"!§;
   import com.rovio.assets.LoadingScreenBlack;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.geom.Rectangle;
   import flash.ui.ContextMenu;
   import flash.ui.ContextMenuItem;
   import flash.utils.getTimer;
   
   public class §`Y§ extends § !g§
   {
      
      protected static var §[+§:Class = §3-§;
      
      protected static var §7u§:Class = §'"7§;
      
      protected static var §1!g§:Class = §0"'§;
      
      private static var §!6§:Class = § !4§;
      
      public static const §2"A§:String = "(r103921)";
      
      public static const §7O§:int = 760;
      
      public static const §]!`§:int = 220;
      
      public static const §3!h§:int = 570;
      
      public static const §^"'§:String = "ABSpaceTazos";
      
      public static var §4!2§:String = "http://head.angrybirds-spacetazos.appspot.com/";
      
      public static var §6T§:String = "../";
      
      public static const §1!]§:Boolean = true;
       
      
      private var §%!V§:§1H§;
      
      protected var §4!k§:§`!A§;
      
      private var §3"3§:§<-§;
      
      private var §6">§:§@"@§;
      
      private var §#w§:§%!P§;
      
      public function §`Y§(param1:§"!"§, param2:String, param3:String)
      {
         if(param2 == null)
         {
            §6T§ = §4!2§;
         }
         this.§#w§ = new §%!P§();
         this.§%!V§ = new §1H§(param1.loaderInfo.uncaughtErrorEvents,§2"A§);
         §%Y§.enabled = true;
         §="6§.§^!U§(§%Y§.§`!;§);
         if(param2 == null)
         {
            param2 = "(Head)";
         }
         if(param2.indexOf(".") >= 0)
         {
            param2 = param2.substring(0,param2.indexOf("."));
         }
         super(param1,param2,param3);
         this.resizeViews(§7O§,§3!h§);
         this.§%!V§.§8"<§(§6u§);
      }
      
      public static function §2!M§() : void
      {
         if(§<!O§.§4d§("Channel_Theme") == null || !§<!O§.§4d§("Channel_Theme").§9"%§())
         {
            §<!O§.playSound("title_theme","Channel_Theme",100,0.65);
         }
      }
      
      override protected function initialize() : void
      {
         super.initialize();
         this.§8!u§();
      }
      
      private function §8!u§() : void
      {
         var _loc1_:ContextMenu = new ContextMenu();
         _loc1_.hideBuiltInItems();
         _loc1_.customItems.push(new ContextMenuItem("Client version: " + §2"A§.replace("{svn_version}","local dev build"),false,false));
         _loc1_.customItems.push(new ContextMenuItem("Server version: " + §&!t§,false,false));
         canvas.contextMenu = _loc1_;
      }
      
      override protected function initializeManagers() : void
      {
         super.initializeManagers();
         this.§7!M§();
      }
      
      override protected function initStateLoad() : §@!t§
      {
         return new §"p§(§super§,true,§@!t§.STATE_NAME,1000,stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      override protected function initializeStates() : void
      {
         §&$§.§8A§ = false;
         §&$§.§[!1§.§>!t§(§0!g§.§[!y§(§!6§));
         §&$§.§[!1§.setLanguage("es");
         §0j§(new §6Q§(§6u§,§super§,§8"F§(§3"4§),false));
         §0j§(new §>!N§(§6u§,§super§,§8"F§(§3"4§),false));
         §0j§(new §<"#§(§6u§,§super§,this.§6">§,false));
         §0j§(new § ! §(§6u§,§super§,false,§8"F§(§3"4§)));
         §0j§(new §1!i§(§6u§,false,§1!i§.STATE_NAME,§super§,§8"F§(§3"4§)));
         §0j§(new §'u§(§6u§,false,§'u§.STATE_NAME,§super§));
         §0j§(new §`!4§(§6u§,§super§,false));
         if(stage.stageWidth != screenWidth || stage.stageHeight != screenHeight)
         {
            §1"?§(null);
         }
      }
      
      override protected function setupPopupManager() : void
      {
         §'+§ = new MovieClip();
         §2! §.stage.addChild(§'+§);
         §'d§ = new §4!!§(§'+§,§super§,this);
         §'d§.addEventListener(§@!T§.OPEN,§5!$§);
         §'d§.addEventListener(§@!T§.CLOSE,§9O§);
         §3u§.userProgress = new §@!w§("",§6u§);
         §="<§ = new §?1§(§'d§,§3u§,§!!4§.§#!e§,new §8_§());
         §'d§.addLayer(§!!4§.§?!F§,true,new Rectangle(0,0,-180,0));
         §'d§.addLayer(§!!4§.§#!e§,true,new Rectangle(0,0,0,0));
      }
      
      override protected function initializeUserProgress() : void
      {
         this.§?"3§();
      }
      
      private function §7!M§() : void
      {
         this.§6">§ = new §@"@§();
      }
      
      public function §?"3§() : void
      {
         §@!^§.§2j§ = new §?A§();
      }
      
      override protected function initializeLevelItemManager() : §-!M§
      {
         return new §!"7§();
      }
      
      override protected function initializeLevelThemeManager() : §`b§
      {
         if(!this.§3"3§)
         {
            this.§3"3§ = new §<-§();
         }
         return this.§3"3§;
      }
      
      override protected function initializeLevelMain() : §^g§
      {
         return new §=!R§(stage,§3"4§,§+Q§,§6u§);
      }
      
      override protected function initializePackageManager() : §@"C§
      {
         return new §,!8§(§6u§,this.§61§);
      }
      
      protected function get §,!k§() : §,!8§
      {
         return §^?§ as §,!8§;
      }
      
      override protected function loadItems() : void
      {
         var _loc2_:String = null;
         this.§61§.§[!v§(this.§,!k§.§"!-§());
         this.§61§.§[J§(this.§,!k§.§7",§(),this.§,!k§.§%3§());
         this.§61§.§,! §(this.§,!k§.§0=§());
         this.§61§.§&!j§(this.§,!k§.§![§());
         this.§61§.§-y§(this.§,!k§.§38§());
         var _loc1_:int = this.§,!k§.§=!d§ - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§,!k§.§,!x§(_loc1_);
            this.§61§.§]!J§(_loc2_);
            _loc1_--;
         }
         (§6u§ as §&",§).§+!V§(this.§,!k§.§',§(),this.§61§);
      }
      
      override protected function resizeViews(param1:int, param2:int) : void
      {
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc3_:Number = stage.stageWidth / §7O§;
         var _loc4_:Number = stage.stageHeight / §3!h§;
         if(_loc3_ < _loc4_)
         {
            §2! §.scaleX = §2! §.scaleY = _loc3_;
            §9q§.§<_§(§2! §.x,§2! §.y,stage.stageWidth,stage.stageWidth * (§3!h§ / §7O§));
         }
         else
         {
            §2! §.scaleX = §2! §.scaleY = _loc4_;
            _loc5_ = stage.stageHeight * (§7O§ / §3!h§);
            _loc6_ = stage.stageHeight;
            §9q§.§<_§(§2! §.x,§2! §.y,_loc5_,_loc6_);
         }
         §'d§.setViewSize(_loc5_,_loc6_);
      }
      
      override protected function initializeGame() : void
      {
         super.initializeGame();
         this.§4!k§ = new §`!A§(this.§6">§);
         §>";§.openPopup(this.§4!k§);
         §>";§.setPersistentLayer(§1#§.§'w§,true);
         var _loc1_:int = Math.round(getTimer() / 1000);
         §="6§.§^!U§(§%Y§.§%!%§,_loc1_.toString(),_loc1_);
      }
      
      override protected function loadBackgrounds() : void
      {
         this.§3"3§.§1N§(this.§'p§());
      }
      
      override public function setFirstGameState() : void
      {
         super.setFirstGameState();
         §8!^§(StateEpisodeSelection.STATE_NAME);
      }
      
      protected function §'p§() : String
      {
         return §3x§.§[!y§(§1!g§);
      }
      
      public function get §&,§() : §`!A§
      {
         return this.§4!k§;
      }
      
      override protected function getAssetMap() : XML
      {
         return §0!g§.§[!y§(§[+§);
      }
      
      override protected function getUIData() : XML
      {
         var _loc1_:XML = super.getUIData();
         var _loc2_:XML = §0!g§.§[!y§(§7u§);
         §1!j§.§8"+§(_loc2_,_loc1_,["Views","Components"],true);
         return _loc1_;
      }
      
      protected function get §61§() : §!"7§
      {
         return §3"4§ as §!"7§;
      }
      
      override protected function getLoadingScreen() : DisplayObjectContainer
      {
         return new LoadingScreenBlack();
      }
      
      override public function getVersionInfo() : String
      {
         return "Client: " + §2"A§.replace("{svn_version}","local dev build") + ", " + "Server: " + §&!t§;
      }
      
      public function get §=!+§() : §9"!§
      {
         return §6u§;
      }
      
      override protected function initializeLevelManager() : §9"!§
      {
         return new §&",§();
      }
      
      public function get §]]§() : §@!w§
      {
         return §3u§.userProgress as §@!w§;
      }
      
      public function set §]]§(param1:§@!w§) : void
      {
         §3u§.userProgress = param1;
      }
      
      public function get §@!j§() : §@"@§
      {
         return this.§6">§;
      }
      
      public function get §0h§() : §%!P§
      {
         return this.§#w§;
      }
   }
}
