package §7P§
{
   import §!!U§.Sprite;
   import §+!c§.§;!d§;
   import §+#$§.b2World;
   import §2"Y§.§"t§;
   import §2"Y§.§%"3§;
   import §2"Y§.§,",§;
   import §7!F§.§>"G§;
   import §<"B§.§94§;
   import §[R§.b2Vec2;
   import §^#>§.§0"x§;
   import §`!r§.§ U§;
   import §`!r§.§,!w§;
   
   public class §=1§ extends §@#P§
   {
      
      public static const §+"§:String = "ME_BAIT";
      
      protected static const §!!X§:Number = 1500;
       
      
      private var §@=§:Boolean;
      
      protected var §<X§:§,",§;
      
      protected var §7[§:§!p§;
      
      protected var §%>§:Number;
      
      protected var §;A§:Number;
      
      private var § !d§:§;!d§;
      
      public function §=1§(param1:Sprite, param2:§>"G§, param3:b2World, param4:§"t§, param5:§94§, param6:Number = 1.0, param7:Boolean = true)
      {
         this.§<X§ = param4 as §,",§;
         this.§7[§ = new §!p§(this.§<X§);
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      override public function get isLeavingTrail() : Boolean
      {
         if(health < healthMax || §3!t§() == null)
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
         §2N§.setAnimation(§3!y§.§4!v§,false);
      }
      
      override protected function addTrail(param1:§;$§) : Boolean
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         if(!this.isLeavingTrail)
         {
            return false;
         }
         if(param1)
         {
            if(!this.§@=§)
            {
               _loc2_ = §3!t§().GetPosition().x;
               _loc3_ = §3!t§().GetPosition().y;
               param1.§;!0§(this.§<X§.normalTrailSprite,§,!w§.§9F§,§ U§.§+!Q§,_loc2_,_loc3_,-1,"",§ U§.§9"W§);
            }
            this.§@=§ = !this.§@=§;
         }
         return true;
      }
      
      override protected function updateFlying() : void
      {
         var _loc1_:Number = 0;
         var _loc2_:b2Vec2 = §3!t§().GetLinearVelocity();
         if(_loc2_.x != 0 || _loc2_.y != 0)
         {
            _loc1_ = Math.atan2(_loc2_.y,_loc2_.x) - Math.PI / 2;
         }
         §6#<§(_loc1_);
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
      
      override protected function addMightyEagle(param1:§;$§) : void
      {
         var _loc2_:Number = §3!t§().GetPosition().x - §0"x§.§>"h§;
         var _loc3_:Number = §3!t§().GetPosition().y - §0"x§.§>"h§ * §0"x§.§8!6§ * 1.07;
      }
      
      protected function §0f§() : void
      {
         this.§%>§ = §3!t§().GetPosition().x;
         this.§;A§ = §3!t§().GetPosition().y;
         health = 0;
      }
      
      override protected function specialPower(param1:§;$§, param2:Number = 0, param3:Number = 0) : void
      {
         this.§0f§();
      }
      
      override public function get removeOnNextUpdate() : Boolean
      {
         return health == 0;
      }
      
      override protected function addDestructionParticles(param1:§;$§) : void
      {
         var _loc2_:String = null;
         if(!isNaN(this.§%>§) && !isNaN(this.§;A§))
         {
            _loc2_ = this.§<X§.getProperty("reticleSprite") || "RETICLE_RED";
            param1.addObject(_loc2_,this.§%>§,this.§;A§,0,§;=§.§""3§,false,false,false,1,true);
            this.§7[§.§]T§(param1,this.§%>§,this.§;A§,0,0);
         }
      }
      
      override public function updateBeforeRemoving(param1:§;$§) : void
      {
         super.updateBeforeRemoving(param1);
         if(!param1)
         {
            return;
         }
         var _loc2_:String = this.§<X§.destroyedSound;
         this.§<X§.§-Z§(_loc2_);
         if(isNaN(this.§%>§) || isNaN(this.§;A§))
         {
            this.§%>§ = §3!t§().GetPosition().x;
            this.§;A§ = §3!t§().GetPosition().y;
         }
         param1.addObject(§7#"§.§+"§,this.§%>§,this.§;A§,0,§;=§.§""3§,false,true,false,1,true);
      }
      
      override protected function playCollisionSound() : void
      {
         this.§7[§.playCollisionSound();
      }
      
      override public function scream() : void
      {
         var _loc1_:String = this.§<X§.§1"Z§(§%"3§.§5"P§);
         this.§<X§.§-Z§(_loc1_);
      }
      
      override public function update(param1:Number, param2:§;$§) : void
      {
         super.update(param1,param2);
         if(timeSinceCollisionMilliSeconds >= §!!X§)
         {
            this.§0f§();
         }
      }
      
      override public function render(param1:Number, param2:Number, param3:Number) : void
      {
         super.render(param1,param2,param3);
         if(this.§ !d§)
         {
            this.§ !d§.update(param1);
         }
      }
      
      public function glow(param1:uint) : void
      {
         if(!this.§ !d§)
         {
            this.§ !d§ = new §;!d§(param1);
            sprite.addChildAt(this.§ !d§,0);
         }
      }
   }
}
