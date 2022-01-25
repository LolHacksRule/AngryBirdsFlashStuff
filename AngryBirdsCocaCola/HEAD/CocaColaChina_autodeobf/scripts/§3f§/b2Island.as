package §3f§
{
   import §&!L§.*;
   import §6$§.*;
   import §7!C§.*;
   import §<l§.*;
   import §=!!§.*;
   
   use namespace b2internal;
   
   public class b2Island
   {
      
      private static var §#I§:b2ContactImpulse = new b2ContactImpulse();
       
      
      private var §?K§;
      
      private var §#!B§:b2ContactListener;
      
      private var §1N§:b2ContactSolver;
      
      b2internal var § null§:Vector.<b2Body>;
      
      b2internal var §2<§:Vector.<b2Contact>;
      
      b2internal var §@!_§:Vector.<b2Joint>;
      
      b2internal var §0]§:int;
      
      b2internal var §@u§:int;
      
      b2internal var §0@§:int;
      
      private var §4y§:int;
      
      b2internal var §=!C§:int;
      
      b2internal var §>#§:int;
      
      public function b2Island()
      {
         super();
         this.§ null§ = new Vector.<b2Body>();
         this.§2<§ = new Vector.<b2Contact>();
         this.§@!_§ = new Vector.<b2Joint>();
      }
      
      public function §1!5§(param1:int, param2:int, param3:int, param4:*, param5:b2ContactListener, param6:b2ContactSolver) : void
      {
         var _loc7_:int = 0;
         this.§4y§ = param1;
         this.§=!C§ = param2;
         this.§>#§ = param3;
         this.§0]§ = 0;
         this.§0@§ = 0;
         this.§@u§ = 0;
         this.§?K§ = param4;
         this.§#!B§ = param5;
         this.§1N§ = param6;
         _loc7_ = this.§ null§.length;
         while(_loc7_ < param1)
         {
            this.§ null§[_loc7_] = null;
            _loc7_++;
         }
         _loc7_ = this.§2<§.length;
         while(_loc7_ < param2)
         {
            this.§2<§[_loc7_] = null;
            _loc7_++;
         }
         _loc7_ = this.§@!_§.length;
         while(_loc7_ < param3)
         {
            this.§@!_§[_loc7_] = null;
            _loc7_++;
         }
      }
      
      public function §-X§() : void
      {
         this.§0]§ = 0;
         this.§0@§ = 0;
         this.§@u§ = 0;
      }
      
      public function §#m§(param1:b2TimeStep, param2:b2Vec2, param3:Boolean) : void
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
         while(_loc4_ < this.§0]§)
         {
            if((_loc6_ = this.§ null§[_loc4_]).§6`§() == b2Body.b2_dynamicBody)
            {
               _loc6_.§9!Q§.x += param1.§"p§ * (param2.x + _loc6_.§3!`§ * _loc6_.§'!=§.x);
               _loc6_.§9!Q§.y += param1.§"p§ * (param2.y + _loc6_.§3!`§ * _loc6_.§'!=§.y);
               _loc6_.m_angularVelocity += param1.§"p§ * _loc6_.§=4§ * _loc6_.set;
               _loc6_.§9!Q§.§?!4§(b2Math.§2m§(1 - param1.§"p§ * _loc6_.§!! §,0,1));
               _loc6_.m_angularVelocity *= b2Math.§2m§(1 - param1.§"p§ * _loc6_.§84§,0,1);
            }
            _loc4_++;
         }
         this.§1N§.§1!5§(param1,this.§2<§,this.§0@§,this.§?K§);
         var _loc8_:b2ContactSolver;
         (_loc8_ = this.§1N§).InitVelocityConstraints(param1);
         _loc4_ = 0;
         while(_loc4_ < this.§@u§)
         {
            (_loc7_ = this.§@!_§[_loc4_]).InitVelocityConstraints(param1);
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < param1.§21§)
         {
            _loc5_ = 0;
            while(_loc5_ < this.§@u§)
            {
               (_loc7_ = this.§@!_§[_loc5_]).SolveVelocityConstraints(param1);
               _loc5_++;
            }
            _loc8_.SolveVelocityConstraints();
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < this.§@u§)
         {
            (_loc7_ = this.§@!_§[_loc4_]).§?!-§();
            _loc4_++;
         }
         _loc8_.§?!-§();
         _loc4_ = 0;
         while(_loc4_ < this.§0]§)
         {
            if((_loc6_ = this.§ null§[_loc4_]).§6`§() != b2Body.b2_staticBody)
            {
               _loc9_ = param1.§"p§ * _loc6_.§9!Q§.x;
               _loc10_ = param1.§"p§ * _loc6_.§9!Q§.y;
               if(_loc9_ * _loc9_ + _loc10_ * _loc10_ > b2Settings.b2_maxTranslationSquared)
               {
                  _loc6_.§9!Q§.Normalize();
                  _loc6_.§9!Q§.x *= b2Settings.b2_maxTranslation * param1.§&V§;
                  _loc6_.§9!Q§.y *= b2Settings.b2_maxTranslation * param1.§&V§;
               }
               _loc11_ = param1.§"p§ * _loc6_.m_angularVelocity;
               if(_loc11_ * _loc11_ > b2Settings.b2_maxRotationSquared)
               {
                  if(_loc6_.m_angularVelocity < 0)
                  {
                     _loc6_.m_angularVelocity = -b2Settings.b2_maxRotation * param1.§&V§;
                  }
                  else
                  {
                     _loc6_.m_angularVelocity = b2Settings.b2_maxRotation * param1.§&V§;
                  }
               }
               _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.c);
               _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
               _loc6_.m_sweep.c.x += param1.§"p§ * _loc6_.§9!Q§.x;
               _loc6_.m_sweep.c.y += param1.§"p§ * _loc6_.§9!Q§.y;
               _loc6_.m_sweep.a += param1.§"p§ * _loc6_.m_angularVelocity;
               _loc6_.§4B§();
            }
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < param1.§4X§)
         {
            _loc12_ = _loc8_.SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
            _loc13_ = true;
            _loc5_ = 0;
            while(_loc5_ < this.§@u§)
            {
               _loc14_ = (_loc7_ = this.§@!_§[_loc5_]).SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
               _loc13_ = _loc13_ && _loc14_;
               _loc5_++;
            }
            if(_loc12_ && _loc13_)
            {
               break;
            }
            _loc4_++;
         }
         this.§0O§(_loc8_.§ +§);
         if(param3)
         {
            _loc15_ = Number.MAX_VALUE;
            _loc16_ = b2Settings.b2_linearSleepTolerance * b2Settings.b2_linearSleepTolerance;
            _loc17_ = b2Settings.b2_angularSleepTolerance * b2Settings.b2_angularSleepTolerance;
            _loc4_ = 0;
            while(_loc4_ < this.§0]§)
            {
               if((_loc6_ = this.§ null§[_loc4_]).§6`§() != b2Body.b2_staticBody)
               {
                  if((_loc6_.§^!B§ & b2Body.§;!B§) == 0)
                  {
                     _loc6_.§,O§ = 0;
                     _loc15_ = 0;
                  }
                  if((_loc6_.§^!B§ & b2Body.§;!B§) == 0 || _loc6_.m_angularVelocity * _loc6_.m_angularVelocity > _loc17_ || b2Math.§2!+§(_loc6_.§9!Q§,_loc6_.§9!Q§) > _loc16_)
                  {
                     _loc6_.§,O§ = 0;
                     _loc15_ = 0;
                  }
                  else
                  {
                     _loc6_.§,O§ += param1.§"p§;
                     _loc15_ = b2Math.§9h§(_loc15_,_loc6_.§,O§);
                  }
               }
               _loc4_++;
            }
            if(_loc15_ >= b2Settings.b2_timeToSleep)
            {
               _loc4_ = 0;
               while(_loc4_ < this.§0]§)
               {
                  (_loc6_ = this.§ null§[_loc4_]).SetAwake(false);
                  _loc4_++;
               }
            }
         }
      }
      
      public function §'b§(param1:b2TimeStep) : void
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
         this.§1N§.§1!5§(param1,this.§2<§,this.§0@§,this.§?K§);
         var _loc4_:b2ContactSolver = this.§1N§;
         _loc2_ = 0;
         while(_loc2_ < this.§@u§)
         {
            this.§@!_§[_loc2_].InitVelocityConstraints(param1);
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < param1.§21§)
         {
            _loc4_.SolveVelocityConstraints();
            _loc3_ = 0;
            while(_loc3_ < this.§@u§)
            {
               this.§@!_§[_loc3_].SolveVelocityConstraints(param1);
               _loc3_++;
            }
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§0]§)
         {
            if((_loc6_ = this.§ null§[_loc2_]).§6`§() != b2Body.b2_staticBody)
            {
               _loc7_ = param1.§"p§ * _loc6_.§9!Q§.x;
               _loc8_ = param1.§"p§ * _loc6_.§9!Q§.y;
               if(_loc7_ * _loc7_ + _loc8_ * _loc8_ > b2Settings.b2_maxTranslationSquared)
               {
                  _loc6_.§9!Q§.Normalize();
                  _loc6_.§9!Q§.x *= b2Settings.b2_maxTranslation * param1.§&V§;
                  _loc6_.§9!Q§.y *= b2Settings.b2_maxTranslation * param1.§&V§;
               }
               _loc9_ = param1.§"p§ * _loc6_.m_angularVelocity;
               if(_loc9_ * _loc9_ > b2Settings.b2_maxRotationSquared)
               {
                  if(_loc6_.m_angularVelocity < 0)
                  {
                     _loc6_.m_angularVelocity = -b2Settings.b2_maxRotation * param1.§&V§;
                  }
                  else
                  {
                     _loc6_.m_angularVelocity = b2Settings.b2_maxRotation * param1.§&V§;
                  }
               }
               _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.c);
               _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
               _loc6_.m_sweep.c.x += param1.§"p§ * _loc6_.§9!Q§.x;
               _loc6_.m_sweep.c.y += param1.§"p§ * _loc6_.§9!Q§.y;
               _loc6_.m_sweep.a += param1.§"p§ * _loc6_.m_angularVelocity;
               _loc6_.§4B§();
            }
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < param1.§4X§)
         {
            _loc10_ = _loc4_.SolvePositionConstraints(0.75);
            _loc11_ = true;
            _loc3_ = 0;
            while(_loc3_ < this.§@u§)
            {
               _loc12_ = this.§@!_§[_loc3_].SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
               _loc11_ = _loc11_ && _loc12_;
               _loc3_++;
            }
            if(_loc10_ && _loc11_)
            {
               break;
            }
            _loc2_++;
         }
         this.§0O§(_loc4_.§ +§);
      }
      
      public function §0O§(param1:Vector.<b2ContactConstraint>) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2ContactConstraint = null;
         var _loc5_:int = 0;
         if(this.§#!B§ == null)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§0@§)
         {
            _loc3_ = this.§2<§[_loc2_];
            _loc4_ = param1[_loc2_];
            _loc5_ = 0;
            while(_loc5_ < _loc4_.§!-§)
            {
               §#I§.§10§[_loc5_] = _loc4_.§@!M§[_loc5_].normalImpulse;
               §#I§.§5J§[_loc5_] = _loc4_.§@!M§[_loc5_].tangentImpulse;
               _loc5_++;
            }
            this.§#!B§.PostSolve(_loc3_,§#I§);
            _loc2_++;
         }
      }
      
      public function §9v§(param1:b2Body) : void
      {
         param1.§0,§ = this.§0]§;
         var _loc2_:* = this.§0]§++;
         this.§ null§[_loc2_] = param1;
      }
      
      public function §#t§(param1:b2Contact) : void
      {
         var _loc2_:* = this.§0@§++;
         this.§2<§[_loc2_] = param1;
      }
      
      public function §`!9§(param1:b2Joint) : void
      {
         var _loc2_:* = this.§@u§++;
         this.§@!_§[_loc2_] = param1;
      }
   }
}
