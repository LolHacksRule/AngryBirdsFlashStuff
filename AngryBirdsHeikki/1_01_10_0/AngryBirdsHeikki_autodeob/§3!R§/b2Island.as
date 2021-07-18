package §3!R§
{
   import §!4§.*;
   import §"d§.*;
   import §6A§.*;
   import §=0§.*;
   import §^P§.*;
   
   use namespace b2internal;
   
   public class b2Island
   {
      
      private static var §"!!§:b2ContactImpulse = new b2ContactImpulse();
       
      
      private var §[!<§;
      
      private var § !I§:b2ContactListener;
      
      private var §?k§:b2ContactSolver;
      
      b2internal var §<7§:Vector.<b2Body>;
      
      b2internal var § i§:Vector.<b2Contact>;
      
      b2internal var §&!H§:Vector.<b2Joint>;
      
      b2internal var §7!6§:int;
      
      b2internal var §>#§:int;
      
      b2internal var § !N§:int;
      
      private var §>S§:int;
      
      b2internal var §8!2§:int;
      
      b2internal var §2!d§:int;
      
      public function b2Island()
      {
         super();
         this.§<7§ = new Vector.<b2Body>();
         this.§ i§ = new Vector.<b2Contact>();
         this.§&!H§ = new Vector.<b2Joint>();
      }
      
      public function §';§(param1:int, param2:int, param3:int, param4:*, param5:b2ContactListener, param6:b2ContactSolver) : void
      {
         var _loc7_:int = 0;
         this.§>S§ = param1;
         this.§8!2§ = param2;
         this.§2!d§ = param3;
         this.§7!6§ = 0;
         this.§ !N§ = 0;
         this.§>#§ = 0;
         this.§[!<§ = param4;
         this.§ !I§ = param5;
         this.§?k§ = param6;
         _loc7_ = this.§<7§.length;
         while(_loc7_ < param1)
         {
            this.§<7§[_loc7_] = null;
            _loc7_++;
         }
         _loc7_ = this.§ i§.length;
         while(_loc7_ < param2)
         {
            this.§ i§[_loc7_] = null;
            _loc7_++;
         }
         _loc7_ = this.§&!H§.length;
         while(_loc7_ < param3)
         {
            this.§&!H§[_loc7_] = null;
            _loc7_++;
         }
      }
      
      public function §?P§() : void
      {
         this.§7!6§ = 0;
         this.§ !N§ = 0;
         this.§>#§ = 0;
      }
      
      public function §]!G§(param1:b2TimeStep, param2:b2Vec2, param3:Boolean) : void
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
         while(_loc4_ < this.§7!6§)
         {
            if((_loc6_ = this.§<7§[_loc4_]).§0i§() == b2Body.b2_dynamicBody)
            {
               _loc6_.§@S§.x += param1.§?u§ * (param2.x + _loc6_.§",§ * _loc6_.§5l§.x);
               _loc6_.§@S§.y += param1.§?u§ * (param2.y + _loc6_.§",§ * _loc6_.§5l§.y);
               _loc6_.m_angularVelocity += param1.§?u§ * _loc6_.§-2§ * _loc6_.§'!K§;
               _loc6_.§@S§.§0O§(b2Math.§>I§(1 - param1.§?u§ * _loc6_.§0N§,0,1));
               _loc6_.m_angularVelocity *= b2Math.§>I§(1 - param1.§?u§ * _loc6_.§"!V§,0,1);
            }
            _loc4_++;
         }
         this.§?k§.§';§(param1,this.§ i§,this.§ !N§,this.§[!<§);
         var _loc8_:b2ContactSolver;
         (_loc8_ = this.§?k§).InitVelocityConstraints(param1);
         _loc4_ = 0;
         while(_loc4_ < this.§>#§)
         {
            (_loc7_ = this.§&!H§[_loc4_]).InitVelocityConstraints(param1);
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < param1.§-7§)
         {
            _loc5_ = 0;
            while(_loc5_ < this.§>#§)
            {
               (_loc7_ = this.§&!H§[_loc5_]).SolveVelocityConstraints(param1);
               _loc5_++;
            }
            _loc8_.SolveVelocityConstraints();
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < this.§>#§)
         {
            (_loc7_ = this.§&!H§[_loc4_]).§9x§();
            _loc4_++;
         }
         _loc8_.§9x§();
         _loc4_ = 0;
         while(_loc4_ < this.§7!6§)
         {
            if((_loc6_ = this.§<7§[_loc4_]).§0i§() != b2Body.b2_staticBody)
            {
               _loc9_ = param1.§?u§ * _loc6_.§@S§.x;
               _loc10_ = param1.§?u§ * _loc6_.§@S§.y;
               if(_loc9_ * _loc9_ + _loc10_ * _loc10_ > b2Settings.b2_maxTranslationSquared)
               {
                  _loc6_.§@S§.Normalize();
                  _loc6_.§@S§.x *= b2Settings.b2_maxTranslation * param1.§?o§;
                  _loc6_.§@S§.y *= b2Settings.b2_maxTranslation * param1.§?o§;
               }
               _loc11_ = param1.§?u§ * _loc6_.m_angularVelocity;
               if(_loc11_ * _loc11_ > b2Settings.b2_maxRotationSquared)
               {
                  if(_loc6_.m_angularVelocity < 0)
                  {
                     _loc6_.m_angularVelocity = -b2Settings.b2_maxRotation * param1.§?o§;
                  }
                  else
                  {
                     _loc6_.m_angularVelocity = b2Settings.b2_maxRotation * param1.§?o§;
                  }
               }
               _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.c);
               _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
               _loc6_.m_sweep.c.x += param1.§?u§ * _loc6_.§@S§.x;
               _loc6_.m_sweep.c.y += param1.§?u§ * _loc6_.§@S§.y;
               _loc6_.m_sweep.a += param1.§?u§ * _loc6_.m_angularVelocity;
               _loc6_.§-W§();
            }
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < param1.§'P§)
         {
            _loc12_ = _loc8_.SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
            _loc13_ = true;
            _loc5_ = 0;
            while(_loc5_ < this.§>#§)
            {
               _loc14_ = (_loc7_ = this.§&!H§[_loc5_]).SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
               _loc13_ = _loc13_ && _loc14_;
               _loc5_++;
            }
            if(_loc12_ && _loc13_)
            {
               break;
            }
            _loc4_++;
         }
         this.§4!5§(_loc8_.§^i§);
         if(param3)
         {
            _loc15_ = Number.MAX_VALUE;
            _loc16_ = b2Settings.b2_linearSleepTolerance * b2Settings.b2_linearSleepTolerance;
            _loc17_ = b2Settings.b2_angularSleepTolerance * b2Settings.b2_angularSleepTolerance;
            _loc4_ = 0;
            while(_loc4_ < this.§7!6§)
            {
               if((_loc6_ = this.§<7§[_loc4_]).§0i§() != b2Body.b2_staticBody)
               {
                  if((_loc6_.§5!5§ & b2Body.§8"§) == 0)
                  {
                     _loc6_.§^!`§ = 0;
                     _loc15_ = 0;
                  }
                  if((_loc6_.§5!5§ & b2Body.§8"§) == 0 || _loc6_.m_angularVelocity * _loc6_.m_angularVelocity > _loc17_ || b2Math.§[!N§(_loc6_.§@S§,_loc6_.§@S§) > _loc16_)
                  {
                     _loc6_.§^!`§ = 0;
                     _loc15_ = 0;
                  }
                  else
                  {
                     _loc6_.§^!`§ += param1.§?u§;
                     _loc15_ = b2Math.§ d§(_loc15_,_loc6_.§^!`§);
                  }
               }
               _loc4_++;
            }
            if(_loc15_ >= b2Settings.b2_timeToSleep)
            {
               _loc4_ = 0;
               while(_loc4_ < this.§7!6§)
               {
                  (_loc6_ = this.§<7§[_loc4_]).SetAwake(false);
                  _loc4_++;
               }
            }
         }
      }
      
      public function §=!P§(param1:b2TimeStep) : void
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
         this.§?k§.§';§(param1,this.§ i§,this.§ !N§,this.§[!<§);
         var _loc4_:b2ContactSolver = this.§?k§;
         _loc2_ = 0;
         while(_loc2_ < this.§>#§)
         {
            this.§&!H§[_loc2_].InitVelocityConstraints(param1);
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < param1.§-7§)
         {
            _loc4_.SolveVelocityConstraints();
            _loc3_ = 0;
            while(_loc3_ < this.§>#§)
            {
               this.§&!H§[_loc3_].SolveVelocityConstraints(param1);
               _loc3_++;
            }
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§7!6§)
         {
            if((_loc6_ = this.§<7§[_loc2_]).§0i§() != b2Body.b2_staticBody)
            {
               _loc7_ = param1.§?u§ * _loc6_.§@S§.x;
               _loc8_ = param1.§?u§ * _loc6_.§@S§.y;
               if(_loc7_ * _loc7_ + _loc8_ * _loc8_ > b2Settings.b2_maxTranslationSquared)
               {
                  _loc6_.§@S§.Normalize();
                  _loc6_.§@S§.x *= b2Settings.b2_maxTranslation * param1.§?o§;
                  _loc6_.§@S§.y *= b2Settings.b2_maxTranslation * param1.§?o§;
               }
               _loc9_ = param1.§?u§ * _loc6_.m_angularVelocity;
               if(_loc9_ * _loc9_ > b2Settings.b2_maxRotationSquared)
               {
                  if(_loc6_.m_angularVelocity < 0)
                  {
                     _loc6_.m_angularVelocity = -b2Settings.b2_maxRotation * param1.§?o§;
                  }
                  else
                  {
                     _loc6_.m_angularVelocity = b2Settings.b2_maxRotation * param1.§?o§;
                  }
               }
               _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.c);
               _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
               _loc6_.m_sweep.c.x += param1.§?u§ * _loc6_.§@S§.x;
               _loc6_.m_sweep.c.y += param1.§?u§ * _loc6_.§@S§.y;
               _loc6_.m_sweep.a += param1.§?u§ * _loc6_.m_angularVelocity;
               _loc6_.§-W§();
            }
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < param1.§'P§)
         {
            _loc10_ = _loc4_.SolvePositionConstraints(0.75);
            _loc11_ = true;
            _loc3_ = 0;
            while(_loc3_ < this.§>#§)
            {
               _loc12_ = this.§&!H§[_loc3_].SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
               _loc11_ = _loc11_ && _loc12_;
               _loc3_++;
            }
            if(_loc10_ && _loc11_)
            {
               break;
            }
            _loc2_++;
         }
         this.§4!5§(_loc4_.§^i§);
      }
      
      public function §4!5§(param1:Vector.<b2ContactConstraint>) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2ContactConstraint = null;
         var _loc5_:int = 0;
         if(this.§ !I§ == null)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§ !N§)
         {
            _loc3_ = this.§ i§[_loc2_];
            _loc4_ = param1[_loc2_];
            _loc5_ = 0;
            while(_loc5_ < _loc4_.§7O§)
            {
               §"!!§.§'!&§[_loc5_] = _loc4_.§-a§[_loc5_].normalImpulse;
               §"!!§.§^u§[_loc5_] = _loc4_.§-a§[_loc5_].tangentImpulse;
               _loc5_++;
            }
            this.§ !I§.PostSolve(_loc3_,§"!!§);
            _loc2_++;
         }
      }
      
      public function §']§(param1:b2Body) : void
      {
         param1.§]4§ = this.§7!6§;
         var _loc2_:* = this.§7!6§++;
         this.§<7§[_loc2_] = param1;
      }
      
      public function §#5§(param1:b2Contact) : void
      {
         var _loc2_:* = this.§ !N§++;
         this.§ i§[_loc2_] = param1;
      }
      
      public function §!Q§(param1:b2Joint) : void
      {
         var _loc2_:* = this.§>#§++;
         this.§&!H§[_loc2_] = param1;
      }
   }
}
