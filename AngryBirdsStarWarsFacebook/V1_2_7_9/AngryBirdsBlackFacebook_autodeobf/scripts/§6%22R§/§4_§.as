package §6"R§
{
   import §1"s§.Sprite;
   import §1x§.b2World;
   import §3"$§.§[a§;
   import §4"F§.§^d§;
   import §>P§.§28§;
   import §>P§.§;+§;
   import §^>§.b2Vec2;
   import com.angrybirds.§;!e§;
   
   public class §4_§ extends §%!0§
   {
      
      public static const §5"X§:Number = 3000;
      
      public static const §0"C§:Number = 0.05;
      
      public static const §1"d§:Number = 0.15;
      
      public static const §9!b§:String = "collision";
       
      
      protected var §#"I§:Number = 3000;
      
      protected var §'!f§:Number = 0.0;
      
      public function §4_§(param1:Sprite, param2:§[a§, param3:b2World, param4:§;+§, param5:§^d§, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      protected function get §8g§() : §28§
      {
         return §-!f§ as §28§;
      }
      
      override public function get isNormal() : Boolean
      {
         return this.timeSinceCollisionMilliSeconds < 0 && super.isNormal;
      }
      
      override protected function handleInitialCollision() : void
      {
         super.handleInitialCollision();
         §?"Z§().SetLinearDamping(§0"C§);
         §]h§.setAnimation(§9!b§,false);
      }
      
      override public function collidedWith(param1:§!z§) : void
      {
         if(!(param1 is §-t§) && !§;!e§.§<x§.isCollisionExcluded(this,param1))
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
      
      protected function get §^,§() : Number
      {
         return §?"=§;
      }
      
      override public function get timeSinceCollisionMilliSeconds() : Number
      {
         return §?"=§ + this.§'!f§;
      }
      
      override protected function handleAnotherCollision() : void
      {
         this.§'!f§ = §?"=§;
      }
      
      override public function update(param1:Number, param2:§""M§) : void
      {
         super.update(param1,param2);
         if(this.§#"I§ >= 0 && §-=§ > this.§#"I§)
         {
            §?"Z§().SetLinearDamping(§1"d§);
         }
      }
      
      override protected function updateFlying() : void
      {
         var _loc1_:Number = 0;
         var _loc2_:b2Vec2 = §?"Z§().GetLinearVelocity();
         if(_loc2_.x != 0 || _loc2_.y != 0)
         {
            _loc1_ = Math.atan2(_loc2_.y,_loc2_.x);
         }
         §#"c§(_loc1_);
      }
   }
}
