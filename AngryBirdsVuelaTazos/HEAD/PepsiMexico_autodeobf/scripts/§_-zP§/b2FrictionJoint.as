package §_-zP§
{
   import §_-bA§.b2Mat22;
   import §_-bA§.b2Math;
   import §_-bA§.b2Vec2;
   import §_-rz§.b2internal;
   import §_-vk§.b2Body;
   import §_-vk§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2FrictionJoint extends b2Joint
   {
       
      
      private var §_-su§:b2Vec2;
      
      private var §_-s1§:b2Vec2;
      
      public var §_-1d§:b2Mat22;
      
      public var § case§:Number;
      
      private var §_-LE§:b2Vec2;
      
      private var §_-Nh§:Number;
      
      private var §_-zo§:Number;
      
      private var §_-0a§:Number;
      
      public function b2FrictionJoint(param1:b2FrictionJointDef)
      {
         this.§_-su§ = new b2Vec2();
         this.§_-s1§ = new b2Vec2();
         this.§_-1d§ = new b2Mat22();
         this.§_-LE§ = new b2Vec2();
         super(param1);
         this.§_-su§.SetV(param1.§_-Ys§);
         this.§_-s1§.SetV(param1.§_-8p§);
         this.§_-1d§.§_-qi§();
         this.§ case§ = 0;
         this.§_-LE§.§_-qi§();
         this.§_-Nh§ = 0;
         this.§_-zo§ = param1.§_-qo§;
         this.§_-0a§ = param1.maxTorque;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::_-Vj.GetWorldPoint(this.§_-su§);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::_-qa.GetWorldPoint(this.§_-s1§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§_-LE§.x,param1 * this.§_-LE§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§_-Nh§;
      }
      
      public function §_-lT§(param1:Number) : void
      {
         this.§_-zo§ = param1;
      }
      
      public function §_-H9§() : Number
      {
         return this.§_-zo§;
      }
      
      public function §_-ev§(param1:Number) : void
      {
         this.§_-0a§ = param1;
      }
      
      public function §_-mb§() : Number
      {
         return this.§_-0a§;
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
         _loc4_ = b2internal::_-Vj;
         _loc5_ = b2internal::_-qa;
         _loc2_ = _loc4_.m_xf.R;
         _loc6_ = this.§_-su§.x - _loc4_.m_sweep.localCenter.x;
         var _loc7_:Number = this.§_-su§.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc6_ + _loc2_.col2.x * _loc7_;
         _loc7_ = _loc2_.col1.y * _loc6_ + _loc2_.col2.y * _loc7_;
         _loc6_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         _loc8_ = this.§_-s1§.x - _loc5_.m_sweep.localCenter.x;
         var _loc9_:Number = this.§_-s1§.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc8_ + _loc2_.col2.x * _loc9_;
         _loc9_ = _loc2_.col1.y * _loc8_ + _loc2_.col2.y * _loc9_;
         _loc8_ = _loc3_;
         _loc10_ = _loc4_.§_-Wd§;
         var _loc11_:Number = _loc5_.§_-Wd§;
         _loc12_ = _loc4_.§_-Ox§;
         _loc13_ = _loc5_.§_-Ox§;
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
         _loc14_.§_-c3§(this.§_-1d§);
         this.§ case§ = _loc12_ + _loc13_;
         if(this.§ case§ > 0)
         {
            this.§ case§ = 1 / this.§ case§;
         }
         if(param1.§_-uU§)
         {
            this.§_-LE§.x *= param1.§_-D§;
            this.§_-LE§.y *= param1.§_-D§;
            this.§_-Nh§ *= param1.§_-D§;
            _loc15_ = this.§_-LE§;
            _loc4_.§_-At§.x -= _loc10_ * _loc15_.x;
            _loc4_.§_-At§.y -= _loc10_ * _loc15_.y;
            _loc4_.m_angularVelocity -= _loc12_ * (_loc6_ * _loc15_.y - _loc7_ * _loc15_.x + this.§_-Nh§);
            _loc5_.§_-At§.x += _loc11_ * _loc15_.x;
            _loc5_.§_-At§.y += _loc11_ * _loc15_.y;
            _loc5_.m_angularVelocity += _loc13_ * (_loc8_ * _loc15_.y - _loc9_ * _loc15_.x + this.§_-Nh§);
         }
         else
         {
            this.§_-LE§.§_-qi§();
            this.§_-Nh§ = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc4_:b2Body = b2internal::_-Vj;
         var _loc5_:b2Body = b2internal::_-qa;
         var _loc6_:b2Vec2 = _loc4_.§_-At§;
         var _loc7_:Number = _loc4_.m_angularVelocity;
         var _loc8_:b2Vec2 = _loc5_.§_-At§;
         var _loc9_:Number = _loc5_.m_angularVelocity;
         var _loc10_:Number = _loc4_.§_-Wd§;
         var _loc11_:Number = _loc5_.§_-Wd§;
         var _loc12_:Number = _loc4_.§_-Ox§;
         var _loc13_:Number = _loc5_.§_-Ox§;
         _loc2_ = _loc4_.m_xf.R;
         var _loc14_:Number = this.§_-su§.x - _loc4_.m_sweep.localCenter.x;
         var _loc15_:Number = this.§_-su§.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc14_ + _loc2_.col2.x * _loc15_;
         _loc15_ = _loc2_.col1.y * _loc14_ + _loc2_.col2.y * _loc15_;
         _loc14_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         var _loc16_:Number = this.§_-s1§.x - _loc5_.m_sweep.localCenter.x;
         var _loc17_:Number = this.§_-s1§.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc16_ + _loc2_.col2.x * _loc17_;
         _loc17_ = _loc2_.col1.y * _loc16_ + _loc2_.col2.y * _loc17_;
         _loc16_ = _loc3_;
         var _loc19_:Number = _loc9_ - _loc7_;
         var _loc20_:Number = -this.§ case§ * _loc19_;
         var _loc21_:Number = this.§_-Nh§;
         _loc18_ = param1.§_-Qf§ * this.§_-0a§;
         this.§_-Nh§ = b2Math.§_-rr§(this.§_-Nh§ + _loc20_,-_loc18_,_loc18_);
         _loc20_ = this.§_-Nh§ - _loc21_;
         _loc7_ -= _loc12_ * _loc20_;
         _loc9_ += _loc13_ * _loc20_;
         var _loc22_:Number = _loc8_.x - _loc9_ * _loc17_ - _loc6_.x + _loc7_ * _loc15_;
         var _loc23_:Number = _loc8_.y + _loc9_ * _loc16_ - _loc6_.y - _loc7_ * _loc14_;
         var _loc24_:b2Vec2 = b2Math.§_-7h§(this.§_-1d§,new b2Vec2(-_loc22_,-_loc23_));
         var _loc25_:b2Vec2 = this.§_-LE§.Copy();
         this.§_-LE§.§_-B8§(_loc24_);
         _loc18_ = param1.§_-Qf§ * this.§_-zo§;
         if(this.§_-LE§.§_-vz§() > _loc18_ * _loc18_)
         {
            this.§_-LE§.Normalize();
            this.§_-LE§.§_-2O§(_loc18_);
         }
         _loc24_ = b2Math.§_-2E§(this.§_-LE§,_loc25_);
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
