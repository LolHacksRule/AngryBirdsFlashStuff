package §7!5§
{
   import §!!7§.*;
   import §7!Y§.*;
   import §8!n§.*;
   import §;W§.*;
   import §@![§.*;
   
   use namespace b2internal;
   
   public class b2Island
   {
      
      private static var §9!^§:b2ContactImpulse = new b2ContactImpulse();
       
      
      private var §-d§;
      
      private var §1!,§:b2ContactListener;
      
      private var §3$§:b2ContactSolver;
      
      b2internal var §50§:Vector.<b2Body>;
      
      b2internal var §^J§:Vector.<b2Contact>;
      
      b2internal var §&!o§:Vector.<b2Joint>;
      
      b2internal var §,l§:int;
      
      b2internal var §=`§:int;
      
      b2internal var §2!D§:int;
      
      private var §7!d§:int;
      
      b2internal var §+!V§:int;
      
      b2internal var §'K§:int;
      
      public function b2Island()
      {
         super();
         this.§50§ = new Vector.<b2Body>();
         this.§^J§ = new Vector.<b2Contact>();
         this.§&!o§ = new Vector.<b2Joint>();
      }
      
      public function §1!O§(param1:int, param2:int, param3:int, param4:*, param5:b2ContactListener, param6:b2ContactSolver) : void
      {
         var _loc7_:int = 0;
         this.§7!d§ = param1;
         this.§+!V§ = param2;
         this.§'K§ = param3;
         this.§,l§ = 0;
         this.§2!D§ = 0;
         this.§=`§ = 0;
         this.§-d§ = param4;
         this.§1!,§ = param5;
         this.§3$§ = param6;
         _loc7_ = this.§50§.length;
         while(_loc7_ < param1)
         {
            this.§50§[_loc7_] = null;
            _loc7_++;
         }
         _loc7_ = this.§^J§.length;
         while(_loc7_ < param2)
         {
            this.§^J§[_loc7_] = null;
            _loc7_++;
         }
         _loc7_ = this.§&!o§.length;
         while(_loc7_ < param3)
         {
            this.§&!o§[_loc7_] = null;
            _loc7_++;
         }
      }
      
      public function §;o§() : void
      {
         this.§,l§ = 0;
         this.§2!D§ = 0;
         this.§=`§ = 0;
      }
      
      public function §-8§(param1:b2TimeStep, param2:b2Vec2, param3:Boolean) : void
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
         while(_loc4_ < this.§,l§)
         {
            if((_loc6_ = this.§50§[_loc4_]).§&!B§() == b2Body.b2_dynamicBody)
            {
               _loc6_.§?!%§.x += param1.§4l§ * (param2.x + _loc6_.§0T§ * _loc6_.§,x§.x);
               _loc6_.§?!%§.y += param1.§4l§ * (param2.y + _loc6_.§0T§ * _loc6_.§,x§.y);
               _loc6_.m_angularVelocity += param1.§4l§ * _loc6_.§#d§ * _loc6_.§69§;
               _loc6_.§?!%§.§<'§(b2Math.§1!P§(1 - param1.§4l§ * _loc6_.§>z§,0,1));
               _loc6_.m_angularVelocity *= b2Math.§1!P§(1 - param1.§4l§ * _loc6_.§<!U§,0,1);
            }
            _loc4_++;
         }
         this.§3$§.§1!O§(param1,this.§^J§,this.§2!D§,this.§-d§);
         var _loc8_:b2ContactSolver;
         (_loc8_ = this.§3$§).InitVelocityConstraints(param1);
         _loc4_ = 0;
         while(_loc4_ < this.§=`§)
         {
            (_loc7_ = this.§&!o§[_loc4_]).InitVelocityConstraints(param1);
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < param1.§<C§)
         {
            _loc5_ = 0;
            while(_loc5_ < this.§=`§)
            {
               (_loc7_ = this.§&!o§[_loc5_]).SolveVelocityConstraints(param1);
               _loc5_++;
            }
            _loc8_.SolveVelocityConstraints();
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < this.§=`§)
         {
            (_loc7_ = this.§&!o§[_loc4_]).§[!`§();
            _loc4_++;
         }
         _loc8_.§[!`§();
         _loc4_ = 0;
         while(_loc4_ < this.§,l§)
         {
            if((_loc6_ = this.§50§[_loc4_]).§&!B§() != b2Body.b2_staticBody)
            {
               _loc9_ = param1.§4l§ * _loc6_.§?!%§.x;
               _loc10_ = param1.§4l§ * _loc6_.§?!%§.y;
               if(_loc9_ * _loc9_ + _loc10_ * _loc10_ > b2Settings.b2_maxTranslationSquared)
               {
                  _loc6_.§?!%§.Normalize();
                  _loc6_.§?!%§.x *= b2Settings.b2_maxTranslation * param1.§?!,§;
                  _loc6_.§?!%§.y *= b2Settings.b2_maxTranslation * param1.§?!,§;
               }
               _loc11_ = param1.§4l§ * _loc6_.m_angularVelocity;
               if(_loc11_ * _loc11_ > b2Settings.b2_maxRotationSquared)
               {
                  if(_loc6_.m_angularVelocity < 0)
                  {
                     _loc6_.m_angularVelocity = -b2Settings.b2_maxRotation * param1.§?!,§;
                  }
                  else
                  {
                     _loc6_.m_angularVelocity = b2Settings.b2_maxRotation * param1.§?!,§;
                  }
               }
               _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.c);
               _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
               _loc6_.m_sweep.c.x += param1.§4l§ * _loc6_.§?!%§.x;
               _loc6_.m_sweep.c.y += param1.§4l§ * _loc6_.§?!%§.y;
               _loc6_.m_sweep.a += param1.§4l§ * _loc6_.m_angularVelocity;
               _loc6_.§5!%§();
            }
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < param1.§^!j§)
         {
            _loc12_ = _loc8_.SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
            _loc13_ = true;
            _loc5_ = 0;
            while(_loc5_ < this.§=`§)
            {
               _loc14_ = (_loc7_ = this.§&!o§[_loc5_]).SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
               _loc13_ = _loc13_ && _loc14_;
               _loc5_++;
            }
            if(_loc12_ && _loc13_)
            {
               break;
            }
            _loc4_++;
         }
         this.§@2§(_loc8_.§?p§);
         if(param3)
         {
            _loc15_ = Number.MAX_VALUE;
            _loc16_ = b2Settings.b2_linearSleepTolerance * b2Settings.b2_linearSleepTolerance;
            _loc17_ = b2Settings.b2_angularSleepTolerance * b2Settings.b2_angularSleepTolerance;
            _loc4_ = 0;
            while(_loc4_ < this.§,l§)
            {
               if((_loc6_ = this.§50§[_loc4_]).§&!B§() != b2Body.b2_staticBody)
               {
                  if((_loc6_.§`M§ & b2Body.§=!A§) == 0)
                  {
                     _loc6_.§@V§ = 0;
                     _loc15_ = 0;
                  }
                  if((_loc6_.§`M§ & b2Body.§=!A§) == 0 || _loc6_.m_angularVelocity * _loc6_.m_angularVelocity > _loc17_ || b2Math.§#!?§(_loc6_.§?!%§,_loc6_.§?!%§) > _loc16_)
                  {
                     _loc6_.§@V§ = 0;
                     _loc15_ = 0;
                  }
                  else
                  {
                     _loc6_.§@V§ += param1.§4l§;
                     _loc15_ = b2Math.§4!T§(_loc15_,_loc6_.§@V§);
                  }
               }
               _loc4_++;
            }
            if(_loc15_ >= b2Settings.b2_timeToSleep)
            {
               _loc4_ = 0;
               while(_loc4_ < this.§,l§)
               {
                  (_loc6_ = this.§50§[_loc4_]).SetAwake(false);
                  _loc4_++;
               }
            }
         }
      }
      
      public function §4!5§(param1:b2TimeStep) : void
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
         this.§3$§.§1!O§(param1,this.§^J§,this.§2!D§,this.§-d§);
         var _loc4_:b2ContactSolver = this.§3$§;
         _loc2_ = 0;
         while(_loc2_ < this.§=`§)
         {
            this.§&!o§[_loc2_].InitVelocityConstraints(param1);
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < param1.§<C§)
         {
            _loc4_.SolveVelocityConstraints();
            _loc3_ = 0;
            while(_loc3_ < this.§=`§)
            {
               this.§&!o§[_loc3_].SolveVelocityConstraints(param1);
               _loc3_++;
            }
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§,l§)
         {
            if((_loc6_ = this.§50§[_loc2_]).§&!B§() != b2Body.b2_staticBody)
            {
               _loc7_ = param1.§4l§ * _loc6_.§?!%§.x;
               _loc8_ = param1.§4l§ * _loc6_.§?!%§.y;
               if(_loc7_ * _loc7_ + _loc8_ * _loc8_ > b2Settings.b2_maxTranslationSquared)
               {
                  _loc6_.§?!%§.Normalize();
                  _loc6_.§?!%§.x *= b2Settings.b2_maxTranslation * param1.§?!,§;
                  _loc6_.§?!%§.y *= b2Settings.b2_maxTranslation * param1.§?!,§;
               }
               _loc9_ = param1.§4l§ * _loc6_.m_angularVelocity;
               if(_loc9_ * _loc9_ > b2Settings.b2_maxRotationSquared)
               {
                  if(_loc6_.m_angularVelocity < 0)
                  {
                     _loc6_.m_angularVelocity = -b2Settings.b2_maxRotation * param1.§?!,§;
                  }
                  else
                  {
                     _loc6_.m_angularVelocity = b2Settings.b2_maxRotation * param1.§?!,§;
                  }
               }
               _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.c);
               _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
               _loc6_.m_sweep.c.x += param1.§4l§ * _loc6_.§?!%§.x;
               _loc6_.m_sweep.c.y += param1.§4l§ * _loc6_.§?!%§.y;
               _loc6_.m_sweep.a += param1.§4l§ * _loc6_.m_angularVelocity;
               _loc6_.§5!%§();
            }
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < param1.§^!j§)
         {
            _loc10_ = _loc4_.SolvePositionConstraints(0.75);
            _loc11_ = true;
            _loc3_ = 0;
            while(_loc3_ < this.§=`§)
            {
               _loc12_ = this.§&!o§[_loc3_].SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
               _loc11_ = _loc11_ && _loc12_;
               _loc3_++;
            }
            if(_loc10_ && _loc11_)
            {
               break;
            }
            _loc2_++;
         }
         this.§@2§(_loc4_.§?p§);
      }
      
      public function §@2§(param1:Vector.<b2ContactConstraint>) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2ContactConstraint = null;
         var _loc5_:int = 0;
         if(this.§1!,§ == null)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§2!D§)
         {
            _loc3_ = this.§^J§[_loc2_];
            _loc4_ = param1[_loc2_];
            _loc5_ = 0;
            while(_loc5_ < _loc4_.§'c§)
            {
               §9!^§.§7q§[_loc5_] = _loc4_.§#!j§[_loc5_].normalImpulse;
               §9!^§.§>I§[_loc5_] = _loc4_.§#!j§[_loc5_].tangentImpulse;
               _loc5_++;
            }
            this.§1!,§.PostSolve(_loc3_,§9!^§);
            _loc2_++;
         }
      }
      
      public function §=@§(param1:b2Body) : void
      {
         param1.§;!1§ = this.§,l§;
         var _loc2_:* = this.§,l§++;
         this.§50§[_loc2_] = param1;
      }
      
      public function §"!U§(param1:b2Contact) : void
      {
         var _loc2_:* = this.§2!D§++;
         this.§^J§[_loc2_] = param1;
      }
      
      public function §-!^§(param1:b2Joint) : void
      {
         var _loc2_:* = this.§=`§++;
         this.§&!o§[_loc2_] = param1;
      }
   }
}
