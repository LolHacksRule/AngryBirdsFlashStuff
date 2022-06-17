package §?§#3
{
   import §]!o§.b2CircleShape;
   import §]!o§.b2Shape;
   import flash.geom.Point;
   
   public class §0F§ extends §+#c§
   {
       
      
      private var § "=§:Number;
      
      private var §1<§:Point;
      
      public function §0F§(param1:Number, param2:Point = null, param3:String = null)
      {
         super(param1,param1,param3);
         this.§1<§ = param2 || new Point(0,0);
         this.§ "=§ = param1;
      }
      
      public function get radius() : Number
      {
         return this.§ "=§;
      }
      
      public function get pivot() : Point
      {
         return this.§1<§;
      }
      
      override public function getB2Shape(param1:Number = 1.0) : b2Shape
      {
         var _loc2_:b2CircleShape = new b2CircleShape();
         _loc2_.§<!k§(this.§ "=§ * param1);
         return _loc2_;
      }
      
      override public function getDimension() : Number
      {
         var _loc1_:Number = 0;
         var _loc2_:Number = 0;
         return Math.max(_loc1_,_loc1_ = Number(this.§ "=§ * 2)) * Math.sqrt(2);
      }
   }
}
