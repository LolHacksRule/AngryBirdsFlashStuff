package §!X§
{
   import §""d§.§,m§;
   import §'+§.§="B§;
   import §,"v§.§@§;
   import §,#+§.§7!m§;
   import §1!X§.§@Q§;
   import §1!X§.§["%§;
   import §^!`§.§%n§;
   import §^!`§.§6"!§;
   import §`"8§.§4"K§;
   
   public class § H§ extends StatePlay
   {
       
      
      public function § H§(param1:§7!m§, param2:§="B§, param3:Boolean = true, param4:String = "StatePlay")
      {
         super(param1,param2,param3,param4);
      }
      
      override protected function init() : void
      {
         §>I§ = new §6"!§(this);
         §>I§.init(§%n§.§ set§.Views.View_LevelPlayBlack[0]);
      }
      
      override public function activate(param1:String) : void
      {
         §;"@§.singleton.stopThemeMusic();
         super.activate(param1);
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §@§.§@!D§();
      }
      
      override protected function playLevelStartSound() : void
      {
         if(§ !p§.currentLevel != "boss_trenchrun")
         {
            §@§.§9!5§("levelstartmilitarya2");
         }
      }
      
      override protected function addPauseView() : void
      {
         var _loc1_:§4"K§ = §;"@§.singleton.dataModel;
         var _loc2_:§,m§ = §,m§(§>I§.getItemByName("Container_Pause"));
         §<"6§ = new §@Q§(_loc2_,§ !p§,_loc1_,§8-§);
      }
      
      override protected function addPlayView() : void
      {
         var _loc1_:§4"K§ = §;"@§.singleton.dataModel;
         var _loc2_:§,m§ = §,m§(§>I§.getItemByName("Container_Play"));
         §]"+§ = new §["%§(_loc2_,§ !p§,§^!!§,_loc1_,§8-§);
      }
   }
}
