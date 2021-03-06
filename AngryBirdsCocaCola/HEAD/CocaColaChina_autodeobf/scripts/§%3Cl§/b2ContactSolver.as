package §<l§
{
   import §&!L§.*;
   import §-!<§.b2Shape;
   import §3f§.*;
   import §7!C§.*;
   import §=!!§.*;
   
   use namespace b2internal;
   
   public class b2ContactSolver
   {
      
      private static var §#!I§:b2WorldManifold = new b2WorldManifold();
      
      private static var §=!T§:b2PositionSolverManifold = new b2PositionSolverManifold();
       
      
      private var §3!5§:b2TimeStep;
      
      private var §?K§;
      
      b2internal var § +§:Vector.<b2ContactConstraint>;
      
      private var §"!K§:int;
      
      public function b2ContactSolver()
      {
         this.§3!5§ = new b2TimeStep();
         this.§ +§ = new Vector.<b2ContactConstraint>();
         super();
      }
      
      public function §1!5§(param1:b2TimeStep, param2:Vector.<b2Contact>, param3:int, param4:*) : void
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
         this.§3!5§.Set(param1);
         this.§?K§ = param4;
         this.§"!K§ = param3;
         while(this.§ +§.length < this.§"!K§)
         {
            this.§ +§[this.§ +§.length] = new b2ContactConstraint();
         }
         _loc6_ = 0;
         while(_loc6_ < param3)
         {
            _loc9_ = (_loc5_ = param2[_loc6_]).§^v§;
            _loc10_ = _loc5_.§>!D§;
            _loc11_ = _loc9_.§3>§;
            _loc12_ = _loc10_.§3>§;
            _loc13_ = _loc11_.§=W§;
            _loc14_ = _loc12_.§=W§;
            _loc15_ = _loc9_.m_body;
            _loc16_ = _loc10_.m_body;
            _loc17_ = _loc5_.§9m§();
            _loc18_ = b2Settings.b2MixFriction(_loc9_.§9!"§(),_loc10_.§9!"§());
            _loc19_ = b2Settings.b2MixRestitution(_loc9_.§9k§(),_loc10_.§9k§());
            _loc20_ = _loc15_.§9!Q§.x;
            _loc21_ = _loc15_.§9!Q§.y;
            _loc22_ = _loc16_.§9!Q§.x;
            _loc23_ = _loc16_.§9!Q§.y;
            _loc24_ = _loc15_.m_angularVelocity;
            _loc25_ = _loc16_.m_angularVelocity;
            b2Settings.b2Assert(_loc17_.§#!H§ > 0);
            §#!I§.§1!5§(_loc17_,_loc15_.m_xf,_loc13_,_loc16_.m_xf,_loc14_);
            _loc26_ = §#!I§.§`!2§.x;
            _loc27_ = §#!I§.§`!2§.y;
            (_loc28_ = this.§ +§[_loc6_]).§?!!§ = _loc15_;
            _loc28_.§`!6§ = _loc16_;
            _loc28_.§>!B§ = _loc17_;
            _loc28_.normal.x = _loc26_;
            _loc28_.normal.y = _loc27_;
            _loc28_.§!-§ = _loc17_.§#!H§;
            _loc28_.friction = _loc18_;
            _loc28_.restitution = _loc19_;
            _loc28_.§'@§.x = _loc17_.§!L§.x;
            _loc28_.§'@§.y = _loc17_.§!L§.y;
            _loc28_.localPoint.x = _loc17_.m_localPoint.x;
            _loc28_.localPoint.y = _loc17_.m_localPoint.y;
            _loc28_.radius = _loc13_ + _loc14_;
            _loc28_.type = _loc17_.§'!c§;
            _loc29_ = 0;
            while(_loc29_ < _loc28_.§!-§)
            {
               _loc30_ = _loc17_.§7i§[_loc29_];
               (_loc31_ = _loc28_.§@!M§[_loc29_]).normalImpulse = _loc30_.§&M§;
               _loc31_.tangentImpulse = _loc30_.§']§;
               _loc31_.localPoint.SetV(_loc30_.m_localPoint);
               _loc32_ = _loc31_.§,z§.x = §#!I§.§7i§[_loc29_].x - _loc15_.m_sweep.c.x;
               _loc33_ = _loc31_.§,z§.y = §#!I§.§7i§[_loc29_].y - _loc15_.m_sweep.c.y;
               _loc34_ = _loc31_.§`!0§.x = §#!I§.§7i§[_loc29_].x - _loc16_.m_sweep.c.x;
               _loc35_ = _loc31_.§`!0§.y = §#!I§.§7i§[_loc29_].y - _loc16_.m_sweep.c.y;
               _loc36_ = _loc32_ * _loc27_ - _loc33_ * _loc26_;
               _loc37_ = _loc34_ * _loc27_ - _loc35_ * _loc26_;
               _loc36_ *= _loc36_;
               _loc37_ *= _loc37_;
               _loc38_ = _loc15_.§3!`§ + _loc16_.§3!`§ + _loc15_.§=4§ * _loc36_ + _loc16_.§=4§ * _loc37_;
               _loc31_.§2!>§ = 1 / _loc38_;
               _loc39_ = (_loc39_ = _loc15_.§ !4§ * _loc15_.§3!`§ + _loc16_.§ !4§ * _loc16_.§3!`§) + (_loc15_.§ !4§ * _loc15_.§=4§ * _loc36_ + _loc16_.§ !4§ * _loc16_.§=4§ * _loc37_);
               _loc31_.§2i§ = 1 / _loc39_;
               _loc40_ = _loc27_;
               _loc41_ = -_loc26_;
               _loc42_ = _loc32_ * _loc41_ - _loc33_ * _loc40_;
               _loc43_ = _loc34_ * _loc41_ - _loc35_ * _loc40_;
               _loc42_ *= _loc42_;
               _loc43_ *= _loc43_;
               _loc44_ = _loc15_.§3!`§ + _loc16_.§3!`§ + _loc15_.§=4§ * _loc42_ + _loc16_.§=4§ * _loc43_;
               _loc31_.§<r§ = 1 / _loc44_;
               _loc31_.§1!0§ = 0;
               _loc45_ = _loc22_ + -_loc25_ * _loc35_ - _loc20_ - -_loc24_ * _loc33_;
               _loc46_ = _loc23_ + _loc25_ * _loc34_ - _loc21_ - _loc24_ * _loc32_;
               if((_loc47_ = _loc28_.normal.x * _loc45_ + _loc28_.normal.y * _loc46_) < -b2Settings.b2_velocityThreshold)
               {
                  _loc31_.§1!0§ += -_loc28_.restitution * _loc47_;
               }
               _loc29_++;
            }
            if(_loc28_.§!-§ == 2)
            {
               _loc48_ = _loc28_.§@!M§[0];
               _loc49_ = _loc28_.§@!M§[1];
               _loc50_ = _loc15_.§3!`§;
               _loc51_ = _loc15_.§=4§;
               _loc52_ = _loc16_.§3!`§;
               _loc53_ = _loc16_.§=4§;
               _loc54_ = _loc48_.§,z§.x * _loc27_ - _loc48_.§,z§.y * _loc26_;
               _loc55_ = _loc48_.§`!0§.x * _loc27_ - _loc48_.§`!0§.y * _loc26_;
               _loc56_ = _loc49_.§,z§.x * _loc27_ - _loc49_.§,z§.y * _loc26_;
               _loc57_ = _loc49_.§`!0§.x * _loc27_ - _loc49_.§`!0§.y * _loc26_;
               _loc58_ = _loc50_ + _loc52_ + _loc51_ * _loc54_ * _loc54_ + _loc53_ * _loc55_ * _loc55_;
               _loc59_ = _loc50_ + _loc52_ + _loc51_ * _loc56_ * _loc56_ + _loc53_ * _loc57_ * _loc57_;
               _loc60_ = _loc50_ + _loc52_ + _loc51_ * _loc54_ * _loc56_ + _loc53_ * _loc55_ * _loc57_;
               _loc61_ = 100;
               if(_loc58_ * _loc58_ < _loc61_ * (_loc58_ * _loc59_ - _loc60_ * _loc60_))
               {
                  _loc28_.§"!2§.col1.Set(_loc58_,_loc60_);
                  _loc28_.§"!2§.col2.Set(_loc60_,_loc59_);
                  _loc28_.§"!2§.§9#§(_loc28_.§2!>§);
               }
               else
               {
                  _loc28_.§!-§ = 1;
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
         while(_loc5_ < this.§"!K§)
         {
            _loc7_ = (_loc6_ = this.§ +§[_loc5_]).§?!!§;
            _loc8_ = _loc6_.§`!6§;
            _loc9_ = _loc7_.§3!`§;
            _loc10_ = _loc7_.§=4§;
            _loc11_ = _loc8_.§3!`§;
            _loc12_ = _loc8_.§=4§;
            _loc13_ = _loc6_.normal.x;
            _loc15_ = _loc14_ = _loc6_.normal.y;
            _loc16_ = -_loc13_;
            if(param1.§&!X§)
            {
               _loc19_ = _loc6_.§!-§;
               _loc18_ = 0;
               while(_loc18_ < _loc19_)
               {
                  _loc20_ = _loc6_.§@!M§[_loc18_];
                  _loc20_.normalImpulse *= param1.§@=§;
                  _loc20_.tangentImpulse *= param1.§@=§;
                  _loc21_ = _loc20_.normalImpulse * _loc13_ + _loc20_.tangentImpulse * _loc15_;
                  _loc22_ = _loc20_.normalImpulse * _loc14_ + _loc20_.tangentImpulse * _loc16_;
                  _loc7_.m_angularVelocity -= _loc10_ * (_loc20_.§,z§.x * _loc22_ - _loc20_.§,z§.y * _loc21_);
                  _loc7_.§9!Q§.x -= _loc9_ * _loc21_;
                  _loc7_.§9!Q§.y -= _loc9_ * _loc22_;
                  _loc8_.m_angularVelocity += _loc12_ * (_loc20_.§`!0§.x * _loc22_ - _loc20_.§`!0§.y * _loc21_);
                  _loc8_.§9!Q§.x += _loc11_ * _loc21_;
                  _loc8_.§9!Q§.y += _loc11_ * _loc22_;
                  _loc18_++;
               }
            }
            else
            {
               _loc19_ = _loc6_.§!-§;
               _loc18_ = 0;
               while(_loc18_ < _loc19_)
               {
                  (_loc23_ = _loc6_.§@!M§[_loc18_]).normalImpulse = 0;
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
         while(_loc24_ < this.§"!K§)
         {
            _loc26_ = (_loc25_ = this.§ +§[_loc24_]).§?!!§;
            _loc27_ = _loc25_.§`!6§;
            _loc28_ = _loc26_.m_angularVelocity;
            _loc29_ = _loc27_.m_angularVelocity;
            _loc30_ = _loc26_.§9!Q§;
            _loc31_ = _loc27_.§9!Q§;
            _loc32_ = _loc26_.§3!`§;
            _loc33_ = _loc26_.§=4§;
            _loc34_ = _loc27_.§3!`§;
            _loc35_ = _loc27_.§=4§;
            _loc36_ = _loc25_.normal.x;
            _loc38_ = _loc37_ = _loc25_.normal.y;
            _loc39_ = -_loc36_;
            _loc40_ = _loc25_.friction;
            _loc1_ = 0;
            while(_loc1_ < _loc25_.§!-§)
            {
               _loc2_ = _loc25_.§@!M§[_loc1_];
               _loc7_ = _loc31_.x - _loc29_ * _loc2_.§`!0§.y - _loc30_.x + _loc28_ * _loc2_.§,z§.y;
               _loc8_ = _loc31_.y + _loc29_ * _loc2_.§`!0§.x - _loc30_.y - _loc28_ * _loc2_.§,z§.x;
               _loc10_ = _loc7_ * _loc38_ + _loc8_ * _loc39_;
               _loc11_ = _loc2_.§<r§ * -_loc10_;
               _loc12_ = _loc40_ * _loc2_.normalImpulse;
               _loc14_ = (_loc11_ = (_loc13_ = b2Math.§2m§(_loc2_.tangentImpulse + _loc11_,-_loc12_,_loc12_)) - _loc2_.tangentImpulse) * _loc38_;
               _loc15_ = _loc11_ * _loc39_;
               _loc30_.x -= _loc32_ * _loc14_;
               _loc30_.y -= _loc32_ * _loc15_;
               _loc28_ -= _loc33_ * (_loc2_.§,z§.x * _loc15_ - _loc2_.§,z§.y * _loc14_);
               _loc31_.x += _loc34_ * _loc14_;
               _loc31_.y += _loc34_ * _loc15_;
               _loc29_ += _loc35_ * (_loc2_.§`!0§.x * _loc15_ - _loc2_.§`!0§.y * _loc14_);
               _loc2_.tangentImpulse = _loc13_;
               _loc1_++;
            }
            _loc42_ = _loc25_.§!-§;
            if(_loc25_.§!-§ == 1)
            {
               _loc2_ = _loc25_.§@!M§[0];
               _loc7_ = _loc31_.x + -_loc29_ * _loc2_.§`!0§.y - _loc30_.x - -_loc28_ * _loc2_.§,z§.y;
               _loc8_ = _loc31_.y + _loc29_ * _loc2_.§`!0§.x - _loc30_.y - _loc28_ * _loc2_.§,z§.x;
               _loc9_ = _loc7_ * _loc36_ + _loc8_ * _loc37_;
               _loc11_ = -_loc2_.§2!>§ * (_loc9_ - _loc2_.§1!0§);
               _loc14_ = (_loc11_ = (_loc13_ = (_loc13_ = _loc2_.normalImpulse + _loc11_) > 0 ? Number(_loc13_) : Number(0)) - _loc2_.normalImpulse) * _loc36_;
               _loc15_ = _loc11_ * _loc37_;
               _loc30_.x -= _loc32_ * _loc14_;
               _loc30_.y -= _loc32_ * _loc15_;
               _loc28_ -= _loc33_ * (_loc2_.§,z§.x * _loc15_ - _loc2_.§,z§.y * _loc14_);
               _loc31_.x += _loc34_ * _loc14_;
               _loc31_.y += _loc34_ * _loc15_;
               _loc29_ += _loc35_ * (_loc2_.§`!0§.x * _loc15_ - _loc2_.§`!0§.y * _loc14_);
               _loc2_.normalImpulse = _loc13_;
            }
            else
            {
               _loc43_ = _loc25_.§@!M§[0];
               _loc44_ = _loc25_.§@!M§[1];
               _loc45_ = _loc43_.normalImpulse;
               _loc46_ = _loc44_.normalImpulse;
               _loc47_ = _loc31_.x - _loc29_ * _loc43_.§`!0§.y - _loc30_.x + _loc28_ * _loc43_.§,z§.y;
               _loc48_ = _loc31_.y + _loc29_ * _loc43_.§`!0§.x - _loc30_.y - _loc28_ * _loc43_.§,z§.x;
               _loc49_ = _loc31_.x - _loc29_ * _loc44_.§`!0§.y - _loc30_.x + _loc28_ * _loc44_.§,z§.y;
               _loc50_ = _loc31_.y + _loc29_ * _loc44_.§`!0§.x - _loc30_.y - _loc28_ * _loc44_.§,z§.x;
               _loc51_ = _loc47_ * _loc36_ + _loc48_ * _loc37_;
               _loc52_ = _loc49_ * _loc36_ + _loc50_ * _loc37_;
               _loc53_ = _loc51_ - _loc43_.§1!0§;
               _loc54_ = _loc52_ - _loc44_.§1!0§;
               _loc22_ = _loc25_.§"!2§;
               _loc53_ -= _loc22_.col1.x * _loc45_ + _loc22_.col2.x * _loc46_;
               _loc54_ -= _loc22_.col1.y * _loc45_ + _loc22_.col2.y * _loc46_;
               _loc55_ = 0.001;
               _loc56_ = -((_loc22_ = _loc25_.§2!>§).col1.x * _loc53_ + _loc22_.col2.x * _loc54_);
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
                  _loc28_ -= _loc33_ * (_loc43_.§,z§.x * _loc19_ - _loc43_.§,z§.y * _loc18_ + _loc44_.§,z§.x * _loc21_ - _loc44_.§,z§.y * _loc20_);
                  _loc31_.x += _loc34_ * (_loc18_ + _loc20_);
                  _loc31_.y += _loc34_ * (_loc19_ + _loc21_);
                  _loc29_ += _loc35_ * (_loc43_.§`!0§.x * _loc19_ - _loc43_.§`!0§.y * _loc18_ + _loc44_.§`!0§.x * _loc21_ - _loc44_.§`!0§.y * _loc20_);
                  _loc43_.normalImpulse = _loc56_;
                  _loc44_.normalImpulse = _loc57_;
               }
               else
               {
                  _loc56_ = -_loc43_.§2!>§ * _loc53_;
                  _loc57_ = 0;
                  _loc51_ = 0;
                  _loc52_ = _loc25_.§"!2§.col1.y * _loc56_ + _loc54_;
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
                     _loc28_ -= _loc33_ * (_loc43_.§,z§.x * _loc19_ - _loc43_.§,z§.y * _loc18_ + _loc44_.§,z§.x * _loc21_ - _loc44_.§,z§.y * _loc20_);
                     _loc31_.x += _loc34_ * (_loc18_ + _loc20_);
                     _loc31_.y += _loc34_ * (_loc19_ + _loc21_);
                     _loc29_ += _loc35_ * (_loc43_.§`!0§.x * _loc19_ - _loc43_.§`!0§.y * _loc18_ + _loc44_.§`!0§.x * _loc21_ - _loc44_.§`!0§.y * _loc20_);
                     _loc43_.normalImpulse = _loc56_;
                     _loc44_.normalImpulse = _loc57_;
                  }
                  else
                  {
                     _loc56_ = 0;
                     _loc57_ = -_loc44_.§2!>§ * _loc54_;
                     _loc51_ = _loc25_.§"!2§.col2.x * _loc57_ + _loc53_;
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
                        _loc28_ -= _loc33_ * (_loc43_.§,z§.x * _loc19_ - _loc43_.§,z§.y * _loc18_ + _loc44_.§,z§.x * _loc21_ - _loc44_.§,z§.y * _loc20_);
                        _loc31_.x += _loc34_ * (_loc18_ + _loc20_);
                        _loc31_.y += _loc34_ * (_loc19_ + _loc21_);
                        _loc29_ += _loc35_ * (_loc43_.§`!0§.x * _loc19_ - _loc43_.§`!0§.y * _loc18_ + _loc44_.§`!0§.x * _loc21_ - _loc44_.§`!0§.y * _loc20_);
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
                           _loc28_ -= _loc33_ * (_loc43_.§,z§.x * _loc19_ - _loc43_.§,z§.y * _loc18_ + _loc44_.§,z§.x * _loc21_ - _loc44_.§,z§.y * _loc20_);
                           _loc31_.x += _loc34_ * (_loc18_ + _loc20_);
                           _loc31_.y += _loc34_ * (_loc19_ + _loc21_);
                           _loc29_ += _loc35_ * (_loc43_.§`!0§.x * _loc19_ - _loc43_.§`!0§.y * _loc18_ + _loc44_.§`!0§.x * _loc21_ - _loc44_.§`!0§.y * _loc20_);
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
      
      public function §?!-§() : void
      {
         var _loc2_:b2ContactConstraint = null;
         var _loc3_:b2Manifold = null;
         var _loc4_:int = 0;
         var _loc5_:b2ManifoldPoint = null;
         var _loc6_:b2ContactConstraintPoint = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§"!K§)
         {
            _loc2_ = this.§ +§[_loc1_];
            _loc3_ = _loc2_.§>!B§;
            _loc4_ = 0;
            while(_loc4_ < _loc2_.§!-§)
            {
               _loc5_ = _loc3_.§7i§[_loc4_];
               _loc6_ = _loc2_.§@!M§[_loc4_];
               _loc5_.§&M§ = _loc6_.normalImpulse;
               _loc5_.§']§ = _loc6_.tangentImpulse;
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
         while(_loc3_ < this.§"!K§)
         {
            _loc5_ = (_loc4_ = this.§ +§[_loc3_]).§?!!§;
            _loc6_ = _loc4_.§`!6§;
            _loc7_ = _loc5_.§ !4§ * _loc5_.§3!`§;
            _loc8_ = _loc5_.§ !4§ * _loc5_.§=4§;
            _loc9_ = _loc6_.§ !4§ * _loc6_.§3!`§;
            _loc10_ = _loc6_.§ !4§ * _loc6_.§=4§;
            §=!T§.§1!5§(_loc4_);
            _loc11_ = §=!T§.§`!2§;
            _loc12_ = 0;
            while(_loc12_ < _loc4_.§!-§)
            {
               _loc13_ = _loc4_.§@!M§[_loc12_];
               _loc14_ = §=!T§.§7i§[_loc12_];
               _loc15_ = §=!T§.§"6§[_loc12_];
               _loc16_ = _loc14_.x - _loc5_.m_sweep.c.x;
               _loc17_ = _loc14_.y - _loc5_.m_sweep.c.y;
               _loc18_ = _loc14_.x - _loc6_.m_sweep.c.x;
               _loc19_ = _loc14_.y - _loc6_.m_sweep.c.y;
               _loc2_ = _loc2_ < _loc15_ ? Number(_loc2_) : Number(_loc15_);
               _loc20_ = b2Math.§2m§(param1 * (_loc15_ + b2Settings.b2_linearSlop),-b2Settings.b2_maxLinearCorrection,0);
               _loc22_ = (_loc21_ = -_loc13_.§2i§ * _loc20_) * _loc11_.x;
               _loc23_ = _loc21_ * _loc11_.y;
               _loc5_.m_sweep.c.x -= _loc7_ * _loc22_;
               _loc5_.m_sweep.c.y -= _loc7_ * _loc23_;
               _loc5_.m_sweep.a -= _loc8_ * (_loc16_ * _loc23_ - _loc17_ * _loc22_);
               _loc5_.§4B§();
               _loc6_.m_sweep.c.x += _loc9_ * _loc22_;
               _loc6_.m_sweep.c.y += _loc9_ * _loc23_;
               _loc6_.m_sweep.a += _loc10_ * (_loc18_ * _loc23_ - _loc19_ * _loc22_);
               _loc6_.§4B§();
               _loc12_++;
            }
            _loc3_++;
         }
         return _loc2_ > -1.5 * b2Settings.b2_linearSlop;
      }
   }
}
