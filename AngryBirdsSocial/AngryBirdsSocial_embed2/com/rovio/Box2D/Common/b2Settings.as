package com.rovio.Box2D.Common
{
   public class b2Settings
   {
      
      public static const VERSION:String = "2.1alpha";
      
      public static const USHRT_MAX:int = 65535;
      
      public static const b2_pi:Number = Math.PI;
      
      public static const b2_maxManifoldPoints:int = 2;
      
      public static const b2_aabbExtension:Number = 0.1;
      
      public static const b2_aabbMultiplier:Number = 2;
      
      public static const b2_linearSlop:Number = 0.05;
      
      public static const b2_polygonRadius:Number = 2 * b2_linearSlop;
      
      public static const b2_angularSlop:Number = 2 / 180 * b2_pi;
      
      public static const b2_toiSlop:Number = 8 * b2_linearSlop;
      
      public static const b2_maxTOIContactsPerIsland:int = 32;
      
      public static const b2_maxTOIJointsPerIsland:int = 32;
      
      public static const b2_velocityThreshold:Number = 1;
      
      public static const b2_maxLinearCorrection:Number = 0.2;
      
      public static const b2_maxAngularCorrection:Number = 8 / 180 * b2_pi;
      
      public static const b2_maxTranslation:Number = 4;
      
      public static const b2_maxTranslationSquared:Number = b2_maxTranslation * b2_maxTranslation;
      
      public static const b2_maxRotation:Number = 0.5 * b2_pi;
      
      public static const b2_maxRotationSquared:Number = b2_maxRotation * b2_maxRotation;
      
      public static const b2_contactBaumgarte:Number = 0.2;
      
      public static const b2_timeToSleep:Number = 0.25;
      
      public static const b2_linearSleepTolerance:Number = 0.1;
      
      public static const b2_angularSleepTolerance:Number = 2 / 180 * b2Settings.b2_pi;
       
      
      public function b2Settings()
      {
         super();
      }
      
      public static function b2MixFriction(friction1:Number, friction2:Number) : Number
      {
         return Math.sqrt(friction1 * friction2);
      }
      
      public static function b2MixRestitution(restitution1:Number, restitution2:Number) : Number
      {
         return restitution1 > restitution2 ? Number(restitution1) : Number(restitution2);
      }
      
      public static function b2Assert(a:Boolean) : void
      {
         if(!a)
         {
            throw "Assertion Failed";
         }
      }
   }
}
