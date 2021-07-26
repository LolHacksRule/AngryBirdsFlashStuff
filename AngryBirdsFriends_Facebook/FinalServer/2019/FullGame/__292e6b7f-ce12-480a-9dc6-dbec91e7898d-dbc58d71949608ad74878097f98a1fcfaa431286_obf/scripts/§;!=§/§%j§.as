package §;!=§
{
   import §04§.b2Vec2;
   import §8#K§.§ !=§;
   import §8#K§.§?!t§;
   
   public class §%j§
   {
       
      
      protected var §0"^§:§ !=§;
      
      protected var §^#'§:Number = 0.0;
      
      protected var §`#m§:Number;
      
      protected var §implements§:Boolean = false;
      
      protected var §?"<§:Number = 0;
      
      protected var §9" §:Boolean;
      
      protected var §^!q§:Number;
      
      protected var §8"s§:Number;
      
      public function §%j§(param1:§ !=§)
      {
         super();
         this.§0"^§ = param1;
         this.§'$1§();
      }
      
      public function get §["c§() : Number
      {
         return this.§?"<§;
      }
      
      protected function §'$1§() : void
      {
         var _loc1_:Number = NaN;
         if(this.§0"^§.animateRotation)
         {
            _loc1_ = this.§?y§(this.§0"^§.minRotationFrequency,this.§0"^§.maxRotationFrequency);
            this.§^!q§ = _loc1_ * (Math.PI / 180) / 1000;
            if(this.§0"^§.minRotationFrequency && this.§0"^§.maxRotationFrequency)
            {
               this.§8"s§ = this.§?y§(this.§0"^§.minRotationAmplitude,this.§0"^§.maxRotationAmplitude) * (Math.PI / 180);
            }
            this.§9" § = true;
         }
      }
      
      public function get removeOnNextUpdate() : Boolean
      {
         if(this.§implements§ && this.§`#m§ < 0)
         {
            return true;
         }
         return false;
      }
      
      public function applyDamage(param1:Number, param2:§]!m§, param3:§>"G§) : void
      {
         if(this.§0"^§.stopAnimationsAfterCollision)
         {
            this.§9" § = false;
         }
      }
      
      public function spawnParticles(param1:Boolean, param2:§]!m§, param3:Number, param4:Number, param5:Number, param6:Number = 1.0) : void
      {
         var _loc10_:int = 0;
         var _loc11_:String = null;
         var _loc12_:§?!t§ = null;
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = false;
         if(!param2)
         {
            return;
         }
         var _loc7_:Number = this.§0"^§.shape.getWidth() * param6;
         var _loc8_:Number = this.§0"^§.shape.getHeight() * param6;
         if(param1)
         {
            _loc10_ = this.§0"^§.§2"a§;
         }
         else
         {
            _loc10_ = this.§0"^§.§5!P§;
         }
         var _loc9_:int = 0;
         while(_loc9_ < _loc10_)
         {
            if(param1)
            {
               _loc11_ = this.§0"^§.§;!e§(_loc9_);
            }
            else
            {
               _loc11_ = this.§0"^§.§"#Z§(_loc9_);
            }
            if(_loc11_)
            {
               _loc12_ = param2.§0!l§(_loc11_) as §?!t§;
               _loc13_ = false;
               _loc14_ = false;
               if(_loc12_)
               {
                  if(this.§0"^§.particleAmount > -1)
                  {
                     _loc12_.amount = this.§0"^§.particleAmount;
                  }
                  _loc14_ = _loc12_.overlay;
                  _loc13_ = _loc12_.inFrontObject;
               }
               param2.§-"k§(_loc11_,param3,param4,param5,§ !i§.ID_NEXT_FREE,_loc7_,_loc8_,1,_loc14_,_loc13_);
            }
            _loc9_++;
         }
      }
      
      public function §=$?§(param1:§]!m§, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:String = null;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:§>"G§ = null;
         if(this.§0"^§.§ "@§ == 0)
         {
            return;
         }
         var _loc5_:Number = this.§0"^§.explosionForce;
         var _loc6_:Number = this.§0"^§.spawnDistance;
         var _loc7_:Number = this.§0"^§.angleOffset;
         var _loc8_:int = this.§0"^§.§ "@§;
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
            _loc13_ = this.§0"^§.§4#@§(_loc10_);
            _loc14_ = param2 - _loc12_ * _loc6_;
            _loc15_ = param3 + _loc11_ * _loc6_;
            if(_loc16_ = param1.addObject(_loc13_,_loc14_,_loc15_,param4,§ !i§.ID_NEXT_FREE) as §>"G§)
            {
               _loc16_.getBody().ApplyImpulse(new b2Vec2(-_loc12_ * _loc5_,_loc11_ * _loc5_),this.§ Z§(_loc16_,param4));
            }
            param4 += _loc9_;
            _loc10_++;
         }
      }
      
      protected function § Z§(param1:§>"G§, param2:Number) : b2Vec2
      {
         return new b2Vec2(param1.getBody().GetPosition().x,param1.getBody().GetPosition().y);
      }
      
      public function §69§(param1:§]!m§, param2:Number, param3:Number) : void
      {
         if(this.§0"^§.explosionDamageRadius)
         {
            if(param1)
            {
               param1.§##Q§(param2,param3,this.§0"^§.explosionRadius,this.§0"^§.explosionForce,this.§0"^§.explosionDamageRadius,this.§0"^§.explosionDamage);
            }
         }
      }
      
      public function playCollisionSound() : void
      {
         var _loc1_:String = this.§0"^§.collisionSound;
         var _loc2_:String = this.§0"^§.soundChannel;
         this.§0"^§.playSoundLua(_loc1_,_loc2_);
      }
      
      public function playDamagedSound() : void
      {
         var _loc1_:String = this.§0"^§.damageSound;
         var _loc2_:String = this.§0"^§.soundChannel;
         this.§0"^§.playSoundLua(_loc1_,_loc2_);
      }
      
      public function playDestroyedSound() : void
      {
         var _loc1_:String = this.§0"^§.materialDestroyedSound;
         var _loc2_:String = this.§0"^§.soundChannel;
         this.§0"^§.playSoundLua(_loc1_,_loc2_);
      }
      
      public function update(param1:Number, param2:§]!m§, param3:Number = 0, param4:Number = 0) : void
      {
         this.§^#'§ += param1;
         if(this.§implements§)
         {
            this.§`#m§ -= param1;
         }
         if(this.§0"^§ && this.§9" §)
         {
            if(param1 > 0)
            {
               if(this.§0"^§.constantRotation)
               {
                  this.§?"<§ += this.§^!q§ * 1000 / param1;
               }
               else
               {
                  this.§?"<§ = Math.sin(this.§^!q§ * this.§^#'§) * this.§8"s§;
               }
            }
         }
      }
      
      protected function §?y§(param1:Number, param2:Number) : Number
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
