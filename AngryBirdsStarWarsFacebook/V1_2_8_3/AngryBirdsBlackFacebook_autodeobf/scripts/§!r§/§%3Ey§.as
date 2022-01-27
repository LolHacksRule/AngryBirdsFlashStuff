package §!r§
{
   import §#g§.§5!M§;
   import §7"A§.b2Vec2;
   
   public class §>y§
   {
       
      
      protected var §7!d§:§5!M§;
      
      protected var §#"R§:Number = 0.0;
      
      protected var §,"5§:Number;
      
      protected var §'!q§:Boolean = false;
      
      protected var §7#1§:Number = 0;
      
      protected var §65§:Boolean;
      
      protected var §&R§:Number;
      
      protected var §1">§:Number;
      
      public function §>y§(param1:§5!M§)
      {
         super();
         this.§7!d§ = param1;
         this.§4R§();
      }
      
      public function get §6j§() : Number
      {
         return this.§7#1§;
      }
      
      protected function §4R§() : void
      {
         var _loc1_:Number = NaN;
         if(this.§7!d§.animateRotation)
         {
            _loc1_ = this.§!!m§(this.§7!d§.minRotationFrequency,this.§7!d§.maxRotationFrequency);
            this.§&R§ = _loc1_ * (Math.PI / 180) / 1000;
            if(this.§7!d§.minRotationFrequency && this.§7!d§.maxRotationFrequency)
            {
               this.§1">§ = this.§!!m§(this.§7!d§.minRotationAmplitude,this.§7!d§.maxRotationAmplitude) * (Math.PI / 180);
            }
            this.§65§ = true;
         }
      }
      
      public function get removeOnNextUpdate() : Boolean
      {
         if(this.§'!q§ && this.§,"5§ < 0)
         {
            return true;
         }
         return false;
      }
      
      public function applyDamage(param1:Number, param2:§'=§, param3:§0N§) : void
      {
         if(this.§7!d§.stopAnimationsAfterCollision)
         {
            this.§65§ = false;
         }
      }
      
      public function §7=§(param1:§'=§, param2:Number, param3:Number, param4:Number, param5:Number = 1.0) : void
      {
         var _loc9_:String = null;
         if(!param1)
         {
            return;
         }
         var _loc6_:Number = this.§7!d§.shape.getWidth() * param5;
         var _loc7_:Number = this.§7!d§.shape.getHeight() * param5;
         var _loc8_:int = 0;
         while(_loc8_ < this.§7!d§.§<! §)
         {
            if(_loc9_ = this.§7!d§.§+!&§(_loc8_))
            {
               param1.§]1§(_loc9_,param2,param3,param4,§9"f§.§["_§,_loc6_,_loc7_,1,true);
            }
            _loc8_++;
         }
      }
      
      public function §3"3§(param1:§'=§, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:String = null;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:§0N§ = null;
         if(this.§7!d§.§;1§ == 0)
         {
            return;
         }
         var _loc5_:Number = this.§7!d§.explosionForce;
         var _loc6_:Number = this.§7!d§.spawnDistance;
         var _loc7_:Number = this.§7!d§.angleOffset;
         var _loc8_:int = this.§7!d§.§;1§;
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
            _loc13_ = this.§7!d§.§7"K§(_loc10_);
            _loc14_ = param2 - _loc12_ * _loc6_;
            _loc15_ = param3 + _loc11_ * _loc6_;
            if(_loc16_ = param1.addObject(_loc13_,_loc14_,_loc15_,param4,§9"f§.§["_§) as §0N§)
            {
               _loc16_.§3"s§().ApplyImpulse(new b2Vec2(-_loc12_ * _loc5_,_loc11_ * _loc5_),this.getImpulseTarget(_loc16_,param4));
            }
            param4 += _loc9_;
            _loc10_++;
         }
      }
      
      protected function getImpulseTarget(param1:§0N§, param2:Number) : b2Vec2
      {
         return new b2Vec2(param1.§3"s§().GetPosition().x,param1.§3"s§().GetPosition().y);
      }
      
      public function §>!"§(param1:§'=§, param2:Number, param3:Number) : void
      {
         if(this.§7!d§.explosionDamageRadius)
         {
            if(param1)
            {
               param1.§?#6§(param2,param3,this.§7!d§.explosionRadius,this.§7!d§.explosionForce,this.§7!d§.explosionDamageRadius,this.§7!d§.explosionDamage);
            }
         }
      }
      
      public function playCollisionSound() : void
      {
         var _loc1_:String = this.§7!d§.collisionSound;
         this.§7!d§.§]"J§(_loc1_);
      }
      
      public function playDamagedSound() : void
      {
         var _loc1_:String = this.§7!d§.damageSound;
         this.§7!d§.§]"J§(_loc1_);
      }
      
      public function playDestroyedSound() : void
      {
         var _loc1_:String = this.§7!d§.§9!=§;
         this.§7!d§.§]"J§(_loc1_);
      }
      
      public function update(param1:Number, param2:§'=§, param3:Number = 0, param4:Number = 0) : void
      {
         this.§#"R§ += param1;
         if(this.§'!q§)
         {
            this.§,"5§ -= param1;
         }
         if(this.§7!d§ && this.§65§)
         {
            if(param1 > 0)
            {
               if(this.§7!d§.constantRotation)
               {
                  this.§7#1§ += this.§&R§ * 1000 / param1;
               }
               else
               {
                  this.§7#1§ = Math.sin(this.§&R§ * this.§#"R§) * this.§1">§;
               }
            }
         }
      }
      
      protected function §!!m§(param1:Number, param2:Number) : Number
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
