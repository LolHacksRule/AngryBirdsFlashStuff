package §_-5§
{
   public class b2Settings
   {
      
      public static const VERSION:String = "2.1alpha";
      
      public static const §_-qJ§:int = 65535;
      
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
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            VERSION = "2.1alpha";
            loop0:
            while(true)
            {
               §_-qJ§ = 65535;
               loop1:
               while(true)
               {
                  b2_pi = Math.PI;
                  while(true)
                  {
                     b2_maxManifoldPoints = 2;
                     while(!_loc1_)
                     {
                        b2_aabbExtension = 0.1;
                        while(true)
                        {
                           b2_aabbMultiplier = 2;
                           continue loop0;
                        }
                        loop8:
                        for(; !(_loc1_ && _loc1_); if(!(_loc1_ && b2Settings))
                        {
                           return;
                        })
                        {
                           b2_toiSlop = 8 * b2_linearSlop;
                           loop9:
                           while(true)
                           {
                              b2_maxTOIContactsPerIsland = 32;
                              loop10:
                              while(true)
                              {
                                 b2_maxTOIJointsPerIsland = 32;
                                 loop11:
                                 while(_loc2_)
                                 {
                                    b2_velocityThreshold = 1;
                                    loop12:
                                    while(!_loc1_)
                                    {
                                       b2_maxLinearCorrection = 0.2;
                                       loop13:
                                       while(true)
                                       {
                                          §§push(§§findproperty(b2_maxAngularCorrection));
                                          §§push(8 / 180);
                                          if(_loc2_ || _loc1_)
                                          {
                                             §§push(§§pop() * b2_pi);
                                          }
                                          §§pop().b2_maxAngularCorrection = §§pop();
                                          loop14:
                                          while(true)
                                          {
                                             b2_maxTranslation = 2;
                                             addr199:
                                             while(true)
                                             {
                                                §§push(§§findproperty(b2_maxTranslationSquared));
                                                §§push(b2_maxTranslation);
                                                if(!(_loc1_ && _loc1_))
                                                {
                                                   §§push(§§pop() * b2_maxTranslation);
                                                }
                                                §§pop().b2_maxTranslationSquared = §§pop();
                                                addr194:
                                                while(true)
                                                {
                                                   §§push(§§findproperty(b2_maxRotation));
                                                   §§push(0.5);
                                                   if(!(_loc1_ && _loc2_))
                                                   {
                                                      §§push(§§pop() * b2_pi);
                                                   }
                                                   §§pop().b2_maxRotation = §§pop();
                                                   continue loop13;
                                                   addr59:
                                                   if(_loc2_ || b2Settings)
                                                   {
                                                      continue loop8;
                                                   }
                                                }
                                             }
                                             addr108:
                                             if(!(_loc1_ && _loc1_))
                                             {
                                                if(_loc2_)
                                                {
                                                   b2_linearSleepTolerance = 0.1;
                                                   while(true)
                                                   {
                                                      if(!(_loc1_ && _loc1_))
                                                      {
                                                         if(_loc1_)
                                                         {
                                                            break;
                                                         }
                                                         addr87:
                                                         if(!(_loc1_ && _loc1_))
                                                         {
                                                            continue;
                                                         }
                                                         addr281:
                                                         while(true)
                                                         {
                                                            if(_loc2_ || b2Settings)
                                                            {
                                                               b2_linearSlop = 0.05;
                                                               break loop11;
                                                            }
                                                            break;
                                                            §§goto(addr87);
                                                         }
                                                         continue loop0;
                                                      }
                                                      loop20:
                                                      while(true)
                                                      {
                                                         if(_loc1_ && _loc2_)
                                                         {
                                                            while(true)
                                                            {
                                                               if(!_loc1_)
                                                               {
                                                                  if(!_loc2_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  b2_timeToSleep = 0.25;
                                                                  continue loop20;
                                                               }
                                                               continue loop13;
                                                            }
                                                            continue loop12;
                                                            addr122:
                                                         }
                                                         if(_loc2_)
                                                         {
                                                            §§goto(addr108);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr199);
                                                         }
                                                      }
                                                      continue loop14;
                                                   }
                                                   continue loop9;
                                                }
                                                continue loop1;
                                             }
                                          }
                                       }
                                    }
                                    continue loop10;
                                    if(!(_loc2_ || b2Settings))
                                    {
                                       continue;
                                    }
                                    if(!_loc1_)
                                    {
                                       §§push(§§findproperty(b2_maxRotationSquared));
                                       §§push(b2_maxRotation);
                                       if(!(_loc1_ && _loc2_))
                                       {
                                          §§push(§§pop() * b2_maxRotation);
                                       }
                                       §§pop().b2_maxRotationSquared = §§pop();
                                       §§goto(addr140);
                                    }
                                    §§goto(addr315);
                                 }
                                 while(true)
                                 {
                                    §§push(§§findproperty(b2_angularSlop));
                                    §§push(2 / 180);
                                    if(!(_loc1_ && _loc2_))
                                    {
                                       §§push(§§pop() * b2_pi);
                                    }
                                    §§pop().b2_angularSlop = §§pop();
                                    continue loop8;
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr199);
      }
      
      public function b2Settings()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
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
         if(_loc4_)
         {
            §§push(param1);
            if(!_loc3_)
            {
               if(§§pop() > param2)
               {
                  addr35:
                  §§push(param1);
                  if(_loc4_ || _loc3_)
                  {
                     addr43:
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
               return §§pop();
            }
            §§goto(addr43);
         }
         §§goto(addr35);
      }
      
      public static function b2Assert(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            if(!param1)
            {
               if(_loc3_ || param1)
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
