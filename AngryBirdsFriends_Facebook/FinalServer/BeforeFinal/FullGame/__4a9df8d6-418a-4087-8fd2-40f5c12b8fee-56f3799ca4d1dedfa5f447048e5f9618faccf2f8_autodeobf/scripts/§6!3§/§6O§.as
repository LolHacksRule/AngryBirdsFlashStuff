package §6!3§
{
   import §?!C§.b2Vec2;
   import §?$<§.§,#q§;
   import §?$<§.§<#x§;
   
   public class §6O§
   {
       
      
      protected var §4<§:§<#x§;
      
      protected var §-!N§:Number = 0.0;
      
      protected var §3##§:Number;
      
      protected var §@!a§:Boolean = false;
      
      protected var §##t§:Number = 0;
      
      protected var §#`§:Boolean;
      
      protected var §#!z§:Number;
      
      protected var §<"R§:Number;
      
      public function §6O§(param1:§<#x§)
      {
         super();
         this.§4<§ = param1;
         this.§;$0§();
      }
      
      public function get §#!"§() : Number
      {
         return this.§##t§;
      }
      
      protected function §;$0§() : void
      {
         var _loc1_:Number = NaN;
         if(this.§4<§.animateRotation)
         {
            _loc1_ = this.§4#>§(this.§4<§.minRotationFrequency,this.§4<§.maxRotationFrequency);
            this.§#!z§ = _loc1_ * (Math.PI / 180) / 1000;
            if(this.§4<§.minRotationFrequency && this.§4<§.maxRotationFrequency)
            {
               this.§<"R§ = this.§4#>§(this.§4<§.minRotationAmplitude,this.§4<§.maxRotationAmplitude) * (Math.PI / 180);
            }
            this.§#`§ = true;
         }
      }
      
      public function get removeOnNextUpdate() : Boolean
      {
         if(this.§@!a§ && this.§3##§ < 0)
         {
            return true;
         }
         return false;
      }
      
      public function applyDamage(param1:Number, param2:§8$B§, param3:§;!U§) : void
      {
         if(this.§4<§.stopAnimationsAfterCollision)
         {
            this.§#`§ = false;
         }
      }
      
      public function spawnParticles(param1:Boolean, param2:§8$B§, param3:Number, param4:Number, param5:Number, param6:Number = 1.0) : void
      {
         var _loc10_:int = 0;
         var _loc11_:String = null;
         var _loc12_:§,#q§ = null;
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = false;
         if(!param2)
         {
            return;
         }
         var _loc7_:Number = this.§4<§.shape.getWidth() * param6;
         var _loc8_:Number = this.§4<§.shape.getHeight() * param6;
         if(param1)
         {
            _loc10_ = this.§4<§.§1"N§;
         }
         else
         {
            _loc10_ = this.§4<§.§'#[§;
         }
         var _loc9_:int = 0;
         while(_loc9_ < _loc10_)
         {
            if(param1)
            {
               _loc11_ = this.§4<§.§7;§(_loc9_);
            }
            else
            {
               _loc11_ = this.§4<§.§@#D§(_loc9_);
            }
            if(_loc11_)
            {
               _loc12_ = param2.§?e§(_loc11_) as §,#q§;
               _loc13_ = false;
               _loc14_ = false;
               if(_loc12_)
               {
                  if(this.§4<§.particleAmount > -1)
                  {
                     _loc12_.amount = this.§4<§.particleAmount;
                  }
                  _loc14_ = _loc12_.overlay;
                  _loc13_ = _loc12_.inFrontObject;
               }
               param2.§3P§(_loc11_,param3,param4,param5,§'!§.ID_NEXT_FREE,_loc7_,_loc8_,1,_loc14_,_loc13_);
            }
            _loc9_++;
         }
      }
      
      public function §]c§(param1:§8$B§, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:String = null;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:§;!U§ = null;
         if(this.§4<§.§;!j§ == 0)
         {
            return;
         }
         var _loc5_:Number = this.§4<§.explosionForce;
         var _loc6_:Number = this.§4<§.spawnDistance;
         var _loc7_:Number = this.§4<§.angleOffset;
         var _loc8_:int = this.§4<§.§;!j§;
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
            _loc13_ = this.§4<§.§`$6§(_loc10_);
            _loc14_ = param2 - _loc12_ * _loc6_;
            _loc15_ = param3 + _loc11_ * _loc6_;
            if(_loc16_ = param1.addObject(_loc13_,_loc14_,_loc15_,param4,§'!§.ID_NEXT_FREE) as §;!U§)
            {
               _loc16_.getBody().ApplyImpulse(new b2Vec2(-_loc12_ * _loc5_,_loc11_ * _loc5_),this.§^!n§(_loc16_,param4));
            }
            param4 += _loc9_;
            _loc10_++;
         }
      }
      
      protected function §^!n§(param1:§;!U§, param2:Number) : b2Vec2
      {
         return new b2Vec2(param1.getBody().GetPosition().x,param1.getBody().GetPosition().y);
      }
      
      public function §0#o§(param1:§8$B§, param2:Number, param3:Number) : void
      {
         if(this.§4<§.explosionDamageRadius)
         {
            if(param1)
            {
               param1.§;"8§(param2,param3,this.§4<§.explosionRadius,this.§4<§.explosionForce,this.§4<§.explosionDamageRadius,this.§4<§.explosionDamage);
            }
         }
      }
      
      public function playCollisionSound() : void
      {
         var _loc1_:String = this.§4<§.collisionSound;
         var _loc2_:String = this.§4<§.soundChannel;
         this.§4<§.playSoundLua(_loc1_,_loc2_);
      }
      
      public function playDamagedSound() : void
      {
         var _loc1_:String = this.§4<§.damageSound;
         var _loc2_:String = this.§4<§.soundChannel;
         this.§4<§.playSoundLua(_loc1_,_loc2_);
      }
      
      public function playDestroyedSound() : void
      {
         var _loc1_:String = this.§4<§.materialDestroyedSound;
         var _loc2_:String = this.§4<§.soundChannel;
         this.§4<§.playSoundLua(_loc1_,_loc2_);
      }
      
      public function update(param1:Number, param2:§8$B§, param3:Number = 0, param4:Number = 0) : void
      {
         this.§-!N§ += param1;
         if(this.§@!a§)
         {
            this.§3##§ -= param1;
         }
         if(this.§4<§ && this.§#`§)
         {
            if(param1 > 0)
            {
               if(this.§4<§.constantRotation)
               {
                  this.§##t§ += this.§#!z§ * 1000 / param1;
               }
               else
               {
                  this.§##t§ = Math.sin(this.§#!z§ * this.§-!N§) * this.§<"R§;
               }
            }
         }
      }
      
      protected function §4#>§(param1:Number, param2:Number) : Number
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
