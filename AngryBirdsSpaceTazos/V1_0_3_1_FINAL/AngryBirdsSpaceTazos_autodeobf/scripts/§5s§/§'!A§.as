package §5s§
{
   import §3R§.§1!R§;
   import §4",§.§,!j§;
   import §>"!§.§@!9§;
   
   public class §'!A§ extends §"m§
   {
       
      
      public function §'!A§(param1:§1!R§, param2:§,!j§)
      {
         super(param1,param2);
      }
      
      override protected function playWinningSoundVictory1() : void
      {
         §@!9§.§"!y§("5");
         §@!9§.playSound("level_clear_military_a" + (1 + int(Math.random() * 2)),"5");
      }
      
      override protected function playWinningSoundVictory2() : void
      {
      }
      
      override protected function playFailSound() : void
      {
         §@!9§.§"!y§("7");
         §@!9§.playSound("level_failed_piglets_a" + (1 + int(Math.random() * 2)),"7");
      }
   }
}
