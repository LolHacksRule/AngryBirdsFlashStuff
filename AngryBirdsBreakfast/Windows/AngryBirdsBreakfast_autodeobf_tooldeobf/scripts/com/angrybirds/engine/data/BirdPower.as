package com.angrybirds.engine.data
{
   public class BirdPower
   {
      
      private static const DELIM:String = ":";
       
      
      public var step:int;
      
      public var targetX:Number;
      
      public var targetY:Number;
      
      public function BirdPower(param1:int, param2:Number, param3:Number)
      {
         super();
         this.step = param1;
         this.targetX = param2;
         this.targetY = param3;
      }
      
      public static function initialize(param1:String) : BirdPower
      {
         var _loc2_:Array = param1.split(DELIM);
         if(_loc2_.length == 3)
         {
            return new BirdPower(parseInt(_loc2_[0]),parseFloat(_loc2_[1]),parseFloat(_loc2_[2]));
         }
         return null;
      }
      
      public function toString() : String
      {
         return this.step + DELIM + this.targetX + DELIM + this.targetY;
      }
   }
}
