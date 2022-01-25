package §0"!§
{
   import §!§.*;
   import §'!_§.*;
   import §23§.*;
   import §@!E§.*;
   import §@h§.*;
   
   use namespace b2internal;
   
   public class b2Island
   {
      
      private static var §^"4§:b2ContactImpulse = new b2ContactImpulse();
       
      
      private var §;!b§;
      
      private var §-c§:b2ContactListener;
      
      private var §^_§:b2ContactSolver;
      
      b2internal var §1!]§:Vector.<b2Body>;
      
      b2internal var §]J§:Vector.<b2Contact>;
      
      b2internal var §@I§:Vector.<b2Joint>;
      
      b2internal var §1a§:int;
      
      b2internal var § !%§:int;
      
      b2internal var §^" §:int;
      
      private var §>y§:int;
      
      b2internal var §>J§:int;
      
      b2internal var §3y§:int;
      
      public function b2Island()
      {
         super();
         this.§1!]§ = new Vector.<b2Body>();
         this.§]J§ = new Vector.<b2Contact>();
         this.§@I§ = new Vector.<b2Joint>();
      }
      
      public function §6R§(param1:int, param2:int, param3:int, param4:*, param5:b2ContactListener, param6:b2ContactSolver) : void
      {
         var _loc7_:int = 0;
         this.§>y§ = param1;
         this.§>J§ = param2;
         this.§3y§ = param3;
         this.§1a§ = 0;
         this.§^" § = 0;
         this.§ !%§ = 0;
         this.§;!b§ = param4;
         this.§-c§ = param5;
         this.§^_§ = param6;
         _loc7_ = this.§1!]§.length;
         while(_loc7_ < param1)
         {
            this.§1!]§[_loc7_] = null;
            _loc7_++;
         }
         _loc7_ = this.§]J§.length;
         while(_loc7_ < param2)
         {
            this.§]J§[_loc7_] = null;
            _loc7_++;
         }
         _loc7_ = this.§@I§.length;
         while(_loc7_ < param3)
         {
            this.§@I§[_loc7_] = null;
            _loc7_++;
         }
      }
      
      public function §7Y§() : void
      {
         this.§1a§ = 0;
         this.§^" § = 0;
         this.§ !%§ = 0;
      }
      
      public function §`"5§(param1:b2TimeStep, param2:b2Vec2, param3:Boolean) : void
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
         while(_loc4_ < this.§1a§)
         {
            if((_loc6_ = this.§1!]§[_loc4_]).§4!v§() == b2Body.b2_dynamicBody)
            {
               _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.c);
               _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
               _loc6_.§;!A§.x += param1.§"!n§ * (_loc6_.§@?§ * param2.x + _loc6_.§ c§ * _loc6_.§6",§.x);
               _loc6_.§;!A§.y += param1.§"!n§ * (_loc6_.§@?§ * param2.y + _loc6_.§ c§ * _loc6_.§6",§.y);
               _loc6_.m_angularVelocity += param1.§"!n§ * _loc6_.§"k§ * _loc6_.§?!u§;
               _loc6_.§;!A§.§",§(b2Math.§ !X§(1 - param1.§"!n§ * _loc6_.§!4§,0,1));
               _loc6_.m_angularVelocity *= b2Math.§ !X§(1 - param1.§"!n§ * _loc6_.§?I§,0,1);
            }
            _loc4_++;
         }
         this.§^_§.§6R§(param1,this.§]J§,this.§^" §,this.§;!b§);
         var _loc8_:b2ContactSolver;
         (_loc8_ = this.§^_§).InitVelocityConstraints(param1);
         _loc4_ = 0;
         while(_loc4_ < this.§ !%§)
         {
            (_loc7_ = this.§@I§[_loc4_]).InitVelocityConstraints(param1);
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < param1.§]!X§)
         {
            _loc5_ = 0;
            while(_loc5_ < this.§ !%§)
            {
               (_loc7_ = this.§@I§[_loc5_]).SolveVelocityConstraints(param1);
               _loc5_++;
            }
            _loc8_.SolveVelocityConstraints();
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < this.§ !%§)
         {
            (_loc7_ = this.§@I§[_loc4_]).§=Y§();
            _loc4_++;
         }
         _loc8_.§=Y§();
         _loc4_ = 0;
         while(_loc4_ < this.§1a§)
         {
            if((_loc6_ = this.§1!]§[_loc4_]).§4!v§() != b2Body.b2_staticBody)
            {
               _loc9_ = param1.§"!n§ * _loc6_.§;!A§.x;
               _loc10_ = param1.§"!n§ * _loc6_.§;!A§.y;
               if(_loc9_ * _loc9_ + _loc10_ * _loc10_ > b2Settings.b2_maxTranslationSquared)
               {
                  _loc6_.§;!A§.Normalize();
                  _loc6_.§;!A§.x *= b2Settings.b2_maxTranslation * param1.§=!9§;
                  _loc6_.§;!A§.y *= b2Settings.b2_maxTranslation * param1.§=!9§;
               }
               _loc11_ = param1.§"!n§ * _loc6_.m_angularVelocity;
               if(_loc11_ * _loc11_ > b2Settings.b2_maxRotationSquared)
               {
                  if(_loc6_.m_angularVelocity < 0)
                  {
                     _loc6_.m_angularVelocity = -b2Settings.b2_maxRotation * param1.§=!9§;
                  }
                  else
                  {
                     _loc6_.m_angularVelocity = b2Settings.b2_maxRotation * param1.§=!9§;
                  }
               }
               _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.c);
               _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
               _loc6_.m_sweep.c.x += param1.§"!n§ * _loc6_.§;!A§.x;
               _loc6_.m_sweep.c.y += param1.§"!n§ * _loc6_.§;!A§.y;
               _loc6_.m_sweep.a += param1.§"!n§ * _loc6_.m_angularVelocity;
               _loc6_.§+!X§();
            }
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < param1.§5"2§)
         {
            _loc12_ = _loc8_.SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
            _loc13_ = true;
            _loc5_ = 0;
            while(_loc5_ < this.§ !%§)
            {
               _loc14_ = (_loc7_ = this.§@I§[_loc5_]).SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
               _loc13_ = _loc13_ && _loc14_;
               _loc5_++;
            }
            if(_loc12_ && _loc13_)
            {
               break;
            }
            _loc4_++;
         }
         this.§&!9§(_loc8_.§,"+§);
         if(param3)
         {
            _loc15_ = Number.MAX_VALUE;
            _loc16_ = b2Settings.b2_linearSleepTolerance * b2Settings.b2_linearSleepTolerance;
            _loc17_ = b2Settings.b2_angularSleepTolerance * b2Settings.b2_angularSleepTolerance;
            _loc4_ = 0;
            while(_loc4_ < this.§1a§)
            {
               if((_loc6_ = this.§1!]§[_loc4_]).§4!v§() != b2Body.b2_staticBody)
               {
                  if((_loc6_.§1!h§ & b2Body.§5"4§) == 0)
                  {
                     _loc6_.§9!I§ = 0;
                     _loc15_ = 0;
                  }
                  if((_loc6_.§1!h§ & b2Body.§5"4§) == 0 || _loc6_.m_angularVelocity * _loc6_.m_angularVelocity > _loc17_ || b2Math.§,w§(_loc6_.§;!A§,_loc6_.§;!A§) > _loc16_)
                  {
                     _loc6_.§9!I§ = 0;
                     _loc15_ = 0;
                  }
                  else
                  {
                     _loc6_.§9!I§ += param1.§"!n§;
                     _loc15_ = b2Math.§5!!§(_loc15_,_loc6_.§9!I§);
                  }
               }
               _loc4_++;
            }
            if(_loc15_ >= b2Settings.b2_timeToSleep)
            {
               _loc4_ = 0;
               while(_loc4_ < this.§1a§)
               {
                  (_loc6_ = this.§1!]§[_loc4_]).SetAwake(false);
                  _loc4_++;
               }
            }
         }
      }
      
      public function §04§(param1:b2TimeStep) : void
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
         this.§^_§.§6R§(param1,this.§]J§,this.§^" §,this.§;!b§);
         var _loc4_:b2ContactSolver = this.§^_§;
         _loc2_ = 0;
         while(_loc2_ < this.§ !%§)
         {
            this.§@I§[_loc2_].InitVelocityConstraints(param1);
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < param1.§5"2§)
         {
            _loc6_ = _loc4_.SolvePositionConstraints(0.75);
            _loc7_ = true;
            _loc3_ = 0;
            while(_loc3_ < this.§ !%§)
            {
               _loc8_ = this.§@I§[_loc3_].SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
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
         while(_loc2_ < param1.§]!X§)
         {
            _loc4_.SolveVelocityConstraints();
            _loc3_ = 0;
            while(_loc3_ < this.§ !%§)
            {
               this.§@I§[_loc3_].SolveVelocityConstraints(param1);
               _loc3_++;
            }
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§1a§)
         {
            if((_loc9_ = this.§1!]§[_loc2_]).§4!v§() != b2Body.b2_staticBody)
            {
               _loc10_ = param1.§"!n§ * _loc9_.§;!A§.x;
               _loc11_ = param1.§"!n§ * _loc9_.§;!A§.y;
               if(_loc10_ * _loc10_ + _loc11_ * _loc11_ > b2Settings.b2_maxTranslationSquared)
               {
                  _loc9_.§;!A§.Normalize();
                  _loc9_.§;!A§.x *= b2Settings.b2_maxTranslation * param1.§=!9§;
                  _loc9_.§;!A§.y *= b2Settings.b2_maxTranslation * param1.§=!9§;
               }
               _loc12_ = param1.§"!n§ * _loc9_.m_angularVelocity;
               if(_loc12_ * _loc12_ > b2Settings.b2_maxRotationSquared)
               {
                  if(_loc9_.m_angularVelocity < 0)
                  {
                     _loc9_.m_angularVelocity = -b2Settings.b2_maxRotation * param1.§=!9§;
                  }
                  else
                  {
                     _loc9_.m_angularVelocity = b2Settings.b2_maxRotation * param1.§=!9§;
                  }
               }
               _loc9_.m_sweep.c0.SetV(_loc9_.m_sweep.c);
               _loc9_.m_sweep.a0 = _loc9_.m_sweep.a;
               _loc9_.m_sweep.c.x += param1.§"!n§ * _loc9_.§;!A§.x;
               _loc9_.m_sweep.c.y += param1.§"!n§ * _loc9_.§;!A§.y;
               _loc9_.m_sweep.a += param1.§"!n§ * _loc9_.m_angularVelocity;
               _loc9_.§+!X§();
            }
            _loc2_++;
         }
         this.§&!9§(_loc4_.§,"+§);
      }
      
      public function §&!9§(param1:Vector.<b2ContactConstraint>) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2ContactConstraint = null;
         var _loc5_:int = 0;
         if(this.§-c§ == null)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§^" §)
         {
            _loc3_ = this.§]J§[_loc2_];
            _loc4_ = param1[_loc2_];
            _loc5_ = 0;
            while(_loc5_ < _loc4_.§#!1§)
            {
               §^"4§.§?G§[_loc5_] = _loc4_.§>Q§[_loc5_].normalImpulse;
               §^"4§.§`4§[_loc5_] = _loc4_.§>Q§[_loc5_].tangentImpulse;
               _loc5_++;
            }
            this.§-c§.PostSolve(_loc3_,§^"4§);
            _loc2_++;
         }
      }
      
      public function §#!K§(param1:b2Body) : void
      {
         param1.§[!b§ = this.§1a§;
         var _loc2_:* = this.§1a§++;
         this.§1!]§[_loc2_] = param1;
      }
      
      public function §'<§(param1:b2Contact) : void
      {
         var _loc2_:* = this.§^" §++;
         this.§]J§[_loc2_] = param1;
      }
      
      public function §<>§(param1:b2Joint) : void
      {
         var _loc2_:* = this.§ !%§++;
         this.§@I§[_loc2_] = param1;
      }
   }
}
