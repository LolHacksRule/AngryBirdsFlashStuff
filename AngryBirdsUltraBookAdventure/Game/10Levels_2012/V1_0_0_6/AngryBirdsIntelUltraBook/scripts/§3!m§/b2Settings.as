package §3!m§
{
   public class b2Settings
   {
      
      public static const VERSION:String = "2.1alpha";
      
      public static const §?n§:int = 65535;
      
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
         if(_loc2_)
         {
            VERSION = "2.1alpha";
            while(true)
            {
               §?n§ = 65535;
               loop5:
               for(; _loc2_ || _loc2_; while(!(_loc1_ && _loc2_))
               {
                  b2_maxTOIJointsPerIsland = 32;
                  §§goto(addr234);
                  §§goto(addr107);
               })
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
                        if(!(_loc1_ && _loc1_))
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
                              continue loop5;
                              loop17:
                              while(true)
                              {
                                 if(_loc2_ || b2Settings)
                                 {
                                    continue loop6;
                                 }
                                 continue loop9;
                                 addr70:
                                 if(_loc1_ && b2Settings)
                                 {
                                    continue;
                                 }
                                 if(!_loc1_)
                                 {
                                    b2_linearSleepTolerance = 0.1;
                                    loop21:
                                    while(!(_loc1_ && b2Settings))
                                    {
                                       §§push(§§findproperty(b2_angularSleepTolerance));
                                       §§push(2 / 180);
                                       if(!_loc1_)
                                       {
                                          §§push(§§pop() * b2Settings.b2_pi);
                                       }
                                       §§pop().b2_angularSleepTolerance = §§pop();
                                       if(_loc1_ && _loc2_)
                                       {
                                          continue;
                                       }
                                       addr42:
                                       if(_loc1_)
                                       {
                                          while(true)
                                          {
                                             b2_timeToSleep = 0.25;
                                             break loop21;
                                             §§goto(addr42);
                                          }
                                          addr84:
                                       }
                                       if(_loc2_)
                                       {
                                          return;
                                       }
                                       addr175:
                                       loop16:
                                       while(!(_loc1_ && _loc1_))
                                       {
                                          if(!_loc1_)
                                          {
                                             §§push(§§findproperty(b2_maxRotation));
                                             §§push(0.5);
                                             if(!_loc1_)
                                             {
                                                §§push(§§pop() * b2_pi);
                                             }
                                             §§pop().b2_maxRotation = §§pop();
                                             continue loop17;
                                          }
                                          addr205:
                                          while(true)
                                          {
                                             b2_maxTranslation = 2;
                                             break loop16;
                                          }
                                       }
                                       while(true)
                                       {
                                          if(!(_loc1_ && b2Settings))
                                          {
                                             addr182:
                                             if(_loc1_ && _loc2_)
                                             {
                                                break;
                                             }
                                             §§push(§§findproperty(b2_maxTranslationSquared));
                                             §§push(b2_maxTranslation);
                                             if(!(_loc1_ && _loc2_))
                                             {
                                                §§push(§§pop() * b2_maxTranslation);
                                             }
                                             §§pop().b2_maxTranslationSquared = §§pop();
                                             continue;
                                          }
                                          continue loop8;
                                       }
                                       addr161:
                                       while(true)
                                       {
                                          b2_aabbMultiplier = 2;
                                          continue loop5;
                                          §§goto(addr182);
                                       }
                                       addr310:
                                    }
                                    loop20:
                                    while(true)
                                    {
                                       if(!(_loc2_ || b2Settings))
                                       {
                                          loop18:
                                          while(true)
                                          {
                                             if(!(_loc1_ && _loc1_))
                                             {
                                                if(_loc2_)
                                                {
                                                   addr107:
                                                   if(_loc1_ && _loc1_)
                                                   {
                                                      break;
                                                   }
                                                   b2_contactBaumgarte = 0.2;
                                                   §§goto(addr84);
                                                }
                                                else
                                                {
                                                   while(!_loc1_)
                                                   {
                                                      b2_velocityThreshold = 1;
                                                      continue loop8;
                                                   }
                                                   while(true)
                                                   {
                                                      b2_maxManifoldPoints = 2;
                                                      break loop20;
                                                   }
                                                   addr328:
                                                   addr234:
                                                }
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                   §§push(§§findproperty(b2_maxAngularCorrection));
                                                   §§push(8 / 180);
                                                   if(!(_loc1_ && b2Settings))
                                                   {
                                                      §§push(§§pop() * b2_pi);
                                                   }
                                                   §§pop().b2_maxAngularCorrection = §§pop();
                                                   continue loop18;
                                                }
                                                addr210:
                                             }
                                             §§goto(addr205);
                                          }
                                          continue loop5;
                                          addr98:
                                       }
                                       §§goto(addr70);
                                       §§goto(addr51);
                                    }
                                    addr51:
                                 }
                                 while(_loc2_ || _loc1_)
                                 {
                                    b2_aabbExtension = 0.1;
                                    §§goto(addr310);
                                 }
                                 while(true)
                                 {
                                    b2_pi = Math.PI;
                                    §§goto(addr328);
                                    §§goto(addr315);
                                 }
                                 addr315:
                              }
                              continue loop6;
                           }
                        }
                        if(!(_loc2_ || _loc1_))
                        {
                           continue;
                        }
                        b2_maxLinearCorrection = 0.2;
                        §§goto(addr210);
                     }
                  }
               }
            }
         }
         §§goto(addr333);
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
         if(!(_loc3_ && b2Settings))
         {
            §§push(param1);
            if(!_loc3_)
            {
               if(§§pop() > param2)
               {
                  addr40:
                  §§push(param1);
                  if(!_loc3_)
                  {
                     §§push(Number(§§pop()));
                     if(!_loc4_)
                     {
                        addr55:
                        §§push(Number(§§pop()));
                     }
                  }
                  §§goto(addr55);
               }
               else
               {
                  §§push(param2);
                  if(!(_loc3_ && param1))
                  {
                     §§goto(addr55);
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
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
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
