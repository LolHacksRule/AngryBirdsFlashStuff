package §<"9§
{
   import §9!G§.§"!S§;
   import §;!0§.;
   import §?!<§.§'!1§;
   
   public class §@x§ extends §9!_§
   {
       
      
      public function §@x§(param1:§'!1§, param2:§#2§)
      {
         super(param1,param2);
      }
      
      override protected function playWinningSoundVictory1() : void
      {
         §"!S§.§]R§("5");
         §"!S§.playSound("level_clear_military_a" + (1 + int(Math.random() * 2)),"5");
      }
      
      override protected function playWinningSoundVictory2() : void
      {
      }
      
      override protected function playFailSound() : void
      {
         §"!S§.§]R§("7");
         §"!S§.playSound("level_failed_piglets_a" + (1 + int(Math.random() * 2)),"7");
      }
   }
}
