package §6A§
{
   import §^!A§.§;!%§;
   
   public class §#!E§
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
      
      public static const §8!1§:Number = 1500;
      
      public static const §1s§:Number = 0.7;
      
      public static const §'f§:Number = 0.2;
      
      public static const §'G§:Number = 8.8;
      
      public static const §3!9§:Number = 2400;
      
      public static const §;<§:Number = 1;
      
      public static const §&m§:Number = 0.15;
      
      public static const §]!E§:Number = 4;
      
      public static const §use §:Number = 60;
      
      public static const §5!$§:Number = 16;
      
      public static const §8;§:Number = 96.0;
      
      public static const SARDINE_CAN_INITIAL_ROTATION_SPEED:Number = 0.07;
      
      public static const SARDINE_CAN_ROTATION_ACCELERATION:Number = 2.0E-4;
      
      public static const SARDINE_CAN_MAX_ROTATION_SPEED:Number = 0.30800000000000005;
      
      public static const SARDINE_CAN_DELAY_AFTER_HIT:int = 3000;
      
      public static const §+B§:Number = 5;
      
      public static var §9!7§:int = 2;
      
      public static var §`!%§:Boolean = false;
      
      public static const §5r§:Number = 600;
      
      public static const §-!%§:Number = 1.3;
      
      public static const §'?§:Number = 1.3;
      
      public static const §8L§:Number = 1.3;
      
      public static const §<! §:Number = 1.3;
      
      public static const §[p§:Number = 1.3;
      
      public static const §3X§:Number = 1.3;
      
      public static const §[3§:Number = 1.5;
      
      public static const §5!%§:Number = 1.2;
      
      public static const §<D§:Number = 1.25;
      
      public static const §6X§:Number = 1.2;
      
      public static const §]y§:Number = 1.25;
      
      public static var §2R§:int = 60;
      
      public static const §6w§:Number = 9;
      
      public static const §`A§:Number = 5;
      
      public static const §<[§:Number = 3000;
      
      public static const §4"§:Number = 60;
      
      public static const §]L§:Number = 6;
      
      public static const §0G§:Number = 3;
      
      public static const §@E§:Number = 0.03333333333333333;
      
      public static const §4!A§:int = 25;
      
      public static const §?u§:int = 1;
      
      public static const §,]§:Number = 70;
      
      public static const §+"§:Number = 10;
      
      public static const §"q§:Number = 1000;
      
      public static const §?a§:Number = 1.3;
      
      public static const §4!M§:Number = 7.5;
      
      public static const §]!B§:Number = 300;
      
      public static const § !A§:Number = 0.5;
      
      public static const §8!9§:Number = 6;
      
      public static const §5x§:Number = 9;
      
      public static const §@$§:Number = 0.15;
      
      public static const §`!#§:Number = 10;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            MIGHTY_EAGLE_FLYING_ANGLE = -22.9;
            MIGHTY_EAGLE_FLYING_SPEED = 0.128;
            if(_loc2_)
            {
               MIGHTY_EAGLE_ROTATION_SPEED = 8;
               MIGHTY_EAGLE_WAIT_TIME = 2400;
               MIGHTY_EAGLE_SOUND_DELAY = 1000;
               addr44:
               MIGHTY_EAGLE_SHADING_DELAY = 2900;
               if(_loc2_ || _loc2_)
               {
                  MIGHTY_EAGLE_STARTING_DISTANCE_X = 140;
                  if(_loc2_)
                  {
                     MIGHTY_EAGLE_STARTING_DISTANCE_Y = 140;
                     MIGHTY_EAGLE_Y_CHANGE = Math.sin(§;!%§.§;!E§(MIGHTY_EAGLE_FLYING_ANGLE));
                     if(!(_loc1_ && _loc1_))
                     {
                        MIGHTY_EAGLE_X_DIRECTION = 1;
                        §8!1§ = 1500;
                        if(_loc2_)
                        {
                           §1s§ = 0.7;
                           §'f§ = 0.2;
                           §'G§ = 8.8;
                           if(_loc2_ || §#!E§)
                           {
                              addr100:
                              §3!9§ = 2400;
                              §;<§ = 1;
                              §&m§ = 0.15;
                              §]!E§ = 4;
                              §use § = 60;
                              §5!$§ = 16;
                              if(!_loc1_)
                              {
                                 §8;§ = 6 * §5!$§;
                                 SARDINE_CAN_INITIAL_ROTATION_SPEED = 0.07;
                                 if(!(_loc1_ && §#!E§))
                                 {
                                    SARDINE_CAN_ROTATION_ACCELERATION = 0.0002;
                                    if(_loc2_)
                                    {
                                       addr140:
                                       §§push(§§findproperty(SARDINE_CAN_MAX_ROTATION_SPEED));
                                       §§push(SARDINE_CAN_INITIAL_ROTATION_SPEED);
                                       if(!(_loc1_ && _loc2_))
                                       {
                                          §§push(§§pop() * 4.4);
                                       }
                                       §§pop().SARDINE_CAN_MAX_ROTATION_SPEED = §§pop();
                                       if(_loc2_)
                                       {
                                          SARDINE_CAN_DELAY_AFTER_HIT = 3000;
                                          if(_loc2_ || _loc1_)
                                          {
                                             §+B§ = 5;
                                             if(_loc2_)
                                             {
                                                §9!7§ = 2;
                                                §`!%§ = false;
                                                if(!_loc1_)
                                                {
                                                   §5r§ = 600;
                                                   §-!%§ = 1.3;
                                                   §'?§ = 1.3;
                                                   addr177:
                                                   if(!_loc1_)
                                                   {
                                                      §8L§ = 1.3;
                                                      §<! § = 1.3;
                                                      if(!(_loc1_ && §#!E§))
                                                      {
                                                         addr211:
                                                         §[p§ = 1.3;
                                                         if(_loc2_ || _loc1_)
                                                         {
                                                            §3X§ = 1.3;
                                                            addr224:
                                                            §[3§ = 1.5;
                                                            §5!%§ = 1.2;
                                                            §<D§ = 1.25;
                                                            if(!_loc1_)
                                                            {
                                                               addr235:
                                                               §6X§ = 1.2;
                                                               §]y§ = 1.25;
                                                               if(!(_loc1_ && §#!E§))
                                                               {
                                                                  addr248:
                                                                  §2R§ = 60;
                                                                  §6w§ = 9;
                                                                  if(_loc2_ || _loc1_)
                                                                  {
                                                                     §`A§ = 5;
                                                                     if(!(_loc1_ && §#!E§))
                                                                     {
                                                                        §<[§ = 3000;
                                                                        if(_loc2_ || §#!E§)
                                                                        {
                                                                           §4"§ = 60;
                                                                           addr284:
                                                                           §]L§ = 6;
                                                                           §0G§ = 3;
                                                                           §@E§ = 1 / 30;
                                                                           if(!_loc1_)
                                                                           {
                                                                              §4!A§ = 25;
                                                                              if(!(_loc1_ && _loc1_))
                                                                              {
                                                                                 §?u§ = 1;
                                                                                 §,]§ = 70;
                                                                                 if(_loc2_ || _loc2_)
                                                                                 {
                                                                                    §+"§ = 10;
                                                                                    if(_loc2_)
                                                                                    {
                                                                                       addr325:
                                                                                       §"q§ = 1000;
                                                                                       if(_loc2_)
                                                                                       {
                                                                                          §?a§ = 1.3;
                                                                                          addr333:
                                                                                          §4!M§ = 7.5;
                                                                                          if(!(_loc1_ && _loc1_))
                                                                                          {
                                                                                             addr343:
                                                                                             §]!B§ = 300;
                                                                                             if(!_loc1_)
                                                                                             {
                                                                                                § !A§ = 0.5;
                                                                                                if(_loc2_ || _loc1_)
                                                                                                {
                                                                                                   addr368:
                                                                                                   §8!9§ = 6;
                                                                                                }
                                                                                                §5x§ = 9;
                                                                                                if(_loc2_ || _loc1_)
                                                                                                {
                                                                                                   addr381:
                                                                                                   §@$§ = 0.15;
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr387);
                                                                                          }
                                                                                          §§goto(addr381);
                                                                                       }
                                                                                       §§goto(addr387);
                                                                                    }
                                                                                    §`!#§ = 10;
                                                                                    addr387:
                                                                                    return;
                                                                                 }
                                                                                 §§goto(addr381);
                                                                              }
                                                                              §§goto(addr333);
                                                                           }
                                                                           §§goto(addr325);
                                                                        }
                                                                        §§goto(addr381);
                                                                     }
                                                                     §§goto(addr368);
                                                                  }
                                                               }
                                                               §§goto(addr343);
                                                            }
                                                            §§goto(addr325);
                                                         }
                                                         §§goto(addr284);
                                                      }
                                                   }
                                                   §§goto(addr343);
                                                }
                                                §§goto(addr211);
                                             }
                                             §§goto(addr235);
                                          }
                                          §§goto(addr224);
                                       }
                                       §§goto(addr284);
                                    }
                                    §§goto(addr177);
                                 }
                                 §§goto(addr284);
                              }
                              §§goto(addr224);
                           }
                           §§goto(addr248);
                        }
                     }
                     §§goto(addr224);
                  }
                  §§goto(addr100);
               }
               §§goto(addr177);
            }
            §§goto(addr140);
         }
         §§goto(addr44);
      }
      
      public function §#!E§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            super();
         }
      }
   }
}
