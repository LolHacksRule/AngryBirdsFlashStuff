package §[#a§
{
   import §,#L§.§!#%§;
   import §0m§.b2Vec2;
   import §52§.§#!,§;
   import §52§.§5!&§;
   import §9$§.Sprite;
   import §=!7§.§5"6§;
   import §=!7§.§=$4§;
   import §=#n§.b2BodyDef;
   import §=#n§.b2FilterData;
   import §=#n§.b2World;
   import §?§.§>"$§;
   import §@"§.§`"W§;
   import §`"K§.§0#u§;
   import §`#C§.§0!y§;
   import §`#C§.§8K§;
   
   public class §-k§ extends §,"!§
   {
      
      public static const §'"<§:String = "special";
      
      public static const §'#;§:String = "fly";
      
      public static const §?e§:String = "fly_yell";
      
      protected static const §7!D§:Number = 20000;
      
      protected static const §1_§:Number = 3000;
      
      protected static const §3#"§:Number = 0.2;
      
      public static var §4#4§:int = 4;
      
      public static var §+J§:int = 12;
       
      
      private var §8"M§:Number;
      
      protected var §%A§:Boolean = false;
      
      protected var §]!J§:int = 0;
      
      protected var §6K§:Boolean = false;
      
      protected var §9$1§:int;
      
      private var §!#v§:Boolean = false;
      
      private var §4F§:Boolean = false;
      
      protected var §[!S§:Array;
      
      protected var §-#E§:int;
      
      protected var §[!H§:Object;
      
      private var §&!d§:String = "Effect_Block_Destruction_Core";
      
      private var §,"q§:§0#u§;
      
      private var §3#[§:Boolean;
      
      public function §-k§(param1:Sprite, param2:§`"W§, param3:b2World, param4:§8K§, param5:§!#%§, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6);
         if(param7)
         {
            this.scream();
            this.§[#6§();
         }
         else
         {
            this.fly();
         }
         this.§[!H§ = new Object();
         this.§-#E§ = §4#4§;
         this.§3#[§ = false;
      }
      
      public function get § #J§() : String
      {
         return this.§&!d§;
      }
      
      public function set § #J§(param1:String) : void
      {
         this.§&!d§ = param1;
      }
      
      public function set §`>§(param1:Boolean) : void
      {
         this.§4F§ = param1;
      }
      
      public function get specialPowerUsed() : Boolean
      {
         return this.§%A§;
      }
      
      public function get launchForce() : Number
      {
         return §5!&§.§+!B§;
      }
      
      public function get §>6§() : Boolean
      {
         if(getBody().IsAwake() && health == §2!w§)
         {
            return true;
         }
         return false;
      }
      
      override public function get isNormal() : Boolean
      {
         return !§'#d§ && !§?#"§ && !this.specialPowerUsed;
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
         _loc1_.§;#<§ = §+#S§;
         _loc1_.§!"y§ = 65535;
         return _loc1_;
      }
      
      public function §,!b§(param1:Number) : void
      {
         §-#c§.SetRestitution(param1);
      }
      
      public function §=!n§() : Number
      {
         return §-#c§.GetRestitution();
      }
      
      public function §5"a§(param1:Number) : void
      {
         §-#c§.SetDensity(param1);
      }
      
      public function §0!]§() : Number
      {
         return §-#c§.GetDensity();
      }
      
      public function §`"9§(param1:Number) : void
      {
         §-#c§.SetFriction(param1);
      }
      
      public function §2!<§() : Number
      {
         return §-#c§.GetFriction();
      }
      
      override protected function normalize() : void
      {
         if(this.§%A§ || getSpecialAnimationProgress() >= 0)
         {
            return;
         }
         super.normalize();
      }
      
      override public function scream() : void
      {
         if(this.§%A§ || getSpecialAnimationProgress() >= 0)
         {
            return;
         }
         super.scream();
         if(this.§>6§)
         {
            §'"s§.setAnimation(§?e§,false);
         }
      }
      
      override public function blink() : void
      {
         if(this.§%A§ || getSpecialAnimationProgress() >= 0)
         {
            return;
         }
         super.blink();
      }
      
      protected function fly() : void
      {
         §'"s§.setAnimation(§'#;§,false);
      }
      
      protected function specialPower(param1:§7!O§, param2:Number = 0, param3:Number = 0) : void
      {
         §'"s§.setAnimation(§'"<§,false);
      }
      
      override protected function setDamageState(param1:Number, param2:§7!O§) : Boolean
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
         _loc3_.§`"q§ = true;
         _loc3_.angularDamping = 2;
         return _loc3_;
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(health < §2!w§ && (§[!K§() || !this.§0"E§))
         {
            this.§8"M§ += param1;
            if(this.§8"M§ >= §1_§)
            {
               return true;
            }
         }
         else
         {
            this.§8"M§ = 0;
         }
         return false;
      }
      
      override public function get removeOnNextUpdate() : Boolean
      {
         return false;
      }
      
      override public function get isLeavingTrail() : Boolean
      {
         if(health < §2!w§ || getBody() == null)
         {
            return false;
         }
         return this.§!#v§;
      }
      
      override public function set isLeavingTrail(param1:Boolean) : void
      {
         this.§!#v§ = param1;
      }
      
      override protected function handleInitialCollision() : void
      {
         this.§!#v§ = false;
         super.handleInitialCollision();
         if(§9"P§ == §7#]§.§^#-§)
         {
            §9"P§ = §7#]§.DEFAULT;
         }
      }
      
      override protected function addTrail(param1:§7!O§) : Boolean
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
         var _loc2_:Number = x * §#!,§.§?$#§;
         var _loc3_:Number = y * §#!,§.§?$#§;
         if(this.§6K§)
         {
            param1.addParticle(§=$4§.§[!q§,§5"6§.§5"B§,§=$4§.§9"J§,_loc2_,_loc3_,-1,"",§=$4§.§8$8§);
            this.§]!J§ = 0;
            this.§6K§ = false;
         }
         else
         {
            _loc4_ = §=$4§.PARTICLE_NAME_BIRD_TRAIL1;
            if(this.§]!J§ == 1)
            {
               _loc4_ = §=$4§.PARTICLE_NAME_BIRD_TRAIL2;
            }
            else if(this.§]!J§ == 2)
            {
               _loc4_ = §=$4§.PARTICLE_NAME_BIRD_TRAIL3;
            }
            this.§]!J§ = (this.§]!J§ + 1) % 3;
            param1.addParticle(_loc4_,§5"6§.§5"B§,§=$4§.§9"J§,_loc2_,_loc3_,-1,"",§=$4§.§8$8§);
         }
         this.§##r§(param1);
         this.addTrailParticles(_loc2_,_loc3_);
         return true;
      }
      
      protected function §##r§(param1:§7!O§) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc2_:Number = §%R§();
         var _loc3_:Number = §5!&§.§&#,§;
         if(_loc2_ > _loc3_ && Math.random() < §3#"§)
         {
            _loc4_ = -Math.PI / 2;
            _loc5_ = Math.random();
            param1.addParticle(§=$4§.§9J§,§5"6§.PARTICLE_GROUP_GAME_EFFECTS,§=$4§.PARTICLE_TYPE_KINETIC_PARTICLE,getBody().GetPosition().x,getBody().GetPosition().y,1250,"",§=$4§.getParticleMaterialFromEngineMaterial(itemName),_loc5_ * Math.cos(_loc4_) * scale,-_loc5_ * Math.sin(_loc4_) * scale,5,_loc5_ * 20,Math.sqrt(scale));
         }
      }
      
      protected function §[#6§() : void
      {
         if(this.§>6§)
         {
            §&!N§(§0!y§.§##C§);
         }
      }
      
      public function activateSpecialPower(param1:§7!O§, param2:Number, param3:Number) : Boolean
      {
         if(this.canActivateSpecialPower)
         {
            this.§%A§ = true;
            §&!N§(§0!y§.§[#M§);
            this.specialPower(param1,param2,param3);
            this.§6K§ = this.shouldShowCloudOnSpecialPowerUse;
            return true;
         }
         return false;
      }
      
      public function get canActivateSpecialPower() : Boolean
      {
         return this.§>6§ && !this.specialPowerUsed;
      }
      
      protected function get shouldShowCloudOnSpecialPowerUse() : Boolean
      {
         return true;
      }
      
      private function §1!2§(param1:int) : int
      {
         return Math.min(§>"$§.§3#'§.§,I§,param1);
      }
      
      override public function update(param1:Number, param2:§7!O§) : void
      {
         if(getSpecialAnimationProgress() >= 0)
         {
            this.specialPower(param2);
         }
         super.update(param1,param2);
         if(this.§>6§)
         {
            this.updateFlying();
         }
         this.addTrail(param2);
      }
      
      protected function updateFlying() : void
      {
         var _loc2_:b2Vec2 = null;
         var _loc1_:Number = 0;
         if(this.§4F§)
         {
            _loc2_ = getBody().GetLinearVelocity();
            if(_loc2_.x != 0 || _loc2_.y != 0)
            {
               _loc1_ = Math.atan2(_loc2_.y,_loc2_.x);
            }
         }
         §?$+§(_loc1_);
      }
      
      override public function applyDamage(param1:Number, param2:§7!O§, param3:§="@§, param4:Boolean = true) : Number
      {
         if(health == §2!w§)
         {
            §@!E§(-1);
         }
         this.addDamageParticles(param2,param1);
         if(this.§,"q§)
         {
            this.§,"q§.§"!%§(param1,getBody().GetMass(),param2,getBody().GetPosition().x + §'"s§.width * 0.5 * §#!,§.§?$#§,getBody().GetPosition().y + §'"s§.width * 0.5 * §#!,§.§?$#§,getBody().GetAngle(),getBody().GetLinearVelocity());
         }
         else
         {
            §&!N§(§0!y§.§5#u§);
         }
         this.setDamageState(0.5,param2);
         if(param1 > defence)
         {
            param1 = defence;
         }
         this.handleLevelEndCheck();
         return super.applyDamage(param1,param2,param3,param4);
      }
      
      override public function causedDamageToObjects() : void
      {
         this.§9$1§ = §"4§;
      }
      
      protected function get §0"E§() : Boolean
      {
         return §"4§ - this.§9$1§ < §7!D§;
      }
      
      override protected function addDestructionParticles(param1:§7!O§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(!param1)
         {
            return;
         }
         var _loc3_:int = §[r§(false) + 1;
         var _loc4_:Number = 90;
         _loc3_ = this.§1!2§(_loc3_);
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§'"s§.width * §#!,§.§?$#§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§'"s§.height * §#!,§.§?$#§) + Math.random() * -_loc8_ * 2;
            param1.addParticle(§=$4§.§9J§,§5"6§.PARTICLE_GROUP_GAME_EFFECTS,§=$4§.PARTICLE_TYPE_KINETIC_PARTICLE,getBody().GetPosition().x + _loc7_,getBody().GetPosition().y + _loc8_,1500,"",§=$4§.getParticleMaterialFromEngineMaterial(itemName),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§7!O§, param2:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(param2 < 6)
         {
            return;
         }
         var _loc3_:Number = §%R§() / 10;
         var _loc4_:int = 1 + _loc3_ * §[r§(false) * 0.12;
         var _loc5_:Number = 90;
         param2 /= scale * scale;
         _loc4_ *= 3 + param2 / 20;
         _loc4_ = this.§1!2§(_loc4_);
         _loc6_ = 0;
         while(_loc6_ < _loc4_ / 3)
         {
            _loc5_ += Math.random() * (720 / _loc4_);
            param1.addParticle(this.§ #J§,§5"6§.PARTICLE_GROUP_GAME_EFFECTS,§=$4§.PARTICLE_TYPE_KINETIC_PARTICLE,getBody().GetPosition().x,getBody().GetPosition().y,1000,"",0,Math.cos(_loc5_) * scale,0,5,_loc3_ * 5,1);
            _loc6_++;
         }
         _loc6_ = 0;
         while(_loc6_ < _loc4_)
         {
            _loc7_ = (_loc5_ += Math.random() * (720 / _loc4_)) / (180 / Math.PI);
            _loc8_ = 0.5 * _loc3_ + _loc3_ * (Math.random() * 0.5);
            param1.addParticle(§=$4§.§9J§,§5"6§.PARTICLE_GROUP_GAME_EFFECTS,§=$4§.PARTICLE_TYPE_KINETIC_PARTICLE,getBody().GetPosition().x,getBody().GetPosition().y,1250,"",§=$4§.getParticleMaterialFromEngineMaterial(itemName),_loc8_ * Math.cos(_loc7_) * scale,-_loc8_ * Math.sin(_loc7_) * scale,5,_loc8_ * 20,Math.sqrt(scale));
            _loc6_++;
         }
      }
      
      protected function addTrailParticles(param1:Number, param2:Number) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:int = 0;
         if(!this.§[!S§)
         {
            return;
         }
         var _loc3_:int = Math.random() * this.§-#E§;
         var _loc4_:Number = 0.5;
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = Math.random() * (Math.PI * 2);
            _loc7_ = 0.5 * §+J§ + §+J§ * (Math.random() * 0.5);
            _loc8_ = 0;
            if(this.§[!S§.length > 1)
            {
               _loc8_ = Math.random() * this.§[!S§.length;
            }
            if(this.§[!S§[_loc8_] == "POWERUP_POWERPOTION_TRAIL")
            {
               _loc4_ = 0.2 + Math.random() * 0.2;
            }
            §>"$§.§3#'§.particles.addSimpleParticle(this.§[!S§[_loc8_],§=$4§.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§5"6§.PARTICLE_GROUP_GAME_EFFECTS,§=$4§.PARTICLE_TYPE_KINETIC_PARTICLE,param1,param2,750,"",§=$4§.getParticleMaterialFromEngineMaterial("BIRD_RED"),_loc7_ * Math.cos(_loc6_) * _loc4_,-_loc7_ * Math.sin(_loc6_) * _loc4_,5,_loc7_ * 20,Math.sqrt(_loc4_));
            _loc5_++;
         }
      }
      
      override protected function updateGravityFilter() : void
      {
         switch(§'P§)
         {
            case §7#]§.§^#-§:
               § !7§.SetGravityScale(0);
               break;
            default:
               super.updateGravityFilter();
         }
      }
      
      public function §6!0§(param1:String) : Object
      {
         return this.§[!H§[param1];
      }
      
      public function §^u§(param1:String, param2:Object) : void
      {
         this.§[!H§[param1] = param2;
      }
      
      public function §0!n§(param1:String) : void
      {
         if(!this.§[!S§)
         {
            this.§[!S§ = [];
         }
         this.§[!S§.push(param1);
      }
      
      public function §2u§(param1:int) : void
      {
         this.§-#E§ = param1;
      }
      
      public function §'!t§(param1:§0#u§) : void
      {
         this.§,"q§ = param1;
      }
      
      public function § !?§() : §0#u§
      {
         return this.§,"q§;
      }
      
      protected function handleLevelEndCheck() : void
      {
         if(!this.§3#[§)
         {
            §>"$§.§#0§.checkForLevelEnd();
            this.§3#[§ = true;
         }
      }
      
      override public function updateBeforeRemoving(param1:§7!O§, param2:Boolean) : void
      {
         super.updateBeforeRemoving(param1,param2);
         this.handleLevelEndCheck();
      }
   }
}
