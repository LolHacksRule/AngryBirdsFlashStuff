package §3>§
{
   import §4!W§.b2CircleShape;
   import §4!W§.b2Shape;
   import flash.geom.Point;
   
   public class §,!^§ extends §1!'§
   {
       
      
      private var §="0§:Number;
      
      private var §&!?§:Point;
      
      public function §,!^§(param1:Number, param2:Point = null)
      {
         super(param1,param1);
         this.§&!?§ = param2 || new Point(0,0);
         this.§="0§ = param1;
      }
      
      public function get radius() : Number
      {
         return this.§="0§;
      }
      
      public function get §?O§() : Point
      {
         return this.§&!?§;
      }
      
      override public function getB2Shape(param1:Number = 1.0) : b2Shape
      {
         var _loc2_:b2CircleShape = new b2CircleShape();
         _loc2_.§>"8§(this.§="0§ * param1);
         return _loc2_;
      }
   }
}
