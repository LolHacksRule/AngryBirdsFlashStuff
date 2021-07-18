package §5"i§
{
   public class b2Settings
   {
      
      public static const VERSION:String = "2.1alpha";
      
      public static const §7&§:int = 65535;
      
      public static const b2_pi:Number = 3.141592653589793;
      
      public static const b2_maxManifoldPoints:int = 2;
      
      public static const b2_aabbExtension:Number = 0.1;
      
      public static const b2_aabbMultiplier:Number = 2.0;
      
      public static const b2_polygonRadius:Number;
      
      public static const §#!g§:Number = 0.05;
      
      public static const § !,§:Number = 0.005;
      
      public static const §'"<§:Number = 0.007;
      
      public static const §#"F§:Number;
      
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
      
      public static const §-!S§:Number = 0.1;
      
      public static const §#"s§:Number = 0.01;
      
      public static const §%"A§:Number = 0.1;
      
      public static var b2_linearSleepTolerance:Number = 0.1;
      
      public static const b2_angularSleepTolerance:Number = 0.03490658503988659;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            VERSION = "2.1alpha";
            loop0:
            while(true)
            {
               §7&§ = 65535;
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
                              b2_polygonRadius = 8 * b2_linearSlop;
                              while(true)
                              {
                                 §#!g§ = 0.05;
                                 loop7:
                                 while(!_loc1_)
                                 {
                                    § !,§ = 0.005;
                                    loop8:
                                    while(true)
                                    {
                                       §'"<§ = 0.007;
                                       loop9:
                                       while(!_loc1_)
                                       {
                                          §§push(§§findproperty(§#"F§));
                                          §§push(b2_linearSlop);
                                          if(!_loc1_)
                                          {
                                             §§push(§§pop() - § !,§);
                                          }
                                          §§pop().§#"F§ = §§pop();
                                          loop10:
                                          while(true)
                                          {
                                             b2_linearSlop = §'"<§;
                                             while(true)
                                             {
                                                §§push(§§findproperty(b2_angularSlop));
                                                §§push(2 / 180);
                                                if(_loc2_ || _loc1_)
                                                {
                                                   §§push(§§pop() * b2_pi);
                                                }
                                                §§pop().b2_angularSlop = §§pop();
                                                while(!_loc1_)
                                                {
                                                   if(!_loc1_)
                                                   {
                                                      b2_maxTOIContactsPerIsland = 32;
                                                      while(!_loc1_)
                                                      {
                                                         b2_maxTOIJointsPerIsland = 32;
                                                         continue loop8;
                                                      }
                                                      continue;
                                                      addr254:
                                                   }
                                                   continue loop0;
                                                }
                                                continue loop5;
                                                addr77:
                                                if(!(_loc2_ || b2Settings))
                                                {
                                                   continue;
                                                }
                                                b2_linearSleepTolerance = §-!S§;
                                                loop28:
                                                while(!(_loc1_ && _loc2_))
                                                {
                                                   §§push(§§findproperty(b2_angularSleepTolerance));
                                                   §§push(2 / 180);
                                                   if(!_loc1_)
                                                   {
                                                      §§push(§§pop() * b2Settings.b2_pi);
                                                   }
                                                   §§pop().b2_angularSleepTolerance = §§pop();
                                                   if(!(_loc2_ || b2Settings))
                                                   {
                                                      continue;
                                                   }
                                                   if(_loc2_)
                                                   {
                                                      if(_loc2_)
                                                      {
                                                         return;
                                                         addr51:
                                                      }
                                                      loop23:
                                                      while(_loc2_)
                                                      {
                                                         §-!S§ = 0.1;
                                                         while(!(_loc1_ && _loc2_))
                                                         {
                                                            if(!_loc1_)
                                                            {
                                                               if(!_loc1_)
                                                               {
                                                                  §#"s§ = 0.01;
                                                                  while(_loc2_)
                                                                  {
                                                                     addr91:
                                                                     if(_loc2_ || _loc2_)
                                                                     {
                                                                        if(_loc2_)
                                                                        {
                                                                           continue loop10;
                                                                        }
                                                                        continue loop8;
                                                                     }
                                                                     addr221:
                                                                     while(!_loc1_)
                                                                     {
                                                                        if(!_loc2_)
                                                                        {
                                                                           continue loop4;
                                                                        }
                                                                        if(_loc1_)
                                                                        {
                                                                           continue loop1;
                                                                        }
                                                                        b2_maxTranslation = 2;
                                                                        while(true)
                                                                        {
                                                                           §§push(§§findproperty(b2_maxTranslationSquared));
                                                                           §§push(b2_maxTranslation);
                                                                           if(_loc2_ || _loc1_)
                                                                           {
                                                                              §§push(§§pop() * b2_maxTranslation);
                                                                           }
                                                                           §§pop().b2_maxTranslationSquared = §§pop();
                                                                           addr193:
                                                                           addr237:
                                                                           while(_loc2_ || _loc1_)
                                                                           {
                                                                              §§push(§§findproperty(b2_maxRotation));
                                                                              §§push(0.5);
                                                                              if(!(_loc1_ && b2Settings))
                                                                              {
                                                                                 §§push(§§pop() * b2_pi);
                                                                              }
                                                                              §§pop().b2_maxRotation = §§pop();
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§findproperty(b2_maxRotationSquared));
                                                                                 §§push(b2_maxRotation);
                                                                                 if(!(_loc1_ && _loc1_))
                                                                                 {
                                                                                    §§push(§§pop() * b2_maxRotation);
                                                                                 }
                                                                                 §§pop().b2_maxRotationSquared = §§pop();
                                                                                 break loop23;
                                                                              }
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              b2_maxLinearCorrection = 0.2;
                                                                              break loop28;
                                                                              §§goto(addr193);
                                                                           }
                                                                        }
                                                                        §§goto(addr91);
                                                                     }
                                                                     continue loop7;
                                                                     while(!(_loc1_ && b2Settings))
                                                                     {
                                                                        if(_loc2_)
                                                                        {
                                                                           §§goto(addr77);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr205);
                                                                        }
                                                                     }
                                                                  }
                                                                  continue;
                                                                  addr89:
                                                               }
                                                               continue loop3;
                                                            }
                                                            §§goto(addr254);
                                                         }
                                                         while(true)
                                                         {
                                                            if(_loc2_)
                                                            {
                                                               if(_loc2_)
                                                               {
                                                                  b2_timeToSleep = 0.5;
                                                                  continue loop23;
                                                               }
                                                               §§goto(addr193);
                                                            }
                                                            break;
                                                            §§goto(addr112);
                                                         }
                                                         addr112:
                                                         §§goto(addr179);
                                                      }
                                                      while(_loc2_)
                                                      {
                                                         b2_contactBaumgarte = 0.2;
                                                         §§goto(addr135);
                                                      }
                                                      continue loop9;
                                                   }
                                                   §§goto(addr68);
                                                   §§goto(addr89);
                                                }
                                                while(true)
                                                {
                                                   §§push(§§findproperty(b2_maxAngularCorrection));
                                                   §§push(8 / 180);
                                                   if(_loc2_ || _loc2_)
                                                   {
                                                      §§push(§§pop() * b2_pi);
                                                   }
                                                   §§pop().b2_maxAngularCorrection = §§pop();
                                                   §§goto(addr221);
                                                   §§goto(addr56);
                                                }
                                                addr56:
                                             }
                                          }
                                       }
                                       continue loop2;
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
         while(true)
         {
            §%"A§ = 0.1;
            §§goto(addr68);
         }
         §§goto(addr51);
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
            if(_loc4_)
            {
               if(§§pop() > param2)
               {
                  addr35:
                  §§push(param1);
                  if(_loc4_)
                  {
                     §§push(Number(§§pop()));
                     if(!(_loc3_ && _loc3_))
                     {
                        addr56:
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
               return §§pop();
            }
            §§goto(addr56);
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
               if(!_loc3_)
               {
                  throw "Assertion Failed";
               }
            }
         }
      }
   }
}
