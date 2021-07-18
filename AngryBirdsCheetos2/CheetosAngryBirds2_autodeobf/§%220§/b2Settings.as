package §"0§
{
   public class b2Settings
   {
      
      public static const VERSION:String = "2.1alpha";
      
      public static const §?!-§:int = 65535;
      
      public static const b2_pi:Number = 3.141592653589793;
      
      public static const b2_maxManifoldPoints:int = 2;
      
      public static const b2_aabbExtension:Number = 0.1;
      
      public static const b2_aabbMultiplier:Number = 2.0;
      
      public static const b2_polygonRadius:Number;
      
      public static const b2_linearSlop:Number = 0.05;
      
      public static const b2_angularSlop:Number = 0.03490658503988659;
      
      public static const b2_toiSlop:Number = 0.4;
      
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
      
      public static const b2_timeToSleep:Number = 0.25;
      
      public static const b2_linearSleepTolerance:Number = 0.1;
      
      public static const b2_angularSleepTolerance:Number = 0.03490658503988659;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && b2Settings))
         {
            VERSION = "2.1alpha";
            while(true)
            {
               §?!-§ = 65535;
               loop1:
               while(true)
               {
                  b2_pi = Math.PI;
                  loop2:
                  while(true)
                  {
                     b2_maxManifoldPoints = 2;
                     loop3:
                     while(true)
                     {
                        b2_aabbExtension = 0.1;
                        loop4:
                        while(true)
                        {
                           b2_aabbMultiplier = 2;
                           loop5:
                           while(true)
                           {
                              b2_polygonRadius = 2 * b2_linearSlop;
                              loop6:
                              while(true)
                              {
                                 b2_linearSlop = 0.05;
                                 addr264:
                                 addr140:
                                 while(true)
                                 {
                                    §§push(§§findproperty(b2_angularSlop));
                                    §§push(2 / 180);
                                    if(_loc1_)
                                    {
                                       §§push(§§pop() * b2_pi);
                                    }
                                    §§pop().b2_angularSlop = §§pop();
                                    continue loop1;
                                 }
                                 if(_loc1_ || _loc1_)
                                 {
                                    if(_loc1_)
                                    {
                                       §§push(§§findproperty(b2_maxRotationSquared));
                                       §§push(b2_maxRotation);
                                       if(!_loc2_)
                                       {
                                          §§push(§§pop() * b2_maxRotation);
                                       }
                                       §§pop().b2_maxRotationSquared = §§pop();
                                       loop19:
                                       while(true)
                                       {
                                          if(_loc1_ || _loc2_)
                                          {
                                             if(_loc1_)
                                             {
                                                if(_loc2_)
                                                {
                                                   break;
                                                }
                                                if(_loc1_)
                                                {
                                                   b2_contactBaumgarte = 0.2;
                                                   loop20:
                                                   while(!_loc2_)
                                                   {
                                                      b2_timeToSleep = 0.25;
                                                      loop21:
                                                      for(; !(_loc2_ && _loc2_); while(true)
                                                      {
                                                         if(_loc1_ || b2Settings)
                                                         {
                                                            continue loop20;
                                                         }
                                                         §§push(§§findproperty(b2_angularSleepTolerance));
                                                         addr74:
                                                         §§push(2 / 180);
                                                         continue loop21;
                                                         if(!_loc2_)
                                                         {
                                                            §§push(§§pop() * b2Settings.b2_pi);
                                                         }
                                                         §§pop().b2_angularSleepTolerance = §§pop();
                                                         if(!(_loc2_ && _loc1_))
                                                         {
                                                            continue loop19;
                                                         }
                                                      },continue loop5)
                                                      {
                                                         if(_loc1_)
                                                         {
                                                            b2_linearSleepTolerance = 0.1;
                                                            continue;
                                                         }
                                                         addr234:
                                                         while(true)
                                                         {
                                                            b2_maxTOIJointsPerIsland = 32;
                                                            break loop21;
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         b2_velocityThreshold = 1;
                                                         continue loop2;
                                                         §§goto(addr79);
                                                      }
                                                      addr79:
                                                      if(!(_loc1_ || b2Settings))
                                                      {
                                                         continue;
                                                      }
                                                      if(_loc2_)
                                                      {
                                                         continue loop5;
                                                      }
                                                      §§goto(addr74);
                                                   }
                                                   continue loop4;
                                                }
                                                §§goto(addr264);
                                             }
                                             loop16:
                                             while(_loc1_ || _loc2_)
                                             {
                                                §§push(§§findproperty(b2_maxTranslationSquared));
                                                §§push(b2_maxTranslation);
                                                if(_loc1_)
                                                {
                                                   §§push(§§pop() * b2_maxTranslation);
                                                }
                                                §§pop().b2_maxTranslationSquared = §§pop();
                                                loop17:
                                                while(!(_loc2_ && _loc1_))
                                                {
                                                   §§push(§§findproperty(b2_maxRotation));
                                                   §§push(0.5);
                                                   if(_loc1_)
                                                   {
                                                      §§push(§§pop() * b2_pi);
                                                   }
                                                   §§pop().b2_maxRotation = §§pop();
                                                   while(true)
                                                   {
                                                      if(!(_loc1_ || _loc2_))
                                                      {
                                                         continue loop17;
                                                      }
                                                      addr133:
                                                      if(_loc1_ || _loc1_)
                                                      {
                                                         §§goto(addr140);
                                                      }
                                                      else
                                                      {
                                                         while(true)
                                                         {
                                                            b2_maxTranslation = 2;
                                                            continue loop16;
                                                            §§goto(addr133);
                                                         }
                                                         addr198:
                                                      }
                                                      continue loop19;
                                                   }
                                                   continue loop6;
                                                }
                                                continue loop1;
                                             }
                                             while(true)
                                             {
                                                b2_maxTOIContactsPerIsland = 32;
                                                §§goto(addr234);
                                                §§goto(addr180);
                                             }
                                             addr180:
                                             addr241:
                                          }
                                          §§goto(addr126);
                                       }
                                       while(!_loc2_)
                                       {
                                          while(true)
                                          {
                                             §§push(§§findproperty(b2_maxAngularCorrection));
                                             §§push(8 / 180);
                                             if(_loc1_)
                                             {
                                                §§push(§§pop() * b2_pi);
                                             }
                                             §§pop().b2_maxAngularCorrection = §§pop();
                                             §§goto(addr198);
                                          }
                                       }
                                       continue loop2;
                                       addr203:
                                    }
                                    continue loop3;
                                 }
                              }
                           }
                        }
                     }
                  }
               }
               if(!(_loc1_ || _loc1_))
               {
                  continue;
               }
               b2_maxLinearCorrection = 0.2;
               §§goto(addr203);
            }
         }
         §§goto(addr205);
      }
      
      public function b2Settings()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
      }
      
      public static function b2MixFriction(param1:Number, param2:Number) : Number
      {
         return Math.sqrt(param1 * param2);
      }
      
      public static function b2MixRestitution(param1:Number, param2:Number) : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param2)
         {
            §§push(param1);
            if(!(_loc3_ && param2))
            {
               if(§§pop() > param2)
               {
                  addr45:
                  §§push(param1);
                  if(!(_loc3_ && _loc3_))
                  {
                     §§push(Number(§§pop()));
                     if(!_loc4_)
                     {
                     }
                  }
               }
               else
               {
                  §§push(param2);
                  if(!(_loc3_ && _loc3_))
                  {
                     return Number(§§pop());
                  }
               }
            }
            return §§pop();
         }
         §§goto(addr45);
      }
      
      public static function b2Assert(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            if(!param1)
            {
               if(_loc3_)
               {
                  throw "Assertion Failed";
               }
            }
         }
      }
   }
}
