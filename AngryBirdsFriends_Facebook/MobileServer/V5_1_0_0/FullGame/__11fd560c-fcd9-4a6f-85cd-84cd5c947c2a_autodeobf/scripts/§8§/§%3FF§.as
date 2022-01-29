package §8§#8
{
   import § "%§.b2Vec2;
   import §4"O§.b2World;
   import §8"L§.§5K§;
   import §8"L§.§]$$§;
   import §;#D§.§3#U§;
   import §>M§.§["z§;
   import §^"S§.Sprite;
   import §`"8§.§0$2§;
   
   public class §?F§ extends §?$%§
   {
      
      public static const §9!O§:Number = 3000;
      
      public static const §;!X§:Number = 0.05;
      
      public static const §^Z§:Number = 0.15;
      
      public static const §-U§:String = "collision";
       
      
      protected var §2"N§:Number = 3000;
      
      protected var §3$<§:Number = 0.0;
      
      public function §?F§(param1:Sprite, param2:§0$2§, param3:b2World, param4:§5K§, param5:§["z§, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      protected function get §@!k§() : §]$$§
      {
         return §'!i§ as §]$$§;
      }
      
      override public function get isNormal() : Boolean
      {
         return this.timeSinceCollisionMilliSeconds < 0 && super.isNormal;
      }
      
      override protected function handleInitialCollision() : void
      {
         super.handleInitialCollision();
         getBody().SetLinearDamping(§;!X§);
         §9"6§.setAnimation(§-U§,false);
      }
      
      override public function collidedWith(param1:§,#5§) : void
      {
         if(!(param1 is §7!0§) && !§3#U§.§#$4§.§7!t§(this,param1))
         {
            isLeavingTrail = false;
         }
         super.collidedWith(param1);
      }
      
      override public function getGravityMultiplier(param1:Number) : Number
      {
         var _loc2_:Number = NaN;
         if(this.timeSinceCollisionMilliSeconds >= 0)
         {
            _loc2_ = param1 - this.timeSinceCollisionMilliSeconds / 1000 * 1.3;
            if(_loc2_ > 1)
            {
               return _loc2_;
            }
            return 1;
         }
         return param1;
      }
      
      protected function get §]!K§() : Number
      {
         return §9"Z§;
      }
      
      override public function get timeSinceCollisionMilliSeconds() : Number
      {
         return §9"Z§ + this.§3$<§;
      }
      
      override protected function handleAnotherCollision() : void
      {
         this.§3$<§ = §9"Z§;
      }
      
      override public function update(param1:Number, param2:§&#V§) : void
      {
         super.update(param1,param2);
         if(this.§2"N§ >= 0 && §8G§ > this.§2"N§)
         {
            getBody().SetLinearDamping(§^Z§);
         }
      }
      
      override protected function updateFlying() : void
      {
         var _loc1_:Number = 0;
         var _loc2_:b2Vec2 = getBody().GetLinearVelocity();
         if(_loc2_.x != 0 || _loc2_.y != 0)
         {
            _loc1_ = Math.atan2(_loc2_.y,_loc2_.x);
         }
         §5#W§(_loc1_);
      }
   }
}
