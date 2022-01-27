package §>"_§
{
   import §7!I§.*;
   import §7"A§.*;
   import §=![§.*;
   import §>r§.*;
   
   use namespace b2internal;
   
   public class b2Island
   {
      
      private static var §^>§:b2ContactImpulse = new b2ContactImpulse();
       
      
      private var §5"R§;
      
      private var §2"E§:b2ContactListener;
      
      private var §5"m§:b2ContactSolver;
      
      b2internal var §3w§:Vector.<b2Body>;
      
      b2internal var §2"h§:Vector.<b2Contact>;
      
      b2internal var §2t§:Vector.<b2Joint>;
      
      b2internal var §'"e§:int;
      
      b2internal var §;!N§:int;
      
      b2internal var §false§:int;
      
      private var §<!D§:int;
      
      b2internal var §4!g§:int;
      
      b2internal var §#!5§:int;
      
      public function b2Island()
      {
         super();
         this.§3w§ = new Vector.<b2Body>();
         this.§2"h§ = new Vector.<b2Contact>();
         this.§2t§ = new Vector.<b2Joint>();
      }
      
      public function §>D§(param1:int, param2:int, param3:int, param4:*, param5:b2ContactListener, param6:b2ContactSolver) : void
      {
         var _loc7_:int = 0;
         this.§<!D§ = param1;
         this.§4!g§ = param2;
         this.§#!5§ = param3;
         this.§'"e§ = 0;
         this.§false§ = 0;
         this.§;!N§ = 0;
         this.§5"R§ = param4;
         this.§2"E§ = param5;
         this.§5"m§ = param6;
         _loc7_ = this.§3w§.length;
         while(_loc7_ < param1)
         {
            this.§3w§[_loc7_] = null;
            _loc7_++;
         }
         _loc7_ = this.§2"h§.length;
         while(_loc7_ < param2)
         {
            this.§2"h§[_loc7_] = null;
            _loc7_++;
         }
         _loc7_ = this.§2t§.length;
         while(_loc7_ < param3)
         {
            this.§2t§[_loc7_] = null;
            _loc7_++;
         }
      }
      
      public function §?H§() : void
      {
         this.§'"e§ = 0;
         this.§false§ = 0;
         this.§;!N§ = 0;
      }
      
      public function §8_§(param1:b2TimeStep, param2:b2Vec2, param3:Boolean) : void
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
         while(_loc4_ < this.§'"e§)
         {
            if((_loc6_ = this.§3w§[_loc4_]).§+"M§() == b2Body.b2_dynamicBody)
            {
               _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.c);
               _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
               _loc6_.§9"H§.x += param1.§-!@§ * (_loc6_.§6"C§ * param2.x + _loc6_.§ !o§ * _loc6_.§@"&§.x);
               _loc6_.§9"H§.y += param1.§-!@§ * (_loc6_.§6"C§ * param2.y + _loc6_.§ !o§ * _loc6_.§@"&§.y);
               _loc6_.m_angularVelocity += param1.§-!@§ * _loc6_.§&#+§ * _loc6_.§8"p§;
               _loc6_.§9"H§.§ 6§(b2Math.§0!M§(1 - param1.§-!@§ * _loc6_.§6"?§,0,1));
               _loc6_.m_angularVelocity *= b2Math.§0!M§(1 - param1.§-!@§ * _loc6_.§1!Y§,0,1);
            }
            _loc4_++;
         }
         this.§5"m§.§>D§(param1,this.§2"h§,this.§false§,this.§5"R§);
         var _loc8_:b2ContactSolver;
         (_loc8_ = this.§5"m§).InitVelocityConstraints(param1);
         _loc4_ = 0;
         while(_loc4_ < this.§;!N§)
         {
            (_loc7_ = this.§2t§[_loc4_]).InitVelocityConstraints(param1);
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < param1.§+""§)
         {
            _loc5_ = 0;
            while(_loc5_ < this.§;!N§)
            {
               (_loc7_ = this.§2t§[_loc5_]).SolveVelocityConstraints(param1);
               _loc5_++;
            }
            _loc8_.SolveVelocityConstraints();
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < this.§;!N§)
         {
            (_loc7_ = this.§2t§[_loc4_]).§<q§();
            _loc4_++;
         }
         _loc8_.§<q§();
         _loc4_ = 0;
         while(_loc4_ < this.§'"e§)
         {
            if((_loc6_ = this.§3w§[_loc4_]).§+"M§() != b2Body.b2_staticBody)
            {
               _loc9_ = param1.§-!@§ * _loc6_.§9"H§.x;
               _loc10_ = param1.§-!@§ * _loc6_.§9"H§.y;
               if(_loc9_ * _loc9_ + _loc10_ * _loc10_ > b2Settings.b2_maxTranslationSquared)
               {
                  _loc6_.§9"H§.Normalize();
                  _loc6_.§9"H§.x *= b2Settings.b2_maxTranslation * param1.§["8§;
                  _loc6_.§9"H§.y *= b2Settings.b2_maxTranslation * param1.§["8§;
               }
               _loc11_ = param1.§-!@§ * _loc6_.m_angularVelocity;
               if(_loc11_ * _loc11_ > b2Settings.b2_maxRotationSquared)
               {
                  if(_loc6_.m_angularVelocity < 0)
                  {
                     _loc6_.m_angularVelocity = -b2Settings.b2_maxRotation * param1.§["8§;
                  }
                  else
                  {
                     _loc6_.m_angularVelocity = b2Settings.b2_maxRotation * param1.§["8§;
                  }
               }
               _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.c);
               _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
               _loc6_.m_sweep.c.x += param1.§-!@§ * _loc6_.§9"H§.x;
               _loc6_.m_sweep.c.y += param1.§-!@§ * _loc6_.§9"H§.y;
               _loc6_.m_sweep.a += param1.§-!@§ * _loc6_.m_angularVelocity;
               _loc6_.§&"]§();
            }
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < param1.§#l§)
         {
            _loc12_ = _loc8_.SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
            _loc13_ = true;
            _loc5_ = 0;
            while(_loc5_ < this.§;!N§)
            {
               _loc14_ = (_loc7_ = this.§2t§[_loc5_]).SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
               _loc13_ = _loc13_ && _loc14_;
               _loc5_++;
            }
            if(_loc12_ && _loc13_)
            {
               break;
            }
            _loc4_++;
         }
         this.§?!E§(_loc8_.§4"+§);
         if(param3)
         {
            _loc15_ = Number.MAX_VALUE;
            _loc16_ = b2Settings.b2_linearSleepTolerance * b2Settings.b2_linearSleepTolerance;
            _loc17_ = b2Settings.b2_angularSleepTolerance * b2Settings.b2_angularSleepTolerance;
            _loc4_ = 0;
            while(_loc4_ < this.§'"e§)
            {
               if((_loc6_ = this.§3w§[_loc4_]).§+"M§() != b2Body.b2_staticBody)
               {
                  if((_loc6_.§7!D§ & b2Body.§-!N§) == 0)
                  {
                     _loc6_.§#S§ = 0;
                     _loc15_ = 0;
                  }
                  if((_loc6_.§7!D§ & b2Body.§-!N§) == 0 || _loc6_.m_angularVelocity * _loc6_.m_angularVelocity > _loc17_ || b2Math.§<f§(_loc6_.§9"H§,_loc6_.§9"H§) > _loc16_)
                  {
                     _loc6_.§#S§ = 0;
                     _loc15_ = 0;
                  }
                  else
                  {
                     _loc6_.§#S§ += param1.§-!@§;
                     _loc15_ = b2Math.§%y§(_loc15_,_loc6_.§#S§);
                  }
               }
               _loc4_++;
            }
            if(_loc15_ >= b2Settings.b2_timeToSleep)
            {
               _loc4_ = 0;
               while(_loc4_ < this.§'"e§)
               {
                  (_loc6_ = this.§3w§[_loc4_]).SetAwake(false);
                  _loc4_++;
               }
            }
         }
      }
      
      public function §4#"§(param1:b2TimeStep) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = false;
         var _loc9_:b2Body = null;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         this.§5"m§.§>D§(param1,this.§2"h§,this.§false§,this.§5"R§);
         var _loc4_:b2ContactSolver = this.§5"m§;
         _loc2_ = 0;
         while(_loc2_ < this.§;!N§)
         {
            this.§2t§[_loc2_].InitVelocityConstraints(param1);
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < param1.§#l§)
         {
            _loc6_ = _loc4_.SolvePositionConstraints(0.75);
            _loc7_ = true;
            _loc3_ = 0;
            while(_loc3_ < this.§;!N§)
            {
               _loc8_ = this.§2t§[_loc3_].SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
               _loc7_ = _loc7_ && _loc8_;
               _loc3_++;
            }
            if(_loc6_ && _loc7_)
            {
               break;
            }
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < param1.§+""§)
         {
            _loc4_.SolveVelocityConstraints();
            _loc3_ = 0;
            while(_loc3_ < this.§;!N§)
            {
               this.§2t§[_loc3_].SolveVelocityConstraints(param1);
               _loc3_++;
            }
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§'"e§)
         {
            if((_loc9_ = this.§3w§[_loc2_]).§+"M§() != b2Body.b2_staticBody)
            {
               _loc10_ = param1.§-!@§ * _loc9_.§9"H§.x;
               _loc11_ = param1.§-!@§ * _loc9_.§9"H§.y;
               if(_loc10_ * _loc10_ + _loc11_ * _loc11_ > b2Settings.b2_maxTranslationSquared)
               {
                  _loc9_.§9"H§.Normalize();
                  _loc9_.§9"H§.x *= b2Settings.b2_maxTranslation * param1.§["8§;
                  _loc9_.§9"H§.y *= b2Settings.b2_maxTranslation * param1.§["8§;
               }
               _loc12_ = param1.§-!@§ * _loc9_.m_angularVelocity;
               if(_loc12_ * _loc12_ > b2Settings.b2_maxRotationSquared)
               {
                  if(_loc9_.m_angularVelocity < 0)
                  {
                     _loc9_.m_angularVelocity = -b2Settings.b2_maxRotation * param1.§["8§;
                  }
                  else
                  {
                     _loc9_.m_angularVelocity = b2Settings.b2_maxRotation * param1.§["8§;
                  }
               }
               _loc9_.m_sweep.c0.SetV(_loc9_.m_sweep.c);
               _loc9_.m_sweep.a0 = _loc9_.m_sweep.a;
               _loc9_.m_sweep.c.x += param1.§-!@§ * _loc9_.§9"H§.x;
               _loc9_.m_sweep.c.y += param1.§-!@§ * _loc9_.§9"H§.y;
               _loc9_.m_sweep.a += param1.§-!@§ * _loc9_.m_angularVelocity;
               _loc9_.§&"]§();
            }
            _loc2_++;
         }
         this.§?!E§(_loc4_.§4"+§);
      }
      
      public function §?!E§(param1:Vector.<b2ContactConstraint>) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2ContactConstraint = null;
         var _loc5_:int = 0;
         if(this.§2"E§ == null)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§false§)
         {
            _loc3_ = this.§2"h§[_loc2_];
            _loc4_ = param1[_loc2_];
            _loc5_ = 0;
            while(_loc5_ < _loc4_.§`#"§)
            {
               §^>§.§4"?§[_loc5_] = _loc4_.§6"u§[_loc5_].normalImpulse;
               §^>§.§;P§[_loc5_] = _loc4_.§6"u§[_loc5_].tangentImpulse;
               _loc5_++;
            }
            this.§2"E§.PostSolve(_loc3_,§^>§);
            _loc2_++;
         }
      }
      
      public function §!"d§(param1:b2Body) : void
      {
         param1.§&a§ = this.§'"e§;
         var _loc2_:* = this.§'"e§++;
         this.§3w§[_loc2_] = param1;
      }
      
      public function §@"I§(param1:b2Contact) : void
      {
         var _loc2_:* = this.§false§++;
         this.§2"h§[_loc2_] = param1;
      }
      
      public function §do§(param1:b2Joint) : void
      {
         var _loc2_:* = this.§;!N§++;
         this.§2t§[_loc2_] = param1;
      }
   }
}
