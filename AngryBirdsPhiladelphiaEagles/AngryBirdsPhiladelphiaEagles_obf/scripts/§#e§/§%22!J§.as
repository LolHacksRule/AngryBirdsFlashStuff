package §#e§
{
   public class §"!J§ extends §@!+§
   {
       
      
      public function §"!J§(param1:§'?§)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            super(param1);
         }
      }
      
      override public function initializeAnimations(param1:Array) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         super.initializeAnimations(param1);
         while(true)
         {
            §+Y§("POWERUP_BOMB",["POWERUP_DROP_01"]);
            §+Y§("POWERUP_BOMB_PARACHUTE",["POWERUP_DROP_02"]);
            loop1:
            while(true)
            {
               §+Y§("SUPER_SLINGSHOT",["SLING_SHOT_02_BACK","SLING_SHOT_02_FRONT"]);
               if(!(_loc2_ || this))
               {
                  break;
               }
               §+Y§("LASER_DOT",["LASER_DOT"]);
               while(true)
               {
                  §+Y§("BIRD_MIGHTY_PHIL_EAGLE",["MIGHTY_PHILADELPHIA_EAGLE_1","MIGHTY_PHILADELPHIA_EAGLE_2"]);
                  while(_loc2_)
                  {
                     §+Y§("BIRD_PHIL_SARDINE",["MIGHTY_PHILADELPHIA_EAGLE_BALL"]);
                     if(!_loc3_)
                     {
                        continue loop1;
                     }
                  }
               }
            }
         }
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
      
      override public function getAnimation(param1:String) : §4^§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            if(param1 == "BIRD_SARDINE")
            {
               if(!(_loc3_ && param1))
               {
                  addr43:
                  §§push(super.getAnimation("BIRD_PHIL_SARDINE"));
                  if(!_loc3_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr49:
                  return super.getAnimation(param1);
               }
               return §§pop();
            }
            §§goto(addr49);
         }
         §§goto(addr43);
      }
   }
}
