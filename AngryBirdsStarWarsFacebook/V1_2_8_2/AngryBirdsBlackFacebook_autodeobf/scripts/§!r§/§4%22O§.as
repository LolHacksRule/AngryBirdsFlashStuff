package §!r§
{
   import §!!k§.§1!^§;
   import §#g§.§5!M§;
   import §#g§.§`"[§;
   import §7"A§.b2Vec2;
   import §=G§.§9v§;
   import §>"_§.b2World;
   import com.angrybirds.§<!J§;
   import §use§.Sprite;
   
   public class §4"O§ extends §;!T§
   {
      
      public static const §5!J§:Number = 3000;
      
      public static const §["n§:Number = 0.05;
      
      public static const §5"9§:Number = 0.15;
      
      public static const §>W§:String = "collision";
       
      
      protected var §>E§:Number = 3000;
      
      protected var §@"J§:Number = 0.0;
      
      public function §4"O§(param1:Sprite, param2:§1!^§, param3:b2World, param4:§5!M§, param5:§9v§, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      protected function get §1!I§() : §`"[§
      {
         return §+!j§ as §`"[§;
      }
      
      override public function get isNormal() : Boolean
      {
         return this.timeSinceCollisionMilliSeconds < 0 && super.isNormal;
      }
      
      override protected function handleInitialCollision() : void
      {
         super.handleInitialCollision();
         §3"s§().SetLinearDamping(§["n§);
         §]!g§.setAnimation(§>W§,false);
      }
      
      override public function collidedWith(param1:§?!x§) : void
      {
         if(!(param1 is §03§) && !§<!J§.§=!%§.isCollisionExcluded(this,param1))
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
      
      protected function get §%3§() : Number
      {
         return §@5§;
      }
      
      override public function get timeSinceCollisionMilliSeconds() : Number
      {
         return §@5§ + this.§@"J§;
      }
      
      override protected function handleAnotherCollision() : void
      {
         this.§@"J§ = §@5§;
      }
      
      override public function update(param1:Number, param2:§'=§) : void
      {
         super.update(param1,param2);
         if(this.§>E§ >= 0 && §<!"§ > this.§>E§)
         {
            §3"s§().SetLinearDamping(§5"9§);
         }
      }
      
      override protected function updateFlying() : void
      {
         var _loc1_:Number = 0;
         var _loc2_:b2Vec2 = §3"s§().GetLinearVelocity();
         if(_loc2_.x != 0 || _loc2_.y != 0)
         {
            _loc1_ = Math.atan2(_loc2_.y,_loc2_.x);
         }
         § "H§(_loc1_);
      }
   }
}
