package §&[§
{
   public class §]!4§ extends §0!I§
   {
       
      
      public function §]!4§(param1:§&!m§)
      {
         super(param1);
      }
      
      override public function initializeAnimations(param1:Array) : void
      {
         super.initializeAnimations(param1);
         §`W§("SUPER_SLINGSHOT",["SLING_SHOT_02_BACK","SLING_SHOT_02_FRONT"]);
         §`W§("LASER_DOT",["LASER_DOT"]);
      }
      
      override protected function initializeBirdAnimations() : void
      {
         super.initializeBirdAnimations();
         §`W§("BLOCK_PIG_BALLOON_2",["MISC_BALLOON_GREEN_1","MISC_BALLOON_GREEN_1"]);
         §`W§("BLOCK_PIG_BALLOON_1",["MISC_BALLOON_PURPLE_1","MISC_BALLOON_GREEN_1"]);
         §3!P§("BIRD_BIG_BROTHER",[["fly",["BIRD_REDBIG_1"]]]);
      }
   }
}
