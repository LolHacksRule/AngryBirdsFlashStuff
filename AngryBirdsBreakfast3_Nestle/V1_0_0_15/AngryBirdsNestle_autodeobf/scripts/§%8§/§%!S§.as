package §%8§
{
   import §=!!§.b2CircleShape;
   import §=!!§.b2Shape;
   import flash.geom.Point;
   
   public class §%!S§ extends §[_§
   {
       
      
      private var §,Z§:Number;
      
      private var §4u§:Point;
      
      public function §%!S§(param1:Number, param2:Point = null, param3:String = null)
      {
         super(param1,param1,param3);
         this.§4u§ = param2 || new Point(0,0);
         this.§,Z§ = param1;
      }
      
      public function get radius() : Number
      {
         return this.§,Z§;
      }
      
      public function get §-x§() : Point
      {
         return this.§4u§;
      }
      
      override public function getB2Shape(param1:Number = 1.0) : b2Shape
      {
         var _loc2_:b2CircleShape = new b2CircleShape();
         _loc2_.§0!J§(this.§,Z§ * param1);
         return _loc2_;
      }
   }
}
