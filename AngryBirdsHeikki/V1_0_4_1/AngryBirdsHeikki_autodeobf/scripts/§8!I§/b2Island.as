package §8!I§
{
   import §4x§.*;
   import §6>§.*;
   import §<"§.*;
   import §=i§.*;
   import §@!a§.*;
   
   use namespace b2internal;
   
   public class b2Island
   {
      
      private static var §4g§:b2ContactImpulse = new b2ContactImpulse();
       
      
      private var §=#§;
      
      private var §+R§:b2ContactListener;
      
      private var §1!^§:b2ContactSolver;
      
      b2internal var §=!K§:Vector.<b2Body>;
      
      b2internal var §-!b§:Vector.<b2Contact>;
      
      b2internal var §>m§:Vector.<b2Joint>;
      
      b2internal var §7X§:int;
      
      b2internal var §4z§:int;
      
      b2internal var §1!F§:int;
      
      private var §7B§:int;
      
      b2internal var §&! §:int;
      
      b2internal var §!!H§:int;
      
      public function b2Island()
      {
         super();
         this.§=!K§ = new Vector.<b2Body>();
         this.§-!b§ = new Vector.<b2Contact>();
         this.§>m§ = new Vector.<b2Joint>();
      }
      
      public function §;!%§(param1:int, param2:int, param3:int, param4:*, param5:b2ContactListener, param6:b2ContactSolver) : void
      {
         var _loc7_:int = 0;
         this.§7B§ = param1;
         this.§&! § = param2;
         this.§!!H§ = param3;
         this.§7X§ = 0;
         this.§1!F§ = 0;
         this.§4z§ = 0;
         this.§=#§ = param4;
         this.§+R§ = param5;
         this.§1!^§ = param6;
         _loc7_ = this.§=!K§.length;
         while(_loc7_ < param1)
         {
            this.§=!K§[_loc7_] = null;
            _loc7_++;
         }
         _loc7_ = this.§-!b§.length;
         while(_loc7_ < param2)
         {
            this.§-!b§[_loc7_] = null;
            _loc7_++;
         }
         _loc7_ = this.§>m§.length;
         while(_loc7_ < param3)
         {
            this.§>m§[_loc7_] = null;
            _loc7_++;
         }
      }
      
      public function §,@§() : void
      {
         this.§7X§ = 0;
         this.§1!F§ = 0;
         this.§4z§ = 0;
      }
      
      public function §6!W§(param1:b2TimeStep, param2:b2Vec2, param3:Boolean) : void
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
         while(_loc4_ < this.§7X§)
         {
            if((_loc6_ = this.§=!K§[_loc4_]).§<!M§() == b2Body.b2_dynamicBody)
            {
               _loc6_.§]J§.x += param1.§5!8§ * (param2.x + _loc6_.§=!C§ * _loc6_.§80§.x);
               _loc6_.§]J§.y += param1.§5!8§ * (param2.y + _loc6_.§=!C§ * _loc6_.§80§.y);
               _loc6_.m_angularVelocity += param1.§5!8§ * _loc6_.§!!§ * _loc6_.§^X§;
               _loc6_.§]J§.§[![§(b2Math.§%!c§(1 - param1.§5!8§ * _loc6_.§ !9§,0,1));
               _loc6_.m_angularVelocity *= b2Math.§%!c§(1 - param1.§5!8§ * _loc6_.§ !+§,0,1);
            }
            _loc4_++;
         }
         this.§1!^§.§;!%§(param1,this.§-!b§,this.§1!F§,this.§=#§);
         var _loc8_:b2ContactSolver;
         (_loc8_ = this.§1!^§).InitVelocityConstraints(param1);
         _loc4_ = 0;
         while(_loc4_ < this.§4z§)
         {
            (_loc7_ = this.§>m§[_loc4_]).InitVelocityConstraints(param1);
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < param1.§;!2§)
         {
            _loc5_ = 0;
            while(_loc5_ < this.§4z§)
            {
               (_loc7_ = this.§>m§[_loc5_]).SolveVelocityConstraints(param1);
               _loc5_++;
            }
            _loc8_.SolveVelocityConstraints();
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < this.§4z§)
         {
            (_loc7_ = this.§>m§[_loc4_]).§7!8§();
            _loc4_++;
         }
         _loc8_.§7!8§();
         _loc4_ = 0;
         while(_loc4_ < this.§7X§)
         {
            if((_loc6_ = this.§=!K§[_loc4_]).§<!M§() != b2Body.b2_staticBody)
            {
               _loc9_ = param1.§5!8§ * _loc6_.§]J§.x;
               _loc10_ = param1.§5!8§ * _loc6_.§]J§.y;
               if(_loc9_ * _loc9_ + _loc10_ * _loc10_ > b2Settings.b2_maxTranslationSquared)
               {
                  _loc6_.§]J§.Normalize();
                  _loc6_.§]J§.x *= b2Settings.b2_maxTranslation * param1.§0!_§;
                  _loc6_.§]J§.y *= b2Settings.b2_maxTranslation * param1.§0!_§;
               }
               _loc11_ = param1.§5!8§ * _loc6_.m_angularVelocity;
               if(_loc11_ * _loc11_ > b2Settings.b2_maxRotationSquared)
               {
                  if(_loc6_.m_angularVelocity < 0)
                  {
                     _loc6_.m_angularVelocity = -b2Settings.b2_maxRotation * param1.§0!_§;
                  }
                  else
                  {
                     _loc6_.m_angularVelocity = b2Settings.b2_maxRotation * param1.§0!_§;
                  }
               }
               _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.c);
               _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
               _loc6_.m_sweep.c.x += param1.§5!8§ * _loc6_.§]J§.x;
               _loc6_.m_sweep.c.y += param1.§5!8§ * _loc6_.§]J§.y;
               _loc6_.m_sweep.a += param1.§5!8§ * _loc6_.m_angularVelocity;
               _loc6_.§,M§();
            }
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < param1.§4R§)
         {
            _loc12_ = _loc8_.SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
            _loc13_ = true;
            _loc5_ = 0;
            while(_loc5_ < this.§4z§)
            {
               _loc14_ = (_loc7_ = this.§>m§[_loc5_]).SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
               _loc13_ = _loc13_ && _loc14_;
               _loc5_++;
            }
            if(_loc12_ && _loc13_)
            {
               break;
            }
            _loc4_++;
         }
         this.§+!I§(_loc8_.§+!a§);
         if(param3)
         {
            _loc15_ = Number.MAX_VALUE;
            _loc16_ = b2Settings.b2_linearSleepTolerance * b2Settings.b2_linearSleepTolerance;
            _loc17_ = b2Settings.b2_angularSleepTolerance * b2Settings.b2_angularSleepTolerance;
            _loc4_ = 0;
            while(_loc4_ < this.§7X§)
            {
               if((_loc6_ = this.§=!K§[_loc4_]).§<!M§() != b2Body.b2_staticBody)
               {
                  if((_loc6_.§4!-§ & b2Body.§&!Z§) == 0)
                  {
                     _loc6_.§+N§ = 0;
                     _loc15_ = 0;
                  }
                  if((_loc6_.§4!-§ & b2Body.§&!Z§) == 0 || _loc6_.m_angularVelocity * _loc6_.m_angularVelocity > _loc17_ || b2Math.§=8§(_loc6_.§]J§,_loc6_.§]J§) > _loc16_)
                  {
                     _loc6_.§+N§ = 0;
                     _loc15_ = 0;
                  }
                  else
                  {
                     _loc6_.§+N§ += param1.§5!8§;
                     _loc15_ = b2Math.§,S§(_loc15_,_loc6_.§+N§);
                  }
               }
               _loc4_++;
            }
            if(_loc15_ >= b2Settings.b2_timeToSleep)
            {
               _loc4_ = 0;
               while(_loc4_ < this.§7X§)
               {
                  (_loc6_ = this.§=!K§[_loc4_]).SetAwake(false);
                  _loc4_++;
               }
            }
         }
      }
      
      public function §?!a§(param1:b2TimeStep) : void
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
         this.§1!^§.§;!%§(param1,this.§-!b§,this.§1!F§,this.§=#§);
         var _loc4_:b2ContactSolver = this.§1!^§;
         _loc2_ = 0;
         while(_loc2_ < this.§4z§)
         {
            this.§>m§[_loc2_].InitVelocityConstraints(param1);
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < param1.§;!2§)
         {
            _loc4_.SolveVelocityConstraints();
            _loc3_ = 0;
            while(_loc3_ < this.§4z§)
            {
               this.§>m§[_loc3_].SolveVelocityConstraints(param1);
               _loc3_++;
            }
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§7X§)
         {
            if((_loc6_ = this.§=!K§[_loc2_]).§<!M§() != b2Body.b2_staticBody)
            {
               _loc7_ = param1.§5!8§ * _loc6_.§]J§.x;
               _loc8_ = param1.§5!8§ * _loc6_.§]J§.y;
               if(_loc7_ * _loc7_ + _loc8_ * _loc8_ > b2Settings.b2_maxTranslationSquared)
               {
                  _loc6_.§]J§.Normalize();
                  _loc6_.§]J§.x *= b2Settings.b2_maxTranslation * param1.§0!_§;
                  _loc6_.§]J§.y *= b2Settings.b2_maxTranslation * param1.§0!_§;
               }
               _loc9_ = param1.§5!8§ * _loc6_.m_angularVelocity;
               if(_loc9_ * _loc9_ > b2Settings.b2_maxRotationSquared)
               {
                  if(_loc6_.m_angularVelocity < 0)
                  {
                     _loc6_.m_angularVelocity = -b2Settings.b2_maxRotation * param1.§0!_§;
                  }
                  else
                  {
                     _loc6_.m_angularVelocity = b2Settings.b2_maxRotation * param1.§0!_§;
                  }
               }
               _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.c);
               _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
               _loc6_.m_sweep.c.x += param1.§5!8§ * _loc6_.§]J§.x;
               _loc6_.m_sweep.c.y += param1.§5!8§ * _loc6_.§]J§.y;
               _loc6_.m_sweep.a += param1.§5!8§ * _loc6_.m_angularVelocity;
               _loc6_.§,M§();
            }
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < param1.§4R§)
         {
            _loc10_ = _loc4_.SolvePositionConstraints(0.75);
            _loc11_ = true;
            _loc3_ = 0;
            while(_loc3_ < this.§4z§)
            {
               _loc12_ = this.§>m§[_loc3_].SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
               _loc11_ = _loc11_ && _loc12_;
               _loc3_++;
            }
            if(_loc10_ && _loc11_)
            {
               break;
            }
            _loc2_++;
         }
         this.§+!I§(_loc4_.§+!a§);
      }
      
      public function §+!I§(param1:Vector.<b2ContactConstraint>) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2ContactConstraint = null;
         var _loc5_:int = 0;
         if(this.§+R§ == null)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§1!F§)
         {
            _loc3_ = this.§-!b§[_loc2_];
            _loc4_ = param1[_loc2_];
            _loc5_ = 0;
            while(_loc5_ < _loc4_.§@!b§)
            {
               §4g§.§]!T§[_loc5_] = _loc4_.§#I§[_loc5_].normalImpulse;
               §4g§.§%e§[_loc5_] = _loc4_.§#I§[_loc5_].tangentImpulse;
               _loc5_++;
            }
            this.§+R§.PostSolve(_loc3_,§4g§);
            _loc2_++;
         }
      }
      
      public function §0!Z§(param1:b2Body) : void
      {
         param1.§2!Y§ = this.§7X§;
         var _loc2_:* = this.§7X§++;
         this.§=!K§[_loc2_] = param1;
      }
      
      public function §?n§(param1:b2Contact) : void
      {
         var _loc2_:* = this.§1!F§++;
         this.§-!b§[_loc2_] = param1;
      }
      
      public function §,'§(param1:b2Joint) : void
      {
         var _loc2_:* = this.§4z§++;
         this.§>m§[_loc2_] = param1;
      }
   }
}
