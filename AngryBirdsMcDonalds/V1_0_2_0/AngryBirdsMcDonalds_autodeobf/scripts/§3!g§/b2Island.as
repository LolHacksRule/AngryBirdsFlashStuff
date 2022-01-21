package §3!g§
{
   import §"U§.*;
   import §'!9§.*;
   import §<!!§.*;
   import §=!X§.*;
   import §`!Z§.*;
   
   use namespace b2internal;
   
   public class b2Island
   {
      
      private static var §do§:b2ContactImpulse = new b2ContactImpulse();
       
      
      private var §?;§;
      
      private var §5t§:b2ContactListener;
      
      private var §6r§:b2ContactSolver;
      
      b2internal var §9!F§:Vector.<b2Body>;
      
      b2internal var §7!<§:Vector.<b2Contact>;
      
      b2internal var §7_§:Vector.<b2Joint>;
      
      b2internal var §1]§:int;
      
      b2internal var §"`§:int;
      
      b2internal var §,!7§:int;
      
      private var §<e§:int;
      
      b2internal var §+S§:int;
      
      b2internal var §]r§:int;
      
      public function b2Island()
      {
         super();
         this.§9!F§ = new Vector.<b2Body>();
         this.§7!<§ = new Vector.<b2Contact>();
         this.§7_§ = new Vector.<b2Joint>();
      }
      
      public function §6!_§(param1:int, param2:int, param3:int, param4:*, param5:b2ContactListener, param6:b2ContactSolver) : void
      {
         var _loc7_:int = 0;
         this.§<e§ = param1;
         this.§+S§ = param2;
         this.§]r§ = param3;
         this.§1]§ = 0;
         this.§,!7§ = 0;
         this.§"`§ = 0;
         this.§?;§ = param4;
         this.§5t§ = param5;
         this.§6r§ = param6;
         _loc7_ = this.§9!F§.length;
         while(_loc7_ < param1)
         {
            this.§9!F§[_loc7_] = null;
            _loc7_++;
         }
         _loc7_ = this.§7!<§.length;
         while(_loc7_ < param2)
         {
            this.§7!<§[_loc7_] = null;
            _loc7_++;
         }
         _loc7_ = this.§7_§.length;
         while(_loc7_ < param3)
         {
            this.§7_§[_loc7_] = null;
            _loc7_++;
         }
      }
      
      public function §-!<§() : void
      {
         this.§1]§ = 0;
         this.§,!7§ = 0;
         this.§"`§ = 0;
      }
      
      public function §`D§(param1:b2TimeStep, param2:b2Vec2, param3:Boolean) : void
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
         while(_loc4_ < this.§1]§)
         {
            if((_loc6_ = this.§9!F§[_loc4_]).§^!A§() == b2Body.b2_dynamicBody)
            {
               _loc6_.§'R§.x += param1.§+n§ * (param2.x + _loc6_.§>w§ * _loc6_.§0!-§.x);
               _loc6_.§'R§.y += param1.§+n§ * (param2.y + _loc6_.§>w§ * _loc6_.§0!-§.y);
               _loc6_.m_angularVelocity += param1.§+n§ * _loc6_.§#R§ * _loc6_.§+!N§;
               _loc6_.§'R§.§7!E§(b2Math.§=!5§(1 - param1.§+n§ * _loc6_.§;!M§,0,1));
               _loc6_.m_angularVelocity *= b2Math.§=!5§(1 - param1.§+n§ * _loc6_.§ r§,0,1);
            }
            _loc4_++;
         }
         this.§6r§.§6!_§(param1,this.§7!<§,this.§,!7§,this.§?;§);
         var _loc8_:b2ContactSolver;
         (_loc8_ = this.§6r§).InitVelocityConstraints(param1);
         _loc4_ = 0;
         while(_loc4_ < this.§"`§)
         {
            (_loc7_ = this.§7_§[_loc4_]).InitVelocityConstraints(param1);
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < param1.§=B§)
         {
            _loc5_ = 0;
            while(_loc5_ < this.§"`§)
            {
               (_loc7_ = this.§7_§[_loc5_]).SolveVelocityConstraints(param1);
               _loc5_++;
            }
            _loc8_.SolveVelocityConstraints();
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < this.§"`§)
         {
            (_loc7_ = this.§7_§[_loc4_]).§8`§();
            _loc4_++;
         }
         _loc8_.§8`§();
         _loc4_ = 0;
         while(_loc4_ < this.§1]§)
         {
            if((_loc6_ = this.§9!F§[_loc4_]).§^!A§() != b2Body.b2_staticBody)
            {
               _loc9_ = param1.§+n§ * _loc6_.§'R§.x;
               _loc10_ = param1.§+n§ * _loc6_.§'R§.y;
               if(_loc9_ * _loc9_ + _loc10_ * _loc10_ > b2Settings.b2_maxTranslationSquared)
               {
                  _loc6_.§'R§.Normalize();
                  _loc6_.§'R§.x *= b2Settings.b2_maxTranslation * param1.§#!7§;
                  _loc6_.§'R§.y *= b2Settings.b2_maxTranslation * param1.§#!7§;
               }
               _loc11_ = param1.§+n§ * _loc6_.m_angularVelocity;
               if(_loc11_ * _loc11_ > b2Settings.b2_maxRotationSquared)
               {
                  if(_loc6_.m_angularVelocity < 0)
                  {
                     _loc6_.m_angularVelocity = -b2Settings.b2_maxRotation * param1.§#!7§;
                  }
                  else
                  {
                     _loc6_.m_angularVelocity = b2Settings.b2_maxRotation * param1.§#!7§;
                  }
               }
               _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.c);
               _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
               _loc6_.m_sweep.c.x += param1.§+n§ * _loc6_.§'R§.x;
               _loc6_.m_sweep.c.y += param1.§+n§ * _loc6_.§'R§.y;
               _loc6_.m_sweep.a += param1.§+n§ * _loc6_.m_angularVelocity;
               _loc6_.§4j§();
            }
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < param1.§0y§)
         {
            _loc12_ = _loc8_.SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
            _loc13_ = true;
            _loc5_ = 0;
            while(_loc5_ < this.§"`§)
            {
               _loc14_ = (_loc7_ = this.§7_§[_loc5_]).SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
               _loc13_ = _loc13_ && _loc14_;
               _loc5_++;
            }
            if(_loc12_ && _loc13_)
            {
               break;
            }
            _loc4_++;
         }
         this.§3!R§(_loc8_.§+!E§);
         if(param3)
         {
            _loc15_ = Number.MAX_VALUE;
            _loc16_ = b2Settings.b2_linearSleepTolerance * b2Settings.b2_linearSleepTolerance;
            _loc17_ = b2Settings.b2_angularSleepTolerance * b2Settings.b2_angularSleepTolerance;
            _loc4_ = 0;
            while(_loc4_ < this.§1]§)
            {
               if((_loc6_ = this.§9!F§[_loc4_]).§^!A§() != b2Body.b2_staticBody)
               {
                  if((_loc6_.§9!U§ & b2Body.§]Q§) == 0)
                  {
                     _loc6_.§5O§ = 0;
                     _loc15_ = 0;
                  }
                  if((_loc6_.§9!U§ & b2Body.§]Q§) == 0 || _loc6_.m_angularVelocity * _loc6_.m_angularVelocity > _loc17_ || b2Math.§`z§(_loc6_.§'R§,_loc6_.§'R§) > _loc16_)
                  {
                     _loc6_.§5O§ = 0;
                     _loc15_ = 0;
                  }
                  else
                  {
                     _loc6_.§5O§ += param1.§+n§;
                     _loc15_ = b2Math.§+!b§(_loc15_,_loc6_.§5O§);
                  }
               }
               _loc4_++;
            }
            if(_loc15_ >= b2Settings.b2_timeToSleep)
            {
               _loc4_ = 0;
               while(_loc4_ < this.§1]§)
               {
                  (_loc6_ = this.§9!F§[_loc4_]).SetAwake(false);
                  _loc4_++;
               }
            }
         }
      }
      
      public function §+!S§(param1:b2TimeStep) : void
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
         this.§6r§.§6!_§(param1,this.§7!<§,this.§,!7§,this.§?;§);
         var _loc4_:b2ContactSolver = this.§6r§;
         _loc2_ = 0;
         while(_loc2_ < this.§"`§)
         {
            this.§7_§[_loc2_].InitVelocityConstraints(param1);
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < param1.§=B§)
         {
            _loc4_.SolveVelocityConstraints();
            _loc3_ = 0;
            while(_loc3_ < this.§"`§)
            {
               this.§7_§[_loc3_].SolveVelocityConstraints(param1);
               _loc3_++;
            }
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§1]§)
         {
            if((_loc6_ = this.§9!F§[_loc2_]).§^!A§() != b2Body.b2_staticBody)
            {
               _loc7_ = param1.§+n§ * _loc6_.§'R§.x;
               _loc8_ = param1.§+n§ * _loc6_.§'R§.y;
               if(_loc7_ * _loc7_ + _loc8_ * _loc8_ > b2Settings.b2_maxTranslationSquared)
               {
                  _loc6_.§'R§.Normalize();
                  _loc6_.§'R§.x *= b2Settings.b2_maxTranslation * param1.§#!7§;
                  _loc6_.§'R§.y *= b2Settings.b2_maxTranslation * param1.§#!7§;
               }
               _loc9_ = param1.§+n§ * _loc6_.m_angularVelocity;
               if(_loc9_ * _loc9_ > b2Settings.b2_maxRotationSquared)
               {
                  if(_loc6_.m_angularVelocity < 0)
                  {
                     _loc6_.m_angularVelocity = -b2Settings.b2_maxRotation * param1.§#!7§;
                  }
                  else
                  {
                     _loc6_.m_angularVelocity = b2Settings.b2_maxRotation * param1.§#!7§;
                  }
               }
               _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.c);
               _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
               _loc6_.m_sweep.c.x += param1.§+n§ * _loc6_.§'R§.x;
               _loc6_.m_sweep.c.y += param1.§+n§ * _loc6_.§'R§.y;
               _loc6_.m_sweep.a += param1.§+n§ * _loc6_.m_angularVelocity;
               _loc6_.§4j§();
            }
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < param1.§0y§)
         {
            _loc10_ = _loc4_.SolvePositionConstraints(0.75);
            _loc11_ = true;
            _loc3_ = 0;
            while(_loc3_ < this.§"`§)
            {
               _loc12_ = this.§7_§[_loc3_].SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
               _loc11_ = _loc11_ && _loc12_;
               _loc3_++;
            }
            if(_loc10_ && _loc11_)
            {
               break;
            }
            _loc2_++;
         }
         this.§3!R§(_loc4_.§+!E§);
      }
      
      public function §3!R§(param1:Vector.<b2ContactConstraint>) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2ContactConstraint = null;
         var _loc5_:int = 0;
         if(this.§5t§ == null)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§,!7§)
         {
            _loc3_ = this.§7!<§[_loc2_];
            _loc4_ = param1[_loc2_];
            _loc5_ = 0;
            while(_loc5_ < _loc4_.§[3§)
            {
               §do§.§1v§[_loc5_] = _loc4_.§"!T§[_loc5_].normalImpulse;
               §do§.§@o§[_loc5_] = _loc4_.§"!T§[_loc5_].tangentImpulse;
               _loc5_++;
            }
            this.§5t§.PostSolve(_loc3_,§do§);
            _loc2_++;
         }
      }
      
      public function §&8§(param1:b2Body) : void
      {
         param1.§"k§ = this.§1]§;
         var _loc2_:* = this.§1]§++;
         this.§9!F§[_loc2_] = param1;
      }
      
      public function §<v§(param1:b2Contact) : void
      {
         var _loc2_:* = this.§,!7§++;
         this.§7!<§[_loc2_] = param1;
      }
      
      public function §7k§(param1:b2Joint) : void
      {
         var _loc2_:* = this.§"`§++;
         this.§7_§[_loc2_] = param1;
      }
   }
}
