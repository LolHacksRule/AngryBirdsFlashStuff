package §8§#8
{
   import § "%§.b2Vec2;
   import §8"L§.§3"s§;
   import §8"L§.§5K§;
   
   public class §-l§
   {
       
      
      protected var § !F§:§5K§;
      
      protected var §7$=§:Number = 0.0;
      
      protected var §%!!§:Number;
      
      protected var §"H§:Boolean = false;
      
      protected var §=#c§:Number = 0;
      
      protected var §@#=§:Boolean;
      
      protected var §="+§:Number;
      
      protected var §;B§:Number;
      
      public function §-l§(param1:§5K§)
      {
         super();
         this.§ !F§ = param1;
         this.§4"3§();
      }
      
      public function get §&C§() : Number
      {
         return this.§=#c§;
      }
      
      protected function §4"3§() : void
      {
         var _loc1_:Number = NaN;
         if(this.§ !F§.animateRotation)
         {
            _loc1_ = this.§>p§(this.§ !F§.minRotationFrequency,this.§ !F§.maxRotationFrequency);
            this.§="+§ = _loc1_ * (Math.PI / 180) / 1000;
            if(this.§ !F§.minRotationFrequency && this.§ !F§.maxRotationFrequency)
            {
               this.§;B§ = this.§>p§(this.§ !F§.minRotationAmplitude,this.§ !F§.maxRotationAmplitude) * (Math.PI / 180);
            }
            this.§@#=§ = true;
         }
      }
      
      public function get removeOnNextUpdate() : Boolean
      {
         if(this.§"H§ && this.§%!!§ < 0)
         {
            return true;
         }
         return false;
      }
      
      public function applyDamage(param1:Number, param2:§&#V§, param3:§4!y§) : void
      {
         if(this.§ !F§.stopAnimationsAfterCollision)
         {
            this.§@#=§ = false;
         }
      }
      
      public function §7# §(param1:Boolean, param2:§&#V§, param3:Number, param4:Number, param5:Number, param6:Number = 1.0) : void
      {
         var _loc10_:int = 0;
         var _loc11_:String = null;
         var _loc12_:§3"s§ = null;
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = false;
         if(!param2)
         {
            return;
         }
         var _loc7_:Number = this.§ !F§.shape.getWidth() * param6;
         var _loc8_:Number = this.§ !F§.shape.getHeight() * param6;
         if(param1)
         {
            _loc10_ = this.§ !F§.§<#&§;
         }
         else
         {
            _loc10_ = this.§ !F§.§"#H§;
         }
         var _loc9_:int = 0;
         while(_loc9_ < _loc10_)
         {
            if(param1)
            {
               _loc11_ = this.§ !F§.§7#x§(_loc9_);
            }
            else
            {
               _loc11_ = this.§ !F§.§58§(_loc9_);
            }
            if(_loc11_)
            {
               _loc12_ = param2.§%"c§(_loc11_) as §3"s§;
               if(this.§ !F§.particleAmount > -1)
               {
                  _loc12_.amount = this.§ !F§.particleAmount;
               }
               _loc13_ = false;
               _loc14_ = false;
               if(_loc12_)
               {
                  _loc14_ = _loc12_.overlay;
                  _loc13_ = _loc12_.inFrontObject;
               }
               param2.§;"o§(_loc11_,param3,param4,param5,§!#L§.ID_NEXT_FREE,_loc7_,_loc8_,1,_loc14_,_loc13_);
            }
            _loc9_++;
         }
      }
      
      public function §+n§(param1:§&#V§, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:String = null;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:§4!y§ = null;
         if(this.§ !F§.§%#z§ == 0)
         {
            return;
         }
         var _loc5_:Number = this.§ !F§.explosionForce;
         var _loc6_:Number = this.§ !F§.spawnDistance;
         var _loc7_:Number = this.§ !F§.angleOffset;
         var _loc8_:int = this.§ !F§.§%#z§;
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
            _loc13_ = this.§ !F§.§=F§(_loc10_);
            _loc14_ = param2 - _loc12_ * _loc6_;
            _loc15_ = param3 + _loc11_ * _loc6_;
            if(_loc16_ = param1.addObject(_loc13_,_loc14_,_loc15_,param4,§!#L§.ID_NEXT_FREE) as §4!y§)
            {
               _loc16_.getBody().ApplyImpulse(new b2Vec2(-_loc12_ * _loc5_,_loc11_ * _loc5_),this.§7"l§(_loc16_,param4));
            }
            param4 += _loc9_;
            _loc10_++;
         }
      }
      
      protected function §7"l§(param1:§4!y§, param2:Number) : b2Vec2
      {
         return new b2Vec2(param1.getBody().GetPosition().x,param1.getBody().GetPosition().y);
      }
      
      public function §-h§(param1:§&#V§, param2:Number, param3:Number) : void
      {
         if(this.§ !F§.explosionDamageRadius)
         {
            if(param1)
            {
               param1.§5#A§(param2,param3,this.§ !F§.explosionRadius,this.§ !F§.explosionForce,this.§ !F§.explosionDamageRadius,this.§ !F§.explosionDamage);
            }
         }
      }
      
      public function playCollisionSound() : void
      {
         var _loc1_:String = this.§ !F§.collisionSound;
         var _loc2_:String = this.§ !F§.soundChannel;
         this.§ !F§.§0#R§(_loc1_,_loc2_);
      }
      
      public function playDamagedSound() : void
      {
         var _loc1_:String = this.§ !F§.damageSound;
         var _loc2_:String = this.§ !F§.soundChannel;
         this.§ !F§.§0#R§(_loc1_,_loc2_);
      }
      
      public function playDestroyedSound() : void
      {
         var _loc1_:String = this.§ !F§.materialDestroyedSound;
         var _loc2_:String = this.§ !F§.soundChannel;
         this.§ !F§.§0#R§(_loc1_,_loc2_);
      }
      
      public function update(param1:Number, param2:§&#V§, param3:Number = 0, param4:Number = 0) : void
      {
         this.§7$=§ += param1;
         if(this.§"H§)
         {
            this.§%!!§ -= param1;
         }
         if(this.§ !F§ && this.§@#=§)
         {
            if(param1 > 0)
            {
               if(this.§ !F§.constantRotation)
               {
                  this.§=#c§ += this.§="+§ * 1000 / param1;
               }
               else
               {
                  this.§=#c§ = Math.sin(this.§="+§ * this.§7$=§) * this.§;B§;
               }
            }
         }
      }
      
      protected function §>p§(param1:Number, param2:Number) : Number
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
