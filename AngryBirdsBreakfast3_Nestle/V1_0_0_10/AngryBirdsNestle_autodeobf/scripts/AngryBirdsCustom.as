package
{
   import § 2§.§'!k§;
   import § 2§.§=+§;
   import §!"§.§'!1§;
   import §!"§.§0"6§;
   import §!"§.§@]§;
   import §!"§.§^!7§;
   import §#!]§.§!!P§;
   import §#!]§.§"!k§;
   import §#!]§.§#!N§;
   import §#!]§.§#!j§;
   import §#!]§.§&"5§;
   import §#!]§.§+!a§;
   import §#!]§.§-!L§;
   import §#!]§.§-a§;
   import §#!]§.§6!"§;
   import §#!]§.§9!s§;
   import §#!]§.§[!d§;
   import §&"6§.§;G§;
   import §'"&§.§9X§;
   import §0"1§.§%v§;
   import §1!s§.§0!T§;
   import §1!s§.§8!f§;
   import §2!,§.§2!%§;
   import §2!,§.§2!@§;
   import §2!s§.§0l§;
   import §2!s§.§9#§;
   import §3!0§.§`i§;
   import §6!!§.§4G§;
   import §7;§.§'!6§;
   import §7;§.§1!m§;
   import §8!$§.§1b§;
   import §9!!§.§21§;
   import §9!!§.§2W§;
   import §;X§.§4!@§;
   import §?9§.§@P§;
   import §?u§.§"!e§;
   import §?u§.§6!R§;
   import §`!s§.§!z§;
   import §`!s§.§'!#§;
   import §`!s§.§5P§;
   import §`!s§.§^2§;
   import com.angrybirds.fonts.AngryBirdsArialMSFont;
   import com.angrybirds.utils.§@!-§;
   import com.angrybirds.utils.§]!+§;
   import com.angrybirds.utils.§`<§;
   import com.rovio.assets.LoadingScreenBlack;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.geom.Rectangle;
   import flash.text.Font;
   import flash.ui.ContextMenu;
   import flash.ui.ContextMenuItem;
   import flash.utils.getTimer;
   
   public class AngryBirdsCustom extends §-!2§
   {
      
      protected static var §@<§:Class = §3!n§;
      
      protected static var §,I§:Class = §8'§;
      
      private static var §[8§:Class = §5!#§;
      
      protected static var §-q§:Class = § t§;
      
      private static var §-i§:Class = §%!W§;
      
      public static const §2!5§:String = "(r107028)";
      
      public static const §6#§:int = 980;
      
      public static const §1!v§:int = 220;
      
      public static const §1k§:int = 570;
      
      public static const LOCAL_STORAGE_NAME:String = "ABNestle";
      
      public static var §0p§:String = "http://head.angrybirds-nestle.appspot.com/";
      
      public static var §8!O§:String = "../";
      
      public static const §1!6§:Boolean = true;
       
      
      private var §2a§:§@!-§;
      
      protected var §5?§:§2!%§;
      
      private var §&I§:§@]§;
      
      private var §&a§:§`<§;
      
      private var §+!S§:§21§;
      
      private var §2!^§:§2W§;
      
      public function AngryBirdsCustom(param1:§9X§, param2:String, param3:String)
      {
         if(param2 == null)
         {
            §8!O§ = §0p§;
         }
         this.§&a§ = new §`<§();
         this.§2a§ = new §@!-§(param1.loaderInfo.uncaughtErrorEvents,§2!5§);
         §!z§.enabled = true;
         §5P§.§ !F§(§!z§.§7C§);
         if(param2 == null)
         {
            param2 = "(Head)";
         }
         if(param2.indexOf(".") >= 0)
         {
            param2 = param2.substring(0,param2.indexOf("."));
         }
         super(param1,param2,param3);
         this.§2a§.§-,§(§#n§);
         this.§+!S§ = new §21§();
         this.§2!^§ = new §2W§();
      }
      
      public static function §6-§(param1:XML) : XML
      {
         return param1;
      }
      
      public static function §>q§() : void
      {
         if(§4!@§.§6!w§("Channel_Theme") == null || !§4!@§.§6!w§("Channel_Theme").§@t§())
         {
            §4!@§.§`!w§("ThemeMusic","Channel_Theme",100,0.65);
         }
      }
      
      override protected function initialize() : void
      {
         super.initialize();
         this.§==§();
         this.§6w§();
      }
      
      private function §6w§() : void
      {
         var mySO:§]!+§ = null;
         try
         {
            mySO = §]!+§.getLocal(AngryBirdsCustom.LOCAL_STORAGE_NAME);
            if(mySO.data.useSounds != undefined)
            {
               §-!2§.setSoundsEnabled(mySO.data.useSounds);
            }
         }
         catch(e:Error)
         {
         }
      }
      
      private function §==§() : void
      {
         var _loc1_:ContextMenu = new ContextMenu();
         _loc1_.hideBuiltInItems();
         _loc1_.customItems.push(new ContextMenuItem("Client version: " + §2!5§.replace("{svn_version}","local dev build"),false,false));
         _loc1_.customItems.push(new ContextMenuItem("Server version: " + §^!K§,false,false));
         canvas.contextMenu = _loc1_;
      }
      
      override protected function initializeManagers() : void
      {
         super.initializeManagers();
         this.§+L§();
      }
      
      override protected function initStateLoad() : §@P§
      {
         return new §9!s§(§`"6§,true,§@P§.§]!y§,1000,stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      override protected function initializeStates() : void
      {
         §^2§.§6M§ = false;
         §^2§.§&!;§.§5!=§(§1b§.§?!R§(§-i§));
         this.§ r§();
         §<!,§(new §"!k§(§#n§,§`"6§,false));
         §<!,§(new §!!P§(§#n§,§`"6§,§4!R§,false));
         §<!,§(new §[!d§(§#n§,§`"6§,§4!R§,false));
         §<!,§(new §#!j§(§#n§,§`"6§,§4!R§,false));
         §<!,§(new §&"5§(§#n§,§`"6§,§4!R§,false));
         §<!,§(new §+!a§(§#n§,§`"6§,this.§&I§,false));
         §<!,§(new §-a§(§#n§,§`"6§,false,§4!R§));
         §<!,§(new §#!N§(§#n§,false,§#!N§.§]!y§,§`"6§,§4!R§));
         §<!,§(new §6!"§(§#n§,false,§6!"§.§]!y§,§`"6§));
         §<!,§(new §-!L§(§#n§,§`"6§,false));
         if(stage.stageWidth != §2d§ || stage.stageHeight != §^s§)
         {
            §<!S§(null);
         }
      }
      
      private function § r§() : void
      {
         var _loc1_:String = §4G§.§&!7§("readCookie","c_language") as String;
         if(_loc1_)
         {
            §^2§.§&!;§.setLanguage(_loc1_);
         }
         else
         {
            §^2§.§&!;§.setLanguage(§^2§.§3;§);
         }
      }
      
      override protected function setupPopupManager() : void
      {
         §@!N§ = new MovieClip();
         §8@§.stage.addChild(§@!N§);
         §,#§ = new §2!@§(§@!N§,§`"6§,this);
         §,#§.addEventListener(§;G§.OPEN,§<j§);
         §,#§.addEventListener(§;G§.CLOSE,§]M§);
         §+!L§.userProgress = new §'!1§("",§#n§);
         (§+!L§.userProgress as §'!1§).§?!m§();
         §1"6§ = new §1!m§(§,#§,§+!L§,§0!T§.§if§,new §'!6§());
         §,#§.addLayer(§0!T§.§super§,true,new Rectangle(0,0,-180,0));
         §,#§.addLayer(§0!T§.§if§,true,new Rectangle(0,0,0,0));
      }
      
      override protected function initializeUserProgress() : void
      {
         this.§ !R§();
      }
      
      private function §+L§() : void
      {
         this.§&I§ = new §@]§();
      }
      
      public function § !R§() : void
      {
         §^!7§.§>!8§ = new §0"6§();
         this.§,"5§ = new §'!1§("",this.§8S§);
      }
      
      override protected function initializeLevelItemManager() : §0l§
      {
         return new §9#§();
      }
      
      override protected function initializeLevelThemeManager() : §%v§
      {
         return super.initializeLevelThemeManager();
      }
      
      override protected function initializeLevelMain() : §=+§
      {
         return new §'!k§(stage,§4!R§,§9%§,§#n§);
      }
      
      override protected function initializePackageManager() : §6!R§
      {
         return new §"!e§(§#n§,this.§-" §);
      }
      
      protected function get §^D§() : §"!e§
      {
         return §1"7§ as §"!e§;
      }
      
      override protected function resizeViews(param1:int, param2:int) : void
      {
         §`i§.§0J§(0,0,param1 - §1!v§,param2);
         setViewSize(param1,param2);
         §,#§.setViewSize(param1,param2);
      }
      
      override protected function initializeGame() : void
      {
         super.initializeGame();
         var _loc1_:int = Math.round(getTimer() / 1000);
         §5P§.§ !F§(§!z§.§?U§,_loc1_.toString(),_loc1_);
      }
      
      public function §;!§(param1:Boolean) : void
      {
         if(!this.§5?§ && param1)
         {
            this.§5?§ = new §2!%§(this.§&I§);
            §0!l§.openPopup(this.§5?§);
            §0!l§.setPersistentLayer(§8!f§.§+9§,true);
         }
         else if(this.§5?§ && !param1)
         {
            this.§6!<§.§?!+§.removeEventListeners();
            this.§6!<§.§?!+§.reset();
            §0!l§.closePopup(§8!f§.§+9§);
            this.§5?§ = null;
         }
      }
      
      override public function setFirstGameState() : void
      {
         super.setFirstGameState();
         §]a§(§!!P§.§]!y§);
      }
      
      public function get §6!<§() : §2!%§
      {
         return this.§5?§;
      }
      
      override protected function getAssetMap() : XML
      {
         return §1b§.§?!R§(§@<§);
      }
      
      override protected function getUIData() : XML
      {
         var _loc1_:XML = super.getUIData();
         var _loc2_:XML = §1b§.§?!R§(§,I§);
         §'!#§.§+"3§(_loc2_,_loc1_,["Views","Components"],true);
         return _loc1_;
      }
      
      protected function get §-" §() : §9#§
      {
         return §4!R§ as §9#§;
      }
      
      override protected function getLoadingScreen() : DisplayObjectContainer
      {
         return new LoadingScreenBlack();
      }
      
      override public function getVersionInfo() : String
      {
         return "Client: " + §2!5§.replace("{svn_version}","local dev build") + ", " + "Server: " + §^!K§;
      }
      
      override protected function initFonts() : void
      {
         super.initFonts();
         Font.registerFont(AngryBirdsArialMSFont);
      }
      
      override protected function loadItems() : void
      {
         var _loc1_:XML = this.§9i§(§1b§.§?!R§(§[8§),§1b§.§?!R§(§>!C§));
         §4!R§.loadItems(_loc1_);
      }
      
      private function §9i§(param1:XML, param2:XML) : XML
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
         return §1b§.§?!R§(§-q§);
      }
      
      public function get §8S§() : §-g§
      {
         return §#n§;
      }
      
      override protected function initializeLevelManager() : §-g§
      {
         return new §-!7§();
      }
      
      public function get §,"5§() : §'!1§
      {
         return §+!L§.userProgress as §'!1§;
      }
      
      public function set §,"5§(param1:§'!1§) : void
      {
         §+!L§.userProgress = param1;
      }
      
      public function get §'2§() : §@]§
      {
         return this.§&I§;
      }
      
      public function get §'Z§() : §`<§
      {
         return this.§&a§;
      }
      
      public function get §-"'§() : §21§
      {
         return this.§+!S§;
      }
      
      public function get §8<§() : §2W§
      {
         return this.§2!^§;
      }
      
      public function setSoundsEnabled(param1:Boolean) : void
      {
         var mySO:§]!+§ = null;
         var enabled:Boolean = param1;
         §-!2§.setSoundsEnabled(enabled);
         try
         {
            mySO = §]!+§.getLocal(AngryBirdsCustom.LOCAL_STORAGE_NAME);
            mySO.data.useSounds = enabled;
            mySO.flush();
         }
         catch(e:Error)
         {
         }
      }
   }
}
