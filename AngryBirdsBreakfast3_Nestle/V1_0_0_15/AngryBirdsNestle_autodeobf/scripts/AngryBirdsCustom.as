package
{
   import §%!B§.§0![§;
   import §%!B§.§;![§;
   import §%8§.§4O§;
   import §%8§.§;!=§;
   import §'!3§.§2!2§;
   import §'!3§.§;!H§;
   import §,!'§.§6!L§;
   import §0!m§.§@!S§;
   import §1![§.§&"4§;
   import §1![§.§-"5§;
   import §1!c§.§ x§;
   import §1!c§.§"!v§;
   import §1!c§.§%!<§;
   import §1!c§.§-@§;
   import §1!c§.§3!9§;
   import §1!c§.§7]§;
   import §1!c§.§8!A§;
   import §1!c§.§;"2§;
   import §1!c§.§;D§;
   import §1!c§.§?"7§;
   import §1!c§.§^!,§;
   import §1!i§.§,-§;
   import §1!i§.§`!t§;
   import §24§.§4!H§;
   import §37§.§4=§;
   import §4!i§.§0!<§;
   import §4!i§.§<!1§;
   import §4!i§.§@"#§;
   import §4!i§.§^"#§;
   import §4[§.§2P§;
   import §4[§.§3!<§;
   import §4[§.§4Z§;
   import §4[§.§<!o§;
   import §8]§.§7O§;
   import §;V§.§%c§;
   import §>z§.§5!d§;
   import §@V§.§#=§;
   import §@V§.§^$§;
   import §[!Z§.§>D§;
   import §[+§.§+"'§;
   import §[+§.§6!p§;
   import §^"!§.§4!8§;
   import §^"!§.§=!p§;
   import com.angrybirds.fonts.AngryBirdsArialMSFont;
   import com.angrybirds.utils.§'[§;
   import com.angrybirds.utils.§8!+§;
   import com.angrybirds.utils.§`"§;
   import com.rovio.assets.LoadingScreenBlack;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.geom.Rectangle;
   import flash.text.Font;
   import flash.ui.ContextMenu;
   import flash.ui.ContextMenuItem;
   import flash.utils.getTimer;
   
   public class AngryBirdsCustom extends § !4§
   {
      
      protected static var §8!Y§:Class = §]+§;
      
      protected static var §4'§:Class = §;E§;
      
      private static var §[!6§:Class = §@!X§;
      
      protected static var §,f§:Class = §`!%§;
      
      private static var §`!R§:Class = §"!Z§;
      
      public static const §#"'§:String = "(r107041)";
      
      public static const §1"&§:int = 980;
      
      public static const §,!W§:int = 220;
      
      public static const §`!,§:int = 570;
      
      public static const LOCAL_STORAGE_NAME:String = "ABNestle";
      
      public static var §,!Z§:String = "http://head.angrybirds-nestle.appspot.com/";
      
      public static var §;"1§:String = "../";
      
      public static const §?J§:Boolean = true;
       
      
      private var §`!S§:§`"§;
      
      protected var §=!`§:§2!2§;
      
      private var §3!+§:§4Z§;
      
      private var §1!B§:§8!+§;
      
      private var §[!I§:§6!p§;
      
      private var §>!N§:§+"'§;
      
      public function AngryBirdsCustom(param1:§6!L§, param2:String, param3:String)
      {
         if(param2 == null)
         {
            §;"1§ = §,!Z§;
         }
         this.§1!B§ = new §8!+§();
         this.§`!S§ = new §`"§(param1.loaderInfo.uncaughtErrorEvents,§#"'§);
         §^"#§.enabled = true;
         §0!<§.§1x§(§^"#§.§5T§);
         if(param2 == null)
         {
            param2 = "(Head)";
         }
         if(param2.indexOf(".") >= 0)
         {
            param2 = param2.substring(0,param2.indexOf("."));
         }
         super(param1,param2,param3);
         this.§`!S§.§<!&§(§4a§);
         this.§[!I§ = new §6!p§();
         this.§>!N§ = new §+"'§();
      }
      
      public static function §9!>§(param1:XML) : XML
      {
         return param1;
      }
      
      public static function §get §() : void
      {
         if(§>D§.§<d§("Channel_Theme") == null || !§>D§.§<d§("Channel_Theme").§2x§())
         {
            §>D§.§9!q§("ThemeMusic","Channel_Theme",100,0.65);
         }
      }
      
      override protected function initialize() : void
      {
         super.initialize();
         this.§%!3§();
         this.§>!A§();
      }
      
      private function §>!A§() : void
      {
         var mySO:§'[§ = null;
         try
         {
            mySO = §'[§.getLocal(AngryBirdsCustom.LOCAL_STORAGE_NAME);
            if(mySO.data.useSounds != undefined)
            {
               § !4§.setSoundsEnabled(mySO.data.useSounds);
            }
         }
         catch(e:Error)
         {
         }
      }
      
      private function §%!3§() : void
      {
         var _loc1_:ContextMenu = new ContextMenu();
         _loc1_.hideBuiltInItems();
         _loc1_.customItems.push(new ContextMenuItem("Client version: " + §#"'§.replace("{svn_version}","local dev build"),false,false));
         _loc1_.customItems.push(new ContextMenuItem("Server version: " + §7!1§,false,false));
         canvas.contextMenu = _loc1_;
      }
      
      override protected function initializeManagers() : void
      {
         super.initializeManagers();
         this.§ !<§();
      }
      
      override protected function initStateLoad() : §4=§
      {
         return new §3!9§(§,$§,true,§4=§.§8"%§,1000,stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      override protected function initializeStates() : void
      {
         §@"#§.§]!v§ = false;
         §@"#§.§,2§.§%!p§(§4!H§.§7o§(§`!R§));
         this.§-"§();
         §1""§(new §8!A§(§4a§,§,$§,false));
         §1""§(new §?"7§(§4a§,§,$§,§@!]§,false));
         §1""§(new §;D§(§4a§,§,$§,§@!]§,false));
         §1""§(new §"!v§(§4a§,§,$§,§@!]§,false));
         §1""§(new §^!,§(§4a§,§,$§,§@!]§,false));
         §1""§(new §%!<§(§4a§,§,$§,this.§3!+§,false));
         §1""§(new §7]§(§4a§,§,$§,false,§@!]§));
         §1""§(new § x§(§4a§,false,§ x§.§8"%§,§,$§,§@!]§));
         §1""§(new §;"2§(§4a§,false,§;"2§.§8"%§,§,$§));
         §1""§(new §-@§(§4a§,§,$§,false));
         if(stage.stageWidth != §&v§ || stage.stageHeight != §,n§)
         {
            §#!U§(null);
         }
      }
      
      private function §-"§() : void
      {
         var _loc1_:String = §%c§.§6"§("readCookie","c_language") as String;
         if(_loc1_)
         {
            §@"#§.§,2§.setLanguage(_loc1_);
         }
         else
         {
            §@"#§.§,2§.setLanguage(§@"#§.§7?§);
         }
      }
      
      override protected function setupPopupManager() : void
      {
         §%,§ = new MovieClip();
         §-!x§.stage.addChild(§%,§);
         §#!c§ = new §;!H§(§%,§,§,$§,this);
         §#!c§.addEventListener(§7O§.OPEN,§>!t§);
         §#!c§.addEventListener(§7O§.CLOSE,§"D§);
         §6!4§.userProgress = new §3!<§("",§4a§);
         (§6!4§.userProgress as §3!<§).§+!6§();
         §@y§ = new §4!8§(§#!c§,§6!4§,§,-§.§'!f§,new §=!p§());
         §#!c§.addLayer(§,-§.§#!V§,true,new Rectangle(0,0,-180,0));
         §#!c§.addLayer(§,-§.§'!f§,true,new Rectangle(0,0,0,0));
      }
      
      override protected function initializeUserProgress() : void
      {
         this.§[M§();
      }
      
      private function § !<§() : void
      {
         this.§3!+§ = new §4Z§();
      }
      
      public function §[M§() : void
      {
         §2P§.§[!$§ = new §<!o§();
         this.§+Y§ = new §3!<§("",this.§[!,§);
      }
      
      override protected function initializeLevelItemManager() : §4O§
      {
         return new §;!=§();
      }
      
      override protected function initializeLevelThemeManager() : §5!d§
      {
         return super.initializeLevelThemeManager();
      }
      
      override protected function initializeLevelMain() : §#=§
      {
         return new §^$§(stage,§@!]§,§2!v§,§4a§);
      }
      
      override protected function initializePackageManager() : §-"5§
      {
         return new §&"4§(§4a§,this.§'! §);
      }
      
      protected function get §9!1§() : §&"4§
      {
         return §=p§ as §&"4§;
      }
      
      override protected function resizeViews(param1:int, param2:int) : void
      {
         §@!S§.§1!§(0,0,param1 - §,!W§,param2);
         setViewSize(param1,param2);
         §#!c§.setViewSize(param1,param2);
      }
      
      override protected function initializeGame() : void
      {
         super.initializeGame();
         var _loc1_:int = Math.round(getTimer() / 1000);
         §0!<§.§1x§(§^"#§.§-B§,_loc1_.toString(),_loc1_);
         this.§%R§.§1x§(§8!+§.§"s§);
      }
      
      public function §+!a§(param1:Boolean) : void
      {
         if(!this.§=!`§ && param1)
         {
            this.§=!`§ = new §2!2§(this.§3!+§);
            §+!J§.openPopup(this.§=!`§);
            §+!J§.setPersistentLayer(§`!t§.§4l§,true);
         }
         else if(this.§=!`§ && !param1)
         {
            this.§<=§.§08§.removeEventListeners();
            this.§<=§.§08§.reset();
            §+!J§.closePopup(§`!t§.§4l§);
            this.§=!`§ = null;
         }
      }
      
      override public function setFirstGameState() : void
      {
         super.setFirstGameState();
         §7"6§(§?"7§.§8"%§);
      }
      
      public function get §<=§() : §2!2§
      {
         return this.§=!`§;
      }
      
      override protected function getAssetMap() : XML
      {
         return §4!H§.§7o§(§8!Y§);
      }
      
      override protected function getUIData() : XML
      {
         var _loc1_:XML = super.getUIData();
         var _loc2_:XML = §4!H§.§7o§(§4'§);
         §<!1§.§3M§(_loc2_,_loc1_,["Views","Components"],true);
         return _loc1_;
      }
      
      protected function get §'! §() : §;!=§
      {
         return §@!]§ as §;!=§;
      }
      
      override protected function getLoadingScreen() : DisplayObjectContainer
      {
         return new LoadingScreenBlack();
      }
      
      override public function getVersionInfo() : String
      {
         return "Client: " + §#"'§.replace("{svn_version}","local dev build") + ", " + "Server: " + §7!1§;
      }
      
      override protected function initFonts() : void
      {
         super.initFonts();
         Font.registerFont(AngryBirdsArialMSFont);
      }
      
      override protected function loadItems() : void
      {
         var _loc1_:XML = this.§6W§(§4!H§.§7o§(§[!6§),§4!H§.§7o§(§,!%§));
         §@!]§.loadItems(_loc1_);
      }
      
      private function §6W§(param1:XML, param2:XML) : XML
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
         return §4!H§.§7o§(§,f§);
      }
      
      public function get §[!,§() : §0![§
      {
         return §4a§;
      }
      
      override protected function initializeLevelManager() : §0![§
      {
         return new §;![§();
      }
      
      public function get §+Y§() : §3!<§
      {
         return §6!4§.userProgress as §3!<§;
      }
      
      public function set §+Y§(param1:§3!<§) : void
      {
         §6!4§.userProgress = param1;
      }
      
      public function get §6!"§() : §4Z§
      {
         return this.§3!+§;
      }
      
      public function get §%R§() : §8!+§
      {
         return this.§1!B§;
      }
      
      public function get §6!g§() : §6!p§
      {
         return this.§[!I§;
      }
      
      public function get §,h§() : §+"'§
      {
         return this.§>!N§;
      }
      
      public function setSoundsEnabled(param1:Boolean) : void
      {
         var mySO:§'[§ = null;
         var enabled:Boolean = param1;
         § !4§.setSoundsEnabled(enabled);
         try
         {
            mySO = §'[§.getLocal(AngryBirdsCustom.LOCAL_STORAGE_NAME);
            mySO.data.useSounds = enabled;
            mySO.flush();
         }
         catch(e:Error)
         {
         }
      }
   }
}
