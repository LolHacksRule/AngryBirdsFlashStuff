package §3!`§
{
   import §'F§.*;
   import §+C§.*;
   import §-"&§.*;
   import §6Z§.*;
   import §^9§.*;
   
   use namespace b2internal;
   
   public class b2Island
   {
      
      private static var §#I§:b2ContactImpulse = new b2ContactImpulse();
       
      
      private var §]"#§;
      
      private var §5!N§:b2ContactListener;
      
      private var §?!?§:b2ContactSolver;
      
      b2internal var §0p§:Vector.<b2Body>;
      
      b2internal var §7!K§:Vector.<b2Contact>;
      
      b2internal var §6w§:Vector.<b2Joint>;
      
      b2internal var §3"'§:int;
      
      b2internal var §"F§:int;
      
      b2internal var §<$§:int;
      
      private var §0![§:int;
      
      b2internal var §!q§:int;
      
      b2internal var §&!t§:int;
      
      public function b2Island()
      {
         super();
         this.§0p§ = new Vector.<b2Body>();
         this.§7!K§ = new Vector.<b2Contact>();
         this.§6w§ = new Vector.<b2Joint>();
      }
      
      public function §",§(param1:int, param2:int, param3:int, param4:*, param5:b2ContactListener, param6:b2ContactSolver) : void
      {
         var _loc7_:int = 0;
         this.§0![§ = param1;
         this.§!q§ = param2;
         this.§&!t§ = param3;
         this.§3"'§ = 0;
         this.§<$§ = 0;
         this.§"F§ = 0;
         this.§]"#§ = param4;
         this.§5!N§ = param5;
         this.§?!?§ = param6;
         _loc7_ = this.§0p§.length;
         while(_loc7_ < param1)
         {
            this.§0p§[_loc7_] = null;
            _loc7_++;
         }
         _loc7_ = this.§7!K§.length;
         while(_loc7_ < param2)
         {
            this.§7!K§[_loc7_] = null;
            _loc7_++;
         }
         _loc7_ = this.§6w§.length;
         while(_loc7_ < param3)
         {
            this.§6w§[_loc7_] = null;
            _loc7_++;
         }
      }
      
      public function §,A§() : void
      {
         this.§3"'§ = 0;
         this.§<$§ = 0;
         this.§"F§ = 0;
      }
      
      public function §=^§(param1:b2TimeStep, param2:b2Vec2, param3:Boolean) : void
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
         while(_loc4_ < this.§3"'§)
         {
            if((_loc6_ = this.§0p§[_loc4_]).§<!A§() == b2Body.b2_dynamicBody)
            {
               _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.c);
               _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
               _loc6_.§?!^§.x += param1.§`!9§ * (_loc6_.§!!T§ * param2.x + _loc6_.§4!&§ * _loc6_.§-[§.x);
               _loc6_.§?!^§.y += param1.§`!9§ * (_loc6_.§!!T§ * param2.y + _loc6_.§4!&§ * _loc6_.§-[§.y);
               _loc6_.m_angularVelocity += param1.§`!9§ * _loc6_.§`!`§ * _loc6_.§#!K§;
               _loc6_.§?!^§.§>[§(b2Math.§&a§(1 - param1.§`!9§ * _loc6_.§8!a§,0,1));
               _loc6_.m_angularVelocity *= b2Math.§&a§(1 - param1.§`!9§ * _loc6_.§]!`§,0,1);
            }
            _loc4_++;
         }
         this.§?!?§.§",§(param1,this.§7!K§,this.§<$§,this.§]"#§);
         var _loc8_:b2ContactSolver;
         (_loc8_ = this.§?!?§).InitVelocityConstraints(param1);
         _loc4_ = 0;
         while(_loc4_ < this.§"F§)
         {
            (_loc7_ = this.§6w§[_loc4_]).InitVelocityConstraints(param1);
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < param1.§#!Y§)
         {
            _loc5_ = 0;
            while(_loc5_ < this.§"F§)
            {
               (_loc7_ = this.§6w§[_loc5_]).SolveVelocityConstraints(param1);
               _loc5_++;
            }
            _loc8_.SolveVelocityConstraints();
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < this.§"F§)
         {
            (_loc7_ = this.§6w§[_loc4_]).§2"%§();
            _loc4_++;
         }
         _loc8_.§2"%§();
         _loc4_ = 0;
         while(_loc4_ < this.§3"'§)
         {
            if((_loc6_ = this.§0p§[_loc4_]).§<!A§() != b2Body.b2_staticBody)
            {
               _loc9_ = param1.§`!9§ * _loc6_.§?!^§.x;
               _loc10_ = param1.§`!9§ * _loc6_.§?!^§.y;
               if(_loc9_ * _loc9_ + _loc10_ * _loc10_ > b2Settings.b2_maxTranslationSquared)
               {
                  _loc6_.§?!^§.Normalize();
                  _loc6_.§?!^§.x *= b2Settings.b2_maxTranslation * param1.§4!z§;
                  _loc6_.§?!^§.y *= b2Settings.b2_maxTranslation * param1.§4!z§;
               }
               _loc11_ = param1.§`!9§ * _loc6_.m_angularVelocity;
               if(_loc11_ * _loc11_ > b2Settings.b2_maxRotationSquared)
               {
                  if(_loc6_.m_angularVelocity < 0)
                  {
                     _loc6_.m_angularVelocity = -b2Settings.b2_maxRotation * param1.§4!z§;
                  }
                  else
                  {
                     _loc6_.m_angularVelocity = b2Settings.b2_maxRotation * param1.§4!z§;
                  }
               }
               _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.c);
               _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
               _loc6_.m_sweep.c.x += param1.§`!9§ * _loc6_.§?!^§.x;
               _loc6_.m_sweep.c.y += param1.§`!9§ * _loc6_.§?!^§.y;
               _loc6_.m_sweep.a += param1.§`!9§ * _loc6_.m_angularVelocity;
               _loc6_.§-F§();
            }
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < param1.§5!6§)
         {
            _loc12_ = _loc8_.SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
            _loc13_ = true;
            _loc5_ = 0;
            while(_loc5_ < this.§"F§)
            {
               _loc14_ = (_loc7_ = this.§6w§[_loc5_]).SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
               _loc13_ = _loc13_ && _loc14_;
               _loc5_++;
            }
            if(_loc12_ && _loc13_)
            {
               break;
            }
            _loc4_++;
         }
         this.§7s§(_loc8_.§]!I§);
         if(param3)
         {
            _loc15_ = Number.MAX_VALUE;
            _loc16_ = b2Settings.b2_linearSleepTolerance * b2Settings.b2_linearSleepTolerance;
            _loc17_ = b2Settings.b2_angularSleepTolerance * b2Settings.b2_angularSleepTolerance;
            _loc4_ = 0;
            while(_loc4_ < this.§3"'§)
            {
               if((_loc6_ = this.§0p§[_loc4_]).§<!A§() != b2Body.b2_staticBody)
               {
                  if((_loc6_.§,[§ & b2Body.§2!H§) == 0)
                  {
                     _loc6_.§'L§ = 0;
                     _loc15_ = 0;
                  }
                  if((_loc6_.§,[§ & b2Body.§2!H§) == 0 || _loc6_.m_angularVelocity * _loc6_.m_angularVelocity > _loc17_ || b2Math.§7!c§(_loc6_.§?!^§,_loc6_.§?!^§) > _loc16_)
                  {
                     _loc6_.§'L§ = 0;
                     _loc15_ = 0;
                  }
                  else
                  {
                     _loc6_.§'L§ += param1.§`!9§;
                     _loc15_ = b2Math.§=t§(_loc15_,_loc6_.§'L§);
                  }
               }
               _loc4_++;
            }
            if(_loc15_ >= b2Settings.b2_timeToSleep)
            {
               _loc4_ = 0;
               while(_loc4_ < this.§3"'§)
               {
                  (_loc6_ = this.§0p§[_loc4_]).SetAwake(false);
                  _loc4_++;
               }
            }
         }
      }
      
      public function §+Q§(param1:b2TimeStep) : void
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
         this.§?!?§.§",§(param1,this.§7!K§,this.§<$§,this.§]"#§);
         var _loc4_:b2ContactSolver = this.§?!?§;
         _loc2_ = 0;
         while(_loc2_ < this.§"F§)
         {
            this.§6w§[_loc2_].InitVelocityConstraints(param1);
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < param1.§5!6§)
         {
            _loc6_ = _loc4_.SolvePositionConstraints(0.75);
            _loc7_ = true;
            _loc3_ = 0;
            while(_loc3_ < this.§"F§)
            {
               _loc8_ = this.§6w§[_loc3_].SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
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
         while(_loc2_ < param1.§#!Y§)
         {
            _loc4_.SolveVelocityConstraints();
            _loc3_ = 0;
            while(_loc3_ < this.§"F§)
            {
               this.§6w§[_loc3_].SolveVelocityConstraints(param1);
               _loc3_++;
            }
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§3"'§)
         {
            if((_loc9_ = this.§0p§[_loc2_]).§<!A§() != b2Body.b2_staticBody)
            {
               _loc10_ = param1.§`!9§ * _loc9_.§?!^§.x;
               _loc11_ = param1.§`!9§ * _loc9_.§?!^§.y;
               if(_loc10_ * _loc10_ + _loc11_ * _loc11_ > b2Settings.b2_maxTranslationSquared)
               {
                  _loc9_.§?!^§.Normalize();
                  _loc9_.§?!^§.x *= b2Settings.b2_maxTranslation * param1.§4!z§;
                  _loc9_.§?!^§.y *= b2Settings.b2_maxTranslation * param1.§4!z§;
               }
               _loc12_ = param1.§`!9§ * _loc9_.m_angularVelocity;
               if(_loc12_ * _loc12_ > b2Settings.b2_maxRotationSquared)
               {
                  if(_loc9_.m_angularVelocity < 0)
                  {
                     _loc9_.m_angularVelocity = -b2Settings.b2_maxRotation * param1.§4!z§;
                  }
                  else
                  {
                     _loc9_.m_angularVelocity = b2Settings.b2_maxRotation * param1.§4!z§;
                  }
               }
               _loc9_.m_sweep.c0.SetV(_loc9_.m_sweep.c);
               _loc9_.m_sweep.a0 = _loc9_.m_sweep.a;
               _loc9_.m_sweep.c.x += param1.§`!9§ * _loc9_.§?!^§.x;
               _loc9_.m_sweep.c.y += param1.§`!9§ * _loc9_.§?!^§.y;
               _loc9_.m_sweep.a += param1.§`!9§ * _loc9_.m_angularVelocity;
               _loc9_.§-F§();
            }
            _loc2_++;
         }
         this.§7s§(_loc4_.§]!I§);
      }
      
      public function §7s§(param1:Vector.<b2ContactConstraint>) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2ContactConstraint = null;
         var _loc5_:int = 0;
         if(this.§5!N§ == null)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§<$§)
         {
            _loc3_ = this.§7!K§[_loc2_];
            _loc4_ = param1[_loc2_];
            _loc5_ = 0;
            while(_loc5_ < _loc4_.§>!%§)
            {
               §#I§.§3e§[_loc5_] = _loc4_.§=i§[_loc5_].normalImpulse;
               §#I§.§'"!§[_loc5_] = _loc4_.§=i§[_loc5_].tangentImpulse;
               _loc5_++;
            }
            this.§5!N§.PostSolve(_loc3_,§#I§);
            _loc2_++;
         }
      }
      
      public function §<",§(param1:b2Body) : void
      {
         param1.§6d§ = this.§3"'§;
         var _loc2_:* = this.§3"'§++;
         this.§0p§[_loc2_] = param1;
      }
      
      public function §@!#§(param1:b2Contact) : void
      {
         var _loc2_:* = this.§<$§++;
         this.§7!K§[_loc2_] = param1;
      }
      
      public function §]!C§(param1:b2Joint) : void
      {
         var _loc2_:* = this.§"F§++;
         this.§6w§[_loc2_] = param1;
      }
   }
}
