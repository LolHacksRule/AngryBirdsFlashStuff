package com.angrybirds.engine.data
{
   public class Shot
   {
      
      private static const DELIM:String = ":";
       
      
      public var step:int;
      
      public var x:Number;
      
      public var y:Number;
      
      public var power:Number;
      
      public var angle:Number;
      
      public function Shot(step:int, x:Number, y:Number, power:Number, angle:Number)
      {
         super();
         this.step = step;
         this.x = x;
         this.y = y;
         this.power = power;
         this.angle = angle;
      }
      
      public static function initialize(source:String) : Shot
      {
         var data:Array = source.split(DELIM);
         if(data.length == 5)
         {
            return new Shot(parseInt(data[0]),parseFloat(data[1]),parseFloat(data[2]),parseFloat(data[3]),parseFloat(data[4]));
         }
         return null;
      }
      
      public function toString() : String
      {
         return this.step + DELIM + this.x + DELIM + this.y + DELIM + this.power + DELIM + this.angle;
      }
   }
}
