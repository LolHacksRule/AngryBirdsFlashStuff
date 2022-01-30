package §]r§
{
   import §3!S§.§%s§;
   import §3>§.§>!&§;
   import §7q§.Sprite;
   import §;w§.§3"+§;
   import §;w§.§5!Y§;
   import §=9§.b2BodyDef;
   import §=9§.b2World;
   import §=b§.§-!K§;
   import §=b§.§5?§;
   
   public class §<!$§ extends §@!§
   {
      
      protected static const § o§:Boolean = false;
      
      protected static const §7!a§:Number = 2000;
      
      protected static const §'!_§:Number = 0.2;
       
      
      private var §?!!§:Number;
      
      private var §[d§:Boolean = false;
      
      protected var §-! §:int = 0;
      
      public function §<!$§(param1:§2"%§, param2:Sprite, param3:b2World, param4:§-!K§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param11);
         if(param10)
         {
            §2!7§.mTryToScream = §+c§.§]![§ + 1;
         }
      }
      
      public function get §!!K§() : Boolean
      {
         return this.§[d§;
      }
      
      override protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = super.createBodyDefinition(param1,param2);
         _loc3_.§8Q§ = true;
         _loc3_.§[-§ = 2;
         return _loc3_;
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(§7!D§ < §@!#§ && §@_§())
         {
            this.§?!!§ += param1;
            if(this.§?!!§ >= §7!a§)
            {
               return true;
            }
         }
         else
         {
            this.§?!!§ = 0;
         }
         return false;
      }
      
      override protected function updateSpecialAnimation(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         if(this.§[d§)
         {
            if(§@!'§.toUpperCase() == "BIRD_WHITE")
            {
               _loc3_ = true;
            }
            else if(§@!'§.toUpperCase() == "BIRD_YELLOW" || §@!'§.toUpperCase() == "BIRD_GREEN" || §@!'§.toUpperCase() == "BIRD_RED" || §@!'§.toUpperCase() == "BIRD_RED_BIG")
            {
               if(§2!7§.mTryToFly)
               {
                  _loc3_ = true;
               }
            }
            if(_loc3_)
            {
               if(!§2!7§.mTryToSpecial)
               {
                  §2!7§.mTryToSpecial = true;
                  _loc2_ = true;
               }
            }
            else if(§2!7§.mTryToSpecial)
            {
               §2!7§.mTryToSpecial = false;
               if(§2!7§.mIsSpecial)
               {
                  §2!7§.mIsSpecial = false;
                  _loc2_ = true;
               }
            }
         }
         return _loc2_;
      }
      
      override protected function updateFlyingFrameAnimations(param1:Number) : Boolean
      {
         var _loc3_:Number = NaN;
         var _loc2_:Boolean = false;
         if(getBody().IsAwake() && §7!D§ == §@!#§)
         {
            if(!§2!7§.mTryToFly)
            {
               §2!7§.mTryToFly = true;
               _loc2_ = true;
            }
            if(§@!'§.toUpperCase() == "BIRD_GREEN")
            {
               _loc3_ = param1 * (!!this.§[d§ ? 2 : 1) * 360 / 1000;
               §7!%§(§@&§() - _loc3_);
            }
            else if(!(§@!'§.toUpperCase() == "BIRD_WHITE" && this.§[d§))
            {
               if(§ o§)
               {
                  §1@§();
               }
               else if(!§4"#§() && !§]!S§())
               {
                  §7!%§(0);
               }
            }
         }
         else if(§2!7§.mTryToFly)
         {
            §2!7§.mTryToFly = false;
            if(§2!7§.mIsFlying)
            {
               §2!7§.mIsFlying = false;
               _loc2_ = true;
            }
         }
         return _loc2_;
      }
      
      override public function addTrail() : void
      {
         var _loc4_:String = null;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc1_:§-!K§ = §%s§.§`!f§;
         if(§7!D§ < §@!#§ || getBody() == null)
         {
            _loc1_.§5!x§(this);
            _loc1_.§7!7§ = false;
            return;
         }
         var _loc2_:Number = x * §-!K§.§"!C§;
         var _loc3_:Number = y * §-!K§.§"!C§;
         if(_loc1_.§7!7§)
         {
            _loc1_.particles.§continue§(§3"+§.§7"4§,§5!Y§.§`W§,§3"+§.§4"1§,_loc2_,_loc3_,-1,"",§3"+§.§<K§);
            _loc1_.§7!7§ = false;
            this.§-! § = 0;
         }
         else if(§9M§ > 1)
         {
            _loc1_.particles.§continue§(§3"+§.§0!+§,§5!Y§.§`W§,§3"+§.§4"1§,_loc2_,_loc3_,-1,"",§3"+§.§<K§);
         }
         else
         {
            _loc4_ = §3"+§.PARTICLE_NAME_BIRD_TRAIL1;
            if(this.§-! § == 1)
            {
               _loc4_ = §3"+§.PARTICLE_NAME_BIRD_TRAIL2;
            }
            else if(this.§-! § == 2)
            {
               _loc4_ = §3"+§.PARTICLE_NAME_BIRD_TRAIL3;
            }
            this.§-! § = (this.§-! § + 1) % 3;
            _loc1_.particles.§continue§(_loc4_,§5!Y§.§`W§,§3"+§.§4"1§,_loc2_,_loc3_,-1,"",§3"+§.§<K§);
         }
         if(§<M§() > §5?§.§?!e§ && Math.random() < §'!_§)
         {
            _loc5_ = -Math.PI / 2;
            _loc6_ = Math.random();
            _loc1_.particles.§continue§(§3"+§.§2s§,§5!Y§.§%R§,§3"+§.§^!q§,getBody().GetPosition().x,getBody().GetPosition().y,1250,"",§3"+§.§`d§(§@!'§),_loc6_ * Math.cos(_loc5_) * scale,-_loc6_ * Math.sin(_loc5_) * scale,5,_loc6_ * 20,Math.sqrt(scale));
         }
      }
      
      override protected function playScreamingSoundEffect() : void
      {
         if(§2!7§.mTryToFly)
         {
            §%i§(§>!&§.§2!o§);
         }
         else
         {
            super.playScreamingSoundEffect();
         }
      }
      
      override public function activateSpecialPower(param1:§2"%§) : Boolean
      {
         if(this.§[d§)
         {
            return false;
         }
         §%i§(§>!&§.§]!_§);
         this.§[d§ = true;
         return true;
      }
      
      private function §9W§(param1:int) : int
      {
         return Math.min(§%s§.§`!f§.§5s§,param1);
      }
      
      override public function addDestructionParticles(param1:§5!Y§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc3_:int = §2!Q§(false) + 1;
         var _loc4_:Number = 90;
         _loc3_ = this.§9W§(_loc3_);
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§2!7§.mW * §-!K§.§"!C§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§2!7§.mH * §-!K§.§"!C§) + Math.random() * -_loc8_ * 2;
            param1.§continue§(§3"+§.§2s§,§5!Y§.§%R§,§3"+§.§^!q§,getBody().GetPosition().x + _loc7_,getBody().GetPosition().y + _loc8_,1500,"",§3"+§.§`d§(§@!'§),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§5!Y§, param2:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(§]!S§())
         {
            return;
         }
         if(param2 < 6)
         {
            return;
         }
         var _loc3_:Number = §<M§() / 10;
         var _loc4_:int = 1 + _loc3_ * §2!Q§(false) * 0.12;
         var _loc5_:Number = 90;
         param2 /= scale * scale;
         _loc4_ *= 3 + param2 / 20;
         _loc4_ = this.§9W§(_loc4_);
         _loc6_ = 0;
         while(_loc6_ < _loc4_ / 3)
         {
            _loc5_ += Math.random() * (720 / _loc4_);
            param1.§continue§(§3"+§.§7"!§,§5!Y§.§%R§,§3"+§.§^!q§,getBody().GetPosition().x,getBody().GetPosition().y,1000,"",0,Math.cos(_loc5_) * scale,0,5,_loc3_ * 5,1);
            _loc6_++;
         }
         _loc6_ = 0;
         while(_loc6_ < _loc4_)
         {
            _loc7_ = (_loc5_ += Math.random() * (720 / _loc4_)) / (180 / Math.PI);
            _loc8_ = 0.5 * _loc3_ + _loc3_ * (Math.random() * 0.5);
            param1.§continue§(§3"+§.§2s§,§5!Y§.§%R§,§3"+§.§^!q§,getBody().GetPosition().x,getBody().GetPosition().y,1250,"",§3"+§.§`d§(§@!'§),_loc8_ * Math.cos(_loc7_) * scale,-_loc8_ * Math.sin(_loc7_) * scale,5,_loc8_ * 20,Math.sqrt(scale));
            _loc6_++;
         }
      }
   }
}
