package §7! §
{
   public class §@L§ extends §6X§
   {
       
      
      public function §@L§(param1:§4n§)
      {
         super(param1);
      }
      
      override public function initializeAnimations(param1:Array) : void
      {
         super.initializeAnimations(param1);
         §9!a§("SUPER_SLINGSHOT",["SLING_SHOT_02_BACK","SLING_SHOT_02_FRONT"]);
         §9!a§("LASER_DOT",["LASER_DOT"]);
      }
      
      override protected function initializeBirdAnimations() : void
      {
         super.initializeBirdAnimations();
         §9!a§("BLOCK_PIG_BALLOON_2",["MISC_BALLOON_GREEN_1","MISC_BALLOON_GREEN_1"]);
         §9!a§("BLOCK_PIG_BALLOON_1",["MISC_BALLOON_PURPLE_1","MISC_BALLOON_GREEN_1"]);
         §=!Q§("BIRD_BIG_BROTHER",[["fly",["BIRD_REDBIG_1"]]]);
      }
   }
}
