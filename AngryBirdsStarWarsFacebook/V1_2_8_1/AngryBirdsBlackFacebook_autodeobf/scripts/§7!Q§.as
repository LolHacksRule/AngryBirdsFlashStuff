package
{
   import §"§.§;!E§;
   import §"§.§`#&§;
   import §#g§.§2"m§;
   import §#g§.§>"-§;
   import §#g§.§]4§;
   import §%"Q§.§&!I§;
   import §%"Q§.§&"L§;
   import §%"Q§.§'!V§;
   import §%"Q§.§'!d§;
   import §%"Q§.§+!<§;
   import §%"Q§.§,L§;
   import §%"Q§.§,S§;
   import §%"Q§.§5R§;
   import §%"Q§.§7!>§;
   import §%"Q§.§<"B§;
   import §%"Q§.§<'§;
   import §%"Q§.§>"+§;
   import §+d§.§@h§;
   import §+d§.§^!Y§;
   import §9"U§.§8"<§;
   import §9"U§.§9U§;
   import §9"`§.§<e§;
   import §9"`§.§]"9§;
   import §9&§.§@"K§;
   import §9§.§3!?§;
   import §`!v§.§5!R§;
   import §`!v§.§]"z§;
   import com.rovio.assets.LoadingScreenBlack;
   import flash.display.DisplayObjectContainer;
   import §null §.§ #$§;
   import §null §.§5#§;
   
   public class §7!Q§ extends §4"#§
   {
      
      protected static var §5!6§:Class = §`"c§;
      
      protected static var §["B§:Class = §;"§;
      
      protected static var §<3§:Class = §+!3§;
      
      protected static var §,$§:Class = §>]§;
       
      
      protected var §44§:§]"z§;
      
      public function §7!Q§(param1:§@"K§, param2:String, param3:String)
      {
         super(param1,param2,param3);
      }
      
      override protected function initStateLoad() : §3!?§
      {
         return new §5R§(§1!L§,true,§3!?§.§-!U§,1000,stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      override protected function initializeStates() : void
      {
         §^!%§(new §'!d§(§'""§,§>"-§(§7W§),§1!L§,false));
         §^!%§(new §<'§(§'""§,§1!L§,false));
         §^!%§(new §&!I§(§'""§,§1!L§,false));
         §^!%§(new §,L§(§'""§,§1!L§,false));
         §^!%§(new §+!<§(§'""§,§1!L§,false));
         §^!%§(new §<"B§(§'""§,§1!L§,false));
         §^!%§(new §&"L§(§'""§,§1!L§,false));
         §^!%§(new §7!>§(§'""§,§1!L§,false));
         §^!%§(new §,S§(§'""§,§1!L§,false));
         §^!%§(new §>"+§(§'""§,§1!L§,false));
         if(stage.stageWidth != screenWidth || stage.stageHeight != screenHeight)
         {
            §?<§(null);
         }
      }
      
      override protected function initializeLevelItemManager() : §2"m§
      {
         return new §]4§();
      }
      
      override protected function initializeLevelThemeManager() : §5!R§
      {
         if(!this.§44§)
         {
            this.§44§ = new §]"z§();
         }
         return this.§44§;
      }
      
      override protected function initializeLevelManager() : §5#§
      {
         return new § #$§();
      }
      
      override protected function initializeLevelMain() : §;!E§
      {
         return new §`#&§(stage,§7W§,§+!X§,§'""§);
      }
      
      override protected function initializePackageManager() : §9U§
      {
         return new §8"<§(§'""§,this.§^!P§);
      }
      
      protected function get §&z§() : §8"<§
      {
         return §&"a§ as §8"<§;
      }
      
      override protected function loadItems() : void
      {
         var _loc2_:String = null;
         this.§^!P§.§6!8§(this.§&z§.§-#2§());
         this.§^!P§.§%"K§(this.§&z§.§`#-§(),this.§&z§.§="@§());
         this.§^!P§.§8!>§(this.§&z§.§^!J§());
         this.§^!P§.§@!z§(§^!Y§.§&S§(this.§&z§.§?"S§()).levelGoals);
         this.§^!P§.§@!z§(§^!Y§.§&S§(this.§&z§.§@!M§()).bossObjects);
         this.§^!P§.§1"J§(this.§&z§.§#"'§());
         this.§^!P§.§1"J§(this.§&z§.§"8§());
         var _loc1_:int = this.§&z§.§@"]§ - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§&z§.§<"#§(_loc1_);
            this.§^!P§.§>!;§(_loc2_);
            _loc1_--;
         }
         § #$§(§'""§).§?^§(this.§&z§.§-#4§(),this.§^!P§,§`#&§.§!"Z§.getValue());
      }
      
      override protected function initializeGame() : void
      {
         super.initializeGame();
      }
      
      override protected function loadBackgrounds() : void
      {
         this.§44§.§+!G§(§[#-§().Backgrounds);
         this.§44§.loadBackgroundsLua(this.§@^§());
      }
      
      override public function setFirstGameState() : void
      {
         super.setFirstGameState();
         §`0§(§'!V§.§-!U§);
      }
      
      protected function §@^§() : String
      {
         return §<e§.§#§(§,$§);
      }
      
      override protected function getAssetMap() : XML
      {
         return §]"9§.§#§(§5!6§);
      }
      
      override protected function getUIData() : XML
      {
         var _loc1_:XML = super.getUIData();
         var _loc2_:XML = §]"9§.§#§(§["B§);
         §@h§.§%#2§(_loc2_,_loc1_,["Views","Components"],true);
         return _loc1_;
      }
      
      override protected function getPopupData() : XML
      {
         var _loc1_:XML = super.getPopupData();
         var _loc2_:XML = §]"9§.§#§(§<3§);
         §@h§.§%#2§(_loc2_,_loc1_,["Popups"],true);
         return _loc1_;
      }
      
      protected function get §^!P§() : §]4§
      {
         return §7W§ as §]4§;
      }
      
      override protected function getLoadingScreen() : DisplayObjectContainer
      {
         return new LoadingScreenBlack();
      }
   }
}
