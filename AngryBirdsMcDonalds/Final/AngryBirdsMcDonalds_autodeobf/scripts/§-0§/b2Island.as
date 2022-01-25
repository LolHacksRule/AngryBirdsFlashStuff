package §-0§
{
   import §#!K§.*;
   import §&!P§.*;
   import §4!4§.*;
   import §@g§.*;
   import §^!%§.*;
   
   use namespace b2internal;
   
   public class b2Island
   {
      
      private static var §,! §:b2ContactImpulse = new b2ContactImpulse();
       
      
      private var §84§;
      
      private var §#N§:b2ContactListener;
      
      private var §+g§:b2ContactSolver;
      
      b2internal var §#!I§:Vector.<b2Body>;
      
      b2internal var §+!n§:Vector.<b2Contact>;
      
      b2internal var §53§:Vector.<b2Joint>;
      
      b2internal var §>a§:int;
      
      b2internal var §5!7§:int;
      
      b2internal var §>H§:int;
      
      private var §4!p§:int;
      
      b2internal var §,0§:int;
      
      b2internal var §#!>§:int;
      
      public function b2Island()
      {
         super();
         this.§#!I§ = new Vector.<b2Body>();
         this.§+!n§ = new Vector.<b2Contact>();
         this.§53§ = new Vector.<b2Joint>();
      }
      
      public function §08§(param1:int, param2:int, param3:int, param4:*, param5:b2ContactListener, param6:b2ContactSolver) : void
      {
         var _loc7_:int = 0;
         this.§4!p§ = param1;
         this.§,0§ = param2;
         this.§#!>§ = param3;
         this.§>a§ = 0;
         this.§>H§ = 0;
         this.§5!7§ = 0;
         this.§84§ = param4;
         this.§#N§ = param5;
         this.§+g§ = param6;
         _loc7_ = this.§#!I§.length;
         while(_loc7_ < param1)
         {
            this.§#!I§[_loc7_] = null;
            _loc7_++;
         }
         _loc7_ = this.§+!n§.length;
         while(_loc7_ < param2)
         {
            this.§+!n§[_loc7_] = null;
            _loc7_++;
         }
         _loc7_ = this.§53§.length;
         while(_loc7_ < param3)
         {
            this.§53§[_loc7_] = null;
            _loc7_++;
         }
      }
      
      public function §<]§() : void
      {
         this.§>a§ = 0;
         this.§>H§ = 0;
         this.§5!7§ = 0;
      }
      
      public function §6!'§(param1:b2TimeStep, param2:b2Vec2, param3:Boolean) : void
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
         while(_loc4_ < this.§>a§)
         {
            if((_loc6_ = this.§#!I§[_loc4_]).§use§() == b2Body.b2_dynamicBody)
            {
               _loc6_.§'!f§.x += param1.§+u§ * (param2.x + _loc6_.§!=§ * _loc6_.§<q§.x);
               _loc6_.§'!f§.y += param1.§+u§ * (param2.y + _loc6_.§!=§ * _loc6_.§<q§.y);
               _loc6_.m_angularVelocity += param1.§+u§ * _loc6_.§4!i§ * _loc6_.§"b§;
               _loc6_.§'!f§.§`!-§(b2Math.§]$§(1 - param1.§+u§ * _loc6_.§^!P§,0,1));
               _loc6_.m_angularVelocity *= b2Math.§]$§(1 - param1.§+u§ * _loc6_.§!!^§,0,1);
            }
            _loc4_++;
         }
         this.§+g§.§08§(param1,this.§+!n§,this.§>H§,this.§84§);
         var _loc8_:b2ContactSolver;
         (_loc8_ = this.§+g§).InitVelocityConstraints(param1);
         _loc4_ = 0;
         while(_loc4_ < this.§5!7§)
         {
            (_loc7_ = this.§53§[_loc4_]).InitVelocityConstraints(param1);
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < param1.§!l§)
         {
            _loc5_ = 0;
            while(_loc5_ < this.§5!7§)
            {
               (_loc7_ = this.§53§[_loc5_]).SolveVelocityConstraints(param1);
               _loc5_++;
            }
            _loc8_.SolveVelocityConstraints();
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < this.§5!7§)
         {
            (_loc7_ = this.§53§[_loc4_]).§87§();
            _loc4_++;
         }
         _loc8_.§87§();
         _loc4_ = 0;
         while(_loc4_ < this.§>a§)
         {
            if((_loc6_ = this.§#!I§[_loc4_]).§use§() != b2Body.b2_staticBody)
            {
               _loc9_ = param1.§+u§ * _loc6_.§'!f§.x;
               _loc10_ = param1.§+u§ * _loc6_.§'!f§.y;
               if(_loc9_ * _loc9_ + _loc10_ * _loc10_ > b2Settings.b2_maxTranslationSquared)
               {
                  _loc6_.§'!f§.Normalize();
                  _loc6_.§'!f§.x *= b2Settings.b2_maxTranslation * param1.§5i§;
                  _loc6_.§'!f§.y *= b2Settings.b2_maxTranslation * param1.§5i§;
               }
               _loc11_ = param1.§+u§ * _loc6_.m_angularVelocity;
               if(_loc11_ * _loc11_ > b2Settings.b2_maxRotationSquared)
               {
                  if(_loc6_.m_angularVelocity < 0)
                  {
                     _loc6_.m_angularVelocity = -b2Settings.b2_maxRotation * param1.§5i§;
                  }
                  else
                  {
                     _loc6_.m_angularVelocity = b2Settings.b2_maxRotation * param1.§5i§;
                  }
               }
               _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.c);
               _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
               _loc6_.m_sweep.c.x += param1.§+u§ * _loc6_.§'!f§.x;
               _loc6_.m_sweep.c.y += param1.§+u§ * _loc6_.§'!f§.y;
               _loc6_.m_sweep.a += param1.§+u§ * _loc6_.m_angularVelocity;
               _loc6_.§]t§();
            }
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < param1.§]e§)
         {
            _loc12_ = _loc8_.SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
            _loc13_ = true;
            _loc5_ = 0;
            while(_loc5_ < this.§5!7§)
            {
               _loc14_ = (_loc7_ = this.§53§[_loc5_]).SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
               _loc13_ = _loc13_ && _loc14_;
               _loc5_++;
            }
            if(_loc12_ && _loc13_)
            {
               break;
            }
            _loc4_++;
         }
         this.§>!1§(_loc8_.§4p§);
         if(param3)
         {
            _loc15_ = Number.MAX_VALUE;
            _loc16_ = b2Settings.b2_linearSleepTolerance * b2Settings.b2_linearSleepTolerance;
            _loc17_ = b2Settings.b2_angularSleepTolerance * b2Settings.b2_angularSleepTolerance;
            _loc4_ = 0;
            while(_loc4_ < this.§>a§)
            {
               if((_loc6_ = this.§#!I§[_loc4_]).§use§() != b2Body.b2_staticBody)
               {
                  if((_loc6_.§+! § & b2Body.§0!S§) == 0)
                  {
                     _loc6_.§'%§ = 0;
                     _loc15_ = 0;
                  }
                  if((_loc6_.§+! § & b2Body.§0!S§) == 0 || _loc6_.m_angularVelocity * _loc6_.m_angularVelocity > _loc17_ || b2Math.§83§(_loc6_.§'!f§,_loc6_.§'!f§) > _loc16_)
                  {
                     _loc6_.§'%§ = 0;
                     _loc15_ = 0;
                  }
                  else
                  {
                     _loc6_.§'%§ += param1.§+u§;
                     _loc15_ = b2Math.§[N§(_loc15_,_loc6_.§'%§);
                  }
               }
               _loc4_++;
            }
            if(_loc15_ >= b2Settings.b2_timeToSleep)
            {
               _loc4_ = 0;
               while(_loc4_ < this.§>a§)
               {
                  (_loc6_ = this.§#!I§[_loc4_]).SetAwake(false);
                  _loc4_++;
               }
            }
         }
      }
      
      public function §%"§(param1:b2TimeStep) : void
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
         this.§+g§.§08§(param1,this.§+!n§,this.§>H§,this.§84§);
         var _loc4_:b2ContactSolver = this.§+g§;
         _loc2_ = 0;
         while(_loc2_ < this.§5!7§)
         {
            this.§53§[_loc2_].InitVelocityConstraints(param1);
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < param1.§!l§)
         {
            _loc4_.SolveVelocityConstraints();
            _loc3_ = 0;
            while(_loc3_ < this.§5!7§)
            {
               this.§53§[_loc3_].SolveVelocityConstraints(param1);
               _loc3_++;
            }
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§>a§)
         {
            if((_loc6_ = this.§#!I§[_loc2_]).§use§() != b2Body.b2_staticBody)
            {
               _loc7_ = param1.§+u§ * _loc6_.§'!f§.x;
               _loc8_ = param1.§+u§ * _loc6_.§'!f§.y;
               if(_loc7_ * _loc7_ + _loc8_ * _loc8_ > b2Settings.b2_maxTranslationSquared)
               {
                  _loc6_.§'!f§.Normalize();
                  _loc6_.§'!f§.x *= b2Settings.b2_maxTranslation * param1.§5i§;
                  _loc6_.§'!f§.y *= b2Settings.b2_maxTranslation * param1.§5i§;
               }
               _loc9_ = param1.§+u§ * _loc6_.m_angularVelocity;
               if(_loc9_ * _loc9_ > b2Settings.b2_maxRotationSquared)
               {
                  if(_loc6_.m_angularVelocity < 0)
                  {
                     _loc6_.m_angularVelocity = -b2Settings.b2_maxRotation * param1.§5i§;
                  }
                  else
                  {
                     _loc6_.m_angularVelocity = b2Settings.b2_maxRotation * param1.§5i§;
                  }
               }
               _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.c);
               _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
               _loc6_.m_sweep.c.x += param1.§+u§ * _loc6_.§'!f§.x;
               _loc6_.m_sweep.c.y += param1.§+u§ * _loc6_.§'!f§.y;
               _loc6_.m_sweep.a += param1.§+u§ * _loc6_.m_angularVelocity;
               _loc6_.§]t§();
            }
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < param1.§]e§)
         {
            _loc10_ = _loc4_.SolvePositionConstraints(0.75);
            _loc11_ = true;
            _loc3_ = 0;
            while(_loc3_ < this.§5!7§)
            {
               _loc12_ = this.§53§[_loc3_].SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
               _loc11_ = _loc11_ && _loc12_;
               _loc3_++;
            }
            if(_loc10_ && _loc11_)
            {
               break;
            }
            _loc2_++;
         }
         this.§>!1§(_loc4_.§4p§);
      }
      
      public function §>!1§(param1:Vector.<b2ContactConstraint>) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2ContactConstraint = null;
         var _loc5_:int = 0;
         if(this.§#N§ == null)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§>H§)
         {
            _loc3_ = this.§+!n§[_loc2_];
            _loc4_ = param1[_loc2_];
            _loc5_ = 0;
            while(_loc5_ < _loc4_.§',§)
            {
               §,! §.§7y§[_loc5_] = _loc4_.§=!G§[_loc5_].normalImpulse;
               §,! §.§=[§[_loc5_] = _loc4_.§=!G§[_loc5_].tangentImpulse;
               _loc5_++;
            }
            this.§#N§.PostSolve(_loc3_,§,! §);
            _loc2_++;
         }
      }
      
      public function §[X§(param1:b2Body) : void
      {
         param1.§'L§ = this.§>a§;
         var _loc2_:* = this.§>a§++;
         this.§#!I§[_loc2_] = param1;
      }
      
      public function §`!L§(param1:b2Contact) : void
      {
         var _loc2_:* = this.§>H§++;
         this.§+!n§[_loc2_] = param1;
      }
      
      public function §`3§(param1:b2Joint) : void
      {
         var _loc2_:* = this.§5!7§++;
         this.§53§[_loc2_] = param1;
      }
   }
}
