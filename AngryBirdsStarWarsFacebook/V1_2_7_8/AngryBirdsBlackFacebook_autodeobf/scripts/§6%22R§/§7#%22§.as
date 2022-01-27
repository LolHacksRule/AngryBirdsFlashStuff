package §6"R§
{
   import §1"s§.Sprite;
   import §1x§.b2World;
   import §2!`§.§#"m§;
   import §2!`§.§;6§;
   import §3"$§.§[a§;
   import §4"F§.§^d§;
   import §5!q§.§<"n§;
   import §7""§.§ !b§;
   import §>P§.§28§;
   import §>P§.§=!,§;
   import §>P§.§?[§;
   import §^>§.b2Vec2;
   
   public class §7#"§ extends §4;§
   {
      
      public static const §^!3§:String = "ME_BAIT";
      
      protected static const §0!I§:Number = 1500;
       
      
      private var §6!y§:Boolean;
      
      protected var § !4§:§28§;
      
      protected var §3"J§:§11§;
      
      protected var §+"^§:Number;
      
      protected var §4!r§:Number;
      
      private var §3!m§:§ !b§;
      
      public function §7#"§(param1:Sprite, param2:§[a§, param3:b2World, param4:§=!,§, param5:§^d§, param6:Number = 1.0, param7:Boolean = true)
      {
         this.§ !4§ = param4 as §28§;
         this.§3"J§ = new §11§(this.§ !4§);
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      override public function get isLeavingTrail() : Boolean
      {
         if(health < healthMax || §?"Z§() == null)
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
         §]h§.setAnimation(§4_§.§9!b§,false);
      }
      
      override protected function addTrail(param1:§""M§) : Boolean
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         if(!this.isLeavingTrail)
         {
            return false;
         }
         if(param1)
         {
            if(!this.§6!y§)
            {
               _loc2_ = §?"Z§().GetPosition().x;
               _loc3_ = §?"Z§().GetPosition().y;
               param1.§[#$§(this.§ !4§.normalTrailSprite,§#"m§.§["A§,§;6§.§3!1§,_loc2_,_loc3_,-1,"",§;6§.§+![§);
            }
            this.§6!y§ = !this.§6!y§;
         }
         return true;
      }
      
      override protected function updateFlying() : void
      {
         var _loc1_:Number = 0;
         var _loc2_:b2Vec2 = §?"Z§().GetLinearVelocity();
         if(_loc2_.x != 0 || _loc2_.y != 0)
         {
            _loc1_ = Math.atan2(_loc2_.y,_loc2_.x) - Math.PI / 2;
         }
         §#"c§(_loc1_);
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
      
      override protected function addMightyEagle(param1:§""M§) : void
      {
         var _loc2_:Number = §?"Z§().GetPosition().x - §<"n§.§""c§;
         var _loc3_:Number = §?"Z§().GetPosition().y - §<"n§.§""c§ * §<"n§.§8!5§ * 1.07;
      }
      
      protected function §6"?§() : void
      {
         this.§+"^§ = §?"Z§().GetPosition().x;
         this.§4!r§ = §?"Z§().GetPosition().y;
         health = 0;
      }
      
      override protected function specialPower(param1:§""M§, param2:Number = 0, param3:Number = 0) : void
      {
         this.§6"?§();
      }
      
      override public function get removeOnNextUpdate() : Boolean
      {
         return health == 0;
      }
      
      override protected function addDestructionParticles(param1:§""M§) : void
      {
         var _loc2_:String = null;
         if(!isNaN(this.§+"^§) && !isNaN(this.§4!r§))
         {
            _loc2_ = this.§ !4§.getProperty("reticleSprite") || "RETICLE_RED";
            param1.addObject(_loc2_,this.§+"^§,this.§4!r§,0,§super§.§4"D§,false,false,false,1,true);
            this.§3"J§.§7&§(param1,this.§+"^§,this.§4!r§,0,0);
         }
      }
      
      override public function updateBeforeRemoving(param1:§""M§) : void
      {
         super.updateBeforeRemoving(param1);
         if(!param1)
         {
            return;
         }
         var _loc2_:String = this.§ !4§.destroyedSound;
         this.§ !4§.§0#+§(_loc2_);
         if(isNaN(this.§+"^§) || isNaN(this.§4!r§))
         {
            this.§+"^§ = §?"Z§().GetPosition().x;
            this.§4!r§ = §?"Z§().GetPosition().y;
         }
         param1.addObject(§^"!§.§^!3§,this.§+"^§,this.§4!r§,0,§super§.§4"D§,false,true,false,1,true);
      }
      
      override protected function playCollisionSound() : void
      {
         this.§3"J§.playCollisionSound();
      }
      
      override public function scream() : void
      {
         var _loc1_:String = this.§ !4§.§+!B§(§?[§.§?!d§);
         this.§ !4§.§0#+§(_loc1_);
      }
      
      override public function update(param1:Number, param2:§""M§) : void
      {
         super.update(param1,param2);
         if(timeSinceCollisionMilliSeconds >= §0!I§)
         {
            this.§6"?§();
         }
      }
      
      override public function render(param1:Number, param2:Number, param3:Number) : void
      {
         super.render(param1,param2,param3);
         if(this.§3!m§)
         {
            this.§3!m§.update(param1);
         }
      }
      
      public function glow(param1:uint) : void
      {
         if(!this.§3!m§)
         {
            this.§3!m§ = new § !b§(param1);
            sprite.addChildAt(this.§3!m§,0);
         }
      }
   }
}
