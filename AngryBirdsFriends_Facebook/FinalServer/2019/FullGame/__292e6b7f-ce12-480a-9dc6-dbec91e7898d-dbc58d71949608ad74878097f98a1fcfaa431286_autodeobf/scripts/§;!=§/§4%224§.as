package §;!=§
{
   import § !N§.§5"?§;
   import §'#K§.b2World;
   import §,#e§.Sprite;
   import §04§.b2Vec2;
   import §7"T§.§7b§;
   import §8#K§.§ !=§;
   import §8#K§.§<#`§;
   import §?#z§.§]$?§;
   
   public class §4"4§ extends §[!k§
   {
      
      public static const §!!%§:Number = 3000;
      
      public static const §?#=§:Number = 0.05;
      
      public static const §2$@§:Number = 0.15;
      
      public static const §<#F§:String = "collision";
       
      
      protected var §;!J§:Number = 3000;
      
      protected var §0$5§:Number = 0.0;
      
      public function §4"4§(param1:Sprite, param2:§7b§, param3:b2World, param4:§ !=§, param5:§5"?§, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      protected function get §=##§() : §<#`§
      {
         return §]h§ as §<#`§;
      }
      
      override public function get isNormal() : Boolean
      {
         return this.timeSinceCollisionMilliSeconds < 0 && super.isNormal;
      }
      
      override protected function handleInitialCollision() : void
      {
         super.handleInitialCollision();
         getBody().SetLinearDamping(§?#=§);
         §]$"§.setAnimation(§<#F§,false);
      }
      
      override public function collidedWith(param1:§'#N§) : void
      {
         if(!(param1 is §`"4§) && !§]$?§.§2#§.§;"6§(this,param1))
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
      
      protected function get §`c§() : Number
      {
         return §7"n§;
      }
      
      override public function get timeSinceCollisionMilliSeconds() : Number
      {
         return §7"n§ + this.§0$5§;
      }
      
      override protected function handleAnotherCollision() : void
      {
         this.§0$5§ = §7"n§;
      }
      
      override public function update(param1:Number, param2:§]!m§) : void
      {
         super.update(param1,param2);
         if(this.§;!J§ >= 0 && §1!j§ > this.§;!J§)
         {
            getBody().SetLinearDamping(§2$@§);
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
         §#"&§(_loc1_);
      }
   }
}
