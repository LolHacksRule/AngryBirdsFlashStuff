package §'!_§
{
   public class b2Settings
   {
      
      public static const VERSION:String = "2.1alpha";
      
      public static const §;!2§:int = 65535;
      
      public static const b2_pi:Number = 3.141592653589793;
      
      public static const b2_maxManifoldPoints:int = 2;
      
      public static const b2_aabbExtension:Number = 0.1;
      
      public static const b2_aabbMultiplier:Number = 2.0;
      
      public static const b2_polygonRadius:Number;
      
      public static const §5!K§:Number = 0.05;
      
      public static const §@!P§:Number = 0.005;
      
      public static const §0F§:Number = 0.007;
      
      public static const §3!8§:Number;
      
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
      
      public static const §8"6§:Number = 0.1;
      
      public static const §&y§:Number = 0.01;
      
      public static const §+"6§:Number = 0.1;
      
      public static var b2_linearSleepTolerance:Number = 0.1;
      
      public static const b2_angularSleepTolerance:Number = 0.03490658503988659;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || b2Settings)
         {
            VERSION = "2.1alpha";
            loop0:
            while(true)
            {
               §;!2§ = 65535;
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
                                 §5!K§ = 0.05;
                                 while(!_loc2_)
                                 {
                                    §@!P§ = 0.005;
                                    continue loop0;
                                    addr92:
                                    if(_loc2_ && b2Settings)
                                    {
                                       continue;
                                    }
                                    if(_loc2_)
                                    {
                                       continue loop3;
                                    }
                                    b2_linearSleepTolerance = §8"6§;
                                    loop28:
                                    while(true)
                                    {
                                       if(!_loc2_)
                                       {
                                          if(_loc2_)
                                          {
                                             break;
                                          }
                                          if(!_loc2_)
                                          {
                                             continue;
                                          }
                                          continue loop5;
                                       }
                                       loop26:
                                       while(true)
                                       {
                                          if(!_loc2_)
                                          {
                                             addr108:
                                             if(!(_loc2_ && _loc2_))
                                             {
                                                if(_loc1_)
                                                {
                                                   if(!_loc1_)
                                                   {
                                                      continue loop0;
                                                   }
                                                   §+"6§ = 0.1;
                                                   loop27:
                                                   while(true)
                                                   {
                                                      if(!(_loc2_ && _loc2_))
                                                      {
                                                         addr85:
                                                         if(_loc2_ && _loc1_)
                                                         {
                                                            break;
                                                         }
                                                         §§goto(addr92);
                                                      }
                                                      loop23:
                                                      while(true)
                                                      {
                                                         if(!_loc2_)
                                                         {
                                                            if(_loc2_)
                                                            {
                                                               break;
                                                            }
                                                            b2_timeToSleep = 0.5;
                                                            while(true)
                                                            {
                                                               §8"6§ = 0.1;
                                                               addr124:
                                                               while(!(_loc2_ && _loc1_))
                                                               {
                                                                  §&y§ = 0.01;
                                                                  continue loop26;
                                                               }
                                                               loop20:
                                                               while(true)
                                                               {
                                                                  §§push(§§findproperty(b2_maxRotation));
                                                                  §§push(0.5);
                                                                  if(_loc1_ || _loc1_)
                                                                  {
                                                                     §§push(§§pop() * b2_pi);
                                                                  }
                                                                  §§pop().b2_maxRotation = §§pop();
                                                                  addr173:
                                                                  addr293:
                                                                  while(_loc1_ || _loc2_)
                                                                  {
                                                                     §§push(§§findproperty(b2_maxRotationSquared));
                                                                     §§push(b2_maxRotation);
                                                                     if(!(_loc2_ && b2Settings))
                                                                     {
                                                                        §§push(§§pop() * b2_maxRotation);
                                                                     }
                                                                     §§pop().b2_maxRotationSquared = §§pop();
                                                                     if(!(_loc2_ && b2Settings))
                                                                     {
                                                                        continue loop2;
                                                                     }
                                                                  }
                                                                  addr314:
                                                                  while(!_loc2_)
                                                                  {
                                                                     §§push(§§findproperty(b2_angularSlop));
                                                                     §§push(2 / 180);
                                                                     if(!(_loc2_ && _loc2_))
                                                                     {
                                                                        §§push(§§pop() * b2_pi);
                                                                     }
                                                                     §§pop().b2_angularSlop = §§pop();
                                                                     loop12:
                                                                     while(true)
                                                                     {
                                                                        b2_maxTOIContactsPerIsland = 32;
                                                                        addr270:
                                                                        while(_loc1_)
                                                                        {
                                                                           b2_maxTOIJointsPerIsland = 32;
                                                                           continue loop12;
                                                                           if(_loc2_ && b2Settings)
                                                                           {
                                                                              continue;
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§push(§§findproperty(b2_maxTranslationSquared));
                                                                              §§push(b2_maxTranslation);
                                                                              if(!(_loc2_ && _loc1_))
                                                                              {
                                                                                 §§push(§§pop() * b2_maxTranslation);
                                                                              }
                                                                              §§pop().b2_maxTranslationSquared = §§pop();
                                                                              continue loop20;
                                                                           }
                                                                        }
                                                                        continue loop6;
                                                                     }
                                                                     §§goto(addr173);
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§push(§§findproperty(§3!8§));
                                                                     §§push(b2_linearSlop);
                                                                     if(_loc1_ || _loc2_)
                                                                     {
                                                                        §§push(§§pop() - §@!P§);
                                                                     }
                                                                     §§pop().§3!8§ = §§pop();
                                                                     break loop27;
                                                                  }
                                                               }
                                                               §§goto(addr108);
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            b2_contactBaumgarte = 0.2;
                                                            continue loop23;
                                                         }
                                                      }
                                                      continue loop4;
                                                      addr41:
                                                      if(_loc2_ && _loc2_)
                                                      {
                                                         continue;
                                                      }
                                                      §§goto(addr48);
                                                   }
                                                   while(true)
                                                   {
                                                      b2_linearSlop = §5!K§;
                                                      §§goto(addr293);
                                                      §§goto(addr85);
                                                   }
                                                }
                                                break;
                                             }
                                             §§goto(addr136);
                                          }
                                          §§goto(addr124);
                                       }
                                       while(_loc1_ || _loc1_)
                                       {
                                          §§push(§§findproperty(b2_maxAngularCorrection));
                                          §§push(8 / 180);
                                          if(_loc1_ || _loc2_)
                                          {
                                             §§push(§§pop() * b2_pi);
                                          }
                                          §§pop().b2_maxAngularCorrection = §§pop();
                                          while(true)
                                          {
                                             b2_maxTranslation = 2;
                                             break loop28;
                                          }
                                       }
                                       §§goto(addr251);
                                    }
                                    while(true)
                                    {
                                       if(!_loc2_)
                                       {
                                          §§goto(addr211);
                                       }
                                       §§goto(addr234);
                                    }
                                    §§goto(addr270);
                                 }
                                 continue loop1;
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr218);
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
         if(_loc4_)
         {
            §§push(param1);
            if(!_loc3_)
            {
               if(§§pop() > param2)
               {
                  addr35:
                  §§push(param1);
                  if(_loc4_)
                  {
                     §§push(Number(§§pop()));
                     if(_loc4_ || _loc3_)
                     {
                     }
                  }
               }
               else
               {
                  §§push(param2);
                  if(_loc4_)
                  {
                     return Number(§§pop());
                  }
               }
            }
            return §§pop();
         }
         §§goto(addr35);
      }
      
      public static function b2Assert(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(!param1)
            {
               if(!(_loc2_ && _loc3_))
               {
                  §§goto(addr48);
               }
            }
            return;
         }
         addr48:
         throw "Assertion Failed";
      }
   }
}
