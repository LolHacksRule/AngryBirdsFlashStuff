package §8Y§
{
   import §&U§.b2Shape;
   import §0!G§.*;
   import §2!F§.*;
   import §9"§.*;
   import §`j§.*;
   
   use namespace b2internal;
   
   public class b2ContactSolver
   {
      
      private static var §9^§:b2WorldManifold = new b2WorldManifold();
      
      private static var §4w§:b2PositionSolverManifold = new b2PositionSolverManifold();
       
      
      private var §>X§:b2TimeStep;
      
      private var §,]§;
      
      b2internal var §<w§:Vector.<b2ContactConstraint>;
      
      private var §3!O§:int;
      
      public function b2ContactSolver()
      {
         this.§>X§ = new b2TimeStep();
         this.§<w§ = new Vector.<b2ContactConstraint>();
         super();
      }
      
      public function §>b§(param1:b2TimeStep, param2:Vector.<b2Contact>, param3:int, param4:*) : void
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
         this.§>X§.Set(param1);
         this.§,]§ = param4;
         this.§3!O§ = param3;
         while(this.§<w§.length < this.§3!O§)
         {
            this.§<w§[this.§<w§.length] = new b2ContactConstraint();
         }
         _loc6_ = 0;
         while(_loc6_ < param3)
         {
            _loc9_ = (_loc5_ = param2[_loc6_]).§1!,§;
            _loc10_ = _loc5_.§7+§;
            _loc11_ = _loc9_.§&l§;
            _loc12_ = _loc10_.§&l§;
            _loc13_ = _loc11_.§@s§;
            _loc14_ = _loc12_.§@s§;
            _loc15_ = _loc9_.m_body;
            _loc16_ = _loc10_.m_body;
            _loc17_ = _loc5_.§ !X§();
            _loc18_ = b2Settings.b2MixFriction(_loc9_.§^]§(),_loc10_.§^]§());
            _loc19_ = b2Settings.b2MixRestitution(_loc9_.§]9§(),_loc10_.§]9§());
            _loc20_ = _loc15_.§,?§.x;
            _loc21_ = _loc15_.§,?§.y;
            _loc22_ = _loc16_.§,?§.x;
            _loc23_ = _loc16_.§,?§.y;
            _loc24_ = _loc15_.m_angularVelocity;
            _loc25_ = _loc16_.m_angularVelocity;
            b2Settings.b2Assert(_loc17_.§!$§ > 0);
            §9^§.§>b§(_loc17_,_loc15_.m_xf,_loc13_,_loc16_.m_xf,_loc14_);
            _loc26_ = §9^§.§^3§.x;
            _loc27_ = §9^§.§^3§.y;
            (_loc28_ = this.§<w§[_loc6_]).§8!5§ = _loc15_;
            _loc28_.§0n§ = _loc16_;
            _loc28_.§%c§ = _loc17_;
            _loc28_.normal.x = _loc26_;
            _loc28_.normal.y = _loc27_;
            _loc28_.§`5§ = _loc17_.§!$§;
            _loc28_.friction = _loc18_;
            _loc28_.restitution = _loc19_;
            _loc28_.§"S§.x = _loc17_.§9]§.x;
            _loc28_.§"S§.y = _loc17_.§9]§.y;
            _loc28_.localPoint.x = _loc17_.m_localPoint.x;
            _loc28_.localPoint.y = _loc17_.m_localPoint.y;
            _loc28_.radius = _loc13_ + _loc14_;
            _loc28_.type = _loc17_.§8!J§;
            _loc29_ = 0;
            while(_loc29_ < _loc28_.§`5§)
            {
               _loc30_ = _loc17_.§<s§[_loc29_];
               (_loc31_ = _loc28_.§5n§[_loc29_]).normalImpulse = _loc30_.§46§;
               _loc31_.tangentImpulse = _loc30_.§`!H§;
               _loc31_.localPoint.SetV(_loc30_.m_localPoint);
               _loc32_ = _loc31_.§->§.x = §9^§.§<s§[_loc29_].x - _loc15_.m_sweep.c.x;
               _loc33_ = _loc31_.§->§.y = §9^§.§<s§[_loc29_].y - _loc15_.m_sweep.c.y;
               _loc34_ = _loc31_.§2!_§.x = §9^§.§<s§[_loc29_].x - _loc16_.m_sweep.c.x;
               _loc35_ = _loc31_.§2!_§.y = §9^§.§<s§[_loc29_].y - _loc16_.m_sweep.c.y;
               _loc36_ = _loc32_ * _loc27_ - _loc33_ * _loc26_;
               _loc37_ = _loc34_ * _loc27_ - _loc35_ * _loc26_;
               _loc36_ *= _loc36_;
               _loc37_ *= _loc37_;
               _loc38_ = _loc15_.§#!D§ + _loc16_.§#!D§ + _loc15_.§?8§ * _loc36_ + _loc16_.§?8§ * _loc37_;
               _loc31_.§@!T§ = 1 / _loc38_;
               _loc39_ = (_loc39_ = _loc15_.§3!7§ * _loc15_.§#!D§ + _loc16_.§3!7§ * _loc16_.§#!D§) + (_loc15_.§3!7§ * _loc15_.§?8§ * _loc36_ + _loc16_.§3!7§ * _loc16_.§?8§ * _loc37_);
               _loc31_.§^!6§ = 1 / _loc39_;
               _loc40_ = _loc27_;
               _loc41_ = -_loc26_;
               _loc42_ = _loc32_ * _loc41_ - _loc33_ * _loc40_;
               _loc43_ = _loc34_ * _loc41_ - _loc35_ * _loc40_;
               _loc42_ *= _loc42_;
               _loc43_ *= _loc43_;
               _loc44_ = _loc15_.§#!D§ + _loc16_.§#!D§ + _loc15_.§?8§ * _loc42_ + _loc16_.§?8§ * _loc43_;
               _loc31_.§4!B§ = 1 / _loc44_;
               _loc31_.§?K§ = 0;
               _loc45_ = _loc22_ + -_loc25_ * _loc35_ - _loc20_ - -_loc24_ * _loc33_;
               _loc46_ = _loc23_ + _loc25_ * _loc34_ - _loc21_ - _loc24_ * _loc32_;
               if((_loc47_ = _loc28_.normal.x * _loc45_ + _loc28_.normal.y * _loc46_) < -b2Settings.b2_velocityThreshold)
               {
                  _loc31_.§?K§ += -_loc28_.restitution * _loc47_;
               }
               _loc29_++;
            }
            if(_loc28_.§`5§ == 2)
            {
               _loc48_ = _loc28_.§5n§[0];
               _loc49_ = _loc28_.§5n§[1];
               _loc50_ = _loc15_.§#!D§;
               _loc51_ = _loc15_.§?8§;
               _loc52_ = _loc16_.§#!D§;
               _loc53_ = _loc16_.§?8§;
               _loc54_ = _loc48_.§->§.x * _loc27_ - _loc48_.§->§.y * _loc26_;
               _loc55_ = _loc48_.§2!_§.x * _loc27_ - _loc48_.§2!_§.y * _loc26_;
               _loc56_ = _loc49_.§->§.x * _loc27_ - _loc49_.§->§.y * _loc26_;
               _loc57_ = _loc49_.§2!_§.x * _loc27_ - _loc49_.§2!_§.y * _loc26_;
               _loc58_ = _loc50_ + _loc52_ + _loc51_ * _loc54_ * _loc54_ + _loc53_ * _loc55_ * _loc55_;
               _loc59_ = _loc50_ + _loc52_ + _loc51_ * _loc56_ * _loc56_ + _loc53_ * _loc57_ * _loc57_;
               _loc60_ = _loc50_ + _loc52_ + _loc51_ * _loc54_ * _loc56_ + _loc53_ * _loc55_ * _loc57_;
               _loc61_ = 100;
               if(_loc58_ * _loc58_ < _loc61_ * (_loc58_ * _loc59_ - _loc60_ * _loc60_))
               {
                  _loc28_.§2#§.col1.Set(_loc58_,_loc60_);
                  _loc28_.§2#§.col2.Set(_loc60_,_loc59_);
                  _loc28_.§2#§.§&R§(_loc28_.§@!T§);
               }
               else
               {
                  _loc28_.§`5§ = 1;
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
         while(_loc5_ < this.§3!O§)
         {
            _loc7_ = (_loc6_ = this.§<w§[_loc5_]).§8!5§;
            _loc8_ = _loc6_.§0n§;
            _loc9_ = _loc7_.§#!D§;
            _loc10_ = _loc7_.§?8§;
            _loc11_ = _loc8_.§#!D§;
            _loc12_ = _loc8_.§?8§;
            _loc13_ = _loc6_.normal.x;
            _loc15_ = _loc14_ = _loc6_.normal.y;
            _loc16_ = -_loc13_;
            if(param1.§5!N§)
            {
               _loc19_ = _loc6_.§`5§;
               _loc18_ = 0;
               while(_loc18_ < _loc19_)
               {
                  _loc20_ = _loc6_.§5n§[_loc18_];
                  _loc20_.normalImpulse *= param1.§7!M§;
                  _loc20_.tangentImpulse *= param1.§7!M§;
                  _loc21_ = _loc20_.normalImpulse * _loc13_ + _loc20_.tangentImpulse * _loc15_;
                  _loc22_ = _loc20_.normalImpulse * _loc14_ + _loc20_.tangentImpulse * _loc16_;
                  _loc7_.m_angularVelocity -= _loc10_ * (_loc20_.§->§.x * _loc22_ - _loc20_.§->§.y * _loc21_);
                  _loc7_.§,?§.x -= _loc9_ * _loc21_;
                  _loc7_.§,?§.y -= _loc9_ * _loc22_;
                  _loc8_.m_angularVelocity += _loc12_ * (_loc20_.§2!_§.x * _loc22_ - _loc20_.§2!_§.y * _loc21_);
                  _loc8_.§,?§.x += _loc11_ * _loc21_;
                  _loc8_.§,?§.y += _loc11_ * _loc22_;
                  _loc18_++;
               }
            }
            else
            {
               _loc19_ = _loc6_.§`5§;
               _loc18_ = 0;
               while(_loc18_ < _loc19_)
               {
                  (_loc23_ = _loc6_.§5n§[_loc18_]).normalImpulse = 0;
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
         while(_loc24_ < this.§3!O§)
         {
            _loc26_ = (_loc25_ = this.§<w§[_loc24_]).§8!5§;
            _loc27_ = _loc25_.§0n§;
            _loc28_ = _loc26_.m_angularVelocity;
            _loc29_ = _loc27_.m_angularVelocity;
            _loc30_ = _loc26_.§,?§;
            _loc31_ = _loc27_.§,?§;
            _loc32_ = _loc26_.§#!D§;
            _loc33_ = _loc26_.§?8§;
            _loc34_ = _loc27_.§#!D§;
            _loc35_ = _loc27_.§?8§;
            _loc36_ = _loc25_.normal.x;
            _loc38_ = _loc37_ = _loc25_.normal.y;
            _loc39_ = -_loc36_;
            _loc40_ = _loc25_.friction;
            _loc1_ = 0;
            while(_loc1_ < _loc25_.§`5§)
            {
               _loc2_ = _loc25_.§5n§[_loc1_];
               _loc7_ = _loc31_.x - _loc29_ * _loc2_.§2!_§.y - _loc30_.x + _loc28_ * _loc2_.§->§.y;
               _loc8_ = _loc31_.y + _loc29_ * _loc2_.§2!_§.x - _loc30_.y - _loc28_ * _loc2_.§->§.x;
               _loc10_ = _loc7_ * _loc38_ + _loc8_ * _loc39_;
               _loc11_ = _loc2_.§4!B§ * -_loc10_;
               _loc12_ = _loc40_ * _loc2_.normalImpulse;
               _loc14_ = (_loc11_ = (_loc13_ = b2Math.§-!1§(_loc2_.tangentImpulse + _loc11_,-_loc12_,_loc12_)) - _loc2_.tangentImpulse) * _loc38_;
               _loc15_ = _loc11_ * _loc39_;
               _loc30_.x -= _loc32_ * _loc14_;
               _loc30_.y -= _loc32_ * _loc15_;
               _loc28_ -= _loc33_ * (_loc2_.§->§.x * _loc15_ - _loc2_.§->§.y * _loc14_);
               _loc31_.x += _loc34_ * _loc14_;
               _loc31_.y += _loc34_ * _loc15_;
               _loc29_ += _loc35_ * (_loc2_.§2!_§.x * _loc15_ - _loc2_.§2!_§.y * _loc14_);
               _loc2_.tangentImpulse = _loc13_;
               _loc1_++;
            }
            _loc42_ = _loc25_.§`5§;
            if(_loc25_.§`5§ == 1)
            {
               _loc2_ = _loc25_.§5n§[0];
               _loc7_ = _loc31_.x + -_loc29_ * _loc2_.§2!_§.y - _loc30_.x - -_loc28_ * _loc2_.§->§.y;
               _loc8_ = _loc31_.y + _loc29_ * _loc2_.§2!_§.x - _loc30_.y - _loc28_ * _loc2_.§->§.x;
               _loc9_ = _loc7_ * _loc36_ + _loc8_ * _loc37_;
               _loc11_ = -_loc2_.§@!T§ * (_loc9_ - _loc2_.§?K§);
               _loc14_ = (_loc11_ = (_loc13_ = (_loc13_ = _loc2_.normalImpulse + _loc11_) > 0 ? Number(_loc13_) : Number(0)) - _loc2_.normalImpulse) * _loc36_;
               _loc15_ = _loc11_ * _loc37_;
               _loc30_.x -= _loc32_ * _loc14_;
               _loc30_.y -= _loc32_ * _loc15_;
               _loc28_ -= _loc33_ * (_loc2_.§->§.x * _loc15_ - _loc2_.§->§.y * _loc14_);
               _loc31_.x += _loc34_ * _loc14_;
               _loc31_.y += _loc34_ * _loc15_;
               _loc29_ += _loc35_ * (_loc2_.§2!_§.x * _loc15_ - _loc2_.§2!_§.y * _loc14_);
               _loc2_.normalImpulse = _loc13_;
            }
            else
            {
               _loc43_ = _loc25_.§5n§[0];
               _loc44_ = _loc25_.§5n§[1];
               _loc45_ = _loc43_.normalImpulse;
               _loc46_ = _loc44_.normalImpulse;
               _loc47_ = _loc31_.x - _loc29_ * _loc43_.§2!_§.y - _loc30_.x + _loc28_ * _loc43_.§->§.y;
               _loc48_ = _loc31_.y + _loc29_ * _loc43_.§2!_§.x - _loc30_.y - _loc28_ * _loc43_.§->§.x;
               _loc49_ = _loc31_.x - _loc29_ * _loc44_.§2!_§.y - _loc30_.x + _loc28_ * _loc44_.§->§.y;
               _loc50_ = _loc31_.y + _loc29_ * _loc44_.§2!_§.x - _loc30_.y - _loc28_ * _loc44_.§->§.x;
               _loc51_ = _loc47_ * _loc36_ + _loc48_ * _loc37_;
               _loc52_ = _loc49_ * _loc36_ + _loc50_ * _loc37_;
               _loc53_ = _loc51_ - _loc43_.§?K§;
               _loc54_ = _loc52_ - _loc44_.§?K§;
               _loc22_ = _loc25_.§2#§;
               _loc53_ -= _loc22_.col1.x * _loc45_ + _loc22_.col2.x * _loc46_;
               _loc54_ -= _loc22_.col1.y * _loc45_ + _loc22_.col2.y * _loc46_;
               _loc55_ = 0.001;
               _loc56_ = -((_loc22_ = _loc25_.§@!T§).col1.x * _loc53_ + _loc22_.col2.x * _loc54_);
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
                  _loc28_ -= _loc33_ * (_loc43_.§->§.x * _loc19_ - _loc43_.§->§.y * _loc18_ + _loc44_.§->§.x * _loc21_ - _loc44_.§->§.y * _loc20_);
                  _loc31_.x += _loc34_ * (_loc18_ + _loc20_);
                  _loc31_.y += _loc34_ * (_loc19_ + _loc21_);
                  _loc29_ += _loc35_ * (_loc43_.§2!_§.x * _loc19_ - _loc43_.§2!_§.y * _loc18_ + _loc44_.§2!_§.x * _loc21_ - _loc44_.§2!_§.y * _loc20_);
                  _loc43_.normalImpulse = _loc56_;
                  _loc44_.normalImpulse = _loc57_;
               }
               else
               {
                  _loc56_ = -_loc43_.§@!T§ * _loc53_;
                  _loc57_ = 0;
                  _loc51_ = 0;
                  _loc52_ = _loc25_.§2#§.col1.y * _loc56_ + _loc54_;
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
                     _loc28_ -= _loc33_ * (_loc43_.§->§.x * _loc19_ - _loc43_.§->§.y * _loc18_ + _loc44_.§->§.x * _loc21_ - _loc44_.§->§.y * _loc20_);
                     _loc31_.x += _loc34_ * (_loc18_ + _loc20_);
                     _loc31_.y += _loc34_ * (_loc19_ + _loc21_);
                     _loc29_ += _loc35_ * (_loc43_.§2!_§.x * _loc19_ - _loc43_.§2!_§.y * _loc18_ + _loc44_.§2!_§.x * _loc21_ - _loc44_.§2!_§.y * _loc20_);
                     _loc43_.normalImpulse = _loc56_;
                     _loc44_.normalImpulse = _loc57_;
                  }
                  else
                  {
                     _loc56_ = 0;
                     _loc57_ = -_loc44_.§@!T§ * _loc54_;
                     _loc51_ = _loc25_.§2#§.col2.x * _loc57_ + _loc53_;
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
                        _loc28_ -= _loc33_ * (_loc43_.§->§.x * _loc19_ - _loc43_.§->§.y * _loc18_ + _loc44_.§->§.x * _loc21_ - _loc44_.§->§.y * _loc20_);
                        _loc31_.x += _loc34_ * (_loc18_ + _loc20_);
                        _loc31_.y += _loc34_ * (_loc19_ + _loc21_);
                        _loc29_ += _loc35_ * (_loc43_.§2!_§.x * _loc19_ - _loc43_.§2!_§.y * _loc18_ + _loc44_.§2!_§.x * _loc21_ - _loc44_.§2!_§.y * _loc20_);
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
                           _loc28_ -= _loc33_ * (_loc43_.§->§.x * _loc19_ - _loc43_.§->§.y * _loc18_ + _loc44_.§->§.x * _loc21_ - _loc44_.§->§.y * _loc20_);
                           _loc31_.x += _loc34_ * (_loc18_ + _loc20_);
                           _loc31_.y += _loc34_ * (_loc19_ + _loc21_);
                           _loc29_ += _loc35_ * (_loc43_.§2!_§.x * _loc19_ - _loc43_.§2!_§.y * _loc18_ + _loc44_.§2!_§.x * _loc21_ - _loc44_.§2!_§.y * _loc20_);
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
      
      public function §+!U§() : void
      {
         var _loc2_:b2ContactConstraint = null;
         var _loc3_:b2Manifold = null;
         var _loc4_:int = 0;
         var _loc5_:b2ManifoldPoint = null;
         var _loc6_:b2ContactConstraintPoint = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§3!O§)
         {
            _loc2_ = this.§<w§[_loc1_];
            _loc3_ = _loc2_.§%c§;
            _loc4_ = 0;
            while(_loc4_ < _loc2_.§`5§)
            {
               _loc5_ = _loc3_.§<s§[_loc4_];
               _loc6_ = _loc2_.§5n§[_loc4_];
               _loc5_.§46§ = _loc6_.normalImpulse;
               _loc5_.§`!H§ = _loc6_.tangentImpulse;
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
         while(_loc3_ < this.§3!O§)
         {
            _loc5_ = (_loc4_ = this.§<w§[_loc3_]).§8!5§;
            _loc6_ = _loc4_.§0n§;
            _loc7_ = _loc5_.§3!7§ * _loc5_.§#!D§;
            _loc8_ = _loc5_.§3!7§ * _loc5_.§?8§;
            _loc9_ = _loc6_.§3!7§ * _loc6_.§#!D§;
            _loc10_ = _loc6_.§3!7§ * _loc6_.§?8§;
            §4w§.§>b§(_loc4_);
            _loc11_ = §4w§.§^3§;
            _loc12_ = 0;
            while(_loc12_ < _loc4_.§`5§)
            {
               _loc13_ = _loc4_.§5n§[_loc12_];
               _loc14_ = §4w§.§<s§[_loc12_];
               _loc15_ = §4w§.§?!H§[_loc12_];
               _loc16_ = _loc14_.x - _loc5_.m_sweep.c.x;
               _loc17_ = _loc14_.y - _loc5_.m_sweep.c.y;
               _loc18_ = _loc14_.x - _loc6_.m_sweep.c.x;
               _loc19_ = _loc14_.y - _loc6_.m_sweep.c.y;
               _loc2_ = _loc2_ < _loc15_ ? Number(_loc2_) : Number(_loc15_);
               _loc20_ = b2Math.§-!1§(param1 * (_loc15_ + b2Settings.b2_linearSlop),-b2Settings.b2_maxLinearCorrection,0);
               _loc22_ = (_loc21_ = -_loc13_.§^!6§ * _loc20_) * _loc11_.x;
               _loc23_ = _loc21_ * _loc11_.y;
               _loc5_.m_sweep.c.x -= _loc7_ * _loc22_;
               _loc5_.m_sweep.c.y -= _loc7_ * _loc23_;
               _loc5_.m_sweep.a -= _loc8_ * (_loc16_ * _loc23_ - _loc17_ * _loc22_);
               _loc5_.§=!Y§();
               _loc6_.m_sweep.c.x += _loc9_ * _loc22_;
               _loc6_.m_sweep.c.y += _loc9_ * _loc23_;
               _loc6_.m_sweep.a += _loc10_ * (_loc18_ * _loc23_ - _loc19_ * _loc22_);
               _loc6_.§=!Y§();
               _loc12_++;
            }
            _loc3_++;
         }
         return _loc2_ > -1.5 * b2Settings.b2_linearSlop;
      }
   }
}
