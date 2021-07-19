package §,z§
{
   import § ! §.§5!v§;
   import §&v§.§,4§;
   import §&v§.§9B§;
   import §3!`§.b2BodyDef;
   import §3!`§.b2FilterData;
   import §3!`§.b2World;
   import §6![§.Sprite;
   import §6Z§.b2Vec2;
   import §>!Z§.§!u§;
   import §>!Z§.§2_§;
   import §?s§.§8K§;
   import §@L§.§3!&§;
   import §@L§.§?!'§;
   import com.angrybirds.§&!"§;
   
   public class §?!z§ extends § !o§
   {
      
      public static const §-"§:String = "special";
      
      public static const §15§:String = "fly";
      
      public static const §`;§:String = "fly_yell";
      
      protected static const §<+§:Number = 20000;
      
      protected static const §!E§:Number = 3000;
      
      protected static const §#s§:Number = 0.2;
       
      
      private var §3!E§:Number;
      
      protected var §!"$§:Boolean = false;
      
      protected var §2!V§:int = 0;
      
      protected var §3!^§:Boolean = false;
      
      protected var §+W§:int;
      
      private var §]E§:Boolean = false;
      
      private var §'p§:Boolean = false;
      
      public function §?!z§(param1:Sprite, param2:§5!v§, param3:b2World, param4:§9B§, param5:§8K§, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6);
         if(param7)
         {
            this.scream();
            this.playScreamingSoundEffect();
         }
         else
         {
            this.fly();
         }
      }
      
      public function set §8"+§(param1:Boolean) : void
      {
         this.§'p§ = param1;
      }
      
      public function get specialPowerUsed() : Boolean
      {
         return this.§!"$§;
      }
      
      public function get launchForce() : Number
      {
         return §3!&§.§9!i§;
      }
      
      public function get §1!q§() : Boolean
      {
         if(§^`§().IsAwake() && health == healthMax)
         {
            return true;
         }
         return false;
      }
      
      override public function get isNormal() : Boolean
      {
         return !§#y§ && !§%`§ && !this.specialPowerUsed;
      }
      
      override protected function initializeHealth(param1:Number) : void
      {
         if(param1 < 2)
         {
            param1 = 2;
         }
         super.initializeHealth(param1);
      }
      
      override protected function createFilterData() : b2FilterData
      {
         var _loc1_:b2FilterData = super.createFilterData();
         _loc1_.§9!W§ = §8"!§;
         _loc1_.§`"%§ = 65535 & ~§,O§;
         return _loc1_;
      }
      
      override protected function normalize() : void
      {
         if(this.§!"$§ || getSpecialAnimationProgress() >= 0)
         {
            return;
         }
         super.normalize();
      }
      
      override public function scream() : void
      {
         if(this.§!"$§ || getSpecialAnimationProgress() >= 0)
         {
            return;
         }
         super.scream();
         if(this.§1!q§)
         {
            §`!f§.setAnimation(§`;§,false);
         }
      }
      
      override public function blink() : void
      {
         if(this.§!"$§ || getSpecialAnimationProgress() >= 0)
         {
            return;
         }
         super.blink();
      }
      
      protected function fly() : void
      {
         §`!f§.setAnimation(§15§,false);
      }
      
      protected function specialPower(param1:§3!#§, param2:Number = 0, param3:Number = 0) : void
      {
         §`!f§.setAnimation(§-"§,false);
      }
      
      override protected function setDamageState(param1:Number, param2:§3!#§) : Boolean
      {
         if(param1 > 0)
         {
            param1 = 1;
         }
         return super.setDamageState(param1,param2);
      }
      
      override protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = super.createBodyDefinition(param1,param2);
         _loc3_.§6!D§ = true;
         _loc3_.§&!&§ = 2;
         return _loc3_;
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(health < healthMax && (§^" §() || !this.§with§))
         {
            this.§3!E§ += param1;
            if(this.§3!E§ >= §!E§)
            {
               return true;
            }
         }
         else
         {
            this.§3!E§ = 0;
         }
         return false;
      }
      
      override public function get removeOnNextUpdate() : Boolean
      {
         return false;
      }
      
      override public function get isLeavingTrail() : Boolean
      {
         if(health < healthMax || §^`§() == null)
         {
            return false;
         }
         return this.§]E§;
      }
      
      override public function set isLeavingTrail(param1:Boolean) : void
      {
         this.§]E§ = param1;
      }
      
      override protected function handleInitialCollision() : void
      {
         this.§]E§ = false;
         super.handleInitialCollision();
      }
      
      override protected function addTrail(param1:§3!#§) : Boolean
      {
         var _loc4_:String = null;
         if(!this.isLeavingTrail)
         {
            return false;
         }
         if(!param1)
         {
            return true;
         }
         var _loc2_:Number = x * §?!'§.§'!i§;
         var _loc3_:Number = y * §?!'§.§'!i§;
         if(this.§3!^§)
         {
            param1.§-!,§(§2_§.§'l§,§!u§.§%c§,§2_§.§,!R§,_loc2_,_loc3_,-1,"",§2_§.§7!=§);
            this.§2!V§ = 0;
            this.§3!^§ = false;
         }
         else if(§["+§ > 1)
         {
            param1.§-!,§(§2_§.§`H§,§!u§.§%c§,§2_§.§,!R§,_loc2_,_loc3_,-1,"",§2_§.§7!=§);
         }
         else
         {
            _loc4_ = §2_§.PARTICLE_NAME_BIRD_TRAIL1;
            if(this.§2!V§ == 1)
            {
               _loc4_ = §2_§.PARTICLE_NAME_BIRD_TRAIL2;
            }
            else if(this.§2!V§ == 2)
            {
               _loc4_ = §2_§.PARTICLE_NAME_BIRD_TRAIL3;
            }
            this.§2!V§ = (this.§2!V§ + 1) % 3;
            param1.§-!,§(_loc4_,§!u§.§%c§,§2_§.§,!R§,_loc2_,_loc3_,-1,"",§2_§.§7!=§);
         }
         this.§@!l§(param1);
         return true;
      }
      
      protected function §@!l§(param1:§3!#§) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc2_:Number = §;<§();
         var _loc3_:Number = §3!&§.§%"#§;
         if(_loc2_ > _loc3_ && Math.random() < §#s§)
         {
            _loc4_ = -Math.PI / 2;
            _loc5_ = Math.random();
            param1.§-!,§(§2_§.§0!2§,§!u§.§54§,§2_§.§4d§,§^`§().GetPosition().x,§^`§().GetPosition().y,1250,"",§2_§.§%j§(itemName),_loc5_ * Math.cos(_loc4_) * scale,-_loc5_ * Math.sin(_loc4_) * scale,5,_loc5_ * 20,Math.sqrt(scale));
         }
      }
      
      override protected function playScreamingSoundEffect() : void
      {
         if(this.§1!q§)
         {
            §]Y§(§,4§.§1x§);
         }
         else
         {
            super.playScreamingSoundEffect();
         }
      }
      
      public function activateSpecialPower(param1:§3!#§, param2:Number, param3:Number) : Boolean
      {
         if(this.§!"$§)
         {
            return false;
         }
         if(this.canActivateSpecialPower)
         {
            this.§!"$§ = true;
            §]Y§(§,4§.§>!P§);
            this.specialPower(param1,param2,param3);
            this.§3!^§ = this.shouldShowCloudOnSpecialPowerUse;
            return true;
         }
         return false;
      }
      
      public function get canActivateSpecialPower() : Boolean
      {
         return this.§1!q§;
      }
      
      protected function get shouldShowCloudOnSpecialPowerUse() : Boolean
      {
         return true;
      }
      
      private function §?E§(param1:int) : int
      {
         return Math.min(§&!"§.§1!D§.§ K§,param1);
      }
      
      override public function update(param1:Number, param2:§3!#§) : void
      {
         if(getSpecialAnimationProgress() >= 0)
         {
            this.specialPower(param2);
         }
         super.update(param1,param2);
         if(this.§1!q§)
         {
            this.updateFlying();
         }
         this.addTrail(param2);
      }
      
      protected function updateFlying() : void
      {
         var _loc2_:b2Vec2 = null;
         var _loc1_:Number = 0;
         if(this.§'p§)
         {
            _loc2_ = §^`§().GetLinearVelocity();
            if(_loc2_.x != 0 || _loc2_.y != 0)
            {
               _loc1_ = Math.atan2(_loc2_.y,_loc2_.x);
            }
         }
         §,3§(_loc1_);
      }
      
      override public function applyDamage(param1:Number, param2:§3!#§, param3:§"_§, param4:Boolean = true) : Number
      {
         if(health == healthMax)
         {
            §>!;§(-1);
         }
         this.addDamageParticles(param2,param1);
         this.setDamageState(0.5,param2);
         if(param1 > defence)
         {
            param1 = defence;
         }
         §]?§();
         return super.applyDamage(param1,param2,param3,param4);
      }
      
      override public function causedDamageToObjects() : void
      {
         this.§+W§ = §<E§;
      }
      
      protected function get §with§() : Boolean
      {
         return §<E§ - this.§+W§ < §<+§;
      }
      
      override protected function addDestructionParticles(param1:§3!#§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(!param1)
         {
            return;
         }
         var _loc3_:int = §[z§(false) + 1;
         var _loc4_:Number = 90;
         _loc3_ = this.§?E§(_loc3_);
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§`!f§.width * §?!'§.§'!i§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§`!f§.height * §?!'§.§'!i§) + Math.random() * -_loc8_ * 2;
            param1.§-!,§(§2_§.§0!2§,§!u§.§54§,§2_§.§4d§,§^`§().GetPosition().x + _loc7_,§^`§().GetPosition().y + _loc8_,1500,"",§2_§.§%j§(itemName),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§3!#§, param2:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(param2 < 6)
         {
            return;
         }
         var _loc3_:Number = §;<§() / 10;
         var _loc4_:int = 1 + _loc3_ * §[z§(false) * 0.12;
         var _loc5_:Number = 90;
         param2 /= scale * scale;
         _loc4_ *= 3 + param2 / 20;
         _loc4_ = this.§?E§(_loc4_);
         _loc6_ = 0;
         while(_loc6_ < _loc4_ / 3)
         {
            _loc5_ += Math.random() * (720 / _loc4_);
            param1.§-!,§(§2_§.§5§,§!u§.§54§,§2_§.§4d§,§^`§().GetPosition().x,§^`§().GetPosition().y,1000,"",0,Math.cos(_loc5_) * scale,0,5,_loc3_ * 5,1);
            _loc6_++;
         }
         _loc6_ = 0;
         while(_loc6_ < _loc4_)
         {
            _loc7_ = (_loc5_ += Math.random() * (720 / _loc4_)) / (180 / Math.PI);
            _loc8_ = 0.5 * _loc3_ + _loc3_ * (Math.random() * 0.5);
            param1.§-!,§(§2_§.§0!2§,§!u§.§54§,§2_§.§4d§,§^`§().GetPosition().x,§^`§().GetPosition().y,1250,"",§2_§.§%j§(itemName),_loc8_ * Math.cos(_loc7_) * scale,-_loc8_ * Math.sin(_loc7_) * scale,5,_loc8_ * 20,Math.sqrt(scale));
            _loc6_++;
         }
      }
   }
}
