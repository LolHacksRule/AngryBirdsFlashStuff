package §[^§
{
   import §8!K§.b2CircleShape;
   import §8!K§.b2Shape;
   import flash.geom.Point;
   
   public class §"!>§ extends §#!?§
   {
       
      
      private var § <§:Number;
      
      private var §8B§:Point;
      
      public function §"!>§(param1:Number, param2:Point = null)
      {
         super(param1,param1);
         this.§8B§ = param2 || new Point(0,0);
         this.§ <§ = param1;
      }
      
      public function get radius() : Number
      {
         return this.§ <§;
      }
      
      public function get §@`§() : Point
      {
         return this.§8B§;
      }
      
      override public function getB2Shape(param1:Number = 1.0) : b2Shape
      {
         var _loc2_:b2CircleShape = new b2CircleShape();
         _loc2_.§3!b§(this.§ <§ * param1);
         return _loc2_;
      }
   }
}
