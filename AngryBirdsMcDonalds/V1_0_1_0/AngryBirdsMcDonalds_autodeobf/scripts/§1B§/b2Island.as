package §1B§
{
   import §!R§.*;
   import §9i§.*;
   import §;N§.*;
   import §>!'§.*;
   import §]7§.*;
   
   use namespace b2internal;
   
   public class b2Island
   {
      
      private static var §8!D§:b2ContactImpulse = new b2ContactImpulse();
       
      
      private var §7g§;
      
      private var §7!d§:b2ContactListener;
      
      private var §&I§:b2ContactSolver;
      
      b2internal var §>$§:Vector.<b2Body>;
      
      b2internal var §&^§:Vector.<b2Contact>;
      
      b2internal var §<E§:Vector.<b2Joint>;
      
      b2internal var § T§:int;
      
      b2internal var §#y§:int;
      
      b2internal var §`!7§:int;
      
      private var §<l§:int;
      
      b2internal var §9!?§:int;
      
      b2internal var §`!#§:int;
      
      public function b2Island()
      {
         super();
         this.§>$§ = new Vector.<b2Body>();
         this.§&^§ = new Vector.<b2Contact>();
         this.§<E§ = new Vector.<b2Joint>();
      }
      
      public function §4G§(param1:int, param2:int, param3:int, param4:*, param5:b2ContactListener, param6:b2ContactSolver) : void
      {
         var _loc7_:int = 0;
         this.§<l§ = param1;
         this.§9!?§ = param2;
         this.§`!#§ = param3;
         this.§ T§ = 0;
         this.§`!7§ = 0;
         this.§#y§ = 0;
         this.§7g§ = param4;
         this.§7!d§ = param5;
         this.§&I§ = param6;
         _loc7_ = this.§>$§.length;
         while(_loc7_ < param1)
         {
            this.§>$§[_loc7_] = null;
            _loc7_++;
         }
         _loc7_ = this.§&^§.length;
         while(_loc7_ < param2)
         {
            this.§&^§[_loc7_] = null;
            _loc7_++;
         }
         _loc7_ = this.§<E§.length;
         while(_loc7_ < param3)
         {
            this.§<E§[_loc7_] = null;
            _loc7_++;
         }
      }
      
      public function §`!X§() : void
      {
         this.§ T§ = 0;
         this.§`!7§ = 0;
         this.§#y§ = 0;
      }
      
      public function §5d§(param1:b2TimeStep, param2:b2Vec2, param3:Boolean) : void
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
         while(_loc4_ < this.§ T§)
         {
            if((_loc6_ = this.§>$§[_loc4_]).§#+§() == b2Body.b2_dynamicBody)
            {
               _loc6_.§5!m§.x += param1.§#"§ * (param2.x + _loc6_.§#@§ * _loc6_.§4F§.x);
               _loc6_.§5!m§.y += param1.§#"§ * (param2.y + _loc6_.§#@§ * _loc6_.§4F§.y);
               _loc6_.m_angularVelocity += param1.§#"§ * _loc6_.§<3§ * _loc6_.§[!U§;
               _loc6_.§5!m§.§!!L§(b2Math.§%!i§(1 - param1.§#"§ * _loc6_.§%!I§,0,1));
               _loc6_.m_angularVelocity *= b2Math.§%!i§(1 - param1.§#"§ * _loc6_.§7w§,0,1);
            }
            _loc4_++;
         }
         this.§&I§.§4G§(param1,this.§&^§,this.§`!7§,this.§7g§);
         var _loc8_:b2ContactSolver;
         (_loc8_ = this.§&I§).InitVelocityConstraints(param1);
         _loc4_ = 0;
         while(_loc4_ < this.§#y§)
         {
            (_loc7_ = this.§<E§[_loc4_]).InitVelocityConstraints(param1);
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < param1.§7!a§)
         {
            _loc5_ = 0;
            while(_loc5_ < this.§#y§)
            {
               (_loc7_ = this.§<E§[_loc5_]).SolveVelocityConstraints(param1);
               _loc5_++;
            }
            _loc8_.SolveVelocityConstraints();
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < this.§#y§)
         {
            (_loc7_ = this.§<E§[_loc4_]).§,S§();
            _loc4_++;
         }
         _loc8_.§,S§();
         _loc4_ = 0;
         while(_loc4_ < this.§ T§)
         {
            if((_loc6_ = this.§>$§[_loc4_]).§#+§() != b2Body.b2_staticBody)
            {
               _loc9_ = param1.§#"§ * _loc6_.§5!m§.x;
               _loc10_ = param1.§#"§ * _loc6_.§5!m§.y;
               if(_loc9_ * _loc9_ + _loc10_ * _loc10_ > b2Settings.b2_maxTranslationSquared)
               {
                  _loc6_.§5!m§.Normalize();
                  _loc6_.§5!m§.x *= b2Settings.b2_maxTranslation * param1.§>,§;
                  _loc6_.§5!m§.y *= b2Settings.b2_maxTranslation * param1.§>,§;
               }
               _loc11_ = param1.§#"§ * _loc6_.m_angularVelocity;
               if(_loc11_ * _loc11_ > b2Settings.b2_maxRotationSquared)
               {
                  if(_loc6_.m_angularVelocity < 0)
                  {
                     _loc6_.m_angularVelocity = -b2Settings.b2_maxRotation * param1.§>,§;
                  }
                  else
                  {
                     _loc6_.m_angularVelocity = b2Settings.b2_maxRotation * param1.§>,§;
                  }
               }
               _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.c);
               _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
               _loc6_.m_sweep.c.x += param1.§#"§ * _loc6_.§5!m§.x;
               _loc6_.m_sweep.c.y += param1.§#"§ * _loc6_.§5!m§.y;
               _loc6_.m_sweep.a += param1.§#"§ * _loc6_.m_angularVelocity;
               _loc6_.§"d§();
            }
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < param1.§9!G§)
         {
            _loc12_ = _loc8_.SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
            _loc13_ = true;
            _loc5_ = 0;
            while(_loc5_ < this.§#y§)
            {
               _loc14_ = (_loc7_ = this.§<E§[_loc5_]).SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
               _loc13_ = _loc13_ && _loc14_;
               _loc5_++;
            }
            if(_loc12_ && _loc13_)
            {
               break;
            }
            _loc4_++;
         }
         this.§>!-§(_loc8_.§4!3§);
         if(param3)
         {
            _loc15_ = Number.MAX_VALUE;
            _loc16_ = b2Settings.b2_linearSleepTolerance * b2Settings.b2_linearSleepTolerance;
            _loc17_ = b2Settings.b2_angularSleepTolerance * b2Settings.b2_angularSleepTolerance;
            _loc4_ = 0;
            while(_loc4_ < this.§ T§)
            {
               if((_loc6_ = this.§>$§[_loc4_]).§#+§() != b2Body.b2_staticBody)
               {
                  if((_loc6_.§%!%§ & b2Body.§&!"§) == 0)
                  {
                     _loc6_.§?!!§ = 0;
                     _loc15_ = 0;
                  }
                  if((_loc6_.§%!%§ & b2Body.§&!"§) == 0 || _loc6_.m_angularVelocity * _loc6_.m_angularVelocity > _loc17_ || b2Math.§[U§(_loc6_.§5!m§,_loc6_.§5!m§) > _loc16_)
                  {
                     _loc6_.§?!!§ = 0;
                     _loc15_ = 0;
                  }
                  else
                  {
                     _loc6_.§?!!§ += param1.§#"§;
                     _loc15_ = b2Math.§]!W§(_loc15_,_loc6_.§?!!§);
                  }
               }
               _loc4_++;
            }
            if(_loc15_ >= b2Settings.b2_timeToSleep)
            {
               _loc4_ = 0;
               while(_loc4_ < this.§ T§)
               {
                  (_loc6_ = this.§>$§[_loc4_]).SetAwake(false);
                  _loc4_++;
               }
            }
         }
      }
      
      public function §`!Q§(param1:b2TimeStep) : void
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
         this.§&I§.§4G§(param1,this.§&^§,this.§`!7§,this.§7g§);
         var _loc4_:b2ContactSolver = this.§&I§;
         _loc2_ = 0;
         while(_loc2_ < this.§#y§)
         {
            this.§<E§[_loc2_].InitVelocityConstraints(param1);
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < param1.§7!a§)
         {
            _loc4_.SolveVelocityConstraints();
            _loc3_ = 0;
            while(_loc3_ < this.§#y§)
            {
               this.§<E§[_loc3_].SolveVelocityConstraints(param1);
               _loc3_++;
            }
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§ T§)
         {
            if((_loc6_ = this.§>$§[_loc2_]).§#+§() != b2Body.b2_staticBody)
            {
               _loc7_ = param1.§#"§ * _loc6_.§5!m§.x;
               _loc8_ = param1.§#"§ * _loc6_.§5!m§.y;
               if(_loc7_ * _loc7_ + _loc8_ * _loc8_ > b2Settings.b2_maxTranslationSquared)
               {
                  _loc6_.§5!m§.Normalize();
                  _loc6_.§5!m§.x *= b2Settings.b2_maxTranslation * param1.§>,§;
                  _loc6_.§5!m§.y *= b2Settings.b2_maxTranslation * param1.§>,§;
               }
               _loc9_ = param1.§#"§ * _loc6_.m_angularVelocity;
               if(_loc9_ * _loc9_ > b2Settings.b2_maxRotationSquared)
               {
                  if(_loc6_.m_angularVelocity < 0)
                  {
                     _loc6_.m_angularVelocity = -b2Settings.b2_maxRotation * param1.§>,§;
                  }
                  else
                  {
                     _loc6_.m_angularVelocity = b2Settings.b2_maxRotation * param1.§>,§;
                  }
               }
               _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.c);
               _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
               _loc6_.m_sweep.c.x += param1.§#"§ * _loc6_.§5!m§.x;
               _loc6_.m_sweep.c.y += param1.§#"§ * _loc6_.§5!m§.y;
               _loc6_.m_sweep.a += param1.§#"§ * _loc6_.m_angularVelocity;
               _loc6_.§"d§();
            }
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < param1.§9!G§)
         {
            _loc10_ = _loc4_.SolvePositionConstraints(0.75);
            _loc11_ = true;
            _loc3_ = 0;
            while(_loc3_ < this.§#y§)
            {
               _loc12_ = this.§<E§[_loc3_].SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
               _loc11_ = _loc11_ && _loc12_;
               _loc3_++;
            }
            if(_loc10_ && _loc11_)
            {
               break;
            }
            _loc2_++;
         }
         this.§>!-§(_loc4_.§4!3§);
      }
      
      public function §>!-§(param1:Vector.<b2ContactConstraint>) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2ContactConstraint = null;
         var _loc5_:int = 0;
         if(this.§7!d§ == null)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§`!7§)
         {
            _loc3_ = this.§&^§[_loc2_];
            _loc4_ = param1[_loc2_];
            _loc5_ = 0;
            while(_loc5_ < _loc4_.§50§)
            {
               §8!D§.§5!#§[_loc5_] = _loc4_.§,f§[_loc5_].normalImpulse;
               §8!D§.§@!f§[_loc5_] = _loc4_.§,f§[_loc5_].tangentImpulse;
               _loc5_++;
            }
            this.§7!d§.PostSolve(_loc3_,§8!D§);
            _loc2_++;
         }
      }
      
      public function §"!_§(param1:b2Body) : void
      {
         param1.§`!!§ = this.§ T§;
         var _loc2_:* = this.§ T§++;
         this.§>$§[_loc2_] = param1;
      }
      
      public function §!g§(param1:b2Contact) : void
      {
         var _loc2_:* = this.§`!7§++;
         this.§&^§[_loc2_] = param1;
      }
      
      public function §2!0§(param1:b2Joint) : void
      {
         var _loc2_:* = this.§#y§++;
         this.§<E§[_loc2_] = param1;
      }
   }
}
