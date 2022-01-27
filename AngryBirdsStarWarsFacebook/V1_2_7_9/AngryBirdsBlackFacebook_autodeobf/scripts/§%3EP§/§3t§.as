package §>P§
{
   import §[!L§.b2CircleShape;
   import §[!L§.b2Shape;
   import flash.geom.Point;
   
   public class §3t§ extends §?"Q§
   {
       
      
      private var §8d§:Number;
      
      private var §0#&§:Point;
      
      public function §3t§(param1:Number, param2:Point = null, param3:String = null)
      {
         super(param1,param1,param3);
         this.§0#&§ = param2 || new Point(0,0);
         this.§8d§ = param1;
      }
      
      public function get radius() : Number
      {
         return this.§8d§;
      }
      
      public function get §+I§() : Point
      {
         return this.§0#&§;
      }
      
      override public function getB2Shape(param1:Number = 1.0) : b2Shape
      {
         var _loc2_:b2CircleShape = new b2CircleShape();
         _loc2_.§=!h§(this.§8d§ * param1);
         return _loc2_;
      }
   }
}
