package §7!q§
{
   import §,k§.*;
   import §-g§.*;
   import §1!z§.*;
   import §[M§.*;
   import §^%§.*;
   
   use namespace b2internal;
   
   public class b2Island
   {
      
      private static var §>V§:b2ContactImpulse = new b2ContactImpulse();
       
      
      private var §#&§;
      
      private var §03§:b2ContactListener;
      
      private var §1!e§:b2ContactSolver;
      
      b2internal var §3-§:Vector.<b2Body>;
      
      b2internal var §[d§:Vector.<b2Contact>;
      
      b2internal var §0!$§:Vector.<b2Joint>;
      
      b2internal var §3",§:int;
      
      b2internal var §5o§:int;
      
      b2internal var §>B§:int;
      
      private var §+"$§:int;
      
      b2internal var § !o§:int;
      
      b2internal var §3f§:int;
      
      public function b2Island()
      {
         super();
         this.§3-§ = new Vector.<b2Body>();
         this.§[d§ = new Vector.<b2Contact>();
         this.§0!$§ = new Vector.<b2Joint>();
      }
      
      public function §`!O§(param1:int, param2:int, param3:int, param4:*, param5:b2ContactListener, param6:b2ContactSolver) : void
      {
         var _loc7_:int = 0;
         this.§+"$§ = param1;
         this.§ !o§ = param2;
         this.§3f§ = param3;
         this.§3",§ = 0;
         this.§>B§ = 0;
         this.§5o§ = 0;
         this.§#&§ = param4;
         this.§03§ = param5;
         this.§1!e§ = param6;
         _loc7_ = this.§3-§.length;
         while(_loc7_ < param1)
         {
            this.§3-§[_loc7_] = null;
            _loc7_++;
         }
         _loc7_ = this.§[d§.length;
         while(_loc7_ < param2)
         {
            this.§[d§[_loc7_] = null;
            _loc7_++;
         }
         _loc7_ = this.§0!$§.length;
         while(_loc7_ < param3)
         {
            this.§0!$§[_loc7_] = null;
            _loc7_++;
         }
      }
      
      public function §"!R§() : void
      {
         this.§3",§ = 0;
         this.§>B§ = 0;
         this.§5o§ = 0;
      }
      
      public function §7!`§(param1:b2TimeStep, param2:b2Vec2, param3:Boolean) : void
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
         while(_loc4_ < this.§3",§)
         {
            if((_loc6_ = this.§3-§[_loc4_]).§7!r§() == b2Body.b2_dynamicBody)
            {
               _loc6_.§4X§.x += param1.§<e§ * (param2.x + _loc6_.§"!O§ * _loc6_.§8!t§.x);
               _loc6_.§4X§.y += param1.§<e§ * (param2.y + _loc6_.§"!O§ * _loc6_.§8!t§.y);
               _loc6_.m_angularVelocity += param1.§<e§ * _loc6_.§6""§ * _loc6_.§=!Z§;
               _loc6_.§4X§.§'q§(b2Math.§`"?§(1 - param1.§<e§ * _loc6_.§@$§,0,1));
               _loc6_.m_angularVelocity *= b2Math.§`"?§(1 - param1.§<e§ * _loc6_.§1!T§,0,1);
            }
            _loc4_++;
         }
         this.§1!e§.§`!O§(param1,this.§[d§,this.§>B§,this.§#&§);
         var _loc8_:b2ContactSolver;
         (_loc8_ = this.§1!e§).InitVelocityConstraints(param1);
         _loc4_ = 0;
         while(_loc4_ < this.§5o§)
         {
            (_loc7_ = this.§0!$§[_loc4_]).InitVelocityConstraints(param1);
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < param1.§&m§)
         {
            _loc5_ = 0;
            while(_loc5_ < this.§5o§)
            {
               (_loc7_ = this.§0!$§[_loc5_]).SolveVelocityConstraints(param1);
               _loc5_++;
            }
            _loc8_.SolveVelocityConstraints();
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < this.§5o§)
         {
            (_loc7_ = this.§0!$§[_loc4_]).§`'§();
            _loc4_++;
         }
         _loc8_.§`'§();
         _loc4_ = 0;
         while(_loc4_ < this.§3",§)
         {
            if((_loc6_ = this.§3-§[_loc4_]).§7!r§() != b2Body.b2_staticBody)
            {
               _loc9_ = param1.§<e§ * _loc6_.§4X§.x;
               _loc10_ = param1.§<e§ * _loc6_.§4X§.y;
               if(_loc9_ * _loc9_ + _loc10_ * _loc10_ > b2Settings.b2_maxTranslationSquared)
               {
                  _loc6_.§4X§.Normalize();
                  _loc6_.§4X§.x *= b2Settings.b2_maxTranslation * param1.§#!c§;
                  _loc6_.§4X§.y *= b2Settings.b2_maxTranslation * param1.§#!c§;
               }
               _loc11_ = param1.§<e§ * _loc6_.m_angularVelocity;
               if(_loc11_ * _loc11_ > b2Settings.b2_maxRotationSquared)
               {
                  if(_loc6_.m_angularVelocity < 0)
                  {
                     _loc6_.m_angularVelocity = -b2Settings.b2_maxRotation * param1.§#!c§;
                  }
                  else
                  {
                     _loc6_.m_angularVelocity = b2Settings.b2_maxRotation * param1.§#!c§;
                  }
               }
               _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.c);
               _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
               _loc6_.m_sweep.c.x += param1.§<e§ * _loc6_.§4X§.x;
               _loc6_.m_sweep.c.y += param1.§<e§ * _loc6_.§4X§.y;
               _loc6_.m_sweep.a += param1.§<e§ * _loc6_.m_angularVelocity;
               _loc6_.§<!S§();
            }
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < param1.§^1§)
         {
            _loc12_ = _loc8_.SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
            _loc13_ = true;
            _loc5_ = 0;
            while(_loc5_ < this.§5o§)
            {
               _loc14_ = (_loc7_ = this.§0!$§[_loc5_]).SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
               _loc13_ = _loc13_ && _loc14_;
               _loc5_++;
            }
            if(_loc12_ && _loc13_)
            {
               break;
            }
            _loc4_++;
         }
         this.§ !!§(_loc8_.§'!i§);
         if(param3)
         {
            _loc15_ = Number.MAX_VALUE;
            _loc16_ = b2Settings.b2_linearSleepTolerance * b2Settings.b2_linearSleepTolerance;
            _loc17_ = b2Settings.b2_angularSleepTolerance * b2Settings.b2_angularSleepTolerance;
            _loc4_ = 0;
            while(_loc4_ < this.§3",§)
            {
               if((_loc6_ = this.§3-§[_loc4_]).§7!r§() != b2Body.b2_staticBody)
               {
                  if((_loc6_.§["0§ & b2Body.§`"9§) == 0)
                  {
                     _loc6_.§=!T§ = 0;
                     _loc15_ = 0;
                  }
                  if((_loc6_.§["0§ & b2Body.§`"9§) == 0 || _loc6_.m_angularVelocity * _loc6_.m_angularVelocity > _loc17_ || b2Math.§9!%§(_loc6_.§4X§,_loc6_.§4X§) > _loc16_)
                  {
                     _loc6_.§=!T§ = 0;
                     _loc15_ = 0;
                  }
                  else
                  {
                     _loc6_.§=!T§ += param1.§<e§;
                     _loc15_ = b2Math.§7!-§(_loc15_,_loc6_.§=!T§);
                  }
               }
               _loc4_++;
            }
            if(_loc15_ >= b2Settings.b2_timeToSleep)
            {
               _loc4_ = 0;
               while(_loc4_ < this.§3",§)
               {
                  (_loc6_ = this.§3-§[_loc4_]).SetAwake(false);
                  _loc4_++;
               }
            }
         }
      }
      
      public function §`",§(param1:b2TimeStep) : void
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
         this.§1!e§.§`!O§(param1,this.§[d§,this.§>B§,this.§#&§);
         var _loc4_:b2ContactSolver = this.§1!e§;
         _loc2_ = 0;
         while(_loc2_ < this.§5o§)
         {
            this.§0!$§[_loc2_].InitVelocityConstraints(param1);
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < param1.§&m§)
         {
            _loc4_.SolveVelocityConstraints();
            _loc3_ = 0;
            while(_loc3_ < this.§5o§)
            {
               this.§0!$§[_loc3_].SolveVelocityConstraints(param1);
               _loc3_++;
            }
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§3",§)
         {
            if((_loc6_ = this.§3-§[_loc2_]).§7!r§() != b2Body.b2_staticBody)
            {
               _loc7_ = param1.§<e§ * _loc6_.§4X§.x;
               _loc8_ = param1.§<e§ * _loc6_.§4X§.y;
               if(_loc7_ * _loc7_ + _loc8_ * _loc8_ > b2Settings.b2_maxTranslationSquared)
               {
                  _loc6_.§4X§.Normalize();
                  _loc6_.§4X§.x *= b2Settings.b2_maxTranslation * param1.§#!c§;
                  _loc6_.§4X§.y *= b2Settings.b2_maxTranslation * param1.§#!c§;
               }
               _loc9_ = param1.§<e§ * _loc6_.m_angularVelocity;
               if(_loc9_ * _loc9_ > b2Settings.b2_maxRotationSquared)
               {
                  if(_loc6_.m_angularVelocity < 0)
                  {
                     _loc6_.m_angularVelocity = -b2Settings.b2_maxRotation * param1.§#!c§;
                  }
                  else
                  {
                     _loc6_.m_angularVelocity = b2Settings.b2_maxRotation * param1.§#!c§;
                  }
               }
               _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.c);
               _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
               _loc6_.m_sweep.c.x += param1.§<e§ * _loc6_.§4X§.x;
               _loc6_.m_sweep.c.y += param1.§<e§ * _loc6_.§4X§.y;
               _loc6_.m_sweep.a += param1.§<e§ * _loc6_.m_angularVelocity;
               _loc6_.§<!S§();
            }
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < param1.§^1§)
         {
            _loc10_ = _loc4_.SolvePositionConstraints(0.75);
            _loc11_ = true;
            _loc3_ = 0;
            while(_loc3_ < this.§5o§)
            {
               _loc12_ = this.§0!$§[_loc3_].SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
               _loc11_ = _loc11_ && _loc12_;
               _loc3_++;
            }
            if(_loc10_ && _loc11_)
            {
               break;
            }
            _loc2_++;
         }
         this.§ !!§(_loc4_.§'!i§);
      }
      
      public function § !!§(param1:Vector.<b2ContactConstraint>) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2ContactConstraint = null;
         var _loc5_:int = 0;
         if(this.§03§ == null)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§>B§)
         {
            _loc3_ = this.§[d§[_loc2_];
            _loc4_ = param1[_loc2_];
            _loc5_ = 0;
            while(_loc5_ < _loc4_.§<"3§)
            {
               §>V§.§;"5§[_loc5_] = _loc4_.§^!O§[_loc5_].normalImpulse;
               §>V§.§&!S§[_loc5_] = _loc4_.§^!O§[_loc5_].tangentImpulse;
               _loc5_++;
            }
            this.§03§.PostSolve(_loc3_,§>V§);
            _loc2_++;
         }
      }
      
      public function §3I§(param1:b2Body) : void
      {
         param1.§2Z§ = this.§3",§;
         var _loc2_:* = this.§3",§++;
         this.§3-§[_loc2_] = param1;
      }
      
      public function §5@§(param1:b2Contact) : void
      {
         var _loc2_:* = this.§>B§++;
         this.§[d§[_loc2_] = param1;
      }
      
      public function §!!y§(param1:b2Joint) : void
      {
         var _loc2_:* = this.§5o§++;
         this.§0!$§[_loc2_] = param1;
      }
   }
}
