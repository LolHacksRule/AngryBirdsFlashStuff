package §&f§
{
   import §1z§.§^!@§;
   import §3!S§.§<5§;
   import §3"#§.§`"8§;
   
   public class §1!J§ extends §<!0§
   {
       
      
      public function §1!J§(param1:§`"8§, param2:§^!@§)
      {
         super(param1,param2);
      }
      
      override protected function playWinningSoundVictory1() : void
      {
         §<5§.§["'§("5");
         §<5§.playSound("level_clear_military_a" + (1 + int(Math.random() * 2)),"5");
      }
      
      override protected function playWinningSoundVictory2() : void
      {
      }
      
      override protected function playFailSound() : void
      {
         §<5§.§["'§("7");
         §<5§.playSound("level_failed_piglets_a" + (1 + int(Math.random() * 2)),"7");
      }
   }
}
