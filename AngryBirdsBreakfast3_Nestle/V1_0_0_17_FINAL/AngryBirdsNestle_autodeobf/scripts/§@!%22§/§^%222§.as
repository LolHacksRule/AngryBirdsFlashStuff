package §@!"§
{
   import §%8§.§89§;
   import §%8§.§@-§;
   import §0!m§.§@!S§;
   import §0"!§.b2BodyDef;
   import §0"!§.b2FilterData;
   import §0"!§.b2World;
   import §0N§.§,!A§;
   import §2`§.§;!Q§;
   import §3!J§.Sprite;
   import §@!E§.b2Vec2;
   import §@V§.§#=§;
   import §@V§.§&#§;
   import §`2§.§"w§;
   import §`2§.§`""§;
   
   public class §^"2§ extends §5!;§
   {
      
      public static const §=!_§:String = "special";
      
      public static const §;_§:String = "fly";
      
      public static const §!s§:String = "fly_yell";
      
      protected static const §?_§:Number = 20000;
      
      protected static const §4!@§:Number = 3000;
      
      protected static const §6!I§:Number = 0.2;
       
      
      private var §]!"§:Number;
      
      protected var §>!6§:Boolean = false;
      
      protected var §,"0§:int = 0;
      
      protected var §]!H§:Boolean = false;
      
      protected var §1!Y§:int;
      
      private var §+!w§:Boolean = false;
      
      private var §4P§:Boolean = false;
      
      protected var §%;§:Boolean;
      
      public function §^"2§(param1:Sprite, param2:§;!Q§, param3:b2World, param4:§@-§, param5:§,!A§, param6:Number = 1.0, param7:Boolean = true)
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
         if(§@!S§.§2A§ && §@!S§.§2A§.slingshot)
         {
            this.§%;§ = §@!S§.§2A§.slingshot.§<!G§;
         }
         else
         {
            this.§%;§ = false;
         }
      }
      
      public static function §0"'§(param1:Number, param2:Number, param3:int, param4:int, param5:int) : void
      {
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc6_:int = param3 + Math.random() * param4;
         var _loc8_:int = 0;
         while(_loc8_ < _loc6_)
         {
            _loc9_ = Math.random() * (Math.PI * 2);
            _loc10_ = 0.5 * param5 + param5 * (Math.random() * 0.5);
            §@!S§.§2A§.particles.§=9§("STAR_PARTICLE",§`""§.§?!q§,§"w§.§,§,§`""§.§@b§,param1,param2,750,"",§`""§.§6!X§("BIRD_RED"),_loc10_ * Math.cos(_loc9_) * 1,-_loc10_ * Math.sin(_loc9_) * 1,5,_loc10_ * 20,Math.sqrt(1));
            _loc8_++;
         }
      }
      
      public function set §@!M§(param1:Boolean) : void
      {
         this.§4P§ = param1;
      }
      
      public function get specialPowerUsed() : Boolean
      {
         return this.§>!6§;
      }
      
      public function get launchForce() : Number
      {
         return §&#§.§ !f§;
      }
      
      public function get §#!G§() : Boolean
      {
         if(§!!I§().IsAwake() && health == healthMax)
         {
            return true;
         }
         return false;
      }
      
      override public function get isNormal() : Boolean
      {
         return !§7!s§ && !§+!3§ && !this.specialPowerUsed;
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
         _loc1_.§^!d§ = §[<§;
         _loc1_.§+!+§ = 65535 & ~§"!]§;
         return _loc1_;
      }
      
      override protected function normalize() : void
      {
         if(this.§>!6§ || getSpecialAnimationProgress() >= 0)
         {
            return;
         }
         super.normalize();
      }
      
      override public function scream() : void
      {
         if(this.§>!6§ || getSpecialAnimationProgress() >= 0)
         {
            return;
         }
         super.scream();
         if(this.§#!G§)
         {
            §=K§.setAnimation(§!s§,false);
         }
      }
      
      override public function blink() : void
      {
         if(this.§>!6§ || getSpecialAnimationProgress() >= 0)
         {
            return;
         }
         super.blink();
      }
      
      protected function fly() : void
      {
         §=K§.setAnimation(§;_§,false);
      }
      
      protected function specialPower(param1:§`!m§, param2:Number = 0, param3:Number = 0) : void
      {
         §=K§.setAnimation(§=!_§,false);
      }
      
      override protected function setDamageState(param1:Number, param2:§`!m§) : Boolean
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
         _loc3_.§5!J§ = true;
         _loc3_.§7e§ = 2;
         return _loc3_;
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(health < healthMax && (§!'§() || !this.§4!f§))
         {
            this.§]!"§ += param1;
            if(this.§]!"§ >= §4!@§)
            {
               return true;
            }
         }
         else
         {
            this.§]!"§ = 0;
         }
         return false;
      }
      
      override public function get removeOnNextUpdate() : Boolean
      {
         return false;
      }
      
      override public function get isLeavingTrail() : Boolean
      {
         if(health < healthMax || §!!I§() == null)
         {
            return false;
         }
         return this.§+!w§;
      }
      
      override public function set isLeavingTrail(param1:Boolean) : void
      {
         this.§+!w§ = param1;
      }
      
      override protected function handleInitialCollision() : void
      {
         this.§+!w§ = false;
         super.handleInitialCollision();
      }
      
      override protected function addTrail(param1:§`!m§) : Boolean
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
         var _loc2_:Number = x * §#=§.§^!2§;
         var _loc3_:Number = y * §#=§.§^!2§;
         if(this.§]!H§)
         {
            param1.§9!@§(§`""§.§6"6§,§"w§.§6$§,§`""§.§ -§,_loc2_,_loc3_,-1,"",§`""§.§4F§);
            this.§,"0§ = 0;
            this.§]!H§ = false;
         }
         else if(§3!G§ > 1)
         {
            param1.§9!@§(§`""§.§2!t§,§"w§.§6$§,§`""§.§ -§,_loc2_,_loc3_,-1,"",§`""§.§4F§);
         }
         else
         {
            _loc4_ = §`""§.PARTICLE_NAME_BIRD_TRAIL1;
            if(this.§,"0§ == 1)
            {
               _loc4_ = §`""§.PARTICLE_NAME_BIRD_TRAIL2;
            }
            else if(this.§,"0§ == 2)
            {
               _loc4_ = §`""§.PARTICLE_NAME_BIRD_TRAIL3;
            }
            this.§,"0§ = (this.§,"0§ + 1) % 3;
            param1.§9!@§(_loc4_,§"w§.§6$§,§`""§.§ -§,_loc2_,_loc3_,-1,"",§`""§.§4F§);
         }
         this.§4!#§(param1);
         if(this.§%;§)
         {
            §0"'§(_loc2_,_loc3_,0,3,10);
         }
         return true;
      }
      
      protected function §4!#§(param1:§`!m§) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc2_:Number = § else§();
         var _loc3_:Number = §&#§.§;!t§;
         if(_loc2_ > _loc3_ && Math.random() < §6!I§)
         {
            _loc4_ = -Math.PI / 2;
            _loc5_ = Math.random();
            param1.§9!@§(§`""§.§-J§,§"w§.§,§,§`""§.§@b§,§!!I§().GetPosition().x,§!!I§().GetPosition().y,1250,"",§`""§.§6!X§(itemName),_loc5_ * Math.cos(_loc4_) * scale,-_loc5_ * Math.sin(_loc4_) * scale,5,_loc5_ * 20,Math.sqrt(scale));
         }
      }
      
      override protected function playScreamingSoundEffect() : void
      {
         if(this.§#!G§)
         {
            §8!U§(§89§.§5?§);
         }
         else
         {
            super.playScreamingSoundEffect();
         }
      }
      
      public function activateSpecialPower(param1:§`!m§, param2:Number, param3:Number) : Boolean
      {
         if(this.§>!6§)
         {
            return false;
         }
         if(this.canActivateSpecialPower)
         {
            this.§>!6§ = true;
            §8!U§(§89§.§7r§);
            this.specialPower(param1,param2,param3);
            this.§]!H§ = this.shouldShowCloudOnSpecialPowerUse;
            return true;
         }
         return false;
      }
      
      public function get canActivateSpecialPower() : Boolean
      {
         return this.§#!G§;
      }
      
      protected function get shouldShowCloudOnSpecialPowerUse() : Boolean
      {
         return true;
      }
      
      private function §=!M§(param1:int) : int
      {
         return Math.min(§@!S§.§2A§.§7!X§,param1);
      }
      
      override public function update(param1:Number, param2:§`!m§) : void
      {
         if(getSpecialAnimationProgress() >= 0)
         {
            this.specialPower(param2);
         }
         super.update(param1,param2);
         if(this.§#!G§)
         {
            this.updateFlying();
         }
         this.addTrail(param2);
      }
      
      protected function updateFlying() : void
      {
         var _loc2_:b2Vec2 = null;
         var _loc1_:Number = 0;
         if(this.§4P§)
         {
            _loc2_ = §!!I§().GetLinearVelocity();
            if(_loc2_.x != 0 || _loc2_.y != 0)
            {
               _loc1_ = Math.atan2(_loc2_.y,_loc2_.x);
            }
         }
         §[!X§(_loc1_);
      }
      
      override public function applyDamage(param1:Number, param2:§`!m§, param3:§@_§, param4:Boolean = true) : Number
      {
         if(health == healthMax)
         {
            §6![§(-1);
         }
         this.addDamageParticles(param2,param1);
         this.setDamageState(0.5,param2);
         if(param1 > defence)
         {
            param1 = defence;
         }
         §5M§();
         return super.applyDamage(param1,param2,param3,param4);
      }
      
      override public function causedDamageToObjects() : void
      {
         this.§1!Y§ = §#e§;
      }
      
      protected function get §4!f§() : Boolean
      {
         return §#e§ - this.§1!Y§ < §?_§;
      }
      
      override protected function addDestructionParticles(param1:§`!m§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(!param1)
         {
            return;
         }
         var _loc3_:int = §&!a§(false) + 1;
         var _loc4_:Number = 90;
         _loc3_ = this.§=!M§(_loc3_);
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§=K§.width * §#=§.§^!2§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§=K§.height * §#=§.§^!2§) + Math.random() * -_loc8_ * 2;
            param1.§9!@§(§`""§.§-J§,§"w§.§,§,§`""§.§@b§,§!!I§().GetPosition().x + _loc7_,§!!I§().GetPosition().y + _loc8_,1500,"",§`""§.§6!X§(itemName),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§`!m§, param2:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(param2 < 6)
         {
            return;
         }
         var _loc3_:Number = § else§() / 10;
         var _loc4_:int = 1 + _loc3_ * §&!a§(false) * 0.12;
         var _loc5_:Number = 90;
         param2 /= scale * scale;
         _loc4_ *= 3 + param2 / 20;
         _loc4_ = this.§=!M§(_loc4_);
         _loc6_ = 0;
         while(_loc6_ < _loc4_ / 3)
         {
            _loc5_ += Math.random() * (720 / _loc4_);
            param1.§9!@§(§`""§.§-!0§,§"w§.§,§,§`""§.§@b§,§!!I§().GetPosition().x,§!!I§().GetPosition().y,1000,"",0,Math.cos(_loc5_) * scale,0,5,_loc3_ * 5,1);
            _loc6_++;
         }
         _loc6_ = 0;
         while(_loc6_ < _loc4_)
         {
            _loc7_ = (_loc5_ += Math.random() * (720 / _loc4_)) / (180 / Math.PI);
            _loc8_ = 0.5 * _loc3_ + _loc3_ * (Math.random() * 0.5);
            param1.§9!@§(§`""§.§-J§,§"w§.§,§,§`""§.§@b§,§!!I§().GetPosition().x,§!!I§().GetPosition().y,1250,"",§`""§.§6!X§(itemName),_loc8_ * Math.cos(_loc7_) * scale,-_loc8_ * Math.sin(_loc7_) * scale,5,_loc8_ * 20,Math.sqrt(scale));
            _loc6_++;
         }
      }
   }
}
