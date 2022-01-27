package §7P§
{
   import §!!U§.Sprite;
   import §+#$§.b2World;
   import §2"Y§.§,",§;
   import §2"Y§.§8!D§;
   import §7!F§.§>"G§;
   import §<"B§.§94§;
   import §[R§.b2Vec2;
   import com.angrybirds.§,!q§;
   
   public class §3!y§ extends §?"N§
   {
      
      public static const §>!1§:Number = 3000;
      
      public static const §'d§:Number = 0.05;
      
      public static const §9#3§:Number = 0.15;
      
      public static const §4!v§:String = "collision";
       
      
      protected var §&!Y§:Number = 3000;
      
      protected var §%!+§:Number = 0.0;
      
      public function §3!y§(param1:Sprite, param2:§>"G§, param3:b2World, param4:§8!D§, param5:§94§, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      protected function get §'L§() : §,",§
      {
         return §;B§ as §,",§;
      }
      
      override public function get isNormal() : Boolean
      {
         return this.timeSinceCollisionMilliSeconds < 0 && super.isNormal;
      }
      
      override protected function handleInitialCollision() : void
      {
         super.handleInitialCollision();
         §3!t§().SetLinearDamping(§'d§);
         §2N§.setAnimation(§4!v§,false);
      }
      
      override public function collidedWith(param1:§7B§) : void
      {
         if(!(param1 is §1#E§) && !§,!q§.§9!,§.isCollisionExcluded(this,param1))
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
      
      protected function get §#"d§() : Number
      {
         return § d§;
      }
      
      override public function get timeSinceCollisionMilliSeconds() : Number
      {
         return § d§ + this.§%!+§;
      }
      
      override protected function handleAnotherCollision() : void
      {
         this.§%!+§ = § d§;
      }
      
      override public function update(param1:Number, param2:§;$§) : void
      {
         super.update(param1,param2);
         if(this.§&!Y§ >= 0 && §3! § > this.§&!Y§)
         {
            §3!t§().SetLinearDamping(§9#3§);
         }
      }
      
      override protected function updateFlying() : void
      {
         var _loc1_:Number = 0;
         var _loc2_:b2Vec2 = §3!t§().GetLinearVelocity();
         if(_loc2_.x != 0 || _loc2_.y != 0)
         {
            _loc1_ = Math.atan2(_loc2_.y,_loc2_.x);
         }
         §6#<§(_loc1_);
      }
   }
}
