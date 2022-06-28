package §[!N§
{
   import § D§.b2Body;
   import §8>§.b2Vec2;
   import §;u§.b2internal;
   
   use namespace b2internal;
   
   public class b2PulleyJointDef extends b2JointDef
   {
       
      
      public var §&!>§:b2Vec2;
      
      public var §7!+§:b2Vec2;
      
      public var §9!9§:b2Vec2;
      
      public var §^G§:b2Vec2;
      
      public var §5%§:Number;
      
      public var §;J§:Number;
      
      public var §3!r§:Number;
      
      public var § M§:Number;
      
      public var §32§:Number;
      
      public function b2PulleyJointDef()
      {
         this.§&!>§ = new b2Vec2();
         this.§7!+§ = new b2Vec2();
         this.§9!9§ = new b2Vec2();
         this.§^G§ = new b2Vec2();
         super();
         type = b2Joint.§<!`§;
         this.§&!>§.Set(-1,1);
         this.§7!+§.Set(1,1);
         this.§9!9§.Set(-1,0);
         this.§^G§.Set(1,0);
         this.§5%§ = 0;
         this.§;J§ = 0;
         this.§3!r§ = 0;
         this.§ M§ = 0;
         this.§32§ = 1;
         collideConnected = true;
      }
      
      public function §7R§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2, param5:b2Vec2, param6:b2Vec2, param7:Number) : void
      {
         §-!O§ = param1;
         §3!u§ = param2;
         this.§&!>§.SetV(param3);
         this.§7!+§.SetV(param4);
         this.§9!9§ = §-!O§.GetLocalPoint(param5);
         this.§^G§ = §3!u§.GetLocalPoint(param6);
         var _loc8_:Number = param5.x - param3.x;
         var _loc9_:Number = param5.y - param3.y;
         this.§5%§ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_);
         var _loc10_:Number = param6.x - param4.x;
         var _loc11_:Number = param6.y - param4.y;
         this.§3!r§ = Math.sqrt(_loc10_ * _loc10_ + _loc11_ * _loc11_);
         this.§32§ = param7;
         var _loc12_:Number = this.§5%§ + this.§32§ * this.§3!r§;
         this.§;J§ = _loc12_ - this.§32§ * b2PulleyJoint.§1!"§;
         this.§ M§ = (_loc12_ - b2PulleyJoint.§1!"§) / this.§32§;
      }
   }
}
