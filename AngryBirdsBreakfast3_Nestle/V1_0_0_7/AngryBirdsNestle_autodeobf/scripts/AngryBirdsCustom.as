package
{
   import § !Q§.§=!3§;
   import §!!&§.§!!q§;
   import §!!&§.§@!C§;
   import §!!&§.§^!,§;
   import §!!&§.§`!$§;
   import §!!`§.§>!&§;
   import §!!`§.§>r§;
   import §!!i§.§&!w§;
   import §!!i§.§4y§;
   import §!!n§.§+Z§;
   import §!!n§.§[i§;
   import §!P§.§5!1§;
   import §!P§.§^b§;
   import §"q§.§2!L§;
   import §"q§.§6,§;
   import §"q§.§8[§;
   import §"q§.§;!z§;
   import §&!+§.§@z§;
   import §'!'§.§0!p§;
   import §3@§.§4!m§;
   import §3@§.§;!m§;
   import §8!$§.§`0§;
   import §;s§.§%!c§;
   import §="3§.§0!z§;
   import §>!z§.set;
   import §@!l§.§'n§;
   import §@!l§.§-"2§;
   import §[^§.§'g§;
   import §[^§.§@!U§;
   import §]!V§.§ do§;
   import §]!V§.§&d§;
   import §]!V§.§0D§;
   import §]!V§.§0X§;
   import §]!V§.§8!P§;
   import §]!V§.§<K§;
   import §]!V§.§>!Z§;
   import §]!V§.§>8§;
   import §]!V§.§@j§;
   import §]!V§.§[!G§;
   import §]!V§.§`'§;
   import §]A§.§&!a§;
   import §]A§.§[d§;
   import com.angrybirds.§#Z§;
   import com.angrybirds.fonts.AngryBirdsArialMSFont;
   import com.angrybirds.utils.§#!y§;
   import com.angrybirds.utils.§'p§;
   import com.angrybirds.utils.§;!L§;
   import com.rovio.assets.LoadingScreenBlack;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.geom.Rectangle;
   import flash.text.Font;
   import flash.ui.ContextMenu;
   import flash.ui.ContextMenuItem;
   import flash.utils.getTimer;
   
   public class AngryBirdsCustom extends §,!X§
   {
      
      protected static var §-!s§:Class = §5!w§;
      
      protected static var §8"§:Class = §+!;§;
      
      private static var §[+§:Class = §1L§;
      
      protected static var §0!U§:Class = §#!D§;
      
      private static var §0-§:Class = §9w§;
      
      public static const §>!;§:String = "(r106913)";
      
      public static const §]!@§:int = 980;
      
      public static const §%t§:int = 220;
      
      public static const §1<§:int = 570;
      
      public static const LOCAL_STORAGE_NAME:String = "ABNestle";
      
      public static var §=!_§:String = "http://head.angrybirds-nestle.appspot.com/";
      
      public static var §9"+§:String = "../";
      
      public static const § !b§:Boolean = true;
       
      
      private var §,!R§:§'p§;
      
      protected var §<G§:§'n§;
      
      private var §8l§:§8[§;
      
      private var §8%§:§;!L§;
      
      private var §>B§:§[i§;
      
      private var §6I§:§+Z§;
      
      public function AngryBirdsCustom(param1:§0!z§, param2:String, param3:String)
      {
         if(param2 == null)
         {
            §9"+§ = §=!_§;
         }
         this.§8%§ = new §;!L§();
         this.§,!R§ = new §'p§(param1.loaderInfo.uncaughtErrorEvents,§>!;§);
         §@!C§.enabled = true;
         §!!q§.§-!Y§(§@!C§.§-v§);
         if(param2 == null)
         {
            param2 = "(Head)";
         }
         if(param2.indexOf(".") >= 0)
         {
            param2 = param2.substring(0,param2.indexOf("."));
         }
         super(param1,param2,param3);
         this.§,!R§.dynamic(§97§);
         this.§>B§ = new §[i§();
         this.§6I§ = new §+Z§();
      }
      
      public static function §^Z§(param1:XML) : XML
      {
         return param1;
      }
      
      public static function § " §() : void
      {
         if(§%!c§.§>b§("Channel_Theme") == null || !§%!c§.§>b§("Channel_Theme").§>K§())
         {
            §%!c§.§8" §("ThemeMusic","Channel_Theme",100,0.65);
         }
      }
      
      override protected function initialize() : void
      {
         super.initialize();
         this.§"v§();
         this.§+w§();
      }
      
      private function §+w§() : void
      {
         var mySO:§#!y§ = null;
         try
         {
            mySO = §#!y§.getLocal(AngryBirdsCustom.LOCAL_STORAGE_NAME);
            if(mySO.data.useSounds != undefined)
            {
               §,!X§.setSoundsEnabled(mySO.data.useSounds);
            }
         }
         catch(e:Error)
         {
         }
      }
      
      private function §"v§() : void
      {
         var _loc1_:ContextMenu = new ContextMenu();
         _loc1_.hideBuiltInItems();
         _loc1_.customItems.push(new ContextMenuItem("Client version: " + §>!;§.replace("{svn_version}","local dev build"),false,false));
         _loc1_.customItems.push(new ContextMenuItem("Server version: " + §[,§,false,false));
         canvas.contextMenu = _loc1_;
      }
      
      override protected function initializeManagers() : void
      {
         super.initializeManagers();
         this.§84§();
      }
      
      override protected function initStateLoad() : §`0§
      {
         return new §&d§(§!""§,true,§`0§.§+a§,1000,stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      override protected function initializeStates() : void
      {
         §`!$§.§9N§ = false;
         §`!$§.§>!P§.§[!L§(§=!3§.§0I§(§0-§));
         this.§>!K§();
         §["4§(new §>8§(§97§,§!""§,false));
         §["4§(new §@j§(§97§,§!""§,§4!J§,false));
         §["4§(new §0X§(§97§,§!""§,§4!J§,false));
         §["4§(new § do§(§97§,§!""§,§4!J§,false));
         §["4§(new §>!Z§(§97§,§!""§,§4!J§,false));
         §["4§(new §`'§(§97§,§!""§,this.§8l§,false));
         §["4§(new §8!P§(§97§,§!""§,false,§4!J§));
         §["4§(new §[!G§(§97§,false,§[!G§.§+a§,§!""§,§4!J§));
         §["4§(new §<K§(§97§,false,§<K§.§+a§,§!""§));
         §["4§(new §0D§(§97§,§!""§,false));
         if(stage.stageWidth != §-t§ || stage.stageHeight != §^!Q§)
         {
            §%!T§(null);
         }
      }
      
      private function §>!K§() : void
      {
         var _loc1_:String = §0!p§.§`_§("readCookie","c_language") as String;
         if(_loc1_)
         {
            §`!$§.§>!P§.setLanguage(_loc1_);
         }
         else
         {
            §`!$§.§>!P§.setLanguage(§`!$§.§+h§);
         }
      }
      
      override protected function setupPopupManager() : void
      {
         §[U§ = new MovieClip();
         §6L§.stage.addChild(§[U§);
         §`Z§ = new §-"2§(§[U§,§!""§,this);
         §`Z§.addEventListener(§@z§.OPEN,§4!r§);
         §`Z§.addEventListener(§@z§.CLOSE,§,%§);
         §`p§.userProgress = new §;!z§("",§97§);
         (§`p§.userProgress as §;!z§).§8!n§();
         §%!#§ = new §4y§(§`Z§,§`p§,§>r§.§?§,new §&!w§());
         §`Z§.addLayer(§>r§.§?!"§,true,new Rectangle(0,0,-180,0));
         §`Z§.addLayer(§>r§.§?§,true,new Rectangle(0,0,0,0));
      }
      
      override protected function initializeUserProgress() : void
      {
         this.§+!K§();
      }
      
      private function §84§() : void
      {
         this.§8l§ = new §8[§();
      }
      
      public function §+!K§() : void
      {
         §6,§.§!!7§ = new §2!L§();
         this.§<0§ = new §;!z§("",this.§5!c§);
      }
      
      override protected function initializeLevelItemManager() : §'g§
      {
         return new §@!U§();
      }
      
      override protected function initializeLevelThemeManager() : set
      {
         return super.initializeLevelThemeManager();
      }
      
      override protected function initializeLevelMain() : §[d§
      {
         return new §&!a§(stage,§4!J§,§3!§,§97§);
      }
      
      override protected function initializePackageManager() : §4!m§
      {
         return new §;!m§(§97§,this.§`y§);
      }
      
      protected function get §5O§() : §;!m§
      {
         return §8!G§ as §;!m§;
      }
      
      override protected function resizeViews(param1:int, param2:int) : void
      {
         §#Z§.§&B§(0,0,param1 - §%t§,param2);
         setViewSize(param1,param2);
         §`Z§.setViewSize(param1,param2);
      }
      
      override protected function initializeGame() : void
      {
         super.initializeGame();
         var _loc1_:int = Math.round(getTimer() / 1000);
         §!!q§.§-!Y§(§@!C§.§=x§,_loc1_.toString(),_loc1_);
      }
      
      public function §%>§(param1:Boolean) : void
      {
         if(!this.§<G§ && param1)
         {
            this.§<G§ = new §'n§(this.§8l§);
            §5!K§.openPopup(this.§<G§);
            §5!K§.setPersistentLayer(§>!&§.§7!t§,true);
         }
         else if(this.§<G§ && !param1)
         {
            this.§@b§.§<!%§.removeEventListeners();
            this.§@b§.§<!%§.reset();
            §5!K§.closePopup(§>!&§.§7!t§);
            this.§<G§ = null;
         }
      }
      
      override public function setFirstGameState() : void
      {
         super.setFirstGameState();
         §8!`§(§@j§.§+a§);
      }
      
      public function get §@b§() : §'n§
      {
         return this.§<G§;
      }
      
      override protected function getAssetMap() : XML
      {
         return §=!3§.§0I§(§-!s§);
      }
      
      override protected function getUIData() : XML
      {
         var _loc1_:XML = super.getUIData();
         var _loc2_:XML = §=!3§.§0I§(§8"§);
         §^!,§.§-!b§(_loc2_,_loc1_,["Views","Components"],true);
         return _loc1_;
      }
      
      protected function get §`y§() : §@!U§
      {
         return §4!J§ as §@!U§;
      }
      
      override protected function getLoadingScreen() : DisplayObjectContainer
      {
         return new LoadingScreenBlack();
      }
      
      override public function getVersionInfo() : String
      {
         return "Client: " + §>!;§.replace("{svn_version}","local dev build") + ", " + "Server: " + §[,§;
      }
      
      override protected function initFonts() : void
      {
         super.initFonts();
         Font.registerFont(AngryBirdsArialMSFont);
      }
      
      override protected function loadItems() : void
      {
         var _loc1_:XML = this.§#"4§(§=!3§.§0I§(§[+§),§=!3§.§0I§(§,!d§));
         §4!J§.loadItems(_loc1_);
      }
      
      private function §#"4§(param1:XML, param2:XML) : XML
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
         return §=!3§.§0I§(§0!U§);
      }
      
      public function get §5!c§() : §5!1§
      {
         return §97§;
      }
      
      override protected function initializeLevelManager() : §5!1§
      {
         return new §^b§();
      }
      
      public function get §<0§() : §;!z§
      {
         return §`p§.userProgress as §;!z§;
      }
      
      public function set §<0§(param1:§;!z§) : void
      {
         §`p§.userProgress = param1;
      }
      
      public function get §@!&§() : §8[§
      {
         return this.§8l§;
      }
      
      public function get §74§() : §;!L§
      {
         return this.§8%§;
      }
      
      public function get §!&§() : §[i§
      {
         return this.§>B§;
      }
      
      public function get §1!Z§() : §+Z§
      {
         return this.§6I§;
      }
      
      public function setSoundsEnabled(param1:Boolean) : void
      {
         var mySO:§#!y§ = null;
         var enabled:Boolean = param1;
         §,!X§.setSoundsEnabled(enabled);
         try
         {
            mySO = §#!y§.getLocal(AngryBirdsCustom.LOCAL_STORAGE_NAME);
            mySO.data.useSounds = enabled;
            mySO.flush();
         }
         catch(e:Error)
         {
         }
      }
   }
}
