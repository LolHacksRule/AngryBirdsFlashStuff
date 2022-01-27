package §!r§
{
   import §!!k§.§1!^§;
   import §"§.§96§;
   import §#g§.§?B§;
   import §#g§.§["%§;
   import §#g§.§`"[§;
   import §7"A§.b2Vec2;
   import §=G§.§9v§;
   import §>"_§.b2World;
   import §^9§.§?"E§;
   import §^9§.§^#'§;
   import §`"]§.§;j§;
   import §use§.Sprite;
   
   public class §&$§ extends §4?§
   {
      
      public static const §5!L§:String = "ME_BAIT";
      
      protected static const §@!#§:Number = 1500;
       
      
      private var §=O§:Boolean;
      
      protected var §7!d§:§`"[§;
      
      protected var §'"w§:§>y§;
      
      protected var § !%§:Number;
      
      protected var §]j§:Number;
      
      private var §"!;§:§;j§;
      
      public function §&$§(param1:Sprite, param2:§1!^§, param3:b2World, param4:§["%§, param5:§9v§, param6:Number = 1.0, param7:Boolean = true)
      {
         this.§7!d§ = param4 as §`"[§;
         this.§'"w§ = new §>y§(this.§7!d§);
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      override public function get isLeavingTrail() : Boolean
      {
         if(health < healthMax || §3"s§() == null)
         {
            return false;
         }
         return true;
      }
      
      override public function get isNormal() : Boolean
      {
         return timeSinceCollisionMilliSeconds < 0 && super.isNormal;
      }
      
      override public function get canActivateSpecialPower() : Boolean
      {
         return true;
      }
      
      override protected function handleInitialCollision() : void
      {
         super.handleInitialCollision();
         §]!g§.setAnimation(§4"O§.§>W§,false);
      }
      
      override protected function addTrail(param1:§'=§) : Boolean
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         if(!this.isLeavingTrail)
         {
            return false;
         }
         if(param1)
         {
            if(!this.§=O§)
            {
               _loc2_ = §3"s§().GetPosition().x;
               _loc3_ = §3"s§().GetPosition().y;
               param1.§>#1§(this.§7!d§.normalTrailSprite,§^#'§.§set §,§?"E§.§["4§,_loc2_,_loc3_,-1,"",§?"E§.§0!P§);
            }
            this.§=O§ = !this.§=O§;
         }
         return true;
      }
      
      override protected function updateFlying() : void
      {
         var _loc1_:Number = 0;
         var _loc2_:b2Vec2 = §3"s§().GetLinearVelocity();
         if(_loc2_.x != 0 || _loc2_.y != 0)
         {
            _loc1_ = Math.atan2(_loc2_.y,_loc2_.x) - Math.PI / 2;
         }
         § "H§(_loc1_);
      }
      
      override public function getGravityMultiplier(param1:Number) : Number
      {
         var _loc2_:Number = NaN;
         if(timeSinceCollisionMilliSeconds >= 0)
         {
            _loc2_ = param1 - timeSinceCollisionMilliSeconds / 1000 * 1.3;
            if(_loc2_ > 1)
            {
               return _loc2_;
            }
            return 1;
         }
         return param1;
      }
      
      override protected function updateRotation(param1:Number) : void
      {
      }
      
      override protected function addMightyEagle(param1:§'=§) : void
      {
         var _loc2_:Number = §3"s§().GetPosition().x - §96§.§1'§;
         var _loc3_:Number = §3"s§().GetPosition().y - §96§.§1'§ * §96§.§6'§ * 1.07;
      }
      
      protected function §+!M§() : void
      {
         this.§ !%§ = §3"s§().GetPosition().x;
         this.§]j§ = §3"s§().GetPosition().y;
         health = 0;
      }
      
      override protected function specialPower(param1:§'=§, param2:Number = 0, param3:Number = 0) : void
      {
         this.§+!M§();
      }
      
      override public function get removeOnNextUpdate() : Boolean
      {
         return health == 0;
      }
      
      override protected function addDestructionParticles(param1:§'=§) : void
      {
         var _loc2_:String = null;
         if(!isNaN(this.§ !%§) && !isNaN(this.§]j§))
         {
            _loc2_ = this.§7!d§.getProperty("reticleSprite") || "RETICLE_RED";
            param1.addObject(_loc2_,this.§ !%§,this.§]j§,0,§9"f§.§["_§,false,false,false,1,true);
            this.§'"w§.§7=§(param1,this.§ !%§,this.§]j§,0,0);
         }
      }
      
      override public function updateBeforeRemoving(param1:§'=§) : void
      {
         super.updateBeforeRemoving(param1);
         if(!param1)
         {
            return;
         }
         var _loc2_:String = this.§7!d§.destroyedSound;
         this.§7!d§.§]"J§(_loc2_);
         if(isNaN(this.§ !%§) || isNaN(this.§]j§))
         {
            this.§ !%§ = §3"s§().GetPosition().x;
            this.§]j§ = §3"s§().GetPosition().y;
         }
         param1.addObject(§["0§.§5!L§,this.§ !%§,this.§]j§,0,§9"f§.§["_§,false,true,false,1,true);
      }
      
      override protected function playCollisionSound() : void
      {
         this.§'"w§.playCollisionSound();
      }
      
      override public function scream() : void
      {
         var _loc1_:String = this.§7!d§.§-#,§(§?B§.§%!r§);
         this.§7!d§.§]"J§(_loc1_);
      }
      
      override public function update(param1:Number, param2:§'=§) : void
      {
         super.update(param1,param2);
         if(timeSinceCollisionMilliSeconds >= §@!#§)
         {
            this.§+!M§();
         }
      }
      
      override public function render(param1:Number, param2:Number, param3:Number) : void
      {
         super.render(param1,param2,param3);
         if(this.§"!;§)
         {
            this.§"!;§.update(param1);
         }
      }
      
      public function glow(param1:uint) : void
      {
         if(!this.§"!;§)
         {
            this.§"!;§ = new §;j§(param1);
            sprite.addChildAt(this.§"!;§,0);
         }
      }
   }
}
