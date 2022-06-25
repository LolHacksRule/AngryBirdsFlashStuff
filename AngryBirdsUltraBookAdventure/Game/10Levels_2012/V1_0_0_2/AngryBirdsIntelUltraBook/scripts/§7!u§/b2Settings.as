package §7!u§
{
   public class b2Settings
   {
      
      public static const VERSION:String = "2.1alpha";
      
      public static const §"W§:int = 65535;
      
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
               §"W§ = 65535;
               addr317:
               addr46:
               while(true)
               {
                  b2_pi = Math.PI;
                  addr312:
                  while(true)
                  {
                     b2_maxManifoldPoints = 2;
                  }
               }
               if(_loc1_ || _loc2_)
               {
                  return;
               }
            }
         }
         loop3:
         while(true)
         {
            b2_aabbExtension = 0.1;
            loop4:
            for(; !_loc2_; while(!(_loc2_ && _loc2_))
            {
               §§push(§§findproperty(b2_angularSlop));
               §§push(2 / 180);
               if(!(_loc2_ && _loc2_))
               {
                  §§push(§§pop() * b2_pi);
               }
               §§pop().b2_angularSlop = §§pop();
               §§goto(addr260);
               §§goto(addr176);
            })
            {
               b2_aabbMultiplier = 2;
               while(true)
               {
                  b2_polygonRadius = 2 * b2_linearSlop;
                  addr289:
                  while(true)
                  {
                     b2_linearSlop = 0.05;
                     continue loop4;
                  }
                  addr220:
                  if(!(_loc1_ || _loc1_))
                  {
                     continue;
                  }
                  b2_maxLinearCorrection = 0.2;
                  loop13:
                  while(true)
                  {
                     §§push(§§findproperty(b2_maxAngularCorrection));
                     §§push(8 / 180);
                     if(_loc1_)
                     {
                        §§push(§§pop() * b2_pi);
                     }
                     §§pop().b2_maxAngularCorrection = §§pop();
                     loop14:
                     while(true)
                     {
                        b2_maxTranslation = 2;
                        addr176:
                        loop15:
                        for(; _loc1_ || _loc1_; if(_loc2_ && b2Settings)
                        {
                           continue;
                        },if(!_loc1_)
                        {
                           continue loop13;
                        },if(!_loc2_)
                        {
                           if(_loc1_)
                           {
                              §§push(§§findproperty(b2_angularSleepTolerance));
                              §§push(2 / 180);
                              if(_loc1_ || _loc2_)
                              {
                                 §§push(§§pop() * b2Settings.b2_pi);
                              }
                              §§pop().b2_angularSleepTolerance = §§pop();
                              addr80:
                              if(_loc2_)
                              {
                                 loop21:
                                 while(true)
                                 {
                                    if(!_loc2_)
                                    {
                                       §§goto(addr60);
                                    }
                                    else
                                    {
                                       loop20:
                                       while(true)
                                       {
                                          if(_loc1_)
                                          {
                                             addr87:
                                             if(_loc1_ || _loc1_)
                                             {
                                                if(_loc1_)
                                                {
                                                   b2_linearSleepTolerance = 0.1;
                                                   continue loop21;
                                                }
                                                addr260:
                                                while(true)
                                                {
                                                   b2_toiSlop = 8 * b2_linearSlop;
                                                   while(true)
                                                   {
                                                      b2_maxTOIContactsPerIsland = 32;
                                                      addr237:
                                                      while(true)
                                                      {
                                                         b2_maxTOIJointsPerIsland = 32;
                                                         addr232:
                                                         while(true)
                                                         {
                                                            b2_velocityThreshold = 1;
                                                            break loop20;
                                                         }
                                                      }
                                                      addr211:
                                                      if(_loc2_ && _loc2_)
                                                      {
                                                         continue;
                                                      }
                                                      if(_loc1_)
                                                      {
                                                         §§goto(addr220);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr289);
                                                      }
                                                   }
                                                }
                                             }
                                             break;
                                          }
                                          continue loop14;
                                       }
                                       addr85:
                                    }
                                    while(true)
                                    {
                                       if(!(_loc2_ && _loc2_))
                                       {
                                          §§goto(addr211);
                                       }
                                       §§goto(addr232);
                                       §§goto(addr87);
                                    }
                                    §§goto(addr289);
                                 }
                                 §§goto(addr317);
                              }
                              §§goto(addr46);
                           }
                           §§goto(addr317);
                        },§§goto(addr237))
                        {
                           §§push(§§findproperty(b2_maxTranslationSquared));
                           §§push(b2_maxTranslation);
                           if(!(_loc2_ && _loc1_))
                           {
                              §§push(§§pop() * b2_maxTranslation);
                           }
                           §§pop().b2_maxTranslationSquared = §§pop();
                           while(true)
                           {
                              §§push(§§findproperty(b2_maxRotation));
                              §§push(0.5);
                              if(_loc1_)
                              {
                                 §§push(§§pop() * b2_pi);
                              }
                              §§pop().b2_maxRotation = §§pop();
                              loop17:
                              for(; _loc1_ || _loc1_; if(!(_loc2_ && _loc2_))
                              {
                                 continue loop3;
                              })
                              {
                                 §§push(§§findproperty(b2_maxRotationSquared));
                                 §§push(b2_maxRotation);
                                 if(!(_loc2_ && _loc2_))
                                 {
                                    §§push(§§pop() * b2_maxRotation);
                                 }
                                 §§pop().b2_maxRotationSquared = §§pop();
                                 loop18:
                                 while(true)
                                 {
                                    b2_contactBaumgarte = 0.2;
                                    while(true)
                                    {
                                       if(_loc1_)
                                       {
                                          continue loop17;
                                       }
                                       continue loop18;
                                       addr60:
                                       if(!(_loc2_ && _loc1_))
                                       {
                                          continue loop15;
                                       }
                                    }
                                    continue loop3;
                                 }
                              }
                           }
                        }
                        continue loop4;
                     }
                  }
               }
            }
            §§goto(addr312);
         }
      }
      
      public function b2Settings()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
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
         if(_loc4_ || b2Settings)
         {
            §§push(param1);
            if(_loc4_ || param2)
            {
               if(§§pop() > param2)
               {
                  addr45:
                  §§push(param1);
                  if(!_loc3_)
                  {
                     addr48:
                     §§push(Number(§§pop()));
                     if(!_loc4_)
                     {
                        addr55:
                        return Number(§§pop());
                     }
                  }
               }
               else
               {
                  §§push(param2);
                  if(!_loc3_)
                  {
                     §§goto(addr55);
                  }
               }
               return §§pop();
            }
            §§goto(addr48);
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
               if(!(_loc2_ && _loc2_))
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
