package §!"+§
{
   import §[e§.b2CircleShape;
   import §[e§.b2Shape;
   import flash.geom.Point;
   
   public class §2N§ extends § !S§
   {
       
      
      private var §0!$§:Number;
      
      private var §0u§:Point;
      
      public function §2N§(param1:Number, param2:Point = null)
      {
         super(param1,param1);
         this.§0u§ = param2 || new Point(0,0);
         this.§0!$§ = param1;
      }
      
      public function get radius() : Number
      {
         return this.§0!$§;
      }
      
      public function get §&T§() : Point
      {
         return this.§0u§;
      }
      
      override public function getB2Shape(param1:Number = 1.0) : b2Shape
      {
         var _loc2_:b2CircleShape = new b2CircleShape();
         _loc2_.§%?§(this.§0!$§ * param1);
         return _loc2_;
      }
   }
}
