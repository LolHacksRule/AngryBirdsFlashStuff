package §2",§
{
   import §1x§.b2Body;
   import §9!s§.b2internal;
   import §^>§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2DistanceJointDef extends b2JointDef
   {
       
      
      public var §2"g§:b2Vec2;
      
      public var §#l§:b2Vec2;
      
      public var length:Number;
      
      public var §&"C§:Number;
      
      public var dampingRatio:Number;
      
      public function b2DistanceJointDef()
      {
         this.§2"g§ = new b2Vec2();
         this.§#l§ = new b2Vec2();
         super();
         type = b2Joint.§17§;
         this.length = 1;
         this.§&"C§ = 0;
         this.dampingRatio = 0;
      }
      
      public function §8!s§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         §!!x§ = param1;
         §%!x§ = param2;
         this.§2"g§.SetV(§!!x§.GetLocalPoint(param3));
         this.§#l§.SetV(§%!x§.GetLocalPoint(param4));
         var _loc5_:Number = param4.x - param3.x;
         var _loc6_:Number = param4.y - param3.y;
         this.length = Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_);
         this.§&"C§ = 0;
         this.dampingRatio = 0;
      }
   }
}
