package §1!+§
{
   import §%!9§.*;
   import §3!U§.*;
   import §7"^§.*;
   import §9#K§.*;
   import §[#L§.*;
   
   use namespace b2internal;
   
   public class b2Island
   {
      
      private static var §7#E§:b2ContactImpulse = new b2ContactImpulse();
       
      
      private var §%3§;
      
      private var § #z§:b2ContactListener;
      
      private var § K§:b2ContactSolver;
      
      b2internal var §&#i§:Vector.<b2Body>;
      
      b2internal var §#!&§:Vector.<b2Contact>;
      
      b2internal var §9$-§:Vector.<b2Joint>;
      
      b2internal var §-!F§:int;
      
      b2internal var §0"&§:int;
      
      b2internal var §6"b§:int;
      
      private var §-!p§:int;
      
      b2internal var §9!K§:int;
      
      b2internal var §^$§:int;
      
      public function b2Island()
      {
         super();
         this.§&#i§ = new Vector.<b2Body>();
         this.§#!&§ = new Vector.<b2Contact>();
         this.§9$-§ = new Vector.<b2Joint>();
      }
      
      public function §6#Y§(param1:int, param2:int, param3:int, param4:*, param5:b2ContactListener, param6:b2ContactSolver) : void
      {
         var _loc7_:int = 0;
         this.§-!p§ = param1;
         this.§9!K§ = param2;
         this.§^$§ = param3;
         this.§-!F§ = 0;
         this.§6"b§ = 0;
         this.§0"&§ = 0;
         this.§%3§ = param4;
         this.§ #z§ = param5;
         this.§ K§ = param6;
         _loc7_ = this.§&#i§.length;
         while(_loc7_ < param1)
         {
            this.§&#i§[_loc7_] = null;
            _loc7_++;
         }
         _loc7_ = this.§#!&§.length;
         while(_loc7_ < param2)
         {
            this.§#!&§[_loc7_] = null;
            _loc7_++;
         }
         _loc7_ = this.§9$-§.length;
         while(_loc7_ < param3)
         {
            this.§9$-§[_loc7_] = null;
            _loc7_++;
         }
      }
      
      public function §;,§() : void
      {
         this.§-!F§ = 0;
         this.§6"b§ = 0;
         this.§0"&§ = 0;
      }
      
      public function §78§(param1:b2TimeStep, param2:b2Vec2, param3:Boolean) : void
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
         while(_loc4_ < this.§-!F§)
         {
            if((_loc6_ = this.§&#i§[_loc4_]).§%"+§() == b2Body.b2_dynamicBody)
            {
               _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.c);
               _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
               _loc6_.§ ![§.x += param1.dt * (_loc6_.§0K§ * param2.x + _loc6_.§"#z§ * _loc6_.§<$"§.x);
               _loc6_.§ ![§.y += param1.dt * (_loc6_.§0K§ * param2.y + _loc6_.§"#z§ * _loc6_.§<$"§.y);
               _loc6_.m_angularVelocity += param1.dt * _loc6_.§["p§ * _loc6_.§1$#§;
               _loc6_.§ ![§.§@o§(b2Math.§0"E§(1 - param1.dt * _loc6_.§1^§,0,1));
               _loc6_.m_angularVelocity *= b2Math.§0"E§(1 - param1.dt * _loc6_.§]$8§,0,1);
            }
            _loc4_++;
         }
         this.§ K§.§6#Y§(param1,this.§#!&§,this.§6"b§,this.§%3§);
         var _loc8_:b2ContactSolver;
         (_loc8_ = this.§ K§).InitVelocityConstraints(param1);
         _loc4_ = 0;
         while(_loc4_ < this.§0"&§)
         {
            (_loc7_ = this.§9$-§[_loc4_]).InitVelocityConstraints(param1);
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < param1.§'#Y§)
         {
            _loc5_ = 0;
            while(_loc5_ < this.§0"&§)
            {
               (_loc7_ = this.§9$-§[_loc5_]).SolveVelocityConstraints(param1);
               _loc5_++;
            }
            _loc8_.SolveVelocityConstraints();
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < this.§0"&§)
         {
            (_loc7_ = this.§9$-§[_loc4_]).§!"b§();
            _loc4_++;
         }
         _loc8_.§!"b§();
         _loc4_ = 0;
         while(_loc4_ < this.§-!F§)
         {
            if((_loc6_ = this.§&#i§[_loc4_]).§%"+§() != b2Body.b2_staticBody)
            {
               _loc9_ = param1.dt * _loc6_.§ ![§.x;
               _loc10_ = param1.dt * _loc6_.§ ![§.y;
               if(_loc9_ * _loc9_ + _loc10_ * _loc10_ > b2Settings.b2_maxTranslationSquared)
               {
                  _loc6_.§ ![§.Normalize();
                  _loc6_.§ ![§.x *= b2Settings.b2_maxTranslation * param1.§"`§;
                  _loc6_.§ ![§.y *= b2Settings.b2_maxTranslation * param1.§"`§;
               }
               _loc11_ = param1.dt * _loc6_.m_angularVelocity;
               if(_loc11_ * _loc11_ > b2Settings.b2_maxRotationSquared)
               {
                  if(_loc6_.m_angularVelocity < 0)
                  {
                     _loc6_.m_angularVelocity = -b2Settings.b2_maxRotation * param1.§"`§;
                  }
                  else
                  {
                     _loc6_.m_angularVelocity = b2Settings.b2_maxRotation * param1.§"`§;
                  }
               }
               _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.c);
               _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
               _loc6_.m_sweep.c.x += param1.dt * _loc6_.§ ![§.x;
               _loc6_.m_sweep.c.y += param1.dt * _loc6_.§ ![§.y;
               _loc6_.m_sweep.a += param1.dt * _loc6_.m_angularVelocity;
               _loc6_.§6!=§();
            }
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < param1.§0!K§)
         {
            _loc12_ = _loc8_.SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
            _loc13_ = true;
            _loc5_ = 0;
            while(_loc5_ < this.§0"&§)
            {
               _loc14_ = (_loc7_ = this.§9$-§[_loc5_]).SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
               _loc13_ = _loc13_ && _loc14_;
               _loc5_++;
            }
            if(_loc12_ && _loc13_)
            {
               break;
            }
            _loc4_++;
         }
         this.§<#t§(_loc8_.§2$-§);
         if(param3)
         {
            _loc15_ = Number.MAX_VALUE;
            _loc16_ = b2Settings.b2_linearSleepTolerance * b2Settings.b2_linearSleepTolerance;
            _loc17_ = b2Settings.b2_angularSleepTolerance * b2Settings.b2_angularSleepTolerance;
            _loc4_ = 0;
            while(_loc4_ < this.§-!F§)
            {
               if((_loc6_ = this.§&#i§[_loc4_]).§%"+§() != b2Body.b2_staticBody)
               {
                  if((_loc6_.§9"i§ & b2Body.§9!i§) == 0)
                  {
                     _loc6_.§<"C§ = 0;
                     _loc15_ = 0;
                  }
                  if((_loc6_.§9"i§ & b2Body.§9!i§) == 0 || _loc6_.m_angularVelocity * _loc6_.m_angularVelocity > _loc17_ || b2Math.§<"4§(_loc6_.§ ![§,_loc6_.§ ![§) > _loc16_)
                  {
                     _loc6_.§<"C§ = 0;
                     _loc15_ = 0;
                  }
                  else
                  {
                     _loc6_.§<"C§ += param1.dt;
                     _loc15_ = b2Math.§'Q§(_loc15_,_loc6_.§<"C§);
                  }
               }
               _loc4_++;
            }
            if(_loc15_ >= b2Settings.b2_timeToSleep)
            {
               _loc4_ = 0;
               while(_loc4_ < this.§-!F§)
               {
                  (_loc6_ = this.§&#i§[_loc4_]).SetAwake(false);
                  _loc4_++;
               }
            }
         }
      }
      
      public function §,!8§(param1:b2TimeStep) : void
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
         this.§ K§.§6#Y§(param1,this.§#!&§,this.§6"b§,this.§%3§);
         var _loc4_:b2ContactSolver = this.§ K§;
         _loc2_ = 0;
         while(_loc2_ < this.§0"&§)
         {
            this.§9$-§[_loc2_].InitVelocityConstraints(param1);
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < param1.§0!K§)
         {
            _loc6_ = _loc4_.SolvePositionConstraints(0.75);
            _loc7_ = true;
            _loc3_ = 0;
            while(_loc3_ < this.§0"&§)
            {
               _loc8_ = this.§9$-§[_loc3_].SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
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
         while(_loc2_ < param1.§'#Y§)
         {
            _loc4_.SolveVelocityConstraints();
            _loc3_ = 0;
            while(_loc3_ < this.§0"&§)
            {
               this.§9$-§[_loc3_].SolveVelocityConstraints(param1);
               _loc3_++;
            }
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§-!F§)
         {
            if((_loc9_ = this.§&#i§[_loc2_]).§%"+§() != b2Body.b2_staticBody)
            {
               _loc10_ = param1.dt * _loc9_.§ ![§.x;
               _loc11_ = param1.dt * _loc9_.§ ![§.y;
               if(_loc10_ * _loc10_ + _loc11_ * _loc11_ > b2Settings.b2_maxTranslationSquared)
               {
                  _loc9_.§ ![§.Normalize();
                  _loc9_.§ ![§.x *= b2Settings.b2_maxTranslation * param1.§"`§;
                  _loc9_.§ ![§.y *= b2Settings.b2_maxTranslation * param1.§"`§;
               }
               _loc12_ = param1.dt * _loc9_.m_angularVelocity;
               if(_loc12_ * _loc12_ > b2Settings.b2_maxRotationSquared)
               {
                  if(_loc9_.m_angularVelocity < 0)
                  {
                     _loc9_.m_angularVelocity = -b2Settings.b2_maxRotation * param1.§"`§;
                  }
                  else
                  {
                     _loc9_.m_angularVelocity = b2Settings.b2_maxRotation * param1.§"`§;
                  }
               }
               _loc9_.m_sweep.c0.SetV(_loc9_.m_sweep.c);
               _loc9_.m_sweep.a0 = _loc9_.m_sweep.a;
               _loc9_.m_sweep.c.x += param1.dt * _loc9_.§ ![§.x;
               _loc9_.m_sweep.c.y += param1.dt * _loc9_.§ ![§.y;
               _loc9_.m_sweep.a += param1.dt * _loc9_.m_angularVelocity;
               _loc9_.§6!=§();
            }
            _loc2_++;
         }
         this.§<#t§(_loc4_.§2$-§);
      }
      
      public function §<#t§(param1:Vector.<b2ContactConstraint>) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2ContactConstraint = null;
         var _loc5_:int = 0;
         if(this.§ #z§ == null)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§6"b§)
         {
            _loc3_ = this.§#!&§[_loc2_];
            _loc4_ = param1[_loc2_];
            _loc5_ = 0;
            while(_loc5_ < _loc4_.§[!a§)
            {
               §7#E§.§>"]§[_loc5_] = _loc4_.§##V§[_loc5_].normalImpulse;
               §7#E§.§6#f§[_loc5_] = _loc4_.§##V§[_loc5_].tangentImpulse;
               _loc5_++;
            }
            this.§ #z§.PostSolve(_loc3_,§7#E§);
            _loc2_++;
         }
      }
      
      public function §=$<§(param1:b2Body) : void
      {
         param1.§&#M§ = this.§-!F§;
         var _loc2_:* = this.§-!F§++;
         this.§&#i§[_loc2_] = param1;
      }
      
      public function §4#9§(param1:b2Contact) : void
      {
         var _loc2_:* = this.§6"b§++;
         this.§#!&§[_loc2_] = param1;
      }
      
      public function §^#a§(param1:b2Joint) : void
      {
         var _loc2_:* = this.§0"&§++;
         this.§9$-§[_loc2_] = param1;
      }
   }
}
