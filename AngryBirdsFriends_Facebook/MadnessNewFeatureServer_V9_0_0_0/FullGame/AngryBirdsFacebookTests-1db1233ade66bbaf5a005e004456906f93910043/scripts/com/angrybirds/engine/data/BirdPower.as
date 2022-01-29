package com.angrybirds.engine.data
{
   public class BirdPower
   {
      
      private static const DELIM:String = ":";
       
      
      public var step:int;
      
      public var targetX:Number;
      
      public var targetY:Number;
      
      public function BirdPower(step:int, targetX:Number, targetY:Number)
      {
         super();
         this.step = step;
         this.targetX = targetX;
         this.targetY = targetY;
      }
      
      public static function initialize(source:String) : BirdPower
      {
         var data:Array = source.split(DELIM);
         if(data.length == 3)
         {
            return new BirdPower(parseInt(data[0]),parseFloat(data[1]),parseFloat(data[2]));
         }
         return null;
      }
      
      public function toString() : String
      {
         return this.step + DELIM + this.targetX + DELIM + this.targetY;
      }
   }
}
