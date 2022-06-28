package § D§
{
   import §&!-§.*;
   import §7a§.*;
   import §8>§.*;
   import §;u§.*;
   import §[!N§.*;
   
   use namespace b2internal;
   
   public class b2Island
   {
      
      private static var §'!1§:b2ContactImpulse = new b2ContactImpulse();
       
      
      private var §>#§;
      
      private var §[i§:b2ContactListener;
      
      private var §2!R§:b2ContactSolver;
      
      b2internal var §=!j§:Vector.<b2Body>;
      
      b2internal var §>I§:Vector.<b2Contact>;
      
      b2internal var §<!m§:Vector.<b2Joint>;
      
      b2internal var §1!;§:int;
      
      b2internal var §+!R§:int;
      
      b2internal var §#4§:int;
      
      private var §[t§:int;
      
      b2internal var §,!r§:int;
      
      b2internal var §8W§:int;
      
      public function b2Island()
      {
         super();
         this.§=!j§ = new Vector.<b2Body>();
         this.§>I§ = new Vector.<b2Contact>();
         this.§<!m§ = new Vector.<b2Joint>();
      }
      
      public function §7R§(param1:int, param2:int, param3:int, param4:*, param5:b2ContactListener, param6:b2ContactSolver) : void
      {
         var _loc7_:int = 0;
         this.§[t§ = param1;
         this.§,!r§ = param2;
         this.§8W§ = param3;
         this.§1!;§ = 0;
         this.§#4§ = 0;
         this.§+!R§ = 0;
         this.§>#§ = param4;
         this.§[i§ = param5;
         this.§2!R§ = param6;
         _loc7_ = this.§=!j§.length;
         while(_loc7_ < param1)
         {
            this.§=!j§[_loc7_] = null;
            _loc7_++;
         }
         _loc7_ = this.§>I§.length;
         while(_loc7_ < param2)
         {
            this.§>I§[_loc7_] = null;
            _loc7_++;
         }
         _loc7_ = this.§<!m§.length;
         while(_loc7_ < param3)
         {
            this.§<!m§[_loc7_] = null;
            _loc7_++;
         }
      }
      
      public function §1!E§() : void
      {
         this.§1!;§ = 0;
         this.§#4§ = 0;
         this.§+!R§ = 0;
      }
      
      public function §[!T§(param1:b2TimeStep, param2:b2Vec2, param3:Boolean) : void
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
         while(_loc4_ < this.§1!;§)
         {
            if((_loc6_ = this.§=!j§[_loc4_]).§0!@§() == b2Body.b2_dynamicBody)
            {
               _loc6_.§9!§.x += param1.§6c§ * (param2.x + _loc6_.§1!X§ * _loc6_.§2!§.x);
               _loc6_.§9!§.y += param1.§6c§ * (param2.y + _loc6_.§1!X§ * _loc6_.§2!§.y);
               _loc6_.m_angularVelocity += param1.§6c§ * _loc6_.§^!B§ * _loc6_.§`!R§;
               _loc6_.§9!§.§;a§(b2Math.§5L§(1 - param1.§6c§ * _loc6_.§ u§,0,1));
               _loc6_.m_angularVelocity *= b2Math.§5L§(1 - param1.§6c§ * _loc6_.§&! §,0,1);
            }
            _loc4_++;
         }
         this.§2!R§.§7R§(param1,this.§>I§,this.§#4§,this.§>#§);
         var _loc8_:b2ContactSolver;
         (_loc8_ = this.§2!R§).InitVelocityConstraints(param1);
         _loc4_ = 0;
         while(_loc4_ < this.§+!R§)
         {
            (_loc7_ = this.§<!m§[_loc4_]).InitVelocityConstraints(param1);
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < param1.§@!Y§)
         {
            _loc5_ = 0;
            while(_loc5_ < this.§+!R§)
            {
               (_loc7_ = this.§<!m§[_loc5_]).SolveVelocityConstraints(param1);
               _loc5_++;
            }
            _loc8_.SolveVelocityConstraints();
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < this.§+!R§)
         {
            (_loc7_ = this.§<!m§[_loc4_]).§;d§();
            _loc4_++;
         }
         _loc8_.§;d§();
         _loc4_ = 0;
         while(_loc4_ < this.§1!;§)
         {
            if((_loc6_ = this.§=!j§[_loc4_]).§0!@§() != b2Body.b2_staticBody)
            {
               _loc9_ = param1.§6c§ * _loc6_.§9!§.x;
               _loc10_ = param1.§6c§ * _loc6_.§9!§.y;
               if(_loc9_ * _loc9_ + _loc10_ * _loc10_ > b2Settings.b2_maxTranslationSquared)
               {
                  _loc6_.§9!§.Normalize();
                  _loc6_.§9!§.x *= b2Settings.b2_maxTranslation * param1.§7i§;
                  _loc6_.§9!§.y *= b2Settings.b2_maxTranslation * param1.§7i§;
               }
               _loc11_ = param1.§6c§ * _loc6_.m_angularVelocity;
               if(_loc11_ * _loc11_ > b2Settings.b2_maxRotationSquared)
               {
                  if(_loc6_.m_angularVelocity < 0)
                  {
                     _loc6_.m_angularVelocity = -b2Settings.b2_maxRotation * param1.§7i§;
                  }
                  else
                  {
                     _loc6_.m_angularVelocity = b2Settings.b2_maxRotation * param1.§7i§;
                  }
               }
               _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.c);
               _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
               _loc6_.m_sweep.c.x += param1.§6c§ * _loc6_.§9!§.x;
               _loc6_.m_sweep.c.y += param1.§6c§ * _loc6_.§9!§.y;
               _loc6_.m_sweep.a += param1.§6c§ * _loc6_.m_angularVelocity;
               _loc6_.§ n§();
            }
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < param1.§"!2§)
         {
            _loc12_ = _loc8_.SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
            _loc13_ = true;
            _loc5_ = 0;
            while(_loc5_ < this.§+!R§)
            {
               _loc14_ = (_loc7_ = this.§<!m§[_loc5_]).SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
               _loc13_ = _loc13_ && _loc14_;
               _loc5_++;
            }
            if(_loc12_ && _loc13_)
            {
               break;
            }
            _loc4_++;
         }
         this.§[!4§(_loc8_.§!F§);
         if(param3)
         {
            _loc15_ = Number.MAX_VALUE;
            _loc16_ = b2Settings.b2_linearSleepTolerance * b2Settings.b2_linearSleepTolerance;
            _loc17_ = b2Settings.b2_angularSleepTolerance * b2Settings.b2_angularSleepTolerance;
            _loc4_ = 0;
            while(_loc4_ < this.§1!;§)
            {
               if((_loc6_ = this.§=!j§[_loc4_]).§0!@§() != b2Body.b2_staticBody)
               {
                  if((_loc6_.§ !<§ & b2Body.§=7§) == 0)
                  {
                     _loc6_.§ !"§ = 0;
                     _loc15_ = 0;
                  }
                  if((_loc6_.§ !<§ & b2Body.§=7§) == 0 || _loc6_.m_angularVelocity * _loc6_.m_angularVelocity > _loc17_ || b2Math.§1!P§(_loc6_.§9!§,_loc6_.§9!§) > _loc16_)
                  {
                     _loc6_.§ !"§ = 0;
                     _loc15_ = 0;
                  }
                  else
                  {
                     _loc6_.§ !"§ += param1.§6c§;
                     _loc15_ = b2Math.§^!n§(_loc15_,_loc6_.§ !"§);
                  }
               }
               _loc4_++;
            }
            if(_loc15_ >= b2Settings.b2_timeToSleep)
            {
               _loc4_ = 0;
               while(_loc4_ < this.§1!;§)
               {
                  (_loc6_ = this.§=!j§[_loc4_]).SetAwake(false);
                  _loc4_++;
               }
            }
         }
      }
      
      public function §"0§(param1:b2TimeStep) : void
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
         this.§2!R§.§7R§(param1,this.§>I§,this.§#4§,this.§>#§);
         var _loc4_:b2ContactSolver = this.§2!R§;
         _loc2_ = 0;
         while(_loc2_ < this.§+!R§)
         {
            this.§<!m§[_loc2_].InitVelocityConstraints(param1);
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < param1.§@!Y§)
         {
            _loc4_.SolveVelocityConstraints();
            _loc3_ = 0;
            while(_loc3_ < this.§+!R§)
            {
               this.§<!m§[_loc3_].SolveVelocityConstraints(param1);
               _loc3_++;
            }
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§1!;§)
         {
            if((_loc6_ = this.§=!j§[_loc2_]).§0!@§() != b2Body.b2_staticBody)
            {
               _loc7_ = param1.§6c§ * _loc6_.§9!§.x;
               _loc8_ = param1.§6c§ * _loc6_.§9!§.y;
               if(_loc7_ * _loc7_ + _loc8_ * _loc8_ > b2Settings.b2_maxTranslationSquared)
               {
                  _loc6_.§9!§.Normalize();
                  _loc6_.§9!§.x *= b2Settings.b2_maxTranslation * param1.§7i§;
                  _loc6_.§9!§.y *= b2Settings.b2_maxTranslation * param1.§7i§;
               }
               _loc9_ = param1.§6c§ * _loc6_.m_angularVelocity;
               if(_loc9_ * _loc9_ > b2Settings.b2_maxRotationSquared)
               {
                  if(_loc6_.m_angularVelocity < 0)
                  {
                     _loc6_.m_angularVelocity = -b2Settings.b2_maxRotation * param1.§7i§;
                  }
                  else
                  {
                     _loc6_.m_angularVelocity = b2Settings.b2_maxRotation * param1.§7i§;
                  }
               }
               _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.c);
               _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
               _loc6_.m_sweep.c.x += param1.§6c§ * _loc6_.§9!§.x;
               _loc6_.m_sweep.c.y += param1.§6c§ * _loc6_.§9!§.y;
               _loc6_.m_sweep.a += param1.§6c§ * _loc6_.m_angularVelocity;
               _loc6_.§ n§();
            }
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < param1.§"!2§)
         {
            _loc10_ = _loc4_.SolvePositionConstraints(0.75);
            _loc11_ = true;
            _loc3_ = 0;
            while(_loc3_ < this.§+!R§)
            {
               _loc12_ = this.§<!m§[_loc3_].SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
               _loc11_ = _loc11_ && _loc12_;
               _loc3_++;
            }
            if(_loc10_ && _loc11_)
            {
               break;
            }
            _loc2_++;
         }
         this.§[!4§(_loc4_.§!F§);
      }
      
      public function §[!4§(param1:Vector.<b2ContactConstraint>) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2ContactConstraint = null;
         var _loc5_:int = 0;
         if(this.§[i§ == null)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§#4§)
         {
            _loc3_ = this.§>I§[_loc2_];
            _loc4_ = param1[_loc2_];
            _loc5_ = 0;
            while(_loc5_ < _loc4_.§6Y§)
            {
               §'!1§.§3!<§[_loc5_] = _loc4_.§@a§[_loc5_].normalImpulse;
               §'!1§.§6=§[_loc5_] = _loc4_.§@a§[_loc5_].tangentImpulse;
               _loc5_++;
            }
            this.§[i§.PostSolve(_loc3_,§'!1§);
            _loc2_++;
         }
      }
      
      public function §#H§(param1:b2Body) : void
      {
         param1.§0!b§ = this.§1!;§;
         var _loc2_:* = this.§1!;§++;
         this.§=!j§[_loc2_] = param1;
      }
      
      public function §<'§(param1:b2Contact) : void
      {
         var _loc2_:* = this.§#4§++;
         this.§>I§[_loc2_] = param1;
      }
      
      public function §5[§(param1:b2Joint) : void
      {
         var _loc2_:* = this.§+!R§++;
         this.§<!m§[_loc2_] = param1;
      }
   }
}
