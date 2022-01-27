package §6"R§
{
   import §>P§.§;+§;
   import §^>§.b2Vec2;
   
   public class §11§
   {
       
      
      protected var § !4§:§;+§;
      
      protected var §?B§:Number = 0.0;
      
      protected var §,! §:Number;
      
      protected var §&7§:Boolean = false;
      
      protected var §7U§:Number = 0;
      
      protected var §5"f§:Boolean;
      
      protected var §4-§:Number;
      
      protected var §"!y§:Number;
      
      public function §11§(param1:§;+§)
      {
         super();
         this.§ !4§ = param1;
         this.§@7§();
      }
      
      public function get §"=§() : Number
      {
         return this.§7U§;
      }
      
      protected function §@7§() : void
      {
         var _loc1_:Number = NaN;
         if(this.§ !4§.animateRotation)
         {
            _loc1_ = this.§2"'§(this.§ !4§.minRotationFrequency,this.§ !4§.maxRotationFrequency);
            this.§4-§ = _loc1_ * (Math.PI / 180) / 1000;
            if(this.§ !4§.minRotationFrequency && this.§ !4§.maxRotationFrequency)
            {
               this.§"!y§ = this.§2"'§(this.§ !4§.minRotationAmplitude,this.§ !4§.maxRotationAmplitude) * (Math.PI / 180);
            }
            this.§5"f§ = true;
         }
      }
      
      public function get removeOnNextUpdate() : Boolean
      {
         if(this.§&7§ && this.§,! § < 0)
         {
            return true;
         }
         return false;
      }
      
      public function applyDamage(param1:Number, param2:§""M§, param3:§4!w§) : void
      {
         if(this.§ !4§.stopAnimationsAfterCollision)
         {
            this.§5"f§ = false;
         }
      }
      
      public function §7&§(param1:§""M§, param2:Number, param3:Number, param4:Number, param5:Number = 1.0) : void
      {
         var _loc9_:String = null;
         if(!param1)
         {
            return;
         }
         var _loc6_:Number = this.§ !4§.shape.getWidth() * param5;
         var _loc7_:Number = this.§ !4§.shape.getHeight() * param5;
         var _loc8_:int = 0;
         while(_loc8_ < this.§ !4§.§,=§)
         {
            if(_loc9_ = this.§ !4§.§ " §(_loc8_))
            {
               param1.§ "p§(_loc9_,param2,param3,param4,§super§.§4"D§,_loc6_,_loc7_,1,true);
            }
            _loc8_++;
         }
      }
      
      public function §#!g§(param1:§""M§, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:String = null;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:§4!w§ = null;
         if(this.§ !4§.§<-§ == 0)
         {
            return;
         }
         var _loc5_:Number = this.§ !4§.explosionForce;
         var _loc6_:Number = this.§ !4§.spawnDistance;
         var _loc7_:Number = this.§ !4§.angleOffset;
         var _loc8_:int = this.§ !4§.§<-§;
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
            _loc13_ = this.§ !4§.§default§(_loc10_);
            _loc14_ = param2 - _loc12_ * _loc6_;
            _loc15_ = param3 + _loc11_ * _loc6_;
            if(_loc16_ = param1.addObject(_loc13_,_loc14_,_loc15_,param4,§super§.§4"D§) as §4!w§)
            {
               _loc16_.§?"Z§().ApplyImpulse(new b2Vec2(-_loc12_ * _loc5_,_loc11_ * _loc5_),this.getImpulseTarget(_loc16_,param4));
            }
            param4 += _loc9_;
            _loc10_++;
         }
      }
      
      protected function getImpulseTarget(param1:§4!w§, param2:Number) : b2Vec2
      {
         return new b2Vec2(param1.§?"Z§().GetPosition().x,param1.§?"Z§().GetPosition().y);
      }
      
      public function §9"q§(param1:§""M§, param2:Number, param3:Number) : void
      {
         if(this.§ !4§.explosionDamageRadius)
         {
            if(param1)
            {
               param1.§7"§(param2,param3,this.§ !4§.explosionRadius,this.§ !4§.explosionForce,this.§ !4§.explosionDamageRadius,this.§ !4§.explosionDamage);
            }
         }
      }
      
      public function playCollisionSound() : void
      {
         var _loc1_:String = this.§ !4§.collisionSound;
         this.§ !4§.§0#+§(_loc1_);
      }
      
      public function playDamagedSound() : void
      {
         var _loc1_:String = this.§ !4§.damageSound;
         this.§ !4§.§0#+§(_loc1_);
      }
      
      public function playDestroyedSound() : void
      {
         var _loc1_:String = this.§ !4§.§["1§;
         this.§ !4§.§0#+§(_loc1_);
      }
      
      public function update(param1:Number, param2:§""M§, param3:Number = 0, param4:Number = 0) : void
      {
         this.§?B§ += param1;
         if(this.§&7§)
         {
            this.§,! § -= param1;
         }
         if(this.§ !4§ && this.§5"f§)
         {
            if(param1 > 0)
            {
               if(this.§ !4§.constantRotation)
               {
                  this.§7U§ += this.§4-§ * 1000 / param1;
               }
               else
               {
                  this.§7U§ = Math.sin(this.§4-§ * this.§?B§) * this.§"!y§;
               }
            }
         }
      }
      
      protected function §2"'§(param1:Number, param2:Number) : Number
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
