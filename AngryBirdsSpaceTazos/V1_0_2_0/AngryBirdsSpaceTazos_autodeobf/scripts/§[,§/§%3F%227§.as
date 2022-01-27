package §[,§
{
   import §#!X§.b2World;
   import §&!S§.b2Vec2;
   import §'!&§.Sprite;
   import §8o§.§]!U§;
   import §;"=§.§!!O§;
   import §;"=§.§,]§;
   
   public class §?"7§ extends §#!v§
   {
      
      public static const §30§:Number = 3000;
      
      public static const §#!H§:Number = 0.05;
      
      public static const §4!_§:Number = 0.15;
      
      public static const §!C§:String = "collision";
       
      
      protected var §8!]§:Number = 3000;
      
      protected var §5g§:Number = 0.0;
      
      public function §?"7§(param1:Sprite, param2:§]!U§, param3:b2World, param4:§!!O§, param5:Number, param6:Number, param7:Number, param8:Number = 1.0, param9:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9);
      }
      
      protected function get §;&§() : §,]§
      {
         return §00§ as §,]§;
      }
      
      override public function get isNormal() : Boolean
      {
         return this.timeSinceCollisionMilliSeconds < 0 && super.isNormal;
      }
      
      override protected function handleInitialCollision() : void
      {
         super.handleInitialCollision();
         § <§().SetLinearDamping(§#!H§);
         §&"C§.setAnimation(§!C§,false);
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
      
      protected function get §"@§() : Number
      {
         return §,;§;
      }
      
      override public function get timeSinceCollisionMilliSeconds() : Number
      {
         return §,;§ + this.§5g§;
      }
      
      override protected function handleAnotherCollision() : void
      {
         this.§5g§ = §,;§;
      }
      
      override public function update(param1:Number, param2:§class§) : void
      {
         super.update(param1,param2);
         if(this.§8!]§ >= 0 && §8Y§ > this.§8!]§)
         {
            § <§().SetLinearDamping(§4!_§);
         }
      }
      
      override protected function updateFlying() : void
      {
         var _loc1_:Number = 0;
         var _loc2_:b2Vec2 = § <§().GetLinearVelocity();
         if(_loc2_.x != 0 || _loc2_.y != 0)
         {
            _loc1_ = Math.atan2(_loc2_.y,_loc2_.x);
         }
         §[!9§(_loc1_);
      }
   }
}
