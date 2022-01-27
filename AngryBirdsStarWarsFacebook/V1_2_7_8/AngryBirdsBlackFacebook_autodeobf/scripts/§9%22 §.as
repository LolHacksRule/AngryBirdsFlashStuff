package
{
   import §!X§.§ H§;
   import §!X§.§'!+§;
   import §!X§.§'!X§;
   import §!X§.§+!>§;
   import §!X§.§,!A§;
   import §!X§.§0",§;
   import §!X§.§1"P§;
   import §!X§.§22§;
   import §!X§.§5+§;
   import §!X§.§7"@§;
   import §!X§.§7"Q§;
   import §!X§.§?![§;
   import §+"f§.§+!0§;
   import §+"f§.§[#+§;
   import §,#+§.§7!m§;
   import §,#+§.§;"y§;
   import §0"I§.§[Y§;
   import §0"I§.§^!9§;
   import §1G§.§7m§;
   import §5!q§.§%b§;
   import §5!q§.§3"X§;
   import §7"l§.§[!0§;
   import §7A§.§7!a§;
   import §7A§.§@!A§;
   import §>P§.§!!O§;
   import §>P§.§+"o§;
   import §>P§.§5"3§;
   import §`"8§.§%"?§;
   import §`"8§.§>t§;
   import com.rovio.assets.LoadingScreenBlack;
   import flash.display.DisplayObjectContainer;
   
   public class §9" § extends §;"@§
   {
      
      protected static var §+!m§:Class = §9!L§;
      
      protected static var §#;§:Class = §%t§;
      
      protected static var §2x§:Class = §'#-§;
      
      protected static var §2!4§:Class = §^!g§;
       
      
      protected var §]8§:§[#+§;
      
      public function §9" §(param1:§7m§, param2:String, param3:String)
      {
         super(param1,param2,param3);
      }
      
      override protected function initStateLoad() : §[!0§
      {
         return new §'!+§(§!# §,true,§[!0§.§'#2§,1000,stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      override protected function initializeStates() : void
      {
         §;"g§(new §+!>§(§ !p§,§5"3§(§#"§),§!# §,false));
         §;"g§(new §'!X§(§ !p§,§!# §,false));
         §;"g§(new §1"P§(§ !p§,§!# §,false));
         §;"g§(new §0",§(§ !p§,§!# §,false));
         §;"g§(new § H§(§ !p§,§!# §,false));
         §;"g§(new §?![§(§ !p§,§!# §,false));
         §;"g§(new §,!A§(§ !p§,§!# §,false));
         §;"g§(new §22§(§ !p§,§!# §,false));
         §;"g§(new §7"Q§(§ !p§,§!# §,false));
         §;"g§(new §7"@§(§ !p§,§!# §,false));
         if(stage.stageWidth != screenWidth || stage.stageHeight != screenHeight)
         {
            §!!P§(null);
         }
      }
      
      override protected function initializeLevelItemManager() : §!!O§
      {
         return new §+"o§();
      }
      
      override protected function initializeLevelThemeManager() : §+!0§
      {
         if(!this.§]8§)
         {
            this.§]8§ = new §[#+§();
         }
         return this.§]8§;
      }
      
      override protected function initializeLevelManager() : §7!m§
      {
         return new §;"y§();
      }
      
      override protected function initializeLevelMain() : §3"X§
      {
         return new §%b§(stage,§#"§,§ G§,§ !p§);
      }
      
      override protected function initializePackageManager() : §%"?§
      {
         return new §>t§(§ !p§,this.§&!,§);
      }
      
      protected function get §1!f§() : §>t§
      {
         return §`"-§ as §>t§;
      }
      
      override protected function loadItems() : void
      {
         var _loc2_:String = null;
         this.§&!,§.§&"u§(this.§1!f§.§>!U§());
         this.§&!,§.§%!u§(this.§1!f§.§'P§(),this.§1!f§.§>!v§());
         this.§&!,§.§>w§(this.§1!f§.§]!"§());
         this.§&!,§.§2!u§(§7!a§.§[!V§(this.§1!f§.§?!9§()).levelGoals);
         this.§&!,§.§2!u§(§7!a§.§[!V§(this.§1!f§.§69§()).bossObjects);
         this.§&!,§.§&a§(this.§1!f§.§8Z§());
         this.§&!,§.§&a§(this.§1!f§.§^",§());
         var _loc1_:int = this.§1!f§.§'"+§ - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§1!f§.§[!X§(_loc1_);
            this.§&!,§.§!h§(_loc2_);
            _loc1_--;
         }
         §;"y§(§ !p§).§^!M§(this.§1!f§.§"x§(),this.§&!,§,§%b§.§#"U§.getValue());
      }
      
      override protected function initializeGame() : void
      {
         super.initializeGame();
      }
      
      override protected function loadBackgrounds() : void
      {
         this.§]8§.§+l§(§[!N§().Backgrounds);
         this.§]8§.loadBackgroundsLua(this.§9"A§());
      }
      
      override public function setFirstGameState() : void
      {
         super.setFirstGameState();
         §0"B§(§5+§.§'#2§);
      }
      
      protected function §9"A§() : String
      {
         return §[Y§.§-^§(§2!4§);
      }
      
      override protected function getAssetMap() : XML
      {
         return §^!9§.§-^§(§+!m§);
      }
      
      override protected function getUIData() : XML
      {
         var _loc1_:XML = super.getUIData();
         var _loc2_:XML = §^!9§.§-^§(§#;§);
         §@!A§.§`6§(_loc2_,_loc1_,["Views","Components"],true);
         return _loc1_;
      }
      
      override protected function getPopupData() : XML
      {
         var _loc1_:XML = super.getPopupData();
         var _loc2_:XML = §^!9§.§-^§(§2x§);
         §@!A§.§`6§(_loc2_,_loc1_,["Popups"],true);
         return _loc1_;
      }
      
      protected function get §&!,§() : §+"o§
      {
         return §#"§ as §+"o§;
      }
      
      override protected function getLoadingScreen() : DisplayObjectContainer
      {
         return new LoadingScreenBlack();
      }
   }
}
