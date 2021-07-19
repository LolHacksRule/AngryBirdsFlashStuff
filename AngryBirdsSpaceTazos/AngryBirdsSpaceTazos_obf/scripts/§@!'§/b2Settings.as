package §@!'§
{
   public class b2Settings
   {
      
      public static const VERSION:String = "2.1alpha";
      
      public static const §?!v§:int = 65535;
      
      public static const b2_pi:Number = 3.141592653589793;
      
      public static const b2_maxManifoldPoints:int = 2;
      
      public static const b2_aabbExtension:Number = 0.1;
      
      public static const b2_aabbMultiplier:Number = 2.0;
      
      public static const b2_polygonRadius:Number;
      
      public static const §!d§:Number = 0.05;
      
      public static const §2T§:Number = 0.005;
      
      public static const §"!'§:Number = 0.007;
      
      public static const §4I§:Number;
      
      public static const b2_linearSlop:Number = 0.007;
      
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
      
      public static const §+!q§:Number = 0.1;
      
      public static const §"!=§:Number = 0.01;
      
      public static const §'!t§:Number = 0.1;
      
      public static var b2_linearSleepTolerance:Number = 0.1;
      
      public static const b2_angularSleepTolerance:Number = 0.03490658503988659;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            VERSION = "2.1alpha";
            while(true)
            {
               §?!v§ = 65535;
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
                           while(true)
                           {
                              b2_polygonRadius = 2 * b2_linearSlop;
                              loop6:
                              while(true)
                              {
                                 §!d§ = 0.05;
                                 loop7:
                                 while(true)
                                 {
                                    §2T§ = 0.005;
                                    loop8:
                                    while(!_loc1_)
                                    {
                                       §"!'§ = 0.007;
                                       loop9:
                                       while(true)
                                       {
                                          §§push(§§findproperty(§4I§));
                                          §§push(b2_linearSlop);
                                          if(!_loc1_)
                                          {
                                             §§push(§§pop() - §2T§);
                                          }
                                          §§pop().§4I§ = §§pop();
                                          addr205:
                                          if(!(_loc2_ || _loc2_))
                                          {
                                             continue;
                                          }
                                          if(_loc1_)
                                          {
                                             continue loop8;
                                          }
                                          §§push(§§findproperty(b2_maxTranslationSquared));
                                          §§push(b2_maxTranslation);
                                          if(_loc2_ || _loc2_)
                                          {
                                             §§push(§§pop() * b2_maxTranslation);
                                          }
                                          §§pop().b2_maxTranslationSquared = §§pop();
                                          loop19:
                                          while(true)
                                          {
                                             §§push(§§findproperty(b2_maxRotation));
                                             §§push(0.5);
                                             if(_loc2_ || _loc2_)
                                             {
                                                §§push(§§pop() * b2_pi);
                                             }
                                             §§pop().b2_maxRotation = §§pop();
                                             loop20:
                                             for(; _loc2_; loop23:
                                             while(true)
                                             {
                                                if(_loc2_ || _loc2_)
                                                {
                                                   addr126:
                                                   if(!(_loc1_ && b2Settings))
                                                   {
                                                      §+!q§ = 0.1;
                                                      loop24:
                                                      while(true)
                                                      {
                                                         §"!=§ = 0.01;
                                                         loop25:
                                                         while(true)
                                                         {
                                                            if(!(_loc1_ && _loc2_))
                                                            {
                                                               if(!_loc1_)
                                                               {
                                                                  if(_loc1_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  §'!t§ = 0.1;
                                                                  while(true)
                                                                  {
                                                                     if(!_loc2_)
                                                                     {
                                                                        continue loop25;
                                                                     }
                                                                     if(_loc2_)
                                                                     {
                                                                        addr84:
                                                                        if(_loc1_ && _loc1_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        if(!_loc1_)
                                                                        {
                                                                           b2_linearSleepTolerance = §+!q§;
                                                                           continue;
                                                                        }
                                                                        addr302:
                                                                        while(true)
                                                                        {
                                                                           b2_linearSlop = §"!'§;
                                                                           addr293:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§findproperty(b2_angularSlop));
                                                                              §§push(2 / 180);
                                                                              if(!_loc1_)
                                                                              {
                                                                                 §§push(§§pop() * b2_pi);
                                                                              }
                                                                              §§pop().b2_angularSlop = §§pop();
                                                                              break loop23;
                                                                           }
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr138);
                                                                     }
                                                                  }
                                                                  continue loop7;
                                                               }
                                                               continue loop19;
                                                            }
                                                            continue loop24;
                                                         }
                                                         addr277:
                                                         while(true)
                                                         {
                                                            b2_maxTOIJointsPerIsland = 32;
                                                            continue loop1;
                                                         }
                                                      }
                                                   }
                                                   break;
                                                }
                                                continue loop20;
                                             },while(true)
                                             {
                                                b2_maxTOIContactsPerIsland = 32;
                                                §§goto(addr277);
                                                §§goto(addr126);
                                             })
                                             {
                                                §§push(§§findproperty(b2_maxRotationSquared));
                                                §§push(b2_maxRotation);
                                                if(_loc2_ || _loc1_)
                                                {
                                                   §§push(§§pop() * b2_maxRotation);
                                                }
                                                §§pop().b2_maxRotationSquared = §§pop();
                                                loop21:
                                                while(true)
                                                {
                                                   b2_contactBaumgarte = 0.2;
                                                   addr138:
                                                   while(true)
                                                   {
                                                      if(!_loc1_)
                                                      {
                                                         if(!_loc1_)
                                                         {
                                                            if(!_loc2_)
                                                            {
                                                               break;
                                                            }
                                                            b2_timeToSleep = 0.5;
                                                            continue loop20;
                                                         }
                                                         addr249:
                                                         addr242:
                                                         while(!_loc1_)
                                                         {
                                                            §§push(§§findproperty(b2_maxAngularCorrection));
                                                            §§push(8 / 180);
                                                            if(!(_loc1_ && _loc2_))
                                                            {
                                                               §§push(§§pop() * b2_pi);
                                                            }
                                                            §§pop().b2_maxAngularCorrection = §§pop();
                                                            continue loop7;
                                                         }
                                                         while(_loc2_)
                                                         {
                                                            continue loop3;
                                                         }
                                                         continue loop4;
                                                      }
                                                      continue loop21;
                                                   }
                                                   continue loop6;
                                                }
                                             }
                                             addr203:
                                             while(true)
                                             {
                                                if(_loc1_)
                                                {
                                                   continue loop1;
                                                }
                                                §§goto(addr205);
                                             }
                                             continue loop9;
                                          }
                                       }
                                    }
                                    continue loop2;
                                 }
                              }
                              if(_loc1_ && _loc2_)
                              {
                                 continue;
                              }
                              §§goto(addr75);
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr302);
      }
      
      public function b2Settings()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
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
         if(!_loc3_)
         {
            §§push(param1);
            if(_loc4_)
            {
               if(§§pop() > param2)
               {
                  addr35:
                  §§push(param1);
                  if(!_loc3_)
                  {
                     §§push(Number(§§pop()));
                     if(_loc3_)
                     {
                     }
                  }
                  else
                  {
                     addr55:
                     return Number(§§pop());
                  }
               }
               else
               {
                  §§push(param2);
                  if(_loc4_)
                  {
                     §§goto(addr55);
                  }
               }
               return §§pop();
            }
            §§goto(addr55);
         }
         §§goto(addr35);
      }
      
      public static function b2Assert(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            if(!param1)
            {
               if(_loc3_ || _loc3_)
               {
                  throw "Assertion Failed";
               }
            }
         }
      }
   }
}
