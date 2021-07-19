package §]">§
{
   import §"!&§.§0"?§;
   import §"!&§.§]!C§;
   import §'!&§.b2World;
   import §4&§.§#r§;
   import §7!8§.Sprite;
   import §9t§.b2Vec2;
   
   public class §%!E§ extends § 6§
   {
      
      public static const §6&§:Number = 3000;
      
      public static const §-,§:Number = 0.05;
      
      public static const §0e§:Number = 0.15;
      
      public static const §;O§:String = "collision";
       
      
      protected var §5!I§:Number = 3000;
      
      protected var §4b§:Number = 0.0;
      
      public function §%!E§(param1:Sprite, param2:§#r§, param3:b2World, param4:§]!C§, param5:Number, param6:Number, param7:Number, param8:Number = 1.0, param9:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9);
      }
      
      protected function get §^!^§() : §0"?§
      {
         return §7!h§ as §0"?§;
      }
      
      override public function get isNormal() : Boolean
      {
         return this.timeSinceCollisionMilliSeconds < 0 && super.isNormal;
      }
      
      override protected function handleInitialCollision() : void
      {
         super.handleInitialCollision();
         §^!z§().SetLinearDamping(§-,§);
         §'%§.setAnimation(§;O§,false);
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
      
      protected function get §5L§() : Number
      {
         return §"!A§;
      }
      
      override public function get timeSinceCollisionMilliSeconds() : Number
      {
         return §"!A§ + this.§4b§;
      }
      
      override protected function handleAnotherCollision() : void
      {
         this.§4b§ = §"!A§;
      }
      
      override public function update(param1:Number, param2:§;U§) : void
      {
         super.update(param1,param2);
         if(this.§5!I§ >= 0 && §=!c§ > this.§5!I§)
         {
            §^!z§().SetLinearDamping(§0e§);
         }
      }
      
      override protected function updateFlying() : void
      {
         var _loc1_:Number = 0;
         var _loc2_:b2Vec2 = §^!z§().GetLinearVelocity();
         if(_loc2_.x != 0 || _loc2_.y != 0)
         {
            _loc1_ = Math.atan2(_loc2_.y,_loc2_.x);
         }
         §^e§(_loc1_);
      }
   }
}
