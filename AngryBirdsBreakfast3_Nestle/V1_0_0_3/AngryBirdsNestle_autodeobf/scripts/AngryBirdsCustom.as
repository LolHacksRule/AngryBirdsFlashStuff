package
{
   import § !H§.§0!m§;
   import §!!<§.§-"4§;
   import §!!<§.§7!r§;
   import §#!`§.§%!w§;
   import §#!`§.§1!+§;
   import §&+§.§%!]§;
   import §&+§.§1!N§;
   import §'9§.§0!k§;
   import §+c§.§5!6§;
   import §+j§.§%&§;
   import §-!F§.§%>§;
   import §-!F§.§,Q§;
   import §-!F§.§[!Q§;
   import §-!F§.§]L§;
   import §7-§.§8!v§;
   import §9![§.§1!i§;
   import §<R§.§[!u§;
   import §=!7§.§%!%§;
   import §=X§.§-!f§;
   import §=X§.§3j§;
   import §=X§.§?!n§;
   import §=X§.§`!3§;
   import §>!a§.§5j§;
   import §>!a§.§5l§;
   import §@"1§.§"h§;
   import §@"1§.§4",§;
   import §[<§.§%!T§;
   import §[<§.§6!W§;
   import §`!6§.§!s§;
   import §`!6§.§"7§;
   import §`!6§.§#!Z§;
   import §`!6§.§'3§;
   import §`!6§.§,"4§;
   import §`!6§.§,z§;
   import §`!6§.§7!d§;
   import §`!6§.§9!K§;
   import §`!6§.§9y§;
   import §`!6§.§>!v§;
   import §`!6§.§`j§;
   import §`q§.§0!N§;
   import §`q§.§]!,§;
   import com.angrybirds.§4!l§;
   import com.angrybirds.fonts.AngryBirdsArialMSFont;
   import com.angrybirds.utils.§"L§;
   import com.angrybirds.utils.§#+§;
   import com.angrybirds.utils.§8O§;
   import com.rovio.assets.LoadingScreenBlack;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.geom.Rectangle;
   import flash.text.Font;
   import flash.ui.ContextMenu;
   import flash.ui.ContextMenuItem;
   import flash.utils.getTimer;
   
   public class AngryBirdsCustom extends §&N§
   {
      
      protected static var §+!§:Class = §"T§;
      
      protected static var §7!'§:Class = §#x§;
      
      private static var §6,§:Class = §]!O§;
      
      protected static var §!`§:Class = §9!o§;
      
      private static var §=!P§:Class = §3w§;
      
      public static const §8B§:String = "(r106665)";
      
      public static const §1M§:int = 980;
      
      public static const §!m§:int = 220;
      
      public static const §^!y§:int = 570;
      
      public static const LOCAL_STORAGE_NAME:String = "ABNestle";
      
      public static var §5!h§:String = "http://head.angrybirds-nestle.appspot.com/";
      
      public static var §91§:String = "../";
      
      public static const §3>§:Boolean = true;
       
      
      private var §<S§:§#+§;
      
      protected var §`!!§:§0!N§;
      
      private var §"!T§:§`!3§;
      
      private var §1!c§:§8O§;
      
      private var §@"§:§0!k§;
      
      public function AngryBirdsCustom(param1:§[!u§, param2:String, param3:String)
      {
         if(param2 == null)
         {
            §91§ = §5!h§;
         }
         this.§1!c§ = new §8O§();
         this.§<S§ = new §#+§(param1.loaderInfo.uncaughtErrorEvents,§8B§);
         §%>§.enabled = true;
         §]L§.§0!S§(§%>§.§"4§);
         if(param2 == null)
         {
            param2 = "(Head)";
         }
         if(param2.indexOf(".") >= 0)
         {
            param2 = param2.substring(0,param2.indexOf("."));
         }
         super(param1,param2,param3);
         this.§<S§.§"!b§(§^!§);
         this.§@"§ = new §0!k§();
      }
      
      public static function §5!g§(param1:XML) : XML
      {
         return param1;
      }
      
      public static function §''§() : void
      {
         if(§1!i§.§?1§("Channel_Theme") == null || !§1!i§.§?1§("Channel_Theme").§?G§())
         {
            §1!i§.§+!Y§("ThemeMusic","Channel_Theme",100,0.65);
         }
      }
      
      override protected function initialize() : void
      {
         super.initialize();
         this.§,!e§();
         this.§^!X§();
      }
      
      private function §^!X§() : void
      {
         var mySO:§"L§ = null;
         try
         {
            mySO = §"L§.getLocal(AngryBirdsCustom.LOCAL_STORAGE_NAME);
            if(mySO.data.useSounds != undefined)
            {
               §&N§.setSoundsEnabled(mySO.data.useSounds);
            }
         }
         catch(e:Error)
         {
         }
      }
      
      private function §,!e§() : void
      {
         var _loc1_:ContextMenu = new ContextMenu();
         _loc1_.hideBuiltInItems();
         _loc1_.customItems.push(new ContextMenuItem("Client version: " + §8B§.replace("{svn_version}","local dev build"),false,false));
         _loc1_.customItems.push(new ContextMenuItem("Server version: " + §<!]§,false,false));
         canvas.contextMenu = _loc1_;
      }
      
      override protected function initializeManagers() : void
      {
         super.initializeManagers();
         this.§#!B§();
      }
      
      override protected function initStateLoad() : §%&§
      {
         return new §`j§(§&%§,true,§%&§.§]O§,1000,stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      override protected function initializeStates() : void
      {
         §[!Q§.§+"0§ = false;
         §[!Q§.§=J§.§,!3§(§%!%§.§<!0§(§=!P§));
         this.§7+§();
         §-!r§(new §9!K§(§^!§,§&%§,false));
         §-!r§(new §!s§(§^!§,§&%§,§'!f§,false));
         §-!r§(new §,z§(§^!§,§&%§,§'!f§,false));
         §-!r§(new §"7§(§^!§,§&%§,§'!f§,false));
         §-!r§(new §,"4§(§^!§,§&%§,§'!f§,false));
         §-!r§(new §'3§(§^!§,§&%§,this.§"!T§,false));
         §-!r§(new §>!v§(§^!§,§&%§,false,§'!f§));
         §-!r§(new §7!d§(§^!§,false,§7!d§.§]O§,§&%§,§'!f§));
         §-!r§(new §#!Z§(§^!§,false,§#!Z§.§]O§,§&%§));
         §-!r§(new §9y§(§^!§,§&%§,false));
         if(stage.stageWidth != §,!o§ || stage.stageHeight != §3!O§)
         {
            §%C§(null);
         }
      }
      
      private function §7+§() : void
      {
         var _loc1_:String = §0!m§.§<Q§("readCookie","c_language") as String;
         if(_loc1_)
         {
            §[!Q§.§=J§.setLanguage(_loc1_);
         }
         else
         {
            §[!Q§.§=J§.setLanguage(§[!Q§.§@8§);
         }
      }
      
      override protected function setupPopupManager() : void
      {
         §+]§ = new MovieClip();
         §"3§.stage.addChild(§+]§);
         §+h§ = new §]!,§(§+]§,§&%§,this);
         §+h§.addEventListener(§8!v§.OPEN,§+!q§);
         §+h§.addEventListener(§8!v§.CLOSE,§;!=§);
         §'c§.userProgress = new §-!f§("",§^!§);
         (§'c§.userProgress as §-!f§).§3![§();
         §6!T§ = new §1!N§(§+h§,§'c§,§6!W§.§+!J§,new §%!]§());
         §+h§.addLayer(§6!W§.§5S§,true,new Rectangle(0,0,-180,0));
         §+h§.addLayer(§6!W§.§+!J§,true,new Rectangle(0,0,0,0));
      }
      
      override protected function initializeUserProgress() : void
      {
         this.§%!l§();
      }
      
      private function §#!B§() : void
      {
         this.§"!T§ = new §`!3§();
      }
      
      public function §%!l§() : void
      {
         §3j§.§0!i§ = new §?!n§();
      }
      
      override protected function initializeLevelItemManager() : §-"4§
      {
         return new §7!r§();
      }
      
      override protected function initializeLevelThemeManager() : §5!6§
      {
         return super.initializeLevelThemeManager();
      }
      
      override protected function initializeLevelMain() : §"h§
      {
         return new §4",§(stage,§'!f§,§ if§,§^!§);
      }
      
      override protected function initializePackageManager() : §%!w§
      {
         return new §1!+§(§^!§,this.§`!<§);
      }
      
      protected function get §-G§() : §1!+§
      {
         return §7,§ as §1!+§;
      }
      
      override protected function resizeViews(param1:int, param2:int) : void
      {
         §4!l§.§&!1§(0,0,param1 - §!m§,param2);
         setViewSize(param1,param2);
         §+h§.setViewSize(param1,param2);
      }
      
      override protected function initializeGame() : void
      {
         super.initializeGame();
         var _loc1_:int = Math.round(getTimer() / 1000);
         §]L§.§0!S§(§%>§.§9"-§,_loc1_.toString(),_loc1_);
      }
      
      public function §1"%§(param1:Boolean) : void
      {
         if(!this.§`!!§ && param1)
         {
            this.§`!!§ = new §0!N§(this.§"!T§);
            §@!H§.openPopup(this.§`!!§);
            §@!H§.setPersistentLayer(§%!T§.§0"1§,true);
         }
         else if(this.§`!!§ && !param1)
         {
            this.§#A§.§[k§.removeEventListeners();
            this.§#A§.§[k§.reset();
            §@!H§.closePopup(§%!T§.§0"1§);
            this.§`!!§ = null;
         }
      }
      
      override public function setFirstGameState() : void
      {
         super.setFirstGameState();
         §8=§(§!s§.§]O§);
      }
      
      public function get §#A§() : §0!N§
      {
         return this.§`!!§;
      }
      
      override protected function getAssetMap() : XML
      {
         return §%!%§.§<!0§(§+!§);
      }
      
      override protected function getUIData() : XML
      {
         var _loc1_:XML = super.getUIData();
         var _loc2_:XML = §%!%§.§<!0§(§7!'§);
         §,Q§.§#g§(_loc2_,_loc1_,["Views","Components"],true);
         return _loc1_;
      }
      
      protected function get §`!<§() : §7!r§
      {
         return §'!f§ as §7!r§;
      }
      
      override protected function getLoadingScreen() : DisplayObjectContainer
      {
         return new LoadingScreenBlack();
      }
      
      override public function getVersionInfo() : String
      {
         return "Client: " + §8B§.replace("{svn_version}","local dev build") + ", " + "Server: " + §<!]§;
      }
      
      override protected function initFonts() : void
      {
         super.initFonts();
         Font.registerFont(AngryBirdsArialMSFont);
      }
      
      override protected function loadItems() : void
      {
         var _loc1_:XML = this.§=x§(§%!%§.§<!0§(§6,§),§%!%§.§<!0§(§>!§));
         §'!f§.loadItems(_loc1_);
      }
      
      private function §=x§(param1:XML, param2:XML) : XML
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
         return §%!%§.§<!0§(§!`§);
      }
      
      public function get §2!V§() : §5l§
      {
         return §^!§;
      }
      
      override protected function initializeLevelManager() : §5l§
      {
         return new §5j§();
      }
      
      public function get §2Z§() : §-!f§
      {
         return §'c§.userProgress as §-!f§;
      }
      
      public function set §2Z§(param1:§-!f§) : void
      {
         §'c§.userProgress = param1;
      }
      
      public function get §"§() : §`!3§
      {
         return this.§"!T§;
      }
      
      public function get §^" §() : §8O§
      {
         return this.§1!c§;
      }
      
      public function get §7!J§() : §0!k§
      {
         return this.§@"§;
      }
      
      public function setSoundsEnabled(param1:Boolean) : void
      {
         var mySO:§"L§ = null;
         var enabled:Boolean = param1;
         §&N§.setSoundsEnabled(enabled);
         try
         {
            mySO = §"L§.getLocal(AngryBirdsCustom.LOCAL_STORAGE_NAME);
            mySO.data.useSounds = enabled;
            mySO.flush();
         }
         catch(e:Error)
         {
         }
      }
   }
}
