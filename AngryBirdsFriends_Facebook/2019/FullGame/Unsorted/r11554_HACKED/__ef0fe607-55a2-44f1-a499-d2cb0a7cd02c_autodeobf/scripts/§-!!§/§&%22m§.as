package §-!!§
{
   import §?§.§7E§;
   import §?§.§["+§;
   import §`# §.b2Vec2;
   
   public class §&"m§
   {
       
      
      protected var §<"<§:§7E§;
      
      protected var §5#w§:Number = 0.0;
      
      protected var §%"R§:Number;
      
      protected var §=##§:Boolean = false;
      
      protected var §<"e§:Number = 0;
      
      protected var §8"E§:Boolean;
      
      protected var §7!o§:Number;
      
      protected var §%#C§:Number;
      
      public function §&"m§(param1:§7E§)
      {
         super();
         this.§<"<§ = param1;
         this.§3#6§();
      }
      
      public function get §9!B§() : Number
      {
         return this.§<"e§;
      }
      
      protected function §3#6§() : void
      {
         var _loc1_:Number = NaN;
         if(this.§<"<§.animateRotation)
         {
            _loc1_ = this.§8$D§(this.§<"<§.minRotationFrequency,this.§<"<§.maxRotationFrequency);
            this.§7!o§ = _loc1_ * (Math.PI / 180) / 1000;
            if(this.§<"<§.minRotationFrequency && this.§<"<§.maxRotationFrequency)
            {
               this.§%#C§ = this.§8$D§(this.§<"<§.minRotationAmplitude,this.§<"<§.maxRotationAmplitude) * (Math.PI / 180);
            }
            this.§8"E§ = true;
         }
      }
      
      public function get removeOnNextUpdate() : Boolean
      {
         if(this.§=##§ && this.§%"R§ < 0)
         {
            return true;
         }
         return false;
      }
      
      public function applyDamage(param1:Number, param2:§ #'§, param3:§8"J§) : void
      {
         if(this.§<"<§.stopAnimationsAfterCollision)
         {
            this.§8"E§ = false;
         }
      }
      
      public function spawnParticles(param1:Boolean, param2:§ #'§, param3:Number, param4:Number, param5:Number, param6:Number = 1.0) : void
      {
         var _loc10_:int = 0;
         var _loc11_:String = null;
         var _loc12_:§["+§ = null;
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = false;
         if(!param2)
         {
            return;
         }
         var _loc7_:Number = this.§<"<§.shape.getWidth() * param6;
         var _loc8_:Number = this.§<"<§.shape.getHeight() * param6;
         if(param1)
         {
            _loc10_ = this.§<"<§.§@#h§;
         }
         else
         {
            _loc10_ = this.§<"<§.§6"9§;
         }
         var _loc9_:int = 0;
         while(_loc9_ < _loc10_)
         {
            if(param1)
            {
               _loc11_ = this.§<"<§.§%"U§(_loc9_);
            }
            else
            {
               _loc11_ = this.§<"<§.§;"Q§(_loc9_);
            }
            if(_loc11_)
            {
               _loc12_ = param2.§1"k§(_loc11_) as §["+§;
               _loc13_ = false;
               _loc14_ = false;
               if(_loc12_)
               {
                  if(this.§<"<§.particleAmount > -1)
                  {
                     _loc12_.amount = this.§<"<§.particleAmount;
                  }
                  _loc14_ = _loc12_.overlay;
                  _loc13_ = _loc12_.inFrontObject;
               }
               param2.§?#q§(_loc11_,param3,param4,param5,§7S§.ID_NEXT_FREE,_loc7_,_loc8_,1,_loc14_,_loc13_);
            }
            _loc9_++;
         }
      }
      
      public function §#!%§(param1:§ #'§, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:String = null;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:§8"J§ = null;
         if(this.§<"<§.§'$!§ == 0)
         {
            return;
         }
         var _loc5_:Number = this.§<"<§.explosionForce;
         var _loc6_:Number = this.§<"<§.spawnDistance;
         var _loc7_:Number = this.§<"<§.angleOffset;
         var _loc8_:int = this.§<"<§.§'$!§;
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
            _loc13_ = this.§<"<§.§<$5§(_loc10_);
            _loc14_ = param2 - _loc12_ * _loc6_;
            _loc15_ = param3 + _loc11_ * _loc6_;
            if(_loc16_ = param1.addObject(_loc13_,_loc14_,_loc15_,param4,§7S§.ID_NEXT_FREE) as §8"J§)
            {
               _loc16_.getBody().ApplyImpulse(new b2Vec2(-_loc12_ * _loc5_,_loc11_ * _loc5_),this.§]!9§(_loc16_,param4));
            }
            param4 += _loc9_;
            _loc10_++;
         }
      }
      
      protected function §]!9§(param1:§8"J§, param2:Number) : b2Vec2
      {
         return new b2Vec2(param1.getBody().GetPosition().x,param1.getBody().GetPosition().y);
      }
      
      public function §9#r§(param1:§ #'§, param2:Number, param3:Number) : void
      {
         if(this.§<"<§.explosionDamageRadius)
         {
            if(param1)
            {
               param1.§2,§(param2,param3,this.§<"<§.explosionRadius,this.§<"<§.explosionForce,this.§<"<§.explosionDamageRadius,this.§<"<§.explosionDamage);
            }
         }
      }
      
      public function playCollisionSound() : void
      {
         var _loc1_:String = this.§<"<§.collisionSound;
         var _loc2_:String = this.§<"<§.soundChannel;
         this.§<"<§.playSoundLua(_loc1_,_loc2_);
      }
      
      public function playDamagedSound() : void
      {
         var _loc1_:String = this.§<"<§.damageSound;
         var _loc2_:String = this.§<"<§.soundChannel;
         this.§<"<§.playSoundLua(_loc1_,_loc2_);
      }
      
      public function playDestroyedSound() : void
      {
         var _loc1_:String = this.§<"<§.materialDestroyedSound;
         var _loc2_:String = this.§<"<§.soundChannel;
         this.§<"<§.playSoundLua(_loc1_,_loc2_);
      }
      
      public function update(param1:Number, param2:§ #'§, param3:Number = 0, param4:Number = 0) : void
      {
         this.§5#w§ += param1;
         if(this.§=##§)
         {
            this.§%"R§ -= param1;
         }
         if(this.§<"<§ && this.§8"E§)
         {
            if(param1 > 0)
            {
               if(this.§<"<§.constantRotation)
               {
                  this.§<"e§ += this.§7!o§ * 1000 / param1;
               }
               else
               {
                  this.§<"e§ = Math.sin(this.§7!o§ * this.§5#w§) * this.§%#C§;
               }
            }
         }
      }
      
      protected function §8$D§(param1:Number, param2:Number) : Number
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
