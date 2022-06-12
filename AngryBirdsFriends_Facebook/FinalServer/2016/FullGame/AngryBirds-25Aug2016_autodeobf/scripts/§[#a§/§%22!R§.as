package §[#a§
{
   import §,#L§.§!#%§;
   import §0m§.b2Vec2;
   import §9$§.Sprite;
   import §=#n§.b2World;
   import §?§.§>"$§;
   import §@"§.§`"W§;
   import §`#C§.§4o§;
   import §`#C§.§@"-§;
   
   public class §"!R§ extends §-k§
   {
      
      public static const §1h§:Number = 3000;
      
      public static const §-#>§:Number = 0.05;
      
      public static const §9# §:Number = 0.15;
      
      public static const §<k§:String = "collision";
       
      
      protected var §1#&§:Number = 3000;
      
      protected var §+#v§:Number = 0.0;
      
      public function §"!R§(param1:Sprite, param2:§`"W§, param3:b2World, param4:§4o§, param5:§!#%§, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      protected function get §4!G§() : §@"-§
      {
         return §`!w§ as §@"-§;
      }
      
      override public function get isNormal() : Boolean
      {
         return this.timeSinceCollisionMilliSeconds < 0 && super.isNormal;
      }
      
      override protected function handleInitialCollision() : void
      {
         super.handleInitialCollision();
         getBody().SetLinearDamping(§-#>§);
         §'"s§.setAnimation(§<k§,false);
      }
      
      override public function collidedWith(param1:§<"H§) : void
      {
         if(!(param1 is §%#T§) && !§>"$§.§3#'§.§'"+§(this,param1))
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
      
      protected function get §!C§() : Number
      {
         return §@#D§;
      }
      
      override public function get timeSinceCollisionMilliSeconds() : Number
      {
         return §@#D§ + this.§+#v§;
      }
      
      override protected function handleAnotherCollision() : void
      {
         this.§+#v§ = §@#D§;
      }
      
      override public function update(param1:Number, param2:§7!O§) : void
      {
         super.update(param1,param2);
         if(this.§1#&§ >= 0 && §"4§ > this.§1#&§)
         {
            getBody().SetLinearDamping(§9# §);
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
         §?$+§(_loc1_);
      }
   }
}
