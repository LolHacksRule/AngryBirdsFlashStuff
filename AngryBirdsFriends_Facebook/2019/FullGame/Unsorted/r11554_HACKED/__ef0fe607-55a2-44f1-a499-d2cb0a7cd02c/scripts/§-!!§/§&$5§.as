package §-!!§
{
   import §!6§.Sprite;
   import §8#t§.b2World;
   import §9$+§.§9"4§;
   import §=!2§.§%"T§;
   import §?§.§7E§;
   import §?§.§@#K§;
   import §^"[§.§4!8§;
   import §`# §.b2Vec2;
   
   public class §&$5§ extends §5"W§
   {
      
      public static const §!$D§:Number = 3000;
      
      public static const §2"p§:Number = 0.05;
      
      public static const §5"U§:Number = 0.15;
      
      public static const §'""§:String = "collision";
       
      
      protected var §2$ §:Number = 3000;
      
      protected var §!!%§:Number = 0.0;
      
      public function §&$5§(param1:Sprite, param2:§4!8§, param3:b2World, param4:§7E§, param5:§9"4§, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      protected function get § "&§() : §@#K§
      {
         return §!!H§ as §@#K§;
      }
      
      override public function get isNormal() : Boolean
      {
         return this.timeSinceCollisionMilliSeconds < 0 && super.isNormal;
      }
      
      override protected function handleInitialCollision() : void
      {
         super.handleInitialCollision();
         getBody().SetLinearDamping(§2"p§);
         §]+§.setAnimation(§'""§,false);
      }
      
      override public function collidedWith(param1:§1#B§) : void
      {
         if(!(param1 is §0!N§) && !§%"T§.§;`§.§!!@§(this,param1))
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
      
      protected function get §]n§() : Number
      {
         return §7?§;
      }
      
      override public function get timeSinceCollisionMilliSeconds() : Number
      {
         return §7?§ + this.§!!%§;
      }
      
      override protected function handleAnotherCollision() : void
      {
         this.§!!%§ = §7?§;
      }
      
      override public function update(param1:Number, param2:§ #'§) : void
      {
         super.update(param1,param2);
         if(this.§2$ § >= 0 && §>"&§ > this.§2$ §)
         {
            getBody().SetLinearDamping(§5"U§);
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
         §=z§(_loc1_);
      }
   }
}
