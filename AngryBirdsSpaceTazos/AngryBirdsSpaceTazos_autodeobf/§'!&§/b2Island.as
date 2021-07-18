package §'!&§
{
   import §3c§.*;
   import §9t§.*;
   import §=!n§.*;
   import §@!'§.*;
   import §`X§.*;
   
   use namespace b2internal;
   
   public class b2Island
   {
      
      private static var §0!R§:b2ContactImpulse = new b2ContactImpulse();
       
      
      private var § B§;
      
      private var §?!n§:b2ContactListener;
      
      private var §4!<§:b2ContactSolver;
      
      b2internal var §5K§:Vector.<b2Body>;
      
      b2internal var get:Vector.<b2Contact>;
      
      b2internal var §>!o§:Vector.<b2Joint>;
      
      b2internal var §"s§:int;
      
      b2internal var §1!s§:int;
      
      b2internal var §3!G§:int;
      
      private var §""D§:int;
      
      b2internal var §#P§:int;
      
      b2internal var §!!v§:int;
      
      public function b2Island()
      {
         super();
         this.§5K§ = new Vector.<b2Body>();
         this.get = new Vector.<b2Contact>();
         this.§>!o§ = new Vector.<b2Joint>();
      }
      
      public function §>`§(param1:int, param2:int, param3:int, param4:*, param5:b2ContactListener, param6:b2ContactSolver) : void
      {
         var _loc7_:int = 0;
         this.§""D§ = param1;
         this.§#P§ = param2;
         this.§!!v§ = param3;
         this.§"s§ = 0;
         this.§3!G§ = 0;
         this.§1!s§ = 0;
         this.§ B§ = param4;
         this.§?!n§ = param5;
         this.§4!<§ = param6;
         _loc7_ = this.§5K§.length;
         while(_loc7_ < param1)
         {
            this.§5K§[_loc7_] = null;
            _loc7_++;
         }
         _loc7_ = this.get.length;
         while(_loc7_ < param2)
         {
            this.get[_loc7_] = null;
            _loc7_++;
         }
         _loc7_ = this.§>!o§.length;
         while(_loc7_ < param3)
         {
            this.§>!o§[_loc7_] = null;
            _loc7_++;
         }
      }
      
      public function §["5§() : void
      {
         this.§"s§ = 0;
         this.§3!G§ = 0;
         this.§1!s§ = 0;
      }
      
      public function §3!N§(param1:b2TimeStep, param2:b2Vec2, param3:Boolean) : void
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
         while(_loc4_ < this.§"s§)
         {
            if((_loc6_ = this.§5K§[_loc4_]).§@!N§() == b2Body.b2_dynamicBody)
            {
               _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.c);
               _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
               _loc6_.§?o§.x += param1.§2^§ * (param2.x + _loc6_.§6!W§ * _loc6_.§#!u§.x);
               _loc6_.§?o§.y += param1.§2^§ * (param2.y + _loc6_.§6!W§ * _loc6_.§#!u§.y);
               _loc6_.m_angularVelocity += param1.§2^§ * _loc6_.§<!%§ * _loc6_.§8<§;
               _loc6_.§?o§.§-!&§(b2Math.§`J§(1 - param1.§2^§ * _loc6_.§[5§,0,1));
               _loc6_.m_angularVelocity *= b2Math.§`J§(1 - param1.§2^§ * _loc6_.§=!y§,0,1);
            }
            _loc4_++;
         }
         this.§4!<§.§>`§(param1,this.get,this.§3!G§,this.§ B§);
         var _loc8_:b2ContactSolver;
         (_loc8_ = this.§4!<§).InitVelocityConstraints(param1);
         _loc4_ = 0;
         while(_loc4_ < this.§1!s§)
         {
            (_loc7_ = this.§>!o§[_loc4_]).InitVelocityConstraints(param1);
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < param1.§3Y§)
         {
            _loc5_ = 0;
            while(_loc5_ < this.§1!s§)
            {
               (_loc7_ = this.§>!o§[_loc5_]).SolveVelocityConstraints(param1);
               _loc5_++;
            }
            _loc8_.SolveVelocityConstraints();
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < this.§1!s§)
         {
            (_loc7_ = this.§>!o§[_loc4_]).§8!,§();
            _loc4_++;
         }
         _loc8_.§8!,§();
         _loc4_ = 0;
         while(_loc4_ < this.§"s§)
         {
            if((_loc6_ = this.§5K§[_loc4_]).§@!N§() != b2Body.b2_staticBody)
            {
               _loc9_ = param1.§2^§ * _loc6_.§?o§.x;
               _loc10_ = param1.§2^§ * _loc6_.§?o§.y;
               if(_loc9_ * _loc9_ + _loc10_ * _loc10_ > b2Settings.b2_maxTranslationSquared)
               {
                  _loc6_.§?o§.Normalize();
                  _loc6_.§?o§.x *= b2Settings.b2_maxTranslation * param1.§,t§;
                  _loc6_.§?o§.y *= b2Settings.b2_maxTranslation * param1.§,t§;
               }
               _loc11_ = param1.§2^§ * _loc6_.m_angularVelocity;
               if(_loc11_ * _loc11_ > b2Settings.b2_maxRotationSquared)
               {
                  if(_loc6_.m_angularVelocity < 0)
                  {
                     _loc6_.m_angularVelocity = -b2Settings.b2_maxRotation * param1.§,t§;
                  }
                  else
                  {
                     _loc6_.m_angularVelocity = b2Settings.b2_maxRotation * param1.§,t§;
                  }
               }
               _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.c);
               _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
               _loc6_.m_sweep.c.x += param1.§2^§ * _loc6_.§?o§.x;
               _loc6_.m_sweep.c.y += param1.§2^§ * _loc6_.§?o§.y;
               _loc6_.m_sweep.a += param1.§2^§ * _loc6_.m_angularVelocity;
               _loc6_.§6!+§();
            }
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < param1.§3]§)
         {
            _loc12_ = _loc8_.SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
            _loc13_ = true;
            _loc5_ = 0;
            while(_loc5_ < this.§1!s§)
            {
               _loc14_ = (_loc7_ = this.§>!o§[_loc5_]).SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
               _loc13_ = _loc13_ && _loc14_;
               _loc5_++;
            }
            if(_loc12_ && _loc13_)
            {
               break;
            }
            _loc4_++;
         }
         this.§6!G§(_loc8_.§+"'§);
         if(param3)
         {
            _loc15_ = Number.MAX_VALUE;
            _loc16_ = b2Settings.b2_linearSleepTolerance * b2Settings.b2_linearSleepTolerance;
            _loc17_ = b2Settings.b2_angularSleepTolerance * b2Settings.b2_angularSleepTolerance;
            _loc4_ = 0;
            while(_loc4_ < this.§"s§)
            {
               if((_loc6_ = this.§5K§[_loc4_]).§@!N§() != b2Body.b2_staticBody)
               {
                  if((_loc6_.§0" § & b2Body.§!"B§) == 0)
                  {
                     _loc6_.§;",§ = 0;
                     _loc15_ = 0;
                  }
                  if((_loc6_.§0" § & b2Body.§!"B§) == 0 || _loc6_.m_angularVelocity * _loc6_.m_angularVelocity > _loc17_ || b2Math.§<"E§(_loc6_.§?o§,_loc6_.§?o§) > _loc16_)
                  {
                     _loc6_.§;",§ = 0;
                     _loc15_ = 0;
                  }
                  else
                  {
                     _loc6_.§;",§ += param1.§2^§;
                     _loc15_ = b2Math.§+!G§(_loc15_,_loc6_.§;",§);
                  }
               }
               _loc4_++;
            }
            if(_loc15_ >= b2Settings.b2_timeToSleep)
            {
               _loc4_ = 0;
               while(_loc4_ < this.§"s§)
               {
                  (_loc6_ = this.§5K§[_loc4_]).SetAwake(false);
                  _loc4_++;
               }
            }
         }
      }
      
      public function §!!'§(param1:b2TimeStep) : void
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
         this.§4!<§.§>`§(param1,this.get,this.§3!G§,this.§ B§);
         var _loc4_:b2ContactSolver = this.§4!<§;
         _loc2_ = 0;
         while(_loc2_ < this.§1!s§)
         {
            this.§>!o§[_loc2_].InitVelocityConstraints(param1);
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < param1.§3]§)
         {
            _loc6_ = _loc4_.SolvePositionConstraints(0.75);
            _loc7_ = true;
            _loc3_ = 0;
            while(_loc3_ < this.§1!s§)
            {
               _loc8_ = this.§>!o§[_loc3_].SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
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
         while(_loc2_ < param1.§3Y§)
         {
            _loc4_.SolveVelocityConstraints();
            _loc3_ = 0;
            while(_loc3_ < this.§1!s§)
            {
               this.§>!o§[_loc3_].SolveVelocityConstraints(param1);
               _loc3_++;
            }
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§"s§)
         {
            if((_loc9_ = this.§5K§[_loc2_]).§@!N§() != b2Body.b2_staticBody)
            {
               _loc10_ = param1.§2^§ * _loc9_.§?o§.x;
               _loc11_ = param1.§2^§ * _loc9_.§?o§.y;
               if(_loc10_ * _loc10_ + _loc11_ * _loc11_ > b2Settings.b2_maxTranslationSquared)
               {
                  _loc9_.§?o§.Normalize();
                  _loc9_.§?o§.x *= b2Settings.b2_maxTranslation * param1.§,t§;
                  _loc9_.§?o§.y *= b2Settings.b2_maxTranslation * param1.§,t§;
               }
               _loc12_ = param1.§2^§ * _loc9_.m_angularVelocity;
               if(_loc12_ * _loc12_ > b2Settings.b2_maxRotationSquared)
               {
                  if(_loc9_.m_angularVelocity < 0)
                  {
                     _loc9_.m_angularVelocity = -b2Settings.b2_maxRotation * param1.§,t§;
                  }
                  else
                  {
                     _loc9_.m_angularVelocity = b2Settings.b2_maxRotation * param1.§,t§;
                  }
               }
               _loc9_.m_sweep.c0.SetV(_loc9_.m_sweep.c);
               _loc9_.m_sweep.a0 = _loc9_.m_sweep.a;
               _loc9_.m_sweep.c.x += param1.§2^§ * _loc9_.§?o§.x;
               _loc9_.m_sweep.c.y += param1.§2^§ * _loc9_.§?o§.y;
               _loc9_.m_sweep.a += param1.§2^§ * _loc9_.m_angularVelocity;
               _loc9_.§6!+§();
            }
            _loc2_++;
         }
         this.§6!G§(_loc4_.§+"'§);
      }
      
      public function §6!G§(param1:Vector.<b2ContactConstraint>) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2ContactConstraint = null;
         var _loc5_:int = 0;
         if(this.§?!n§ == null)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§3!G§)
         {
            _loc3_ = this.get[_loc2_];
            _loc4_ = param1[_loc2_];
            _loc5_ = 0;
            while(_loc5_ < _loc4_.§9">§)
            {
               §0!R§.§<w§[_loc5_] = _loc4_.§?!%§[_loc5_].normalImpulse;
               §0!R§.§8!!§[_loc5_] = _loc4_.§?!%§[_loc5_].tangentImpulse;
               _loc5_++;
            }
            this.§?!n§.PostSolve(_loc3_,§0!R§);
            _loc2_++;
         }
      }
      
      public function §!"C§(param1:b2Body) : void
      {
         param1.§7V§ = this.§"s§;
         var _loc2_:* = this.§"s§++;
         this.§5K§[_loc2_] = param1;
      }
      
      public function §'0§(param1:b2Contact) : void
      {
         var _loc2_:* = this.§3!G§++;
         this.get[_loc2_] = param1;
      }
      
      public function §@!p§(param1:b2Joint) : void
      {
         var _loc2_:* = this.§1!s§++;
         this.§>!o§[_loc2_] = param1;
      }
   }
}
