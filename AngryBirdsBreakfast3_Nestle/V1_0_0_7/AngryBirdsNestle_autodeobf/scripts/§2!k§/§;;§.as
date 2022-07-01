package §2!k§
{
   import § !=§.Sprite;
   import §!r§.b2Settings;
   import §-!2§.b2Vec2;
   import §0!j§.b2BodyDef;
   import §0!j§.b2FilterData;
   import §0!j§.b2Fixture;
   import §0!j§.b2World;
   import §;L§.§=l§;
   import §;Z§.§3?§;
   import §;s§.§%!c§;
   import §[^§.§"!>§;
   import §[^§.§>"§;
   import §[^§.§["%§;
   import §[^§.§`!M§;
   import §]A§.§,!l§;
   import §]A§.§[d§;
   import flash.geom.Point;
   
   public class §;;§ extends §47§
   {
      
      public static const §-$§:String = "normal";
      
      public static const §>"'§:uint = 1 << 1;
      
      public static const § 8§:uint = 1 << 2;
      
      public static const §^G§:uint = 1 << 3;
      
      public static const §,!i§:uint = 1 << 4;
       
      
      private var §+[§:int;
      
      private var §;G§:int;
      
      private var § I§:b2Vec2;
      
      private var §^!]§:b2Vec2;
      
      private var §?!L§:Number;
      
      private var §#!s§:Number;
      
      private var §2!$§:Number;
      
      private var §3!V§:Number = 1;
      
      private var §?w§:Boolean = false;
      
      protected var § !@§:§=!4§;
      
      private var §,<§:§=l§;
      
      private var §6!p§:Number = 1.0;
      
      private var § W§:Boolean = true;
      
      private var §9!%§:Boolean = false;
      
      private var §=H§:int = 0;
      
      protected var §&@§:Number = -1.0;
      
      private var §->§:Boolean = false;
      
      private var §`!n§:Boolean = false;
      
      public function §;;§(param1:Sprite, param2:§=l§, param3:b2World, param4:§`!M§, param5:Number, param6:Number, param7:Number, param8:Number)
      {
         this.§^!]§ = new b2Vec2();
         super(param1,param3,param4,param5,param6,param7);
         this.§,<§ = param2;
         this.§6!p§ = param8;
         this.§;G§ = §>!A§.itemType;
         param1.scaleX = param8;
         param1.scaleY = param8;
         this.§ !@§ = this.§[!h§();
         this.§ !@§.§ g§(§>!A§.shape is §"!>§);
         this.§1^§(param5,param6);
         this.§2!$§ = §>!A§.getItemDefence();
         if(§>!A§.healthMax > 0)
         {
            this.initializeHealth(§>!A§.healthMax);
         }
         else
         {
            this.initializeHealth(Math.round(this.§0!s§(true) * §>!A§.getItemStrength()));
         }
         if(§>!A§.itemType == §`!M§.§<-§)
         {
            param1.visible = false;
         }
         else
         {
            this.setDamageState(0,null);
         }
         if(param7 != 0)
         {
            this.§9Z§(param7 * (Math.PI / 180));
         }
         this.update(0,null);
         this.render(0,1,0);
         this.§ !@§.§1D§(§>!A§.shape);
      }
      
      public static function §%!2§(param1:int, param2:§>"§, param3:String = "") : void
      {
         if(param2 == null)
         {
            return;
         }
         var _loc4_:String;
         if((_loc4_ = param2.§%!F§(param1)).length > 0)
         {
            if(param3.length <= 0)
            {
               param3 = param2.§7C§;
            }
            §%!c§.§!c§(_loc4_,param3);
         }
      }
      
      public function get health() : Number
      {
         return this.§?!L§;
      }
      
      public function set health(param1:Number) : void
      {
         this.§?!L§ = param1;
      }
      
      public function get healthMax() : Number
      {
         return this.§#!s§;
      }
      
      public function get itemName() : String
      {
         return §>!A§.itemName;
      }
      
      public function get §5" §() : Number
      {
         return this.§3!V§;
      }
      
      public function get §@@§() : §=l§
      {
         return this.§,<§;
      }
      
      public function get x() : Number
      {
         return §'!a§;
      }
      
      public function get y() : Number
      {
         return §[6§;
      }
      
      public function get scale() : Number
      {
         return this.§6!p§;
      }
      
      public function get id() : int
      {
         return this.§=H§;
      }
      
      public function get §]_§() : Boolean
      {
         return this.§2!$§ >= 0;
      }
      
      public function get defence() : Number
      {
         return this.§2!$§;
      }
      
      public function get §2u§() : Boolean
      {
         return this.§ W§;
      }
      
      public function set §2u§(param1:Boolean) : void
      {
         this.§ W§ = param1;
      }
      
      public function get §6!F§() : Number
      {
         return this.§&@§;
      }
      
      public function get destroysCollidingObjects() : Boolean
      {
         return false;
      }
      
      public function get §0!K§() : Boolean
      {
         return this.§->§;
      }
      
      public function set §0!K§(param1:Boolean) : void
      {
         this.§->§ = param1;
      }
      
      public function get §;!M§() : Boolean
      {
         return this.§?w§;
      }
      
      public function set §;!M§(param1:Boolean) : void
      {
         this.§?w§ = param1;
      }
      
      public function getSpecialAnimationProgress() : Number
      {
         return -1;
      }
      
      public function get §1!R§() : §=!4§
      {
         return this.§ !@§;
      }
      
      public final function §7_§(param1:int) : void
      {
         if(!this.§9!%§)
         {
            this.§9!%§ = true;
            this.§=H§ = param1;
            return;
         }
         throw new Error("Trying to assign LevelObject id twice !!!");
      }
      
      protected function initializeHealth(param1:Number) : void
      {
         if(param1 < 1)
         {
            param1 = 1;
         }
         this.§#!s§ = param1;
         this.§?!L§ = param1;
      }
      
      protected function §2!@§(param1:Number) : void
      {
         if(param1 < 0)
         {
            this.§?!L§ += param1;
         }
      }
      
      protected function §1^§(param1:Number, param2:Number) : void
      {
         var _loc3_:b2BodyDef = this.createBodyDefinition(param1,param2);
         §!=§ = §1!A§.CreateBody(_loc3_);
         §!=§.SetUserData(this);
         §?c§ = this.§=!c§();
         var _loc4_:b2FilterData = this.createFilterData();
         this.§=F§(_loc4_);
      }
      
      protected function §=!c§() : b2Fixture
      {
         var _loc1_:b2Fixture = §!=§.CreateFixture2(§>!A§.shape.getB2Shape(),§>!A§.getItemDensity());
         _loc1_.§1!J§(§>!A§.getItemFriction());
         _loc1_.§5P§(§>!A§.getItemRestitution());
         return _loc1_;
      }
      
      protected function createFilterData() : b2FilterData
      {
         return new b2FilterData();
      }
      
      protected function §[!h§() : §=!4§
      {
         return new §=!4§(this.§@@§,sprite);
      }
      
      public function §=F§(param1:b2FilterData) : void
      {
         if(§?c§)
         {
            §?c§.SetFilterData(param1);
         }
      }
      
      public function §"o§(param1:§`!M§) : void
      {
         §>!A§ = param1;
      }
      
      protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = new b2BodyDef();
         _loc3_.position.x = param1;
         _loc3_.position.y = param2;
         _loc3_.type = §>!A§.getItemBodyType();
         _loc3_.§<!+§ = true;
         _loc3_.active = true;
         _loc3_.§<" § = true;
         _loc3_.§?r§ = 1;
         _loc3_.§8!O§ = false;
         return _loc3_;
      }
      
      override public function dispose() : void
      {
         super.dispose();
         this.§ !@§.dispose();
         this.§ I§ = null;
         §>!A§ = null;
      }
      
      public function §9Z§(param1:Number) : void
      {
         § 2§().SetAngle(param1);
      }
      
      public function §<_§() : Number
      {
         return § 2§().GetAngle();
      }
      
      public function §"E§(param1:b2Vec2, param2:Boolean = false, param3:Boolean = false) : void
      {
         § 2§().SetLinearVelocity(param1);
         if(param2)
         {
            this.§+!k§();
         }
         if(param3)
         {
            this.§?!$§();
         }
      }
      
      public function §1f§(param1:b2Vec2) : void
      {
         this.§ I§ = param1;
      }
      
      private function §8!S§() : void
      {
         if(this.§ I§)
         {
            this.§"E§(this.§ I§,false);
            this.§ I§ = null;
         }
      }
      
      private function §3x§() : void
      {
         if(§!=§)
         {
            this.§^!]§.SetV(§!=§.GetLinearVelocity());
         }
      }
      
      public function §!k§() : b2Vec2
      {
         return this.§^!]§;
      }
      
      public function §+!k§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = § 2§().GetLinearVelocity();
         }
         if(param1.x == 0 && param1.y == 0)
         {
            § 2§().SetAngularVelocity(0);
         }
         else
         {
            § 2§().SetAngularVelocity(Math.atan2(param1.x,param1.y));
         }
      }
      
      public function §?!$§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = § 2§().GetLinearVelocity();
         }
         var _loc2_:Number = Math.atan2(-param1.y,param1.x);
         this.§9Z§(_loc2_);
      }
      
      public function §%-§(param1:Number) : void
      {
         § 2§().SetAngularVelocity(param1);
      }
      
      override public function render(param1:Number, param2:Number, param3:Number) : void
      {
         super.render(param1,param2,param3);
         this.§ !@§.update(param1);
         sprite.x = §'!a§;
         sprite.y = §[6§;
         sprite.rotation = §;f§;
      }
      
      override public function update(param1:Number, param2:§?N§) : void
      {
         this.§8!S§();
         super.update(param1,param2);
         if(this.§&@§ >= 0)
         {
            this.§&@§ += param1;
         }
         this.§3x§();
      }
      
      public function updateOutOfBounds(param1:§?N§) : void
      {
         this.§`!n§ = true;
      }
      
      public function updateBeforeRemoving(param1:§?N§) : void
      {
         if(!this.§`!n§)
         {
            this.addDestructionParticles(param1);
         }
      }
      
      override public function get removeOnNextUpdate() : Boolean
      {
         return this.health == 0;
      }
      
      public function §<7§() : Boolean
      {
         return this.§;G§ == §`!M§.§8,§;
      }
      
      public function §7g§() : Boolean
      {
         return this.§;G§ == §`!M§.§<-§;
      }
      
      public function §=!7§() : Boolean
      {
         if(this.itemName == "MISC_EXPLOSIVE_TNT" || this.itemName == "POWERUP_BOMB")
         {
            return true;
         }
         return false;
      }
      
      public function isDamageAwardingScore() : Boolean
      {
         return false;
      }
      
      public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
      
      public function §'!v§() : Number
      {
         return Number(Math.sqrt(§ 2§().GetLinearVelocity().x * § 2§().GetLinearVelocity().x + § 2§().GetLinearVelocity().y * § 2§().GetLinearVelocity().y));
      }
      
      protected function §&+§() : void
      {
         this.§&@§ = 0;
      }
      
      protected function §<!p§() : void
      {
      }
      
      protected function §?!x§() : void
      {
         this.§,y§(§>"§.§@4§);
      }
      
      protected function §3!&§() : void
      {
         this.§,y§(§>"§.§@!e§);
      }
      
      protected function §6"'§() : void
      {
         this.§,y§(§>"§.§`"-§);
      }
      
      public function applyDamage(param1:Number, param2:§?N§, param3:§;;§, param4:Boolean = true) : Number
      {
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         if(this.§&@§ < 0)
         {
            this.§&+§();
         }
         else
         {
            this.§<!p§();
         }
         if(this.§2!$§ < 0 || this.§2!$§ >= 1000000)
         {
            if(param1 > 30)
            {
               this.§?!x§();
            }
            else if(param1 > 12)
            {
               this.§3!&§();
            }
            else if(param1 > 3)
            {
               this.§6"'§();
            }
            return this.§?!L§;
         }
         if(param1 <= this.§2!$§)
         {
            if(param1 > 3)
            {
               this.§6"'§();
            }
            return this.§?!L§;
         }
         param1 -= this.§2!$§;
         if(param4 && this.isDamageAwardingScore())
         {
            _loc6_ = _loc5_ = Math.min(this.§?!L§,int(param1));
            if(param2)
            {
               _loc6_ *= param2.damageScoreMultiplier;
            }
            param2.addScore(_loc6_,§,!l§.§5"1§,this.§?!L§ > param1,§ 2§().GetPosition().x,§ 2§().GetPosition().y,§3?§.§+0§(this.itemName));
         }
         this.§?!L§ -= param1;
         if(this.§?!L§ < 1)
         {
            this.§?!L§ = 0;
            this.§?!x§();
         }
         else
         {
            this.§3!&§();
         }
         if(this.setDamageState(1 - this.health / this.healthMax,param2))
         {
            this.addDamageParticles(param2,param1);
         }
         return this.§?!L§;
      }
      
      protected function setDamageState(param1:Number, param2:§?N§) : Boolean
      {
         return this.§ !@§.setDamageState(param1,false);
      }
      
      public function causedDamageToObjects() : void
      {
      }
      
      public function §,y§(param1:int) : void
      {
         §;;§.§%!2§(param1,§>!A§.soundResource);
      }
      
      public function §9""§(param1:String) : Number
      {
         return §>!A§.getDamageMultiplier(param1) * this.§3!V§;
      }
      
      public function §+&§(param1:String) : Number
      {
         return §>!A§.getVelocityMultiplier(param1);
      }
      
      public function §use §() : String
      {
         return §>!A§.materialName;
      }
      
      public function §6!2§() : Number
      {
         return §>!A§.getItemStrength();
      }
      
      public function §3F§() : Boolean
      {
         return § 2§().IsAwake() && (this is §6",§ && this.§?!L§ == this.§#!s§ || Math.abs(§ 2§().GetLinearVelocity().x) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(§ 2§().GetLinearVelocity().y) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(§ 2§().GetAngularVelocity()) > b2Settings.b2_angularSleepTolerance * 30);
      }
      
      public function §>!m§() : Boolean
      {
         if(!§ 2§().IsAwake())
         {
            return true;
         }
         return !this.isMoving();
      }
      
      protected function isMoving() : Boolean
      {
         if(Math.abs(§ 2§().GetLinearVelocity().x) < b2Settings.b2_linearSleepTolerance * 10 && Math.abs(§ 2§().GetLinearVelocity().y) < b2Settings.b2_linearSleepTolerance * 10 && Math.abs(§ 2§().GetAngularVelocity()) < b2Settings.b2_angularSleepTolerance * 10)
         {
            return false;
         }
         return true;
      }
      
      public function §0v§(param1:Number = 3) : void
      {
         this.§3!V§ = param1;
      }
      
      public function §0!s§(param1:Boolean) : Number
      {
         var _loc2_:Number = 0;
         if(§>!A§.getItemBodyType() == §["%§.§2!W§)
         {
            _loc2_ = this.§ !@§.width * this.§ !@§.height * (§[d§.§]!U§ * §[d§.§]!U§);
         }
         else
         {
            _loc2_ = § 2§().GetMass() / §?c§.GetDensity();
            if(param1)
            {
               _loc2_ *= this.§!p§();
            }
         }
         return _loc2_;
      }
      
      public function §!p§() : Number
      {
         var _loc1_:Number = 1;
         return Number(_loc1_ - _loc1_ / 2 * Math.min(10,this.§ !@§.§1H§ - 1) / 10);
      }
      
      public function §[!S§(param1:Number) : void
      {
         var _loc2_:Number = § 2§().GetLinearVelocity().x;
         var _loc3_:Number = § 2§().GetLinearVelocity().y;
         var _loc4_:Number = Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_);
         var _loc5_:Number = 1 + param1 / _loc4_;
         _loc2_ *= _loc5_;
         _loc3_ *= _loc5_;
         § 2§().SetLinearVelocity(new b2Vec2(_loc2_,_loc3_));
      }
      
      protected function addTrail(param1:§?N§) : Boolean
      {
         return this.isLeavingTrail;
      }
      
      public function get isLeavingTrail() : Boolean
      {
         return false;
      }
      
      protected function addDestructionParticles(param1:§?N§) : void
      {
      }
      
      public function addDamageParticles(param1:§?N§, param2:int) : void
      {
      }
      
      public function §^!J§(param1:Number, param2:Point, param3:Number) : void
      {
         var _loc4_:b2Vec2 = § 2§().GetPosition();
         _loc4_.x += param2.x * param1 * param3;
         _loc4_.y += param2.y * param1 * param3;
         § 2§().SetPosition(_loc4_);
      }
      
      public function §<F§(param1:Number) : Number
      {
         return 1;
      }
      
      public function applyGravity() : Boolean
      {
         return § 2§().IsAwake();
      }
   }
}
