package §5!7§
{
   import §>"&§.b2CircleShape;
   import §>"&§.b2Shape;
   import flash.geom.Point;
   
   public class §2!E§ extends §[2§
   {
       
      
      private var §!g§:Number;
      
      private var §<"'§:Point;
      
      public function §2!E§(param1:Number, param2:Point = null)
      {
         super(param1,param1);
         this.§<"'§ = param2 || new Point(0,0);
         this.§!g§ = param1;
      }
      
      public function get radius() : Number
      {
         return this.§!g§;
      }
      
      public function get §!!L§() : Point
      {
         return this.§<"'§;
      }
      
      override public function getB2Shape(param1:Number = 1.0) : b2Shape
      {
         var _loc2_:b2CircleShape = new b2CircleShape();
         _loc2_.§2!=§(this.§!g§ * param1);
         return _loc2_;
      }
   }
}
