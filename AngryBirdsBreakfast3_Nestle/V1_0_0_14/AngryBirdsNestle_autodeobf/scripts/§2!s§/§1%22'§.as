package §2!s§
{
   import §`!C§.b2CircleShape;
   import §`!C§.b2Shape;
   import flash.geom.Point;
   
   public class §1"'§ extends §4"1§
   {
       
      
      private var §&&§:Number;
      
      private var §@"2§:Point;
      
      public function §1"'§(param1:Number, param2:Point = null, param3:String = null)
      {
         super(param1,param1,param3);
         this.§@"2§ = param2 || new Point(0,0);
         this.§&&§ = param1;
      }
      
      public function get radius() : Number
      {
         return this.§&&§;
      }
      
      public function get §3!-§() : Point
      {
         return this.§@"2§;
      }
      
      override public function getB2Shape(param1:Number = 1.0) : b2Shape
      {
         var _loc2_:b2CircleShape = new b2CircleShape();
         _loc2_.§,!m§(this.§&&§ * param1);
         return _loc2_;
      }
   }
}
