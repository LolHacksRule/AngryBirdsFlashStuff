package §5!l§
{
   public class § !e§ extends §!,§
   {
       
      
      public function § !e§(param1:§ !D§)
      {
         super(param1);
      }
      
      override public function initializeAnimations(param1:Array) : void
      {
         super.initializeAnimations(param1);
         §^#§("SUPER_SLINGSHOT",["SLING_SHOT_02_BACK","SLING_SHOT_02_FRONT"]);
         §^#§("LASER_DOT",["LASER_DOT"]);
      }
      
      override protected function initializeBirdAnimations() : void
      {
         super.initializeBirdAnimations();
         §^#§("BLOCK_PIG_BALLOON_2",["MISC_BALLOON_GREEN_1","MISC_BALLOON_GREEN_1"]);
         §^#§("BLOCK_PIG_BALLOON_1",["MISC_BALLOON_PURPLE_1","MISC_BALLOON_GREEN_1"]);
         §3B§("BIRD_BIG_BROTHER",[["fly",["BIRD_REDBIG_1"]]]);
      }
   }
}
