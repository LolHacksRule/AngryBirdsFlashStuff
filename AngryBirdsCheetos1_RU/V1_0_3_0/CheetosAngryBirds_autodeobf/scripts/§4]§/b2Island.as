package §4]§
{
   import §#,§.*;
   import §&U§.*;
   import §7$§.*;
   import §8<§.*;
   import §[R§.*;
   
   use namespace b2internal;
   
   public class b2Island
   {
      
      private static var §`8§:b2ContactImpulse = new b2ContactImpulse();
       
      
      private var §``§;
      
      private var §0?§:b2ContactListener;
      
      private var §&!W§:b2ContactSolver;
      
      b2internal var §3!Q§:Vector.<b2Body>;
      
      b2internal var §8`§:Vector.<b2Contact>;
      
      b2internal var §#S§:Vector.<b2Joint>;
      
      b2internal var §7!_§:int;
      
      b2internal var §3I§:int;
      
      b2internal var §?!Y§:int;
      
      private var §,y§:int;
      
      b2internal var §5!4§:int;
      
      b2internal var §+q§:int;
      
      public function b2Island()
      {
         super();
         this.§3!Q§ = new Vector.<b2Body>();
         this.§8`§ = new Vector.<b2Contact>();
         this.§#S§ = new Vector.<b2Joint>();
      }
      
      public function §9!K§(param1:int, param2:int, param3:int, param4:*, param5:b2ContactListener, param6:b2ContactSolver) : void
      {
         var _loc7_:int = 0;
         this.§,y§ = param1;
         this.§5!4§ = param2;
         this.§+q§ = param3;
         this.§7!_§ = 0;
         this.§?!Y§ = 0;
         this.§3I§ = 0;
         this.§``§ = param4;
         this.§0?§ = param5;
         this.§&!W§ = param6;
         _loc7_ = this.§3!Q§.length;
         while(_loc7_ < param1)
         {
            this.§3!Q§[_loc7_] = null;
            _loc7_++;
         }
         _loc7_ = this.§8`§.length;
         while(_loc7_ < param2)
         {
            this.§8`§[_loc7_] = null;
            _loc7_++;
         }
         _loc7_ = this.§#S§.length;
         while(_loc7_ < param3)
         {
            this.§#S§[_loc7_] = null;
            _loc7_++;
         }
      }
      
      public function §2D§() : void
      {
         this.§7!_§ = 0;
         this.§?!Y§ = 0;
         this.§3I§ = 0;
      }
      
      public function §4!Z§(param1:b2TimeStep, param2:b2Vec2, param3:Boolean) : void
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
         while(_loc4_ < this.§7!_§)
         {
            if((_loc6_ = this.§3!Q§[_loc4_]).§,!W§() == b2Body.b2_dynamicBody)
            {
               _loc6_.§;!8§.x += param1.§=&§ * (param2.x + _loc6_.§1c§ * _loc6_.§"!N§.x);
               _loc6_.§;!8§.y += param1.§=&§ * (param2.y + _loc6_.§1c§ * _loc6_.§"!N§.y);
               _loc6_.m_angularVelocity += param1.§=&§ * _loc6_.§1!`§ * _loc6_.§%!1§;
               _loc6_.§;!8§.§=!3§(b2Math.§'U§(1 - param1.§=&§ * _loc6_.§-t§,0,1));
               _loc6_.m_angularVelocity *= b2Math.§'U§(1 - param1.§=&§ * _loc6_.§#!C§,0,1);
            }
            _loc4_++;
         }
         this.§&!W§.§9!K§(param1,this.§8`§,this.§?!Y§,this.§``§);
         var _loc8_:b2ContactSolver;
         (_loc8_ = this.§&!W§).InitVelocityConstraints(param1);
         _loc4_ = 0;
         while(_loc4_ < this.§3I§)
         {
            (_loc7_ = this.§#S§[_loc4_]).InitVelocityConstraints(param1);
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < param1.§4Y§)
         {
            _loc5_ = 0;
            while(_loc5_ < this.§3I§)
            {
               (_loc7_ = this.§#S§[_loc5_]).SolveVelocityConstraints(param1);
               _loc5_++;
            }
            _loc8_.SolveVelocityConstraints();
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < this.§3I§)
         {
            (_loc7_ = this.§#S§[_loc4_]).§`&§();
            _loc4_++;
         }
         _loc8_.§`&§();
         _loc4_ = 0;
         while(_loc4_ < this.§7!_§)
         {
            if((_loc6_ = this.§3!Q§[_loc4_]).§,!W§() != b2Body.b2_staticBody)
            {
               _loc9_ = param1.§=&§ * _loc6_.§;!8§.x;
               _loc10_ = param1.§=&§ * _loc6_.§;!8§.y;
               if(_loc9_ * _loc9_ + _loc10_ * _loc10_ > b2Settings.b2_maxTranslationSquared)
               {
                  _loc6_.§;!8§.Normalize();
                  _loc6_.§;!8§.x *= b2Settings.b2_maxTranslation * param1.§+8§;
                  _loc6_.§;!8§.y *= b2Settings.b2_maxTranslation * param1.§+8§;
               }
               _loc11_ = param1.§=&§ * _loc6_.m_angularVelocity;
               if(_loc11_ * _loc11_ > b2Settings.b2_maxRotationSquared)
               {
                  if(_loc6_.m_angularVelocity < 0)
                  {
                     _loc6_.m_angularVelocity = -b2Settings.b2_maxRotation * param1.§+8§;
                  }
                  else
                  {
                     _loc6_.m_angularVelocity = b2Settings.b2_maxRotation * param1.§+8§;
                  }
               }
               _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.c);
               _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
               _loc6_.m_sweep.c.x += param1.§=&§ * _loc6_.§;!8§.x;
               _loc6_.m_sweep.c.y += param1.§=&§ * _loc6_.§;!8§.y;
               _loc6_.m_sweep.a += param1.§=&§ * _loc6_.m_angularVelocity;
               _loc6_.§-#§();
            }
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < param1.§+U§)
         {
            _loc12_ = _loc8_.SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
            _loc13_ = true;
            _loc5_ = 0;
            while(_loc5_ < this.§3I§)
            {
               _loc14_ = (_loc7_ = this.§#S§[_loc5_]).SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
               _loc13_ = _loc13_ && _loc14_;
               _loc5_++;
            }
            if(_loc12_ && _loc13_)
            {
               break;
            }
            _loc4_++;
         }
         this.§7W§(_loc8_.§!d§);
         if(param3)
         {
            _loc15_ = Number.MAX_VALUE;
            _loc16_ = b2Settings.b2_linearSleepTolerance * b2Settings.b2_linearSleepTolerance;
            _loc17_ = b2Settings.b2_angularSleepTolerance * b2Settings.b2_angularSleepTolerance;
            _loc4_ = 0;
            while(_loc4_ < this.§7!_§)
            {
               if((_loc6_ = this.§3!Q§[_loc4_]).§,!W§() != b2Body.b2_staticBody)
               {
                  if((_loc6_.§0!A§ & b2Body.§+h§) == 0)
                  {
                     _loc6_.§9!,§ = 0;
                     _loc15_ = 0;
                  }
                  if((_loc6_.§0!A§ & b2Body.§+h§) == 0 || _loc6_.m_angularVelocity * _loc6_.m_angularVelocity > _loc17_ || b2Math.§@!#§(_loc6_.§;!8§,_loc6_.§;!8§) > _loc16_)
                  {
                     _loc6_.§9!,§ = 0;
                     _loc15_ = 0;
                  }
                  else
                  {
                     _loc6_.§9!,§ += param1.§=&§;
                     _loc15_ = b2Math.§;z§(_loc15_,_loc6_.§9!,§);
                  }
               }
               _loc4_++;
            }
            if(_loc15_ >= b2Settings.b2_timeToSleep)
            {
               _loc4_ = 0;
               while(_loc4_ < this.§7!_§)
               {
                  (_loc6_ = this.§3!Q§[_loc4_]).SetAwake(false);
                  _loc4_++;
               }
            }
         }
      }
      
      public function §6!@§(param1:b2TimeStep) : void
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
         this.§&!W§.§9!K§(param1,this.§8`§,this.§?!Y§,this.§``§);
         var _loc4_:b2ContactSolver = this.§&!W§;
         _loc2_ = 0;
         while(_loc2_ < this.§3I§)
         {
            this.§#S§[_loc2_].InitVelocityConstraints(param1);
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < param1.§4Y§)
         {
            _loc4_.SolveVelocityConstraints();
            _loc3_ = 0;
            while(_loc3_ < this.§3I§)
            {
               this.§#S§[_loc3_].SolveVelocityConstraints(param1);
               _loc3_++;
            }
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§7!_§)
         {
            if((_loc6_ = this.§3!Q§[_loc2_]).§,!W§() != b2Body.b2_staticBody)
            {
               _loc7_ = param1.§=&§ * _loc6_.§;!8§.x;
               _loc8_ = param1.§=&§ * _loc6_.§;!8§.y;
               if(_loc7_ * _loc7_ + _loc8_ * _loc8_ > b2Settings.b2_maxTranslationSquared)
               {
                  _loc6_.§;!8§.Normalize();
                  _loc6_.§;!8§.x *= b2Settings.b2_maxTranslation * param1.§+8§;
                  _loc6_.§;!8§.y *= b2Settings.b2_maxTranslation * param1.§+8§;
               }
               _loc9_ = param1.§=&§ * _loc6_.m_angularVelocity;
               if(_loc9_ * _loc9_ > b2Settings.b2_maxRotationSquared)
               {
                  if(_loc6_.m_angularVelocity < 0)
                  {
                     _loc6_.m_angularVelocity = -b2Settings.b2_maxRotation * param1.§+8§;
                  }
                  else
                  {
                     _loc6_.m_angularVelocity = b2Settings.b2_maxRotation * param1.§+8§;
                  }
               }
               _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.c);
               _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
               _loc6_.m_sweep.c.x += param1.§=&§ * _loc6_.§;!8§.x;
               _loc6_.m_sweep.c.y += param1.§=&§ * _loc6_.§;!8§.y;
               _loc6_.m_sweep.a += param1.§=&§ * _loc6_.m_angularVelocity;
               _loc6_.§-#§();
            }
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < param1.§+U§)
         {
            _loc10_ = _loc4_.SolvePositionConstraints(0.75);
            _loc11_ = true;
            _loc3_ = 0;
            while(_loc3_ < this.§3I§)
            {
               _loc12_ = this.§#S§[_loc3_].SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
               _loc11_ = _loc11_ && _loc12_;
               _loc3_++;
            }
            if(_loc10_ && _loc11_)
            {
               break;
            }
            _loc2_++;
         }
         this.§7W§(_loc4_.§!d§);
      }
      
      public function §7W§(param1:Vector.<b2ContactConstraint>) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2ContactConstraint = null;
         var _loc5_:int = 0;
         if(this.§0?§ == null)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§?!Y§)
         {
            _loc3_ = this.§8`§[_loc2_];
            _loc4_ = param1[_loc2_];
            _loc5_ = 0;
            while(_loc5_ < _loc4_.§ j§)
            {
               §`8§.§5!K§[_loc5_] = _loc4_.§?"§[_loc5_].normalImpulse;
               §`8§.§+f§[_loc5_] = _loc4_.§?"§[_loc5_].tangentImpulse;
               _loc5_++;
            }
            this.§0?§.PostSolve(_loc3_,§`8§);
            _loc2_++;
         }
      }
      
      public function §[v§(param1:b2Body) : void
      {
         param1.§]b§ = this.§7!_§;
         var _loc2_:* = this.§7!_§++;
         this.§3!Q§[_loc2_] = param1;
      }
      
      public function §#!X§(param1:b2Contact) : void
      {
         var _loc2_:* = this.§?!Y§++;
         this.§8`§[_loc2_] = param1;
      }
      
      public function §'i§(param1:b2Joint) : void
      {
         var _loc2_:* = this.§3I§++;
         this.§#S§[_loc2_] = param1;
      }
   }
}
