package §9"!§
{
   import §&!]§.Sprite;
   import §3>§.§ !9§;
   import §3>§.§-f§;
   import §6!n§.b2Vec2;
   import §9!K§.b2World;
   import §9!v§.§1!_§;
   
   public class §#K§ extends §!!H§
   {
      
      public static const §5!g§:Number = 3000;
      
      public static const §[!E§:Number = 0.05;
      
      public static const §3L§:Number = 0.15;
      
      public static const §6H§:String = "collision";
       
      
      protected var §4Y§:Number = 3000;
      
      protected var §%";§:Number = 0.0;
      
      public function §#K§(param1:Sprite, param2:§1!_§, param3:b2World, param4:§-f§, param5:Number, param6:Number, param7:Number, param8:Number = 1.0, param9:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9);
      }
      
      protected function get §0X§() : § !9§
      {
         return § N§ as § !9§;
      }
      
      override public function get isNormal() : Boolean
      {
         return this.timeSinceCollisionMilliSeconds < 0 && super.isNormal;
      }
      
      override protected function handleInitialCollision() : void
      {
         super.handleInitialCollision();
         §`I§().SetLinearDamping(§[!E§);
         §"j§.setAnimation(§6H§,false);
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
      
      protected function get §5"4§() : Number
      {
         return §catch§;
      }
      
      override public function get timeSinceCollisionMilliSeconds() : Number
      {
         return §catch§ + this.§%";§;
      }
      
      override protected function handleAnotherCollision() : void
      {
         this.§%";§ = §catch§;
      }
      
      override public function update(param1:Number, param2:§0!s§) : void
      {
         super.update(param1,param2);
         if(this.§4Y§ >= 0 && §`!L§ > this.§4Y§)
         {
            §`I§().SetLinearDamping(§3L§);
         }
      }
      
      override protected function updateFlying() : void
      {
         var _loc1_:Number = 0;
         var _loc2_:b2Vec2 = §`I§().GetLinearVelocity();
         if(_loc2_.x != 0 || _loc2_.y != 0)
         {
            _loc1_ = Math.atan2(_loc2_.y,_loc2_.x);
         }
         §3",§(_loc1_);
      }
   }
}
