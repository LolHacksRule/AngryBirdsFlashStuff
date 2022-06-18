package §&i§
{
   import §"v§.*;
   import §'z§.*;
   import §5!K§.*;
   import §5n§.*;
   import §]M§.*;
   
   use namespace b2internal;
   
   public class b2Island
   {
      
      private static var §8e§:b2ContactImpulse = new b2ContactImpulse();
       
      
      private var §"m§;
      
      private var §`!3§:b2ContactListener;
      
      private var §4w§:b2ContactSolver;
      
      b2internal var § !%§:Vector.<b2Body>;
      
      b2internal var §>!9§:Vector.<b2Contact>;
      
      b2internal var §3Z§:Vector.<b2Joint>;
      
      b2internal var §4!Y§:int;
      
      b2internal var § [§:int;
      
      b2internal var §%Q§:int;
      
      private var §`!-§:int;
      
      b2internal var §'1§:int;
      
      b2internal var §#j§:int;
      
      public function b2Island()
      {
         super();
         this.§ !%§ = new Vector.<b2Body>();
         this.§>!9§ = new Vector.<b2Contact>();
         this.§3Z§ = new Vector.<b2Joint>();
      }
      
      public function §2![§(param1:int, param2:int, param3:int, param4:*, param5:b2ContactListener, param6:b2ContactSolver) : void
      {
         var _loc7_:int = 0;
         this.§`!-§ = param1;
         this.§'1§ = param2;
         this.§#j§ = param3;
         this.§4!Y§ = 0;
         this.§%Q§ = 0;
         this.§ [§ = 0;
         this.§"m§ = param4;
         this.§`!3§ = param5;
         this.§4w§ = param6;
         _loc7_ = this.§ !%§.length;
         while(_loc7_ < param1)
         {
            this.§ !%§[_loc7_] = null;
            _loc7_++;
         }
         _loc7_ = this.§>!9§.length;
         while(_loc7_ < param2)
         {
            this.§>!9§[_loc7_] = null;
            _loc7_++;
         }
         _loc7_ = this.§3Z§.length;
         while(_loc7_ < param3)
         {
            this.§3Z§[_loc7_] = null;
            _loc7_++;
         }
      }
      
      public function §>m§() : void
      {
         this.§4!Y§ = 0;
         this.§%Q§ = 0;
         this.§ [§ = 0;
      }
      
      public function §;!N§(param1:b2TimeStep, param2:b2Vec2, param3:Boolean) : void
      {
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:b2Body = null;
         var _loc7_:b2Joint = null;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = false;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         _loc4_ = 0;
         while(_loc4_ < this.§4!Y§)
         {
            if((_loc6_ = this.§ !%§[_loc4_]).§"5§() == b2Body.b2_dynamicBody)
            {
               _loc6_.§;!#§.x += param1.§0O§ * (param2.x + _loc6_.§"!§ * _loc6_.§&I§.x);
               _loc6_.§;!#§.y += param1.§0O§ * (param2.y + _loc6_.§"!§ * _loc6_.§&I§.y);
               _loc6_.m_angularVelocity += param1.§0O§ * _loc6_.§9y§ * _loc6_.§ !A§;
               _loc6_.§;!#§.§3$§(b2Math.§=!,§(1 - param1.§0O§ * _loc6_.§@!@§,0,1));
               _loc6_.m_angularVelocity *= b2Math.§=!,§(1 - param1.§0O§ * _loc6_.§=a§,0,1);
            }
            _loc4_++;
         }
         this.§4w§.§2![§(param1,this.§>!9§,this.§%Q§,this.§"m§);
         var _loc8_:b2ContactSolver;
         (_loc8_ = this.§4w§).InitVelocityConstraints(param1);
         _loc4_ = 0;
         while(_loc4_ < this.§ [§)
         {
            (_loc7_ = this.§3Z§[_loc4_]).InitVelocityConstraints(param1);
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < param1.§ !T§)
         {
            _loc5_ = 0;
            while(_loc5_ < this.§ [§)
            {
               (_loc7_ = this.§3Z§[_loc5_]).SolveVelocityConstraints(param1);
               _loc5_++;
            }
            _loc8_.SolveVelocityConstraints();
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < this.§ [§)
         {
            (_loc7_ = this.§3Z§[_loc4_]).§6!M§();
            _loc4_++;
         }
         _loc8_.§6!M§();
         _loc4_ = 0;
         while(_loc4_ < this.§4!Y§)
         {
            if((_loc6_ = this.§ !%§[_loc4_]).§"5§() != b2Body.b2_staticBody)
            {
               _loc9_ = param1.§0O§ * _loc6_.§;!#§.x;
               _loc10_ = param1.§0O§ * _loc6_.§;!#§.y;
               if(_loc9_ * _loc9_ + _loc10_ * _loc10_ > b2Settings.b2_maxTranslationSquared)
               {
                  _loc6_.§;!#§.Normalize();
                  _loc6_.§;!#§.x *= b2Settings.b2_maxTranslation * param1.§'!+§;
                  _loc6_.§;!#§.y *= b2Settings.b2_maxTranslation * param1.§'!+§;
               }
               _loc11_ = param1.§0O§ * _loc6_.m_angularVelocity;
               if(_loc11_ * _loc11_ > b2Settings.b2_maxRotationSquared)
               {
                  if(_loc6_.m_angularVelocity < 0)
                  {
                     _loc6_.m_angularVelocity = -b2Settings.b2_maxRotation * param1.§'!+§;
                  }
                  else
                  {
                     _loc6_.m_angularVelocity = b2Settings.b2_maxRotation * param1.§'!+§;
                  }
               }
               _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.c);
               _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
               _loc6_.m_sweep.c.x += param1.§0O§ * _loc6_.§;!#§.x;
               _loc6_.m_sweep.c.y += param1.§0O§ * _loc6_.§;!#§.y;
               _loc6_.m_sweep.a += param1.§0O§ * _loc6_.m_angularVelocity;
               _loc6_.§8]§();
            }
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < param1.§<N§)
         {
            _loc12_ = _loc8_.SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
            _loc13_ = true;
            _loc5_ = 0;
            while(_loc5_ < this.§ [§)
            {
               _loc14_ = (_loc7_ = this.§3Z§[_loc5_]).SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
               _loc13_ = _loc13_ && _loc14_;
               _loc5_++;
            }
            if(_loc12_ && _loc13_)
            {
               break;
            }
            _loc4_++;
         }
         this.§7! §(_loc8_.§40§);
         if(param3)
         {
            _loc15_ = Number.MAX_VALUE;
            _loc16_ = b2Settings.b2_linearSleepTolerance * b2Settings.b2_linearSleepTolerance;
            _loc17_ = b2Settings.b2_angularSleepTolerance * b2Settings.b2_angularSleepTolerance;
            _loc4_ = 0;
            while(_loc4_ < this.§4!Y§)
            {
               if((_loc6_ = this.§ !%§[_loc4_]).§"5§() != b2Body.b2_staticBody)
               {
                  if((_loc6_.§7A§ & b2Body.§"7§) == 0)
                  {
                     _loc6_.§'A§ = 0;
                     _loc15_ = 0;
                  }
                  if((_loc6_.§7A§ & b2Body.§"7§) == 0 || _loc6_.m_angularVelocity * _loc6_.m_angularVelocity > _loc17_ || b2Math.§0U§(_loc6_.§;!#§,_loc6_.§;!#§) > _loc16_)
                  {
                     _loc6_.§'A§ = 0;
                     _loc15_ = 0;
                  }
                  else
                  {
                     _loc6_.§'A§ += param1.§0O§;
                     _loc15_ = b2Math.§;!5§(_loc15_,_loc6_.§'A§);
                  }
               }
               _loc4_++;
            }
            if(_loc15_ >= b2Settings.b2_timeToSleep)
            {
               _loc4_ = 0;
               while(_loc4_ < this.§4!Y§)
               {
                  (_loc6_ = this.§ !%§[_loc4_]).SetAwake(false);
                  _loc4_++;
               }
            }
         }
      }
      
      public function §]!@§(param1:b2TimeStep) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc6_:b2Body = null;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = false;
         this.§4w§.§2![§(param1,this.§>!9§,this.§%Q§,this.§"m§);
         var _loc4_:b2ContactSolver = this.§4w§;
         _loc2_ = 0;
         while(_loc2_ < this.§ [§)
         {
            this.§3Z§[_loc2_].InitVelocityConstraints(param1);
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < param1.§ !T§)
         {
            _loc4_.SolveVelocityConstraints();
            _loc3_ = 0;
            while(_loc3_ < this.§ [§)
            {
               this.§3Z§[_loc3_].SolveVelocityConstraints(param1);
               _loc3_++;
            }
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§4!Y§)
         {
            if((_loc6_ = this.§ !%§[_loc2_]).§"5§() != b2Body.b2_staticBody)
            {
               _loc7_ = param1.§0O§ * _loc6_.§;!#§.x;
               _loc8_ = param1.§0O§ * _loc6_.§;!#§.y;
               if(_loc7_ * _loc7_ + _loc8_ * _loc8_ > b2Settings.b2_maxTranslationSquared)
               {
                  _loc6_.§;!#§.Normalize();
                  _loc6_.§;!#§.x *= b2Settings.b2_maxTranslation * param1.§'!+§;
                  _loc6_.§;!#§.y *= b2Settings.b2_maxTranslation * param1.§'!+§;
               }
               _loc9_ = param1.§0O§ * _loc6_.m_angularVelocity;
               if(_loc9_ * _loc9_ > b2Settings.b2_maxRotationSquared)
               {
                  if(_loc6_.m_angularVelocity < 0)
                  {
                     _loc6_.m_angularVelocity = -b2Settings.b2_maxRotation * param1.§'!+§;
                  }
                  else
                  {
                     _loc6_.m_angularVelocity = b2Settings.b2_maxRotation * param1.§'!+§;
                  }
               }
               _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.c);
               _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
               _loc6_.m_sweep.c.x += param1.§0O§ * _loc6_.§;!#§.x;
               _loc6_.m_sweep.c.y += param1.§0O§ * _loc6_.§;!#§.y;
               _loc6_.m_sweep.a += param1.§0O§ * _loc6_.m_angularVelocity;
               _loc6_.§8]§();
            }
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < param1.§<N§)
         {
            _loc10_ = _loc4_.SolvePositionConstraints(0.75);
            _loc11_ = true;
            _loc3_ = 0;
            while(_loc3_ < this.§ [§)
            {
               _loc12_ = this.§3Z§[_loc3_].SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
               _loc11_ = _loc11_ && _loc12_;
               _loc3_++;
            }
            if(_loc10_ && _loc11_)
            {
               break;
            }
            _loc2_++;
         }
         this.§7! §(_loc4_.§40§);
      }
      
      public function §7! §(param1:Vector.<b2ContactConstraint>) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2ContactConstraint = null;
         var _loc5_:int = 0;
         if(this.§`!3§ == null)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§%Q§)
         {
            _loc3_ = this.§>!9§[_loc2_];
            _loc4_ = param1[_loc2_];
            _loc5_ = 0;
            while(_loc5_ < _loc4_.§@!K§)
            {
               §8e§.§;X§[_loc5_] = _loc4_.§?v§[_loc5_].normalImpulse;
               §8e§.§8!K§[_loc5_] = _loc4_.§?v§[_loc5_].tangentImpulse;
               _loc5_++;
            }
            this.§`!3§.PostSolve(_loc3_,§8e§);
            _loc2_++;
         }
      }
      
      public function §!1§(param1:b2Body) : void
      {
         param1.§^b§ = this.§4!Y§;
         var _loc2_:* = this.§4!Y§++;
         this.§ !%§[_loc2_] = param1;
      }
      
      public function §9?§(param1:b2Contact) : void
      {
         var _loc2_:* = this.§%Q§++;
         this.§>!9§[_loc2_] = param1;
      }
      
      public function §[!A§(param1:b2Joint) : void
      {
         var _loc2_:* = this.§ [§++;
         this.§3Z§[_loc2_] = param1;
      }
   }
}
