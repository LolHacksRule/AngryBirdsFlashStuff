package §2!F§
{
   public class b2Settings
   {
      
      public static const VERSION:String = "2.1alpha";
      
      public static const §2!O§:int = 65535;
      
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
         if(_loc1_ || _loc1_)
         {
            VERSION = "2.1alpha";
            loop0:
            while(true)
            {
               §2!O§ = 65535;
               loop1:
               while(true)
               {
                  b2_pi = Math.PI;
                  loop2:
                  for(; !_loc2_; while(!(_loc2_ && _loc1_))
                  {
                     b2_polygonRadius = 2 * b2_linearSlop;
                     §§goto(addr272);
                     §§goto(addr162);
                  })
                  {
                     b2_maxManifoldPoints = 2;
                     loop3:
                     while(true)
                     {
                        b2_aabbExtension = 0.1;
                        while(true)
                        {
                           b2_aabbMultiplier = 2;
                           continue loop2;
                           loop11:
                           while(!(_loc2_ && _loc1_))
                           {
                              b2_velocityThreshold = 1;
                              loop12:
                              while(true)
                              {
                                 b2_maxLinearCorrection = 0.2;
                                 loop13:
                                 while(_loc1_)
                                 {
                                    §§push(§§findproperty(b2_maxAngularCorrection));
                                    §§push(8 / 180);
                                    if(_loc1_ || b2Settings)
                                    {
                                       §§push(§§pop() * b2_pi);
                                    }
                                    §§pop().b2_maxAngularCorrection = §§pop();
                                    while(true)
                                    {
                                       b2_maxTranslation = 2;
                                       while(!(_loc2_ && _loc1_))
                                       {
                                          §§push(§§findproperty(b2_maxTranslationSquared));
                                          §§push(b2_maxTranslation);
                                          if(!_loc2_)
                                          {
                                             §§push(§§pop() * b2_maxTranslation);
                                          }
                                          §§pop().b2_maxTranslationSquared = §§pop();
                                          continue loop12;
                                          addr90:
                                          if(!(_loc1_ || _loc2_))
                                          {
                                             continue;
                                          }
                                          addr97:
                                          if(!(_loc2_ && b2Settings))
                                          {
                                             b2_timeToSleep = 0.25;
                                             loop20:
                                             for(; !(_loc2_ && _loc2_); for(; _loc1_ || b2Settings; §§push(§§findproperty(b2_angularSleepTolerance)),§§push(2 / 180),if(!_loc2_)
                                             {
                                                §§push(§§pop() * b2Settings.b2_pi);
                                             },§§pop().b2_angularSleepTolerance = §§pop(),if(_loc1_)
                                             {
                                                return;
                                             })
                                             {
                                                addr53:
                                                if(!(_loc1_ || b2Settings))
                                                {
                                                   addr113:
                                                   while(_loc1_ || _loc2_)
                                                   {
                                                      §§goto(addr90);
                                                      §§goto(addr53);
                                                   }
                                                   while(_loc1_ || b2Settings)
                                                   {
                                                      b2_contactBaumgarte = 0.2;
                                                      §§goto(addr83);
                                                   }
                                                   addr83:
                                                   continue loop12;
                                                   addr113:
                                                }
                                                if(!_loc2_)
                                                {
                                                   continue;
                                                }
                                                loop8:
                                                while(_loc1_ || b2Settings)
                                                {
                                                   b2_toiSlop = 8 * b2_linearSlop;
                                                   while(true)
                                                   {
                                                      if(!_loc2_)
                                                      {
                                                         b2_maxTOIContactsPerIsland = 32;
                                                         break loop13;
                                                      }
                                                      break;
                                                      §§goto(addr97);
                                                   }
                                                   while(true)
                                                   {
                                                      b2_linearSlop = 0.05;
                                                      break loop8;
                                                   }
                                                }
                                                while(true)
                                                {
                                                   §§push(§§findproperty(b2_angularSlop));
                                                   §§push(2 / 180);
                                                   if(!(_loc2_ && b2Settings))
                                                   {
                                                      §§push(§§pop() * b2_pi);
                                                   }
                                                   §§pop().b2_angularSlop = §§pop();
                                                   §§goto(addr253);
                                                }
                                                addr253:
                                             })
                                             {
                                                if(!_loc1_)
                                                {
                                                   continue loop13;
                                                }
                                                if(_loc2_)
                                                {
                                                   continue loop11;
                                                }
                                                while(true)
                                                {
                                                   b2_linearSleepTolerance = 0.1;
                                                   continue loop20;
                                                }
                                             }
                                             while(_loc1_)
                                             {
                                                §§push(§§findproperty(b2_maxRotationSquared));
                                                §§push(b2_maxRotation);
                                                if(!_loc2_)
                                                {
                                                   §§push(§§pop() * b2_maxRotation);
                                                }
                                                §§pop().b2_maxRotationSquared = §§pop();
                                                §§goto(addr113);
                                                §§goto(addr67);
                                             }
                                             addr67:
                                             continue loop3;
                                             addr134:
                                          }
                                          §§goto(addr235);
                                       }
                                    }
                                 }
                                 while(!_loc2_)
                                 {
                                    b2_maxTOIJointsPerIsland = 32;
                                    continue loop11;
                                 }
                                 continue loop1;
                              }
                           }
                        }
                     }
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr78);
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
                  if(!(_loc4_ && b2Settings))
                  {
                     §§push(Number(§§pop()));
                     if(_loc3_ || param2)
                     {
                     }
                  }
                  else
                  {
                     addr74:
                     return Number(§§pop());
                  }
               }
               else
               {
                  §§push(param2);
                  if(!(_loc4_ && param1))
                  {
                     §§goto(addr74);
                  }
               }
            }
            return §§pop();
         }
         §§goto(addr39);
      }
      
      public static function b2Assert(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && b2Settings))
         {
            if(!param1)
            {
               if(!(_loc3_ && _loc2_))
               {
                  §§goto(addr52);
               }
            }
            return;
         }
         addr52:
         throw "Assertion Failed";
      }
   }
}
