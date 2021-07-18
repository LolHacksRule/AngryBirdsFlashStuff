package § M§
{
   import §'4§.§^g§;
   import §3"#§.§<!O§;
   import §`!j§.§9"!§;
   
   public class §!V§ extends §]o§
   {
       
      
      public function §!V§(param1:§^g§, param2:§9"!§)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            super(param1,param2);
         }
      }
      
      override protected function playWinningSoundVictory1() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            §<!O§.§,!z§("5");
         }
         do
         {
            §<!O§.playSound("level_clear_military_a" + (1 + int(Math.random() * 2)),"5");
         }
         while(_loc1_ && this);
         
      }
      
      override protected function playWinningSoundVictory2() : void
      {
      }
      
      override protected function playFailSound() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §<!O§.§,!z§("7");
            do
            {
               §<!O§.playSound("level_failed_piglets_a" + (1 + int(Math.random() * 2)),"7");
            }
            while(_loc1_ && this);
            
         }
      }
   }
}
