package §3!U§
{
   import §%!9§.b2Vec2;
   import §1!+§.b2Body;
   import §9#K§.b2internal;
   
   use namespace b2internal;
   
   public class b2DistanceJointDef extends b2JointDef
   {
       
      
      public var §?#O§:b2Vec2;
      
      public var § b§:b2Vec2;
      
      public var length:Number;
      
      public var §0Y§:Number;
      
      public var dampingRatio:Number;
      
      public function b2DistanceJointDef()
      {
         this.§?#O§ = new b2Vec2();
         this.§ b§ = new b2Vec2();
         super();
         type = b2Joint.§;2§;
         this.length = 1;
         this.§0Y§ = 0;
         this.dampingRatio = 0;
      }
      
      public function §6#Y§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         §0%§ = param1;
         §%"d§ = param2;
         this.§?#O§.SetV(§0%§.GetLocalPoint(param3));
         this.§ b§.SetV(§%"d§.GetLocalPoint(param4));
         var _loc5_:Number = param4.x - param3.x;
         var _loc6_:Number = param4.y - param3.y;
         this.length = Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_);
         this.§0Y§ = 0;
         this.dampingRatio = 0;
      }
   }
}
