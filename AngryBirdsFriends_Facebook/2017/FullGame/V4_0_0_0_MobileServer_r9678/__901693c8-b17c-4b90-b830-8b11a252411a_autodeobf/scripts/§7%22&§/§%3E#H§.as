package §7"&§
{
   import §+#f§.b2CircleShape;
   import §+#f§.b2Shape;
   import flash.geom.Point;
   
   public class §>#H§ extends §]"k§
   {
       
      
      private var §7!@§:Number;
      
      private var §5#"§:Point;
      
      public function §>#H§(param1:Number, param2:Point = null, param3:String = null)
      {
         super(param1,param1,param3);
         this.§5#"§ = param2 || new Point(0,0);
         this.§7!@§ = param1;
      }
      
      public function get radius() : Number
      {
         return this.§7!@§;
      }
      
      public function get pivot() : Point
      {
         return this.§5#"§;
      }
      
      override public function getB2Shape(param1:Number = 1.0) : b2Shape
      {
         var _loc2_:b2CircleShape = new b2CircleShape();
         _loc2_.§#"M§(this.§7!@§ * param1);
         return _loc2_;
      }
      
      override public function getDimension() : Number
      {
         var _loc1_:Number = 0;
         var _loc2_:Number = 0;
         return Math.max(_loc1_,_loc1_ = Number(this.§7!@§ * 2)) * Math.sqrt(2);
      }
   }
}
