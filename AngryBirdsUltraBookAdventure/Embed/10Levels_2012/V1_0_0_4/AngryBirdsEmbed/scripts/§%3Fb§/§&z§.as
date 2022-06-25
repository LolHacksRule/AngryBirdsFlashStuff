package §?b§
{
   import §!+§.§>G§;
   
   public final class §&z§
   {
      
      public static const MIGHTY_EAGLE_USE_SHADE:Boolean = true;
      
      public static const MIGHTY_EAGLE_FLYING_ANGLE:Number = -22.9;
      
      public static const MIGHTY_EAGLE_FLYING_SPEED:Number = 0.128;
      
      public static const MIGHTY_EAGLE_ROTATION_SPEED:Number = 8.0;
      
      public static const MIGHTY_EAGLE_WAIT_TIME:Number = 2400;
      
      public static const MIGHTY_EAGLE_SOUND_DELAY:Number = 1000;
      
      public static const MIGHTY_EAGLE_SHADING_DELAY:Number = 2900;
      
      public static const MIGHTY_EAGLE_STARTING_DISTANCE_X:Number = 140.0;
      
      public static const MIGHTY_EAGLE_STARTING_DISTANCE_Y:Number = 140.0;
      
      public static const MIGHTY_EAGLE_Y_CHANGE:Number;
      
      public static const MIGHTY_EAGLE_X_DIRECTION:Number = 1;
      
      public static const §`-§:Number = 1500;
      
      public static const §0<§:Number = 0.7;
      
      public static const §=G§:Number = 0.2;
      
      public static const §<q§:Number = 8.8;
      
      public static const §=!?§:Number = 2400;
      
      public static const §!!8§:Number = 1;
      
      public static const §4'§:Number = 0.15;
      
      public static const §&i§:Number = 4;
      
      public static const §^!A§:Number = 60;
      
      public static const §=?§:Number = 16;
      
      public static const §&V§:Number = 96.0;
      
      public static const SARDINE_CAN_INITIAL_ROTATION_SPEED:Number = 0.07;
      
      public static const SARDINE_CAN_ROTATION_ACCELERATION:Number = 2.0E-4;
      
      public static const SARDINE_CAN_MAX_ROTATION_SPEED:Number = 0.30800000000000005;
      
      public static const SARDINE_CAN_DELAY_AFTER_HIT:int = 3000;
      
      public static const §4!0§:Number = 5;
      
      public static const §%!C§:int = 2;
      
      public static const §!!E§:Number = 600;
      
      public static const §@r§:Number = 1.3;
      
      public static const §^!$§:Number = 1.3;
      
      public static const §0#§:Number = 1.3;
      
      public static const §%j§:Number = 1.3;
      
      public static const §,[§:Number = 1.3;
      
      public static const §]!E§:Number = 1.3;
      
      public static const §#?§:Number = 1.5;
      
      public static const §%!@§:int = 60;
      
      public static const §&8§:Number = 9;
      
      public static const §0,§:Number = 5;
      
      public static const §=!0§:Number = 3000;
      
      public static const §0!&§:Number = 60;
      
      public static const §7!H§:Number = 6;
      
      public static const §`!@§:Number = 3;
      
      public static const §8t§:Number = 0.03333333333333333;
      
      public static const §=! §:int = 100;
      
      public static const §0i§:int = 3;
      
      public static const §?8§:Number = 70;
      
      public static const §'g§:Number = 10;
      
      public static const §&S§:Number = 1000;
      
      public static const §>H§:Number = 1.3;
      
      public static const §-^§:Number = 7.5;
      
      public static const §var§:Number = 300;
      
      public static const §7X§:Number = 0.5;
      
      public static const §,!A§:Number = 6;
      
      public static const § !§:Number = 9;
      
      public static const §%4§:Number = 0.15;
      
      public static const §>+§:Number = 10;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            MIGHTY_EAGLE_FLYING_SPEED = 0.128;
            MIGHTY_EAGLE_ROTATION_SPEED = 8;
            if(_loc2_)
            {
               MIGHTY_EAGLE_WAIT_TIME = 2400;
               if(!(_loc1_ && _loc2_))
               {
                  MIGHTY_EAGLE_SOUND_DELAY = 1000;
                  if(_loc2_ || §&z§)
                  {
                     MIGHTY_EAGLE_SHADING_DELAY = 2900;
                     MIGHTY_EAGLE_STARTING_DISTANCE_X = 140;
                     if(!(_loc1_ && _loc2_))
                     {
                        MIGHTY_EAGLE_STARTING_DISTANCE_Y = 140;
                        if(!(_loc1_ && §&z§))
                        {
                           MIGHTY_EAGLE_Y_CHANGE = Math.sin(§>G§.§;r§(MIGHTY_EAGLE_FLYING_ANGLE));
                           addr83:
                           MIGHTY_EAGLE_X_DIRECTION = 1;
                           §`-§ = 1500;
                           if(!_loc1_)
                           {
                              §0<§ = 0.7;
                              §=G§ = 0.2;
                              if(!_loc1_)
                              {
                                 §<q§ = 8.8;
                                 §=!?§ = 2400;
                                 if(_loc2_ || _loc1_)
                                 {
                                    addr112:
                                    §!!8§ = 1;
                                    if(_loc2_)
                                    {
                                       §4'§ = 0.15;
                                       if(_loc2_ || _loc1_)
                                       {
                                          §&i§ = 4;
                                          §^!A§ = 60;
                                          if(!_loc1_)
                                          {
                                             §=?§ = 16;
                                             addr138:
                                             §&V§ = 6 * §=?§;
                                             SARDINE_CAN_INITIAL_ROTATION_SPEED = 0.07;
                                             if(!(_loc1_ && §&z§))
                                             {
                                                addr153:
                                                SARDINE_CAN_ROTATION_ACCELERATION = 0.0002;
                                                §§push(§§findproperty(SARDINE_CAN_MAX_ROTATION_SPEED));
                                                §§push(SARDINE_CAN_INITIAL_ROTATION_SPEED);
                                                if(_loc2_)
                                                {
                                                   §§push(§§pop() * 4.4);
                                                }
                                                §§pop().SARDINE_CAN_MAX_ROTATION_SPEED = §§pop();
                                                if(_loc2_)
                                                {
                                                   addr175:
                                                   SARDINE_CAN_DELAY_AFTER_HIT = 3000;
                                                   addr178:
                                                   §4!0§ = 5;
                                                   if(_loc2_)
                                                   {
                                                      addr183:
                                                      §%!C§ = 2;
                                                      §!!E§ = 600;
                                                      if(!_loc1_)
                                                      {
                                                         §@r§ = 1.3;
                                                         if(!_loc1_)
                                                         {
                                                            §^!$§ = 1.3;
                                                            if(_loc2_)
                                                            {
                                                               §0#§ = 1.3;
                                                               §%j§ = 1.3;
                                                               §,[§ = 1.3;
                                                               §]!E§ = 1.3;
                                                               if(_loc2_)
                                                               {
                                                                  §#?§ = 1.5;
                                                                  if(!(_loc1_ && _loc1_))
                                                                  {
                                                                     §§goto(addr225);
                                                                  }
                                                                  §§goto(addr318);
                                                               }
                                                               §§goto(addr235);
                                                            }
                                                            §§goto(addr274);
                                                         }
                                                         §§goto(addr235);
                                                      }
                                                      §§goto(addr248);
                                                   }
                                                }
                                                §§goto(addr235);
                                             }
                                             §§goto(addr299);
                                          }
                                          addr225:
                                          §%!@§ = 60;
                                          if(_loc2_ || _loc1_)
                                          {
                                             addr235:
                                             §&8§ = 9;
                                             §0,§ = 5;
                                             if(_loc2_ || _loc2_)
                                             {
                                                addr248:
                                                §=!0§ = 3000;
                                                if(_loc2_ || _loc2_)
                                                {
                                                   §0!&§ = 60;
                                                   §7!H§ = 6;
                                                   if(_loc2_ || _loc1_)
                                                   {
                                                      §`!@§ = 3;
                                                      §§goto(addr274);
                                                   }
                                                   §§goto(addr338);
                                                }
                                                addr274:
                                                §8t§ = 1 / 30;
                                                if(!(_loc1_ && _loc1_))
                                                {
                                                   §=! § = 100;
                                                   if(_loc2_ || §&z§)
                                                   {
                                                      §0i§ = 3;
                                                   }
                                                   §§goto(addr299);
                                                }
                                                addr299:
                                                §?8§ = 70;
                                                addr302:
                                                §'g§ = 10;
                                                addr315:
                                                §&S§ = 1000;
                                                addr318:
                                                §>H§ = 1.3;
                                                §-^§ = 7.5;
                                                §§goto(addr324);
                                             }
                                             §§goto(addr335);
                                          }
                                          addr324:
                                          §var§ = 300;
                                          §7X§ = 0.5;
                                          §,!A§ = 6;
                                          if(!_loc1_)
                                          {
                                             addr335:
                                             § !§ = 9;
                                             addr338:
                                             §%4§ = 0.15;
                                          }
                                          §>+§ = 10;
                                          return;
                                       }
                                       §§goto(addr315);
                                    }
                                    §§goto(addr335);
                                 }
                                 §§goto(addr138);
                              }
                              §§goto(addr302);
                           }
                           §§goto(addr178);
                        }
                        §§goto(addr183);
                     }
                     §§goto(addr153);
                  }
                  §§goto(addr138);
               }
               §§goto(addr112);
            }
            §§goto(addr83);
         }
         §§goto(addr175);
      }
      
      public function §&z§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
      }
   }
}
