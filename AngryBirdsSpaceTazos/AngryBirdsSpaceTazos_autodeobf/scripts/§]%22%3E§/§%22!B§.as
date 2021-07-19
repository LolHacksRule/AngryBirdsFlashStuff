package §]">§
{
   import §"!&§.§]!C§;
   import §9t§.b2Vec2;
   
   public class §"!B§
   {
       
      
      protected var §2"!§:§]!C§;
      
      protected var §9S§:Number = 0.0;
      
      protected var §&!B§:Number;
      
      protected var §%"1§:Boolean = false;
      
      protected var §3r§:Number = 0;
      
      protected var §7!X§:Boolean;
      
      protected var §]&§:Number;
      
      protected var §4!&§:Number;
      
      public function §"!B§(param1:§]!C§)
      {
         super();
         this.§2"!§ = param1;
         this.§4f§();
      }
      
      public function get §3"7§() : Number
      {
         return this.§3r§;
      }
      
      protected function §4f§() : void
      {
         var _loc1_:Number = NaN;
         if(this.§2"!§.animateRotation)
         {
            _loc1_ = this.§!9§(this.§2"!§.minRotationFrequency,this.§2"!§.maxRotationFrequency);
            this.§]&§ = _loc1_ * (Math.PI / 180) / 1000;
            if(this.§2"!§.minRotationFrequency && this.§2"!§.maxRotationFrequency)
            {
               this.§4!&§ = this.§!9§(this.§2"!§.minRotationAmplitude,this.§2"!§.maxRotationAmplitude) * (Math.PI / 180);
            }
            this.§7!X§ = true;
         }
      }
      
      public function get removeOnNextUpdate() : Boolean
      {
         if(this.§%"1§ && this.§&!B§ < 0)
         {
            return true;
         }
         return false;
      }
      
      public function applyDamage(param1:Number, param2:§;U§, param3:§1!0§) : void
      {
         if(this.§2"!§.stopAnimationsAfterCollision)
         {
            this.§7!X§ = false;
         }
      }
      
      public function §@<§(param1:§;U§, param2:Number, param3:Number, param4:Number, param5:Number = 1.0) : void
      {
         var _loc9_:String = null;
         var _loc6_:Number = this.§2"!§.shape.getWidth() * param5;
         var _loc7_:Number = this.§2"!§.shape.getHeight() * param5;
         var _loc8_:int = 0;
         while(_loc8_ < this.§2"!§.§5$§)
         {
            if(_loc9_ = this.§2"!§.§5<§(_loc8_))
            {
               param1.§]`§(_loc9_,param2,param3,param4,§-%§.§;!J§,_loc6_,_loc7_,1,true);
            }
            _loc8_++;
         }
      }
      
      public function §9f§(param1:§;U§, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:String = null;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:§1!0§ = null;
         if(this.§2"!§.§4!g§ == 0)
         {
            return;
         }
         var _loc5_:Number = this.§2"!§.explosionForce;
         var _loc6_:Number = this.§2"!§.spawnDistance;
         var _loc7_:Number = this.§2"!§.angleOffset;
         var _loc8_:int = this.§2"!§.§4!g§;
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
            _loc13_ = this.§2"!§.§"!u§(_loc10_);
            _loc14_ = param2 - _loc12_ * _loc6_;
            _loc15_ = param3 + _loc11_ * _loc6_;
            if(_loc16_ = param1.addObject(_loc13_,_loc14_,_loc15_,param4,§-%§.§;!J§) as §1!0§)
            {
               _loc16_.§^!z§().ApplyImpulse(new b2Vec2(-_loc12_ * _loc5_,_loc11_ * _loc5_),this.§8l§(_loc16_,param4));
            }
            param4 += _loc9_;
            _loc10_++;
         }
      }
      
      protected function §8l§(param1:§1!0§, param2:Number) : b2Vec2
      {
         return new b2Vec2(param1.§^!z§().GetPosition().x,param1.§^!z§().GetPosition().y);
      }
      
      public function makeExplosion(param1:§;U§, param2:Number, param3:Number) : void
      {
         if(this.§2"!§.explosionDamageRadius)
         {
            if(param1)
            {
               param1.§6!N§(param2,param3,this.§2"!§.explosionRadius,this.§2"!§.explosionForce,this.§2"!§.explosionDamageRadius,this.§2"!§.explosionDamage);
            }
         }
      }
      
      public function playCollisionSound() : void
      {
         var _loc1_:String = this.§2"!§.collisionSound;
         if(!_loc1_)
         {
            return;
         }
         this.§2"!§.playSoundLua(_loc1_);
      }
      
      public function playDamagedSound() : void
      {
         var _loc1_:String = this.§2"!§.damageSound;
         this.§2"!§.playSoundLua(_loc1_);
      }
      
      public function playDestroyedSound() : void
      {
         var _loc1_:String = this.§2"!§.§'!T§;
         this.§2"!§.playSoundLua(_loc1_);
      }
      
      public function update(param1:Number, param2:§;U§, param3:Number = 0, param4:Number = 0) : void
      {
         this.§9S§ += param1;
         if(this.§%"1§)
         {
            this.§&!B§ -= param1;
         }
         if(this.§2"!§ && this.§7!X§)
         {
            if(param1 > 0)
            {
               if(this.§2"!§.constantRotation)
               {
                  this.§3r§ += this.§]&§ * 1000 / param1;
               }
               else
               {
                  this.§3r§ = Math.sin(this.§]&§ * this.§9S§) * this.§4!&§;
               }
            }
         }
      }
      
      protected function §!9§(param1:Number, param2:Number) : Number
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
      
      public function get §!"=§() : Boolean
      {
         return this.§%"1§;
      }
      
      public function get §4",§() : Number
      {
         return this.§&!B§;
      }
   }
}
