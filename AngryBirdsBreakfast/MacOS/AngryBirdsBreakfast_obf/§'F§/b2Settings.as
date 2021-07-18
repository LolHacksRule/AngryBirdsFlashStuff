package §'F§
{
   public class b2Settings
   {
      
      public static const VERSION:String = "2.1alpha";
      
      public static const §-,§:int = 65535;
      
      public static const b2_pi:Number = 3.141592653589793;
      
      public static const b2_maxManifoldPoints:int = 2;
      
      public static const b2_aabbExtension:Number = 0.1;
      
      public static const b2_aabbMultiplier:Number = 2.0;
      
      public static const b2_polygonRadius:Number;
      
      public static const §"I§:Number = 0.05;
      
      public static const §?!_§:Number = 0.005;
      
      public static const §!![§:Number = 0.007;
      
      public static const §-'§:Number;
      
      public static var b2_linearSlop:Number = 0.05;
      
      public static const b2_angularSlop:Number = 0.03490658503988659;
      
      public static const b2_maxTOIContactsPerIsland:int = 32;
      
      public static const b2_maxTOIJointsPerIsland:int = 32;
      
      public static const b2_velocityThreshold:Number = 1.0;
      
      public static const b2_maxLinearCorrection:Number = 0.2;
      
      public static const b2_maxAngularCorrection:Number = 0.13962634015954636;
      
      public static const b2_maxTranslation:Number = 2.0;
      
      public static const b2_maxTranslationSquared:Number = 4.0;
      
      public static const b2_maxRotation:Number = 1.5707963267948966;
      
      public static const b2_maxRotationSquared:Number = 2.4674011002723395;
      
      public static const b2_contactBaumgarte:Number = 0.2;
      
      public static const b2_timeToSleep:Number = 0.5;
      
      public static const §3B§:Number = 0.1;
      
      public static const §,!a§:Number = 0.01;
      
      public static const §?!V§:Number = 0.1;
      
      public static var b2_linearSleepTolerance:Number = 0.1;
      
      public static const b2_angularSleepTolerance:Number = 0.03490658503988659;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            VERSION = "2.1alpha";
            loop0:
            while(true)
            {
               §-,§ = 65535;
               loop1:
               while(true)
               {
                  b2_pi = Math.PI;
                  loop2:
                  while(true)
                  {
                     b2_maxManifoldPoints = 2;
                     while(true)
                     {
                        b2_aabbExtension = 0.1;
                        addr370:
                        while(true)
                        {
                           b2_aabbMultiplier = 2;
                           addr365:
                           while(true)
                           {
                              b2_polygonRadius = 2 * b2_linearSlop;
                              continue loop1;
                           }
                        }
                        while(!(_loc2_ && b2Settings))
                        {
                           b2_maxTOIContactsPerIsland = 32;
                           loop13:
                           while(_loc1_ || _loc2_)
                           {
                              b2_maxTOIJointsPerIsland = 32;
                              loop14:
                              while(true)
                              {
                                 b2_velocityThreshold = 1;
                                 while(true)
                                 {
                                    b2_maxLinearCorrection = 0.2;
                                    loop16:
                                    while(_loc1_)
                                    {
                                       §§push(§§findproperty(b2_maxAngularCorrection));
                                       §§push(8 / 180);
                                       if(!(_loc2_ && _loc2_))
                                       {
                                          §§push(§§pop() * b2_pi);
                                       }
                                       §§pop().b2_maxAngularCorrection = §§pop();
                                       loop17:
                                       while(_loc1_)
                                       {
                                          b2_maxTranslation = 2;
                                          loop18:
                                          for(; !_loc2_; if(_loc1_ || b2Settings)
                                          {
                                             if(_loc1_)
                                             {
                                                continue loop0;
                                             }
                                             continue loop14;
                                          })
                                          {
                                             §§push(§§findproperty(b2_maxTranslationSquared));
                                             §§push(b2_maxTranslation);
                                             if(_loc1_ || _loc1_)
                                             {
                                                §§push(§§pop() * b2_maxTranslation);
                                             }
                                             §§pop().b2_maxTranslationSquared = §§pop();
                                             loop19:
                                             while(!(_loc2_ && _loc1_))
                                             {
                                                §§push(§§findproperty(b2_maxRotation));
                                                §§push(0.5);
                                                if(_loc1_ || _loc1_)
                                                {
                                                   §§push(§§pop() * b2_pi);
                                                }
                                                §§pop().b2_maxRotation = §§pop();
                                                loop20:
                                                while(true)
                                                {
                                                   §§push(§§findproperty(b2_maxRotationSquared));
                                                   §§push(b2_maxRotation);
                                                   if(_loc1_ || _loc2_)
                                                   {
                                                      §§push(§§pop() * b2_maxRotation);
                                                   }
                                                   §§pop().b2_maxRotationSquared = §§pop();
                                                   while(!_loc2_)
                                                   {
                                                      b2_contactBaumgarte = 0.2;
                                                      loop22:
                                                      while(!_loc2_)
                                                      {
                                                         b2_timeToSleep = 0.5;
                                                         while(true)
                                                         {
                                                            if(_loc2_ && _loc2_)
                                                            {
                                                               continue loop22;
                                                            }
                                                            if(_loc2_)
                                                            {
                                                               continue loop19;
                                                            }
                                                            addr147:
                                                            if(!(_loc2_ && b2Settings))
                                                            {
                                                               if(!_loc1_)
                                                               {
                                                                  break;
                                                               }
                                                               if(!_loc2_)
                                                               {
                                                                  §3B§ = 0.1;
                                                                  while(!_loc2_)
                                                                  {
                                                                     §,!a§ = 0.01;
                                                                     while(!(_loc2_ && _loc2_))
                                                                     {
                                                                        §?!V§ = 0.1;
                                                                        while(true)
                                                                        {
                                                                           if(!_loc2_)
                                                                           {
                                                                              addr107:
                                                                              if(!(_loc1_ || _loc1_))
                                                                              {
                                                                                 break;
                                                                              }
                                                                              b2_linearSleepTolerance = §3B§;
                                                                              continue;
                                                                           }
                                                                           continue loop17;
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           if(!_loc2_)
                                                                           {
                                                                              §§push(§§findproperty(b2_angularSlop));
                                                                              §§push(2 / 180);
                                                                              if(_loc1_ || _loc1_)
                                                                              {
                                                                                 §§push(§§pop() * b2_pi);
                                                                              }
                                                                              §§pop().b2_angularSlop = §§pop();
                                                                              break loop13;
                                                                           }
                                                                           break;
                                                                           §§goto(addr107);
                                                                        }
                                                                        §§goto(addr365);
                                                                        if(_loc1_ || _loc2_)
                                                                        {
                                                                           continue loop18;
                                                                        }
                                                                     }
                                                                  }
                                                                  continue;
                                                               }
                                                               §§goto(addr370);
                                                               §§goto(addr365);
                                                            }
                                                            else
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(§§findproperty(§-'§));
                                                                  §§push(b2_linearSlop);
                                                                  if(!(_loc2_ && _loc2_))
                                                                  {
                                                                     §§push(§§pop() - §?!_§);
                                                                  }
                                                                  §§pop().§-'§ = §§pop();
                                                                  break loop17;
                                                                  §§goto(addr147);
                                                               }
                                                               addr329:
                                                            }
                                                         }
                                                         continue loop1;
                                                      }
                                                      continue loop20;
                                                      if(_loc1_ || _loc1_)
                                                      {
                                                         addr58:
                                                         if(!(_loc2_ && b2Settings))
                                                         {
                                                            return;
                                                         }
                                                         continue loop2;
                                                      }
                                                   }
                                                   continue loop13;
                                                }
                                             }
                                             while(true)
                                             {
                                                §?!_§ = 0.005;
                                                continue loop2;
                                                §§goto(addr219);
                                             }
                                             addr219:
                                          }
                                          continue loop16;
                                       }
                                       while(true)
                                       {
                                          b2_linearSlop = §"I§;
                                          §§goto(addr308);
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
               }
               if(!(_loc1_ || _loc2_))
               {
                  continue;
               }
               §§goto(addr100);
            }
         }
         §§goto(addr329);
      }
      
      public function b2Settings()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            super();
         }
      }
      
      public static function get b2_toiSlop() : Number
      {
         return 8 * b2_linearSlop;
      }
      
      public static function b2MixFriction(param1:Number, param2:Number) : Number
      {
         return Math.sqrt(param1 * param2);
      }
      
      public static function b2MixRestitution(param1:Number, param2:Number) : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc3_)
         {
            §§push(param1);
            if(_loc4_ || param2)
            {
               if(§§pop() > param2)
               {
                  addr45:
                  §§push(param1);
                  if(_loc4_)
                  {
                     §§push(Number(§§pop()));
                     if(_loc3_ && _loc3_)
                     {
                     }
                     §§goto(addr76);
                  }
               }
               else
               {
                  §§push(param2);
                  if(_loc4_ || _loc3_)
                  {
                     addr75:
                     §§push(Number(§§pop()));
                  }
               }
               addr76:
               return §§pop();
            }
            §§goto(addr75);
         }
         §§goto(addr45);
      }
      
      public static function b2Assert(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            if(!param1)
            {
               if(!(_loc3_ && b2Settings))
               {
                  throw "Assertion Failed";
               }
            }
         }
      }
   }
}
