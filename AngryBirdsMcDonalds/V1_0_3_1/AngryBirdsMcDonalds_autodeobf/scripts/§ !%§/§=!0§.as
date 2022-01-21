package § !%§
{
   public class §=!0§ extends §!!&§
   {
       
      
      public function §=!0§(param1:§7!>§)
      {
         super(param1);
      }
      
      override public function initializeAnimations(param1:Array) : void
      {
         super.initializeAnimations(param1);
         §`!J§("SUPER_SLINGSHOT",["SLING_SHOT_02_BACK","SLING_SHOT_02_FRONT"]);
         §`!J§("LASER_DOT",["LASER_DOT"]);
      }
      
      override protected function initializeBirdAnimations() : void
      {
         super.initializeBirdAnimations();
         §`!J§("BLOCK_PIG_BALLOON_2",["MISC_BALLOON_GREEN_1","MISC_BALLOON_GREEN_1"]);
         §`!J§("BLOCK_PIG_BALLOON_1",["MISC_BALLOON_PURPLE_1","MISC_BALLOON_GREEN_1"]);
         §@!?§("BIRD_BIG_BROTHER",[["fly",["BIRD_REDBIG_1"]]]);
      }
   }
}
