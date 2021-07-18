package §^P§
{
   public class b2Settings
   {
      
      public static const VERSION:String = "2.1alpha";
      
      public static const §=d§:int = 65535;
      
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
            loop0:
            while(true)
            {
               §=d§ = 65535;
               addr298:
               while(true)
               {
                  b2_pi = Math.PI;
               }
               loop11:
               while(true)
               {
                  if(!(_loc2_ || b2Settings))
                  {
                     continue loop0;
                  }
                  b2_velocityThreshold = 1;
                  loop12:
                  while(true)
                  {
                     b2_maxLinearCorrection = 0.2;
                     addr182:
                     loop13:
                     while(true)
                     {
                        if(_loc2_ || _loc2_)
                        {
                           §§push(§§findproperty(b2_maxAngularCorrection));
                           §§push(8 / 180);
                           if(_loc2_)
                           {
                              §§push(§§pop() * b2_pi);
                           }
                           §§pop().b2_maxAngularCorrection = §§pop();
                           loop14:
                           while(true)
                           {
                              b2_maxTranslation = 2;
                              addr160:
                              loop15:
                              while(true)
                              {
                                 if(!_loc1_)
                                 {
                                    if(!_loc1_)
                                    {
                                       if(_loc2_)
                                       {
                                          addr265:
                                          §§push(§§findproperty(b2_maxTranslationSquared));
                                          §§push(b2_maxTranslation);
                                          if(!(_loc1_ && b2Settings))
                                          {
                                             §§push(§§pop() * b2_maxTranslation);
                                          }
                                          §§pop().b2_maxTranslationSquared = §§pop();
                                          loop16:
                                          while(_loc2_)
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
                                                if(_loc2_ || b2Settings)
                                                {
                                                   if(!_loc2_)
                                                   {
                                                      break;
                                                   }
                                                   §§push(§§findproperty(b2_maxRotationSquared));
                                                   §§push(b2_maxRotation);
                                                   if(_loc2_)
                                                   {
                                                      §§push(§§pop() * b2_maxRotation);
                                                   }
                                                   §§pop().b2_maxRotationSquared = §§pop();
                                                   do
                                                   {
                                                      b2_contactBaumgarte = 0.2;
                                                      continue loop11;
                                                   }
                                                   while(_loc1_ && _loc1_);
                                                   
                                                   continue;
                                                }
                                                continue loop16;
                                             }
                                             continue loop14;
                                          }
                                          while(!(_loc1_ && _loc1_))
                                          {
                                             b2_aabbMultiplier = 2;
                                             while(true)
                                             {
                                                b2_polygonRadius = 2 * b2_linearSlop;
                                                addr255:
                                                while(true)
                                                {
                                                   b2_linearSlop = 0.05;
                                                   break loop13;
                                                }
                                             }
                                          }
                                          addr265:
                                       }
                                       else
                                       {
                                          §§goto(addr298);
                                       }
                                       while(true)
                                       {
                                          b2_maxManifoldPoints = 2;
                                          break loop15;
                                          §§goto(addr265);
                                       }
                                       addr293:
                                    }
                                    break;
                                 }
                                 continue loop12;
                              }
                              while(true)
                              {
                                 b2_aabbExtension = 0.1;
                                 §§goto(addr265);
                              }
                           }
                        }
                        break;
                        if(_loc1_ && _loc2_)
                        {
                           continue;
                        }
                        if(_loc2_)
                        {
                           return;
                        }
                        while(true)
                        {
                           b2_maxTOIJointsPerIsland = 32;
                           continue loop11;
                        }
                        addr211:
                     }
                     while(true)
                     {
                        if(_loc2_ || _loc2_)
                        {
                           §§push(§§findproperty(b2_angularSlop));
                           §§push(2 / 180);
                           if(_loc2_ || _loc2_)
                           {
                              §§push(§§pop() * b2_pi);
                           }
                           §§pop().b2_angularSlop = §§pop();
                           while(true)
                           {
                              b2_toiSlop = 8 * b2_linearSlop;
                              addr218:
                              while(_loc2_)
                              {
                                 b2_maxTOIContactsPerIsland = 32;
                                 §§goto(addr211);
                              }
                              §§goto(addr260);
                           }
                           addr236:
                        }
                        break;
                        §§goto(addr182);
                     }
                     §§goto(addr255);
                  }
               }
            }
         }
         §§goto(addr293);
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
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && b2Settings))
         {
            §§push(param1);
            if(!(_loc3_ && param1))
            {
               if(§§pop() > param2)
               {
                  addr45:
                  §§push(param1);
                  if(_loc4_)
                  {
                     addr48:
                     §§push(Number(§§pop()));
                     if(_loc3_ && param1)
                     {
                        addr70:
                        return Number(§§pop());
                     }
                  }
               }
               else
               {
                  §§push(param2);
                  if(!_loc3_)
                  {
                     §§goto(addr70);
                  }
               }
               return §§pop();
            }
            §§goto(addr48);
         }
         §§goto(addr45);
      }
      
      public static function b2Assert(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(!param1)
            {
               if(!_loc3_)
               {
                  §§goto(addr32);
               }
            }
            return;
         }
         addr32:
         throw "Assertion Failed";
      }
   }
}
