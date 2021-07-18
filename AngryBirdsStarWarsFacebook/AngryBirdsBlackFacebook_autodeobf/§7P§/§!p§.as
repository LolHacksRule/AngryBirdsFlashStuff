package §7P§
{
   import §2"Y§.§8!D§;
   import §[R§.b2Vec2;
   
   public class §!p§
   {
       
      
      protected var §<X§:§8!D§;
      
      protected var §'!#§:Number = 0.0;
      
      protected var §9J§:Number;
      
      protected var §[b§:Boolean = false;
      
      protected var §3";§:Number = 0;
      
      protected var §<!"§:Boolean;
      
      protected var §<#C§:Number;
      
      protected var §-"q§:Number;
      
      public function §!p§(param1:§8!D§)
      {
         super();
         this.§<X§ = param1;
         this.§`"M§();
      }
      
      public function get §3"a§() : Number
      {
         return this.§3";§;
      }
      
      protected function §`"M§() : void
      {
         var _loc1_:Number = NaN;
         if(this.§<X§.animateRotation)
         {
            _loc1_ = this.§^"9§(this.§<X§.minRotationFrequency,this.§<X§.maxRotationFrequency);
            this.§<#C§ = _loc1_ * (Math.PI / 180) / 1000;
            if(this.§<X§.minRotationFrequency && this.§<X§.maxRotationFrequency)
            {
               this.§-"q§ = this.§^"9§(this.§<X§.minRotationAmplitude,this.§<X§.maxRotationAmplitude) * (Math.PI / 180);
            }
            this.§<!"§ = true;
         }
      }
      
      public function get removeOnNextUpdate() : Boolean
      {
         if(this.§[b§ && this.§9J§ < 0)
         {
            return true;
         }
         return false;
      }
      
      public function applyDamage(param1:Number, param2:§;$§, param3:§&#=§) : void
      {
         if(this.§<X§.stopAnimationsAfterCollision)
         {
            this.§<!"§ = false;
         }
      }
      
      public function §]T§(param1:§;$§, param2:Number, param3:Number, param4:Number, param5:Number = 1.0) : void
      {
         var _loc9_:String = null;
         if(!param1)
         {
            return;
         }
         var _loc6_:Number = this.§<X§.shape.getWidth() * param5;
         var _loc7_:Number = this.§<X§.shape.getHeight() * param5;
         var _loc8_:int = 0;
         while(_loc8_ < this.§<X§.§-Q§)
         {
            if(_loc9_ = this.§<X§.§="§(_loc8_))
            {
               param1.§]#^§(_loc9_,param2,param3,param4,§;=§.§""3§,_loc6_,_loc7_,1,true);
            }
            _loc8_++;
         }
      }
      
      public function §+"M§(param1:§;$§, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:String = null;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:§&#=§ = null;
         if(this.§<X§.§4"-§ == 0)
         {
            return;
         }
         var _loc5_:Number = this.§<X§.explosionForce;
         var _loc6_:Number = this.§<X§.spawnDistance;
         var _loc7_:Number = this.§<X§.angleOffset;
         var _loc8_:int = this.§<X§.§4"-§;
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
            _loc13_ = this.§<X§.§8"8§(_loc10_);
            _loc14_ = param2 - _loc12_ * _loc6_;
            _loc15_ = param3 + _loc11_ * _loc6_;
            if(_loc16_ = param1.addObject(_loc13_,_loc14_,_loc15_,param4,§;=§.§""3§) as §&#=§)
            {
               _loc16_.§3!t§().ApplyImpulse(new b2Vec2(-_loc12_ * _loc5_,_loc11_ * _loc5_),this.getImpulseTarget(_loc16_,param4));
            }
            param4 += _loc9_;
            _loc10_++;
         }
      }
      
      protected function getImpulseTarget(param1:§&#=§, param2:Number) : b2Vec2
      {
         return new b2Vec2(param1.§3!t§().GetPosition().x,param1.§3!t§().GetPosition().y);
      }
      
      public function §4c§(param1:§;$§, param2:Number, param3:Number) : void
      {
         if(this.§<X§.explosionDamageRadius)
         {
            if(param1)
            {
               param1.§6#4§(param2,param3,this.§<X§.explosionRadius,this.§<X§.explosionForce,this.§<X§.explosionDamageRadius,this.§<X§.explosionDamage);
            }
         }
      }
      
      public function playCollisionSound() : void
      {
         var _loc1_:String = this.§<X§.collisionSound;
         this.§<X§.§-Z§(_loc1_);
      }
      
      public function playDamagedSound() : void
      {
         var _loc1_:String = this.§<X§.damageSound;
         this.§<X§.§-Z§(_loc1_);
      }
      
      public function playDestroyedSound() : void
      {
         var _loc1_:String = this.§<X§.§31§;
         this.§<X§.§-Z§(_loc1_);
      }
      
      public function update(param1:Number, param2:§;$§, param3:Number = 0, param4:Number = 0) : void
      {
         this.§'!#§ += param1;
         if(this.§[b§)
         {
            this.§9J§ -= param1;
         }
         if(this.§<X§ && this.§<!"§)
         {
            if(param1 > 0)
            {
               if(this.§<X§.constantRotation)
               {
                  this.§3";§ += this.§<#C§ * 1000 / param1;
               }
               else
               {
                  this.§3";§ = Math.sin(this.§<#C§ * this.§'!#§) * this.§-"q§;
               }
            }
         }
      }
      
      protected function §^"9§(param1:Number, param2:Number) : Number
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
