package §<";§
{
   public class b2Settings
   {
      
      public static const VERSION:String = "2.1alpha";
      
      public static const §?4§:int = 65535;
      
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
         if(!_loc1_)
         {
            VERSION = "2.1alpha";
            loop0:
            while(true)
            {
               §?4§ = 65535;
               loop1:
               while(true)
               {
                  b2_pi = Math.PI;
                  while(true)
                  {
                     b2_maxManifoldPoints = 2;
                     addr272:
                     while(true)
                     {
                        b2_aabbExtension = 0.1;
                     }
                     loop8:
                     while(_loc2_ || b2Settings)
                     {
                        if(!_loc2_)
                        {
                           continue loop1;
                        }
                        b2_toiSlop = 8 * b2_linearSlop;
                        loop9:
                        while(true)
                        {
                           b2_maxTOIContactsPerIsland = 32;
                           addr209:
                           loop10:
                           while(true)
                           {
                              if(_loc2_)
                              {
                                 if(!_loc1_)
                                 {
                                    b2_maxTOIJointsPerIsland = 32;
                                    loop11:
                                    while(true)
                                    {
                                       b2_velocityThreshold = 1;
                                       addr199:
                                       while(true)
                                       {
                                          b2_maxLinearCorrection = 0.2;
                                          loop13:
                                          while(!_loc1_)
                                          {
                                             §§push(§§findproperty(b2_maxAngularCorrection));
                                             §§push(8 / 180);
                                             if(!(_loc1_ && _loc2_))
                                             {
                                                §§push(§§pop() * b2_pi);
                                             }
                                             §§pop().b2_maxAngularCorrection = §§pop();
                                             loop14:
                                             while(true)
                                             {
                                                if(!_loc1_)
                                                {
                                                   if(_loc2_)
                                                   {
                                                      b2_maxTranslation = 2;
                                                      loop15:
                                                      while(true)
                                                      {
                                                         §§push(§§findproperty(b2_maxTranslationSquared));
                                                         §§push(b2_maxTranslation);
                                                         if(_loc2_)
                                                         {
                                                            §§push(§§pop() * b2_maxTranslation);
                                                         }
                                                         §§pop().b2_maxTranslationSquared = §§pop();
                                                         addr132:
                                                         while(true)
                                                         {
                                                            if(_loc2_ || _loc1_)
                                                            {
                                                               if(_loc2_)
                                                               {
                                                                  if(_loc2_)
                                                                  {
                                                                     addr153:
                                                                     if(!(_loc1_ && _loc2_))
                                                                     {
                                                                        if(_loc2_)
                                                                        {
                                                                           §§push(§§findproperty(b2_maxRotation));
                                                                           §§push(0.5);
                                                                           if(!(_loc1_ && b2Settings))
                                                                           {
                                                                              §§push(§§pop() * b2_pi);
                                                                           }
                                                                           §§pop().b2_maxRotation = §§pop();
                                                                           continue loop0;
                                                                        }
                                                                        addr267:
                                                                        while(true)
                                                                        {
                                                                           b2_aabbMultiplier = 2;
                                                                           break loop14;
                                                                        }
                                                                     }
                                                                     break;
                                                                  }
                                                                  continue loop13;
                                                               }
                                                               continue loop14;
                                                            }
                                                            continue loop15;
                                                         }
                                                         addr257:
                                                         while(true)
                                                         {
                                                            b2_linearSlop = 0.05;
                                                            break loop10;
                                                            §§goto(addr153);
                                                         }
                                                      }
                                                   }
                                                   break;
                                                }
                                                continue loop11;
                                             }
                                             while(true)
                                             {
                                                b2_polygonRadius = 2 * b2_linearSlop;
                                                §§goto(addr257);
                                             }
                                          }
                                          §§goto(addr272);
                                       }
                                    }
                                 }
                                 break;
                              }
                              continue loop8;
                              addr53:
                              if(_loc2_ || _loc1_)
                              {
                                 continue loop9;
                              }
                           }
                           while(true)
                           {
                              §§push(§§findproperty(b2_angularSlop));
                              §§push(2 / 180);
                              if(_loc2_ || _loc1_)
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
         §§goto(addr267);
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
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §§push(param1);
            if(_loc3_ || _loc3_)
            {
               if(§§pop() > param2)
               {
                  addr39:
                  §§push(param1);
                  if(!_loc4_)
                  {
                     §§push(Number(§§pop()));
                     if(!(_loc3_ || param1))
                     {
                        addr69:
                        §§push(Number(§§pop()));
                     }
                  }
                  §§goto(addr69);
               }
               else
               {
                  §§push(param2);
                  if(_loc3_ || _loc3_)
                  {
                     §§goto(addr69);
                  }
               }
               return §§pop();
            }
            §§goto(addr69);
         }
         §§goto(addr39);
      }
      
      public static function b2Assert(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(!param1)
            {
               if(_loc3_)
               {
                  throw "Assertion Failed";
               }
            }
         }
      }
   }
}
