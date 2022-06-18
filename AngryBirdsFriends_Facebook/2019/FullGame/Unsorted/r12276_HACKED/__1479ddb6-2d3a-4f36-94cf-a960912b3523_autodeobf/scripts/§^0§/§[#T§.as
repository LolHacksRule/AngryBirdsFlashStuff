package §^0§
{
   import §-!j§.§4#"§;
   import §-!j§.§>!8§;
   import §6!R§.b2Vec2;
   
   public class §[#T§
   {
       
      
      protected var §>$5§:§>!8§;
      
      protected var §8!y§:Number = 0.0;
      
      protected var §9!y§:Number;
      
      protected var §>$<§:Boolean = false;
      
      protected var §=!m§:Number = 0;
      
      protected var §>#;§:Boolean;
      
      protected var §9#f§:Number;
      
      protected var §=",§:Number;
      
      public function §[#T§(param1:§>!8§)
      {
         super();
         this.§>$5§ = param1;
         this.§`"b§();
      }
      
      public function get §5! §() : Number
      {
         return this.§=!m§;
      }
      
      protected function §`"b§() : void
      {
         var _loc1_:Number = NaN;
         if(this.§>$5§.animateRotation)
         {
            _loc1_ = this.§'$'§(this.§>$5§.minRotationFrequency,this.§>$5§.maxRotationFrequency);
            this.§9#f§ = _loc1_ * (Math.PI / 180) / 1000;
            if(this.§>$5§.minRotationFrequency && this.§>$5§.maxRotationFrequency)
            {
               this.§=",§ = this.§'$'§(this.§>$5§.minRotationAmplitude,this.§>$5§.maxRotationAmplitude) * (Math.PI / 180);
            }
            this.§>#;§ = true;
         }
      }
      
      public function get removeOnNextUpdate() : Boolean
      {
         if(this.§>$<§ && this.§9!y§ < 0)
         {
            return true;
         }
         return false;
      }
      
      public function applyDamage(param1:Number, param2:§>"T§, param3:§=Q§) : void
      {
         if(this.§>$5§.stopAnimationsAfterCollision)
         {
            this.§>#;§ = false;
         }
      }
      
      public function spawnParticles(param1:Boolean, param2:§>"T§, param3:Number, param4:Number, param5:Number, param6:Number = 1.0) : void
      {
         var _loc10_:int = 0;
         var _loc11_:String = null;
         var _loc12_:§4#"§ = null;
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = false;
         if(!param2)
         {
            return;
         }
         var _loc7_:Number = this.§>$5§.shape.getWidth() * param6;
         var _loc8_:Number = this.§>$5§.shape.getHeight() * param6;
         if(param1)
         {
            _loc10_ = this.§>$5§.§="J§;
         }
         else
         {
            _loc10_ = this.§>$5§.§]"%§;
         }
         var _loc9_:int = 0;
         while(_loc9_ < _loc10_)
         {
            if(param1)
            {
               _loc11_ = this.§>$5§.§+"x§(_loc9_);
            }
            else
            {
               _loc11_ = this.§>$5§.§,!<§(_loc9_);
            }
            if(_loc11_)
            {
               _loc12_ = param2.§`##§(_loc11_) as §4#"§;
               _loc13_ = false;
               _loc14_ = false;
               if(_loc12_)
               {
                  if(this.§>$5§.particleAmount > -1)
                  {
                     _loc12_.amount = this.§>$5§.particleAmount;
                  }
                  _loc14_ = _loc12_.overlay;
                  _loc13_ = _loc12_.inFrontObject;
               }
               param2.§;$>§(_loc11_,param3,param4,param5,§%"^§.ID_NEXT_FREE,_loc7_,_loc8_,1,_loc14_,_loc13_);
            }
            _loc9_++;
         }
      }
      
      public function §!!2§(param1:§>"T§, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:String = null;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:§=Q§ = null;
         if(this.§>$5§.§'!z§ == 0)
         {
            return;
         }
         var _loc5_:Number = this.§>$5§.explosionForce;
         var _loc6_:Number = this.§>$5§.spawnDistance;
         var _loc7_:Number = this.§>$5§.angleOffset;
         var _loc8_:int = this.§>$5§.§'!z§;
         var _loc9_:Number = Math.PI * 2 / _loc8_;
         if(!isNaN(_loc7_))
         {
            param4 += _loc7_;
         }
         var _loc10_:int = 0;
         while(_loc10_ < _loc8_)
         {
            _loc11_ = Math.cos(param4);
            _loc12_ = Math.sin(param4);
            _loc13_ = this.§>$5§.§^!]§(_loc10_);
            _loc14_ = param2 - _loc12_ * _loc6_;
            _loc15_ = param3 + _loc11_ * _loc6_;
            if(_loc16_ = param1.addObject(_loc13_,_loc14_,_loc15_,param4,§%"^§.ID_NEXT_FREE) as §=Q§)
            {
               _loc16_.getBody().ApplyImpulse(new b2Vec2(-_loc12_ * _loc5_,_loc11_ * _loc5_),this.§"v§(_loc16_,param4));
            }
            param4 += _loc9_;
            _loc10_++;
         }
      }
      
      protected function §"v§(param1:§=Q§, param2:Number) : b2Vec2
      {
         return new b2Vec2(param1.getBody().GetPosition().x,param1.getBody().GetPosition().y);
      }
      
      public function §6#_§(param1:§>"T§, param2:Number, param3:Number) : void
      {
         if(this.§>$5§.explosionDamageRadius)
         {
            if(param1)
            {
               param1.§]#i§(param2,param3,this.§>$5§.explosionRadius,this.§>$5§.explosionForce,this.§>$5§.explosionDamageRadius,this.§>$5§.explosionDamage);
            }
         }
      }
      
      public function playCollisionSound() : void
      {
         var _loc1_:String = this.§>$5§.collisionSound;
         var _loc2_:String = this.§>$5§.soundChannel;
         this.§>$5§.playSoundLua(_loc1_,_loc2_);
      }
      
      public function playDamagedSound() : void
      {
         var _loc1_:String = this.§>$5§.damageSound;
         var _loc2_:String = this.§>$5§.soundChannel;
         this.§>$5§.playSoundLua(_loc1_,_loc2_);
      }
      
      public function playDestroyedSound() : void
      {
         var _loc1_:String = this.§>$5§.materialDestroyedSound;
         var _loc2_:String = this.§>$5§.soundChannel;
         this.§>$5§.playSoundLua(_loc1_,_loc2_);
      }
      
      public function update(param1:Number, param2:§>"T§, param3:Number = 0, param4:Number = 0) : void
      {
         this.§8!y§ += param1;
         if(this.§>$<§)
         {
            this.§9!y§ -= param1;
         }
         if(this.§>$5§ && this.§>#;§)
         {
            if(param1 > 0)
            {
               if(this.§>$5§.constantRotation)
               {
                  this.§=!m§ += this.§9#f§ * 1000 / param1;
               }
               else
               {
                  this.§=!m§ = Math.sin(this.§9#f§ * this.§8!y§) * this.§=",§;
               }
            }
         }
      }
      
      protected function §'$'§(param1:Number, param2:Number) : Number
      {
         if(isNaN(param1))
         {
            param1 = 0;
         }
         if(isNaN(param2))
         {
            param2 = 0;
         }
         return param1 + (param2 - param1) * Math.random();
      }
   }
}
