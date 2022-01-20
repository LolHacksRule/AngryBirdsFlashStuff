package §8T§
{
   import §!!M§.*;
   import §+S§.*;
   import §,!V§.*;
   import §6!g§.*;
   import §?!n§.*;
   
   use namespace b2internal;
   
   public class b2Island
   {
      
      private static var §8!h§:b2ContactImpulse = new b2ContactImpulse();
       
      
      private var §<_§;
      
      private var §`A§:b2ContactListener;
      
      private var §0!$§:b2ContactSolver;
      
      b2internal var §1'§:Vector.<b2Body>;
      
      b2internal var §%!3§:Vector.<b2Contact>;
      
      b2internal var §'!h§:Vector.<b2Joint>;
      
      b2internal var § w§:int;
      
      b2internal var §0!c§:int;
      
      b2internal var §[P§:int;
      
      private var §7!E§:int;
      
      b2internal var §3h§:int;
      
      b2internal var §[!f§:int;
      
      public function b2Island()
      {
         super();
         this.§1'§ = new Vector.<b2Body>();
         this.§%!3§ = new Vector.<b2Contact>();
         this.§'!h§ = new Vector.<b2Joint>();
      }
      
      public function §`!9§(param1:int, param2:int, param3:int, param4:*, param5:b2ContactListener, param6:b2ContactSolver) : void
      {
         var _loc7_:int = 0;
         this.§7!E§ = param1;
         this.§3h§ = param2;
         this.§[!f§ = param3;
         this.§ w§ = 0;
         this.§[P§ = 0;
         this.§0!c§ = 0;
         this.§<_§ = param4;
         this.§`A§ = param5;
         this.§0!$§ = param6;
         _loc7_ = this.§1'§.length;
         while(_loc7_ < param1)
         {
            this.§1'§[_loc7_] = null;
            _loc7_++;
         }
         _loc7_ = this.§%!3§.length;
         while(_loc7_ < param2)
         {
            this.§%!3§[_loc7_] = null;
            _loc7_++;
         }
         _loc7_ = this.§'!h§.length;
         while(_loc7_ < param3)
         {
            this.§'!h§[_loc7_] = null;
            _loc7_++;
         }
      }
      
      public function §['§() : void
      {
         this.§ w§ = 0;
         this.§[P§ = 0;
         this.§0!c§ = 0;
      }
      
      public function §`H§(param1:b2TimeStep, param2:b2Vec2, param3:Boolean) : void
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
         while(_loc4_ < this.§ w§)
         {
            if((_loc6_ = this.§1'§[_loc4_]).§1l§() == b2Body.b2_dynamicBody)
            {
               _loc6_.§switch§.x += param1.§9[§ * (param2.x + _loc6_.§;!m§ * _loc6_.§5!I§.x);
               _loc6_.§switch§.y += param1.§9[§ * (param2.y + _loc6_.§;!m§ * _loc6_.§5!I§.y);
               _loc6_.m_angularVelocity += param1.§9[§ * _loc6_.§]q§ * _loc6_.§`7§;
               _loc6_.§switch§.§71§(b2Math.§&!<§(1 - param1.§9[§ * _loc6_.§3!B§,0,1));
               _loc6_.m_angularVelocity *= b2Math.§&!<§(1 - param1.§9[§ * _loc6_.§+!-§,0,1);
            }
            _loc4_++;
         }
         this.§0!$§.§`!9§(param1,this.§%!3§,this.§[P§,this.§<_§);
         var _loc8_:b2ContactSolver;
         (_loc8_ = this.§0!$§).InitVelocityConstraints(param1);
         _loc4_ = 0;
         while(_loc4_ < this.§0!c§)
         {
            (_loc7_ = this.§'!h§[_loc4_]).InitVelocityConstraints(param1);
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < param1.§9!F§)
         {
            _loc5_ = 0;
            while(_loc5_ < this.§0!c§)
            {
               (_loc7_ = this.§'!h§[_loc5_]).SolveVelocityConstraints(param1);
               _loc5_++;
            }
            _loc8_.SolveVelocityConstraints();
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < this.§0!c§)
         {
            (_loc7_ = this.§'!h§[_loc4_]).§8!>§();
            _loc4_++;
         }
         _loc8_.§8!>§();
         _loc4_ = 0;
         while(_loc4_ < this.§ w§)
         {
            if((_loc6_ = this.§1'§[_loc4_]).§1l§() != b2Body.b2_staticBody)
            {
               _loc9_ = param1.§9[§ * _loc6_.§switch§.x;
               _loc10_ = param1.§9[§ * _loc6_.§switch§.y;
               if(_loc9_ * _loc9_ + _loc10_ * _loc10_ > b2Settings.b2_maxTranslationSquared)
               {
                  _loc6_.§switch§.Normalize();
                  _loc6_.§switch§.x *= b2Settings.b2_maxTranslation * param1.§1E§;
                  _loc6_.§switch§.y *= b2Settings.b2_maxTranslation * param1.§1E§;
               }
               _loc11_ = param1.§9[§ * _loc6_.m_angularVelocity;
               if(_loc11_ * _loc11_ > b2Settings.b2_maxRotationSquared)
               {
                  if(_loc6_.m_angularVelocity < 0)
                  {
                     _loc6_.m_angularVelocity = -b2Settings.b2_maxRotation * param1.§1E§;
                  }
                  else
                  {
                     _loc6_.m_angularVelocity = b2Settings.b2_maxRotation * param1.§1E§;
                  }
               }
               _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.c);
               _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
               _loc6_.m_sweep.c.x += param1.§9[§ * _loc6_.§switch§.x;
               _loc6_.m_sweep.c.y += param1.§9[§ * _loc6_.§switch§.y;
               _loc6_.m_sweep.a += param1.§9[§ * _loc6_.m_angularVelocity;
               _loc6_.§40§();
            }
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < param1.§]"§)
         {
            _loc12_ = _loc8_.SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
            _loc13_ = true;
            _loc5_ = 0;
            while(_loc5_ < this.§0!c§)
            {
               _loc14_ = (_loc7_ = this.§'!h§[_loc5_]).SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
               _loc13_ = _loc13_ && _loc14_;
               _loc5_++;
            }
            if(_loc12_ && _loc13_)
            {
               break;
            }
            _loc4_++;
         }
         this.§#=§(_loc8_.§2?§);
         if(param3)
         {
            _loc15_ = Number.MAX_VALUE;
            _loc16_ = b2Settings.b2_linearSleepTolerance * b2Settings.b2_linearSleepTolerance;
            _loc17_ = b2Settings.b2_angularSleepTolerance * b2Settings.b2_angularSleepTolerance;
            _loc4_ = 0;
            while(_loc4_ < this.§ w§)
            {
               if((_loc6_ = this.§1'§[_loc4_]).§1l§() != b2Body.b2_staticBody)
               {
                  if((_loc6_.§3!V§ & b2Body.§<!U§) == 0)
                  {
                     _loc6_.§ r§ = 0;
                     _loc15_ = 0;
                  }
                  if((_loc6_.§3!V§ & b2Body.§<!U§) == 0 || _loc6_.m_angularVelocity * _loc6_.m_angularVelocity > _loc17_ || b2Math.§7!7§(_loc6_.§switch§,_loc6_.§switch§) > _loc16_)
                  {
                     _loc6_.§ r§ = 0;
                     _loc15_ = 0;
                  }
                  else
                  {
                     _loc6_.§ r§ += param1.§9[§;
                     _loc15_ = b2Math.§4!+§(_loc15_,_loc6_.§ r§);
                  }
               }
               _loc4_++;
            }
            if(_loc15_ >= b2Settings.b2_timeToSleep)
            {
               _loc4_ = 0;
               while(_loc4_ < this.§ w§)
               {
                  (_loc6_ = this.§1'§[_loc4_]).SetAwake(false);
                  _loc4_++;
               }
            }
         }
      }
      
      public function §^!f§(param1:b2TimeStep) : void
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
         this.§0!$§.§`!9§(param1,this.§%!3§,this.§[P§,this.§<_§);
         var _loc4_:b2ContactSolver = this.§0!$§;
         _loc2_ = 0;
         while(_loc2_ < this.§0!c§)
         {
            this.§'!h§[_loc2_].InitVelocityConstraints(param1);
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < param1.§9!F§)
         {
            _loc4_.SolveVelocityConstraints();
            _loc3_ = 0;
            while(_loc3_ < this.§0!c§)
            {
               this.§'!h§[_loc3_].SolveVelocityConstraints(param1);
               _loc3_++;
            }
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§ w§)
         {
            if((_loc6_ = this.§1'§[_loc2_]).§1l§() != b2Body.b2_staticBody)
            {
               _loc7_ = param1.§9[§ * _loc6_.§switch§.x;
               _loc8_ = param1.§9[§ * _loc6_.§switch§.y;
               if(_loc7_ * _loc7_ + _loc8_ * _loc8_ > b2Settings.b2_maxTranslationSquared)
               {
                  _loc6_.§switch§.Normalize();
                  _loc6_.§switch§.x *= b2Settings.b2_maxTranslation * param1.§1E§;
                  _loc6_.§switch§.y *= b2Settings.b2_maxTranslation * param1.§1E§;
               }
               _loc9_ = param1.§9[§ * _loc6_.m_angularVelocity;
               if(_loc9_ * _loc9_ > b2Settings.b2_maxRotationSquared)
               {
                  if(_loc6_.m_angularVelocity < 0)
                  {
                     _loc6_.m_angularVelocity = -b2Settings.b2_maxRotation * param1.§1E§;
                  }
                  else
                  {
                     _loc6_.m_angularVelocity = b2Settings.b2_maxRotation * param1.§1E§;
                  }
               }
               _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.c);
               _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
               _loc6_.m_sweep.c.x += param1.§9[§ * _loc6_.§switch§.x;
               _loc6_.m_sweep.c.y += param1.§9[§ * _loc6_.§switch§.y;
               _loc6_.m_sweep.a += param1.§9[§ * _loc6_.m_angularVelocity;
               _loc6_.§40§();
            }
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < param1.§]"§)
         {
            _loc10_ = _loc4_.SolvePositionConstraints(0.75);
            _loc11_ = true;
            _loc3_ = 0;
            while(_loc3_ < this.§0!c§)
            {
               _loc12_ = this.§'!h§[_loc3_].SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
               _loc11_ = _loc11_ && _loc12_;
               _loc3_++;
            }
            if(_loc10_ && _loc11_)
            {
               break;
            }
            _loc2_++;
         }
         this.§#=§(_loc4_.§2?§);
      }
      
      public function §#=§(param1:Vector.<b2ContactConstraint>) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2ContactConstraint = null;
         var _loc5_:int = 0;
         if(this.§`A§ == null)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§[P§)
         {
            _loc3_ = this.§%!3§[_loc2_];
            _loc4_ = param1[_loc2_];
            _loc5_ = 0;
            while(_loc5_ < _loc4_.§72§)
            {
               §8!h§.§;X§[_loc5_] = _loc4_.§38§[_loc5_].normalImpulse;
               §8!h§.§>I§[_loc5_] = _loc4_.§38§[_loc5_].tangentImpulse;
               _loc5_++;
            }
            this.§`A§.PostSolve(_loc3_,§8!h§);
            _loc2_++;
         }
      }
      
      public function §5@§(param1:b2Body) : void
      {
         param1.§'b§ = this.§ w§;
         var _loc2_:* = this.§ w§++;
         this.§1'§[_loc2_] = param1;
      }
      
      public function §?!I§(param1:b2Contact) : void
      {
         var _loc2_:* = this.§[P§++;
         this.§%!3§[_loc2_] = param1;
      }
      
      public function §,! §(param1:b2Joint) : void
      {
         var _loc2_:* = this.§0!c§++;
         this.§'!h§[_loc2_] = param1;
      }
   }
}
