package §`#C§
{
   import §?!c§.b2CircleShape;
   import §?!c§.b2Shape;
   import flash.geom.Point;
   
   public class §3#U§ extends §-"L§
   {
       
      
      private var §!!1§:Number;
      
      private var §1"g§:Point;
      
      public function §3#U§(param1:Number, param2:Point = null, param3:String = null)
      {
         super(param1,param1,param3);
         this.§1"g§ = param2 || new Point(0,0);
         this.§!!1§ = param1;
      }
      
      public function get radius() : Number
      {
         return this.§!!1§;
      }
      
      public function get pivot() : Point
      {
         return this.§1"g§;
      }
      
      override public function getB2Shape(param1:Number = 1.0) : b2Shape
      {
         var _loc2_:b2CircleShape = new b2CircleShape();
         _loc2_.§<#$§(this.§!!1§ * param1);
         return _loc2_;
      }
      
      override public function getDimension() : Number
      {
         var _loc1_:Number = 0;
         var _loc2_:Number = 0;
         return Math.max(_loc1_,_loc1_ = Number(this.§!!1§ * 2)) * Math.sqrt(2);
      }
   }
}
