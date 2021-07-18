package §1n§
{
   public class §4!>§ extends §,!0§
   {
       
      
      public function §4!>§(param1:§5#§)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            super(param1);
         }
      }
      
      override public function initializeAnimations(param1:Array) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            super.initializeAnimations(param1);
         }
         loop0:
         while(true)
         {
            §#!%§("POWERUP_BOMB",["POWERUP_DROP_01"]);
            loop1:
            while(true)
            {
               §#!%§("POWERUP_BOMB_PARACHUTE",["POWERUP_DROP_02"]);
               addr75:
               while(_loc2_)
               {
                  §#!%§("SUPER_SLINGSHOT",["SLING_SHOT_02_BACK","SLING_SHOT_02_FRONT"]);
                  continue loop1;
               }
               continue loop0;
            }
         }
      }
      
      override protected function initializeBirdAnimations() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            super.initializeBirdAnimations();
         }
      }
   }
}
