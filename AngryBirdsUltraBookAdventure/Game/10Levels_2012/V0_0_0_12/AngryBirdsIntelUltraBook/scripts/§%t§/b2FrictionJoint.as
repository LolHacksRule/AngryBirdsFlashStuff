package §%t§
{
   import §&L§.b2Mat22;
   import §&L§.b2Math;
   import §&L§.b2Vec2;
   import §+!,§.b2internal;
   import §]=§.b2Body;
   import §]=§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2FrictionJoint extends b2Joint
   {
       
      
      private var §<i§:b2Vec2;
      
      private var §"3§:b2Vec2;
      
      public var §!i§:b2Mat22;
      
      public var §`!'§:Number;
      
      private var §!j§:b2Vec2;
      
      private var §1!+§:Number;
      
      private var §2!W§:Number;
      
      private var §-i§:Number;
      
      public function b2FrictionJoint(param1:b2FrictionJointDef)
      {
         this.§<i§ = new b2Vec2();
         this.§"3§ = new b2Vec2();
         this.§!i§ = new b2Mat22();
         this.§!j§ = new b2Vec2();
         super(param1);
         this.§<i§.SetV(param1.§`!V§);
         this.§"3§.SetV(param1.§6$§);
         this.§!i§.§5b§();
         this.§`!'§ = 0;
         this.§!j§.§5b§();
         this.§1!+§ = 0;
         this.§2!W§ = param1.§3!,§;
         this.§-i§ = param1.maxTorque;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return §1!G§.GetWorldPoint(this.§<i§);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return §&!F§.GetWorldPoint(this.§"3§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§!j§.x,param1 * this.§!j§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§1!+§;
      }
      
      public function §+"§(param1:Number) : void
      {
         this.§2!W§ = param1;
      }
      
      public function § <§() : Number
      {
         return this.§2!W§;
      }
      
      public function §#!I§(param1:Number) : void
      {
         this.§-i§ = param1;
      }
      
      public function §2!M§() : Number
      {
         return this.§-i§;
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
         _loc4_ = §1!G§;
         _loc5_ = §&!F§;
         _loc2_ = _loc4_.m_xf.R;
         _loc6_ = this.§<i§.x - _loc4_.m_sweep.localCenter.x;
         var _loc7_:Number = this.§<i§.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc6_ + _loc2_.col2.x * _loc7_;
         _loc7_ = _loc2_.col1.y * _loc6_ + _loc2_.col2.y * _loc7_;
         _loc6_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         _loc8_ = this.§"3§.x - _loc5_.m_sweep.localCenter.x;
         var _loc9_:Number = this.§"3§.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc8_ + _loc2_.col2.x * _loc9_;
         _loc9_ = _loc2_.col1.y * _loc8_ + _loc2_.col2.y * _loc9_;
         _loc8_ = _loc3_;
         _loc10_ = _loc4_.§8[§;
         var _loc11_:Number = _loc5_.§8[§;
         _loc12_ = _loc4_.§&f§;
         _loc13_ = _loc5_.§&f§;
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
         _loc14_.§,0§(this.§!i§);
         this.§`!'§ = _loc12_ + _loc13_;
         if(this.§`!'§ > 0)
         {
            this.§`!'§ = 1 / this.§`!'§;
         }
         if(param1.§5h§)
         {
            this.§!j§.x *= param1.§<!1§;
            this.§!j§.y *= param1.§<!1§;
            this.§1!+§ *= param1.§<!1§;
            _loc15_ = this.§!j§;
            _loc4_.§45§.x -= _loc10_ * _loc15_.x;
            _loc4_.§45§.y -= _loc10_ * _loc15_.y;
            _loc4_.m_angularVelocity -= _loc12_ * (_loc6_ * _loc15_.y - _loc7_ * _loc15_.x + this.§1!+§);
            _loc5_.§45§.x += _loc11_ * _loc15_.x;
            _loc5_.§45§.y += _loc11_ * _loc15_.y;
            _loc5_.m_angularVelocity += _loc13_ * (_loc8_ * _loc15_.y - _loc9_ * _loc15_.x + this.§1!+§);
         }
         else
         {
            this.§!j§.§5b§();
            this.§1!+§ = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc4_:b2Body = §1!G§;
         var _loc5_:b2Body = §&!F§;
         var _loc6_:b2Vec2 = _loc4_.§45§;
         var _loc7_:Number = _loc4_.m_angularVelocity;
         var _loc8_:b2Vec2 = _loc5_.§45§;
         var _loc9_:Number = _loc5_.m_angularVelocity;
         var _loc10_:Number = _loc4_.§8[§;
         var _loc11_:Number = _loc5_.§8[§;
         var _loc12_:Number = _loc4_.§&f§;
         var _loc13_:Number = _loc5_.§&f§;
         _loc2_ = _loc4_.m_xf.R;
         var _loc14_:Number = this.§<i§.x - _loc4_.m_sweep.localCenter.x;
         var _loc15_:Number = this.§<i§.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc14_ + _loc2_.col2.x * _loc15_;
         _loc15_ = _loc2_.col1.y * _loc14_ + _loc2_.col2.y * _loc15_;
         _loc14_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         var _loc16_:Number = this.§"3§.x - _loc5_.m_sweep.localCenter.x;
         var _loc17_:Number = this.§"3§.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc16_ + _loc2_.col2.x * _loc17_;
         _loc17_ = _loc2_.col1.y * _loc16_ + _loc2_.col2.y * _loc17_;
         _loc16_ = _loc3_;
         var _loc19_:Number = _loc9_ - _loc7_;
         var _loc20_:Number = -this.§`!'§ * _loc19_;
         var _loc21_:Number = this.§1!+§;
         _loc18_ = param1.§`"§ * this.§-i§;
         this.§1!+§ = b2Math.§[$§(this.§1!+§ + _loc20_,-_loc18_,_loc18_);
         _loc20_ = this.§1!+§ - _loc21_;
         _loc7_ -= _loc12_ * _loc20_;
         _loc9_ += _loc13_ * _loc20_;
         var _loc22_:Number = _loc8_.x - _loc9_ * _loc17_ - _loc6_.x + _loc7_ * _loc15_;
         var _loc23_:Number = _loc8_.y + _loc9_ * _loc16_ - _loc6_.y - _loc7_ * _loc14_;
         var _loc24_:b2Vec2 = b2Math.§2!b§(this.§!i§,new b2Vec2(-_loc22_,-_loc23_));
         var _loc25_:b2Vec2 = this.§!j§.Copy();
         this.§!j§.§4!0§(_loc24_);
         _loc18_ = param1.§`"§ * this.§2!W§;
         if(this.§!j§.§+!I§() > _loc18_ * _loc18_)
         {
            this.§!j§.Normalize();
            this.§!j§.§%!U§(_loc18_);
         }
         _loc24_ = b2Math.§;v§(this.§!j§,_loc25_);
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
