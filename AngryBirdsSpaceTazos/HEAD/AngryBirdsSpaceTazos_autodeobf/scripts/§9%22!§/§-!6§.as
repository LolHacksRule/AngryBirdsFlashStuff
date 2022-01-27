package §9"!§
{
   import §3>§.§-f§;
   import §6!n§.b2Vec2;
   
   public class §-!6§
   {
       
      
      protected var §>!+§:§-f§;
      
      protected var §0K§:Number = 0.0;
      
      protected var §;z§:Number;
      
      protected var §&F§:Boolean = false;
      
      protected var §&!0§:Number = 0;
      
      protected var §0!P§:Boolean;
      
      protected var §0W§:Number;
      
      protected var §]$§:Number;
      
      public function §-!6§(param1:§-f§)
      {
         super();
         this.§>!+§ = param1;
         this.§]y§();
      }
      
      public function get §%2§() : Number
      {
         return this.§&!0§;
      }
      
      protected function §]y§() : void
      {
         var _loc1_:Number = NaN;
         if(this.§>!+§.animateRotation)
         {
            _loc1_ = this.§7A§(this.§>!+§.minRotationFrequency,this.§>!+§.maxRotationFrequency);
            this.§0W§ = _loc1_ * (Math.PI / 180) / 1000;
            if(this.§>!+§.minRotationFrequency && this.§>!+§.maxRotationFrequency)
            {
               this.§]$§ = this.§7A§(this.§>!+§.minRotationAmplitude,this.§>!+§.maxRotationAmplitude) * (Math.PI / 180);
            }
            this.§0!P§ = true;
         }
      }
      
      public function get removeOnNextUpdate() : Boolean
      {
         if(this.§&F§ && this.§;z§ < 0)
         {
            return true;
         }
         return false;
      }
      
      public function applyDamage(param1:Number, param2:§0!s§, param3:§^"3§) : void
      {
         if(this.§>!+§.stopAnimationsAfterCollision)
         {
            this.§0!P§ = false;
         }
      }
      
      public function §4k§(param1:§0!s§, param2:Number, param3:Number, param4:Number, param5:Number = 1.0) : void
      {
         var _loc9_:String = null;
         var _loc6_:Number = this.§>!+§.shape.getWidth() * param5;
         var _loc7_:Number = this.§>!+§.shape.getHeight() * param5;
         var _loc8_:int = 0;
         while(_loc8_ < this.§>!+§.§2!<§)
         {
            if(_loc9_ = this.§>!+§.§7+§(_loc8_))
            {
               param1.§'"H§(_loc9_,param2,param3,param4,§"" §.§%A§,_loc6_,_loc7_,1,true);
            }
            _loc8_++;
         }
      }
      
      public function §[!L§(param1:§0!s§, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:String = null;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:§^"3§ = null;
         if(this.§>!+§.§,"§ == 0)
         {
            return;
         }
         var _loc5_:Number = this.§>!+§.explosionForce;
         var _loc6_:Number = this.§>!+§.spawnDistance;
         var _loc7_:Number = this.§>!+§.angleOffset;
         var _loc8_:int = this.§>!+§.§,"§;
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
            _loc13_ = this.§>!+§.§3x§(_loc10_);
            _loc14_ = param2 - _loc12_ * _loc6_;
            _loc15_ = param3 + _loc11_ * _loc6_;
            if(_loc16_ = param1.addObject(_loc13_,_loc14_,_loc15_,param4,§"" §.§%A§) as §^"3§)
            {
               _loc16_.§`I§().ApplyImpulse(new b2Vec2(-_loc12_ * _loc5_,_loc11_ * _loc5_),this.§#a§(_loc16_,param4));
            }
            param4 += _loc9_;
            _loc10_++;
         }
      }
      
      protected function §#a§(param1:§^"3§, param2:Number) : b2Vec2
      {
         return new b2Vec2(param1.§`I§().GetPosition().x,param1.§`I§().GetPosition().y);
      }
      
      public function makeExplosion(param1:§0!s§, param2:Number, param3:Number) : void
      {
         if(this.§>!+§.explosionDamageRadius)
         {
            if(param1)
            {
               param1.§9",§(param2,param3,this.§>!+§.explosionRadius,this.§>!+§.explosionForce,this.§>!+§.explosionDamageRadius,this.§>!+§.explosionDamage);
            }
         }
      }
      
      public function playCollisionSound() : void
      {
         var _loc1_:String = this.§>!+§.collisionSound;
         if(!_loc1_)
         {
            return;
         }
         this.§>!+§.playSoundLua(_loc1_);
      }
      
      public function playDamagedSound() : void
      {
         var _loc1_:String = this.§>!+§.damageSound;
         this.§>!+§.playSoundLua(_loc1_);
      }
      
      public function playDestroyedSound() : void
      {
         var _loc1_:String = this.§>!+§.§0$§;
         this.§>!+§.playSoundLua(_loc1_);
      }
      
      public function update(param1:Number, param2:§0!s§, param3:Number = 0, param4:Number = 0) : void
      {
         this.§0K§ += param1;
         if(this.§&F§)
         {
            this.§;z§ -= param1;
         }
         if(this.§>!+§ && this.§0!P§)
         {
            if(param1 > 0)
            {
               if(this.§>!+§.constantRotation)
               {
                  this.§&!0§ += this.§0W§ * 1000 / param1;
               }
               else
               {
                  this.§&!0§ = Math.sin(this.§0W§ * this.§0K§) * this.§]$§;
               }
            }
         }
      }
      
      protected function §7A§(param1:Number, param2:Number) : Number
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
      
      public function get §&`§() : Boolean
      {
         return this.§&F§;
      }
      
      public function get §"%§() : Number
      {
         return this.§;z§;
      }
   }
}
