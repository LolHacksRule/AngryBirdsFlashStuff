package §+!g§
{
   public class b2Settings
   {
      
      public static const VERSION:String = "2.1alpha";
      
      public static const §#!Q§:int = 65535;
      
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
               §#!Q§ = 65535;
               while(true)
               {
                  b2_pi = Math.PI;
                  addr318:
                  while(true)
                  {
                     b2_maxManifoldPoints = 2;
                  }
                  loop9:
                  while(_loc2_ || _loc2_)
                  {
                     b2_maxTOIContactsPerIsland = 32;
                     loop10:
                     for(; !_loc1_; if(_loc1_ && _loc1_)
                     {
                        continue;
                     },if(!_loc1_)
                     {
                        b2_linearSleepTolerance = 0.1;
                        §§goto(addr70);
                     },§§goto(addr269))
                     {
                        if(!_loc2_)
                        {
                           continue loop0;
                        }
                        b2_maxTOIJointsPerIsland = 32;
                        loop11:
                        for(; _loc2_; if(_loc1_ && _loc1_)
                        {
                           continue;
                        },b2_timeToSleep = 0.25,§§goto(addr82))
                        {
                           b2_velocityThreshold = 1;
                           while(true)
                           {
                              b2_maxLinearCorrection = 0.2;
                              addr209:
                              addr70:
                              while(true)
                              {
                                 §§push(§§findproperty(b2_maxAngularCorrection));
                                 §§push(8 / 180);
                                 if(_loc2_ || _loc1_)
                                 {
                                    §§push(§§pop() * b2_pi);
                                 }
                                 §§pop().b2_maxAngularCorrection = §§pop();
                                 addr204:
                                 while(true)
                                 {
                                    b2_maxTranslation = 2;
                                    loop15:
                                    for(; !_loc1_; if(!(_loc1_ && _loc1_))
                                    {
                                       return;
                                    })
                                    {
                                       §§push(§§findproperty(b2_maxTranslationSquared));
                                       §§push(b2_maxTranslation);
                                       if(_loc2_ || _loc1_)
                                       {
                                          §§push(§§pop() * b2_maxTranslation);
                                       }
                                       §§pop().b2_maxTranslationSquared = §§pop();
                                       loop16:
                                       while(!(_loc1_ && _loc2_))
                                       {
                                          §§push(§§findproperty(b2_maxRotation));
                                          §§push(0.5);
                                          if(!(_loc1_ && _loc2_))
                                          {
                                             §§push(§§pop() * b2_pi);
                                          }
                                          §§pop().b2_maxRotation = §§pop();
                                          while(_loc2_)
                                          {
                                             §§push(§§findproperty(b2_maxRotationSquared));
                                             §§push(b2_maxRotation);
                                             if(_loc2_ || _loc1_)
                                             {
                                                §§push(§§pop() * b2_maxRotation);
                                             }
                                             §§pop().b2_maxRotationSquared = §§pop();
                                             loop18:
                                             while(_loc2_)
                                             {
                                                b2_contactBaumgarte = 0.2;
                                                while(true)
                                                {
                                                   if(!(_loc1_ && _loc1_))
                                                   {
                                                      continue loop11;
                                                   }
                                                   continue loop18;
                                                }
                                                continue loop11;
                                             }
                                             continue loop16;
                                             if(_loc2_ || _loc2_)
                                             {
                                                continue loop15;
                                             }
                                          }
                                          continue loop9;
                                       }
                                       while(true)
                                       {
                                          if(_loc2_ || b2Settings)
                                          {
                                             b2_linearSlop = 0.05;
                                             addr269:
                                             while(!_loc1_)
                                             {
                                                §§push(§§findproperty(b2_angularSlop));
                                                §§push(2 / 180);
                                                if(_loc2_ || b2Settings)
                                                {
                                                   §§push(§§pop() * b2_pi);
                                                }
                                                §§pop().b2_angularSlop = §§pop();
                                                break loop11;
                                             }
                                             §§goto(addr318);
                                             addr269:
                                          }
                                          break;
                                          §§goto(addr173);
                                       }
                                       addr173:
                                       while(true)
                                       {
                                          b2_polygonRadius = 2 * b2_linearSlop;
                                          §§goto(addr279);
                                       }
                                       addr279:
                                    }
                                 }
                              }
                              while(_loc2_ || _loc2_)
                              {
                                 §§push(§§findproperty(b2_angularSleepTolerance));
                                 §§push(2 / 180);
                                 if(_loc2_)
                                 {
                                    §§push(§§pop() * b2Settings.b2_pi);
                                 }
                                 §§pop().b2_angularSleepTolerance = §§pop();
                                 if(_loc1_)
                                 {
                                    continue;
                                 }
                                 addr42:
                                 if(!(_loc1_ && b2Settings))
                                 {
                                    if(!_loc1_)
                                    {
                                       §§goto(addr51);
                                    }
                                    §§goto(addr98);
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                       if(_loc2_)
                                       {
                                          continue loop10;
                                       }
                                       §§goto(addr209);
                                       §§goto(addr42);
                                    }
                                    §§goto(addr269);
                                    addr82:
                                 }
                                 §§goto(addr204);
                              }
                           }
                        }
                        while(_loc2_)
                        {
                           b2_toiSlop = 8 * b2_linearSlop;
                           continue loop9;
                        }
                        while(true)
                        {
                           b2_aabbMultiplier = 2;
                           §§goto(addr301);
                        }
                     }
                     while(true)
                     {
                        b2_aabbExtension = 0.1;
                        §§goto(addr306);
                     }
                  }
               }
            }
         }
         §§goto(addr311);
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
         if(!(_loc3_ && b2Settings))
         {
            §§push(param1);
            if(!(_loc3_ && param2))
            {
               if(§§pop() > param2)
               {
                  addr55:
                  §§push(param1);
                  if(_loc4_ || param2)
                  {
                     §§push(Number(§§pop()));
                     if(!_loc4_)
                     {
                     }
                  }
                  else
                  {
                     addr75:
                     return Number(§§pop());
                  }
               }
               else
               {
                  §§push(param2);
                  if(_loc4_ || b2Settings)
                  {
                     §§goto(addr75);
                  }
               }
            }
            return §§pop();
         }
         §§goto(addr55);
      }
      
      public static function b2Assert(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(param1);
            if(!(_loc2_ && _loc2_))
            {
               §§push(!§§pop());
            }
            if(§§pop())
            {
               if(!_loc2_)
               {
                  throw "Assertion Failed";
               }
            }
         }
      }
   }
}
