package §1!c§
{
   import §%!B§.§0![§;
   import §'!3§.§?W§;
   import §,M§.§+f§;
   import §0!m§.§@!S§;
   import §1`§.§7I§;
   import §1`§.§9%§;
   import §4[§.§2P§;
   
   public class §;"2§ extends §7X§
   {
      
      public static const §8"%§:String = "LevelEndFailStateRio";
       
      
      private var §>o§:§?W§;
      
      public function §;"2§(param1:§0![§, param2:Boolean, param3:String, param4:§+f§)
      {
         super(param1,param2,param3,param4);
         this.§>o§ = new §?W§(this);
      }
      
      override protected function init() : void
      {
         §^!T§ = new §9%§(this);
         §^!T§.init(this.§'!,§());
      }
      
      protected function §'!,§() : XML
      {
         return §7I§.§7!%§.Views.ViewLevelEndFailCustom[0];
      }
      
      public function §0!W§() : String
      {
         return StateEpisodeSelection.§8"%§;
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         § !4§.§%"7§.§+!J§.closeAllPopups();
         § !4§.§%"7§.§+!J§.openPopup(this.§>o§,false,false);
         (§ !4§.§%"7§ as AngryBirdsCustom).§<=§.§2!J§(false);
         (§ !4§.§%"7§ as AngryBirdsCustom).§<=§.§9!z§(false);
      }
      
      override protected function update(param1:Number) : void
      {
         if(nextState.length > 0)
         {
            §@!S§.§2A§.clearLevel();
         }
         this.§>o§.update(param1);
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      public function §9!"§() : String
      {
         return §'8§.§8"%§;
      }
      
      public function §'!#§() : String
      {
         return §^j§.§8"%§;
      }
      
      public function §'l§(param1:String) : void
      {
         §7"6§(param1);
      }
      
      public function get §[!,§() : §0![§
      {
         return §4a§;
      }
      
      public function §,"#§() : void
      {
         var _loc1_:String = §4a§.getValidLevelId(this.§[!,§.getNextLevelId());
         if(§2P§.§0!a§(_loc1_))
         {
            §4a§.loadLevel(_loc1_);
            §7"6§(StateCutScene.§8"%§);
         }
         else
         {
            §7"6§(§^j§.§8"%§);
         }
      }
   }
}
