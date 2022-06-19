package §const§
{
   import §_-b4§.b2internal;
   import §_-cP§.b2Mat22;
   import §_-cP§.b2Math;
   import §_-cP§.b2Vec2;
   import §try§.b2Body;
   import §try§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2FrictionJoint extends b2Joint
   {
       
      
      private var §_-Ok§:b2Vec2;
      
      private var §_-KH§:b2Vec2;
      
      public var §_-8z§:b2Mat22;
      
      public var §_-fR§:Number;
      
      private var §_-qe§:b2Vec2;
      
      private var §_-4N§:Number;
      
      private var §_-y§:Number;
      
      private var §_-IX§:Number;
      
      public function b2FrictionJoint(param1:b2FrictionJointDef)
      {
         this.§_-Ok§ = new b2Vec2();
         this.§_-KH§ = new b2Vec2();
         this.§_-8z§ = new b2Mat22();
         this.§_-qe§ = new b2Vec2();
         super(param1);
         this.§_-Ok§.SetV(param1.§_-Vd§);
         this.§_-KH§.SetV(param1.§_-j3§);
         this.§_-8z§.§_-WO§();
         this.§_-fR§ = 0;
         this.§_-qe§.§_-WO§();
         this.§_-4N§ = 0;
         this.§_-y§ = param1.§_-Ao§;
         this.§_-IX§ = param1.maxTorque;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::_-Jb.GetWorldPoint(this.§_-Ok§);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::_-RO.GetWorldPoint(this.§_-KH§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§_-qe§.x,param1 * this.§_-qe§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§_-4N§;
      }
      
      public function §_-dn§(param1:Number) : void
      {
         this.§_-y§ = param1;
      }
      
      public function §_-9I§() : Number
      {
         return this.§_-y§;
      }
      
      public function §try §(param1:Number) : void
      {
         this.§_-IX§ = param1;
      }
      
      public function §_-66§() : Number
      {
         return this.§_-IX§;
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
         _loc4_ = b2internal::_-Jb;
         _loc5_ = b2internal::_-RO;
         _loc2_ = _loc4_.m_xf.R;
         _loc6_ = this.§_-Ok§.x - _loc4_.m_sweep.localCenter.x;
         var _loc7_:Number = this.§_-Ok§.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc6_ + _loc2_.col2.x * _loc7_;
         _loc7_ = _loc2_.col1.y * _loc6_ + _loc2_.col2.y * _loc7_;
         _loc6_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         _loc8_ = this.§_-KH§.x - _loc5_.m_sweep.localCenter.x;
         var _loc9_:Number = this.§_-KH§.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc8_ + _loc2_.col2.x * _loc9_;
         _loc9_ = _loc2_.col1.y * _loc8_ + _loc2_.col2.y * _loc9_;
         _loc8_ = _loc3_;
         _loc10_ = _loc4_.§_-hk§;
         var _loc11_:Number = _loc5_.§_-hk§;
         _loc12_ = _loc4_.§_-LF§;
         _loc13_ = _loc5_.§_-LF§;
         (_loc14_ = new b2Mat22()).col1.x = _loc10_ + _loc11_;
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
         _loc14_.§_-HT§(this.§_-8z§);
         this.§_-fR§ = _loc12_ + _loc13_;
         if(this.§_-fR§ > 0)
         {
            this.§_-fR§ = 1 / this.§_-fR§;
         }
         if(param1.§_-0X§)
         {
            this.§_-qe§.x *= param1.§_-Mu§;
            this.§_-qe§.y *= param1.§_-Mu§;
            this.§_-4N§ *= param1.§_-Mu§;
            _loc15_ = this.§_-qe§;
            _loc4_.§_-PK§.x -= _loc10_ * _loc15_.x;
            _loc4_.§_-PK§.y -= _loc10_ * _loc15_.y;
            _loc4_.m_angularVelocity -= _loc12_ * (_loc6_ * _loc15_.y - _loc7_ * _loc15_.x + this.§_-4N§);
            _loc5_.§_-PK§.x += _loc11_ * _loc15_.x;
            _loc5_.§_-PK§.y += _loc11_ * _loc15_.y;
            _loc5_.m_angularVelocity += _loc13_ * (_loc8_ * _loc15_.y - _loc9_ * _loc15_.x + this.§_-4N§);
         }
         else
         {
            this.§_-qe§.§_-WO§();
            this.§_-4N§ = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc4_:b2Body = b2internal::_-Jb;
         var _loc5_:b2Body = b2internal::_-RO;
         var _loc6_:b2Vec2 = _loc4_.§_-PK§;
         var _loc7_:Number = _loc4_.m_angularVelocity;
         var _loc8_:b2Vec2 = _loc5_.§_-PK§;
         var _loc9_:Number = _loc5_.m_angularVelocity;
         var _loc10_:Number = _loc4_.§_-hk§;
         var _loc11_:Number = _loc5_.§_-hk§;
         var _loc12_:Number = _loc4_.§_-LF§;
         var _loc13_:Number = _loc5_.§_-LF§;
         _loc2_ = _loc4_.m_xf.R;
         var _loc14_:Number = this.§_-Ok§.x - _loc4_.m_sweep.localCenter.x;
         var _loc15_:Number = this.§_-Ok§.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc14_ + _loc2_.col2.x * _loc15_;
         _loc15_ = _loc2_.col1.y * _loc14_ + _loc2_.col2.y * _loc15_;
         _loc14_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         var _loc16_:Number = this.§_-KH§.x - _loc5_.m_sweep.localCenter.x;
         var _loc17_:Number = this.§_-KH§.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc16_ + _loc2_.col2.x * _loc17_;
         _loc17_ = _loc2_.col1.y * _loc16_ + _loc2_.col2.y * _loc17_;
         _loc16_ = _loc3_;
         var _loc19_:Number = _loc9_ - _loc7_;
         var _loc20_:Number = -this.§_-fR§ * _loc19_;
         var _loc21_:Number = this.§_-4N§;
         _loc18_ = param1.§_-ec§ * this.§_-IX§;
         this.§_-4N§ = b2Math.§_-9P§(this.§_-4N§ + _loc20_,-_loc18_,_loc18_);
         _loc20_ = this.§_-4N§ - _loc21_;
         _loc7_ -= _loc12_ * _loc20_;
         _loc9_ += _loc13_ * _loc20_;
         var _loc22_:Number = _loc8_.x - _loc9_ * _loc17_ - _loc6_.x + _loc7_ * _loc15_;
         var _loc23_:Number = _loc8_.y + _loc9_ * _loc16_ - _loc6_.y - _loc7_ * _loc14_;
         var _loc24_:b2Vec2 = b2Math.§_-jK§(this.§_-8z§,new b2Vec2(-_loc22_,-_loc23_));
         var _loc25_:b2Vec2 = this.§_-qe§.Copy();
         this.§_-qe§.§_-db§(_loc24_);
         _loc18_ = param1.§_-ec§ * this.§_-y§;
         if(this.§_-qe§.§_-yJ§() > _loc18_ * _loc18_)
         {
            this.§_-qe§.Normalize();
            this.§_-qe§.§_-qa§(_loc18_);
         }
         _loc24_ = b2Math.§_-4g§(this.§_-qe§,_loc25_);
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
