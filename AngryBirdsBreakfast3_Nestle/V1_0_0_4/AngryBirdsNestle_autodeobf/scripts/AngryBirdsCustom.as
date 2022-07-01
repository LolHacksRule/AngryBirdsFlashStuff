package
{
   import §"I§.§ !R§;
   import §"m§.§'!6§;
   import §#@§.§""%§;
   import §#@§.§85§;
   import §%9§.§+!&§;
   import §%9§.§<!M§;
   import §&!>§.§3!k§;
   import §'<§.§2y§;
   import §'<§.§=!o§;
   import §-!G§.§!!Y§;
   import §-!G§.§"$§;
   import §-!G§.§0![§;
   import §-!G§.§]!V§;
   import §0!%§.§,q§;
   import §0I§.§!!p§;
   import §0I§.§7S§;
   import §2?§.§4!5§;
   import §5!7§.§6n§;
   import §5!7§.§<"2§;
   import §9!a§.§@8§;
   import §?!E§.§%!?§;
   import §?!E§.§1N§;
   import §?!E§.§2i§;
   import §?!E§.§3!i§;
   import §?!E§.§6^§;
   import §?!E§.§9!Q§;
   import §?!E§.§9+§;
   import §?!E§.§;!k§;
   import §?!E§.§=!X§;
   import §?!E§.§[!+§;
   import §?!E§.§^"!§;
   import §?-§.§do §;
   import §?N§.§9r§;
   import §?N§.§]!_§;
   import §?Z§.§5-§;
   import §[j§.§8&§;
   import §[j§.§>C§;
   import §`6§.§ 2§;
   import §`6§.§!!]§;
   import §`6§.§6,§;
   import §`6§.§9a§;
   import com.angrybirds.§6U§;
   import com.angrybirds.fonts.AngryBirdsArialMSFont;
   import com.angrybirds.utils.§+!`§;
   import com.angrybirds.utils.§='§;
   import com.angrybirds.utils.§@!7§;
   import com.rovio.assets.LoadingScreenBlack;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.geom.Rectangle;
   import flash.text.Font;
   import flash.ui.ContextMenu;
   import flash.ui.ContextMenuItem;
   import flash.utils.getTimer;
   
   public class AngryBirdsCustom extends §-!l§
   {
      
      protected static var §'!§:Class = §69§;
      
      protected static var §'!!§:Class = §]R§;
      
      private static var §;!Z§:Class = §>u§;
      
      protected static var §'!G§:Class = §;F§;
      
      private static var §=""§:Class = §3p§;
      
      public static const § [§:String = "(r106803)";
      
      public static const §`!p§:int = 980;
      
      public static const §#c§:int = 220;
      
      public static const §1a§:int = 570;
      
      public static const LOCAL_STORAGE_NAME:String = "ABNestle";
      
      public static var §8<§:String = "http://head.angrybirds-nestle.appspot.com/";
      
      public static var §5"+§:String = "../";
      
      public static const §4V§:Boolean = true;
       
      
      private var §@"5§:§='§;
      
      protected var §7!>§:§+!&§;
      
      private var §2!b§:§]!V§;
      
      private var §]$§:§+!`§;
      
      private var §%!I§:§,q§;
      
      public function AngryBirdsCustom(param1:§'!6§, param2:String, param3:String)
      {
         if(param2 == null)
         {
            §5"+§ = §8<§;
         }
         this.§]$§ = new §+!`§();
         this.§@"5§ = new §='§(param1.loaderInfo.uncaughtErrorEvents,§ [§);
         §9a§.enabled = true;
         §6,§.§8"0§(§9a§.§&!+§);
         if(param2 == null)
         {
            param2 = "(Head)";
         }
         if(param2.indexOf(".") >= 0)
         {
            param2 = param2.substring(0,param2.indexOf("."));
         }
         super(param1,param2,param3);
         this.§@"5§.§@T§(§+o§);
         this.§%!I§ = new §,q§();
      }
      
      public static function §+Z§(param1:XML) : XML
      {
         return param1;
      }
      
      public static function §"H§() : void
      {
         if(§3!k§.§]" §("Channel_Theme") == null || !§3!k§.§]" §("Channel_Theme").§="§())
         {
            §3!k§.§]"4§("ThemeMusic","Channel_Theme",100,0.65);
         }
      }
      
      override protected function initialize() : void
      {
         super.initialize();
         this.§@!F§();
         this.§5!?§();
      }
      
      private function §5!?§() : void
      {
         var mySO:§@!7§ = null;
         try
         {
            mySO = §@!7§.getLocal(AngryBirdsCustom.LOCAL_STORAGE_NAME);
            if(mySO.data.useSounds != undefined)
            {
               §-!l§.setSoundsEnabled(mySO.data.useSounds);
            }
         }
         catch(e:Error)
         {
         }
      }
      
      private function §@!F§() : void
      {
         var _loc1_:ContextMenu = new ContextMenu();
         _loc1_.hideBuiltInItems();
         _loc1_.customItems.push(new ContextMenuItem("Client version: " + § [§.replace("{svn_version}","local dev build"),false,false));
         _loc1_.customItems.push(new ContextMenuItem("Server version: " + §?b§,false,false));
         canvas.contextMenu = _loc1_;
      }
      
      override protected function initializeManagers() : void
      {
         super.initializeManagers();
         this.§-"&§();
      }
      
      override protected function initStateLoad() : §@8§
      {
         return new §9+§(§@!W§,true,§@8§.§+B§,1000,stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      override protected function initializeStates() : void
      {
         §!!]§.§!!7§ = false;
         §!!]§.§?!+§.§0!_§(§ !R§.§`G§(§=""§));
         this.§&,§();
         §8Q§(new §2i§(§+o§,§@!W§,false));
         §8Q§(new §3!i§(§+o§,§@!W§,§with§,false));
         §8Q§(new §;!k§(§+o§,§@!W§,§with§,false));
         §8Q§(new §9!Q§(§+o§,§@!W§,§with§,false));
         §8Q§(new §[!+§(§+o§,§@!W§,§with§,false));
         §8Q§(new §^"!§(§+o§,§@!W§,this.§2!b§,false));
         §8Q§(new §%!?§(§+o§,§@!W§,false,§with§));
         §8Q§(new §6^§(§+o§,false,§6^§.§+B§,§@!W§,§with§));
         §8Q§(new §1N§(§+o§,false,§1N§.§+B§,§@!W§));
         §8Q§(new §=!X§(§+o§,§@!W§,false));
         if(stage.stageWidth != §?g§ || stage.stageHeight != §-!W§)
         {
            §7!l§(null);
         }
      }
      
      private function §&,§() : void
      {
         var _loc1_:String = §do §.§>"-§("readCookie","c_language") as String;
         if(_loc1_)
         {
            §!!]§.§?!+§.setLanguage(_loc1_);
         }
         else
         {
            §!!]§.§?!+§.setLanguage(§!!]§.§<!J§);
         }
      }
      
      override protected function setupPopupManager() : void
      {
         §,!#§ = new MovieClip();
         §^J§.stage.addChild(§,!#§);
         §'!`§ = new §<!M§(§,!#§,§@!W§,this);
         §'!`§.addEventListener(§5-§.OPEN,§%J§);
         §'!`§.addEventListener(§5-§.CLOSE,§>!Z§);
         §^!g§.userProgress = new §0![§("",§+o§);
         (§^!g§.userProgress as §0![§).§?!]§();
         §1!u§ = new §85§(§'!`§,§^!g§,§]!_§.§!o§,new §""%§());
         §'!`§.addLayer(§]!_§.§3!y§,true,new Rectangle(0,0,-180,0));
         §'!`§.addLayer(§]!_§.§!o§,true,new Rectangle(0,0,0,0));
      }
      
      override protected function initializeUserProgress() : void
      {
         this.§var§();
      }
      
      private function §-"&§() : void
      {
         this.§2!b§ = new §]!V§();
      }
      
      public function §var§() : void
      {
         §!!Y§.§9!L§ = new §"$§();
         this.§7f§ = new §0![§("",this.§6!N§);
      }
      
      override protected function initializeLevelItemManager() : §<"2§
      {
         return new §6n§();
      }
      
      override protected function initializeLevelThemeManager() : §4!5§
      {
         return super.initializeLevelThemeManager();
      }
      
      override protected function initializeLevelMain() : §!!p§
      {
         return new §7S§(stage,§with§,§'5§,§+o§);
      }
      
      override protected function initializePackageManager() : §8&§
      {
         return new §>C§(§+o§,this.§3!C§);
      }
      
      protected function get §#!m§() : §>C§
      {
         return §'!"§ as §>C§;
      }
      
      override protected function resizeViews(param1:int, param2:int) : void
      {
         §6U§.§,!"§(0,0,param1 - §#c§,param2);
         setViewSize(param1,param2);
         §'!`§.setViewSize(param1,param2);
      }
      
      override protected function initializeGame() : void
      {
         super.initializeGame();
         var _loc1_:int = Math.round(getTimer() / 1000);
         §6,§.§8"0§(§9a§.§`N§,_loc1_.toString(),_loc1_);
      }
      
      public function §,;§(param1:Boolean) : void
      {
         if(!this.§7!>§ && param1)
         {
            this.§7!>§ = new §+!&§(this.§2!b§);
            §,!W§.openPopup(this.§7!>§);
            §,!W§.setPersistentLayer(§9r§.§=k§,true);
         }
         else if(this.§7!>§ && !param1)
         {
            this.§catch§.§,!-§.removeEventListeners();
            this.§catch§.§,!-§.reset();
            §,!W§.closePopup(§9r§.§=k§);
            this.§7!>§ = null;
         }
      }
      
      override public function setFirstGameState() : void
      {
         super.setFirstGameState();
         §0!w§(§3!i§.§+B§);
      }
      
      public function get §catch§() : §+!&§
      {
         return this.§7!>§;
      }
      
      override protected function getAssetMap() : XML
      {
         return § !R§.§`G§(§'!§);
      }
      
      override protected function getUIData() : XML
      {
         var _loc1_:XML = super.getUIData();
         var _loc2_:XML = § !R§.§`G§(§'!!§);
         § 2§.§6!,§(_loc2_,_loc1_,["Views","Components"],true);
         return _loc1_;
      }
      
      protected function get §3!C§() : §6n§
      {
         return §with§ as §6n§;
      }
      
      override protected function getLoadingScreen() : DisplayObjectContainer
      {
         return new LoadingScreenBlack();
      }
      
      override public function getVersionInfo() : String
      {
         return "Client: " + § [§.replace("{svn_version}","local dev build") + ", " + "Server: " + §?b§;
      }
      
      override protected function initFonts() : void
      {
         super.initFonts();
         Font.registerFont(AngryBirdsArialMSFont);
      }
      
      override protected function loadItems() : void
      {
         var _loc1_:XML = this.§,""§(§ !R§.§`G§(§;!Z§),§ !R§.§`G§(§0!p§));
         §with§.loadItems(_loc1_);
      }
      
      private function §,""§(param1:XML, param2:XML) : XML
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
         return § !R§.§`G§(§'!G§);
      }
      
      public function get §6!N§() : §=!o§
      {
         return §+o§;
      }
      
      override protected function initializeLevelManager() : §=!o§
      {
         return new §2y§();
      }
      
      public function get §7f§() : §0![§
      {
         return §^!g§.userProgress as §0![§;
      }
      
      public function set §7f§(param1:§0![§) : void
      {
         §^!g§.userProgress = param1;
      }
      
      public function get §4d§() : §]!V§
      {
         return this.§2!b§;
      }
      
      public function get §@O§() : §+!`§
      {
         return this.§]$§;
      }
      
      public function get §=!Q§() : §,q§
      {
         return this.§%!I§;
      }
      
      public function setSoundsEnabled(param1:Boolean) : void
      {
         var mySO:§@!7§ = null;
         var enabled:Boolean = param1;
         §-!l§.setSoundsEnabled(enabled);
         try
         {
            mySO = §@!7§.getLocal(AngryBirdsCustom.LOCAL_STORAGE_NAME);
            mySO.data.useSounds = enabled;
            mySO.flush();
         }
         catch(e:Error)
         {
         }
      }
   }
}
