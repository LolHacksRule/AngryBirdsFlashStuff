package §"!&§
{
   import §,Z§.b2CircleShape;
   import §,Z§.b2Shape;
   import flash.geom.Point;
   
   public class §="A§ extends set
   {
       
      
      private var §?!1§:Number;
      
      private var §7i§:Point;
      
      public function §="A§(param1:Number, param2:Point = null)
      {
         super(param1,param1);
         this.§7i§ = param2 || new Point(0,0);
         this.§?!1§ = param1;
      }
      
      public function get radius() : Number
      {
         return this.§?!1§;
      }
      
      public function get §="+§() : Point
      {
         return this.§7i§;
      }
      
      override public function getB2Shape(param1:Number = 1.0) : b2Shape
      {
         var _loc2_:b2CircleShape = new b2CircleShape();
         _loc2_.§<!+§(this.§?!1§ * param1);
         return _loc2_;
      }
   }
}
