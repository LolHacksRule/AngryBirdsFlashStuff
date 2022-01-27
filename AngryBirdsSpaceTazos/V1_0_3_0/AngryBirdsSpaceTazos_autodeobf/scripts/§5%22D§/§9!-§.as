package §5"D§
{
   import §4"@§.Sprite;
   import §6!M§.§;!4§;
   import §6!M§.§[M§;
   import §;`§.b2World;
   import §[!f§.b2Vec2;
   import §^e§.§^5§;
   
   public class §9!-§ extends §1"G§
   {
      
      public static const §5">§:Number = 3000;
      
      public static const § !x§:Number = 0.05;
      
      public static const §5"F§:Number = 0.15;
      
      public static const § "9§:String = "collision";
       
      
      protected var §!"=§:Number = 3000;
      
      protected var §!!?§:Number = 0.0;
      
      public function §9!-§(param1:Sprite, param2:§^5§, param3:b2World, param4:§;!4§, param5:Number, param6:Number, param7:Number, param8:Number = 1.0, param9:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9);
      }
      
      protected function get §<d§() : §[M§
      {
         return §!!9§ as §[M§;
      }
      
      override public function get isNormal() : Boolean
      {
         return this.timeSinceCollisionMilliSeconds < 0 && super.isNormal;
      }
      
      override protected function handleInitialCollision() : void
      {
         super.handleInitialCollision();
         §9B§().SetLinearDamping(§ !x§);
         §;!5§.setAnimation(§ "9§,false);
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
      
      protected function get §0F§() : Number
      {
         return §]!R§;
      }
      
      override public function get timeSinceCollisionMilliSeconds() : Number
      {
         return §]!R§ + this.§!!?§;
      }
      
      override protected function handleAnotherCollision() : void
      {
         this.§!!?§ = §]!R§;
      }
      
      override public function update(param1:Number, param2:§0!5§) : void
      {
         super.update(param1,param2);
         if(this.§!"=§ >= 0 && §7J§ > this.§!"=§)
         {
            §9B§().SetLinearDamping(§5"F§);
         }
      }
      
      override protected function updateFlying() : void
      {
         var _loc1_:Number = 0;
         var _loc2_:b2Vec2 = §9B§().GetLinearVelocity();
         if(_loc2_.x != 0 || _loc2_.y != 0)
         {
            _loc1_ = Math.atan2(_loc2_.y,_loc2_.x);
         }
         §"!C§(_loc1_);
      }
   }
}
