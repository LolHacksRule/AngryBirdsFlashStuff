package §@!3§
{
   public class b2Settings
   {
      
      public static const VERSION:String = "2.1alpha";
      
      public static const §,!"§:int = 65535;
      
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
         if(!(_loc2_ && _loc1_))
         {
            VERSION = "2.1alpha";
            loop0:
            while(true)
            {
               §,!"§ = 65535;
               loop1:
               while(true)
               {
                  b2_pi = Math.PI;
                  addr292:
                  while(true)
                  {
                     b2_maxManifoldPoints = 2;
                     while(_loc1_)
                     {
                        if(!(_loc2_ && _loc2_))
                        {
                           continue loop0;
                        }
                     }
                     continue loop1;
                  }
               }
            }
         }
         while(true)
         {
            b2_aabbExtension = 0.1;
            loop5:
            while(true)
            {
               b2_aabbMultiplier = 2;
               loop6:
               while(true)
               {
                  b2_polygonRadius = 2 * b2_linearSlop;
                  while(true)
                  {
                     b2_linearSlop = 0.05;
                     addr250:
                     while(!_loc2_)
                     {
                        §§push(§§findproperty(b2_angularSlop));
                        §§push(2 / 180);
                        if(_loc1_)
                        {
                           §§push(§§pop() * b2_pi);
                        }
                        §§pop().b2_angularSlop = §§pop();
                        continue loop5;
                     }
                     continue loop6;
                     while(_loc1_ || _loc1_)
                     {
                        b2_maxTOIJointsPerIsland = 32;
                        loop12:
                        for(; !(_loc2_ && _loc1_); while(!(_loc2_ && _loc1_))
                        {
                           §§push(§§findproperty(b2_maxRotationSquared));
                           §§push(b2_maxRotation);
                           if(_loc1_ || b2Settings)
                           {
                              §§push(§§pop() * b2_maxRotation);
                           }
                           §§pop().b2_maxRotationSquared = §§pop();
                           §§goto(addr111);
                        })
                        {
                           b2_velocityThreshold = 1;
                           loop13:
                           for(; _loc1_; if(_loc2_ && b2Settings)
                           {
                              continue;
                           },b2_timeToSleep = 0.25,§§goto(addr74))
                           {
                              b2_maxLinearCorrection = 0.2;
                              loop14:
                              while(true)
                              {
                                 §§push(§§findproperty(b2_maxAngularCorrection));
                                 §§push(8 / 180);
                                 if(_loc1_)
                                 {
                                    §§push(§§pop() * b2_pi);
                                 }
                                 §§pop().b2_maxAngularCorrection = §§pop();
                                 loop15:
                                 while(_loc1_)
                                 {
                                    b2_maxTranslation = 2;
                                    loop16:
                                    while(true)
                                    {
                                       §§push(§§findproperty(b2_maxTranslationSquared));
                                       §§push(b2_maxTranslation);
                                       if(_loc1_)
                                       {
                                          §§push(§§pop() * b2_maxTranslation);
                                       }
                                       §§pop().b2_maxTranslationSquared = §§pop();
                                       loop17:
                                       while(true)
                                       {
                                          if(_loc1_ || b2Settings)
                                          {
                                             continue loop14;
                                          }
                                          continue loop16;
                                          addr74:
                                          loop21:
                                          while(true)
                                          {
                                             if(!(_loc2_ && _loc1_))
                                             {
                                                if(_loc2_)
                                                {
                                                   break;
                                                }
                                                b2_linearSleepTolerance = 0.1;
                                                while(_loc1_)
                                                {
                                                   §§push(§§findproperty(b2_angularSleepTolerance));
                                                   §§push(2 / 180);
                                                   if(!(_loc2_ && b2Settings))
                                                   {
                                                      §§push(§§pop() * b2Settings.b2_pi);
                                                   }
                                                   §§pop().b2_angularSleepTolerance = §§pop();
                                                   if(!_loc1_)
                                                   {
                                                      continue;
                                                   }
                                                   if(!_loc1_)
                                                   {
                                                      continue loop21;
                                                   }
                                                   §§goto(addr48);
                                                }
                                                loop20:
                                                while(true)
                                                {
                                                   if(_loc1_)
                                                   {
                                                      continue loop13;
                                                   }
                                                   addr111:
                                                   while(true)
                                                   {
                                                      if(!_loc2_)
                                                      {
                                                         if(!_loc1_)
                                                         {
                                                            break;
                                                         }
                                                         b2_contactBaumgarte = 0.2;
                                                         continue loop20;
                                                      }
                                                      continue loop12;
                                                   }
                                                   continue loop15;
                                                }
                                                continue loop13;
                                             }
                                             continue loop17;
                                          }
                                          continue loop5;
                                       }
                                       §§goto(addr292);
                                    }
                                 }
                                 addr227:
                                 while(true)
                                 {
                                    b2_maxTOIContactsPerIsland = 32;
                                    break loop12;
                                 }
                              }
                           }
                           §§goto(addr250);
                        }
                     }
                  }
               }
            }
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
         if(_loc4_ || _loc3_)
         {
            §§push(param1);
            if(!(_loc3_ && b2Settings))
            {
               if(§§pop() > param2)
               {
                  addr55:
                  §§push(param1);
                  if(_loc4_ || _loc3_)
                  {
                     addr63:
                     §§push(Number(§§pop()));
                     if(_loc3_)
                     {
                     }
                     §§goto(addr76);
                  }
               }
               else
               {
                  §§push(param2);
                  if(!(_loc3_ && param2))
                  {
                     §§push(Number(§§pop()));
                  }
               }
               addr76:
               return §§pop();
            }
            §§goto(addr63);
         }
         §§goto(addr55);
      }
      
      public static function b2Assert(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            if(!param1)
            {
               if(_loc2_ || _loc3_)
               {
                  throw "Assertion Failed";
               }
            }
         }
      }
   }
}
