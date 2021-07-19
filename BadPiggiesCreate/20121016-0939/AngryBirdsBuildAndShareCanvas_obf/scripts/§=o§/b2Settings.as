package §=o§
{
   public class b2Settings
   {
      
      public static const VERSION:String = "2.1alpha";
      
      public static const §7Z§:int = 65535;
      
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
         if(!_loc2_)
         {
            VERSION = "2.1alpha";
         }
         while(true)
         {
            §7Z§ = 65535;
            while(!(_loc2_ && _loc1_))
            {
               b2_pi = Math.PI;
               loop2:
               while(true)
               {
                  b2_maxManifoldPoints = 2;
                  while(true)
                  {
                     b2_aabbExtension = 0.1;
                     loop4:
                     while(_loc1_)
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
                              while(true)
                              {
                                 §§push(§§findproperty(b2_angularSlop));
                                 §§push(2 / 180);
                                 if(_loc1_)
                                 {
                                    §§push(§§pop() * b2_pi);
                                 }
                                 §§pop().b2_angularSlop = §§pop();
                                 loop8:
                                 while(true)
                                 {
                                    b2_toiSlop = 8 * b2_linearSlop;
                                    loop9:
                                    while(true)
                                    {
                                       b2_maxTOIContactsPerIsland = 32;
                                       while(true)
                                       {
                                          b2_maxTOIJointsPerIsland = 32;
                                          while(!_loc2_)
                                          {
                                             b2_velocityThreshold = 1;
                                             while(!(_loc2_ && _loc2_))
                                             {
                                                b2_maxLinearCorrection = 0.2;
                                                while(_loc1_)
                                                {
                                                   §§push(§§findproperty(b2_maxAngularCorrection));
                                                   §§push(8 / 180);
                                                   if(!_loc2_)
                                                   {
                                                      §§push(§§pop() * b2_pi);
                                                   }
                                                   §§pop().b2_maxAngularCorrection = §§pop();
                                                   loop14:
                                                   while(!(_loc2_ && b2Settings))
                                                   {
                                                      b2_maxTranslation = 2;
                                                      while(true)
                                                      {
                                                         if(!_loc2_)
                                                         {
                                                            if(_loc2_)
                                                            {
                                                               break;
                                                            }
                                                            continue loop5;
                                                         }
                                                         continue loop14;
                                                      }
                                                      continue loop6;
                                                   }
                                                }
                                                continue loop2;
                                             }
                                          }
                                          continue loop4;
                                          loop21:
                                          while(_loc1_ || _loc2_)
                                          {
                                             if(!_loc2_)
                                             {
                                                §§push(§§findproperty(b2_angularSleepTolerance));
                                                §§push(2 / 180);
                                                if(!(_loc2_ && b2Settings))
                                                {
                                                   §§push(§§pop() * b2Settings.b2_pi);
                                                }
                                                §§pop().b2_angularSleepTolerance = §§pop();
                                                if(!(_loc1_ || _loc2_))
                                                {
                                                   continue;
                                                }
                                                if(!_loc2_)
                                                {
                                                   addr48:
                                                   if(!(_loc2_ && b2Settings))
                                                   {
                                                      return;
                                                   }
                                                   continue loop8;
                                                }
                                                loop20:
                                                while(true)
                                                {
                                                   if(!_loc2_)
                                                   {
                                                      addr76:
                                                      if(!(_loc2_ && _loc2_))
                                                      {
                                                         if(_loc2_)
                                                         {
                                                            break;
                                                         }
                                                         b2_linearSleepTolerance = 0.1;
                                                         continue loop21;
                                                      }
                                                      addr117:
                                                      while(true)
                                                      {
                                                         §§push(§§findproperty(b2_maxRotationSquared));
                                                         §§push(b2_maxRotation);
                                                         if(_loc1_)
                                                         {
                                                            §§push(§§pop() * b2_maxRotation);
                                                         }
                                                         §§pop().b2_maxRotationSquared = §§pop();
                                                         loop18:
                                                         while(true)
                                                         {
                                                            b2_contactBaumgarte = 0.2;
                                                            addr90:
                                                            while(true)
                                                            {
                                                               if(!(_loc2_ && _loc2_))
                                                               {
                                                                  if(!_loc1_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  b2_timeToSleep = 0.25;
                                                                  continue loop20;
                                                               }
                                                               continue loop18;
                                                            }
                                                            §§goto(addr198);
                                                         }
                                                         §§goto(addr76);
                                                      }
                                                   }
                                                   §§goto(addr90);
                                                }
                                                §§goto(addr157);
                                                continue;
                                             }
                                             continue loop9;
                                          }
                                       }
                                    }
                                 }
                              }
                           }
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
         if(!_loc2_)
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
         if(!_loc3_)
         {
            §§push(param1);
            if(!_loc3_)
            {
               if(§§pop() > param2)
               {
                  addr35:
                  §§push(param1);
                  if(!_loc3_)
                  {
                     §§push(Number(§§pop()));
                     if(_loc4_ || param1)
                     {
                        addr46:
                     }
                  }
                  §§goto(addr46);
               }
               else
               {
                  §§push(param2);
                  if(_loc4_ || param2)
                  {
                     return Number(§§pop());
                  }
               }
               return §§pop();
            }
            §§goto(addr46);
         }
         §§goto(addr35);
      }
      
      public static function b2Assert(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(!param1)
            {
               if(_loc2_)
               {
                  §§goto(addr32);
               }
            }
            return;
         }
         addr32:
         throw "Assertion Failed";
      }
   }
}
