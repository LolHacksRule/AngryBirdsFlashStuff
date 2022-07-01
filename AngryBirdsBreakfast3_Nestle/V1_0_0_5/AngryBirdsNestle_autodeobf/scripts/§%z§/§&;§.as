package §%z§
{
   import §3!4§.b2CircleShape;
   import §3!4§.b2Shape;
   import flash.geom.Point;
   
   public class §&;§ extends §-i§
   {
       
      
      private var §;K§:Number;
      
      private var §8!$§:Point;
      
      public function §&;§(param1:Number, param2:Point = null)
      {
         super(param1,param1);
         this.§8!$§ = param2 || new Point(0,0);
         this.§;K§ = param1;
      }
      
      public function get radius() : Number
      {
         return this.§;K§;
      }
      
      public function get §+!G§() : Point
      {
         return this.§8!$§;
      }
      
      override public function getB2Shape(param1:Number = 1.0) : b2Shape
      {
         var _loc2_:b2CircleShape = new b2CircleShape();
         _loc2_.§[Q§(this.§;K§ * param1);
         return _loc2_;
      }
   }
}
