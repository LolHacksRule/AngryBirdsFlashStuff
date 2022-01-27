package §9!K§
{
   import §'!a§.*;
   import §6!n§.*;
   import §;!Z§.*;
   import §>6§.*;
   import §[9§.*;
   
   use namespace b2internal;
   
   public class b2Island
   {
      
      private static var §4?§:b2ContactImpulse = new b2ContactImpulse();
       
      
      private var §8"0§;
      
      private var §""+§:b2ContactListener;
      
      private var §1!u§:b2ContactSolver;
      
      b2internal var §0!]§:Vector.<b2Body>;
      
      b2internal var §9!Q§:Vector.<b2Contact>;
      
      b2internal var §2S§:Vector.<b2Joint>;
      
      b2internal var §3" §:int;
      
      b2internal var §@S§:int;
      
      b2internal var §9K§:int;
      
      private var §<">§:int;
      
      b2internal var §2%§:int;
      
      b2internal var §[5§:int;
      
      public function b2Island()
      {
         super();
         this.§0!]§ = new Vector.<b2Body>();
         this.§9!Q§ = new Vector.<b2Contact>();
         this.§2S§ = new Vector.<b2Joint>();
      }
      
      public function §break§(param1:int, param2:int, param3:int, param4:*, param5:b2ContactListener, param6:b2ContactSolver) : void
      {
         var _loc7_:int = 0;
         this.§<">§ = param1;
         this.§2%§ = param2;
         this.§[5§ = param3;
         this.§3" § = 0;
         this.§9K§ = 0;
         this.§@S§ = 0;
         this.§8"0§ = param4;
         this.§""+§ = param5;
         this.§1!u§ = param6;
         _loc7_ = this.§0!]§.length;
         while(_loc7_ < param1)
         {
            this.§0!]§[_loc7_] = null;
            _loc7_++;
         }
         _loc7_ = this.§9!Q§.length;
         while(_loc7_ < param2)
         {
            this.§9!Q§[_loc7_] = null;
            _loc7_++;
         }
         _loc7_ = this.§2S§.length;
         while(_loc7_ < param3)
         {
            this.§2S§[_loc7_] = null;
            _loc7_++;
         }
      }
      
      public function §6!Y§() : void
      {
         this.§3" § = 0;
         this.§9K§ = 0;
         this.§@S§ = 0;
      }
      
      public function §;#§(param1:b2TimeStep, param2:b2Vec2, param3:Boolean) : void
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
         while(_loc4_ < this.§3" §)
         {
            if((_loc6_ = this.§0!]§[_loc4_]).§finally§() == b2Body.b2_dynamicBody)
            {
               _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.c);
               _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
               _loc6_.§9e§.x += param1.§;@§ * (param2.x + _loc6_.§var § * _loc6_.§1"$§.x);
               _loc6_.§9e§.y += param1.§;@§ * (param2.y + _loc6_.§var § * _loc6_.§1"$§.y);
               _loc6_.m_angularVelocity += param1.§;@§ * _loc6_.§,"!§ * _loc6_.§4!N§;
               _loc6_.§9e§.§#!;§(b2Math.§5!^§(1 - param1.§;@§ * _loc6_.§1!Q§,0,1));
               _loc6_.m_angularVelocity *= b2Math.§5!^§(1 - param1.§;@§ * _loc6_.§8I§,0,1);
            }
            _loc4_++;
         }
         this.§1!u§.§break§(param1,this.§9!Q§,this.§9K§,this.§8"0§);
         var _loc8_:b2ContactSolver;
         (_loc8_ = this.§1!u§).InitVelocityConstraints(param1);
         _loc4_ = 0;
         while(_loc4_ < this.§@S§)
         {
            (_loc7_ = this.§2S§[_loc4_]).InitVelocityConstraints(param1);
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < param1.§?!l§)
         {
            _loc5_ = 0;
            while(_loc5_ < this.§@S§)
            {
               (_loc7_ = this.§2S§[_loc5_]).SolveVelocityConstraints(param1);
               _loc5_++;
            }
            _loc8_.SolveVelocityConstraints();
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < this.§@S§)
         {
            (_loc7_ = this.§2S§[_loc4_]).§<!C§();
            _loc4_++;
         }
         _loc8_.§<!C§();
         _loc4_ = 0;
         while(_loc4_ < this.§3" §)
         {
            if((_loc6_ = this.§0!]§[_loc4_]).§finally§() != b2Body.b2_staticBody)
            {
               _loc9_ = param1.§;@§ * _loc6_.§9e§.x;
               _loc10_ = param1.§;@§ * _loc6_.§9e§.y;
               if(_loc9_ * _loc9_ + _loc10_ * _loc10_ > b2Settings.b2_maxTranslationSquared)
               {
                  _loc6_.§9e§.Normalize();
                  _loc6_.§9e§.x *= b2Settings.b2_maxTranslation * param1.§ j§;
                  _loc6_.§9e§.y *= b2Settings.b2_maxTranslation * param1.§ j§;
               }
               _loc11_ = param1.§;@§ * _loc6_.m_angularVelocity;
               if(_loc11_ * _loc11_ > b2Settings.b2_maxRotationSquared)
               {
                  if(_loc6_.m_angularVelocity < 0)
                  {
                     _loc6_.m_angularVelocity = -b2Settings.b2_maxRotation * param1.§ j§;
                  }
                  else
                  {
                     _loc6_.m_angularVelocity = b2Settings.b2_maxRotation * param1.§ j§;
                  }
               }
               _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.c);
               _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
               _loc6_.m_sweep.c.x += param1.§;@§ * _loc6_.§9e§.x;
               _loc6_.m_sweep.c.y += param1.§;@§ * _loc6_.§9e§.y;
               _loc6_.m_sweep.a += param1.§;@§ * _loc6_.m_angularVelocity;
               _loc6_.§>!b§();
            }
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < param1.§,!-§)
         {
            _loc12_ = _loc8_.SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
            _loc13_ = true;
            _loc5_ = 0;
            while(_loc5_ < this.§@S§)
            {
               _loc14_ = (_loc7_ = this.§2S§[_loc5_]).SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
               _loc13_ = _loc13_ && _loc14_;
               _loc5_++;
            }
            if(_loc12_ && _loc13_)
            {
               break;
            }
            _loc4_++;
         }
         this.§"!g§(_loc8_.§<E§);
         if(param3)
         {
            _loc15_ = Number.MAX_VALUE;
            _loc16_ = b2Settings.b2_linearSleepTolerance * b2Settings.b2_linearSleepTolerance;
            _loc17_ = b2Settings.b2_angularSleepTolerance * b2Settings.b2_angularSleepTolerance;
            _loc4_ = 0;
            while(_loc4_ < this.§3" §)
            {
               if((_loc6_ = this.§0!]§[_loc4_]).§finally§() != b2Body.b2_staticBody)
               {
                  if((_loc6_.§true§ & b2Body.§--§) == 0)
                  {
                     _loc6_.§0!-§ = 0;
                     _loc15_ = 0;
                  }
                  if((_loc6_.§true§ & b2Body.§--§) == 0 || _loc6_.m_angularVelocity * _loc6_.m_angularVelocity > _loc17_ || b2Math.§>P§(_loc6_.§9e§,_loc6_.§9e§) > _loc16_)
                  {
                     _loc6_.§0!-§ = 0;
                     _loc15_ = 0;
                  }
                  else
                  {
                     _loc6_.§0!-§ += param1.§;@§;
                     _loc15_ = b2Math.§#!t§(_loc15_,_loc6_.§0!-§);
                  }
               }
               _loc4_++;
            }
            if(_loc15_ >= b2Settings.b2_timeToSleep)
            {
               _loc4_ = 0;
               while(_loc4_ < this.§3" §)
               {
                  (_loc6_ = this.§0!]§[_loc4_]).SetAwake(false);
                  _loc4_++;
               }
            }
         }
      }
      
      public function §@!<§(param1:b2TimeStep) : void
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
         this.§1!u§.§break§(param1,this.§9!Q§,this.§9K§,this.§8"0§);
         var _loc4_:b2ContactSolver = this.§1!u§;
         _loc2_ = 0;
         while(_loc2_ < this.§@S§)
         {
            this.§2S§[_loc2_].InitVelocityConstraints(param1);
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < param1.§,!-§)
         {
            _loc6_ = _loc4_.SolvePositionConstraints(0.75);
            _loc7_ = true;
            _loc3_ = 0;
            while(_loc3_ < this.§@S§)
            {
               _loc8_ = this.§2S§[_loc3_].SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
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
         while(_loc2_ < param1.§?!l§)
         {
            _loc4_.SolveVelocityConstraints();
            _loc3_ = 0;
            while(_loc3_ < this.§@S§)
            {
               this.§2S§[_loc3_].SolveVelocityConstraints(param1);
               _loc3_++;
            }
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§3" §)
         {
            if((_loc9_ = this.§0!]§[_loc2_]).§finally§() != b2Body.b2_staticBody)
            {
               _loc10_ = param1.§;@§ * _loc9_.§9e§.x;
               _loc11_ = param1.§;@§ * _loc9_.§9e§.y;
               if(_loc10_ * _loc10_ + _loc11_ * _loc11_ > b2Settings.b2_maxTranslationSquared)
               {
                  _loc9_.§9e§.Normalize();
                  _loc9_.§9e§.x *= b2Settings.b2_maxTranslation * param1.§ j§;
                  _loc9_.§9e§.y *= b2Settings.b2_maxTranslation * param1.§ j§;
               }
               _loc12_ = param1.§;@§ * _loc9_.m_angularVelocity;
               if(_loc12_ * _loc12_ > b2Settings.b2_maxRotationSquared)
               {
                  if(_loc9_.m_angularVelocity < 0)
                  {
                     _loc9_.m_angularVelocity = -b2Settings.b2_maxRotation * param1.§ j§;
                  }
                  else
                  {
                     _loc9_.m_angularVelocity = b2Settings.b2_maxRotation * param1.§ j§;
                  }
               }
               _loc9_.m_sweep.c0.SetV(_loc9_.m_sweep.c);
               _loc9_.m_sweep.a0 = _loc9_.m_sweep.a;
               _loc9_.m_sweep.c.x += param1.§;@§ * _loc9_.§9e§.x;
               _loc9_.m_sweep.c.y += param1.§;@§ * _loc9_.§9e§.y;
               _loc9_.m_sweep.a += param1.§;@§ * _loc9_.m_angularVelocity;
               _loc9_.§>!b§();
            }
            _loc2_++;
         }
         this.§"!g§(_loc4_.§<E§);
      }
      
      public function §"!g§(param1:Vector.<b2ContactConstraint>) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2ContactConstraint = null;
         var _loc5_:int = 0;
         if(this.§""+§ == null)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§9K§)
         {
            _loc3_ = this.§9!Q§[_loc2_];
            _loc4_ = param1[_loc2_];
            _loc5_ = 0;
            while(_loc5_ < _loc4_.§7!Z§)
            {
               §4?§.§<"<§[_loc5_] = _loc4_.§'"2§[_loc5_].normalImpulse;
               §4?§.§+"<§[_loc5_] = _loc4_.§'"2§[_loc5_].tangentImpulse;
               _loc5_++;
            }
            this.§""+§.PostSolve(_loc3_,§4?§);
            _loc2_++;
         }
      }
      
      public function §^!-§(param1:b2Body) : void
      {
         param1.§[T§ = this.§3" §;
         var _loc2_:* = this.§3" §++;
         this.§0!]§[_loc2_] = param1;
      }
      
      public function §#!3§(param1:b2Contact) : void
      {
         var _loc2_:* = this.§9K§++;
         this.§9!Q§[_loc2_] = param1;
      }
      
      public function §@!"§(param1:b2Joint) : void
      {
         var _loc2_:* = this.§@S§++;
         this.§2S§[_loc2_] = param1;
      }
   }
}
