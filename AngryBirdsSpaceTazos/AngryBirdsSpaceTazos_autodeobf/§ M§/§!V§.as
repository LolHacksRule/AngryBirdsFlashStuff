package § M§
{
   import §'4§.§^g§;
   import §3"#§.§<!O§;
   import §`!j§.§9"!§;
   
   public class §!V§ extends §]o§
   {
       
      
      public function §!V§(param1:§^g§, param2:§9"!§)
      {
         super(param1,param2);
      }
      
      override protected function playWinningSoundVictory1() : void
      {
         §<!O§.§,!z§("5");
         §<!O§.playSound("level_clear_military_a" + (1 + int(Math.random() * 2)),"5");
      }
      
      override protected function playWinningSoundVictory2() : void
      {
      }
      
      override protected function playFailSound() : void
      {
         §<!O§.§,!z§("7");
         §<!O§.playSound("level_failed_piglets_a" + (1 + int(Math.random() * 2)),"7");
      }
   }
}
