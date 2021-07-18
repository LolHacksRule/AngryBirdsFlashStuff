package §<"c§
{
   import §+D§.§ #^§;
   import §,"N§.§@>§;
   import §7!$§.§&$§;
   import §7!$§.§]#[§;
   import §;!W§.§%,§;
   import §;!W§.§5!b§;
   import §="2§.§?!r§;
   import §>@§.§5"H§;
   import §?m§.§+"2§;
   
   public class §6"a§ extends StatePlay
   {
       
      
      public function §6"a§(param1:§+"2§, param2:§5"H§, param3:Boolean = true, param4:String = "StatePlay")
      {
         super(param1,param2,param3,param4);
      }
      
      override protected function init() : void
      {
         §@;§ = new §]#[§(this);
         §@;§.init(§&$§.§@8§.Views.View_LevelPlayBlack[0]);
      }
      
      override public function activate(param1:String) : void
      {
         §4#;§.singleton.stopThemeMusic();
         super.activate(param1);
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §?!r§.§9"4§();
      }
      
      override protected function playLevelStartSound() : void
      {
         if(§+!b§.currentLevel != "boss_trenchrun")
         {
            §?!r§.§]!H§("levelstartmilitarya2");
         }
      }
      
      override protected function addPauseView() : void
      {
         var _loc1_:§@>§ = §4#;§.singleton.dataModel;
         var _loc2_:§ #^§ = § #^§(§@;§.getItemByName("Container_Pause"));
         §2!j§ = new §5!b§(_loc2_,§+!b§,_loc1_,§^"N§);
      }
      
      override protected function addPlayView() : void
      {
         var _loc1_:§@>§ = §4#;§.singleton.dataModel;
         var _loc2_:§ #^§ = § #^§(§@;§.getItemByName("Container_Play"));
         §?#M§ = new §%,§(_loc2_,§+!b§,§ F§,_loc1_,§^"N§);
      }
   }
}
