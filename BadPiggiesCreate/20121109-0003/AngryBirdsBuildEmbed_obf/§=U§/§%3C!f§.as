package §=U§
{
   public class §<!f§ extends §&!U§
   {
       
      
      public function §<!f§(param1:§3p§)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            super(param1);
         }
      }
      
      override public function initializeAnimations(param1:Array) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            super.initializeAnimations(param1);
            if(!(_loc2_ && this))
            {
               §'r§("POWERUP_BOMB",["POWERUP_DROP_01"]);
               if(!(_loc2_ && param1))
               {
                  §'r§("POWERUP_BOMB_PARACHUTE",["POWERUP_DROP_02"]);
                  if(_loc3_)
                  {
                     addr68:
                     §'r§("SUPER_SLINGSHOT",["SLING_SHOT_02_BACK","SLING_SHOT_02_FRONT"]);
                     if(!_loc2_)
                     {
                        addr76:
                        §'r§("LASER_DOT",["LASER_DOT"]);
                     }
                  }
                  return;
               }
            }
            §§goto(addr76);
         }
         §§goto(addr68);
      }
      
      override protected function initializeBirdAnimations() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.initializeBirdAnimations();
         }
      }
   }
}
