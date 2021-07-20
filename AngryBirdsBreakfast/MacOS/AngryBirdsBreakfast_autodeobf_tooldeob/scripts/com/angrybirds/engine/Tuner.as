package com.angrybirds.engine
{
   public final class Tuner
   {
      
      public static const MIGHTY_EAGLE_FLYING_ANGLE:Number = -22.9;
      
      public static const MIGHTY_EAGLE_FLYING_SPEED:Number = 0.128;
      
      public static const MIGHTY_EAGLE_ROTATION_SPEED:Number = 8;
      
      public static const MIGHTY_EAGLE_WAIT_TIME:Number = 2400;
      
      public static const MIGHTY_EAGLE_SOUND_DELAY:Number = 1000;
      
      public static const MIGHTY_EAGLE_SHADING_DELAY:Number = 500;
      
      public static const MIGHTY_EAGLE_PIG_KILL_DELAY:Number = 6000;
      
      public static const MIGHTY_EAGLE_STARTING_DISTANCE:Number = 140;
      
      public static const MIGHTY_EAGLE_Y_CHANGE:Number = -Math.sin(MIGHTY_EAGLE_FLYING_ANGLE / 180 * Math.PI);
      
      public static const MIGHTY_EAGLE_SHADING_DURATION:Number = 1500;
      
      public static const MIGHTY_EAGLE_MAX_SHADING_INTENSITY:Number = 0.7;
      
      public static const MIGHTY_EAGLE_CAMERA_SHAKING_START_FREQUENCY:Number = 0.2;
      
      public static const MIGHTY_EAGLE_CAMERA_SHAKING_START_AMPLITUDE:Number = 8.8;
      
      public static const MIGHTY_EAGLE_CAMERA_SHAKING_DURATION:Number = 2400;
      
      public static const MIGHTY_EAGLE_BUTTON_PUMPING_FREQUENCY:Number = 1;
      
      public static const MIGHTY_EAGLE_BUTTON_PUMPING_AMPLITUDE:Number = 0.15;
      
      public static const MIGHTY_EAGLE_LEVEL_FAIL_LOCK_TIME_SHOWING_DURATION:Number = 4;
      
      public static const MIGHTY_EAGLE_LOCK_DURATION:Number = 60;
      
      public static const MIN_DELTA_TIME:Number = 16;
      
      public static const MAX_DELTA_TIME:Number = 6 * MIN_DELTA_TIME;
      
      public static const SARDINE_CAN_INITIAL_ROTATION_SPEED:Number = 0.07;
      
      public static const SARDINE_CAN_ROTATION_ACCELERATION:Number = 0.0002;
      
      public static const SARDINE_CAN_MAX_ROTATION_SPEED:Number = SARDINE_CAN_INITIAL_ROTATION_SPEED * 4.4;
      
      public static const SARDINE_CAN_DELAY_AFTER_HIT:int = 3000;
      
      public static const SLINGSHOT_RUBBERBAND_LENGTH:Number = 5;
      
      public static const TIME_FOR_ZOOM_BEFORE_ACTIVATING_POWERUP:Number = 600;
      
      public static const POWERUP_SPEED:Number = 55;
      
      public static const POWERUP_SPEED_DAMAGE_MULTIPLIER:Number = 1.3;
      
      public static const SLINGSHOT_SPED_UP_RUBBERBAND_LENGTH:Number = 6;
      
      public static const POWERUP_LASERSIGHT_MIN_POINT_SPACING:Number = 3;
      
      public static const native:Number = 1 / 30;
      
      public static const POWERUP_LASERSIGHT_MAX_POINTS:int = 25;
      
      public static const POWERUP_LASERSIGHT_INTERCEPT_OBJECT_STEP:int = 1;
      
      public static const POWERUP_LASERSIGHT_MAX_DISTANCE:Number = 70;
      
      public static const POWERUP_BOMB_PUSH_RADIUS:Number = 10;
      
      public static const POWERUP_BOMB_PUSH:Number = 1000;
      
      public static const POWERUP_BOMB_SECONDS_UNTIL_EXPLOSION:Number = 1.3;
      
      public static const POWERUP_BOMB_DAMAGA_RADIUS:Number = 7.5;
      
      public static const POWERUP_BOMB_DAMAGE:Number = 300;
      
      public static const POWERUP_BOMB_SWINGS_PER_SECOND:Number = 0.5;
      
      public static const POWERUP_BOMB_WIND_FORCE:Number = 6;
      
      public static const POWERUP_BOMB_MAXIMUM_VELOCITY:Number = 9;
      
      public static const POWERUP_BOMB_PARACHUTE_SWING_FACTOR:Number = 0.15;
      
      public static const POWERUP_BOMB_MAX_DISTANCE_FROM_PIG:Number = 10;
      
      public static const DEFAULT_PHYSICS_DRAG:Number = 0.15;
      
      public static const DEFAULT_ANGULAR_DRAG:Number = 2;
      
      public static const DEFAULT_FORCE_DRAG:Number = 5;
      
      public static const DEFAULT_FORCE_ANGULAR_DRAG:Number = 5;
      
      public static const DEFAULT_YODA_DRAG:Number = 2;
      
      public static const DEFAULT_YODA_ANGULAR_DRAG:Number = 2;
       
      
      public function Tuner()
      {
         super();
      }
   }
}
