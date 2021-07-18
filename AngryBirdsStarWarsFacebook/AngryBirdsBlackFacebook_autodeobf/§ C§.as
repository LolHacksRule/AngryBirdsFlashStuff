package
{
   import § §.§3Q§;
   import §,"N§.§'#E§;
   import §,"N§.§0#F§;
   import §0!=§.§'"]§;
   import §1!i§.§1"9§;
   import §1!i§.§7#&§;
   import §2"Y§.§"#`§;
   import §2"Y§.§,§;
   import §2"Y§.§>"X§;
   import §5t§.§>"p§;
   import §5t§.§]"Y§;
   import §69§.§!!u§;
   import §69§.§4!y§;
   import §<"c§.§ §;
   import §<"c§.§""o§;
   import §<"c§.§"C§;
   import §<"c§.§&"3§;
   import §<"c§.§+!n§;
   import §<"c§.§1#"§;
   import §<"c§.§3>§;
   import §<"c§.§6"a§;
   import §<"c§.§7"i§;
   import §<"c§.§9§;
   import §<"c§.§9U§;
   import §<"c§.§`!O§;
   import §?m§.§+"2§;
   import §?m§.§,"X§;
   import §^#>§.§#_§;
   import §^#>§.§'6§;
   import com.rovio.assets.LoadingScreenBlack;
   import flash.display.DisplayObjectContainer;
   
   public class § C§ extends §4#;§
   {
      
      protected static var §#!2§:Class = §]!S§;
      
      protected static var §?#J§:Class = §<"J§;
      
      protected static var §0"j§:Class = §&3§;
      
      protected static var §3m§:Class = §3!_§;
       
      
      protected var §"!j§:§4!y§;
      
      public function § C§(param1:§'"]§, param2:String, param3:String)
      {
         super(param1,param2,param3);
      }
      
      override protected function initStateLoad() : §3Q§
      {
         return new §1#"§(§4#,§,true,§3Q§.§^!7§,1000,stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      override protected function initializeStates() : void
      {
         §7![§(new §9#5§(§+!b§,§>"X§(§?4§),§4#,§,false));
         §7![§(new §+!n§(§+!b§,§4#,§,false));
         §7![§(new §9U§(§+!b§,§4#,§,false));
         §7![§(new §3>§(§+!b§,§4#,§,false));
         §7![§(new §6"a§(§+!b§,§4#,§,false));
         §7![§(new §""o§(§+!b§,§4#,§,false));
         §7![§(new § #4§(§+!b§,§4#,§,false));
         §7![§(new §7"i§(§+!b§,§4#,§,false));
         §7![§(new §&"3§(§+!b§,§4#,§,false));
         §7![§(new §`!O§(§+!b§,§4#,§,false));
         if(stage.stageWidth != screenWidth || stage.stageHeight != screenHeight)
         {
            §=_§(null);
         }
      }
      
      override protected function initializeLevelItemManager() : §,#5§
      {
         return new §"#`§();
      }
      
      override protected function initializeLevelThemeManager() : §!!u§
      {
         if(!this.§"!j§)
         {
            this.§"!j§ = new §4!y§();
         }
         return this.§"!j§;
      }
      
      override protected function initializeLevelManager() : §+"2§
      {
         return new §,"X§();
      }
      
      override protected function initializeLevelMain() : §#_§
      {
         return new §'6§(stage,§?4§,§?"1§,§+!b§);
      }
      
      override protected function initializePackageManager() : §'#E§
      {
         return new §0#F§(§+!b§,this.§false§);
      }
      
      protected function get §9!n§() : §0#F§
      {
         return §6"v§ as §0#F§;
      }
      
      override protected function loadItems() : void
      {
         var _loc2_:String = null;
         this.§false§.§%"W§(this.§9!n§.§1"2§());
         this.§false§.§'#P§(this.§9!n§.§'#!§(),this.§9!n§.§7"Z§());
         this.§false§.§5l§(this.§9!n§.§3F§());
         this.§false§.§""9§(§7#&§.§06§(this.§9!n§.§]"j§()).levelGoals);
         this.§false§.§""9§(§7#&§.§06§(this.§9!n§.§3!i§()).bossObjects);
         this.§false§.§ !y§(this.§9!n§.§8"7§());
         this.§false§.§ !y§(this.§9!n§.§,! §());
         var _loc1_:int = this.§9!n§.§8#;§ - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§9!n§.§""d§(_loc1_);
            this.§false§.§9!e§(_loc2_);
            _loc1_--;
         }
         §,"X§(§+!b§).§0w§(this.§9!n§.§,m§(),this.§false§,§'6§.§#!B§.getValue());
      }
      
      override protected function initializeGame() : void
      {
         super.initializeGame();
      }
      
      override protected function loadBackgrounds() : void
      {
         this.§"!j§.§7-§(§6"!§().Backgrounds);
         this.§"!j§.loadBackgroundsLua(this.§^"e§());
      }
      
      override public function setFirstGameState() : void
      {
         super.setFirstGameState();
         § g§(§"C§.§^!7§);
      }
      
      protected function §^"e§() : String
      {
         return §]"Y§.§ !Q§(§3m§);
      }
      
      override protected function getAssetMap() : XML
      {
         return §>"p§.§ !Q§(§#!2§);
      }
      
      override protected function getUIData() : XML
      {
         var _loc1_:XML = super.getUIData();
         var _loc2_:XML = §>"p§.§ !Q§(§?#J§);
         §1"9§.§;!P§(_loc2_,_loc1_,["Views","Components"],true);
         return _loc1_;
      }
      
      override protected function getPopupData() : XML
      {
         var _loc1_:XML = super.getPopupData();
         var _loc2_:XML = §>"p§.§ !Q§(§0"j§);
         §1"9§.§;!P§(_loc2_,_loc1_,["Popups"],true);
         return _loc1_;
      }
      
      protected function get §false§() : §"#`§
      {
         return §?4§ as §"#`§;
      }
      
      override protected function getLoadingScreen() : DisplayObjectContainer
      {
         return new LoadingScreenBlack();
      }
   }
}
