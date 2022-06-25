package §;u§
{
   public class b2Settings
   {
      
      public static const VERSION:String = "2.1alpha";
      
      public static const §?!C§:int = 65535;
      
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
         if(!(_loc2_ && _loc2_))
         {
            VERSION = "2.1alpha";
            loop0:
            while(true)
            {
               §?!C§ = 65535;
               loop1:
               while(true)
               {
                  b2_pi = Math.PI;
                  loop2:
                  while(true)
                  {
                     b2_maxManifoldPoints = 2;
                     loop3:
                     for(; _loc1_; if(_loc2_ && _loc2_)
                     {
                        continue;
                     },§§push(§§findproperty(b2_maxTranslationSquared)),§§push(b2_maxTranslation),if(!(_loc2_ && _loc2_))
                     {
                        §§push(§§pop() * b2_maxTranslation);
                     },§§pop().b2_maxTranslationSquared = §§pop(),§§goto(addr161))
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
                                 loop7:
                                 while(true)
                                 {
                                    §§push(§§findproperty(b2_angularSlop));
                                    §§push(2 / 180);
                                    if(!(_loc2_ && b2Settings))
                                    {
                                       §§push(§§pop() * b2_pi);
                                    }
                                    §§pop().b2_angularSlop = §§pop();
                                    while(!_loc2_)
                                    {
                                       b2_toiSlop = 8 * b2_linearSlop;
                                       while(true)
                                       {
                                          b2_maxTOIContactsPerIsland = 32;
                                          continue loop2;
                                          addr170:
                                          if(_loc1_ || _loc1_)
                                          {
                                             if(!_loc2_)
                                             {
                                                §§push(§§findproperty(b2_maxRotation));
                                                §§push(0.5);
                                                if(_loc1_ || _loc1_)
                                                {
                                                   §§push(§§pop() * b2_pi);
                                                }
                                                §§pop().b2_maxRotation = §§pop();
                                                continue loop5;
                                             }
                                             continue loop7;
                                          }
                                       }
                                       loop14:
                                       for(; !(_loc2_ && _loc2_); while(true)
                                       {
                                          if(_loc2_ && _loc2_)
                                          {
                                             continue loop14;
                                          }
                                          if(!_loc2_)
                                          {
                                             §§goto(addr170);
                                          }
                                          else
                                          {
                                             §§goto(addr228);
                                          }
                                       },continue loop7)
                                       {
                                          b2_maxTranslation = 2;
                                          loop15:
                                          while(true)
                                          {
                                             if(!_loc2_)
                                             {
                                                continue loop3;
                                             }
                                             addr233:
                                             while(_loc1_)
                                             {
                                                b2_velocityThreshold = 1;
                                                while(true)
                                                {
                                                   b2_maxLinearCorrection = 0.2;
                                                   addr216:
                                                   while(_loc1_ || b2Settings)
                                                   {
                                                      §§push(§§findproperty(b2_maxAngularCorrection));
                                                      §§push(8 / 180);
                                                      if(_loc1_)
                                                      {
                                                         §§push(§§pop() * b2_pi);
                                                      }
                                                      §§pop().b2_maxAngularCorrection = §§pop();
                                                      continue loop14;
                                                      addr83:
                                                      if(!(_loc2_ && b2Settings))
                                                      {
                                                         b2_linearSleepTolerance = 0.1;
                                                         do
                                                         {
                                                            §§push(§§findproperty(b2_angularSleepTolerance));
                                                            §§push(2 / 180);
                                                            if(!_loc2_)
                                                            {
                                                               §§push(§§pop() * b2Settings.b2_pi);
                                                            }
                                                            §§pop().b2_angularSleepTolerance = §§pop();
                                                         }
                                                         while(!(_loc1_ || _loc1_));
                                                         
                                                         addr90:
                                                         if(_loc2_ && _loc2_)
                                                         {
                                                            while(true)
                                                            {
                                                               if(!_loc1_)
                                                               {
                                                                  continue loop14;
                                                               }
                                                               if(!_loc1_)
                                                               {
                                                                  continue loop15;
                                                               }
                                                               §§goto(addr83);
                                                               §§goto(addr90);
                                                            }
                                                            continue;
                                                            addr79:
                                                         }
                                                         addr53:
                                                         if(!(_loc2_ && b2Settings))
                                                         {
                                                            addr60:
                                                            if(!(_loc1_ || _loc1_))
                                                            {
                                                               while(true)
                                                               {
                                                                  b2_contactBaumgarte = 0.2;
                                                                  continue loop6;
                                                                  §§goto(addr60);
                                                               }
                                                               addr116:
                                                            }
                                                            addr67:
                                                            if(!_loc2_)
                                                            {
                                                               return;
                                                               addr69:
                                                            }
                                                            continue loop5;
                                                         }
                                                         continue loop6;
                                                      }
                                                   }
                                                   continue loop2;
                                                }
                                             }
                                             continue loop4;
                                          }
                                          continue loop3;
                                       }
                                    }
                                    continue loop0;
                                 }
                              }
                           }
                        }
                     }
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr69);
      }
      
      public function b2Settings()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
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
         if(_loc4_ || _loc3_)
         {
            §§push(param1);
            if(!_loc3_)
            {
               if(§§pop() > param2)
               {
                  addr40:
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
                  if(!_loc3_)
                  {
                     addr55:
                     return Number(§§pop());
                  }
               }
               return §§pop();
            }
            §§goto(addr55);
         }
         §§goto(addr40);
      }
      
      public static function b2Assert(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || b2Settings)
         {
            if(!param1)
            {
               if(!(_loc2_ && b2Settings))
               {
                  §§goto(addr43);
               }
            }
            return;
         }
         addr43:
         throw "Assertion Failed";
      }
   }
}
