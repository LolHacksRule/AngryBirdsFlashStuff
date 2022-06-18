package §>!5§
{
   import §%!9§.b2Vec2;
   import §&!v§.Sprite;
   import §1!+§.b2World;
   import §6"r§.§!#A§;
   import §6$"§.§]"o§;
   import §7!j§.§8#B§;
   import §7"&§.§2p§;
   import §7"&§.§;"&§;
   
   public class §4!Q§ extends §"7§
   {
      
      public static const §&"0§:Number = 3000;
      
      public static const §?!^§:Number = 0.05;
      
      public static const §3!e§:Number = 0.15;
      
      public static const §&!%§:String = "collision";
       
      
      protected var §'#!§:Number = 3000;
      
      protected var §"#n§:Number = 0.0;
      
      public function §4!Q§(param1:Sprite, param2:§8#B§, param3:b2World, param4:§2p§, param5:§]"o§, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      protected function get §%"c§() : §;"&§
      {
         return §8"3§ as §;"&§;
      }
      
      override public function get isNormal() : Boolean
      {
         return this.timeSinceCollisionMilliSeconds < 0 && super.isNormal;
      }
      
      override protected function handleInitialCollision() : void
      {
         super.handleInitialCollision();
         getBody().SetLinearDamping(§?!^§);
         §implements§.setAnimation(§&!%§,false);
      }
      
      override public function collidedWith(param1:§#-§) : void
      {
         if(!(param1 is §0S§) && !§!#A§.§#F§.§"!B§(this,param1))
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
      
      protected function get §#"7§() : Number
      {
         return §#b§;
      }
      
      override public function get timeSinceCollisionMilliSeconds() : Number
      {
         return §#b§ + this.§"#n§;
      }
      
      override protected function handleAnotherCollision() : void
      {
         this.§"#n§ = §#b§;
      }
      
      override public function update(param1:Number, param2:§-!S§) : void
      {
         super.update(param1,param2);
         if(this.§'#!§ >= 0 && §`"b§ > this.§'#!§)
         {
            getBody().SetLinearDamping(§3!e§);
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
         §"#o§(_loc1_);
      }
   }
}
