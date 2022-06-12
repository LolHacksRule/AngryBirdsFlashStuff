package §^%§
{
   import §1!z§.b2Vec2;
   import §7!q§.b2Body;
   import §[M§.b2internal;
   
   use namespace b2internal;
   
   public class b2PulleyJointDef extends b2JointDef
   {
       
      
      public var §62§:b2Vec2;
      
      public var §`"6§:b2Vec2;
      
      public var §98§:b2Vec2;
      
      public var §?m§:b2Vec2;
      
      public var §2"-§:Number;
      
      public var §8!+§:Number;
      
      public var §%""§:Number;
      
      public var §"!3§:Number;
      
      public var §9!1§:Number;
      
      public function b2PulleyJointDef()
      {
         this.§62§ = new b2Vec2();
         this.§`"6§ = new b2Vec2();
         this.§98§ = new b2Vec2();
         this.§?m§ = new b2Vec2();
         super();
         type = b2Joint.§-f§;
         this.§62§.Set(-1,1);
         this.§`"6§.Set(1,1);
         this.§98§.Set(-1,0);
         this.§?m§.Set(1,0);
         this.§2"-§ = 0;
         this.§8!+§ = 0;
         this.§%""§ = 0;
         this.§"!3§ = 0;
         this.§9!1§ = 1;
         collideConnected = true;
      }
      
      public function §`!O§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2, param5:b2Vec2, param6:b2Vec2, param7:Number) : void
      {
         §0",§ = param1;
         §^W§ = param2;
         this.§62§.SetV(param3);
         this.§`"6§.SetV(param4);
         this.§98§ = §0",§.GetLocalPoint(param5);
         this.§?m§ = §^W§.GetLocalPoint(param6);
         var _loc8_:Number = param5.x - param3.x;
         var _loc9_:Number = param5.y - param3.y;
         this.§2"-§ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_);
         var _loc10_:Number = param6.x - param4.x;
         var _loc11_:Number = param6.y - param4.y;
         this.§%""§ = Math.sqrt(_loc10_ * _loc10_ + _loc11_ * _loc11_);
         this.§9!1§ = param7;
         var _loc12_:Number = this.§2"-§ + this.§9!1§ * this.§%""§;
         this.§8!+§ = _loc12_ - this.§9!1§ * b2PulleyJoint.§,"3§;
         this.§"!3§ = (_loc12_ - b2PulleyJoint.§,"3§) / this.§9!1§;
      }
   }
}
