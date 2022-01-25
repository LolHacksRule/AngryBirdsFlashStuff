package §=!U§
{
   import §"!R§.*;
   import §4N§.*;
   import §;!7§.*;
   import §@M§.*;
   import §implements§.*;
   
   use namespace b2internal;
   
   public class b2Island
   {
      
      private static var §2!<§:b2ContactImpulse = new b2ContactImpulse();
       
      
      private var §2!Q§;
      
      private var §7!K§:b2ContactListener;
      
      private var §,!8§:b2ContactSolver;
      
      b2internal var §[!U§:Vector.<b2Body>;
      
      b2internal var §2!T§:Vector.<b2Contact>;
      
      b2internal var §`!<§:Vector.<b2Joint>;
      
      b2internal var §3r§:int;
      
      b2internal var §+!5§:int;
      
      b2internal var § r§:int;
      
      private var §@v§:int;
      
      b2internal var §3U§:int;
      
      b2internal var §&p§:int;
      
      public function b2Island()
      {
         super();
         this.§[!U§ = new Vector.<b2Body>();
         this.§2!T§ = new Vector.<b2Contact>();
         this.§`!<§ = new Vector.<b2Joint>();
      }
      
      public function §4$§(param1:int, param2:int, param3:int, param4:*, param5:b2ContactListener, param6:b2ContactSolver) : void
      {
         var _loc7_:int = 0;
         this.§@v§ = param1;
         this.§3U§ = param2;
         this.§&p§ = param3;
         this.§3r§ = 0;
         this.§ r§ = 0;
         this.§+!5§ = 0;
         this.§2!Q§ = param4;
         this.§7!K§ = param5;
         this.§,!8§ = param6;
         _loc7_ = this.§[!U§.length;
         while(_loc7_ < param1)
         {
            this.§[!U§[_loc7_] = null;
            _loc7_++;
         }
         _loc7_ = this.§2!T§.length;
         while(_loc7_ < param2)
         {
            this.§2!T§[_loc7_] = null;
            _loc7_++;
         }
         _loc7_ = this.§`!<§.length;
         while(_loc7_ < param3)
         {
            this.§`!<§[_loc7_] = null;
            _loc7_++;
         }
      }
      
      public function §<k§() : void
      {
         this.§3r§ = 0;
         this.§ r§ = 0;
         this.§+!5§ = 0;
      }
      
      public function §@!'§(param1:b2TimeStep, param2:b2Vec2, param3:Boolean) : void
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
         while(_loc4_ < this.§3r§)
         {
            if((_loc6_ = this.§[!U§[_loc4_]).§@e§() == b2Body.b2_dynamicBody)
            {
               _loc6_.§,!@§.x += param1.§5V§ * (param2.x + _loc6_.§1!G§ * _loc6_.§"-§.x);
               _loc6_.§,!@§.y += param1.§5V§ * (param2.y + _loc6_.§1!G§ * _loc6_.§"-§.y);
               _loc6_.m_angularVelocity += param1.§5V§ * _loc6_.§+$§ * _loc6_.§>E§;
               _loc6_.§,!@§.§]"§(b2Math.§+I§(1 - param1.§5V§ * _loc6_.§2#§,0,1));
               _loc6_.m_angularVelocity *= b2Math.§+I§(1 - param1.§5V§ * _loc6_.§8!G§,0,1);
            }
            _loc4_++;
         }
         this.§,!8§.§4$§(param1,this.§2!T§,this.§ r§,this.§2!Q§);
         var _loc8_:b2ContactSolver;
         (_loc8_ = this.§,!8§).InitVelocityConstraints(param1);
         _loc4_ = 0;
         while(_loc4_ < this.§+!5§)
         {
            (_loc7_ = this.§`!<§[_loc4_]).InitVelocityConstraints(param1);
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < param1.§[i§)
         {
            _loc5_ = 0;
            while(_loc5_ < this.§+!5§)
            {
               (_loc7_ = this.§`!<§[_loc5_]).SolveVelocityConstraints(param1);
               _loc5_++;
            }
            _loc8_.SolveVelocityConstraints();
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < this.§+!5§)
         {
            (_loc7_ = this.§`!<§[_loc4_]).§ <§();
            _loc4_++;
         }
         _loc8_.§ <§();
         _loc4_ = 0;
         while(_loc4_ < this.§3r§)
         {
            if((_loc6_ = this.§[!U§[_loc4_]).§@e§() != b2Body.b2_staticBody)
            {
               _loc9_ = param1.§5V§ * _loc6_.§,!@§.x;
               _loc10_ = param1.§5V§ * _loc6_.§,!@§.y;
               if(_loc9_ * _loc9_ + _loc10_ * _loc10_ > b2Settings.b2_maxTranslationSquared)
               {
                  _loc6_.§,!@§.Normalize();
                  _loc6_.§,!@§.x *= b2Settings.b2_maxTranslation * param1.§0L§;
                  _loc6_.§,!@§.y *= b2Settings.b2_maxTranslation * param1.§0L§;
               }
               _loc11_ = param1.§5V§ * _loc6_.m_angularVelocity;
               if(_loc11_ * _loc11_ > b2Settings.b2_maxRotationSquared)
               {
                  if(_loc6_.m_angularVelocity < 0)
                  {
                     _loc6_.m_angularVelocity = -b2Settings.b2_maxRotation * param1.§0L§;
                  }
                  else
                  {
                     _loc6_.m_angularVelocity = b2Settings.b2_maxRotation * param1.§0L§;
                  }
               }
               _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.c);
               _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
               _loc6_.m_sweep.c.x += param1.§5V§ * _loc6_.§,!@§.x;
               _loc6_.m_sweep.c.y += param1.§5V§ * _loc6_.§,!@§.y;
               _loc6_.m_sweep.a += param1.§5V§ * _loc6_.m_angularVelocity;
               _loc6_.§<8§();
            }
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < param1.§^o§)
         {
            _loc12_ = _loc8_.SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
            _loc13_ = true;
            _loc5_ = 0;
            while(_loc5_ < this.§+!5§)
            {
               _loc14_ = (_loc7_ = this.§`!<§[_loc5_]).SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
               _loc13_ = _loc13_ && _loc14_;
               _loc5_++;
            }
            if(_loc12_ && _loc13_)
            {
               break;
            }
            _loc4_++;
         }
         this.§&!a§(_loc8_.§^Y§);
         if(param3)
         {
            _loc15_ = Number.MAX_VALUE;
            _loc16_ = b2Settings.b2_linearSleepTolerance * b2Settings.b2_linearSleepTolerance;
            _loc17_ = b2Settings.b2_angularSleepTolerance * b2Settings.b2_angularSleepTolerance;
            _loc4_ = 0;
            while(_loc4_ < this.§3r§)
            {
               if((_loc6_ = this.§[!U§[_loc4_]).§@e§() != b2Body.b2_staticBody)
               {
                  if((_loc6_.§"_§ & b2Body.§1!,§) == 0)
                  {
                     _loc6_.§",§ = 0;
                     _loc15_ = 0;
                  }
                  if((_loc6_.§"_§ & b2Body.§1!,§) == 0 || _loc6_.m_angularVelocity * _loc6_.m_angularVelocity > _loc17_ || b2Math.§>i§(_loc6_.§,!@§,_loc6_.§,!@§) > _loc16_)
                  {
                     _loc6_.§",§ = 0;
                     _loc15_ = 0;
                  }
                  else
                  {
                     _loc6_.§",§ += param1.§5V§;
                     _loc15_ = b2Math.§^Q§(_loc15_,_loc6_.§",§);
                  }
               }
               _loc4_++;
            }
            if(_loc15_ >= b2Settings.b2_timeToSleep)
            {
               _loc4_ = 0;
               while(_loc4_ < this.§3r§)
               {
                  (_loc6_ = this.§[!U§[_loc4_]).SetAwake(false);
                  _loc4_++;
               }
            }
         }
      }
      
      public function §=!5§(param1:b2TimeStep) : void
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
         this.§,!8§.§4$§(param1,this.§2!T§,this.§ r§,this.§2!Q§);
         var _loc4_:b2ContactSolver = this.§,!8§;
         _loc2_ = 0;
         while(_loc2_ < this.§+!5§)
         {
            this.§`!<§[_loc2_].InitVelocityConstraints(param1);
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < param1.§[i§)
         {
            _loc4_.SolveVelocityConstraints();
            _loc3_ = 0;
            while(_loc3_ < this.§+!5§)
            {
               this.§`!<§[_loc3_].SolveVelocityConstraints(param1);
               _loc3_++;
            }
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§3r§)
         {
            if((_loc6_ = this.§[!U§[_loc2_]).§@e§() != b2Body.b2_staticBody)
            {
               _loc7_ = param1.§5V§ * _loc6_.§,!@§.x;
               _loc8_ = param1.§5V§ * _loc6_.§,!@§.y;
               if(_loc7_ * _loc7_ + _loc8_ * _loc8_ > b2Settings.b2_maxTranslationSquared)
               {
                  _loc6_.§,!@§.Normalize();
                  _loc6_.§,!@§.x *= b2Settings.b2_maxTranslation * param1.§0L§;
                  _loc6_.§,!@§.y *= b2Settings.b2_maxTranslation * param1.§0L§;
               }
               _loc9_ = param1.§5V§ * _loc6_.m_angularVelocity;
               if(_loc9_ * _loc9_ > b2Settings.b2_maxRotationSquared)
               {
                  if(_loc6_.m_angularVelocity < 0)
                  {
                     _loc6_.m_angularVelocity = -b2Settings.b2_maxRotation * param1.§0L§;
                  }
                  else
                  {
                     _loc6_.m_angularVelocity = b2Settings.b2_maxRotation * param1.§0L§;
                  }
               }
               _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.c);
               _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
               _loc6_.m_sweep.c.x += param1.§5V§ * _loc6_.§,!@§.x;
               _loc6_.m_sweep.c.y += param1.§5V§ * _loc6_.§,!@§.y;
               _loc6_.m_sweep.a += param1.§5V§ * _loc6_.m_angularVelocity;
               _loc6_.§<8§();
            }
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < param1.§^o§)
         {
            _loc10_ = _loc4_.SolvePositionConstraints(0.75);
            _loc11_ = true;
            _loc3_ = 0;
            while(_loc3_ < this.§+!5§)
            {
               _loc12_ = this.§`!<§[_loc3_].SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
               _loc11_ = _loc11_ && _loc12_;
               _loc3_++;
            }
            if(_loc10_ && _loc11_)
            {
               break;
            }
            _loc2_++;
         }
         this.§&!a§(_loc4_.§^Y§);
      }
      
      public function §&!a§(param1:Vector.<b2ContactConstraint>) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2ContactConstraint = null;
         var _loc5_:int = 0;
         if(this.§7!K§ == null)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§ r§)
         {
            _loc3_ = this.§2!T§[_loc2_];
            _loc4_ = param1[_loc2_];
            _loc5_ = 0;
            while(_loc5_ < _loc4_.§[>§)
            {
               §2!<§.§ if§[_loc5_] = _loc4_.§>!-§[_loc5_].normalImpulse;
               §2!<§.§#!^§[_loc5_] = _loc4_.§>!-§[_loc5_].tangentImpulse;
               _loc5_++;
            }
            this.§7!K§.PostSolve(_loc3_,§2!<§);
            _loc2_++;
         }
      }
      
      public function § k§(param1:b2Body) : void
      {
         param1.§"T§ = this.§3r§;
         var _loc2_:* = this.§3r§++;
         this.§[!U§[_loc2_] = param1;
      }
      
      public function §5h§(param1:b2Contact) : void
      {
         var _loc2_:* = this.§ r§++;
         this.§2!T§[_loc2_] = param1;
      }
      
      public function §7"§(param1:b2Joint) : void
      {
         var _loc2_:* = this.§+!5§++;
         this.§`!<§[_loc2_] = param1;
      }
   }
}
