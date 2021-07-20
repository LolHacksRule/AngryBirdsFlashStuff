package §+d§
{
   import §%E§.*;
   import §6%§.*;
   import §7!3§.*;
   import §=n§.*;
   import §`!^§.*;
   
   use namespace b2internal;
   
   public class b2Island
   {
      
      private static var §<,§:b2ContactImpulse = new b2ContactImpulse();
       
      
      private var §;!H§;
      
      private var §3!5§:b2ContactListener;
      
      private var §'4§:b2ContactSolver;
      
      b2internal var §0!3§:Vector.<b2Body>;
      
      b2internal var §5!9§:Vector.<b2Contact>;
      
      b2internal var §4E§:Vector.<b2Joint>;
      
      b2internal var §,1§:int;
      
      b2internal var §>!V§:int;
      
      b2internal var §36§:int;
      
      private var §!!O§:int;
      
      b2internal var §&!f§:int;
      
      b2internal var § !&§:int;
      
      public function b2Island()
      {
         super();
         this.§0!3§ = new Vector.<b2Body>();
         this.§5!9§ = new Vector.<b2Contact>();
         this.§4E§ = new Vector.<b2Joint>();
      }
      
      public function §9!M§(param1:int, param2:int, param3:int, param4:*, param5:b2ContactListener, param6:b2ContactSolver) : void
      {
         var _loc7_:int = 0;
         this.§!!O§ = param1;
         this.§&!f§ = param2;
         this.§ !&§ = param3;
         this.§,1§ = 0;
         this.§36§ = 0;
         this.§>!V§ = 0;
         this.§;!H§ = param4;
         this.§3!5§ = param5;
         this.§'4§ = param6;
         _loc7_ = this.§0!3§.length;
         while(_loc7_ < param1)
         {
            this.§0!3§[_loc7_] = null;
            _loc7_++;
         }
         _loc7_ = this.§5!9§.length;
         while(_loc7_ < param2)
         {
            this.§5!9§[_loc7_] = null;
            _loc7_++;
         }
         _loc7_ = this.§4E§.length;
         while(_loc7_ < param3)
         {
            this.§4E§[_loc7_] = null;
            _loc7_++;
         }
      }
      
      public function §]!E§() : void
      {
         this.§,1§ = 0;
         this.§36§ = 0;
         this.§>!V§ = 0;
      }
      
      public function §&! §(param1:b2TimeStep, param2:b2Vec2, param3:Boolean) : void
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
         while(_loc4_ < this.§,1§)
         {
            if((_loc6_ = this.§0!3§[_loc4_]).§,!d§() == b2Body.b2_dynamicBody)
            {
               _loc6_.§^!S§.x += param1.§,>§ * (param2.x + _loc6_.§@h§ * _loc6_.§66§.x);
               _loc6_.§^!S§.y += param1.§,>§ * (param2.y + _loc6_.§@h§ * _loc6_.§66§.y);
               _loc6_.m_angularVelocity += param1.§,>§ * _loc6_.§8t§ * _loc6_.§,!§;
               _loc6_.§^!S§.§6Q§(b2Math.§6m§(1 - param1.§,>§ * _loc6_.§[!=§,0,1));
               _loc6_.m_angularVelocity *= b2Math.§6m§(1 - param1.§,>§ * _loc6_.§"e§,0,1);
            }
            _loc4_++;
         }
         this.§'4§.§9!M§(param1,this.§5!9§,this.§36§,this.§;!H§);
         var _loc8_:b2ContactSolver;
         (_loc8_ = this.§'4§).InitVelocityConstraints(param1);
         _loc4_ = 0;
         while(_loc4_ < this.§>!V§)
         {
            (_loc7_ = this.§4E§[_loc4_]).InitVelocityConstraints(param1);
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < param1.§&'§)
         {
            _loc5_ = 0;
            while(_loc5_ < this.§>!V§)
            {
               (_loc7_ = this.§4E§[_loc5_]).SolveVelocityConstraints(param1);
               _loc5_++;
            }
            _loc8_.SolveVelocityConstraints();
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < this.§>!V§)
         {
            (_loc7_ = this.§4E§[_loc4_]).§4!K§();
            _loc4_++;
         }
         _loc8_.§4!K§();
         _loc4_ = 0;
         while(_loc4_ < this.§,1§)
         {
            if((_loc6_ = this.§0!3§[_loc4_]).§,!d§() != b2Body.b2_staticBody)
            {
               _loc9_ = param1.§,>§ * _loc6_.§^!S§.x;
               _loc10_ = param1.§,>§ * _loc6_.§^!S§.y;
               if(_loc9_ * _loc9_ + _loc10_ * _loc10_ > b2Settings.b2_maxTranslationSquared)
               {
                  _loc6_.§^!S§.Normalize();
                  _loc6_.§^!S§.x *= b2Settings.b2_maxTranslation * param1.§=!1§;
                  _loc6_.§^!S§.y *= b2Settings.b2_maxTranslation * param1.§=!1§;
               }
               _loc11_ = param1.§,>§ * _loc6_.m_angularVelocity;
               if(_loc11_ * _loc11_ > b2Settings.b2_maxRotationSquared)
               {
                  if(_loc6_.m_angularVelocity < 0)
                  {
                     _loc6_.m_angularVelocity = -b2Settings.b2_maxRotation * param1.§=!1§;
                  }
                  else
                  {
                     _loc6_.m_angularVelocity = b2Settings.b2_maxRotation * param1.§=!1§;
                  }
               }
               _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.c);
               _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
               _loc6_.m_sweep.c.x += param1.§,>§ * _loc6_.§^!S§.x;
               _loc6_.m_sweep.c.y += param1.§,>§ * _loc6_.§^!S§.y;
               _loc6_.m_sweep.a += param1.§,>§ * _loc6_.m_angularVelocity;
               _loc6_.§%t§();
            }
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < param1.§<d§)
         {
            _loc12_ = _loc8_.SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
            _loc13_ = true;
            _loc5_ = 0;
            while(_loc5_ < this.§>!V§)
            {
               _loc14_ = (_loc7_ = this.§4E§[_loc5_]).SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
               _loc13_ = _loc13_ && _loc14_;
               _loc5_++;
            }
            if(_loc12_ && _loc13_)
            {
               break;
            }
            _loc4_++;
         }
         this.§"!e§(_loc8_.§"W§);
         if(param3)
         {
            _loc15_ = Number.MAX_VALUE;
            _loc16_ = b2Settings.b2_linearSleepTolerance * b2Settings.b2_linearSleepTolerance;
            _loc17_ = b2Settings.b2_angularSleepTolerance * b2Settings.b2_angularSleepTolerance;
            _loc4_ = 0;
            while(_loc4_ < this.§,1§)
            {
               if((_loc6_ = this.§0!3§[_loc4_]).§,!d§() != b2Body.b2_staticBody)
               {
                  if((_loc6_.§?!?§ & b2Body.§7!#§) == 0)
                  {
                     _loc6_.§#§ = 0;
                     _loc15_ = 0;
                  }
                  if((_loc6_.§?!?§ & b2Body.§7!#§) == 0 || _loc6_.m_angularVelocity * _loc6_.m_angularVelocity > _loc17_ || b2Math.§8!&§(_loc6_.§^!S§,_loc6_.§^!S§) > _loc16_)
                  {
                     _loc6_.§#§ = 0;
                     _loc15_ = 0;
                  }
                  else
                  {
                     _loc6_.§#§ += param1.§,>§;
                     _loc15_ = b2Math.§[!0§(_loc15_,_loc6_.§#§);
                  }
               }
               _loc4_++;
            }
            if(_loc15_ >= b2Settings.b2_timeToSleep)
            {
               _loc4_ = 0;
               while(_loc4_ < this.§,1§)
               {
                  (_loc6_ = this.§0!3§[_loc4_]).SetAwake(false);
                  _loc4_++;
               }
            }
         }
      }
      
      public function §8Q§(param1:b2TimeStep) : void
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
         this.§'4§.§9!M§(param1,this.§5!9§,this.§36§,this.§;!H§);
         var _loc4_:b2ContactSolver = this.§'4§;
         _loc2_ = 0;
         while(_loc2_ < this.§>!V§)
         {
            this.§4E§[_loc2_].InitVelocityConstraints(param1);
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < param1.§&'§)
         {
            _loc4_.SolveVelocityConstraints();
            _loc3_ = 0;
            while(_loc3_ < this.§>!V§)
            {
               this.§4E§[_loc3_].SolveVelocityConstraints(param1);
               _loc3_++;
            }
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§,1§)
         {
            if((_loc6_ = this.§0!3§[_loc2_]).§,!d§() != b2Body.b2_staticBody)
            {
               _loc7_ = param1.§,>§ * _loc6_.§^!S§.x;
               _loc8_ = param1.§,>§ * _loc6_.§^!S§.y;
               if(_loc7_ * _loc7_ + _loc8_ * _loc8_ > b2Settings.b2_maxTranslationSquared)
               {
                  _loc6_.§^!S§.Normalize();
                  _loc6_.§^!S§.x *= b2Settings.b2_maxTranslation * param1.§=!1§;
                  _loc6_.§^!S§.y *= b2Settings.b2_maxTranslation * param1.§=!1§;
               }
               _loc9_ = param1.§,>§ * _loc6_.m_angularVelocity;
               if(_loc9_ * _loc9_ > b2Settings.b2_maxRotationSquared)
               {
                  if(_loc6_.m_angularVelocity < 0)
                  {
                     _loc6_.m_angularVelocity = -b2Settings.b2_maxRotation * param1.§=!1§;
                  }
                  else
                  {
                     _loc6_.m_angularVelocity = b2Settings.b2_maxRotation * param1.§=!1§;
                  }
               }
               _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.c);
               _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
               _loc6_.m_sweep.c.x += param1.§,>§ * _loc6_.§^!S§.x;
               _loc6_.m_sweep.c.y += param1.§,>§ * _loc6_.§^!S§.y;
               _loc6_.m_sweep.a += param1.§,>§ * _loc6_.m_angularVelocity;
               _loc6_.§%t§();
            }
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < param1.§<d§)
         {
            _loc10_ = _loc4_.SolvePositionConstraints(0.75);
            _loc11_ = true;
            _loc3_ = 0;
            while(_loc3_ < this.§>!V§)
            {
               _loc12_ = this.§4E§[_loc3_].SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
               _loc11_ = _loc11_ && _loc12_;
               _loc3_++;
            }
            if(_loc10_ && _loc11_)
            {
               break;
            }
            _loc2_++;
         }
         this.§"!e§(_loc4_.§"W§);
      }
      
      public function §"!e§(param1:Vector.<b2ContactConstraint>) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2ContactConstraint = null;
         var _loc5_:int = 0;
         if(this.§3!5§ == null)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§36§)
         {
            _loc3_ = this.§5!9§[_loc2_];
            _loc4_ = param1[_loc2_];
            _loc5_ = 0;
            while(_loc5_ < _loc4_.§++§)
            {
               §<,§.§#3§[_loc5_] = _loc4_.§-Z§[_loc5_].normalImpulse;
               §<,§.§ 2§[_loc5_] = _loc4_.§-Z§[_loc5_].tangentImpulse;
               _loc5_++;
            }
            this.§3!5§.PostSolve(_loc3_,§<,§);
            _loc2_++;
         }
      }
      
      public function §+"§(param1:b2Body) : void
      {
         param1.§=!S§ = this.§,1§;
         var _loc2_:* = this.§,1§++;
         this.§0!3§[_loc2_] = param1;
      }
      
      public function §9M§(param1:b2Contact) : void
      {
         var _loc2_:* = this.§36§++;
         this.§5!9§[_loc2_] = param1;
      }
      
      public function §2E§(param1:b2Joint) : void
      {
         var _loc2_:* = this.§>!V§++;
         this.§4E§[_loc2_] = param1;
      }
   }
}
