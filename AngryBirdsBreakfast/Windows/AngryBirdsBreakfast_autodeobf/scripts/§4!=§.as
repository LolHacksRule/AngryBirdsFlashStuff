package
{
   import § ^§.§-U§;
   import § ^§.§3!_§;
   import § ^§.§[C§;
   import § ^§.§`!2§;
   import §"n§.§!!G§;
   import §"n§.§+!a§;
   import §"n§.§[!-§;
   import §"n§.§[!e§;
   import §#"&§.§6!F§;
   import §#"&§.§;!"§;
   import §&v§.§#!R§;
   import §&v§.§%!I§;
   import §,C§.§+§;
   import §1T§.§'!c§;
   import §48§.§4L§;
   import §8!K§.§,9§;
   import §8!K§.§5!Y§;
   import §9!`§.§;g§;
   import §;!§.§-!v§;
   import §;!§.§1A§;
   import §;!§.§2!f§;
   import §;!§.§2q§;
   import §;!§.§7!3§;
   import §;!§.§=-§;
   import §;!§.§?!x§;
   import §;!§.§@!C§;
   import §;!§.§^!5§;
   import §;!§.§^!N§;
   import §;!§.§`B§;
   import §=!L§.§4""§;
   import §=!L§.§6&§;
   import §?""§.§`!o§;
   import §?z§.§%r§;
   import §@L§.§ J§;
   import §@L§.§?!'§;
   import §[!i§.§7!Y§;
   import §]0§.§>!R§;
   import com.angrybirds.§&!"§;
   import com.angrybirds.fonts.AngryBirdsArialMSFont;
   import com.rovio.assets.§<V§;
   import com.rovio.assets.LoadingScreenBlack;
   import each.§8!N§;
   import flash.desktop.NativeApplication;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.StageDisplayState;
   import flash.events.KeyboardEvent;
   import flash.text.Font;
   import flash.ui.Keyboard;
   import flash.utils.getTimer;
   
   public class §4!=§ extends §6!!§
   {
      
      protected static var §34§:Class = §3!U§;
      
      protected static var §@W§:Class = §9!a§;
      
      private static var §5]§:Class = §<!o§;
      
      protected static var §6!w§:Class = §?!N§;
      
      private static var §#!1§:Class = §88§;
      
      public static const §[Y§:String = "(r518)";
      
      public static const §`!E§:int = 760;
      
      public static const §`!5§:int = 0;
      
      public static const §'+§:int = 570;
      
      public static var §"l§:String = "ABNestle";
      
      public static var §&%§:String = "http://head.angrybirds-nestle.appspot.com/";
      
      public static var §69§:String = "../";
      
      public static const §-!$§:Boolean = true;
       
      
      private var §7!1§:§>!R§;
      
      private var §86§:Boolean = true;
      
      private var §"N§:§3!_§;
      
      private var §"!-§:Boolean;
      
      public function §4!=§(param1:§`!o§, param2:String, param3:String)
      {
         if(param2 == null)
         {
            §69§ = §&%§;
         }
         var _loc4_:XML;
         var _loc5_:Namespace = (_loc4_ = NativeApplication.nativeApplication.applicationDescriptor).namespace();
         §"l§ = _loc4_._loc5_::id;
         §+!a§.enabled = false;
         §[!-§.§@v§(§+!a§.§]"%§);
         if(param2 == null)
         {
            param2 = "(Head)";
         }
         if(param2.indexOf(".") >= 0)
         {
            param2 = param2.substring(0,param2.indexOf("."));
         }
         super(param1,param2,param3);
         this.§"!-§ = false;
      }
      
      public static function §'!u§(param1:XML) : XML
      {
         var _loc2_:XML = null;
         for each(_loc2_ in param1)
         {
            if(_loc2_.@width)
            {
               _loc2_.@width = §`!E§;
            }
         }
         return param1;
      }
      
      public static function §"!<§() : void
      {
         if(§'!c§.§[!d§("Channel_Theme") == null || !§'!c§.§[!d§("Channel_Theme").§,!V§())
         {
            §'!c§.§3!f§("ThemeMusic","Channel_Theme",100,0.65);
         }
      }
      
      override protected function onKeyDown(param1:KeyboardEvent) : void
      {
         super.onKeyDown(param1);
         switch(param1.keyCode)
         {
            case Keyboard.S:
               this.§<=§(!this.§86§);
               (§6!!§.singleton as §4!=§).§>E§.updateMuteButtonState();
         }
      }
      
      public function get soundsEnabled() : Boolean
      {
         return this.§86§;
      }
      
      override protected function initialize() : void
      {
         super.initialize();
      }
      
      override protected function initializeManagers() : void
      {
         super.initializeManagers();
      }
      
      override protected function initStateLoad() : §%r§
      {
         return new §2!f§(§@!>§,true,§%r§.§-!q§,1000,stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      override protected function initializeStates() : void
      {
         §!!G§.§8!M§ = false;
         §!!G§.§2Z§.§+3§(§8!N§.§?!c§(§#!1§));
         §!!G§.§2Z§.setLanguage(§!!G§.§-!N§);
         §7p§(new §^!5§(§&" §,§@!>§,false));
         §7p§(new §^!N§(§&" §,§@!>§,§@!H§,false));
         §7p§(new §1A§(§&" §,§@!>§,false));
         §7p§(new §`B§(§&" §,§@!>§,§@!H§,false));
         §7p§(new §2q§(§&" §,§@!>§,§@!H§,false));
         §7p§(new §-!v§(§&" §,§@!>§,§@!H§,false));
         §7p§(new §7!3§(§&" §,§@!>§,false,§@!H§));
         §7p§(new §=-§(§&" §,false,§=-§.§-!q§,§@!>§,§@!H§));
         §7p§(new §@!C§(§&" §,false,§@!C§.§-!q§,§@!>§));
         §7p§(new §?!x§(§&" §,§@!>§,false));
         if(stage.stageWidth != §+g§ || stage.stageHeight != §=!?§)
         {
            §@Q§(null);
         }
      }
      
      override protected function setupPopupManager() : void
      {
         §8!^§ = new MovieClip();
         §!!U§.stage.addChild(§8!^§);
         §-G§ = new §7!Y§(§8!^§,§@!>§,this,§`!E§,§'+§);
         §-G§.addEventListener(§;g§.OPEN,§ !U§);
         §-G§.addEventListener(§;g§.CLOSE,§`=§);
         §^!8§.userProgress = new §-U§("",§&" §);
         (§^!8§.userProgress as §-U§).§&^§();
         §+"0§ = new §6&§(§-G§,§^!8§,§4L§.§[1§,new §4""§());
      }
      
      override protected function initializeUserProgress() : void
      {
         this.§7"$§();
      }
      
      private function §+?§() : void
      {
         this.§"N§ = new §3!_§();
      }
      
      public function §7"$§() : void
      {
         §`!2§.§9!&§ = new §[C§();
      }
      
      override protected function initializeLevelItemManager() : §#!R§
      {
         return new §%!I§();
      }
      
      override protected function initializeLevelThemeManager() : §+§
      {
         return super.initializeLevelThemeManager();
      }
      
      override protected function initializeLevelMain() : §?!'§
      {
         return new § J§(stage,§@!H§,§9,§,§&" §);
      }
      
      override protected function initializePackageManager() : §6!F§
      {
         return new §;!"§(§&" §,this.§+!i§);
      }
      
      protected function get §]!1§() : §;!"§
      {
         return §3&§ as §;!"§;
      }
      
      override protected function resizeViews(param1:int, param2:int) : void
      {
         §&!"§.§4!_§(0,0,param1,param2);
         setViewSize(param1,param2);
         §-G§.setViewSize(param1,param2);
      }
      
      override protected function initializeGame() : void
      {
         super.initializeGame();
         var _loc1_:int = Math.round(getTimer() / 1000);
         §[!-§.§@v§(§+!a§.§%"§,_loc1_.toString(),_loc1_);
      }
      
      override public function setFirstGameState() : void
      {
         if(§<V§.§;"'§("ViewLanguageSelection"))
         {
            super.setFirstGameState();
            §<f§(§^!N§.§-!q§);
         }
      }
      
      override protected function getAssetMap() : XML
      {
         return §8!N§.§?!c§(§34§);
      }
      
      override protected function getUIData() : XML
      {
         var _loc1_:XML = super.getUIData();
         var _loc2_:XML = §8!N§.§?!c§(§@W§);
         §[!e§.§[!4§(_loc2_,_loc1_,["Views","Components"],true);
         return _loc1_;
      }
      
      protected function get §+!i§() : §%!I§
      {
         return §@!H§ as §%!I§;
      }
      
      override protected function getLoadingScreen() : DisplayObjectContainer
      {
         return new LoadingScreenBlack();
      }
      
      override public function getVersionInfo() : String
      {
         return "Client: " + §[Y§.replace("{svn_version}","local dev build") + ", " + "Server: " + §=!N§;
      }
      
      override protected function initFonts() : void
      {
         super.initFonts();
         Font.registerFont(AngryBirdsArialMSFont);
      }
      
      override protected function loadItems() : void
      {
         var _loc1_:XML = this.§ !6§(§8!N§.§?!c§(§5]§),§8!N§.§?!c§(§!!@§));
         §@!H§.loadItems(_loc1_);
      }
      
      private function § !6§(param1:XML, param2:XML) : XML
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
         return §8!N§.§?!c§(§6!w§);
      }
      
      public function get §@!R§() : §5!Y§
      {
         return §&" §;
      }
      
      override protected function initializeLevelManager() : §5!Y§
      {
         return new §,9§();
      }
      
      public function get §?!b§() : §-U§
      {
         if(§^!8§ && §^!8§.userProgress)
         {
            return §^!8§.userProgress as §-U§;
         }
         return null;
      }
      
      public function set §?!b§(param1:§-U§) : void
      {
         §^!8§.userProgress = param1;
      }
      
      public function get §#!'§() : §3!_§
      {
         return this.§"N§;
      }
      
      public function §<=§(param1:Boolean) : void
      {
         §'!c§.§,!O§(param1);
         this.§86§ = param1;
      }
      
      public function §5@§() : void
      {
         this.§86§ = !this.§86§;
         §'!c§.§,!O§(this.§86§);
         (§6!!§.singleton as §4!=§).§?!b§.§<=§(this.§86§);
      }
      
      public function §=D§(param1:Boolean) : void
      {
         this.§"!-§ = param1;
      }
      
      public function §"!L§() : Boolean
      {
         return this.§"!-§;
      }
      
      public function §0Q§() : void
      {
         NativeApplication.nativeApplication.exit();
      }
      
      public function §?!l§() : void
      {
         (§!!U§ as AngryBirdsCustomCanvas).§!"-§();
      }
      
      public function §&!N§() : Boolean
      {
         if(stage.displayState == StageDisplayState.NORMAL)
         {
            return false;
         }
         return true;
      }
   }
}
