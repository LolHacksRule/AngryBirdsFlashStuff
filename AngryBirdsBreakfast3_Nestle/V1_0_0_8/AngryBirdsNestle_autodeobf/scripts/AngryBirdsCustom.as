package
{
   import § S§.§4&§;
   import § S§.§5!y§;
   import §!"+§.§2!H§;
   import §!"+§.§[!Q§;
   import §#!n§.§+"3§;
   import §#!n§.§;!m§;
   import §%f§.§"!i§;
   import §%f§.§&!=§;
   import §%f§.§?6§;
   import §%f§.§[@§;
   import §&!>§.§#^§;
   import §&!>§.§'!x§;
   import §&!>§.§2!V§;
   import §&!>§.§7!B§;
   import §,#§.§ "+§;
   import §,#§.§'!&§;
   import §,#§.§''§;
   import §,#§.§,!J§;
   import §,#§.§9k§;
   import §,#§.§=!8§;
   import §,#§.§>!e§;
   import §,#§.§>!n§;
   import §,#§.§?!T§;
   import §,#§.§?%§;
   import §,#§.§^!B§;
   import §0P§.§with§;
   import §2X§.§8!=§;
   import §2X§.§]!F§;
   import §8!e§.§,m§;
   import §8!e§.§3"&§;
   import §8q§.§]d§;
   import §9G§.§2F§;
   import §9G§.§<X§;
   import §;4§.§%@§;
   import §=!k§.§"M§;
   import §=!k§.§[!R§;
   import §>D§.§!R§;
   import §?I§.§4W§;
   import §?I§.§]!z§;
   import §@!i§.§!!Y§;
   import §^C§.§>!w§;
   import §^t§.§4!C§;
   import com.angrybirds.§4"6§;
   import com.angrybirds.fonts.AngryBirdsArialMSFont;
   import com.angrybirds.utils.§,5§;
   import com.angrybirds.utils.§1k§;
   import com.angrybirds.utils.§9!`§;
   import com.rovio.assets.LoadingScreenBlack;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.geom.Rectangle;
   import flash.text.Font;
   import flash.ui.ContextMenu;
   import flash.ui.ContextMenuItem;
   import flash.utils.getTimer;
   
   public class AngryBirdsCustom extends §-O§
   {
      
      protected static var §<c§:Class = §!!y§;
      
      protected static var §<K§:Class = §7!§;
      
      private static var §^!D§:Class = §4C§;
      
      protected static var §%!p§:Class = §'!G§;
      
      private static var §8!b§:Class = §7!n§;
      
      public static const §7@§:String = "(r106930)";
      
      public static const §<v§:int = 980;
      
      public static const §[M§:int = 220;
      
      public static const §-v§:int = 570;
      
      public static const LOCAL_STORAGE_NAME:String = "ABNestle";
      
      public static var §;c§:String = "http://head.angrybirds-nestle.appspot.com/";
      
      public static var §1=§:String = "../";
      
      public static const §9!j§:Boolean = true;
       
      
      private var §+"%§:§,5§;
      
      protected var §#6§:§]!z§;
      
      private var §2" §:§'!x§;
      
      private var §5a§:§9!`§;
      
      private var §2§:§]!F§;
      
      private var §'d§:§8!=§;
      
      public function AngryBirdsCustom(param1:§with§, param2:String, param3:String)
      {
         if(param2 == null)
         {
            §1=§ = §;c§;
         }
         this.§5a§ = new §9!`§();
         this.§+"%§ = new §,5§(param1.loaderInfo.uncaughtErrorEvents,§7@§);
         §?6§.enabled = true;
         §"!i§.§&!R§(§?6§.§`V§);
         if(param2 == null)
         {
            param2 = "(Head)";
         }
         if(param2.indexOf(".") >= 0)
         {
            param2 = param2.substring(0,param2.indexOf("."));
         }
         super(param1,param2,param3);
         this.§+"%§.§7f§(§!3§);
         this.§2§ = new §]!F§();
         this.§'d§ = new §8!=§();
      }
      
      public static function §3!z§(param1:XML) : XML
      {
         return param1;
      }
      
      public static function §"-§() : void
      {
         if(§]d§.§`!?§("Channel_Theme") == null || !§]d§.§`!?§("Channel_Theme").§'_§())
         {
            §]d§.§^!J§("ThemeMusic","Channel_Theme",100,0.65);
         }
      }
      
      override protected function initialize() : void
      {
         super.initialize();
         this.§?§();
         this.§;"!§();
      }
      
      private function §;"!§() : void
      {
         var mySO:§1k§ = null;
         try
         {
            mySO = §1k§.getLocal(AngryBirdsCustom.LOCAL_STORAGE_NAME);
            if(mySO.data.useSounds != undefined)
            {
               §-O§.setSoundsEnabled(mySO.data.useSounds);
            }
         }
         catch(e:Error)
         {
         }
      }
      
      private function §?§() : void
      {
         var _loc1_:ContextMenu = new ContextMenu();
         _loc1_.hideBuiltInItems();
         _loc1_.customItems.push(new ContextMenuItem("Client version: " + §7@§.replace("{svn_version}","local dev build"),false,false));
         _loc1_.customItems.push(new ContextMenuItem("Server version: " + §1C§,false,false));
         canvas.contextMenu = _loc1_;
      }
      
      override protected function initializeManagers() : void
      {
         super.initializeManagers();
         this.§'M§();
      }
      
      override protected function initStateLoad() : §>!w§
      {
         return new §?!T§(§&"&§,true,§>!w§.§'u§,1000,stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      override protected function initializeStates() : void
      {
         §[@§.§8![§ = false;
         §[@§.§"e§.§ !U§(§%@§.set(§8!b§));
         this.§>8§();
         §,!H§(new §9k§(§!3§,§&"&§,false));
         §,!H§(new §>!e§(§!3§,§&"&§,§<"3§,false));
         §,!H§(new §'!&§(§!3§,§&"&§,§<"3§,false));
         §,!H§(new §>!n§(§!3§,§&"&§,§<"3§,false));
         §,!H§(new §,!J§(§!3§,§&"&§,§<"3§,false));
         §,!H§(new §=!8§(§!3§,§&"&§,this.§2" §,false));
         §,!H§(new §^!B§(§!3§,§&"&§,false,§<"3§));
         §,!H§(new §?%§(§!3§,false,§?%§.§'u§,§&"&§,§<"3§));
         §,!H§(new §''§(§!3§,false,§''§.§'u§,§&"&§));
         §,!H§(new § "+§(§!3§,§&"&§,false));
         if(stage.stageWidth != §"!V§ || stage.stageHeight != §^,§)
         {
            § "#§(null);
         }
      }
      
      private function §>8§() : void
      {
         var _loc1_:String = §4!C§.§6'§("readCookie","c_language") as String;
         if(_loc1_)
         {
            §[@§.§"e§.setLanguage(_loc1_);
         }
         else
         {
            §[@§.§"e§.setLanguage(§[@§.§0!Y§);
         }
      }
      
      override protected function setupPopupManager() : void
      {
         §%!@§ = new MovieClip();
         §`!j§.stage.addChild(§%!@§);
         §3X§ = new §4W§(§%!@§,§&"&§,this);
         §3X§.addEventListener(§!!Y§.OPEN,§;]§);
         §3X§.addEventListener(§!!Y§.CLOSE,§7!a§);
         §%""§.userProgress = new §#^§("",§!3§);
         (§%""§.userProgress as §#^§).§%g§();
         §0!i§ = new §"M§(§3X§,§%""§,§5!y§.§6!0§,new §[!R§());
         §3X§.addLayer(§5!y§.§]S§,true,new Rectangle(0,0,-180,0));
         §3X§.addLayer(§5!y§.§6!0§,true,new Rectangle(0,0,0,0));
      }
      
      override protected function initializeUserProgress() : void
      {
         this.§-"6§();
      }
      
      private function §'M§() : void
      {
         this.§2" § = new §'!x§();
      }
      
      public function §-"6§() : void
      {
         §2!V§.§!!?§ = new §7!B§();
         this.§;!1§ = new §#^§("",this.§4!d§);
      }
      
      override protected function initializeLevelItemManager() : §2!H§
      {
         return new §[!Q§();
      }
      
      override protected function initializeLevelThemeManager() : §!R§
      {
         return super.initializeLevelThemeManager();
      }
      
      override protected function initializeLevelMain() : §2F§
      {
         return new §<X§(stage,§<"3§,§!P§,§!3§);
      }
      
      override protected function initializePackageManager() : §+"3§
      {
         return new §;!m§(§!3§,this.§0z§);
      }
      
      protected function get §6!%§() : §;!m§
      {
         return §@Q§ as §;!m§;
      }
      
      override protected function resizeViews(param1:int, param2:int) : void
      {
         §4"6§.§@! §(0,0,param1 - §[M§,param2);
         setViewSize(param1,param2);
         §3X§.setViewSize(param1,param2);
      }
      
      override protected function initializeGame() : void
      {
         super.initializeGame();
         var _loc1_:int = Math.round(getTimer() / 1000);
         §"!i§.§&!R§(§?6§.§<I§,_loc1_.toString(),_loc1_);
      }
      
      public function §+!S§(param1:Boolean) : void
      {
         if(!this.§#6§ && param1)
         {
            this.§#6§ = new §]!z§(this.§2" §);
            §-6§.openPopup(this.§#6§);
            §-6§.setPersistentLayer(§4&§.§&!O§,true);
         }
         else if(this.§#6§ && !param1)
         {
            this.§9]§.§%!j§.removeEventListeners();
            this.§9]§.§%!j§.reset();
            §-6§.closePopup(§4&§.§&!O§);
            this.§#6§ = null;
         }
      }
      
      override public function setFirstGameState() : void
      {
         super.setFirstGameState();
         §'"6§(§>!e§.§'u§);
      }
      
      public function get §9]§() : §]!z§
      {
         return this.§#6§;
      }
      
      override protected function getAssetMap() : XML
      {
         return §%@§.set(§<c§);
      }
      
      override protected function getUIData() : XML
      {
         var _loc1_:XML = super.getUIData();
         var _loc2_:XML = §%@§.set(§<K§);
         §&!=§.§"H§(_loc2_,_loc1_,["Views","Components"],true);
         return _loc1_;
      }
      
      protected function get §0z§() : §[!Q§
      {
         return §<"3§ as §[!Q§;
      }
      
      override protected function getLoadingScreen() : DisplayObjectContainer
      {
         return new LoadingScreenBlack();
      }
      
      override public function getVersionInfo() : String
      {
         return "Client: " + §7@§.replace("{svn_version}","local dev build") + ", " + "Server: " + §1C§;
      }
      
      override protected function initFonts() : void
      {
         super.initFonts();
         Font.registerFont(AngryBirdsArialMSFont);
      }
      
      override protected function loadItems() : void
      {
         var _loc1_:XML = this.§=R§(§%@§.set(§^!D§),§%@§.set(§@c§));
         §<"3§.loadItems(_loc1_);
      }
      
      private function §=R§(param1:XML, param2:XML) : XML
      {
         var _loc3_:XML = new XML(param1.Items.toXMLString());
         var _loc4_:XML = new XML(param1.Item_Materials.toXMLString());
         var _loc5_:XML = new XML(param1.Item_Shapes.toXMLString());
         var _loc6_:XML = new XML(param1.Item_Resources_Sounds.toXMLString());
         var _loc7_:XML = new XML(param1.SoundChannels.toXMLString());
         var _loc8_:XML = new XML(param1.Material_Damage_Multipliers.toXMLString());
         var _loc9_:XML = new XML(param1.Material_Velocity_Multipliers.toXMLString());
         param2.appendChild(_loc3_);
         param2.appendChild(_loc4_);
         param2.appendChild(_loc5_);
         param2.appendChild(_loc6_);
         param2.appendChild(_loc7_);
         param2.appendChild(_loc8_);
         param2.appendChild(_loc9_);
         return param2;
      }
      
      override protected function getLevelBackgroundXML() : XML
      {
         return §%@§.set(§%!p§);
      }
      
      public function get §4!d§() : §3"&§
      {
         return §!3§;
      }
      
      override protected function initializeLevelManager() : §3"&§
      {
         return new §,m§();
      }
      
      public function get §;!1§() : §#^§
      {
         return §%""§.userProgress as §#^§;
      }
      
      public function set §;!1§(param1:§#^§) : void
      {
         §%""§.userProgress = param1;
      }
      
      public function get §-""§() : §'!x§
      {
         return this.§2" §;
      }
      
      public function get §]v§() : §9!`§
      {
         return this.§5a§;
      }
      
      public function get §;J§() : §]!F§
      {
         return this.§2§;
      }
      
      public function get §#!-§() : §8!=§
      {
         return this.§'d§;
      }
      
      public function setSoundsEnabled(param1:Boolean) : void
      {
         var mySO:§1k§ = null;
         var enabled:Boolean = param1;
         §-O§.setSoundsEnabled(enabled);
         try
         {
            mySO = §1k§.getLocal(AngryBirdsCustom.LOCAL_STORAGE_NAME);
            mySO.data.useSounds = enabled;
            mySO.flush();
         }
         catch(e:Error)
         {
         }
      }
   }
}
