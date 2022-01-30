package §"!-§
{
   import § !%§.b2Settings;
   import §!!<§.§+!9§;
   import §!!<§.§29§;
   import §!!<§.§>"4§;
   import §!!<§.§[!L§;
   import §,!k§.b2Vec2;
   import §0!Y§.Sprite;
   import §6!?§.§7!t§;
   import §82§.§%v§;
   import §9![§.§1!i§;
   import §;'§.b2BodyDef;
   import §;'§.b2FilterData;
   import §;'§.b2Fixture;
   import §;'§.b2World;
   import §@"1§.§"1§;
   import §@"1§.§"h§;
   import flash.geom.Point;
   
   public class §[-§ extends §3"0§
   {
      
      public static const §!!6§:String = "normal";
      
      public static const §,Z§:uint = 1 << 1;
      
      public static const §"!t§:uint = 1 << 2;
      
      public static const §1"2§:uint = 1 << 3;
      
      public static const §@H§:uint = 1 << 4;
       
      
      private var §4"§:int;
      
      private var §`?§:int;
      
      private var §28§:b2Vec2;
      
      private var §2!9§:b2Vec2;
      
      private var §'j§:Number;
      
      private var §"!7§:Number;
      
      private var §,!G§:Number;
      
      private var §<!C§:Number = 1;
      
      private var §8D§:Boolean = false;
      
      protected var §[c§:§&2§;
      
      private var §0"§:§7!t§;
      
      private var §>s§:Number = 1.0;
      
      private var §^,§:Boolean = true;
      
      private var §8!J§:Boolean = false;
      
      private var §]!U§:int = 0;
      
      protected var §4"#§:Number = -1.0;
      
      private var §;w§:Boolean = false;
      
      private var §4E§:Boolean = false;
      
      public function §[-§(param1:Sprite, param2:§7!t§, param3:b2World, param4:§>"4§, param5:Number, param6:Number, param7:Number, param8:Number)
      {
         this.§2!9§ = new b2Vec2();
         super(param1,param3,param4,param5,param6,param7);
         this.§0"§ = param2;
         this.§>s§ = param8;
         this.§`?§ = §1!0§.itemType;
         param1.scaleX = param8;
         param1.scaleY = param8;
         this.§[c§ = this.§>!4§();
         this.§[c§.§>a§(§1!0§.shape is §29§);
         this.§#"3§(param5,param6);
         this.§,!G§ = §1!0§.getItemDefence();
         if(§1!0§.healthMax > 0)
         {
            this.initializeHealth(§1!0§.healthMax);
         }
         else
         {
            this.initializeHealth(Math.round(this.§'J§(true) * §1!0§.getItemStrength()));
         }
         if(§1!0§.itemType == §>"4§.§'!B§)
         {
            param1.visible = false;
         }
         else
         {
            this.setDamageState(0,null);
         }
         if(param7 != 0)
         {
            this.§'!!§(param7 * (Math.PI / 180));
         }
         this.update(0,null);
         this.render(0,1,0);
         this.§[c§.§8!s§(§1!0§.shape);
      }
      
      public static function §%!I§(param1:int, param2:§[!L§, param3:String = "") : void
      {
         if(param2 == null)
         {
            return;
         }
         var _loc4_:String;
         if((_loc4_ = param2.§%!V§(param1)).length > 0)
         {
            if(param3.length <= 0)
            {
               param3 = param2.§[I§;
            }
            §1!i§.§1!t§(_loc4_,param3);
         }
      }
      
      public function get health() : Number
      {
         return this.§'j§;
      }
      
      public function set health(param1:Number) : void
      {
         this.§'j§ = param1;
      }
      
      public function get healthMax() : Number
      {
         return this.§"!7§;
      }
      
      public function get itemName() : String
      {
         return §1!0§.itemName;
      }
      
      public function get §?!A§() : Number
      {
         return this.§<!C§;
      }
      
      public function get §,",§() : §7!t§
      {
         return this.§0"§;
      }
      
      public function get x() : Number
      {
         return §%!H§;
      }
      
      public function get y() : Number
      {
         return §^<§;
      }
      
      public function get scale() : Number
      {
         return this.§>s§;
      }
      
      public function get id() : int
      {
         return this.§]!U§;
      }
      
      public function get §@!e§() : Boolean
      {
         return this.§,!G§ >= 0;
      }
      
      public function get defence() : Number
      {
         return this.§,!G§;
      }
      
      public function get §39§() : Boolean
      {
         return this.§^,§;
      }
      
      public function set §39§(param1:Boolean) : void
      {
         this.§^,§ = param1;
      }
      
      public function get §`0§() : Number
      {
         return this.§4"#§;
      }
      
      public function get destroysCollidingObjects() : Boolean
      {
         return false;
      }
      
      public function get §5!@§() : Boolean
      {
         return this.§;w§;
      }
      
      public function set §5!@§(param1:Boolean) : void
      {
         this.§;w§ = param1;
      }
      
      public function get §-C§() : Boolean
      {
         return this.§8D§;
      }
      
      public function set §-C§(param1:Boolean) : void
      {
         this.§8D§ = param1;
      }
      
      public function getSpecialAnimationProgress() : Number
      {
         return -1;
      }
      
      public function get §<l§() : §&2§
      {
         return this.§[c§;
      }
      
      public final function §5!U§(param1:int) : void
      {
         if(!this.§8!J§)
         {
            this.§8!J§ = true;
            this.§]!U§ = param1;
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
         this.§"!7§ = param1;
         this.§'j§ = param1;
      }
      
      protected function §#?§(param1:Number) : void
      {
         if(param1 < 0)
         {
            this.§'j§ += param1;
         }
      }
      
      protected function §#"3§(param1:Number, param2:Number) : void
      {
         var _loc3_:b2BodyDef = this.createBodyDefinition(param1,param2);
         §`!-§ = §'!#§.CreateBody(_loc3_);
         §`!-§.SetUserData(this);
         §[n§ = this.§"",§();
         var _loc4_:b2FilterData = this.createFilterData();
         this.§3""§(_loc4_);
      }
      
      protected function §"",§() : b2Fixture
      {
         var _loc1_:b2Fixture = §`!-§.CreateFixture2(§1!0§.shape.getB2Shape(),§1!0§.getItemDensity());
         _loc1_.§ E§(§1!0§.getItemFriction());
         _loc1_.§,S§(§1!0§.getItemRestitution());
         return _loc1_;
      }
      
      protected function createFilterData() : b2FilterData
      {
         return new b2FilterData();
      }
      
      protected function §>!4§() : §&2§
      {
         return new §&2§(this.§,",§,sprite);
      }
      
      public function §3""§(param1:b2FilterData) : void
      {
         if(§[n§)
         {
            §[n§.SetFilterData(param1);
         }
      }
      
      public function §6!-§(param1:§>"4§) : void
      {
         §1!0§ = param1;
      }
      
      protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = new b2BodyDef();
         _loc3_.position.x = param1;
         _loc3_.position.y = param2;
         _loc3_.type = §1!0§.getItemBodyType();
         _loc3_.§,!X§ = true;
         _loc3_.active = true;
         _loc3_.§1w§ = true;
         _loc3_.§5!R§ = 1;
         _loc3_.§[K§ = false;
         return _loc3_;
      }
      
      override public function dispose() : void
      {
         super.dispose();
         this.§[c§.dispose();
         this.§28§ = null;
         §1!0§ = null;
      }
      
      public function §'!!§(param1:Number) : void
      {
         §9l§().SetAngle(param1);
      }
      
      public function §?!>§() : Number
      {
         return §9l§().GetAngle();
      }
      
      public function §'M§(param1:b2Vec2, param2:Boolean = false, param3:Boolean = false) : void
      {
         §9l§().SetLinearVelocity(param1);
         if(param2)
         {
            this.§6k§();
         }
         if(param3)
         {
            this.§<!i§();
         }
      }
      
      public function §0m§(param1:b2Vec2) : void
      {
         this.§28§ = param1;
      }
      
      private function §+!c§() : void
      {
         if(this.§28§)
         {
            this.§'M§(this.§28§,false);
            this.§28§ = null;
         }
      }
      
      private function §?5§() : void
      {
         if(§`!-§)
         {
            this.§2!9§.SetV(§`!-§.GetLinearVelocity());
         }
      }
      
      public function §'"3§() : b2Vec2
      {
         return this.§2!9§;
      }
      
      public function §6k§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = §9l§().GetLinearVelocity();
         }
         if(param1.x == 0 && param1.y == 0)
         {
            §9l§().SetAngularVelocity(0);
         }
         else
         {
            §9l§().SetAngularVelocity(Math.atan2(param1.x,param1.y));
         }
      }
      
      public function §<!i§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = §9l§().GetLinearVelocity();
         }
         var _loc2_:Number = Math.atan2(-param1.y,param1.x);
         this.§'!!§(_loc2_);
      }
      
      public function §1!@§(param1:Number) : void
      {
         §9l§().SetAngularVelocity(param1);
      }
      
      override public function render(param1:Number, param2:Number, param3:Number) : void
      {
         super.render(param1,param2,param3);
         this.§[c§.update(param1);
         sprite.x = §%!H§;
         sprite.y = §^<§;
         sprite.rotation = §#!C§;
      }
      
      override public function update(param1:Number, param2:§!l§) : void
      {
         this.§+!c§();
         super.update(param1,param2);
         if(this.§4"#§ >= 0)
         {
            this.§4"#§ += param1;
         }
         this.§?5§();
      }
      
      public function updateOutOfBounds(param1:§!l§) : void
      {
         this.§4E§ = true;
      }
      
      public function updateBeforeRemoving(param1:§!l§) : void
      {
         if(!this.§4E§)
         {
            this.addDestructionParticles(param1);
         }
      }
      
      override public function get removeOnNextUpdate() : Boolean
      {
         return this.health == 0;
      }
      
      public function §&q§() : Boolean
      {
         return this.§`?§ == §>"4§.§'!v§;
      }
      
      public function §<C§() : Boolean
      {
         return this.§`?§ == §>"4§.§'!B§;
      }
      
      public function §`!9§() : Boolean
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
      
      public function §2b§() : Number
      {
         return Number(Math.sqrt(§9l§().GetLinearVelocity().x * §9l§().GetLinearVelocity().x + §9l§().GetLinearVelocity().y * §9l§().GetLinearVelocity().y));
      }
      
      protected function §'!§() : void
      {
         this.§4"#§ = 0;
      }
      
      protected function §'q§() : void
      {
      }
      
      protected function §9!"§() : void
      {
         this.§0z§(§[!L§.§<!S§);
      }
      
      protected function §-!m§() : void
      {
         this.§0z§(§[!L§.§#!R§);
      }
      
      protected function §]!g§() : void
      {
         this.§0z§(§[!L§.§9!Y§);
      }
      
      public function applyDamage(param1:Number, param2:§!l§, param3:§[-§, param4:Boolean = true) : Number
      {
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         if(this.§4"#§ < 0)
         {
            this.§'!§();
         }
         else
         {
            this.§'q§();
         }
         if(this.§,!G§ < 0 || this.§,!G§ >= 1000000)
         {
            if(param1 > 30)
            {
               this.§9!"§();
            }
            else if(param1 > 12)
            {
               this.§-!m§();
            }
            else if(param1 > 3)
            {
               this.§]!g§();
            }
            return this.§'j§;
         }
         if(param1 <= this.§,!G§)
         {
            if(param1 > 3)
            {
               this.§]!g§();
            }
            return this.§'j§;
         }
         param1 -= this.§,!G§;
         if(param4 && this.isDamageAwardingScore())
         {
            _loc6_ = _loc5_ = Math.min(this.§'j§,int(param1));
            if(param2)
            {
               _loc6_ *= param2.damageScoreMultiplier;
            }
            param2.addScore(_loc6_,§"1§.§=c§,this.§'j§ > param1,§9l§().GetPosition().x,§9l§().GetPosition().y,§%v§.§?!O§(this.itemName));
         }
         this.§'j§ -= param1;
         if(this.§'j§ < 1)
         {
            this.§'j§ = 0;
            this.§9!"§();
         }
         else
         {
            this.§-!m§();
         }
         if(this.setDamageState(1 - this.health / this.healthMax,param2))
         {
            this.addDamageParticles(param2,param1);
         }
         return this.§'j§;
      }
      
      protected function setDamageState(param1:Number, param2:§!l§) : Boolean
      {
         return this.§[c§.setDamageState(param1);
      }
      
      public function causedDamageToObjects() : void
      {
      }
      
      public function §0z§(param1:int) : void
      {
         §[-§.§%!I§(param1,§1!0§.soundResource);
      }
      
      public function §'!'§(param1:String) : Number
      {
         return §1!0§.getDamageMultiplier(param1) * this.§<!C§;
      }
      
      public function §-p§(param1:String) : Number
      {
         return §1!0§.getVelocityMultiplier(param1);
      }
      
      public function §%P§() : String
      {
         return §1!0§.materialName;
      }
      
      public function §2R§() : Number
      {
         return §1!0§.getItemStrength();
      }
      
      public function §;§() : Boolean
      {
         return §9l§().IsAwake() && (this is § !§ && this.§'j§ == this.§"!7§ || Math.abs(§9l§().GetLinearVelocity().x) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(§9l§().GetLinearVelocity().y) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(§9l§().GetAngularVelocity()) > b2Settings.b2_angularSleepTolerance * 30);
      }
      
      public function §]!<§() : Boolean
      {
         if(!§9l§().IsAwake())
         {
            return true;
         }
         return !this.isMoving();
      }
      
      protected function isMoving() : Boolean
      {
         if(Math.abs(§9l§().GetLinearVelocity().x) < b2Settings.b2_linearSleepTolerance * 10 && Math.abs(§9l§().GetLinearVelocity().y) < b2Settings.b2_linearSleepTolerance * 10 && Math.abs(§9l§().GetAngularVelocity()) < b2Settings.b2_angularSleepTolerance * 10)
         {
            return false;
         }
         return true;
      }
      
      public function §;N§(param1:Number = 3) : void
      {
         this.§<!C§ = param1;
      }
      
      public function §'J§(param1:Boolean) : Number
      {
         var _loc2_:Number = 0;
         if(§1!0§.getItemBodyType() == §+!9§.§,8§)
         {
            _loc2_ = this.§[c§.width * this.§[c§.height * (§"h§.§4<§ * §"h§.§4<§);
         }
         else
         {
            _loc2_ = §9l§().GetMass() / §[n§.GetDensity();
            if(param1)
            {
               _loc2_ *= this.§2!§();
            }
         }
         return _loc2_;
      }
      
      public function §2!§() : Number
      {
         var _loc1_:Number = 1;
         return Number(_loc1_ - _loc1_ / 2 * Math.min(10,this.§[c§.§-!_§ - 1) / 10);
      }
      
      public function §0!o§(param1:Number) : void
      {
         var _loc2_:Number = §9l§().GetLinearVelocity().x;
         var _loc3_:Number = §9l§().GetLinearVelocity().y;
         var _loc4_:Number = Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_);
         var _loc5_:Number = 1 + param1 / _loc4_;
         _loc2_ *= _loc5_;
         _loc3_ *= _loc5_;
         §9l§().SetLinearVelocity(new b2Vec2(_loc2_,_loc3_));
      }
      
      protected function addTrail(param1:§!l§) : Boolean
      {
         return this.isLeavingTrail;
      }
      
      public function get isLeavingTrail() : Boolean
      {
         return false;
      }
      
      protected function addDestructionParticles(param1:§!l§) : void
      {
      }
      
      public function addDamageParticles(param1:§!l§, param2:int) : void
      {
      }
      
      public function §;F§(param1:Number, param2:Point, param3:Number) : void
      {
         var _loc4_:b2Vec2 = §9l§().GetPosition();
         _loc4_.x += param2.x * param1 * param3;
         _loc4_.y += param2.y * param1 * param3;
         §9l§().SetPosition(_loc4_);
      }
      
      public function §&!u§(param1:Number) : Number
      {
         return 1;
      }
      
      public function applyGravity() : Boolean
      {
         return §9l§().IsAwake();
      }
   }
}
