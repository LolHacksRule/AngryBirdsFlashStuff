package §<T§
{
   public class §#!2§ extends §^!Y§
   {
       
      
      public function §#!2§(param1:§`m§)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            super(param1);
         }
      }
      
      override public function initializeAnimations(param1:Array) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:Object = null;
         var _loc3_:int = 0;
         if(!(_loc7_ && param1))
         {
            super.initializeAnimations(param1);
            loop0:
            while(true)
            {
               §-x§("MISC_FB_SKIS",["BLOCK_FB_SKIS_1","BLOCK_FB_SKIS_2"]);
               addr443:
               while(true)
               {
                  §-x§("POWERUP_BOMB",["POWERUP_GIFT"]);
                  while(true)
                  {
                     §-x§("POWERUP_BOMB_PARACHUTE",["POWERUP_PARACHUTE"]);
                     addr421:
                     while(_loc6_ || this)
                     {
                        §-x§("SUPER_SLINGSHOT",["SLING_SHOT_02_BACK","SLING_SHOT_02_FRONT"]);
                        while(true)
                        {
                           §-x§("LASER_DOT",["LASER_DOT"]);
                           addr406:
                           while(true)
                           {
                              §-x§("POWERUP_BOMB_UNWRAP",["PARTICLE_CHRISTMAS_WRAP_1","PARTICLE_CHRISTMAS_WRAP_2","PARTICLE_CHRISTMAS_WRAP_3","PARTICLE_CHRISTMAS_WRAP_4","PARTICLE_CHRISTMAS_WRAP_5"]);
                              continue loop0;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr406);
      }
      
      override protected function initializePigAnimations() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super.initializePigAnimations();
         }
      }
      
      override protected function initializeBirdAnimations() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            super.initializeBirdAnimations();
         }
         do
         {
            §§push(§§findproperty(§&"0§));
            §§push("BIRD_VANTERRENCE");
            §§push(["normal",["BIRD_VANTERENCE_1"]]);
            if(_loc2_ || _loc2_)
            {
               §§push(null);
            }
            §§pop().§&"0§(§§pop(),§§pop());
            do
            {
               §§push(§§findproperty(§&"0§));
               §§push("BIRD_WINGMAN");
               §§push(["normal",["BIRD_WINGMAN_1"]]);
               if(_loc2_)
               {
                  §§push(null);
               }
               §§pop().§&"0§(§§pop(),§§pop());
               do
               {
                  §§push(§§findproperty(§&"0§));
                  §§push("BIRD_ORANGE");
                  §§push(["normal",["BIRD_ORANGE_YELL"]]);
                  if(!_loc1_)
                  {
                     §§push(null);
                  }
                  §§pop().§&"0§(§§pop(),§§pop());
               }
               while(!(_loc2_ || _loc1_));
               
            }
            while(!(_loc2_ || _loc1_));
            
         }
         while(_loc1_ && this);
         
      }
   }
}
