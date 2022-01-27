package §;"=§
{
   import §?f§.b2CircleShape;
   import §?f§.b2Shape;
   import flash.geom.Point;
   
   public class §9!B§ extends §3!R§
   {
       
      
      private var §0E§:Number;
      
      private var §4"7§:Point;
      
      public function §9!B§(param1:Number, param2:Point = null)
      {
         super(param1,param1);
         this.§4"7§ = param2 || new Point(0,0);
         this.§0E§ = param1;
      }
      
      public function get radius() : Number
      {
         return this.§0E§;
      }
      
      public function get §;y§() : Point
      {
         return this.§4"7§;
      }
      
      override public function getB2Shape(param1:Number = 1.0) : b2Shape
      {
         var _loc2_:b2CircleShape = new b2CircleShape();
         _loc2_.§[!<§(this.§0E§ * param1);
         return _loc2_;
      }
   }
}
