package
{
   import § !T§.§ q§;
   import § !T§.§8!V§;
   import §"r§.§'!j§;
   import §%z§.§6"$§;
   import §%z§.§?8§;
   import §&_§.§9!R§;
   import §&_§.§]s§;
   import §-w§.§3!M§;
   import §-w§.§`"-§;
   import §0!$§.§2!K§;
   import §2W§.§+!d§;
   import §2W§.§2!s§;
   import §2W§.§4L§;
   import §2W§.§7"4§;
   import §3"!§.§&U§;
   import §4!§.§-!q§;
   import §4!§.§[K§;
   import §5u§.§=!U§;
   import §5u§.§^!=§;
   import §6!5§.§&!5§;
   import §6!5§.§,!`§;
   import §6!5§.§1!e§;
   import §6!5§.§2!E§;
   import §6!5§.§2I§;
   import §6!5§.§6!2§;
   import §6!5§.§84§;
   import §6!5§.§=!I§;
   import §6!5§.§=!b§;
   import §6!5§.§^;§;
   import §6!5§.§`"$§;
   import §6!^§.§>m§;
   import §63§.§%!8§;
   import §63§.§2!e§;
   import §63§.§=7§;
   import §63§.§^!!§;
   import §8x§.§]"-§;
   import §?!v§.§ "4§;
   import §?!v§.§[x§;
   import §@!6§.§3!5§;
   import §@&§.§ !E§;
   import §]k§.§ !'§;
   import §]k§.§<S§;
   import com.angrybirds.§6!E§;
   import com.angrybirds.fonts.AngryBirdsArialMSFont;
   import com.angrybirds.utils.§'C§;
   import com.angrybirds.utils.§,!U§;
   import com.angrybirds.utils.§else §;
   import com.rovio.assets.LoadingScreenBlack;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.geom.Rectangle;
   import flash.text.Font;
   import flash.ui.ContextMenu;
   import flash.ui.ContextMenuItem;
   import flash.utils.getTimer;
   
   public class AngryBirdsCustom extends §-!I§
   {
      
      protected static var § Q§:Class = §2!M§;
      
      protected static var §>#§:Class = §<!2§;
      
      private static var §=I§:Class = §@!E§;
      
      protected static var §%!b§:Class = §]a§;
      
      private static var §+!g§:Class = §"!I§;
      
      public static const §#"1§:String = "(r106884)";
      
      public static const §"4§:int = 980;
      
      public static const § !9§:int = 220;
      
      public static const §<N§:int = 570;
      
      public static const LOCAL_STORAGE_NAME:String = "ABNestle";
      
      public static var § !_§:String = "http://head.angrybirds-nestle.appspot.com/";
      
      public static var §'P§:String = "../";
      
      public static const §1!A§:Boolean = true;
       
      
      private var §]"3§:§'C§;
      
      protected var §8O§:§9!R§;
      
      private var §9R§:§=7§;
      
      private var §7j§:§,!U§;
      
      private var §;!B§:§[K§;
      
      private var §!!=§:§-!q§;
      
      public function AngryBirdsCustom(param1:§>m§, param2:String, param3:String)
      {
         if(param2 == null)
         {
            §'P§ = § !_§;
         }
         this.§7j§ = new §,!U§();
         this.§]"3§ = new §'C§(param1.loaderInfo.uncaughtErrorEvents,§#"1§);
         §7"4§.enabled = true;
         §4L§.§2!4§(§7"4§.§],§);
         if(param2 == null)
         {
            param2 = "(Head)";
         }
         if(param2.indexOf(".") >= 0)
         {
            param2 = param2.substring(0,param2.indexOf("."));
         }
         super(param1,param2,param3);
         this.§]"3§.§"%§(§="4§);
         this.§;!B§ = new §[K§();
         this.§!!=§ = new §-!q§();
      }
      
      public static function §>@§(param1:XML) : XML
      {
         return param1;
      }
      
      public static function §[g§() : void
      {
         if(§3!5§.§`!'§("Channel_Theme") == null || !§3!5§.§`!'§("Channel_Theme").§35§())
         {
            §3!5§.§<!9§("ThemeMusic","Channel_Theme",100,0.65);
         }
      }
      
      override protected function initialize() : void
      {
         super.initialize();
         this.§'!9§();
         this.§-2§();
      }
      
      private function §-2§() : void
      {
         var mySO:§else § = null;
         try
         {
            mySO = §else §.getLocal(AngryBirdsCustom.LOCAL_STORAGE_NAME);
            if(mySO.data.useSounds != undefined)
            {
               §-!I§.setSoundsEnabled(mySO.data.useSounds);
            }
         }
         catch(e:Error)
         {
         }
      }
      
      private function §'!9§() : void
      {
         var _loc1_:ContextMenu = new ContextMenu();
         _loc1_.hideBuiltInItems();
         _loc1_.customItems.push(new ContextMenuItem("Client version: " + §#"1§.replace("{svn_version}","local dev build"),false,false));
         _loc1_.customItems.push(new ContextMenuItem("Server version: " + §]-§,false,false));
         canvas.contextMenu = _loc1_;
      }
      
      override protected function initializeManagers() : void
      {
         super.initializeManagers();
         this.§3h§();
      }
      
      override protected function initStateLoad() : §'!j§
      {
         return new §=!I§(§<u§,true,§'!j§.§7w§,1000,stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      override protected function initializeStates() : void
      {
         §+!d§.§]U§ = false;
         §+!d§.§<"5§.§'!f§(§2!K§.§5i§(§+!g§));
         this.§6,§();
         §`1§(new §=!b§(§="4§,§<u§,false));
         §`1§(new §2!E§(§="4§,§<u§,§'K§,false));
         §`1§(new §^;§(§="4§,§<u§,§'K§,false));
         §`1§(new §&!5§(§="4§,§<u§,§'K§,false));
         §`1§(new §`"$§(§="4§,§<u§,§'K§,false));
         §`1§(new §,!`§(§="4§,§<u§,this.§9R§,false));
         §`1§(new §1!e§(§="4§,§<u§,false,§'K§));
         §`1§(new §84§(§="4§,false,§84§.§7w§,§<u§,§'K§));
         §`1§(new §6!2§(§="4§,false,§6!2§.§7w§,§<u§));
         §`1§(new §2I§(§="4§,§<u§,false));
         if(stage.stageWidth != §[M§ || stage.stageHeight != §&!P§)
         {
            §+!-§(null);
         }
      }
      
      private function §6,§() : void
      {
         var _loc1_:String = §]"-§.§6V§("readCookie","c_language") as String;
         if(_loc1_)
         {
            §+!d§.§<"5§.setLanguage(_loc1_);
         }
         else
         {
            §+!d§.§<"5§.setLanguage(§+!d§.§1!s§);
         }
      }
      
      override protected function setupPopupManager() : void
      {
         §-!z§ = new MovieClip();
         §?"5§.stage.addChild(§-!z§);
         §<M§ = new §]s§(§-!z§,§<u§,this);
         §<M§.addEventListener(§&U§.OPEN,§>!K§);
         §<M§.addEventListener(§&U§.CLOSE,§[e§);
         §%0§.userProgress = new §2!e§("",§="4§);
         (§%0§.userProgress as §2!e§).§^!>§();
         §30§ = new §3!M§(§<M§,§%0§,§=!U§.§4!t§,new §`"-§());
         §<M§.addLayer(§=!U§.§<"+§,true,new Rectangle(0,0,-180,0));
         §<M§.addLayer(§=!U§.§4!t§,true,new Rectangle(0,0,0,0));
      }
      
      override protected function initializeUserProgress() : void
      {
         this.§&=§();
      }
      
      private function §3h§() : void
      {
         this.§9R§ = new §=7§();
      }
      
      public function §&=§() : void
      {
         §^!!§.§]!P§ = new §%!8§();
         this.§=! § = new §2!e§("",this.§+!t§);
      }
      
      override protected function initializeLevelItemManager() : §?8§
      {
         return new §6"$§();
      }
      
      override protected function initializeLevelThemeManager() : § !E§
      {
         return super.initializeLevelThemeManager();
      }
      
      override protected function initializeLevelMain() : §<S§
      {
         return new § !'§(stage,§'K§,§," §,§="4§);
      }
      
      override protected function initializePackageManager() : § "4§
      {
         return new §[x§(§="4§,this.§<"'§);
      }
      
      protected function get §!!3§() : §[x§
      {
         return §5!q§ as §[x§;
      }
      
      override protected function resizeViews(param1:int, param2:int) : void
      {
         §6!E§.§0[§(0,0,param1 - § !9§,param2);
         setViewSize(param1,param2);
         §<M§.setViewSize(param1,param2);
      }
      
      override protected function initializeGame() : void
      {
         super.initializeGame();
         var _loc1_:int = Math.round(getTimer() / 1000);
         §4L§.§2!4§(§7"4§.§4!j§,_loc1_.toString(),_loc1_);
      }
      
      public function §%l§(param1:Boolean) : void
      {
         if(!this.§8O§ && param1)
         {
            this.§8O§ = new §9!R§(this.§9R§);
            §@!C§.openPopup(this.§8O§);
            §@!C§.setPersistentLayer(§^!=§.§9!a§,true);
         }
         else if(this.§8O§ && !param1)
         {
            this.§=!F§.§`G§.removeEventListeners();
            this.§=!F§.§`G§.reset();
            §@!C§.closePopup(§^!=§.§9!a§);
            this.§8O§ = null;
         }
      }
      
      override public function setFirstGameState() : void
      {
         super.setFirstGameState();
         §?n§(§2!E§.§7w§);
      }
      
      public function get §=!F§() : §9!R§
      {
         return this.§8O§;
      }
      
      override protected function getAssetMap() : XML
      {
         return §2!K§.§5i§(§ Q§);
      }
      
      override protected function getUIData() : XML
      {
         var _loc1_:XML = super.getUIData();
         var _loc2_:XML = §2!K§.§5i§(§>#§);
         §2!s§.§ ![§(_loc2_,_loc1_,["Views","Components"],true);
         return _loc1_;
      }
      
      protected function get §<"'§() : §6"$§
      {
         return §'K§ as §6"$§;
      }
      
      override protected function getLoadingScreen() : DisplayObjectContainer
      {
         return new LoadingScreenBlack();
      }
      
      override public function getVersionInfo() : String
      {
         return "Client: " + §#"1§.replace("{svn_version}","local dev build") + ", " + "Server: " + §]-§;
      }
      
      override protected function initFonts() : void
      {
         super.initFonts();
         Font.registerFont(AngryBirdsArialMSFont);
      }
      
      override protected function loadItems() : void
      {
         var _loc1_:XML = this.§=!J§(§2!K§.§5i§(§=I§),§2!K§.§5i§(§@p§));
         §'K§.loadItems(_loc1_);
      }
      
      private function §=!J§(param1:XML, param2:XML) : XML
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
         return §2!K§.§5i§(§%!b§);
      }
      
      public function get §+!t§() : § q§
      {
         return §="4§;
      }
      
      override protected function initializeLevelManager() : § q§
      {
         return new §8!V§();
      }
      
      public function get §=! §() : §2!e§
      {
         return §%0§.userProgress as §2!e§;
      }
      
      public function set §=! §(param1:§2!e§) : void
      {
         §%0§.userProgress = param1;
      }
      
      public function get §;"-§() : §=7§
      {
         return this.§9R§;
      }
      
      public function get §5x§() : §,!U§
      {
         return this.§7j§;
      }
      
      public function get §1!!§() : §[K§
      {
         return this.§;!B§;
      }
      
      public function get §<!?§() : §-!q§
      {
         return this.§!!=§;
      }
      
      public function setSoundsEnabled(param1:Boolean) : void
      {
         var mySO:§else § = null;
         var enabled:Boolean = param1;
         §-!I§.setSoundsEnabled(enabled);
         try
         {
            mySO = §else §.getLocal(AngryBirdsCustom.LOCAL_STORAGE_NAME);
            mySO.data.useSounds = enabled;
            mySO.flush();
         }
         catch(e:Error)
         {
         }
      }
   }
}
