package §=;§
{
   import §+!g§.b2internal;
   import §>!8§.b2Mat22;
   import §>!8§.b2Math;
   import §>!8§.b2Vec2;
   import §>!L§.b2Body;
   import §>!L§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2FrictionJoint extends b2Joint
   {
       
      
      private var §<t§:b2Vec2;
      
      private var § G§:b2Vec2;
      
      public var §,,§:b2Mat22;
      
      public var §,@§:Number;
      
      private var §4!H§:b2Vec2;
      
      private var § Y§:Number;
      
      private var §,&§:Number;
      
      private var §;j§:Number;
      
      public function b2FrictionJoint(param1:b2FrictionJointDef)
      {
         this.§<t§ = new b2Vec2();
         this.§ G§ = new b2Vec2();
         this.§,,§ = new b2Mat22();
         this.§4!H§ = new b2Vec2();
         super(param1);
         this.§<t§.SetV(param1.§>!g§);
         this.§ G§.SetV(param1.§&1§);
         this.§,,§.§@!;§();
         this.§,@§ = 0;
         this.§4!H§.§@!;§();
         this.§ Y§ = 0;
         this.§,&§ = param1.§<!U§;
         this.§;j§ = param1.maxTorque;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return §-;§.GetWorldPoint(this.§<t§);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return §`x§.GetWorldPoint(this.§ G§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§4!H§.x,param1 * this.§4!H§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§ Y§;
      }
      
      public function §>n§(param1:Number) : void
      {
         this.§,&§ = param1;
      }
      
      public function §1D§() : Number
      {
         return this.§,&§;
      }
      
      public function §9!h§(param1:Number) : void
      {
         this.§;j§ = param1;
      }
      
      public function §&C§() : Number
      {
         return this.§;j§;
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc4_:b2Body = null;
         var _loc5_:b2Body = null;
         var _loc6_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:b2Mat22 = null;
         var _loc15_:b2Vec2 = null;
         _loc4_ = §-;§;
         _loc5_ = §`x§;
         _loc2_ = _loc4_.m_xf.R;
         _loc6_ = this.§<t§.x - _loc4_.m_sweep.localCenter.x;
         var _loc7_:Number = this.§<t§.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc6_ + _loc2_.col2.x * _loc7_;
         _loc7_ = _loc2_.col1.y * _loc6_ + _loc2_.col2.y * _loc7_;
         _loc6_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         _loc8_ = this.§ G§.x - _loc5_.m_sweep.localCenter.x;
         var _loc9_:Number = this.§ G§.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc8_ + _loc2_.col2.x * _loc9_;
         _loc9_ = _loc2_.col1.y * _loc8_ + _loc2_.col2.y * _loc9_;
         _loc8_ = _loc3_;
         _loc10_ = _loc4_.§=n§;
         var _loc11_:Number = _loc5_.§=n§;
         _loc12_ = _loc4_.§1&§;
         _loc13_ = _loc5_.§1&§;
         _loc14_ = new b2Mat22();
         _loc14_.col1.x = _loc10_ + _loc11_;
         _loc14_.col2.x = 0;
         _loc14_.col1.y = 0;
         _loc14_.col2.y = _loc10_ + _loc11_;
         _loc14_.col1.x += _loc12_ * _loc7_ * _loc7_;
         _loc14_.col2.x += -_loc12_ * _loc6_ * _loc7_;
         _loc14_.col1.y += -_loc12_ * _loc6_ * _loc7_;
         _loc14_.col2.y += _loc12_ * _loc6_ * _loc6_;
         _loc14_.col1.x += _loc13_ * _loc9_ * _loc9_;
         _loc14_.col2.x += -_loc13_ * _loc8_ * _loc9_;
         _loc14_.col1.y += -_loc13_ * _loc8_ * _loc9_;
         _loc14_.col2.y += _loc13_ * _loc8_ * _loc8_;
         _loc14_.§0!A§(this.§,,§);
         this.§,@§ = _loc12_ + _loc13_;
         if(this.§,@§ > 0)
         {
            this.§,@§ = 1 / this.§,@§;
         }
         if(param1.§-K§)
         {
            this.§4!H§.x *= param1.§&s§;
            this.§4!H§.y *= param1.§&s§;
            this.§ Y§ *= param1.§&s§;
            _loc15_ = this.§4!H§;
            _loc4_.§4!h§.x -= _loc10_ * _loc15_.x;
            _loc4_.§4!h§.y -= _loc10_ * _loc15_.y;
            _loc4_.m_angularVelocity -= _loc12_ * (_loc6_ * _loc15_.y - _loc7_ * _loc15_.x + this.§ Y§);
            _loc5_.§4!h§.x += _loc11_ * _loc15_.x;
            _loc5_.§4!h§.y += _loc11_ * _loc15_.y;
            _loc5_.m_angularVelocity += _loc13_ * (_loc8_ * _loc15_.y - _loc9_ * _loc15_.x + this.§ Y§);
         }
         else
         {
            this.§4!H§.§@!;§();
            this.§ Y§ = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc4_:b2Body = §-;§;
         var _loc5_:b2Body = §`x§;
         var _loc6_:b2Vec2 = _loc4_.§4!h§;
         var _loc7_:Number = _loc4_.m_angularVelocity;
         var _loc8_:b2Vec2 = _loc5_.§4!h§;
         var _loc9_:Number = _loc5_.m_angularVelocity;
         var _loc10_:Number = _loc4_.§=n§;
         var _loc11_:Number = _loc5_.§=n§;
         var _loc12_:Number = _loc4_.§1&§;
         var _loc13_:Number = _loc5_.§1&§;
         _loc2_ = _loc4_.m_xf.R;
         var _loc14_:Number = this.§<t§.x - _loc4_.m_sweep.localCenter.x;
         var _loc15_:Number = this.§<t§.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc14_ + _loc2_.col2.x * _loc15_;
         _loc15_ = _loc2_.col1.y * _loc14_ + _loc2_.col2.y * _loc15_;
         _loc14_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         var _loc16_:Number = this.§ G§.x - _loc5_.m_sweep.localCenter.x;
         var _loc17_:Number = this.§ G§.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc16_ + _loc2_.col2.x * _loc17_;
         _loc17_ = _loc2_.col1.y * _loc16_ + _loc2_.col2.y * _loc17_;
         _loc16_ = _loc3_;
         var _loc19_:Number = _loc9_ - _loc7_;
         var _loc20_:Number = -this.§,@§ * _loc19_;
         var _loc21_:Number = this.§ Y§;
         _loc18_ = param1.§`M§ * this.§;j§;
         this.§ Y§ = b2Math.§3X§(this.§ Y§ + _loc20_,-_loc18_,_loc18_);
         _loc20_ = this.§ Y§ - _loc21_;
         _loc7_ -= _loc12_ * _loc20_;
         _loc9_ += _loc13_ * _loc20_;
         var _loc22_:Number = _loc8_.x - _loc9_ * _loc17_ - _loc6_.x + _loc7_ * _loc15_;
         var _loc23_:Number = _loc8_.y + _loc9_ * _loc16_ - _loc6_.y - _loc7_ * _loc14_;
         var _loc24_:b2Vec2 = b2Math.§]!§(this.§,,§,new b2Vec2(-_loc22_,-_loc23_));
         var _loc25_:b2Vec2 = this.§4!H§.Copy();
         this.§4!H§.§!V§(_loc24_);
         _loc18_ = param1.§`M§ * this.§,&§;
         if(this.§4!H§.§3!M§() > _loc18_ * _loc18_)
         {
            this.§4!H§.Normalize();
            this.§4!H§.§2p§(_loc18_);
         }
         _loc24_ = b2Math.§2!C§(this.§4!H§,_loc25_);
         _loc6_.x -= _loc10_ * _loc24_.x;
         _loc6_.y -= _loc10_ * _loc24_.y;
         _loc7_ -= _loc12_ * (_loc14_ * _loc24_.y - _loc15_ * _loc24_.x);
         _loc8_.x += _loc11_ * _loc24_.x;
         _loc8_.y += _loc11_ * _loc24_.y;
         _loc9_ += _loc13_ * (_loc16_ * _loc24_.y - _loc17_ * _loc24_.x);
         _loc4_.m_angularVelocity = _loc7_;
         _loc5_.m_angularVelocity = _loc9_;
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return true;
      }
   }
}
