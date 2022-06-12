package §6!3§
{
   import §'G§.§;D§;
   import §-#X§.§,!B§;
   import §6#H§.Sprite;
   import §?!C§.b2Vec2;
   import §?$<§.§5!<§;
   import §?$<§.§<#x§;
   import §@!S§.b2World;
   import §`#@§.§7n§;
   
   public class §-8§ extends §,s§
   {
      
      public static const §#!O§:Number = 3000;
      
      public static const §=d§:Number = 0.05;
      
      public static const §6#$§:Number = 0.15;
      
      public static const §%"q§:String = "collision";
       
      
      protected var §2"`§:Number = 3000;
      
      protected var §=L§:Number = 0.0;
      
      public function §-8§(param1:Sprite, param2:§;D§, param3:b2World, param4:§<#x§, param5:§,!B§, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      protected function get §="&§() : §5!<§
      {
         return §"#6§ as §5!<§;
      }
      
      override public function get isNormal() : Boolean
      {
         return this.timeSinceCollisionMilliSeconds < 0 && super.isNormal;
      }
      
      override protected function handleInitialCollision() : void
      {
         super.handleInitialCollision();
         getBody().SetLinearDamping(§=d§);
         §="!§.setAnimation(§%"q§,false);
      }
      
      override public function collidedWith(param1:§!y§) : void
      {
         if(!(param1 is §@#v§) && !§7n§.§6#K§.§'"C§(this,param1))
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
      
      protected function get §5$&§() : Number
      {
         return §0"^§;
      }
      
      override public function get timeSinceCollisionMilliSeconds() : Number
      {
         return §0"^§ + this.§=L§;
      }
      
      override protected function handleAnotherCollision() : void
      {
         this.§=L§ = §0"^§;
      }
      
      override public function update(param1:Number, param2:§8$B§) : void
      {
         super.update(param1,param2);
         if(this.§2"`§ >= 0 && §7$;§ > this.§2"`§)
         {
            getBody().SetLinearDamping(§6#$§);
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
         §9"p§(_loc1_);
      }
   }
}
