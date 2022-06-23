package §3G§
{
   import §8u§.§0r§;
   
   public final class §&!"§
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
      
      public static const §case §:Number = 1500;
      
      public static const §82§:Number = 0.7;
      
      public static const §]!6§:Number = 0.2;
      
      public static const §^=§:Number = 8.8;
      
      public static const §"!4§:Number = 2400;
      
      public static const §<!H§:Number = 1;
      
      public static const §26§:Number = 0.15;
      
      public static const §?!5§:Number = 4;
      
      public static const §+y§:Number = 60;
      
      public static const §@!5§:Number = 16;
      
      public static const §3!!§:Number = 96.0;
      
      public static const SARDINE_CAN_INITIAL_ROTATION_SPEED:Number = 0.07;
      
      public static const SARDINE_CAN_ROTATION_ACCELERATION:Number = 2.0E-4;
      
      public static const SARDINE_CAN_MAX_ROTATION_SPEED:Number = 0.30800000000000005;
      
      public static const SARDINE_CAN_DELAY_AFTER_HIT:int = 3000;
      
      public static const §8o§:Number = 5;
      
      public static const §]3§:int = 2;
      
      public static const § !1§:Number = 600;
      
      public static const §0]§:Number = 1.3;
      
      public static const §#;§:Number = 1.3;
      
      public static const §=$§:Number = 1.3;
      
      public static const §-K§:Number = 1.3;
      
      public static const §^1§:Number = 1.3;
      
      public static const §",§:Number = 1.3;
      
      public static const §9!1§:Number = 1.5;
      
      public static const §&B§:int = 60;
      
      public static const §2h§:Number = 9;
      
      public static const §8l§:Number = 5;
      
      public static const §8>§:Number = 3000;
      
      public static const §'!>§:Number = 60;
      
      public static const §<y§:Number = 6;
      
      public static const §+N§:Number = 3;
      
      public static const §;!>§:Number = 0.03333333333333333;
      
      public static const §;5§:int = 100;
      
      public static const §>!8§:int = 3;
      
      public static const §5!7§:Number = 70;
      
      public static const §9!-§:Number = 10;
      
      public static const §&7§:Number = 1000;
      
      public static const §1y§:Number = 1.3;
      
      public static const §<!4§:Number = 7.5;
      
      public static const §0k§:Number = 300;
      
      public static const §+!5§:Number = 0.5;
      
      public static const §>!<§:Number = 6;
      
      public static const §+!=§:Number = 9;
      
      public static const §>J§:Number = 0.15;
      
      public static const §#5§:Number = 10;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            MIGHTY_EAGLE_ROTATION_SPEED = 8;
            if(_loc1_)
            {
               MIGHTY_EAGLE_WAIT_TIME = 2400;
               MIGHTY_EAGLE_SOUND_DELAY = 1000;
               MIGHTY_EAGLE_SHADING_DELAY = 2900;
               if(!(_loc2_ && _loc1_))
               {
                  MIGHTY_EAGLE_STARTING_DISTANCE_X = 140;
                  if(_loc1_)
                  {
                     MIGHTY_EAGLE_STARTING_DISTANCE_Y = 140;
                     if(!(_loc2_ && _loc2_))
                     {
                        MIGHTY_EAGLE_Y_CHANGE = Math.sin(§0r§.§%n§(MIGHTY_EAGLE_FLYING_ANGLE));
                        if(!_loc2_)
                        {
                           MIGHTY_EAGLE_X_DIRECTION = 1;
                           if(_loc1_)
                           {
                              §case § = 1500;
                              §82§ = 0.7;
                              if(!_loc2_)
                              {
                                 §]!6§ = 0.2;
                                 §^=§ = 8.8;
                                 if(!(_loc2_ && _loc2_))
                                 {
                                    addr98:
                                    §"!4§ = 2400;
                                    §<!H§ = 1;
                                    §26§ = 0.15;
                                    §?!5§ = 4;
                                    if(_loc1_ || §&!"§)
                                    {
                                       §+y§ = 60;
                                       if(!_loc2_)
                                       {
                                          §@!5§ = 16;
                                          if(_loc1_ || §&!"§)
                                          {
                                             §3!!§ = 6 * §@!5§;
                                             if(_loc1_ || _loc1_)
                                             {
                                                SARDINE_CAN_INITIAL_ROTATION_SPEED = 0.07;
                                                SARDINE_CAN_ROTATION_ACCELERATION = 0.0002;
                                                if(_loc1_)
                                                {
                                                   §§push(§§findproperty(SARDINE_CAN_MAX_ROTATION_SPEED));
                                                   §§push(SARDINE_CAN_INITIAL_ROTATION_SPEED);
                                                   if(!_loc2_)
                                                   {
                                                      §§push(§§pop() * 4.4);
                                                   }
                                                   §§pop().SARDINE_CAN_MAX_ROTATION_SPEED = §§pop();
                                                   if(_loc1_)
                                                   {
                                                      SARDINE_CAN_DELAY_AFTER_HIT = 3000;
                                                      if(_loc1_ || §&!"§)
                                                      {
                                                         addr181:
                                                         §8o§ = 5;
                                                         if(!(_loc2_ && _loc1_))
                                                         {
                                                            §]3§ = 2;
                                                            if(_loc1_)
                                                            {
                                                               addr196:
                                                               § !1§ = 600;
                                                               addr199:
                                                               §0]§ = 1.3;
                                                               addr202:
                                                               §#;§ = 1.3;
                                                               §=$§ = 1.3;
                                                               addr208:
                                                               §-K§ = 1.3;
                                                               §^1§ = 1.3;
                                                               if(!_loc2_)
                                                               {
                                                                  §",§ = 1.3;
                                                                  if(!(_loc2_ && §&!"§))
                                                                  {
                                                                     addr226:
                                                                     §9!1§ = 1.5;
                                                                     §&B§ = 60;
                                                                     if(_loc1_ || _loc2_)
                                                                     {
                                                                        §2h§ = 9;
                                                                        §8l§ = 5;
                                                                        §8>§ = 3000;
                                                                        §§goto(addr248);
                                                                     }
                                                                     §§goto(addr277);
                                                                  }
                                                                  addr248:
                                                                  §'!>§ = 60;
                                                                  §<y§ = 6;
                                                                  §+N§ = 3;
                                                                  if(!_loc2_)
                                                                  {
                                                                     addr259:
                                                                     §;!>§ = 1 / 30;
                                                                     §;5§ = 100;
                                                                     if(!_loc2_)
                                                                     {
                                                                        §§goto(addr269);
                                                                     }
                                                                     §§goto(addr290);
                                                                  }
                                                                  §§goto(addr269);
                                                               }
                                                               §§goto(addr319);
                                                            }
                                                            §§goto(addr202);
                                                         }
                                                         §§goto(addr319);
                                                      }
                                                      §§goto(addr202);
                                                   }
                                                   §§goto(addr226);
                                                }
                                                §§goto(addr202);
                                             }
                                          }
                                          §§goto(addr181);
                                       }
                                       §§goto(addr226);
                                    }
                                    §§goto(addr208);
                                 }
                                 §§goto(addr308);
                              }
                              §§goto(addr319);
                           }
                           §§goto(addr259);
                        }
                        §§goto(addr196);
                     }
                     §§goto(addr181);
                  }
                  §§goto(addr199);
               }
               §§goto(addr259);
            }
            addr269:
            §>!8§ = 3;
            if(!_loc2_)
            {
               §5!7§ = 70;
               addr277:
               §9!-§ = 10;
               if(_loc1_ || §&!"§)
               {
                  §&7§ = 1000;
                  addr290:
                  §1y§ = 1.3;
                  §§goto(addr293);
               }
               §§goto(addr314);
            }
            addr293:
            §<!4§ = 7.5;
            if(_loc1_)
            {
               addr308:
               §0k§ = 300;
               §+!5§ = 0.5;
               addr314:
               §>!<§ = 6;
               if(_loc1_)
               {
                  addr319:
                  §+!=§ = 9;
                  if(_loc1_ || _loc2_)
                  {
                  }
               }
               §§goto(addr332);
            }
            §>J§ = 0.15;
            addr332:
            §#5§ = 10;
            return;
         }
         §§goto(addr98);
      }
      
      public function §&!"§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            super();
         }
      }
   }
}
