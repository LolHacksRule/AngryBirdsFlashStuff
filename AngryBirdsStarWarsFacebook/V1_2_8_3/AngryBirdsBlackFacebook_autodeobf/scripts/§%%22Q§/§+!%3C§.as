package §%"Q§
{
   import §&!j§.§5#+§;
   import §1v§.§"5§;
   import §1v§.§6@§;
   import §9"U§.§'!;§;
   import §=Z§.§@!8§;
   import §[!H§.§4Z§;
   import §[!H§.§^x§;
   import §`"1§.§=Q§;
   import §null §.§5#§;
   
   public class §+!<§ extends StatePlay
   {
       
      
      public function §+!<§(param1:§5#§, param2:§5#+§, param3:Boolean = true, param4:String = "StatePlay")
      {
         super(param1,param2,param3,param4);
      }
      
      override protected function init() : void
      {
         §^!b§ = new §4Z§(this);
         §^!b§.init(§^x§.§ '§.Views.View_LevelPlayBlack[0]);
      }
      
      override public function activate(param1:String) : void
      {
         §4"#§.singleton.stopThemeMusic();
         super.activate(param1);
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §=Q§.§&"=§();
      }
      
      override protected function playLevelStartSound() : void
      {
         if(§'""§.currentLevel != "boss_trenchrun")
         {
            §=Q§.§5"w§("levelstartmilitarya2");
         }
      }
      
      override protected function addPauseView() : void
      {
         var _loc1_:§'!;§ = §4"#§.singleton.dataModel;
         var _loc2_:§@!8§ = §@!8§(§^!b§.getItemByName("Container_Pause"));
         §,8§ = new §"5§(_loc2_,§'""§,_loc1_,§-1§);
      }
      
      override protected function addPlayView() : void
      {
         var _loc1_:§'!;§ = §4"#§.singleton.dataModel;
         var _loc2_:§@!8§ = §@!8§(§^!b§.getItemByName("Container_Play"));
         §-S§ = new §6@§(_loc2_,§'""§,§3!d§,_loc1_,§-1§);
      }
   }
}
