package §6!M§
{
   import §"!w§.b2CircleShape;
   import §"!w§.b2Shape;
   import flash.geom.Point;
   
   public class §3!@§ extends §7r§
   {
       
      
      private var §1o§:Number;
      
      private var §6'§:Point;
      
      public function §3!@§(param1:Number, param2:Point = null)
      {
         super(param1,param1);
         this.§6'§ = param2 || new Point(0,0);
         this.§1o§ = param1;
      }
      
      public function get radius() : Number
      {
         return this.§1o§;
      }
      
      public function get §?"3§() : Point
      {
         return this.§6'§;
      }
      
      override public function getB2Shape(param1:Number = 1.0) : b2Shape
      {
         var _loc2_:b2CircleShape = new b2CircleShape();
         _loc2_.§5!7§(this.§1o§ * param1);
         return _loc2_;
      }
   }
}
