package com.angrybirds.powerups
{
   import flash.events.Event;
   
   public class PowerupEvent extends Event
   {
      
      public static const START_ANIMATION:String = "start_animation";
      
      public static const POWERUP_USE:String = "powerup_use";
      
      public static const ANIMATION_FINISHED:String = "animation_finished";
       
      
      public var powerupType:String;
      
      public function PowerupEvent(type:String, powerupType:String, bubbles:Boolean = false, cancelable:Boolean = false)
      {
         this.powerupType = powerupType;
         super(type,bubbles,cancelable);
      }
   }
}
