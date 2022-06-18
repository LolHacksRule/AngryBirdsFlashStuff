package §^0§
{
   import §#Z§.Sprite;
   import §+!n§.§+!p§;
   import §-!j§.§'$#§;
   import §-!j§.§>!8§;
   import §3#h§.b2World;
   import §6!R§.b2Vec2;
   import §9#M§.§,`§;
   import §@"v§.§@$<§;
   
   public class §`j§ extends §[# §
   {
      
      public static const §+#"§:Number = 3000;
      
      public static const §^#c§:Number = 0.05;
      
      public static const §>#i§:Number = 0.15;
      
      public static const §'#?§:String = "collision";
       
      
      protected var § ",§:Number = 3000;
      
      protected var §#<§:Number = 0.0;
      
      public function §`j§(param1:Sprite, param2:§,`§, param3:b2World, param4:§>!8§, param5:§@$<§, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      protected function get §-#e§() : §'$#§
      {
         return §8!'§ as §'$#§;
      }
      
      override public function get isNormal() : Boolean
      {
         return this.timeSinceCollisionMilliSeconds < 0 && super.isNormal;
      }
      
      override protected function handleInitialCollision() : void
      {
         super.handleInitialCollision();
         getBody().SetLinearDamping(§^#c§);
         §-"p§.setAnimation(§'#?§,false);
      }
      
      override public function collidedWith(param1:§4!t§) : void
      {
         if(!(param1 is §5;§) && !§+!p§.§`?§.§1!3§(this,param1))
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
      
      protected function get §%#S§() : Number
      {
         return § #c§;
      }
      
      override public function get timeSinceCollisionMilliSeconds() : Number
      {
         return § #c§ + this.§#<§;
      }
      
      override protected function handleAnotherCollision() : void
      {
         this.§#<§ = § #c§;
      }
      
      override public function update(param1:Number, param2:§>"T§) : void
      {
         super.update(param1,param2);
         if(this.§ ",§ >= 0 && §<K§ > this.§ ",§)
         {
            getBody().SetLinearDamping(§>#i§);
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
         §%"C§(_loc1_);
      }
   }
}
