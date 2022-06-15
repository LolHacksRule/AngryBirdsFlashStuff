package §[#a§
{
   import §0m§.b2Vec2;
   import §`#C§.§'#g§;
   import §`#C§.§4o§;
   
   public class §9N§
   {
       
      
      protected var §?";§:§4o§;
      
      protected var §`h§:Number = 0.0;
      
      protected var §,#R§:Number;
      
      protected var §5#L§:Boolean = false;
      
      protected var §4v§:Number = 0;
      
      protected var §,!+§:Boolean;
      
      protected var §+#5§:Number;
      
      protected var §+!%§:Number;
      
      public function §9N§(param1:§4o§)
      {
         super();
         this.§?";§ = param1;
         this.§@$+§();
      }
      
      public function get §#"w§() : Number
      {
         return this.§4v§;
      }
      
      protected function §@$+§() : void
      {
         var _loc1_:Number = NaN;
         if(this.§?";§.animateRotation)
         {
            _loc1_ = this.§-Z§(this.§?";§.minRotationFrequency,this.§?";§.maxRotationFrequency);
            this.§+#5§ = _loc1_ * (Math.PI / 180) / 1000;
            if(this.§?";§.minRotationFrequency && this.§?";§.maxRotationFrequency)
            {
               this.§+!%§ = this.§-Z§(this.§?";§.minRotationAmplitude,this.§?";§.maxRotationAmplitude) * (Math.PI / 180);
            }
            this.§,!+§ = true;
         }
      }
      
      public function get removeOnNextUpdate() : Boolean
      {
         if(this.§5#L§ && this.§,#R§ < 0)
         {
            return true;
         }
         return false;
      }
      
      public function applyDamage(param1:Number, param2:§7!O§, param3:§="@§) : void
      {
         if(this.§?";§.stopAnimationsAfterCollision)
         {
            this.§,!+§ = false;
         }
      }
      
      public function §&"?§(param1:Boolean, param2:§7!O§, param3:Number, param4:Number, param5:Number, param6:Number = 1.0) : void
      {
         var _loc10_:int = 0;
         var _loc11_:String = null;
         var _loc12_:§'#g§ = null;
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = false;
         if(!param2)
         {
            return;
         }
         var _loc7_:Number = this.§?";§.shape.getWidth() * param6;
         var _loc8_:Number = this.§?";§.shape.getHeight() * param6;
         if(param1)
         {
            _loc10_ = this.§?";§.§8v§;
         }
         else
         {
            _loc10_ = this.§?";§.§ r§;
         }
         var _loc9_:int = 0;
         while(_loc9_ < _loc10_)
         {
            if(param1)
            {
               _loc11_ = this.§?";§.§ !E§(_loc9_);
            }
            else
            {
               _loc11_ = this.§?";§.§8"T§(_loc9_);
            }
            if(_loc11_)
            {
               _loc12_ = param2.§[!`§(_loc11_) as §'#g§;
               _loc13_ = false;
               _loc14_ = false;
               if(_loc12_)
               {
                  _loc14_ = _loc12_.overlay;
                  _loc13_ = _loc12_.inFrontObject;
               }
               param2.§%!0§(_loc11_,param3,param4,param5,§6"[§.ID_NEXT_FREE,_loc7_,_loc8_,1,_loc14_,_loc13_);
            }
            _loc9_++;
         }
      }
      
      public function §,#F§(param1:§7!O§, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:String = null;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:§="@§ = null;
         if(this.§?";§.§""z§ == 0)
         {
            return;
         }
         var _loc5_:Number = this.§?";§.explosionForce;
         var _loc6_:Number = this.§?";§.spawnDistance;
         var _loc7_:Number = this.§?";§.angleOffset;
         var _loc8_:int = this.§?";§.§""z§;
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
            _loc13_ = this.§?";§.§[!7§(_loc10_);
            _loc14_ = param2 - _loc12_ * _loc6_;
            _loc15_ = param3 + _loc11_ * _loc6_;
            if(_loc16_ = param1.addObject(_loc13_,_loc14_,_loc15_,param4,§6"[§.ID_NEXT_FREE) as §="@§)
            {
               _loc16_.getBody().ApplyImpulse(new b2Vec2(-_loc12_ * _loc5_,_loc11_ * _loc5_),this.§1$%§(_loc16_,param4));
            }
            param4 += _loc9_;
            _loc10_++;
         }
      }
      
      protected function §1$%§(param1:§="@§, param2:Number) : b2Vec2
      {
         return new b2Vec2(param1.getBody().GetPosition().x,param1.getBody().GetPosition().y);
      }
      
      public function §,!v§(param1:§7!O§, param2:Number, param3:Number) : void
      {
         if(this.§?";§.explosionDamageRadius)
         {
            if(param1)
            {
               param1.§!!c§(param2,param3,this.§?";§.explosionRadius,this.§?";§.explosionForce,this.§?";§.explosionDamageRadius,this.§?";§.explosionDamage);
            }
         }
      }
      
      public function playCollisionSound() : void
      {
         var _loc1_:String = this.§?";§.collisionSound;
         var _loc2_:String = this.§?";§.soundChannel;
         this.§?";§.§6!s§(_loc1_,_loc2_);
      }
      
      public function playDamagedSound() : void
      {
         var _loc1_:String = this.§?";§.damageSound;
         var _loc2_:String = this.§?";§.soundChannel;
         this.§?";§.§6!s§(_loc1_,_loc2_);
      }
      
      public function playDestroyedSound() : void
      {
         var _loc1_:String = this.§?";§.§`#x§;
         var _loc2_:String = this.§?";§.soundChannel;
         this.§?";§.§6!s§(_loc1_,_loc2_);
      }
      
      public function update(param1:Number, param2:§7!O§, param3:Number = 0, param4:Number = 0) : void
      {
         this.§`h§ += param1;
         if(this.§5#L§)
         {
            this.§,#R§ -= param1;
         }
         if(this.§?";§ && this.§,!+§)
         {
            if(param1 > 0)
            {
               if(this.§?";§.constantRotation)
               {
                  this.§4v§ += this.§+#5§ * 1000 / param1;
               }
               else
               {
                  this.§4v§ = Math.sin(this.§+#5§ * this.§`h§) * this.§+!%§;
               }
            }
         }
      }
      
      protected function §-Z§(param1:Number, param2:Number) : Number
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
