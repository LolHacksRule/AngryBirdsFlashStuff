package §_-lh§
{
   public class b2Settings
   {
      
      public static const VERSION:String = "2.1alpha";
      
      public static const §_-9J§:int = 65535;
      
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
      
      public static const b2_maxTranslationSquared:Number = §§pop();
      
      public static const b2_maxRotation:Number = 1.5707963267948966;
      
      public static const b2_maxRotationSquared:Number = 2.4674011002723395;
      
      public static const b2_contactBaumgarte:Number = 0.2;
      
      public static const b2_timeToSleep:Number = 0.25;
      
      public static const b2_linearSleepTolerance:Number = 0.1;
      
      public static const b2_angularSleepTolerance:Number = 0.03490658503988659;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §_-9J§ = 65535;
            b2_pi = Math.PI;
            b2_maxManifoldPoints = 2;
            if(_loc1_)
            {
               b2_aabbExtension = 0.1;
               b2_aabbMultiplier = 2;
               b2_polygonRadius = 2 * b2_linearSlop;
               b2_linearSlop = 0.05;
               if(_loc1_ || _loc1_)
               {
                  §§push(§§findproperty(b2_angularSlop));
                  §§push(2 / 180);
                  if(_loc1_ || _loc2_)
                  {
                     §§push(§§pop() * b2_pi);
                  }
                  §§pop().b2_angularSlop = §§pop();
                  b2_toiSlop = 8 * b2_linearSlop;
                  b2_maxTOIContactsPerIsland = 32;
                  b2_maxTOIJointsPerIsland = 32;
                  b2_velocityThreshold = 1;
                  b2_maxLinearCorrection = 0.2;
                  §§push(§§findproperty(b2_maxAngularCorrection));
                  §§push(8 / 180);
                  if(!_loc2_)
                  {
                     §§push(§§pop() * b2_pi);
                  }
                  §§pop().b2_maxAngularCorrection = §§pop();
               }
               b2_maxTranslation = 2;
               §§goto(addr101);
            }
            §§goto(addr132);
         }
         addr101:
         §§push(§§findproperty(b2_maxTranslationSquared));
         §§push(b2_maxTranslation);
         if(!(_loc2_ && _loc1_))
         {
            §§push(§§pop() * b2_maxTranslation);
         }
         if(!(_loc2_ && _loc1_))
         {
            §§push(§§findproperty(b2_maxRotation));
            §§push(0.5);
            if(!(_loc2_ && b2Settings))
            {
               §§push(§§pop() * b2_pi);
            }
            §§pop().b2_maxRotation = §§pop();
            addr132:
            §§push(§§findproperty(b2_maxRotationSquared));
            §§push(b2_maxRotation);
            if(_loc1_ || _loc2_)
            {
               §§push(§§pop() * b2_maxRotation);
            }
            §§pop().b2_maxRotationSquared = §§pop();
         }
         if(!_loc2_)
         {
            §§push(§§findproperty(b2_angularSleepTolerance));
            §§push(2 / 180);
            if(!(_loc2_ && _loc2_))
            {
               §§push(§§pop() * b2Settings.b2_pi);
            }
            §§pop().b2_angularSleepTolerance = §§pop();
         }
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
         if(_loc4_)
         {
            §§push(param1);
            if(_loc4_)
            {
               if(§§pop() > param2)
               {
                  addr29:
                  §§push(param1);
                  if(_loc4_ || b2Settings)
                  {
                     §§push(Number(§§pop()));
                     if(_loc3_)
                     {
                        addr51:
                        §§push(Number(§§pop()));
                     }
                  }
               }
               else
               {
                  §§push(param2);
                  if(_loc4_)
                  {
                     §§goto(addr51);
                  }
               }
               return §§pop();
            }
            §§goto(addr51);
         }
         §§goto(addr29);
      }
      
      public static function b2Assert(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || b2Settings)
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
