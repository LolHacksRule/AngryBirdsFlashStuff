package §,v§
{
   import §!;§.*;
   import §-!A§.*;
   import §5t§.*;
   import §;!r§.*;
   import §@h§.*;
   
   use namespace b2internal;
   
   public class b2Island
   {
      
      private static var §@u§:b2ContactImpulse = new b2ContactImpulse();
       
      
      private var §&Q§;
      
      private var §%A§:b2ContactListener;
      
      private var §@4§:b2ContactSolver;
      
      b2internal var §5!k§:Vector.<b2Body>;
      
      b2internal var §1!Q§:Vector.<b2Contact>;
      
      b2internal var §@-§:Vector.<b2Joint>;
      
      b2internal var §>F§:int;
      
      b2internal var §!!-§:int;
      
      b2internal var §?!S§:int;
      
      private var §,R§:int;
      
      b2internal var §`!G§:int;
      
      b2internal var §]!§:int;
      
      public function b2Island()
      {
         super();
         this.§5!k§ = new Vector.<b2Body>();
         this.§1!Q§ = new Vector.<b2Contact>();
         this.§@-§ = new Vector.<b2Joint>();
      }
      
      public function §"!o§(param1:int, param2:int, param3:int, param4:*, param5:b2ContactListener, param6:b2ContactSolver) : void
      {
         var _loc7_:int = 0;
         this.§,R§ = param1;
         this.§`!G§ = param2;
         this.§]!§ = param3;
         this.§>F§ = 0;
         this.§?!S§ = 0;
         this.§!!-§ = 0;
         this.§&Q§ = param4;
         this.§%A§ = param5;
         this.§@4§ = param6;
         _loc7_ = this.§5!k§.length;
         while(_loc7_ < param1)
         {
            this.§5!k§[_loc7_] = null;
            _loc7_++;
         }
         _loc7_ = this.§1!Q§.length;
         while(_loc7_ < param2)
         {
            this.§1!Q§[_loc7_] = null;
            _loc7_++;
         }
         _loc7_ = this.§@-§.length;
         while(_loc7_ < param3)
         {
            this.§@-§[_loc7_] = null;
            _loc7_++;
         }
      }
      
      public function §11§() : void
      {
         this.§>F§ = 0;
         this.§?!S§ = 0;
         this.§!!-§ = 0;
      }
      
      public function §[J§(param1:b2TimeStep, param2:b2Vec2, param3:Boolean) : void
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
         while(_loc4_ < this.§>F§)
         {
            if((_loc6_ = this.§5!k§[_loc4_]).§@!D§() == b2Body.b2_dynamicBody)
            {
               _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.c);
               _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
               _loc6_.§4!"§.x += param1.§]>§ * (_loc6_.§,!1§ * param2.x + _loc6_.§3!o§ * _loc6_.§'I§.x);
               _loc6_.§4!"§.y += param1.§]>§ * (_loc6_.§,!1§ * param2.y + _loc6_.§3!o§ * _loc6_.§'I§.y);
               _loc6_.m_angularVelocity += param1.§]>§ * _loc6_.§%!^§ * _loc6_.§;!'§;
               _loc6_.§4!"§.§?Y§(b2Math.§;p§(1 - param1.§]>§ * _loc6_.§+I§,0,1));
               _loc6_.m_angularVelocity *= b2Math.§;p§(1 - param1.§]>§ * _loc6_.§-x§,0,1);
            }
            _loc4_++;
         }
         this.§@4§.§"!o§(param1,this.§1!Q§,this.§?!S§,this.§&Q§);
         var _loc8_:b2ContactSolver;
         (_loc8_ = this.§@4§).InitVelocityConstraints(param1);
         _loc4_ = 0;
         while(_loc4_ < this.§!!-§)
         {
            (_loc7_ = this.§@-§[_loc4_]).InitVelocityConstraints(param1);
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < param1.§1B§)
         {
            _loc5_ = 0;
            while(_loc5_ < this.§!!-§)
            {
               (_loc7_ = this.§@-§[_loc5_]).SolveVelocityConstraints(param1);
               _loc5_++;
            }
            _loc8_.SolveVelocityConstraints();
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < this.§!!-§)
         {
            (_loc7_ = this.§@-§[_loc4_]).§!!9§();
            _loc4_++;
         }
         _loc8_.§!!9§();
         _loc4_ = 0;
         while(_loc4_ < this.§>F§)
         {
            if((_loc6_ = this.§5!k§[_loc4_]).§@!D§() != b2Body.b2_staticBody)
            {
               _loc9_ = param1.§]>§ * _loc6_.§4!"§.x;
               _loc10_ = param1.§]>§ * _loc6_.§4!"§.y;
               if(_loc9_ * _loc9_ + _loc10_ * _loc10_ > b2Settings.b2_maxTranslationSquared)
               {
                  _loc6_.§4!"§.Normalize();
                  _loc6_.§4!"§.x *= b2Settings.b2_maxTranslation * param1.§'!A§;
                  _loc6_.§4!"§.y *= b2Settings.b2_maxTranslation * param1.§'!A§;
               }
               _loc11_ = param1.§]>§ * _loc6_.m_angularVelocity;
               if(_loc11_ * _loc11_ > b2Settings.b2_maxRotationSquared)
               {
                  if(_loc6_.m_angularVelocity < 0)
                  {
                     _loc6_.m_angularVelocity = -b2Settings.b2_maxRotation * param1.§'!A§;
                  }
                  else
                  {
                     _loc6_.m_angularVelocity = b2Settings.b2_maxRotation * param1.§'!A§;
                  }
               }
               _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.c);
               _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
               _loc6_.m_sweep.c.x += param1.§]>§ * _loc6_.§4!"§.x;
               _loc6_.m_sweep.c.y += param1.§]>§ * _loc6_.§4!"§.y;
               _loc6_.m_sweep.a += param1.§]>§ * _loc6_.m_angularVelocity;
               _loc6_.§+!S§();
            }
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < param1.§=e§)
         {
            _loc12_ = _loc8_.SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
            _loc13_ = true;
            _loc5_ = 0;
            while(_loc5_ < this.§!!-§)
            {
               _loc14_ = (_loc7_ = this.§@-§[_loc5_]).SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
               _loc13_ = _loc13_ && _loc14_;
               _loc5_++;
            }
            if(_loc12_ && _loc13_)
            {
               break;
            }
            _loc4_++;
         }
         this.§;z§(_loc8_.§=W§);
         if(param3)
         {
            _loc15_ = Number.MAX_VALUE;
            _loc16_ = b2Settings.b2_linearSleepTolerance * b2Settings.b2_linearSleepTolerance;
            _loc17_ = b2Settings.b2_angularSleepTolerance * b2Settings.b2_angularSleepTolerance;
            _loc4_ = 0;
            while(_loc4_ < this.§>F§)
            {
               if((_loc6_ = this.§5!k§[_loc4_]).§@!D§() != b2Body.b2_staticBody)
               {
                  if((_loc6_.§@!5§ & b2Body.§?!3§) == 0)
                  {
                     _loc6_.§<!H§ = 0;
                     _loc15_ = 0;
                  }
                  if((_loc6_.§@!5§ & b2Body.§?!3§) == 0 || _loc6_.m_angularVelocity * _loc6_.m_angularVelocity > _loc17_ || b2Math.§6§(_loc6_.§4!"§,_loc6_.§4!"§) > _loc16_)
                  {
                     _loc6_.§<!H§ = 0;
                     _loc15_ = 0;
                  }
                  else
                  {
                     _loc6_.§<!H§ += param1.§]>§;
                     _loc15_ = b2Math.§4!T§(_loc15_,_loc6_.§<!H§);
                  }
               }
               _loc4_++;
            }
            if(_loc15_ >= b2Settings.b2_timeToSleep)
            {
               _loc4_ = 0;
               while(_loc4_ < this.§>F§)
               {
                  (_loc6_ = this.§5!k§[_loc4_]).SetAwake(false);
                  _loc4_++;
               }
            }
         }
      }
      
      public function §0!o§(param1:b2TimeStep) : void
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
         this.§@4§.§"!o§(param1,this.§1!Q§,this.§?!S§,this.§&Q§);
         var _loc4_:b2ContactSolver = this.§@4§;
         _loc2_ = 0;
         while(_loc2_ < this.§!!-§)
         {
            this.§@-§[_loc2_].InitVelocityConstraints(param1);
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < param1.§=e§)
         {
            _loc6_ = _loc4_.SolvePositionConstraints(0.75);
            _loc7_ = true;
            _loc3_ = 0;
            while(_loc3_ < this.§!!-§)
            {
               _loc8_ = this.§@-§[_loc3_].SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
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
         while(_loc2_ < param1.§1B§)
         {
            _loc4_.SolveVelocityConstraints();
            _loc3_ = 0;
            while(_loc3_ < this.§!!-§)
            {
               this.§@-§[_loc3_].SolveVelocityConstraints(param1);
               _loc3_++;
            }
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§>F§)
         {
            if((_loc9_ = this.§5!k§[_loc2_]).§@!D§() != b2Body.b2_staticBody)
            {
               _loc10_ = param1.§]>§ * _loc9_.§4!"§.x;
               _loc11_ = param1.§]>§ * _loc9_.§4!"§.y;
               if(_loc10_ * _loc10_ + _loc11_ * _loc11_ > b2Settings.b2_maxTranslationSquared)
               {
                  _loc9_.§4!"§.Normalize();
                  _loc9_.§4!"§.x *= b2Settings.b2_maxTranslation * param1.§'!A§;
                  _loc9_.§4!"§.y *= b2Settings.b2_maxTranslation * param1.§'!A§;
               }
               _loc12_ = param1.§]>§ * _loc9_.m_angularVelocity;
               if(_loc12_ * _loc12_ > b2Settings.b2_maxRotationSquared)
               {
                  if(_loc9_.m_angularVelocity < 0)
                  {
                     _loc9_.m_angularVelocity = -b2Settings.b2_maxRotation * param1.§'!A§;
                  }
                  else
                  {
                     _loc9_.m_angularVelocity = b2Settings.b2_maxRotation * param1.§'!A§;
                  }
               }
               _loc9_.m_sweep.c0.SetV(_loc9_.m_sweep.c);
               _loc9_.m_sweep.a0 = _loc9_.m_sweep.a;
               _loc9_.m_sweep.c.x += param1.§]>§ * _loc9_.§4!"§.x;
               _loc9_.m_sweep.c.y += param1.§]>§ * _loc9_.§4!"§.y;
               _loc9_.m_sweep.a += param1.§]>§ * _loc9_.m_angularVelocity;
               _loc9_.§+!S§();
            }
            _loc2_++;
         }
         this.§;z§(_loc4_.§=W§);
      }
      
      public function §;z§(param1:Vector.<b2ContactConstraint>) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2ContactConstraint = null;
         var _loc5_:int = 0;
         if(this.§%A§ == null)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§?!S§)
         {
            _loc3_ = this.§1!Q§[_loc2_];
            _loc4_ = param1[_loc2_];
            _loc5_ = 0;
            while(_loc5_ < _loc4_.§'!p§)
            {
               §@u§.§0!l§[_loc5_] = _loc4_.§2!O§[_loc5_].normalImpulse;
               §@u§.§5T§[_loc5_] = _loc4_.§2!O§[_loc5_].tangentImpulse;
               _loc5_++;
            }
            this.§%A§.PostSolve(_loc3_,§@u§);
            _loc2_++;
         }
      }
      
      public function §true §(param1:b2Body) : void
      {
         param1.§5!f§ = this.§>F§;
         var _loc2_:* = this.§>F§++;
         this.§5!k§[_loc2_] = param1;
      }
      
      public function §<!j§(param1:b2Contact) : void
      {
         var _loc2_:* = this.§?!S§++;
         this.§1!Q§[_loc2_] = param1;
      }
      
      public function §1"+§(param1:b2Joint) : void
      {
         var _loc2_:* = this.§!!-§++;
         this.§@-§[_loc2_] = param1;
      }
   }
}
