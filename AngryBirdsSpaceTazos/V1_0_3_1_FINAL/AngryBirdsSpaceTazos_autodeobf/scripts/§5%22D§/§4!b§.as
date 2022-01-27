package §5"D§
{
   import §6!M§.§;!4§;
   import §[!f§.b2Vec2;
   
   public class §4!b§
   {
       
      
      protected var §'!m§:§;!4§;
      
      protected var §%!7§:Number = 0.0;
      
      protected var §%!$§:Number;
      
      protected var §9!F§:Boolean = false;
      
      protected var §<"@§:Number = 0;
      
      protected var §`"E§:Boolean;
      
      protected var §,c§:Number;
      
      protected var §@!N§:Number;
      
      public function §4!b§(param1:§;!4§)
      {
         super();
         this.§'!m§ = param1;
         this.§3!s§();
      }
      
      public function get §=R§() : Number
      {
         return this.§<"@§;
      }
      
      protected function §3!s§() : void
      {
         var _loc1_:Number = NaN;
         if(this.§'!m§.animateRotation)
         {
            _loc1_ = this.§;"3§(this.§'!m§.minRotationFrequency,this.§'!m§.maxRotationFrequency);
            this.§,c§ = _loc1_ * (Math.PI / 180) / 1000;
            if(this.§'!m§.minRotationFrequency && this.§'!m§.maxRotationFrequency)
            {
               this.§@!N§ = this.§;"3§(this.§'!m§.minRotationAmplitude,this.§'!m§.maxRotationAmplitude) * (Math.PI / 180);
            }
            this.§`"E§ = true;
         }
      }
      
      public function get removeOnNextUpdate() : Boolean
      {
         if(this.§9!F§ && this.§%!$§ < 0)
         {
            return true;
         }
         return false;
      }
      
      public function applyDamage(param1:Number, param2:§0!5§, param3:§6!!§) : void
      {
         if(this.§'!m§.stopAnimationsAfterCollision)
         {
            this.§`"E§ = false;
         }
      }
      
      public function § !q§(param1:§0!5§, param2:Number, param3:Number, param4:Number, param5:Number = 1.0) : void
      {
         var _loc9_:String = null;
         var _loc6_:Number = this.§'!m§.shape.getWidth() * param5;
         var _loc7_:Number = this.§'!m§.shape.getHeight() * param5;
         var _loc8_:int = 0;
         while(_loc8_ < this.§'!m§.§+! §)
         {
            if(_loc9_ = this.§'!m§.§,!Q§(_loc8_))
            {
               param1.§[!R§(_loc9_,param2,param3,param4,§3!3§.§'!y§,_loc6_,_loc7_,1,true);
            }
            _loc8_++;
         }
      }
      
      public function §4!1§(param1:§0!5§, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:String = null;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:§6!!§ = null;
         if(this.§'!m§.§[!L§ == 0)
         {
            return;
         }
         var _loc5_:Number = this.§'!m§.explosionForce;
         var _loc6_:Number = this.§'!m§.spawnDistance;
         var _loc7_:Number = this.§'!m§.angleOffset;
         var _loc8_:int = this.§'!m§.§[!L§;
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
            _loc13_ = this.§'!m§.§%S§(_loc10_);
            _loc14_ = param2 - _loc12_ * _loc6_;
            _loc15_ = param3 + _loc11_ * _loc6_;
            if(_loc16_ = param1.addObject(_loc13_,_loc14_,_loc15_,param4,§3!3§.§'!y§) as §6!!§)
            {
               _loc16_.§9B§().ApplyImpulse(new b2Vec2(-_loc12_ * _loc5_,_loc11_ * _loc5_),this.§^!@§(_loc16_,param4));
            }
            param4 += _loc9_;
            _loc10_++;
         }
      }
      
      protected function §^!@§(param1:§6!!§, param2:Number) : b2Vec2
      {
         return new b2Vec2(param1.§9B§().GetPosition().x,param1.§9B§().GetPosition().y);
      }
      
      public function makeExplosion(param1:§0!5§, param2:Number, param3:Number) : void
      {
         if(this.§'!m§.explosionDamageRadius)
         {
            if(param1)
            {
               param1.§[! §(param2,param3,this.§'!m§.explosionRadius,this.§'!m§.explosionForce,this.§'!m§.explosionDamageRadius,this.§'!m§.explosionDamage);
            }
         }
      }
      
      public function playCollisionSound() : void
      {
         var _loc1_:String = this.§'!m§.collisionSound;
         if(!_loc1_)
         {
            return;
         }
         this.§'!m§.playSoundLua(_loc1_);
      }
      
      public function playDamagedSound() : void
      {
         var _loc1_:String = this.§'!m§.damageSound;
         this.§'!m§.playSoundLua(_loc1_);
      }
      
      public function playDestroyedSound() : void
      {
         var _loc1_:String = this.§'!m§.§ !^§;
         this.§'!m§.playSoundLua(_loc1_);
      }
      
      public function update(param1:Number, param2:§0!5§, param3:Number = 0, param4:Number = 0) : void
      {
         this.§%!7§ += param1;
         if(this.§9!F§)
         {
            this.§%!$§ -= param1;
         }
         if(this.§'!m§ && this.§`"E§)
         {
            if(param1 > 0)
            {
               if(this.§'!m§.constantRotation)
               {
                  this.§<"@§ += this.§,c§ * 1000 / param1;
               }
               else
               {
                  this.§<"@§ = Math.sin(this.§,c§ * this.§%!7§) * this.§@!N§;
               }
            }
         }
      }
      
      protected function §;"3§(param1:Number, param2:Number) : Number
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
      
      public function get §%"!§() : Boolean
      {
         return this.§9!F§;
      }
      
      public function get §3T§() : Number
      {
         return this.§%!$§;
      }
   }
}
