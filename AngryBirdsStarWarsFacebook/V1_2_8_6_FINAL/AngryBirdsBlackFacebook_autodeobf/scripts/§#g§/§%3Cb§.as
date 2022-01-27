package §#g§
{
   import §1!2§.b2CircleShape;
   import §1!2§.b2Shape;
   import flash.geom.Point;
   
   public class §<b§ extends §'<§
   {
       
      
      private var §7"+§:Number;
      
      private var §+"^§:Point;
      
      public function §<b§(param1:Number, param2:Point = null, param3:String = null)
      {
         super(param1,param1,param3);
         this.§+"^§ = param2 || new Point(0,0);
         this.§7"+§ = param1;
      }
      
      public function get radius() : Number
      {
         return this.§7"+§;
      }
      
      public function get § !4§() : Point
      {
         return this.§+"^§;
      }
      
      override public function getB2Shape(param1:Number = 1.0) : b2Shape
      {
         var _loc2_:b2CircleShape = new b2CircleShape();
         _loc2_.§'"l§(this.§7"+§ * param1);
         return _loc2_;
      }
   }
}
