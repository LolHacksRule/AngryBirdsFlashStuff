package §!!<§
{
   import §?m§.b2CircleShape;
   import §?m§.b2Shape;
   import flash.geom.Point;
   
   public class §29§ extends §`!J§
   {
       
      
      private var §1""§:Number;
      
      private var §"!h§:Point;
      
      public function §29§(param1:Number, param2:Point = null)
      {
         super(param1,param1);
         this.§"!h§ = param2 || new Point(0,0);
         this.§1""§ = param1;
      }
      
      public function get radius() : Number
      {
         return this.§1""§;
      }
      
      public function get §0!+§() : Point
      {
         return this.§"!h§;
      }
      
      override public function getB2Shape(param1:Number = 1.0) : b2Shape
      {
         var _loc2_:b2CircleShape = new b2CircleShape();
         _loc2_.§=5§(this.§1""§ * param1);
         return _loc2_;
      }
   }
}
