package §1#]§
{
   import §!H§.b2Shape;
   import §4$E§.*;
   import §?!C§.*;
   import §?N§.*;
   import §@!S§.*;
   
   use namespace b2internal;
   
   public class b2ContactSolver
   {
      
      private static var §#$<§:b2WorldManifold = new b2WorldManifold();
      
      private static var §4!<§:b2PositionSolverManifold = new b2PositionSolverManifold();
       
      
      private var §%"E§:b2TimeStep;
      
      private var §^w§;
      
      b2internal var §2h§:Vector.<b2ContactConstraint>;
      
      private var §3i§:int;
      
      public function b2ContactSolver()
      {
         this.§%"E§ = new b2TimeStep();
         this.§2h§ = new Vector.<b2ContactConstraint>();
         super();
         var _loc1_:int = 0;
         while(_loc1_ < 300)
         {
            this.§2h§[_loc1_] = new b2ContactConstraint();
            _loc1_++;
         }
      }
      
      public function §1!W§(param1:b2TimeStep, param2:Vector.<b2Contact>, param3:int, param4:*) : void
      {
         var _loc5_:b2Contact = null;
         var _loc6_:int = 0;
         var _loc9_:b2Fixture = null;
         var _loc10_:b2Fixture = null;
         var _loc11_:b2Shape = null;
         var _loc12_:b2Shape = null;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:b2Body = null;
         var _loc16_:b2Body = null;
         var _loc17_:b2Manifold = null;
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         var _loc21_:Number = NaN;
         var _loc22_:Number = NaN;
         var _loc23_:Number = NaN;
         var _loc24_:Number = NaN;
         var _loc25_:Number = NaN;
         var _loc26_:Number = NaN;
         var _loc27_:Number = NaN;
         var _loc28_:b2ContactConstraint = null;
         var _loc29_:uint = 0;
         var _loc30_:b2ManifoldPoint = null;
         var _loc31_:b2ContactConstraintPoint = null;
         var _loc32_:Number = NaN;
         var _loc33_:Number = NaN;
         var _loc34_:Number = NaN;
         var _loc35_:Number = NaN;
         var _loc36_:Number = NaN;
         var _loc37_:Number = NaN;
         var _loc38_:Number = NaN;
         var _loc39_:Number = NaN;
         var _loc40_:Number = NaN;
         var _loc41_:Number = NaN;
         var _loc42_:Number = NaN;
         var _loc43_:Number = NaN;
         var _loc44_:Number = NaN;
         var _loc45_:Number = NaN;
         var _loc46_:Number = NaN;
         var _loc47_:Number = NaN;
         var _loc48_:b2ContactConstraintPoint = null;
         var _loc49_:b2ContactConstraintPoint = null;
         var _loc50_:Number = NaN;
         var _loc51_:Number = NaN;
         var _loc52_:Number = NaN;
         var _loc53_:Number = NaN;
         var _loc54_:Number = NaN;
         var _loc55_:Number = NaN;
         var _loc56_:Number = NaN;
         var _loc57_:Number = NaN;
         var _loc58_:Number = NaN;
         var _loc59_:Number = NaN;
         var _loc60_:Number = NaN;
         var _loc61_:Number = NaN;
         this.§%"E§.Set(param1);
         this.§^w§ = param4;
         this.§3i§ = param3;
         while(this.§2h§.length < this.§3i§)
         {
            this.§2h§[this.§2h§.length] = new b2ContactConstraint();
         }
         _loc6_ = 0;
         while(_loc6_ < param3)
         {
            _loc9_ = (_loc5_ = param2[_loc6_]).§-!-§;
            _loc10_ = _loc5_.§^y§;
            _loc11_ = _loc9_.§'"@§;
            _loc12_ = _loc10_.§'"@§;
            _loc13_ = _loc11_.§5#n§;
            _loc14_ = _loc12_.§5#n§;
            _loc15_ = _loc9_.m_body;
            _loc16_ = _loc10_.m_body;
            _loc17_ = _loc5_.§1Y§();
            _loc18_ = b2Settings.b2MixFriction(_loc9_.GetFriction(),_loc10_.GetFriction());
            _loc19_ = b2Settings.b2MixRestitution(_loc9_.GetRestitution(),_loc10_.GetRestitution());
            _loc20_ = _loc15_.§!#p§.x;
            _loc21_ = _loc15_.§!#p§.y;
            _loc22_ = _loc16_.§!#p§.x;
            _loc23_ = _loc16_.§!#p§.y;
            _loc24_ = _loc15_.m_angularVelocity;
            _loc25_ = _loc16_.m_angularVelocity;
            b2Settings.b2Assert(_loc17_.§`!o§ > 0);
            §#$<§.§1!W§(_loc17_,_loc15_.m_xf,_loc13_,_loc16_.m_xf,_loc14_);
            _loc26_ = §#$<§.§+$8§.x;
            _loc27_ = §#$<§.§+$8§.y;
            (_loc28_ = this.§2h§[_loc6_]).§;#X§ = _loc15_;
            _loc28_.§`7§ = _loc16_;
            _loc28_.§>#@§ = _loc17_;
            _loc28_.normal.x = _loc26_;
            _loc28_.normal.y = _loc27_;
            _loc28_.§^! § = _loc17_.§`!o§;
            _loc28_.friction = _loc18_;
            _loc28_.restitution = _loc19_;
            _loc28_.§1$<§.x = _loc17_.§&#t§.x;
            _loc28_.§1$<§.y = _loc17_.§&#t§.y;
            _loc28_.localPoint.x = _loc17_.m_localPoint.x;
            _loc28_.localPoint.y = _loc17_.m_localPoint.y;
            _loc28_.radius = _loc13_ + _loc14_;
            _loc28_.type = _loc17_.§5"F§;
            _loc29_ = 0;
            while(_loc29_ < _loc28_.§^! §)
            {
               _loc30_ = _loc17_.§"f§[_loc29_];
               (_loc31_ = _loc28_.§3#Q§[_loc29_]).normalImpulse = _loc30_.§!"k§;
               _loc31_.tangentImpulse = _loc30_.§#"B§;
               _loc31_.localPoint.SetV(_loc30_.m_localPoint);
               _loc32_ = _loc31_.§#!6§.x = §#$<§.§"f§[_loc29_].x - _loc15_.m_sweep.c.x;
               _loc33_ = _loc31_.§#!6§.y = §#$<§.§"f§[_loc29_].y - _loc15_.m_sweep.c.y;
               _loc34_ = _loc31_.§#"m§.x = §#$<§.§"f§[_loc29_].x - _loc16_.m_sweep.c.x;
               _loc35_ = _loc31_.§#"m§.y = §#$<§.§"f§[_loc29_].y - _loc16_.m_sweep.c.y;
               _loc36_ = _loc32_ * _loc27_ - _loc33_ * _loc26_;
               _loc37_ = _loc34_ * _loc27_ - _loc35_ * _loc26_;
               _loc36_ *= _loc36_;
               _loc37_ *= _loc37_;
               if((_loc38_ = _loc15_.§;#>§ + _loc16_.§;#>§ + _loc15_.§!#k§ * _loc36_ + _loc16_.§!#k§ * _loc37_) > 0)
               {
                  _loc31_.§6#T§ = 1 / _loc38_;
               }
               else
               {
                  _loc31_.§6#T§ = 0;
               }
               _loc39_ = (_loc39_ = _loc15_.§<#F§ * _loc15_.§;#>§ + _loc16_.§<#F§ * _loc16_.§;#>§) + (_loc15_.§<#F§ * _loc15_.§!#k§ * _loc36_ + _loc16_.§<#F§ * _loc16_.§!#k§ * _loc37_);
               _loc31_.§6!L§ = 1 / _loc39_;
               _loc40_ = _loc27_;
               _loc41_ = -_loc26_;
               _loc42_ = _loc32_ * _loc41_ - _loc33_ * _loc40_;
               _loc43_ = _loc34_ * _loc41_ - _loc35_ * _loc40_;
               _loc42_ *= _loc42_;
               _loc43_ *= _loc43_;
               if((_loc44_ = _loc15_.§;#>§ + _loc16_.§;#>§ + _loc15_.§!#k§ * _loc42_ + _loc16_.§!#k§ * _loc43_) > 0)
               {
                  _loc31_.§=q§ = 1 / _loc44_;
               }
               else
               {
                  _loc31_.§=q§ = 0;
               }
               _loc31_.§=#s§ = 0;
               _loc45_ = _loc22_ + -_loc25_ * _loc35_ - _loc20_ - -_loc24_ * _loc33_;
               _loc46_ = _loc23_ + _loc25_ * _loc34_ - _loc21_ - _loc24_ * _loc32_;
               if((_loc47_ = _loc28_.normal.x * _loc45_ + _loc28_.normal.y * _loc46_) < -b2Settings.b2_velocityThreshold)
               {
                  _loc31_.§=#s§ = -_loc28_.restitution * _loc47_;
               }
               _loc29_++;
            }
            if(_loc28_.§^! § == 2)
            {
               _loc48_ = _loc28_.§3#Q§[0];
               _loc49_ = _loc28_.§3#Q§[1];
               _loc50_ = _loc15_.§;#>§;
               _loc51_ = _loc15_.§!#k§;
               _loc52_ = _loc16_.§;#>§;
               _loc53_ = _loc16_.§!#k§;
               _loc54_ = _loc48_.§#!6§.x * _loc27_ - _loc48_.§#!6§.y * _loc26_;
               _loc55_ = _loc48_.§#"m§.x * _loc27_ - _loc48_.§#"m§.y * _loc26_;
               _loc56_ = _loc49_.§#!6§.x * _loc27_ - _loc49_.§#!6§.y * _loc26_;
               _loc57_ = _loc49_.§#"m§.x * _loc27_ - _loc49_.§#"m§.y * _loc26_;
               _loc58_ = _loc50_ + _loc52_ + _loc51_ * _loc54_ * _loc54_ + _loc53_ * _loc55_ * _loc55_;
               _loc59_ = _loc50_ + _loc52_ + _loc51_ * _loc56_ * _loc56_ + _loc53_ * _loc57_ * _loc57_;
               _loc60_ = _loc50_ + _loc52_ + _loc51_ * _loc54_ * _loc56_ + _loc53_ * _loc55_ * _loc57_;
               _loc61_ = 100;
               if(_loc58_ * _loc58_ < _loc61_ * (_loc58_ * _loc59_ - _loc60_ * _loc60_))
               {
                  _loc28_.§^_§.col1.Set(_loc58_,_loc60_);
                  _loc28_.§^_§.col2.Set(_loc60_,_loc59_);
                  _loc28_.§^_§.§4I§(_loc28_.§6#T§);
               }
               else
               {
                  _loc28_.§^! § = 1;
               }
            }
            _loc6_++;
         }
      }
      
      public function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc6_:b2ContactConstraint = null;
         var _loc7_:b2Body = null;
         var _loc8_:b2Body = null;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc18_:int = 0;
         var _loc19_:int = 0;
         var _loc20_:b2ContactConstraintPoint = null;
         var _loc21_:Number = NaN;
         var _loc22_:Number = NaN;
         var _loc23_:b2ContactConstraintPoint = null;
         var _loc5_:int = 0;
         while(_loc5_ < this.§3i§)
         {
            _loc7_ = (_loc6_ = this.§2h§[_loc5_]).§;#X§;
            _loc8_ = _loc6_.§`7§;
            _loc9_ = _loc7_.§;#>§;
            _loc10_ = _loc7_.§!#k§;
            _loc11_ = _loc8_.§;#>§;
            _loc12_ = _loc8_.§!#k§;
            _loc13_ = _loc6_.normal.x;
            _loc15_ = _loc14_ = _loc6_.normal.y;
            _loc16_ = -_loc13_;
            if(param1.§,#g§)
            {
               _loc19_ = _loc6_.§^! §;
               _loc18_ = 0;
               while(_loc18_ < _loc19_)
               {
                  _loc20_ = _loc6_.§3#Q§[_loc18_];
                  _loc20_.normalImpulse *= param1.§+!y§;
                  _loc20_.tangentImpulse *= param1.§+!y§;
                  _loc21_ = _loc20_.normalImpulse * _loc13_ + _loc20_.tangentImpulse * _loc15_;
                  _loc22_ = _loc20_.normalImpulse * _loc14_ + _loc20_.tangentImpulse * _loc16_;
                  _loc7_.m_angularVelocity -= _loc10_ * (_loc20_.§#!6§.x * _loc22_ - _loc20_.§#!6§.y * _loc21_);
                  _loc7_.§!#p§.x -= _loc9_ * _loc21_;
                  _loc7_.§!#p§.y -= _loc9_ * _loc22_;
                  _loc8_.m_angularVelocity += _loc12_ * (_loc20_.§#"m§.x * _loc22_ - _loc20_.§#"m§.y * _loc21_);
                  _loc8_.§!#p§.x += _loc11_ * _loc21_;
                  _loc8_.§!#p§.y += _loc11_ * _loc22_;
                  _loc18_++;
               }
            }
            else
            {
               _loc19_ = _loc6_.§^! §;
               _loc18_ = 0;
               while(_loc18_ < _loc19_)
               {
                  (_loc23_ = _loc6_.§3#Q§[_loc18_]).normalImpulse = 0;
                  _loc23_.tangentImpulse = 0;
                  _loc18_++;
               }
            }
            _loc5_++;
         }
      }
      
      public function SolveVelocityConstraints() : void
      {
         var _loc1_:int = 0;
         var _loc2_:b2ContactConstraintPoint = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         var _loc21_:Number = NaN;
         var _loc22_:b2Mat22 = null;
         var _loc25_:b2ContactConstraint = null;
         var _loc26_:b2Body = null;
         var _loc27_:b2Body = null;
         var _loc28_:Number = NaN;
         var _loc29_:Number = NaN;
         var _loc30_:b2Vec2 = null;
         var _loc31_:b2Vec2 = null;
         var _loc32_:Number = NaN;
         var _loc33_:Number = NaN;
         var _loc34_:Number = NaN;
         var _loc35_:Number = NaN;
         var _loc36_:Number = NaN;
         var _loc37_:Number = NaN;
         var _loc38_:Number = NaN;
         var _loc39_:Number = NaN;
         var _loc40_:Number = NaN;
         var _loc41_:Number = NaN;
         var _loc42_:int = 0;
         var _loc43_:b2ContactConstraintPoint = null;
         var _loc44_:b2ContactConstraintPoint = null;
         var _loc45_:Number = NaN;
         var _loc46_:Number = NaN;
         var _loc47_:Number = NaN;
         var _loc48_:Number = NaN;
         var _loc49_:Number = NaN;
         var _loc50_:Number = NaN;
         var _loc51_:Number = NaN;
         var _loc52_:Number = NaN;
         var _loc53_:Number = NaN;
         var _loc54_:Number = NaN;
         var _loc55_:Number = NaN;
         var _loc56_:Number = NaN;
         var _loc57_:Number = NaN;
         var _loc24_:int = 0;
         while(_loc24_ < this.§3i§)
         {
            _loc26_ = (_loc25_ = this.§2h§[_loc24_]).§;#X§;
            _loc27_ = _loc25_.§`7§;
            _loc28_ = _loc26_.m_angularVelocity;
            _loc29_ = _loc27_.m_angularVelocity;
            _loc30_ = _loc26_.§!#p§;
            _loc31_ = _loc27_.§!#p§;
            _loc32_ = _loc26_.§;#>§;
            _loc33_ = _loc26_.§!#k§;
            _loc34_ = _loc27_.§;#>§;
            _loc35_ = _loc27_.§!#k§;
            _loc36_ = _loc25_.normal.x;
            _loc38_ = _loc37_ = _loc25_.normal.y;
            _loc39_ = -_loc36_;
            _loc40_ = _loc25_.friction;
            _loc1_ = 0;
            while(_loc1_ < _loc25_.§^! §)
            {
               _loc2_ = _loc25_.§3#Q§[_loc1_];
               _loc7_ = _loc31_.x - _loc29_ * _loc2_.§#"m§.y - _loc30_.x + _loc28_ * _loc2_.§#!6§.y;
               _loc8_ = _loc31_.y + _loc29_ * _loc2_.§#"m§.x - _loc30_.y - _loc28_ * _loc2_.§#!6§.x;
               _loc10_ = _loc7_ * _loc38_ + _loc8_ * _loc39_;
               _loc11_ = _loc2_.§=q§ * -_loc10_;
               _loc12_ = _loc40_ * _loc2_.normalImpulse;
               _loc14_ = (_loc11_ = (_loc13_ = b2Math.§<!f§(_loc2_.tangentImpulse + _loc11_,-_loc12_,_loc12_)) - _loc2_.tangentImpulse) * _loc38_;
               _loc15_ = _loc11_ * _loc39_;
               _loc30_.x -= _loc32_ * _loc14_;
               _loc30_.y -= _loc32_ * _loc15_;
               _loc28_ -= _loc33_ * (_loc2_.§#!6§.x * _loc15_ - _loc2_.§#!6§.y * _loc14_);
               _loc31_.x += _loc34_ * _loc14_;
               _loc31_.y += _loc34_ * _loc15_;
               _loc29_ += _loc35_ * (_loc2_.§#"m§.x * _loc15_ - _loc2_.§#"m§.y * _loc14_);
               _loc2_.tangentImpulse = _loc13_;
               _loc1_++;
            }
            _loc42_ = _loc25_.§^! §;
            if(_loc25_.§^! § == 1)
            {
               _loc2_ = _loc25_.§3#Q§[0];
               _loc7_ = _loc31_.x + -_loc29_ * _loc2_.§#"m§.y - _loc30_.x - -_loc28_ * _loc2_.§#!6§.y;
               _loc8_ = _loc31_.y + _loc29_ * _loc2_.§#"m§.x - _loc30_.y - _loc28_ * _loc2_.§#!6§.x;
               _loc9_ = _loc7_ * _loc36_ + _loc8_ * _loc37_;
               _loc11_ = -_loc2_.§6#T§ * (_loc9_ - _loc2_.§=#s§);
               _loc14_ = (_loc11_ = (_loc13_ = (_loc13_ = _loc2_.normalImpulse + _loc11_) > 0 ? Number(_loc13_) : Number(0)) - _loc2_.normalImpulse) * _loc36_;
               _loc15_ = _loc11_ * _loc37_;
               _loc30_.x -= _loc32_ * _loc14_;
               _loc30_.y -= _loc32_ * _loc15_;
               _loc28_ -= _loc33_ * (_loc2_.§#!6§.x * _loc15_ - _loc2_.§#!6§.y * _loc14_);
               _loc31_.x += _loc34_ * _loc14_;
               _loc31_.y += _loc34_ * _loc15_;
               _loc29_ += _loc35_ * (_loc2_.§#"m§.x * _loc15_ - _loc2_.§#"m§.y * _loc14_);
               _loc2_.normalImpulse = _loc13_;
            }
            else
            {
               _loc43_ = _loc25_.§3#Q§[0];
               _loc44_ = _loc25_.§3#Q§[1];
               _loc45_ = _loc43_.normalImpulse;
               _loc46_ = _loc44_.normalImpulse;
               _loc47_ = _loc31_.x - _loc29_ * _loc43_.§#"m§.y - _loc30_.x + _loc28_ * _loc43_.§#!6§.y;
               _loc48_ = _loc31_.y + _loc29_ * _loc43_.§#"m§.x - _loc30_.y - _loc28_ * _loc43_.§#!6§.x;
               _loc49_ = _loc31_.x - _loc29_ * _loc44_.§#"m§.y - _loc30_.x + _loc28_ * _loc44_.§#!6§.y;
               _loc50_ = _loc31_.y + _loc29_ * _loc44_.§#"m§.x - _loc30_.y - _loc28_ * _loc44_.§#!6§.x;
               _loc51_ = _loc47_ * _loc36_ + _loc48_ * _loc37_;
               _loc52_ = _loc49_ * _loc36_ + _loc50_ * _loc37_;
               _loc53_ = _loc51_ - _loc43_.§=#s§;
               _loc54_ = _loc52_ - _loc44_.§=#s§;
               _loc22_ = _loc25_.§^_§;
               _loc53_ -= _loc22_.col1.x * _loc45_ + _loc22_.col2.x * _loc46_;
               _loc54_ -= _loc22_.col1.y * _loc45_ + _loc22_.col2.y * _loc46_;
               _loc55_ = 0.001;
               _loc56_ = -((_loc22_ = _loc25_.§6#T§).col1.x * _loc53_ + _loc22_.col2.x * _loc54_);
               _loc57_ = -(_loc22_.col1.y * _loc53_ + _loc22_.col2.y * _loc54_);
               if(_loc56_ >= 0 && _loc57_ >= 0)
               {
                  _loc16_ = _loc56_ - _loc45_;
                  _loc17_ = _loc57_ - _loc46_;
                  _loc18_ = _loc16_ * _loc36_;
                  _loc19_ = _loc16_ * _loc37_;
                  _loc20_ = _loc17_ * _loc36_;
                  _loc21_ = _loc17_ * _loc37_;
                  _loc30_.x -= _loc32_ * (_loc18_ + _loc20_);
                  _loc30_.y -= _loc32_ * (_loc19_ + _loc21_);
                  _loc28_ -= _loc33_ * (_loc43_.§#!6§.x * _loc19_ - _loc43_.§#!6§.y * _loc18_ + _loc44_.§#!6§.x * _loc21_ - _loc44_.§#!6§.y * _loc20_);
                  _loc31_.x += _loc34_ * (_loc18_ + _loc20_);
                  _loc31_.y += _loc34_ * (_loc19_ + _loc21_);
                  _loc29_ += _loc35_ * (_loc43_.§#"m§.x * _loc19_ - _loc43_.§#"m§.y * _loc18_ + _loc44_.§#"m§.x * _loc21_ - _loc44_.§#"m§.y * _loc20_);
                  _loc43_.normalImpulse = _loc56_;
                  _loc44_.normalImpulse = _loc57_;
               }
               else
               {
                  _loc56_ = -_loc43_.§6#T§ * _loc53_;
                  _loc57_ = 0;
                  _loc51_ = 0;
                  _loc52_ = _loc25_.§^_§.col1.y * _loc56_ + _loc54_;
                  if(_loc56_ >= 0 && _loc52_ >= 0)
                  {
                     _loc16_ = _loc56_ - _loc45_;
                     _loc17_ = _loc57_ - _loc46_;
                     _loc18_ = _loc16_ * _loc36_;
                     _loc19_ = _loc16_ * _loc37_;
                     _loc20_ = _loc17_ * _loc36_;
                     _loc21_ = _loc17_ * _loc37_;
                     _loc30_.x -= _loc32_ * (_loc18_ + _loc20_);
                     _loc30_.y -= _loc32_ * (_loc19_ + _loc21_);
                     _loc28_ -= _loc33_ * (_loc43_.§#!6§.x * _loc19_ - _loc43_.§#!6§.y * _loc18_ + _loc44_.§#!6§.x * _loc21_ - _loc44_.§#!6§.y * _loc20_);
                     _loc31_.x += _loc34_ * (_loc18_ + _loc20_);
                     _loc31_.y += _loc34_ * (_loc19_ + _loc21_);
                     _loc29_ += _loc35_ * (_loc43_.§#"m§.x * _loc19_ - _loc43_.§#"m§.y * _loc18_ + _loc44_.§#"m§.x * _loc21_ - _loc44_.§#"m§.y * _loc20_);
                     _loc43_.normalImpulse = _loc56_;
                     _loc44_.normalImpulse = _loc57_;
                  }
                  else
                  {
                     _loc56_ = 0;
                     _loc57_ = -_loc44_.§6#T§ * _loc54_;
                     _loc51_ = _loc25_.§^_§.col2.x * _loc57_ + _loc53_;
                     _loc52_ = 0;
                     if(_loc57_ >= 0 && _loc51_ >= 0)
                     {
                        _loc16_ = _loc56_ - _loc45_;
                        _loc17_ = _loc57_ - _loc46_;
                        _loc18_ = _loc16_ * _loc36_;
                        _loc19_ = _loc16_ * _loc37_;
                        _loc20_ = _loc17_ * _loc36_;
                        _loc21_ = _loc17_ * _loc37_;
                        _loc30_.x -= _loc32_ * (_loc18_ + _loc20_);
                        _loc30_.y -= _loc32_ * (_loc19_ + _loc21_);
                        _loc28_ -= _loc33_ * (_loc43_.§#!6§.x * _loc19_ - _loc43_.§#!6§.y * _loc18_ + _loc44_.§#!6§.x * _loc21_ - _loc44_.§#!6§.y * _loc20_);
                        _loc31_.x += _loc34_ * (_loc18_ + _loc20_);
                        _loc31_.y += _loc34_ * (_loc19_ + _loc21_);
                        _loc29_ += _loc35_ * (_loc43_.§#"m§.x * _loc19_ - _loc43_.§#"m§.y * _loc18_ + _loc44_.§#"m§.x * _loc21_ - _loc44_.§#"m§.y * _loc20_);
                        _loc43_.normalImpulse = _loc56_;
                        _loc44_.normalImpulse = _loc57_;
                     }
                     else
                     {
                        _loc56_ = 0;
                        _loc57_ = 0;
                        _loc51_ = _loc53_;
                        _loc52_ = _loc54_;
                        if(_loc51_ >= 0 && _loc52_ >= 0)
                        {
                           _loc16_ = _loc56_ - _loc45_;
                           _loc17_ = _loc57_ - _loc46_;
                           _loc18_ = _loc16_ * _loc36_;
                           _loc19_ = _loc16_ * _loc37_;
                           _loc20_ = _loc17_ * _loc36_;
                           _loc21_ = _loc17_ * _loc37_;
                           _loc30_.x -= _loc32_ * (_loc18_ + _loc20_);
                           _loc30_.y -= _loc32_ * (_loc19_ + _loc21_);
                           _loc28_ -= _loc33_ * (_loc43_.§#!6§.x * _loc19_ - _loc43_.§#!6§.y * _loc18_ + _loc44_.§#!6§.x * _loc21_ - _loc44_.§#!6§.y * _loc20_);
                           _loc31_.x += _loc34_ * (_loc18_ + _loc20_);
                           _loc31_.y += _loc34_ * (_loc19_ + _loc21_);
                           _loc29_ += _loc35_ * (_loc43_.§#"m§.x * _loc19_ - _loc43_.§#"m§.y * _loc18_ + _loc44_.§#"m§.x * _loc21_ - _loc44_.§#"m§.y * _loc20_);
                           _loc43_.normalImpulse = _loc56_;
                           _loc44_.normalImpulse = _loc57_;
                        }
                     }
                  }
               }
            }
            _loc26_.m_angularVelocity = _loc28_;
            _loc27_.m_angularVelocity = _loc29_;
            _loc24_++;
         }
      }
      
      public function §!a§() : void
      {
         var _loc2_:b2ContactConstraint = null;
         var _loc3_:b2Manifold = null;
         var _loc4_:int = 0;
         var _loc5_:b2ManifoldPoint = null;
         var _loc6_:b2ContactConstraintPoint = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§3i§)
         {
            _loc2_ = this.§2h§[_loc1_];
            _loc3_ = _loc2_.§>#@§;
            _loc4_ = 0;
            while(_loc4_ < _loc2_.§^! §)
            {
               _loc5_ = _loc3_.§"f§[_loc4_];
               _loc6_ = _loc2_.§3#Q§[_loc4_];
               _loc5_.§!"k§ = _loc6_.normalImpulse;
               _loc5_.§#"B§ = _loc6_.tangentImpulse;
               _loc4_++;
            }
            _loc1_++;
         }
      }
      
      public function SolvePositionConstraints(param1:Number) : Boolean
      {
         var _loc4_:b2ContactConstraint = null;
         var _loc5_:b2Body = null;
         var _loc6_:b2Body = null;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:b2Vec2 = null;
         var _loc12_:int = 0;
         var _loc13_:b2ContactConstraintPoint = null;
         var _loc14_:b2Vec2 = null;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         var _loc21_:Number = NaN;
         var _loc22_:Number = NaN;
         var _loc23_:Number = NaN;
         var _loc2_:Number = 0;
         var _loc3_:int = 0;
         while(_loc3_ < this.§3i§)
         {
            _loc5_ = (_loc4_ = this.§2h§[_loc3_]).§;#X§;
            _loc6_ = _loc4_.§`7§;
            _loc7_ = _loc5_.§<#F§ * _loc5_.§;#>§;
            _loc8_ = _loc5_.§<#F§ * _loc5_.§!#k§;
            _loc9_ = _loc6_.§<#F§ * _loc6_.§;#>§;
            _loc10_ = _loc6_.§<#F§ * _loc6_.§!#k§;
            §4!<§.§1!W§(_loc4_);
            _loc11_ = §4!<§.§+$8§;
            _loc12_ = 0;
            while(_loc12_ < _loc4_.§^! §)
            {
               _loc13_ = _loc4_.§3#Q§[_loc12_];
               _loc14_ = §4!<§.§"f§[_loc12_];
               _loc15_ = §4!<§.§8$4§[_loc12_];
               _loc16_ = _loc14_.x - _loc5_.m_sweep.c.x;
               _loc17_ = _loc14_.y - _loc5_.m_sweep.c.y;
               _loc18_ = _loc14_.x - _loc6_.m_sweep.c.x;
               _loc19_ = _loc14_.y - _loc6_.m_sweep.c.y;
               _loc2_ = _loc2_ < _loc15_ ? Number(_loc2_) : Number(_loc15_);
               _loc20_ = b2Math.§<!f§(param1 * (_loc15_ + b2Settings.b2_linearSlop),-b2Settings.b2_maxLinearCorrection,0);
               _loc22_ = (_loc21_ = -_loc13_.§6!L§ * _loc20_) * _loc11_.x;
               _loc23_ = _loc21_ * _loc11_.y;
               _loc5_.m_sweep.c.x -= _loc7_ * _loc22_;
               _loc5_.m_sweep.c.y -= _loc7_ * _loc23_;
               _loc5_.m_sweep.a -= _loc8_ * (_loc16_ * _loc23_ - _loc17_ * _loc22_);
               _loc5_.§[X§();
               _loc6_.m_sweep.c.x += _loc9_ * _loc22_;
               _loc6_.m_sweep.c.y += _loc9_ * _loc23_;
               _loc6_.m_sweep.a += _loc10_ * (_loc18_ * _loc23_ - _loc19_ * _loc22_);
               _loc6_.§[X§();
               _loc12_++;
            }
            _loc3_++;
         }
         return _loc2_ > -1.5 * b2Settings.b2_linearSlop;
      }
   }
}
