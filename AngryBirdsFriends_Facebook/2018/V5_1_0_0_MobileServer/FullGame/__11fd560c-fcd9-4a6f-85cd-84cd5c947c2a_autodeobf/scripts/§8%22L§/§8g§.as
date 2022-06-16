package §8"L§
{
   import §"#i§.b2CircleShape;
   import §"#i§.b2Shape;
   import flash.geom.Point;
   
   public class §8g§ extends §!!C§
   {
       
      
      private var §4#&§:Number;
      
      private var §5"#§:Point;
      
      public function §8g§(param1:Number, param2:Point = null, param3:String = null)
      {
         super(param1,param1,param3);
         this.§5"#§ = param2 || new Point(0,0);
         this.§4#&§ = param1;
      }
      
      public function get radius() : Number
      {
         return this.§4#&§;
      }
      
      public function get pivot() : Point
      {
         return this.§5"#§;
      }
      
      override public function getB2Shape(param1:Number = 1.0) : b2Shape
      {
         var _loc2_:b2CircleShape = new b2CircleShape();
         _loc2_.§`h§(this.§4#&§ * param1);
         return _loc2_;
      }
      
      override public function getDimension() : Number
      {
         var _loc1_:Number = 0;
         var _loc2_:Number = 0;
         return Math.max(_loc1_,_loc1_ = Number(this.§4#&§ * 2)) * Math.sqrt(2);
      }
   }
}
