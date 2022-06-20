package §?$<§
{
   import §!H§.b2CircleShape;
   import §!H§.b2Shape;
   import flash.geom.Point;
   
   public class §'!s§ extends §4"F§
   {
       
      
      private var §-!c§:Number;
      
      private var §?"o§:Point;
      
      public function §'!s§(param1:Number, param2:Point = null, param3:String = null)
      {
         super(param1,param1,param3);
         this.§?"o§ = param2 || new Point(0,0);
         this.§-!c§ = param1;
      }
      
      public function get radius() : Number
      {
         return this.§-!c§;
      }
      
      public function get pivot() : Point
      {
         return this.§?"o§;
      }
      
      override public function getB2Shape(param1:Number = 1.0) : b2Shape
      {
         var _loc2_:b2CircleShape = new b2CircleShape();
         _loc2_.§+$'§(this.§-!c§ * param1);
         return _loc2_;
      }
      
      override public function getDimension() : Number
      {
         var _loc1_:Number = 0;
         var _loc2_:Number = 0;
         return Math.max(_loc1_,_loc1_ = Number(this.§-!c§ * 2)) * Math.sqrt(2);
      }
   }
}
