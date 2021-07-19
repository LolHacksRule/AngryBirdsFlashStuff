package §>!@§
{
   public class b2Settings
   {
      
      public static const VERSION:String = "2.1alpha";
      
      public static const §?!G§:int = 65535;
      
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
         if(_loc1_)
         {
            VERSION = "2.1alpha";
            while(true)
            {
               §?!G§ = 65535;
               loop1:
               while(true)
               {
                  b2_pi = Math.PI;
                  addr292:
                  while(true)
                  {
                     b2_maxManifoldPoints = 2;
                     addr274:
                     while(!_loc2_)
                     {
                     }
                     continue loop1;
                  }
               }
               addr71:
               if(_loc2_ && b2Settings)
               {
                  continue;
               }
               b2_linearSleepTolerance = 0.1;
               loop22:
               while(true)
               {
                  if(!(_loc2_ && b2Settings))
                  {
                     if(_loc1_)
                     {
                        addr57:
                        if(_loc2_ && _loc2_)
                        {
                           break;
                        }
                        continue;
                     }
                     while(true)
                     {
                        b2_contactBaumgarte = 0.2;
                     }
                     addr110:
                  }
                  loop20:
                  while(true)
                  {
                     if(_loc1_ || b2Settings)
                     {
                        addr90:
                        if(_loc1_ || _loc2_)
                        {
                           if(!_loc2_)
                           {
                              if(!_loc2_)
                              {
                                 b2_timeToSleep = 0.25;
                                 while(!_loc2_)
                                 {
                                    §§goto(addr71);
                                    if(_loc1_ || _loc2_)
                                    {
                                       return;
                                    }
                                 }
                                 while(true)
                                 {
                                    b2_velocityThreshold = 1;
                                    addr212:
                                    while(true)
                                    {
                                       b2_maxLinearCorrection = 0.2;
                                       addr207:
                                       while(true)
                                       {
                                          §§push(§§findproperty(b2_maxAngularCorrection));
                                          §§push(8 / 180);
                                          if(_loc1_ || _loc1_)
                                          {
                                             §§push(§§pop() * b2_pi);
                                          }
                                          §§pop().b2_maxAngularCorrection = §§pop();
                                          break loop22;
                                       }
                                    }
                                 }
                                 addr217:
                              }
                              break;
                           }
                           while(true)
                           {
                              b2_toiSlop = 8 * b2_linearSlop;
                              addr229:
                              while(true)
                              {
                                 b2_maxTOIContactsPerIsland = 32;
                                 addr222:
                                 while(true)
                                 {
                                    b2_maxTOIJointsPerIsland = 32;
                                    §§goto(addr217);
                                 }
                                 break loop22;
                              }
                           }
                           addr245:
                        }
                        loop17:
                        while(true)
                        {
                           if(!_loc2_)
                           {
                              if(_loc1_)
                              {
                                 addr153:
                                 if(!(_loc2_ && b2Settings))
                                 {
                                    §§push(§§findproperty(b2_maxRotation));
                                    §§push(0.5);
                                    if(!_loc2_)
                                    {
                                       §§push(§§pop() * b2_pi);
                                    }
                                    §§pop().b2_maxRotation = §§pop();
                                    loop18:
                                    while(true)
                                    {
                                       if(!_loc2_)
                                       {
                                          if(!_loc2_)
                                          {
                                             addr123:
                                             if(!(_loc1_ || b2Settings))
                                             {
                                                break;
                                             }
                                             §§push(§§findproperty(b2_maxRotationSquared));
                                             §§push(b2_maxRotation);
                                             if(!_loc2_)
                                             {
                                                §§push(§§pop() * b2_maxRotation);
                                             }
                                             §§pop().b2_maxRotationSquared = §§pop();
                                             §§goto(addr110);
                                          }
                                          §§goto(addr222);
                                       }
                                       addr165:
                                       addr264:
                                       while(_loc1_ || _loc1_)
                                       {
                                          §§push(§§findproperty(b2_maxTranslationSquared));
                                          §§push(b2_maxTranslation);
                                          if(!_loc2_)
                                          {
                                             §§push(§§pop() * b2_maxTranslation);
                                          }
                                          §§pop().b2_maxTranslationSquared = §§pop();
                                          continue loop17;
                                       }
                                       while(true)
                                       {
                                          b2_polygonRadius = 2 * b2_linearSlop;
                                          break loop18;
                                          §§goto(addr165);
                                       }
                                       continue loop20;
                                    }
                                    while(true)
                                    {
                                       b2_linearSlop = 0.05;
                                       addr250:
                                       while(_loc1_)
                                       {
                                          §§push(§§findproperty(b2_angularSlop));
                                          §§push(2 / 180);
                                          if(_loc1_ || _loc2_)
                                          {
                                             §§push(§§pop() * b2_pi);
                                          }
                                          §§pop().b2_angularSlop = §§pop();
                                          §§goto(addr245);
                                          if(!(_loc1_ || _loc2_))
                                          {
                                             continue;
                                          }
                                          b2_maxTranslation = 2;
                                          §§goto(addr165);
                                       }
                                       §§goto(addr274);
                                       §§goto(addr123);
                                    }
                                    addr119:
                                 }
                                 break;
                              }
                              §§goto(addr212);
                           }
                           §§goto(addr207);
                        }
                        while(true)
                        {
                           b2_aabbMultiplier = 2;
                           §§goto(addr264);
                           §§goto(addr153);
                        }
                        addr269:
                     }
                     §§goto(addr119);
                  }
                  §§goto(addr292);
               }
               while(true)
               {
                  if(_loc1_ || _loc2_)
                  {
                     §§goto(addr195);
                  }
                  §§goto(addr229);
                  §§goto(addr57);
               }
               §§goto(addr250);
            }
         }
         while(true)
         {
            b2_aabbExtension = 0.1;
            §§goto(addr269);
         }
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
         if(!(_loc3_ && _loc3_))
         {
            §§push(param1);
            if(!_loc3_)
            {
               if(§§pop() > param2)
               {
                  addr40:
                  §§push(param1);
                  if(_loc4_)
                  {
                     addr43:
                     §§push(Number(§§pop()));
                     if(!_loc4_)
                     {
                     }
                     §§goto(addr66);
                  }
               }
               else
               {
                  §§push(param2);
                  if(!(_loc3_ && param1))
                  {
                     §§push(Number(§§pop()));
                  }
               }
               addr66:
               return §§pop();
            }
            §§goto(addr43);
         }
         §§goto(addr40);
      }
      
      public static function b2Assert(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(!param1)
            {
               if(!(_loc2_ && _loc2_))
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
