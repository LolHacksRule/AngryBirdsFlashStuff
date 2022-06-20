package §3!U§
{
   import §%!9§.b2Vec2;
   import §1!+§.b2Body;
   import §9#K§.b2internal;
   
   use namespace b2internal;
   
   public class b2PulleyJointDef extends b2JointDef
   {
       
      
      public var §;0§:b2Vec2;
      
      public var §3!"§:b2Vec2;
      
      public var §?#O§:b2Vec2;
      
      public var § b§:b2Vec2;
      
      public var §4#D§:Number;
      
      public var §^!6§:Number;
      
      public var §=$=§:Number;
      
      public var §>!K§:Number;
      
      public var §3"g§:Number;
      
      public function b2PulleyJointDef()
      {
         this.§;0§ = new b2Vec2();
         this.§3!"§ = new b2Vec2();
         this.§?#O§ = new b2Vec2();
         this.§ b§ = new b2Vec2();
         super();
         type = b2Joint.§-$6§;
         this.§;0§.Set(-1,1);
         this.§3!"§.Set(1,1);
         this.§?#O§.Set(-1,0);
         this.§ b§.Set(1,0);
         this.§4#D§ = 0;
         this.§^!6§ = 0;
         this.§=$=§ = 0;
         this.§>!K§ = 0;
         this.§3"g§ = 1;
         collideConnected = true;
      }
      
      public function §6#Y§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2, param5:b2Vec2, param6:b2Vec2, param7:Number) : void
      {
         §0%§ = param1;
         §%"d§ = param2;
         this.§;0§.SetV(param3);
         this.§3!"§.SetV(param4);
         this.§?#O§ = §0%§.GetLocalPoint(param5);
         this.§ b§ = §%"d§.GetLocalPoint(param6);
         var _loc8_:Number = param5.x - param3.x;
         var _loc9_:Number = param5.y - param3.y;
         this.§4#D§ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_);
         var _loc10_:Number = param6.x - param4.x;
         var _loc11_:Number = param6.y - param4.y;
         this.§=$=§ = Math.sqrt(_loc10_ * _loc10_ + _loc11_ * _loc11_);
         this.§3"g§ = param7;
         var _loc12_:Number = this.§4#D§ + this.§3"g§ * this.§=$=§;
         this.§^!6§ = _loc12_ - this.§3"g§ * b2PulleyJoint.§]! §;
         this.§>!K§ = (_loc12_ - b2PulleyJoint.§]! §) / this.§3"g§;
      }
   }
}
