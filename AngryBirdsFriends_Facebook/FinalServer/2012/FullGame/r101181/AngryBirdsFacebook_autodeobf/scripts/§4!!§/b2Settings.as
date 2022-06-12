package §4!!§
{
   public class b2Settings
   {
      
      public static const VERSION:String = "2.1alpha";
      
      public static const §@!'§:int = 65535;
      
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
            while(true)
            {
               §@!'§ = 65535;
               while(true)
               {
                  b2_pi = Math.PI;
                  loop2:
                  while(true)
                  {
                     b2_maxManifoldPoints = 2;
                     addr277:
                     while(true)
                     {
                        b2_aabbExtension = 0.1;
                        continue loop2;
                     }
                  }
                  while(!(_loc1_ && b2Settings))
                  {
                     b2_contactBaumgarte = 0.2;
                     §§goto(addr84);
                  }
               }
               if(!(_loc2_ || _loc1_))
               {
                  continue;
               }
               b2_linearSleepTolerance = 0.1;
               §§goto(addr54);
            }
         }
         §§goto(addr137);
      }
      
      public function b2Settings()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
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
            if(!_loc3_)
            {
               if(§§pop() > param2)
               {
                  addr35:
                  §§push(param1);
                  if(_loc4_)
                  {
                     §§push(Number(§§pop()));
                     if(_loc3_)
                     {
                     }
                  }
               }
               else
               {
                  §§push(param2);
                  if(!_loc3_)
                  {
                     addr45:
                     return Number(§§pop());
                  }
               }
               return §§pop();
            }
            §§goto(addr45);
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
               if(!(_loc2_ && b2Settings))
               {
                  throw "Assertion Failed";
               }
            }
         }
      }
   }
}
