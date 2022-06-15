package §8#K§
{
   import §1#I§.b2CircleShape;
   import §1#I§.b2Shape;
   import flash.geom.Point;
   
   public class §=$'§ extends §46§
   {
       
      
      private var §`!"§:Number;
      
      private var §1"E§:Point;
      
      public function §=$'§(param1:Number, param2:Point = null, param3:String = null)
      {
         super(param1,param1,param3);
         this.§1"E§ = param2 || new Point(0,0);
         this.§`!"§ = param1;
      }
      
      public function get radius() : Number
      {
         return this.§`!"§;
      }
      
      public function get pivot() : Point
      {
         return this.§1"E§;
      }
      
      override public function getB2Shape(param1:Number = 1.0) : b2Shape
      {
         var _loc2_:b2CircleShape = new b2CircleShape();
         _loc2_.§`#5§(this.§`!"§ * param1);
         return _loc2_;
      }
      
      override public function getDimension() : Number
      {
         var _loc1_:Number = 0;
         var _loc2_:Number = 0;
         return Math.max(_loc1_,_loc1_ = Number(this.§`!"§ * 2)) * Math.sqrt(2);
      }
   }
}
