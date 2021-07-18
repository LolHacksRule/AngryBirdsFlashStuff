package §,"[§
{
   public class b2Settings
   {
      
      public static const VERSION:String = "2.1alpha";
      
      public static const §?W§:int = 65535;
      
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
               §?W§ = 65535;
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
                                 loop7:
                                 while(true)
                                 {
                                    §§push(§§findproperty(b2_angularSlop));
                                    §§push(2 / 180);
                                    if(_loc1_ || _loc2_)
                                    {
                                       §§push(§§pop() * b2_pi);
                                    }
                                    §§pop().b2_angularSlop = §§pop();
                                    loop8:
                                    while(true)
                                    {
                                       b2_toiSlop = 8 * b2_linearSlop;
                                       while(true)
                                       {
                                          b2_maxTOIContactsPerIsland = 32;
                                          continue loop7;
                                          addr107:
                                          if(!(_loc2_ && b2Settings))
                                          {
                                             b2_timeToSleep = 0.25;
                                             addr209:
                                             loop21:
                                             while(_loc1_)
                                             {
                                                b2_linearSleepTolerance = 0.1;
                                                while(true)
                                                {
                                                   if(_loc1_ || _loc2_)
                                                   {
                                                      addr74:
                                                      if(_loc2_ && _loc1_)
                                                      {
                                                         break;
                                                      }
                                                      continue loop5;
                                                   }
                                                   addr175:
                                                   addr202:
                                                   while(!_loc2_)
                                                   {
                                                      continue loop3;
                                                   }
                                                   addr88:
                                                   while(!_loc2_)
                                                   {
                                                      b2_maxTranslation = 2;
                                                      break loop21;
                                                   }
                                                   §§push(§§findproperty(b2_angularSleepTolerance));
                                                   §§push(2 / 180);
                                                   continue loop8;
                                                   if(!_loc2_)
                                                   {
                                                      §§push(§§pop() * b2Settings.b2_pi);
                                                   }
                                                   §§pop().b2_angularSleepTolerance = §§pop();
                                                   if(_loc1_ || _loc1_)
                                                   {
                                                      if(_loc1_ || b2Settings)
                                                      {
                                                         if(_loc1_)
                                                         {
                                                            addr55:
                                                            if(!(_loc2_ && _loc1_))
                                                            {
                                                               return;
                                                            }
                                                            loop19:
                                                            while(true)
                                                            {
                                                               if(!(_loc2_ && b2Settings))
                                                               {
                                                                  if(_loc2_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  b2_contactBaumgarte = 0.2;
                                                               }
                                                               else
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push(§§findproperty(b2_maxRotationSquared));
                                                                     §§push(b2_maxRotation);
                                                                     if(_loc1_ || b2Settings)
                                                                     {
                                                                        §§push(§§pop() * b2_maxRotation);
                                                                     }
                                                                     §§pop().b2_maxRotationSquared = §§pop();
                                                                     continue loop19;
                                                                  }
                                                                  addr161:
                                                               }
                                                            }
                                                            continue loop6;
                                                         }
                                                         while(!(_loc2_ && b2Settings))
                                                         {
                                                            §§goto(addr107);
                                                         }
                                                         while(!_loc2_)
                                                         {
                                                            continue loop1;
                                                            §§goto(addr100);
                                                         }
                                                         addr100:
                                                         continue loop4;
                                                         addr221:
                                                      }
                                                      continue loop21;
                                                      continue loop21;
                                                   }
                                                }
                                                continue loop7;
                                             }
                                             while(_loc1_)
                                             {
                                                while(true)
                                                {
                                                   §§push(§§findproperty(b2_maxTranslationSquared));
                                                   §§push(b2_maxTranslation);
                                                   if(_loc1_ || _loc1_)
                                                   {
                                                      §§push(§§pop() * b2_maxTranslation);
                                                   }
                                                   §§pop().b2_maxTranslationSquared = §§pop();
                                                   §§goto(addr175);
                                                }
                                             }
                                             while(_loc1_ || _loc1_)
                                             {
                                                §§push(§§findproperty(b2_maxAngularCorrection));
                                                §§push(8 / 180);
                                                if(_loc1_)
                                                {
                                                   §§push(§§pop() * b2_pi);
                                                }
                                                §§pop().b2_maxAngularCorrection = §§pop();
                                                §§goto(addr202);
                                             }
                                             continue loop2;
                                             addr209:
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        continue loop0;
                     }
                  }
               }
            }
         }
         §§goto(addr191);
      }
      
      public function b2Settings()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
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
            if(!(_loc3_ && _loc3_))
            {
               if(§§pop() > param2)
               {
                  addr50:
                  §§push(param1);
                  if(_loc4_ || param2)
                  {
                     addr58:
                     §§push(Number(§§pop()));
                     if(_loc3_)
                     {
                     }
                     §§goto(addr71);
                  }
                  addr70:
                  §§push(Number(§§pop()));
               }
               else
               {
                  §§push(param2);
                  if(!(_loc3_ && b2Settings))
                  {
                     §§goto(addr70);
                  }
               }
               addr71:
               return §§pop();
            }
            §§goto(addr58);
         }
         §§goto(addr50);
      }
      
      public static function b2Assert(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            if(!param1)
            {
               if(!(_loc2_ && _loc3_))
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
