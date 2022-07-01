package §=!c§
{
   import §"s§.*;
   import §-j§.*;
   import §2"%§.*;
   import §7!F§.*;
   import §[K§.*;
   
   use namespace b2internal;
   
   public class b2Island
   {
      
      private static var §2Q§:b2ContactImpulse = new b2ContactImpulse();
       
      
      private var §""0§;
      
      private var §<!w§:b2ContactListener;
      
      private var §'y§:b2ContactSolver;
      
      b2internal var §5S§:Vector.<b2Body>;
      
      b2internal var §<!&§:Vector.<b2Contact>;
      
      b2internal var §?!Z§:Vector.<b2Joint>;
      
      b2internal var §'![§:int;
      
      b2internal var §1n§:int;
      
      b2internal var §+h§:int;
      
      private var §`f§:int;
      
      b2internal var §<"-§:int;
      
      b2internal var §<f§:int;
      
      public function b2Island()
      {
         super();
         this.§5S§ = new Vector.<b2Body>();
         this.§<!&§ = new Vector.<b2Contact>();
         this.§?!Z§ = new Vector.<b2Joint>();
      }
      
      public function §3!,§(param1:int, param2:int, param3:int, param4:*, param5:b2ContactListener, param6:b2ContactSolver) : void
      {
         var _loc7_:int = 0;
         this.§`f§ = param1;
         this.§<"-§ = param2;
         this.§<f§ = param3;
         this.§'![§ = 0;
         this.§+h§ = 0;
         this.§1n§ = 0;
         this.§""0§ = param4;
         this.§<!w§ = param5;
         this.§'y§ = param6;
         _loc7_ = this.§5S§.length;
         while(_loc7_ < param1)
         {
            this.§5S§[_loc7_] = null;
            _loc7_++;
         }
         _loc7_ = this.§<!&§.length;
         while(_loc7_ < param2)
         {
            this.§<!&§[_loc7_] = null;
            _loc7_++;
         }
         _loc7_ = this.§?!Z§.length;
         while(_loc7_ < param3)
         {
            this.§?!Z§[_loc7_] = null;
            _loc7_++;
         }
      }
      
      public function §<"§() : void
      {
         this.§'![§ = 0;
         this.§+h§ = 0;
         this.§1n§ = 0;
      }
      
      public function §;%§(param1:b2TimeStep, param2:b2Vec2, param3:Boolean) : void
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
         while(_loc4_ < this.§'![§)
         {
            if((_loc6_ = this.§5S§[_loc4_]).§&!u§() == b2Body.b2_dynamicBody)
            {
               _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.c);
               _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
               _loc6_.§;B§.x += param1.§>!W§ * (_loc6_.§[c§ * param2.x + _loc6_.§]p§ * _loc6_.§=D§.x);
               _loc6_.§;B§.y += param1.§>!W§ * (_loc6_.§[c§ * param2.y + _loc6_.§]p§ * _loc6_.§=D§.y);
               _loc6_.m_angularVelocity += param1.§>!W§ * _loc6_.§;!$§ * _loc6_.§#!x§;
               _loc6_.§;B§.§6w§(b2Math.§1!s§(1 - param1.§>!W§ * _loc6_.§;!&§,0,1));
               _loc6_.m_angularVelocity *= b2Math.§1!s§(1 - param1.§>!W§ * _loc6_.§2Y§,0,1);
            }
            _loc4_++;
         }
         this.§'y§.§3!,§(param1,this.§<!&§,this.§+h§,this.§""0§);
         var _loc8_:b2ContactSolver;
         (_loc8_ = this.§'y§).InitVelocityConstraints(param1);
         _loc4_ = 0;
         while(_loc4_ < this.§1n§)
         {
            (_loc7_ = this.§?!Z§[_loc4_]).InitVelocityConstraints(param1);
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < param1.§3!n§)
         {
            _loc5_ = 0;
            while(_loc5_ < this.§1n§)
            {
               (_loc7_ = this.§?!Z§[_loc5_]).SolveVelocityConstraints(param1);
               _loc5_++;
            }
            _loc8_.SolveVelocityConstraints();
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < this.§1n§)
         {
            (_loc7_ = this.§?!Z§[_loc4_]).§&!0§();
            _loc4_++;
         }
         _loc8_.§&!0§();
         _loc4_ = 0;
         while(_loc4_ < this.§'![§)
         {
            if((_loc6_ = this.§5S§[_loc4_]).§&!u§() != b2Body.b2_staticBody)
            {
               _loc9_ = param1.§>!W§ * _loc6_.§;B§.x;
               _loc10_ = param1.§>!W§ * _loc6_.§;B§.y;
               if(_loc9_ * _loc9_ + _loc10_ * _loc10_ > b2Settings.b2_maxTranslationSquared)
               {
                  _loc6_.§;B§.Normalize();
                  _loc6_.§;B§.x *= b2Settings.b2_maxTranslation * param1.§%",§;
                  _loc6_.§;B§.y *= b2Settings.b2_maxTranslation * param1.§%",§;
               }
               _loc11_ = param1.§>!W§ * _loc6_.m_angularVelocity;
               if(_loc11_ * _loc11_ > b2Settings.b2_maxRotationSquared)
               {
                  if(_loc6_.m_angularVelocity < 0)
                  {
                     _loc6_.m_angularVelocity = -b2Settings.b2_maxRotation * param1.§%",§;
                  }
                  else
                  {
                     _loc6_.m_angularVelocity = b2Settings.b2_maxRotation * param1.§%",§;
                  }
               }
               _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.c);
               _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
               _loc6_.m_sweep.c.x += param1.§>!W§ * _loc6_.§;B§.x;
               _loc6_.m_sweep.c.y += param1.§>!W§ * _loc6_.§;B§.y;
               _loc6_.m_sweep.a += param1.§>!W§ * _loc6_.m_angularVelocity;
               _loc6_.§<!0§();
            }
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < param1.§6!e§)
         {
            _loc12_ = _loc8_.SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
            _loc13_ = true;
            _loc5_ = 0;
            while(_loc5_ < this.§1n§)
            {
               _loc14_ = (_loc7_ = this.§?!Z§[_loc5_]).SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
               _loc13_ = _loc13_ && _loc14_;
               _loc5_++;
            }
            if(_loc12_ && _loc13_)
            {
               break;
            }
            _loc4_++;
         }
         this.§8!o§(_loc8_.§3!H§);
         if(param3)
         {
            _loc15_ = Number.MAX_VALUE;
            _loc16_ = b2Settings.b2_linearSleepTolerance * b2Settings.b2_linearSleepTolerance;
            _loc17_ = b2Settings.b2_angularSleepTolerance * b2Settings.b2_angularSleepTolerance;
            _loc4_ = 0;
            while(_loc4_ < this.§'![§)
            {
               if((_loc6_ = this.§5S§[_loc4_]).§&!u§() != b2Body.b2_staticBody)
               {
                  if((_loc6_.§8!5§ & b2Body.§4"#§) == 0)
                  {
                     _loc6_.§^"2§ = 0;
                     _loc15_ = 0;
                  }
                  if((_loc6_.§8!5§ & b2Body.§4"#§) == 0 || _loc6_.m_angularVelocity * _loc6_.m_angularVelocity > _loc17_ || b2Math.§["!§(_loc6_.§;B§,_loc6_.§;B§) > _loc16_)
                  {
                     _loc6_.§^"2§ = 0;
                     _loc15_ = 0;
                  }
                  else
                  {
                     _loc6_.§^"2§ += param1.§>!W§;
                     _loc15_ = b2Math.§0"8§(_loc15_,_loc6_.§^"2§);
                  }
               }
               _loc4_++;
            }
            if(_loc15_ >= b2Settings.b2_timeToSleep)
            {
               _loc4_ = 0;
               while(_loc4_ < this.§'![§)
               {
                  (_loc6_ = this.§5S§[_loc4_]).SetAwake(false);
                  _loc4_++;
               }
            }
         }
      }
      
      public function §;N§(param1:b2TimeStep) : void
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
         this.§'y§.§3!,§(param1,this.§<!&§,this.§+h§,this.§""0§);
         var _loc4_:b2ContactSolver = this.§'y§;
         _loc2_ = 0;
         while(_loc2_ < this.§1n§)
         {
            this.§?!Z§[_loc2_].InitVelocityConstraints(param1);
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < param1.§6!e§)
         {
            _loc6_ = _loc4_.SolvePositionConstraints(0.75);
            _loc7_ = true;
            _loc3_ = 0;
            while(_loc3_ < this.§1n§)
            {
               _loc8_ = this.§?!Z§[_loc3_].SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
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
         while(_loc2_ < param1.§3!n§)
         {
            _loc4_.SolveVelocityConstraints();
            _loc3_ = 0;
            while(_loc3_ < this.§1n§)
            {
               this.§?!Z§[_loc3_].SolveVelocityConstraints(param1);
               _loc3_++;
            }
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§'![§)
         {
            if((_loc9_ = this.§5S§[_loc2_]).§&!u§() != b2Body.b2_staticBody)
            {
               _loc10_ = param1.§>!W§ * _loc9_.§;B§.x;
               _loc11_ = param1.§>!W§ * _loc9_.§;B§.y;
               if(_loc10_ * _loc10_ + _loc11_ * _loc11_ > b2Settings.b2_maxTranslationSquared)
               {
                  _loc9_.§;B§.Normalize();
                  _loc9_.§;B§.x *= b2Settings.b2_maxTranslation * param1.§%",§;
                  _loc9_.§;B§.y *= b2Settings.b2_maxTranslation * param1.§%",§;
               }
               _loc12_ = param1.§>!W§ * _loc9_.m_angularVelocity;
               if(_loc12_ * _loc12_ > b2Settings.b2_maxRotationSquared)
               {
                  if(_loc9_.m_angularVelocity < 0)
                  {
                     _loc9_.m_angularVelocity = -b2Settings.b2_maxRotation * param1.§%",§;
                  }
                  else
                  {
                     _loc9_.m_angularVelocity = b2Settings.b2_maxRotation * param1.§%",§;
                  }
               }
               _loc9_.m_sweep.c0.SetV(_loc9_.m_sweep.c);
               _loc9_.m_sweep.a0 = _loc9_.m_sweep.a;
               _loc9_.m_sweep.c.x += param1.§>!W§ * _loc9_.§;B§.x;
               _loc9_.m_sweep.c.y += param1.§>!W§ * _loc9_.§;B§.y;
               _loc9_.m_sweep.a += param1.§>!W§ * _loc9_.m_angularVelocity;
               _loc9_.§<!0§();
            }
            _loc2_++;
         }
         this.§8!o§(_loc4_.§3!H§);
      }
      
      public function §8!o§(param1:Vector.<b2ContactConstraint>) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2ContactConstraint = null;
         var _loc5_:int = 0;
         if(this.§<!w§ == null)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§+h§)
         {
            _loc3_ = this.§<!&§[_loc2_];
            _loc4_ = param1[_loc2_];
            _loc5_ = 0;
            while(_loc5_ < _loc4_.§?@§)
            {
               §2Q§.§ 8§[_loc5_] = _loc4_.§0!G§[_loc5_].normalImpulse;
               §2Q§.§9,§[_loc5_] = _loc4_.§0!G§[_loc5_].tangentImpulse;
               _loc5_++;
            }
            this.§<!w§.PostSolve(_loc3_,§2Q§);
            _loc2_++;
         }
      }
      
      public function §78§(param1:b2Body) : void
      {
         param1.§9!o§ = this.§'![§;
         var _loc2_:* = this.§'![§++;
         this.§5S§[_loc2_] = param1;
      }
      
      public function §<!"§(param1:b2Contact) : void
      {
         var _loc2_:* = this.§+h§++;
         this.§<!&§[_loc2_] = param1;
      }
      
      public function §?t§(param1:b2Joint) : void
      {
         var _loc2_:* = this.§1n§++;
         this.§?!Z§[_loc2_] = param1;
      }
   }
}
