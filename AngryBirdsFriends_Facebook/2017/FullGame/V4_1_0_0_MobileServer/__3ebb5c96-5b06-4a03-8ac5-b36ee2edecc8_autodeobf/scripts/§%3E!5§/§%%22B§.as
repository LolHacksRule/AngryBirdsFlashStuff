package §>!5§
{
   import §%!9§.b2Vec2;
   import §7"&§.§2p§;
   import §7"&§.§;"$§;
   
   public class §%"B§
   {
       
      
      protected var §9A§:§2p§;
      
      protected var §9!o§:Number = 0.0;
      
      protected var §%!W§:Number;
      
      protected var §6!^§:Boolean = false;
      
      protected var §@"H§:Number = 0;
      
      protected var §11§:Boolean;
      
      protected var §&!t§:Number;
      
      protected var §%"0§:Number;
      
      public function §%"B§(param1:§2p§)
      {
         super();
         this.§9A§ = param1;
         this.§7"N§();
      }
      
      public function get §4J§() : Number
      {
         return this.§@"H§;
      }
      
      protected function §7"N§() : void
      {
         var _loc1_:Number = NaN;
         if(this.§9A§.animateRotation)
         {
            _loc1_ = this.§5#'§(this.§9A§.minRotationFrequency,this.§9A§.maxRotationFrequency);
            this.§&!t§ = _loc1_ * (Math.PI / 180) / 1000;
            if(this.§9A§.minRotationFrequency && this.§9A§.maxRotationFrequency)
            {
               this.§%"0§ = this.§5#'§(this.§9A§.minRotationAmplitude,this.§9A§.maxRotationAmplitude) * (Math.PI / 180);
            }
            this.§11§ = true;
         }
      }
      
      public function get removeOnNextUpdate() : Boolean
      {
         if(this.§6!^§ && this.§%!W§ < 0)
         {
            return true;
         }
         return false;
      }
      
      public function applyDamage(param1:Number, param2:§-!S§, param3:§^"9§) : void
      {
         if(this.§9A§.stopAnimationsAfterCollision)
         {
            this.§11§ = false;
         }
      }
      
      public function §3!^§(param1:Boolean, param2:§-!S§, param3:Number, param4:Number, param5:Number, param6:Number = 1.0) : void
      {
         var _loc10_:int = 0;
         var _loc11_:String = null;
         var _loc12_:§;"$§ = null;
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = false;
         if(!param2)
         {
            return;
         }
         var _loc7_:Number = this.§9A§.shape.getWidth() * param6;
         var _loc8_:Number = this.§9A§.shape.getHeight() * param6;
         if(param1)
         {
            _loc10_ = this.§9A§.§!$"§;
         }
         else
         {
            _loc10_ = this.§9A§.§-#E§;
         }
         var _loc9_:int = 0;
         while(_loc9_ < _loc10_)
         {
            if(param1)
            {
               _loc11_ = this.§9A§.§'i§(_loc9_);
            }
            else
            {
               _loc11_ = this.§9A§.§4#S§(_loc9_);
            }
            if(_loc11_)
            {
               _loc12_ = param2.§]#3§(_loc11_) as §;"$§;
               if(this.§9A§.particleAmount > -1)
               {
                  _loc12_.amount = this.§9A§.particleAmount;
               }
               _loc13_ = false;
               _loc14_ = false;
               if(_loc12_)
               {
                  _loc14_ = _loc12_.overlay;
                  _loc13_ = _loc12_.inFrontObject;
               }
               param2.§5#r§(_loc11_,param3,param4,param5,§6#-§.ID_NEXT_FREE,_loc7_,_loc8_,1,_loc14_,_loc13_);
            }
            _loc9_++;
         }
      }
      
      public function §@#D§(param1:§-!S§, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:String = null;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:§^"9§ = null;
         if(this.§9A§.§7"n§ == 0)
         {
            return;
         }
         var _loc5_:Number = this.§9A§.explosionForce;
         var _loc6_:Number = this.§9A§.spawnDistance;
         var _loc7_:Number = this.§9A§.angleOffset;
         var _loc8_:int = this.§9A§.§7"n§;
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
            _loc13_ = this.§9A§.§ "?§(_loc10_);
            _loc14_ = param2 - _loc12_ * _loc6_;
            _loc15_ = param3 + _loc11_ * _loc6_;
            if(_loc16_ = param1.addObject(_loc13_,_loc14_,_loc15_,param4,§6#-§.ID_NEXT_FREE) as §^"9§)
            {
               _loc16_.getBody().ApplyImpulse(new b2Vec2(-_loc12_ * _loc5_,_loc11_ * _loc5_),this.§<"7§(_loc16_,param4));
            }
            param4 += _loc9_;
            _loc10_++;
         }
      }
      
      protected function §<"7§(param1:§^"9§, param2:Number) : b2Vec2
      {
         return new b2Vec2(param1.getBody().GetPosition().x,param1.getBody().GetPosition().y);
      }
      
      public function §7!y§(param1:§-!S§, param2:Number, param3:Number) : void
      {
         if(this.§9A§.explosionDamageRadius)
         {
            if(param1)
            {
               param1.§%$'§(param2,param3,this.§9A§.explosionRadius,this.§9A§.explosionForce,this.§9A§.explosionDamageRadius,this.§9A§.explosionDamage);
            }
         }
      }
      
      public function playCollisionSound() : void
      {
         var _loc1_:String = this.§9A§.collisionSound;
         var _loc2_:String = this.§9A§.soundChannel;
         this.§9A§.§51§(_loc1_,_loc2_);
      }
      
      public function playDestroyedSound() : void
      {
         var _loc1_:String = this.§9A§.§9!+§;
         var _loc2_:String = this.§9A§.soundChannel;
         this.§9A§.§51§(_loc1_,_loc2_);
      }
      
      public function update(param1:Number, param2:§-!S§, param3:Number = 0, param4:Number = 0) : void
      {
         this.§9!o§ += param1;
         if(this.§6!^§)
         {
            this.§%!W§ -= param1;
         }
         if(this.§9A§ && this.§11§)
         {
            if(param1 > 0)
            {
               if(this.§9A§.constantRotation)
               {
                  this.§@"H§ += this.§&!t§ * 1000 / param1;
               }
               else
               {
                  this.§@"H§ = Math.sin(this.§&!t§ * this.§9!o§) * this.§%"0§;
               }
            }
         }
      }
      
      protected function §5#'§(param1:Number, param2:Number) : Number
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
