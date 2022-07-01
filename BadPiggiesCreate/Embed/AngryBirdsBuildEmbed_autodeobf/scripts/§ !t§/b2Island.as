package § !t§
{
   import §#A§.*;
   import §'!;§.*;
   import §<!B§.*;
   import §?s§.*;
   import §[h§.*;
   
   use namespace b2internal;
   
   public class b2Island
   {
      
      private static var §'C§:b2ContactImpulse = new b2ContactImpulse();
       
      
      private var §4!5§;
      
      private var §6,§:b2ContactListener;
      
      private var § !S§:b2ContactSolver;
      
      b2internal var §0!I§:Vector.<b2Body>;
      
      b2internal var §&Q§:Vector.<b2Contact>;
      
      b2internal var §9k§:Vector.<b2Joint>;
      
      b2internal var §[b§:int;
      
      b2internal var §3J§:int;
      
      b2internal var §"Z§:int;
      
      private var §7_§:int;
      
      b2internal var §`!B§:int;
      
      b2internal var §6S§:int;
      
      public function b2Island()
      {
         super();
         this.§0!I§ = new Vector.<b2Body>();
         this.§&Q§ = new Vector.<b2Contact>();
         this.§9k§ = new Vector.<b2Joint>();
      }
      
      public function §6!V§(param1:int, param2:int, param3:int, param4:*, param5:b2ContactListener, param6:b2ContactSolver) : void
      {
         var _loc7_:int = 0;
         this.§7_§ = param1;
         this.§`!B§ = param2;
         this.§6S§ = param3;
         this.§[b§ = 0;
         this.§"Z§ = 0;
         this.§3J§ = 0;
         this.§4!5§ = param4;
         this.§6,§ = param5;
         this.§ !S§ = param6;
         _loc7_ = this.§0!I§.length;
         while(_loc7_ < param1)
         {
            this.§0!I§[_loc7_] = null;
            _loc7_++;
         }
         _loc7_ = this.§&Q§.length;
         while(_loc7_ < param2)
         {
            this.§&Q§[_loc7_] = null;
            _loc7_++;
         }
         _loc7_ = this.§9k§.length;
         while(_loc7_ < param3)
         {
            this.§9k§[_loc7_] = null;
            _loc7_++;
         }
      }
      
      public function §6N§() : void
      {
         this.§[b§ = 0;
         this.§"Z§ = 0;
         this.§3J§ = 0;
      }
      
      public function static(param1:b2TimeStep, param2:b2Vec2, param3:Boolean) : void
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
         while(_loc4_ < this.§[b§)
         {
            if((_loc6_ = this.§0!I§[_loc4_]).§"!j§() == b2Body.b2_dynamicBody)
            {
               _loc6_.§<&§.x += param1.§>N§ * (param2.x + _loc6_.§7!?§ * _loc6_.§"!F§.x);
               _loc6_.§<&§.y += param1.§>N§ * (param2.y + _loc6_.§7!?§ * _loc6_.§"!F§.y);
               _loc6_.m_angularVelocity += param1.§>N§ * _loc6_.§`d§ * _loc6_.§&a§;
               _loc6_.§<&§.§=!K§(b2Math.§%!j§(1 - param1.§>N§ * _loc6_.§+i§,0,1));
               _loc6_.m_angularVelocity *= b2Math.§%!j§(1 - param1.§>N§ * _loc6_.§5!p§,0,1);
            }
            _loc4_++;
         }
         this.§ !S§.§6!V§(param1,this.§&Q§,this.§"Z§,this.§4!5§);
         var _loc8_:b2ContactSolver;
         (_loc8_ = this.§ !S§).InitVelocityConstraints(param1);
         _loc4_ = 0;
         while(_loc4_ < this.§3J§)
         {
            (_loc7_ = this.§9k§[_loc4_]).InitVelocityConstraints(param1);
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < param1.§#!P§)
         {
            _loc5_ = 0;
            while(_loc5_ < this.§3J§)
            {
               (_loc7_ = this.§9k§[_loc5_]).SolveVelocityConstraints(param1);
               _loc5_++;
            }
            _loc8_.SolveVelocityConstraints();
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < this.§3J§)
         {
            (_loc7_ = this.§9k§[_loc4_]).§7!2§();
            _loc4_++;
         }
         _loc8_.§7!2§();
         _loc4_ = 0;
         while(_loc4_ < this.§[b§)
         {
            if((_loc6_ = this.§0!I§[_loc4_]).§"!j§() != b2Body.b2_staticBody)
            {
               _loc9_ = param1.§>N§ * _loc6_.§<&§.x;
               _loc10_ = param1.§>N§ * _loc6_.§<&§.y;
               if(_loc9_ * _loc9_ + _loc10_ * _loc10_ > b2Settings.b2_maxTranslationSquared)
               {
                  _loc6_.§<&§.Normalize();
                  _loc6_.§<&§.x *= b2Settings.b2_maxTranslation * param1.§3-§;
                  _loc6_.§<&§.y *= b2Settings.b2_maxTranslation * param1.§3-§;
               }
               _loc11_ = param1.§>N§ * _loc6_.m_angularVelocity;
               if(_loc11_ * _loc11_ > b2Settings.b2_maxRotationSquared)
               {
                  if(_loc6_.m_angularVelocity < 0)
                  {
                     _loc6_.m_angularVelocity = -b2Settings.b2_maxRotation * param1.§3-§;
                  }
                  else
                  {
                     _loc6_.m_angularVelocity = b2Settings.b2_maxRotation * param1.§3-§;
                  }
               }
               _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.c);
               _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
               _loc6_.m_sweep.c.x += param1.§>N§ * _loc6_.§<&§.x;
               _loc6_.m_sweep.c.y += param1.§>N§ * _loc6_.§<&§.y;
               _loc6_.m_sweep.a += param1.§>N§ * _loc6_.m_angularVelocity;
               _loc6_.§<=§();
            }
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < param1.§]S§)
         {
            _loc12_ = _loc8_.SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
            _loc13_ = true;
            _loc5_ = 0;
            while(_loc5_ < this.§3J§)
            {
               _loc14_ = (_loc7_ = this.§9k§[_loc5_]).SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
               _loc13_ = _loc13_ && _loc14_;
               _loc5_++;
            }
            if(_loc12_ && _loc13_)
            {
               break;
            }
            _loc4_++;
         }
         this.§4;§(_loc8_.§1e§);
         if(param3)
         {
            _loc15_ = Number.MAX_VALUE;
            _loc16_ = b2Settings.b2_linearSleepTolerance * b2Settings.b2_linearSleepTolerance;
            _loc17_ = b2Settings.b2_angularSleepTolerance * b2Settings.b2_angularSleepTolerance;
            _loc4_ = 0;
            while(_loc4_ < this.§[b§)
            {
               if((_loc6_ = this.§0!I§[_loc4_]).§"!j§() != b2Body.b2_staticBody)
               {
                  if((_loc6_.§;!n§ & b2Body.§!o§) == 0)
                  {
                     _loc6_.§0o§ = 0;
                     _loc15_ = 0;
                  }
                  if((_loc6_.§;!n§ & b2Body.§!o§) == 0 || _loc6_.m_angularVelocity * _loc6_.m_angularVelocity > _loc17_ || b2Math.§9!;§(_loc6_.§<&§,_loc6_.§<&§) > _loc16_)
                  {
                     _loc6_.§0o§ = 0;
                     _loc15_ = 0;
                  }
                  else
                  {
                     _loc6_.§0o§ += param1.§>N§;
                     _loc15_ = b2Math.§5!>§(_loc15_,_loc6_.§0o§);
                  }
               }
               _loc4_++;
            }
            if(_loc15_ >= b2Settings.b2_timeToSleep)
            {
               _loc4_ = 0;
               while(_loc4_ < this.§[b§)
               {
                  (_loc6_ = this.§0!I§[_loc4_]).SetAwake(false);
                  _loc4_++;
               }
            }
         }
      }
      
      public function §&0§(param1:b2TimeStep) : void
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
         this.§ !S§.§6!V§(param1,this.§&Q§,this.§"Z§,this.§4!5§);
         var _loc4_:b2ContactSolver = this.§ !S§;
         _loc2_ = 0;
         while(_loc2_ < this.§3J§)
         {
            this.§9k§[_loc2_].InitVelocityConstraints(param1);
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < param1.§#!P§)
         {
            _loc4_.SolveVelocityConstraints();
            _loc3_ = 0;
            while(_loc3_ < this.§3J§)
            {
               this.§9k§[_loc3_].SolveVelocityConstraints(param1);
               _loc3_++;
            }
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§[b§)
         {
            if((_loc6_ = this.§0!I§[_loc2_]).§"!j§() != b2Body.b2_staticBody)
            {
               _loc7_ = param1.§>N§ * _loc6_.§<&§.x;
               _loc8_ = param1.§>N§ * _loc6_.§<&§.y;
               if(_loc7_ * _loc7_ + _loc8_ * _loc8_ > b2Settings.b2_maxTranslationSquared)
               {
                  _loc6_.§<&§.Normalize();
                  _loc6_.§<&§.x *= b2Settings.b2_maxTranslation * param1.§3-§;
                  _loc6_.§<&§.y *= b2Settings.b2_maxTranslation * param1.§3-§;
               }
               _loc9_ = param1.§>N§ * _loc6_.m_angularVelocity;
               if(_loc9_ * _loc9_ > b2Settings.b2_maxRotationSquared)
               {
                  if(_loc6_.m_angularVelocity < 0)
                  {
                     _loc6_.m_angularVelocity = -b2Settings.b2_maxRotation * param1.§3-§;
                  }
                  else
                  {
                     _loc6_.m_angularVelocity = b2Settings.b2_maxRotation * param1.§3-§;
                  }
               }
               _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.c);
               _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
               _loc6_.m_sweep.c.x += param1.§>N§ * _loc6_.§<&§.x;
               _loc6_.m_sweep.c.y += param1.§>N§ * _loc6_.§<&§.y;
               _loc6_.m_sweep.a += param1.§>N§ * _loc6_.m_angularVelocity;
               _loc6_.§<=§();
            }
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < param1.§]S§)
         {
            _loc10_ = _loc4_.SolvePositionConstraints(0.75);
            _loc11_ = true;
            _loc3_ = 0;
            while(_loc3_ < this.§3J§)
            {
               _loc12_ = this.§9k§[_loc3_].SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
               _loc11_ = _loc11_ && _loc12_;
               _loc3_++;
            }
            if(_loc10_ && _loc11_)
            {
               break;
            }
            _loc2_++;
         }
         this.§4;§(_loc4_.§1e§);
      }
      
      public function §4;§(param1:Vector.<b2ContactConstraint>) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2ContactConstraint = null;
         var _loc5_:int = 0;
         if(this.§6,§ == null)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§"Z§)
         {
            _loc3_ = this.§&Q§[_loc2_];
            _loc4_ = param1[_loc2_];
            _loc5_ = 0;
            while(_loc5_ < _loc4_.§+6§)
            {
               §'C§.§&!8§[_loc5_] = _loc4_.§>!@§[_loc5_].normalImpulse;
               §'C§.§#s§[_loc5_] = _loc4_.§>!@§[_loc5_].tangentImpulse;
               _loc5_++;
            }
            this.§6,§.PostSolve(_loc3_,§'C§);
            _loc2_++;
         }
      }
      
      public function §2r§(param1:b2Body) : void
      {
         param1.§2d§ = this.§[b§;
         var _loc2_:* = this.§[b§++;
         this.§0!I§[_loc2_] = param1;
      }
      
      public function §`!6§(param1:b2Contact) : void
      {
         var _loc2_:* = this.§"Z§++;
         this.§&Q§[_loc2_] = param1;
      }
      
      public function §>!0§(param1:b2Joint) : void
      {
         var _loc2_:* = this.§3J§++;
         this.§9k§[_loc2_] = param1;
      }
   }
}
