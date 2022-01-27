package §2"Y§
{
   import §4!$§.b2CircleShape;
   import §4!$§.b2Shape;
   import flash.geom.Point;
   
   public class §?#Q§ extends §?#^§
   {
       
      
      private var §0#J§:Number;
      
      private var §+!$§:Point;
      
      public function §?#Q§(param1:Number, param2:Point = null, param3:String = null)
      {
         super(param1,param1,param3);
         this.§+!$§ = param2 || new Point(0,0);
         this.§0#J§ = param1;
      }
      
      public function get radius() : Number
      {
         return this.§0#J§;
      }
      
      public function get §`!`§() : Point
      {
         return this.§+!$§;
      }
      
      override public function getB2Shape(param1:Number = 1.0) : b2Shape
      {
         var _loc2_:b2CircleShape = new b2CircleShape();
         _loc2_.§>#X§(this.§0#J§ * param1);
         return _loc2_;
      }
   }
}
