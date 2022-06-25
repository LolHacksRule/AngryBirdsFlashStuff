package §+!,§
{
   public class b2Settings
   {
      
      public static const VERSION:String = "2.1alpha";
      
      public static const §%!=§:int = 65535;
      
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
         if(!(_loc1_ && _loc2_))
         {
            VERSION = "2.1alpha";
            loop0:
            while(true)
            {
               §%!=§ = 65535;
               while(true)
               {
                  b2_pi = Math.PI;
                  loop2:
                  while(!(_loc1_ && b2Settings))
                  {
                     b2_maxManifoldPoints = 2;
                     loop3:
                     while(true)
                     {
                        b2_aabbExtension = 0.1;
                        while(true)
                        {
                           b2_aabbMultiplier = 2;
                           while(true)
                           {
                              if(!_loc2_)
                              {
                                 continue loop0;
                              }
                              b2_polygonRadius = 2 * b2_linearSlop;
                              loop6:
                              while(true)
                              {
                                 b2_linearSlop = 0.05;
                                 loop7:
                                 while(true)
                                 {
                                    if(_loc2_)
                                    {
                                       §§push(§§findproperty(b2_angularSlop));
                                       §§push(2 / 180);
                                       if(!(_loc1_ && _loc1_))
                                       {
                                          §§push(§§pop() * b2_pi);
                                       }
                                       §§pop().b2_angularSlop = §§pop();
                                       loop8:
                                       for(; _loc2_; while(true)
                                       {
                                          if(!(_loc2_ || _loc1_))
                                          {
                                             continue loop8;
                                          }
                                          if(!_loc2_)
                                          {
                                             break;
                                          }
                                          b2_maxLinearCorrection = 0.2;
                                          loop13:
                                          while(_loc2_)
                                          {
                                             §§push(§§findproperty(b2_maxAngularCorrection));
                                             §§push(8 / 180);
                                             if(_loc2_ || b2Settings)
                                             {
                                                §§push(§§pop() * b2_pi);
                                             }
                                             §§pop().b2_maxAngularCorrection = §§pop();
                                             loop14:
                                             while(true)
                                             {
                                                if(!(_loc1_ && _loc2_))
                                                {
                                                   if(_loc2_)
                                                   {
                                                      b2_maxTranslation = 2;
                                                      while(_loc2_)
                                                      {
                                                         §§push(§§findproperty(b2_maxTranslationSquared));
                                                         §§push(b2_maxTranslation);
                                                         if(_loc2_)
                                                         {
                                                            §§push(§§pop() * b2_maxTranslation);
                                                         }
                                                         §§pop().b2_maxTranslationSquared = §§pop();
                                                         while(_loc2_)
                                                         {
                                                            §§push(§§findproperty(b2_maxRotation));
                                                            §§push(0.5);
                                                            if(_loc2_)
                                                            {
                                                               §§push(§§pop() * b2_pi);
                                                            }
                                                            §§pop().b2_maxRotation = §§pop();
                                                            continue loop14;
                                                         }
                                                      }
                                                      §§goto(addr223);
                                                   }
                                                   break;
                                                }
                                                continue loop13;
                                             }
                                             §§goto(addr210);
                                          }
                                          §§goto(addr215);
                                          if(_loc2_ || _loc1_)
                                          {
                                             continue loop6;
                                          }
                                       },continue loop7)
                                       {
                                          b2_toiSlop = 8 * b2_linearSlop;
                                          while(true)
                                          {
                                             b2_maxTOIContactsPerIsland = 32;
                                             addr215:
                                             while(true)
                                             {
                                                b2_maxTOIJointsPerIsland = 32;
                                                addr210:
                                                while(true)
                                                {
                                                   b2_velocityThreshold = 1;
                                                   continue loop8;
                                                }
                                             }
                                          }
                                       }
                                       continue loop2;
                                    }
                                    continue loop3;
                                 }
                                 if(_loc1_ && _loc1_)
                                 {
                                    continue;
                                 }
                                 b2_timeToSleep = 0.25;
                                 §§goto(addr73);
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr284);
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
            if(_loc3_ || param1)
            {
               if(§§pop() > param2)
               {
                  addr39:
                  §§push(param1);
                  if(_loc3_)
                  {
                     §§push(Number(§§pop()));
                     if(!_loc4_)
                     {
                     }
                     §§goto(addr55);
                  }
               }
               else
               {
                  §§push(param2);
                  if(!(_loc4_ && b2Settings))
                  {
                     §§goto(addr55);
                  }
               }
            }
            addr55:
            return Number(§§pop());
         }
         §§goto(addr39);
      }
      
      public static function b2Assert(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            §§push(param1);
            if(!_loc3_)
            {
               §§push(!§§pop());
            }
            if(§§pop())
            {
               if(_loc2_)
               {
                  throw "Assertion Failed";
               }
            }
         }
      }
   }
}
