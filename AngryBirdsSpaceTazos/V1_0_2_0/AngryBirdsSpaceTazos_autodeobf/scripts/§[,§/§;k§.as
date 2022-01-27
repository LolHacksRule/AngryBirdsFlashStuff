package §[,§
{
   import §&!S§.b2Vec2;
   import §;"=§.§!!O§;
   
   public class §;k§
   {
       
      
      protected var §^B§:§!!O§;
      
      protected var §;!8§:Number = 0.0;
      
      protected var §-"C§:Number;
      
      protected var §4C§:Boolean = false;
      
      protected var §&A§:Number = 0;
      
      protected var § E§:Boolean;
      
      protected var §`!h§:Number;
      
      protected var §;a§:Number;
      
      public function §;k§(param1:§!!O§)
      {
         super();
         this.§^B§ = param1;
         this.§#"7§();
      }
      
      public function get §?x§() : Number
      {
         return this.§&A§;
      }
      
      protected function §#"7§() : void
      {
         var _loc1_:Number = NaN;
         if(this.§^B§.animateRotation)
         {
            _loc1_ = this.§,!Z§(this.§^B§.minRotationFrequency,this.§^B§.maxRotationFrequency);
            this.§`!h§ = _loc1_ * (Math.PI / 180) / 1000;
            if(this.§^B§.minRotationFrequency && this.§^B§.maxRotationFrequency)
            {
               this.§;a§ = this.§,!Z§(this.§^B§.minRotationAmplitude,this.§^B§.maxRotationAmplitude) * (Math.PI / 180);
            }
            this.§ E§ = true;
         }
      }
      
      public function get removeOnNextUpdate() : Boolean
      {
         if(this.§4C§ && this.§-"C§ < 0)
         {
            return true;
         }
         return false;
      }
      
      public function applyDamage(param1:Number, param2:§class§, param3:§5,§) : void
      {
         if(this.§^B§.stopAnimationsAfterCollision)
         {
            this.§ E§ = false;
         }
      }
      
      public function §>§(param1:§class§, param2:Number, param3:Number, param4:Number, param5:Number = 1.0) : void
      {
         var _loc9_:String = null;
         var _loc6_:Number = this.§^B§.shape.getWidth() * param5;
         var _loc7_:Number = this.§^B§.shape.getHeight() * param5;
         var _loc8_:int = 0;
         while(_loc8_ < this.§^B§.§=0§)
         {
            if(_loc9_ = this.§^B§.§6!§(_loc8_))
            {
               param1.§]"F§(_loc9_,param2,param3,param4,§]j§.§4"1§,_loc6_,_loc7_,1,true);
            }
            _loc8_++;
         }
      }
      
      public function §`i§(param1:§class§, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:String = null;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:§5,§ = null;
         if(this.§^B§.§=!"§ == 0)
         {
            return;
         }
         var _loc5_:Number = this.§^B§.explosionForce;
         var _loc6_:Number = this.§^B§.spawnDistance;
         var _loc7_:Number = this.§^B§.angleOffset;
         var _loc8_:int = this.§^B§.§=!"§;
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
            _loc13_ = this.§^B§.§4v§(_loc10_);
            _loc14_ = param2 - _loc12_ * _loc6_;
            _loc15_ = param3 + _loc11_ * _loc6_;
            if(_loc16_ = param1.addObject(_loc13_,_loc14_,_loc15_,param4,§]j§.§4"1§) as §5,§)
            {
               _loc16_.§ <§().ApplyImpulse(new b2Vec2(-_loc12_ * _loc5_,_loc11_ * _loc5_),this.§9K§(_loc16_,param4));
            }
            param4 += _loc9_;
            _loc10_++;
         }
      }
      
      protected function §9K§(param1:§5,§, param2:Number) : b2Vec2
      {
         return new b2Vec2(param1.§ <§().GetPosition().x,param1.§ <§().GetPosition().y);
      }
      
      public function makeExplosion(param1:§class§, param2:Number, param3:Number) : void
      {
         if(this.§^B§.explosionDamageRadius)
         {
            if(param1)
            {
               param1.§[#§(param2,param3,this.§^B§.explosionRadius,this.§^B§.explosionForce,this.§^B§.explosionDamageRadius,this.§^B§.explosionDamage);
            }
         }
      }
      
      public function playCollisionSound() : void
      {
         var _loc1_:String = this.§^B§.collisionSound;
         if(!_loc1_)
         {
            return;
         }
         this.§^B§.playSoundLua(_loc1_);
      }
      
      public function playDamagedSound() : void
      {
         var _loc1_:String = this.§^B§.damageSound;
         this.§^B§.playSoundLua(_loc1_);
      }
      
      public function playDestroyedSound() : void
      {
         var _loc1_:String = this.§^B§.§?!r§;
         this.§^B§.playSoundLua(_loc1_);
      }
      
      public function update(param1:Number, param2:§class§, param3:Number = 0, param4:Number = 0) : void
      {
         this.§;!8§ += param1;
         if(this.§4C§)
         {
            this.§-"C§ -= param1;
         }
         if(this.§^B§ && this.§ E§)
         {
            if(param1 > 0)
            {
               if(this.§^B§.constantRotation)
               {
                  this.§&A§ += this.§`!h§ * 1000 / param1;
               }
               else
               {
                  this.§&A§ = Math.sin(this.§`!h§ * this.§;!8§) * this.§;a§;
               }
            }
         }
      }
      
      protected function §,!Z§(param1:Number, param2:Number) : Number
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
      
      public function get §9!,§() : Boolean
      {
         return this.§4C§;
      }
      
      public function get §8!y§() : Number
      {
         return this.§-"C§;
      }
   }
}
