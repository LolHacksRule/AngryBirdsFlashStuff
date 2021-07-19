package §&v§
{
   import §"y§.b2CircleShape;
   import §"y§.b2Shape;
   import flash.geom.Point;
   
   public class §"a§ extends §each §
   {
       
      
      private var §+`§:Number;
      
      private var §-C§:Point;
      
      public function §"a§(param1:Number, param2:Point = null)
      {
         super(param1,param1);
         this.§-C§ = param2 || new Point(0,0);
         this.§+`§ = param1;
      }
      
      public function get radius() : Number
      {
         return this.§+`§;
      }
      
      public function get §0V§() : Point
      {
         return this.§-C§;
      }
      
      override public function getB2Shape(param1:Number = 1.0) : b2Shape
      {
         var _loc2_:b2CircleShape = new b2CircleShape();
         _loc2_.§>!w§(this.§+`§ * param1);
         return _loc2_;
      }
   }
}
