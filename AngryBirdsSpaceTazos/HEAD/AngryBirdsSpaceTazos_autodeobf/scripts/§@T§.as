package
{
   import § "A§.§0!r§;
   import § "A§.§7!x§;
   import §"o§.§4!h§;
   import §%!P§.§0![§;
   import §%!P§.§;"H§;
   import §-!r§.§6!O§;
   import §-!r§.§>§;
   import §1z§.§+"A§;
   import §1z§.§^!@§;
   import §26§.§3v§;
   import §3!S§.§<5§;
   import §3"#§.§=t§;
   import §3"#§.§`"8§;
   import §3>§.§?_§;
   import §3>§.§[8§;
   import §3>§.§]!N§;
   import §4u§.§!H§;
   import §4u§.§%r§;
   import §4u§.§1y§;
   import §4u§.§]b§;
   import §5"@§.§!"'§;
   import §5"@§.§0x§;
   import §5"@§.§1!N§;
   import §5"@§.§7!7§;
   import §9%§.§!!&§;
   import §9%§.§2!z§;
   import §9%§.§4""§;
   import §9%§.§5"!§;
   import §9%§.§8!P§;
   import §9%§.§="6§;
   import §9%§.StateEpisodeSelection;
   import §9%§.§]!§;
   import §9%§.§]!F§;
   import §;"0§.§-q§;
   import §;"0§.§]+§;
   import §>"2§.§8k§;
   import §>%§.§ "3§;
   import §@u§.§#'§;
   import §[z§.§,!E§;
   import §[z§.§-!o§;
   import §]!x§.§'"E§;
   import §]!x§.§=0§;
   import §`!w§.§ "8§;
   import §`!w§.§?!U§;
   import com.rovio.assets.LoadingScreenBlack;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.geom.Rectangle;
   import flash.ui.ContextMenu;
   import flash.ui.ContextMenuItem;
   import flash.utils.getTimer;
   
   public class §@T§ extends §2&§
   {
      
      protected static var §@I§:Class = §&R§;
      
      protected static var §`!H§:Class = §#!o§;
      
      protected static var §<!5§:Class = §>r§;
      
      private static var § -§:Class = § !l§;
      
      public static const §^v§:String = "(r104553)";
      
      public static const §>v§:int = 760;
      
      public static const §8!D§:int = 220;
      
      public static const §[s§:int = 570;
      
      public static const §24§:String = "ABSpaceTazos";
      
      public static var §>!r§:String = "http://head.angrybirds-spacetazos.appspot.com/";
      
      public static var §&Z§:String = "../";
      
      public static const §2§:Boolean = true;
       
      
      private var §4Z§:§,!E§;
      
      protected var §@!M§:§'"E§;
      
      private var §#"9§:§]+§;
      
      private var §>!Z§:§0x§;
      
      private var §=P§:§-!o§;
      
      public function §@T§(param1:§#'§, param2:String, param3:String)
      {
         if(param2 == null)
         {
            §&Z§ = §>!r§;
         }
         this.§=P§ = new §-!o§();
         this.§4Z§ = new §,!E§(param1.loaderInfo.uncaughtErrorEvents,§^v§);
         §]b§.enabled = true;
         §1y§.§<>§(§]b§.§0B§);
         if(param2 == null)
         {
            param2 = "(Head)";
         }
         if(param2.indexOf(".") >= 0)
         {
            param2 = param2.substring(0,param2.indexOf("."));
         }
         super(param1,param2,param3);
         this.resizeViews(§>v§,§[s§);
         this.§4Z§.§3!6§(§#"=§);
      }
      
      public static function §,k§() : void
      {
         if(§<5§.§^g§("Channel_Theme") == null || !§<5§.§^g§("Channel_Theme").§6!L§())
         {
            §<5§.playSound("title_theme","Channel_Theme",100,0.65);
         }
      }
      
      override protected function initialize() : void
      {
         super.initialize();
         this.§%!Y§();
      }
      
      private function §%!Y§() : void
      {
         var _loc1_:ContextMenu = new ContextMenu();
         _loc1_.hideBuiltInItems();
         _loc1_.customItems.push(new ContextMenuItem("Client version: " + §^v§.replace("{svn_version}","local dev build"),false,false));
         _loc1_.customItems.push(new ContextMenuItem("Server version: " + §1!&§,false,false));
         canvas.contextMenu = _loc1_;
      }
      
      override protected function initializeManagers() : void
      {
         super.initializeManagers();
         this.§5!x§();
      }
      
      override protected function initStateLoad() : §4!h§
      {
         return new §!!&§(§@!,§,true,§4!h§.STATE_NAME,1000,stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      override protected function initializeStates() : void
      {
         §!H§.§4"B§ = false;
         §!H§.§3R§.§1&§(§?!U§.§3!c§(§ -§));
         §!H§.§3R§.setLanguage("es");
         this.§ [§();
         §0!c§(new §]!F§(§#"=§,§@!,§,§[8§(§!d§),false));
         §0!c§(new §="6§(§#"=§,§@!,§,§[8§(§!d§),false));
         §0!c§(new §8!P§(§#"=§,§@!,§,this.§>!Z§,false));
         §0!c§(new §4""§(§#"=§,§@!,§,false,§[8§(§!d§)));
         §0!c§(new §2!z§(§#"=§,false,§2!z§.STATE_NAME,§@!,§,§[8§(§!d§)));
         §0!c§(new §5"!§(§#"=§,false,§5"!§.STATE_NAME,§@!,§));
         §0!c§(new §]!§(§#"=§,§@!,§,false));
         if(stage.stageWidth != screenWidth || stage.stageHeight != screenHeight)
         {
            §[g§(null);
         }
      }
      
      private function § [§() : void
      {
         var _loc1_:String = §3v§.§0!Z§("readCookie","c_language") as String;
         if(_loc1_ == "en")
         {
            §!H§.§3R§.setLanguage("en");
         }
         else
         {
            §!H§.§3R§.setLanguage("es");
         }
      }
      
      override protected function setupPopupManager() : void
      {
         §%,§ = new MovieClip();
         §?"3§.stage.addChild(§%,§);
         §&!W§ = new §=0§(§%,§,§@!,§,this);
         §&!W§.addEventListener(§ "3§.OPEN,§=!U§);
         §&!W§.addEventListener(§ "3§.CLOSE,§5n§);
         §7W§.userProgress = new §7!7§("",§#"=§);
         §7!L§ = new §0!r§(§&!W§,§7W§,§6!O§.§@!3§,new §7!x§());
         §&!W§.addLayer(§6!O§.§ ">§,true,new Rectangle(0,0,-180,0));
         §&!W§.addLayer(§6!O§.§@!3§,true,new Rectangle(0,0,0,0));
      }
      
      override protected function initializeUserProgress() : void
      {
         this.§"!b§();
      }
      
      private function §5!x§() : void
      {
         this.§>!Z§ = new §0x§();
      }
      
      public function §"!b§() : void
      {
         §1!N§.§,!<§ = new §!"'§();
      }
      
      override protected function initializeLevelItemManager() : §]!N§
      {
         return new §?_§();
      }
      
      override protected function initializeLevelThemeManager() : §-q§
      {
         if(!this.§#"9§)
         {
            this.§#"9§ = new §]+§();
         }
         return this.§#"9§;
      }
      
      override protected function initializeLevelMain() : §`"8§
      {
         return new §=t§(stage,§!d§,§"!N§,§#"=§);
      }
      
      override protected function initializePackageManager() : §;"H§
      {
         return new §0![§(§#"=§,this.§%!+§);
      }
      
      protected function get §!!7§() : §0![§
      {
         return §+!h§ as §0![§;
      }
      
      override protected function loadItems() : void
      {
         var _loc2_:String = null;
         this.§%!+§.§9!'§(this.§!!7§.§[!<§());
         this.§%!+§.§1!>§(this.§!!7§.§[!x§(),this.§!!7§.§<!§());
         this.§%!+§.§9!j§(this.§!!7§.§1!j§());
         this.§%!+§.§3!I§(this.§!!7§.§-w§());
         this.§%!+§.§5!0§(this.§!!7§.§6!t§());
         var _loc1_:int = this.§!!7§.§"!E§ - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§!!7§.§;!y§(_loc1_);
            this.§%!+§.§0e§(_loc2_);
            _loc1_--;
         }
         (§#"=§ as §+"A§).§5!N§(this.§!!7§.§continue§(),this.§%!+§);
      }
      
      override protected function resizeViews(param1:int, param2:int) : void
      {
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc3_:Number = stage.stageWidth / §>v§;
         var _loc4_:Number = stage.stageHeight / §[s§;
         if(_loc3_ < _loc4_)
         {
            §?"3§.scaleX = §?"3§.scaleY = _loc3_;
            §8k§.§+6§(§?"3§.x,§?"3§.y,stage.stageWidth,stage.stageWidth * (§[s§ / §>v§));
         }
         else
         {
            §?"3§.scaleX = §?"3§.scaleY = _loc4_;
            _loc5_ = stage.stageHeight * (§>v§ / §[s§);
            _loc6_ = stage.stageHeight;
            §8k§.§+6§(§?"3§.x,§?"3§.y,_loc5_,_loc6_);
         }
         §&!W§.setViewSize(_loc5_,_loc6_);
      }
      
      override protected function initializeGame() : void
      {
         super.initializeGame();
         this.§@!M§ = new §'"E§(this.§>!Z§);
         §^7§.openPopup(this.§@!M§);
         §^7§.setPersistentLayer(§>§.§=#§,true);
         this.§@!M§.§`a§.§ 9§();
         var _loc1_:int = Math.round(getTimer() / 1000);
         §1y§.§<>§(§]b§.§0,§,_loc1_.toString(),_loc1_);
      }
      
      override protected function loadBackgrounds() : void
      {
         this.§#"9§.§]!0§(this.§0">§());
      }
      
      override public function setFirstGameState() : void
      {
         super.setFirstGameState();
         § !I§(StateEpisodeSelection.STATE_NAME);
      }
      
      protected function §0">§() : String
      {
         return § "8§.§3!c§(§<!5§);
      }
      
      public function get §56§() : §'"E§
      {
         return this.§@!M§;
      }
      
      override protected function getAssetMap() : XML
      {
         return §?!U§.§3!c§(§@I§);
      }
      
      override protected function getUIData() : XML
      {
         var _loc1_:XML = super.getUIData();
         var _loc2_:XML = §?!U§.§3!c§(§`!H§);
         §%r§.§8R§(_loc2_,_loc1_,["Views","Components"],true);
         return _loc1_;
      }
      
      protected function get §%!+§() : §?_§
      {
         return §!d§ as §?_§;
      }
      
      override protected function getLoadingScreen() : DisplayObjectContainer
      {
         return new LoadingScreenBlack();
      }
      
      override public function getVersionInfo() : String
      {
         return "Client: " + §^v§.replace("{svn_version}","local dev build") + ", " + "Server: " + §1!&§;
      }
      
      public function get §,"=§() : §^!@§
      {
         return §#"=§;
      }
      
      override protected function initializeLevelManager() : §^!@§
      {
         return new §+"A§();
      }
      
      public function get §'"5§() : §7!7§
      {
         return §7W§.userProgress as §7!7§;
      }
      
      public function set §'"5§(param1:§7!7§) : void
      {
         §7W§.userProgress = param1;
      }
      
      public function get §]U§() : §0x§
      {
         return this.§>!Z§;
      }
      
      public function get §<-§() : §-!o§
      {
         return this.§=P§;
      }
   }
}
