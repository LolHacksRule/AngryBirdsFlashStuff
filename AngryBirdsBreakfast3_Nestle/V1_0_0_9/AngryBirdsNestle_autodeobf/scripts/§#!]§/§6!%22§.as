package §#!]§
{
   import §!"§.§^!7§;
   import §+!2§.§%!-§;
   import §+!2§.§0!%§;
   import §2!,§.§=>§;
   import §3!0§.§`i§;
   import §7"6§.§^!_§;
   
   public class §6!"§ extends §3_§
   {
      
      public static const §]!y§:String = "LevelEndFailStateRio";
       
      
      private var §#!c§:§=>§;
      
      public function §6!"§(param1:§-g§, param2:Boolean, param3:String, param4:§^!_§)
      {
         super(param1,param2,param3,param4);
         this.§#!c§ = new §=>§(this);
      }
      
      override protected function init() : void
      {
         §4!q§ = new §0!%§(this);
         §4!q§.init(this.§';§());
      }
      
      protected function §';§() : XML
      {
         return §%!-§.§#t§.Views.ViewLevelEndFailCustom[0];
      }
      
      public function §4E§() : String
      {
         return StateEpisodeSelection.§]!y§;
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §-!2§.§7O§.§0!l§.closeAllPopups();
         §-!2§.§7O§.§0!l§.openPopup(this.§#!c§,false,false);
         (§-!2§.§7O§ as AngryBirdsCustom).§6!<§.§%"-§(false);
         (§-!2§.§7O§ as AngryBirdsCustom).§6!<§.§,!a§(false);
      }
      
      override protected function update(param1:Number) : void
      {
         if(nextState.length > 0)
         {
            §`i§.§&!L§.clearLevel();
         }
         this.§#!c§.update(param1);
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      public function §9"&§() : String
      {
         return §6U§.§]!y§;
      }
      
      public function §'!'§() : String
      {
         return §=A§.§]!y§;
      }
      
      public function §]?§(param1:String) : void
      {
         §]a§(param1);
      }
      
      public function get §8S§() : §-g§
      {
         return §#n§;
      }
      
      public function §9`§() : void
      {
         var _loc1_:String = §#n§.getValidLevelId(this.§8S§.getNextLevelId());
         if(§^!7§.§#!,§(_loc1_))
         {
            §#n§.loadLevel(_loc1_);
            §]a§(StateCutScene.§]!y§);
         }
         else
         {
            §]a§(§=A§.§]!y§);
         }
      }
   }
}
