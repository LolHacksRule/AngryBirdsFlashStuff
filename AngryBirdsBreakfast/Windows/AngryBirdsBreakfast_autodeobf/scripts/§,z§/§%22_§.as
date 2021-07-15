package §,z§
{
   import § ! §.§5!v§;
   import §&v§.§"a§;
   import §&v§.§#c§;
   import §&v§.§,4§;
   import §&v§.§9B§;
   import §'F§.b2Settings;
   import §1T§.§'!c§;
   import §3!`§.b2BodyDef;
   import §3!`§.b2FilterData;
   import §3!`§.b2Fixture;
   import §3!`§.b2World;
   import §6![§.Sprite;
   import §6Z§.b2Vec2;
   import §>!Z§.§2_§;
   import §?s§.§8K§;
   import §@L§.§!]§;
   import §@L§.§=b§;
   import §@L§.§?!'§;
   import flash.geom.Point;
   
   public class §"_§ extends §?!;§
   {
      
      public static const §=!4§:String = "normal";
      
      public static const §8"!§:uint = 1 << 1;
      
      public static const §,O§:uint = 1 << 2;
      
      public static const §=!8§:uint = 1 << 3;
      
      public static const § Q§:uint = 1 << 4;
       
      
      private var §!G§:int;
      
      private var §5!J§:int;
      
      private var §!"#§:b2Vec2;
      
      private var §]h§:b2Vec2;
      
      private var §+r§:Number;
      
      private var §;F§:Number;
      
      private var § 8§:Number;
      
      private var §`+§:Number = 1;
      
      private var §#!$§:Boolean = false;
      
      protected var §`!f§:§%!@§;
      
      private var §"!b§:§5!v§;
      
      private var §6!r§:Number = 1.0;
      
      private var §4s§:Boolean = true;
      
      private var §6N§:Boolean = false;
      
      private var §>6§:int = 0;
      
      protected var §="§:Number = -1.0;
      
      private var §#""§:Boolean = false;
      
      private var §9Y§:Boolean = false;
      
      protected var §`,§:String = "";
      
      protected var §1!3§:int = 1;
      
      public function §"_§(param1:Sprite, param2:§5!v§, param3:b2World, param4:§9B§, param5:§8K§, param6:Number)
      {
         this.§]h§ = new b2Vec2();
         super(param1,param3,param4,param5);
         this.§"!b§ = param2;
         this.§6!r§ = param6;
         this.§5!J§ = §%-§.itemType;
         param1.scaleX = param6;
         param1.scaleY = param6;
         this.§`!f§ = this.§8!D§();
         this.§`!f§.§]!D§(§%-§.shape is §"a§);
         this.§&'§(§-!k§.x,§-!k§.y);
         §5y§ = param5.§5y§;
         this.§ 8§ = §%-§.getItemDefence();
         if(§%-§.healthMax > 0)
         {
            this.initializeHealth(§%-§.healthMax);
         }
         else
         {
            this.initializeHealth(Math.round(this.§[z§(true) * §%-§.getItemStrength()));
         }
         if(§%-§.itemType == §9B§.§&!R§)
         {
            param1.visible = false;
         }
         else
         {
            this.setDamageState(0,null);
         }
         if(param5.angle != 0)
         {
            this.§,3§(param5.angle * (Math.PI / 180));
         }
         this.update(0,null);
         this.render(0,1,0);
         this.§`!f§.§'@§(§%-§.shape);
      }
      
      public static function §>,§(param1:int, param2:§,4§, param3:String = "") : void
      {
         if(param2 == null)
         {
            return;
         }
         var _loc4_:String;
         if((_loc4_ = param2.§^!r§(param1)).length > 0)
         {
            if(param3.length <= 0)
            {
               param3 = param2.§,d§;
            }
            §'!c§.§"V§(_loc4_,param3);
         }
      }
      
      public function get health() : Number
      {
         return this.§+r§;
      }
      
      public function set health(param1:Number) : void
      {
         this.§+r§ = param1;
      }
      
      public function get healthMax() : Number
      {
         return this.§;F§;
      }
      
      public function get itemName() : String
      {
         return §%-§.itemName;
      }
      
      public function get §["+§() : Number
      {
         return this.§`+§;
      }
      
      public function get §[!2§() : §5!v§
      {
         return this.§"!b§;
      }
      
      public function get x() : Number
      {
         return §%!3§;
      }
      
      public function get y() : Number
      {
         return §?!e§;
      }
      
      public function get scale() : Number
      {
         return this.§6!r§;
      }
      
      public function get id() : int
      {
         return this.§>6§;
      }
      
      public function get §<!l§() : Boolean
      {
         return this.§ 8§ >= 0;
      }
      
      public function get defence() : Number
      {
         return this.§ 8§;
      }
      
      public function get §!?§() : Boolean
      {
         return this.§4s§;
      }
      
      public function set §!?§(param1:Boolean) : void
      {
         this.§4s§ = param1;
      }
      
      public function get §?T§() : Number
      {
         return this.§="§;
      }
      
      public function get destroysCollidingObjects() : Boolean
      {
         return false;
      }
      
      public function get §%!,§() : Boolean
      {
         return this.§#""§;
      }
      
      public function set §%!,§(param1:Boolean) : void
      {
         this.§#""§ = param1;
      }
      
      public function get §%!Q§() : Boolean
      {
         return this.§#!$§;
      }
      
      public function set §%!Q§(param1:Boolean) : void
      {
         this.§#!$§ = param1;
      }
      
      public function getSpecialAnimationProgress() : Number
      {
         return -1;
      }
      
      public function get §9!%§() : §%!@§
      {
         return this.§`!f§;
      }
      
      public final function §3!'§(param1:int) : void
      {
         if(!this.§6N§)
         {
            this.§6N§ = true;
            this.§>6§ = param1;
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
         this.§;F§ = param1;
         this.§+r§ = param1;
      }
      
      protected function §>!;§(param1:Number) : void
      {
         if(param1 < 0)
         {
            this.§+r§ += param1;
         }
      }
      
      protected function §&'§(param1:Number, param2:Number) : void
      {
         var _loc3_:b2BodyDef = this.createBodyDefinition(param1,param2);
         §<H§ = §-#§.CreateBody(_loc3_);
         §<H§.SetUserData(this);
         §]!_§ = this.§1-§();
         var _loc4_:b2FilterData = this.createFilterData();
         if(!§%-§.isColliding)
         {
            _loc4_.§`"%§ = 0;
         }
         this.§>!2§(_loc4_);
      }
      
      protected function §1-§() : b2Fixture
      {
         var _loc1_:b2Fixture = §<H§.CreateFixture2(§%-§.shape.getB2Shape(),§%-§.getItemDensity());
         _loc1_.§^X§(§%-§.getItemFriction());
         _loc1_.§'N§(§%-§.getItemRestitution());
         return _loc1_;
      }
      
      protected function createFilterData() : b2FilterData
      {
         return new b2FilterData();
      }
      
      protected function §8!D§() : §%!@§
      {
         return new §%!@§(this.§[!2§,sprite);
      }
      
      public function §>!2§(param1:b2FilterData) : void
      {
         if(§]!_§)
         {
            §]!_§.SetFilterData(param1);
         }
      }
      
      public function §?",§(param1:§9B§) : void
      {
         §%-§ = param1;
      }
      
      protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = new b2BodyDef();
         _loc3_.position.x = param1;
         _loc3_.position.y = param2;
         _loc3_.type = §%-§.getItemBodyType();
         _loc3_.§?!n§ = true;
         _loc3_.active = true;
         _loc3_.§5!5§ = true;
         _loc3_.§&!&§ = 1;
         _loc3_.§6!D§ = false;
         return _loc3_;
      }
      
      override public function dispose() : void
      {
         super.dispose();
         this.§`!f§.dispose();
         this.§!"#§ = null;
         §%-§ = null;
      }
      
      public function §,3§(param1:Number) : void
      {
         §^`§().SetAngle(param1);
      }
      
      public function §[!G§() : Number
      {
         return §^`§().GetAngle();
      }
      
      public function §]!9§(param1:b2Vec2, param2:Boolean = false, param3:Boolean = false) : void
      {
         §^`§().SetLinearVelocity(param1);
         if(param2)
         {
            this.§6!d§();
         }
         if(param3)
         {
            this.§2!G§();
         }
      }
      
      public function §-"-§(param1:b2Vec2) : void
      {
         this.§!"#§ = param1;
      }
      
      private function §4D§() : void
      {
         if(this.§!"#§)
         {
            this.§]!9§(this.§!"#§,false);
            this.§!"#§ = null;
         }
      }
      
      private function §6!$§() : void
      {
         if(§<H§)
         {
            this.§]h§.SetV(§<H§.GetLinearVelocity());
         }
      }
      
      public function §3!Y§() : b2Vec2
      {
         return this.§]h§;
      }
      
      public function §6!d§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = §^`§().GetLinearVelocity();
         }
         if(param1.x == 0 && param1.y == 0)
         {
            §^`§().SetAngularVelocity(0);
         }
         else
         {
            §^`§().SetAngularVelocity(Math.atan2(param1.x,param1.y));
         }
      }
      
      public function §2!G§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = §^`§().GetLinearVelocity();
         }
         var _loc2_:Number = Math.atan2(-param1.y,param1.x);
         this.§,3§(_loc2_);
      }
      
      public function §70§(param1:Number) : void
      {
         §^`§().SetAngularVelocity(param1);
      }
      
      override public function render(param1:Number, param2:Number, param3:Number) : void
      {
         super.render(param1,param2,param3);
         this.§`!f§.update(param1);
         sprite.x = §%!3§;
         sprite.y = §?!e§;
         sprite.rotation = §!&§;
      }
      
      override public function update(param1:Number, param2:§3!#§) : void
      {
         this.§4D§();
         super.update(param1,param2);
         if(this.§="§ >= 0)
         {
            this.§="§ += param1;
         }
         this.§6!$§();
      }
      
      public function updateOutOfBounds(param1:§3!#§) : void
      {
         this.§9Y§ = true;
      }
      
      public function updateBeforeRemoving(param1:§3!#§) : void
      {
         if(!this.§9Y§)
         {
            this.addDestructionParticles(param1);
         }
      }
      
      override public function get removeOnNextUpdate() : Boolean
      {
         return this.health == 0;
      }
      
      public function §0x§() : Boolean
      {
         return this.§5!J§ == §9B§.§,7§;
      }
      
      public function §!"'§() : Boolean
      {
         return this.§5!J§ == §9B§.§&!R§;
      }
      
      public function §>""§() : Boolean
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
      
      public function §;<§() : Number
      {
         return Number(Math.sqrt(§^`§().GetLinearVelocity().x * §^`§().GetLinearVelocity().x + §^`§().GetLinearVelocity().y * §^`§().GetLinearVelocity().y));
      }
      
      protected function handleInitialCollision() : void
      {
         this.§="§ = 0;
      }
      
      protected function §"!Y§() : void
      {
      }
      
      protected function § !p§() : void
      {
         this.§]Y§(§,4§.§ !x§);
      }
      
      protected function §]?§() : void
      {
         this.§]Y§(§,4§.§-!A§);
      }
      
      protected function §<#§() : void
      {
         this.§]Y§(§,4§.§2!W§);
      }
      
      public function applyDamage(param1:Number, param2:§3!#§, param3:§"_§, param4:Boolean = true) : Number
      {
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         if(this.§="§ < 0)
         {
            this.handleInitialCollision();
         }
         else
         {
            this.§"!Y§();
         }
         if(this.§ 8§ < 0 || this.§ 8§ >= 1000000)
         {
            if(param1 > 30)
            {
               this.§ !p§();
            }
            else if(param1 > 12)
            {
               this.§]?§();
            }
            else if(param1 > 3)
            {
               this.§<#§();
            }
            return this.§+r§;
         }
         if(param1 <= this.§ 8§)
         {
            if(param1 > 3)
            {
               this.§<#§();
            }
            return this.§+r§;
         }
         param1 -= this.§ 8§;
         if(param4 && this.isDamageAwardingScore())
         {
            _loc6_ = _loc5_ = Math.min(this.§+r§,int(param1));
            if(param2)
            {
               _loc6_ *= param2.damageScoreMultiplier;
            }
            param2.addScore(_loc6_,§!]§.§%!&§,this.§+r§ > param1,§^`§().GetPosition().x,§^`§().GetPosition().y,§2_§.§1!B§(this.itemName));
         }
         this.§+r§ -= param1;
         if(this.§+r§ < 1)
         {
            this.§+r§ = 0;
            this.§ !p§();
         }
         else
         {
            this.§]?§();
         }
         if(this.setDamageState(1 - this.health / this.healthMax,param2))
         {
            this.addDamageParticles(param2,param1);
         }
         return this.§+r§;
      }
      
      protected function setDamageState(param1:Number, param2:§3!#§) : Boolean
      {
         return this.§`!f§.setDamageState(param1,false);
      }
      
      public function causedDamageToObjects() : void
      {
      }
      
      public function §]Y§(param1:int) : void
      {
         §"_§.§>,§(param1,§%-§.soundResource);
      }
      
      public function § Y§(param1:String) : Number
      {
         return §%-§.getDamageMultiplier(param1) * this.§`+§;
      }
      
      public function §+l§(param1:String) : Number
      {
         return §%-§.getVelocityMultiplier(param1);
      }
      
      public function §[,§() : String
      {
         return §%-§.materialName;
      }
      
      public function §@i§() : Number
      {
         return §%-§.getItemStrength();
      }
      
      public function §@"+§() : Boolean
      {
         return §^`§().IsAwake() && (this is §?!z§ && this.§+r§ == this.§;F§ || Math.abs(§^`§().GetLinearVelocity().x) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(§^`§().GetLinearVelocity().y) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(§^`§().GetAngularVelocity()) > b2Settings.b2_angularSleepTolerance * 30);
      }
      
      public function §^" §() : Boolean
      {
         if(!§^`§().IsAwake())
         {
            return true;
         }
         return !this.isMoving();
      }
      
      protected function isMoving() : Boolean
      {
         if(Math.abs(§^`§().GetLinearVelocity().x) < b2Settings.b2_linearSleepTolerance * 10 && Math.abs(§^`§().GetLinearVelocity().y) < b2Settings.b2_linearSleepTolerance * 10 && Math.abs(§^`§().GetAngularVelocity()) < b2Settings.b2_angularSleepTolerance * 10)
         {
            return false;
         }
         return true;
      }
      
      public function §@!Y§(param1:Number = 3) : void
      {
         this.§`+§ = param1;
      }
      
      public function §[z§(param1:Boolean) : Number
      {
         var _loc2_:Number = 0;
         if(§%-§.getItemBodyType() == §#c§.§9&§)
         {
            _loc2_ = this.§`!f§.width * this.§`!f§.height * (§?!'§.§'!i§ * §?!'§.§'!i§);
         }
         else
         {
            _loc2_ = §^`§().GetMass() / §]!_§.GetDensity();
            if(param1)
            {
               _loc2_ *= this.§#!_§();
            }
         }
         return _loc2_;
      }
      
      public function §#!_§() : Number
      {
         var _loc1_:Number = 1;
         return Number(_loc1_ - _loc1_ / 2 * Math.min(10,this.§`!f§.§^Q§ - 1) / 10);
      }
      
      public function §+x§(param1:Number) : void
      {
         var _loc2_:Number = §^`§().GetLinearVelocity().x;
         var _loc3_:Number = §^`§().GetLinearVelocity().y;
         var _loc4_:Number = Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_);
         var _loc5_:Number = 1 + param1 / _loc4_;
         _loc2_ *= _loc5_;
         _loc3_ *= _loc5_;
         §^`§().SetLinearVelocity(new b2Vec2(_loc2_,_loc3_));
      }
      
      protected function addTrail(param1:§3!#§) : Boolean
      {
         return this.isLeavingTrail;
      }
      
      public function get isLeavingTrail() : Boolean
      {
         return false;
      }
      
      public function set isLeavingTrail(param1:Boolean) : void
      {
      }
      
      protected function addDestructionParticles(param1:§3!#§) : void
      {
      }
      
      public function addDamageParticles(param1:§3!#§, param2:int) : void
      {
      }
      
      override protected function updateGravityFilter() : void
      {
         switch(§?!D§)
         {
            case GravityFilterCategory.FORCE_OBJECT:
               §<H§.SetLinearDamping(§=b§.§""-§);
               §<H§.SetAngularDamping(§=b§.§"!u§);
               §<H§.SetGravityScale(0);
               break;
            case GravityFilterCategory.YODA_FORCE_OBJECT:
               §<H§.SetLinearDamping(§=b§.§3!Q§);
               §<H§.SetAngularDamping(§=b§.§[!P§);
               §<H§.SetGravityScale(0);
               break;
            case GravityFilterCategory.LEIA_FORCE_OBJECT:
               break;
            default:
               super.updateGravityFilter();
         }
      }
      
      public function §^s§(param1:Number, param2:Point, param3:Number) : void
      {
         var _loc4_:b2Vec2 = §^`§().GetPosition();
         _loc4_.x += param2.x * param1 * param3;
         _loc4_.y += param2.y * param1 * param3;
         §^`§().SetPosition(_loc4_);
      }
      
      public function §7Q§(param1:String, param2:String, param3:§3!#§) : void
      {
         switch(param1)
         {
            case "removeGravityFilterCategory":
               §5y§ = -1;
         }
      }
   }
}
