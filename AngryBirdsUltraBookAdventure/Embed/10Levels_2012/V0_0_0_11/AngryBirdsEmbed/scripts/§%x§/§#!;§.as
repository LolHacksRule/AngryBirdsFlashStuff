package §%x§
{
   import §]!9§.§>2§;
   
   public final class §#!;§
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
      
      public static const §>A§:Number = 1500;
      
      public static const §[,§:Number = 0.7;
      
      public static const §+!"§:Number = 0.2;
      
      public static const §[!?§:Number = 8.8;
      
      public static const §<!C§:Number = 2400;
      
      public static const §&t§:Number = 1;
      
      public static const §?d§:Number = 0.15;
      
      public static const §9D§:Number = 4;
      
      public static const §#!D§:Number = 60;
      
      public static const §'w§:Number = 16;
      
      public static const §^H§:Number = 96.0;
      
      public static const SARDINE_CAN_INITIAL_ROTATION_SPEED:Number = 0.07;
      
      public static const SARDINE_CAN_ROTATION_ACCELERATION:Number = 2.0E-4;
      
      public static const SARDINE_CAN_MAX_ROTATION_SPEED:Number = 0.30800000000000005;
      
      public static const SARDINE_CAN_DELAY_AFTER_HIT:int = 3000;
      
      public static const §9d§:Number = 5;
      
      public static const §<&§:int = 2;
      
      public static const §5U§:Number = 600;
      
      public static const §50§:Number = 1.3;
      
      public static const §2D§:Number = 1.3;
      
      public static const §8Q§:Number = 1.3;
      
      public static const §'!1§:Number = 1.3;
      
      public static const §`B§:Number = 1.3;
      
      public static const §?q§:Number = 1.3;
      
      public static const §2L§:Number = 1.5;
      
      public static const §9e§:int = 60;
      
      public static const §1!,§:Number = 9;
      
      public static const §-G§:Number = 5;
      
      public static const §9h§:Number = 3000;
      
      public static const §1X§:Number = 60;
      
      public static const §<!@§:Number = 6;
      
      public static const §9n§:Number = 3;
      
      public static const §0!,§:Number = 0.03333333333333333;
      
      public static const §5!0§:int = 100;
      
      public static const §0o§:int = 3;
      
      public static const §`x§:Number = 70;
      
      public static const §>u§:Number = 10;
      
      public static const §5!2§:Number = 1000;
      
      public static const §7V§:Number = 1.3;
      
      public static const §<'§:Number = 7.5;
      
      public static const §-3§:Number = 300;
      
      public static const §]Z§:Number = 0.5;
      
      public static const §,+§:Number = 6;
      
      public static const §3U§:Number = 9;
      
      public static const §'>§:Number = 0.15;
      
      public static const §-Y§:Number = 10;
      
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
                  if(_loc2_ || §#!;§)
                  {
                     MIGHTY_EAGLE_SHADING_DELAY = 2900;
                     MIGHTY_EAGLE_STARTING_DISTANCE_X = 140;
                     if(!(_loc1_ && _loc2_))
                     {
                        MIGHTY_EAGLE_STARTING_DISTANCE_Y = 140;
                        if(!(_loc1_ && §#!;§))
                        {
                           MIGHTY_EAGLE_Y_CHANGE = Math.sin(§>2§.§[4§(MIGHTY_EAGLE_FLYING_ANGLE));
                           addr83:
                           MIGHTY_EAGLE_X_DIRECTION = 1;
                           §>A§ = 1500;
                           if(!_loc1_)
                           {
                              §[,§ = 0.7;
                              §+!"§ = 0.2;
                              if(!_loc1_)
                              {
                                 §[!?§ = 8.8;
                                 §<!C§ = 2400;
                                 if(_loc2_ || _loc1_)
                                 {
                                    addr112:
                                    §&t§ = 1;
                                    if(_loc2_)
                                    {
                                       §?d§ = 0.15;
                                       if(_loc2_ || _loc1_)
                                       {
                                          §9D§ = 4;
                                          §#!D§ = 60;
                                          if(!_loc1_)
                                          {
                                             §'w§ = 16;
                                             addr138:
                                             §^H§ = 6 * §'w§;
                                             SARDINE_CAN_INITIAL_ROTATION_SPEED = 0.07;
                                             if(!(_loc1_ && §#!;§))
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
                                                   §9d§ = 5;
                                                   if(_loc2_)
                                                   {
                                                      addr183:
                                                      §<&§ = 2;
                                                      §5U§ = 600;
                                                      if(!_loc1_)
                                                      {
                                                         §50§ = 1.3;
                                                         if(!_loc1_)
                                                         {
                                                            §2D§ = 1.3;
                                                            if(_loc2_)
                                                            {
                                                               §8Q§ = 1.3;
                                                               §'!1§ = 1.3;
                                                               §`B§ = 1.3;
                                                               §?q§ = 1.3;
                                                               if(_loc2_)
                                                               {
                                                                  §2L§ = 1.5;
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
                                          §9e§ = 60;
                                          if(_loc2_ || _loc1_)
                                          {
                                             addr235:
                                             §1!,§ = 9;
                                             §-G§ = 5;
                                             if(_loc2_ || _loc2_)
                                             {
                                                addr248:
                                                §9h§ = 3000;
                                                if(_loc2_ || _loc2_)
                                                {
                                                   §1X§ = 60;
                                                   §<!@§ = 6;
                                                   if(_loc2_ || _loc1_)
                                                   {
                                                      §9n§ = 3;
                                                      §§goto(addr274);
                                                   }
                                                   §§goto(addr338);
                                                }
                                                addr274:
                                                §0!,§ = 1 / 30;
                                                if(!(_loc1_ && _loc1_))
                                                {
                                                   §5!0§ = 100;
                                                   if(_loc2_ || §#!;§)
                                                   {
                                                      §0o§ = 3;
                                                   }
                                                   §§goto(addr299);
                                                }
                                                addr299:
                                                §`x§ = 70;
                                                addr302:
                                                §>u§ = 10;
                                                addr315:
                                                §5!2§ = 1000;
                                                addr318:
                                                §7V§ = 1.3;
                                                §<'§ = 7.5;
                                                §§goto(addr324);
                                             }
                                             §§goto(addr335);
                                          }
                                          addr324:
                                          §-3§ = 300;
                                          §]Z§ = 0.5;
                                          §,+§ = 6;
                                          if(!_loc1_)
                                          {
                                             addr335:
                                             §3U§ = 9;
                                             addr338:
                                             §'>§ = 0.15;
                                          }
                                          §-Y§ = 10;
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
      
      public function §#!;§()
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
