package §`!G§
{
   import §&E§.§0i§;
   import §&E§.§6!O§;
   import §'!6§.Sprite;
   import §2"'§.§0W§;
   import §2"'§.§6!K§;
   import §4!<§.§'!S§;
   import §6!^§.b2Vec2;
   import §6"1§.b2World;
   import §8m§.§@"M§;
   import §@!"§.§?l§;
   
   public class §8R§ extends §[!8§
   {
      
      public static const §'!X§:uint = 3000;
      
      public static const §0!F§:uint = 2000;
      
      public static const §5e§:uint = 50;
      
      private static const §;!W§:uint = 8;
      
      private static const §#!P§:Number = 3 / §;!W§;
      
      public static const §@F§:uint = 1500;
      
      public static const §'e§:Number = §@F§ / 1000;
      
      private static const §2!p§:String = "CannonSounds";
      
      private static const §]j§:int = 1;
      
      private static const §%[§:Number = 1;
       
      
      private const §7!M§:Number = 4.7;
      
      private const § "K§:uint = 3;
      
      private const §<!_§:uint = 150;
      
      private var §-"-§:§8"=§;
      
      private var §`!d§:Number = 2000;
      
      private var §]!N§:Number = 0;
      
      private var §,![§:Number = 0;
      
      private var §9"9§:Boolean = false;
      
      private var §4a§:§6!K§;
      
      public var mAnimationRatio:Number = 0;
      
      public function §8R§(param1:§8"=§, param2:Sprite, param3:b2World, param4:§'!S§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         this.§-"-§ = param1;
         sprite.scaleX = -sprite.scaleX;
         §@"M§.§set §(§2!p§,§]j§,§%[§);
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         return super.applyDamage(param1,param2 && !param5,param3,param4,param5,param6);
      }
      
      override public function update(param1:Number) : void
      {
         var _loc2_:b2Vec2 = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:b2Vec2 = null;
         var _loc7_:§2"V§ = null;
         this.§`!d§ -= param1;
         if(!this.§9"9§ && this.§`!d§ <= §@F§ && this.§,![§ <= 0)
         {
            this.§9"9§ = true;
            this.§<!-§();
            §@"M§.§3"C§("Sound_Snow_Cannon_Charge",§2!p§);
         }
         if(this.§`!d§ <= this.§]!N§)
         {
            _loc2_ = getBody().GetPosition();
            _loc3_ = getBody().GetAngle();
            _loc4_ = Math.cos(_loc3_);
            _loc5_ = Math.sin(_loc3_);
            _loc6_ = new b2Vec2(_loc2_.x + _loc4_ * this.§7!M§,_loc2_.y + _loc5_ * this.§7!M§);
            _loc3_ = §[!8§.radiansToDegres(_loc3_) + 180;
            (_loc7_ = this.§-"-§.addObject("MISC_FB_HEARTCANNON_SHOT",_loc6_.x,_loc6_.y,_loc3_,false,false,false,1) as §2"V§).getBody().SetLinearVelocity(new b2Vec2(_loc4_ * §5e§,_loc5_ * §5e§));
            if(this.§]!N§ == 0)
            {
               §@"M§.§3"C§("Sound_Snow_Cannon_Shoot_" + Math.round(Math.random() * 2 + 1),§2!p§);
               §?l§.§'h§.particles.§@6§("SMOKE_CANNONCLOUD_VALENTINE",§0i§.§^"X§,§6!O§.PARTICLE_GROUP_GAME_EFFECTS,§0i§.PARTICLE_TYPE_KINETIC_PARTICLE,_loc6_.x,_loc6_.y,2000,"",§0i§.§?"Z§,0,0,0,0,1,1,true);
            }
            this.§]!N§ -= this.§<!_§;
            if(this.§]!N§ <= -(this.§<!_§ * this.§ "K§))
            {
               this.§`!d§ = §'!X§;
               this.§]!N§ = 0;
               this.§9"9§ = false;
            }
         }
      }
      
      override public function shouldUpdate() : Boolean
      {
         return true;
      }
      
      private function §<!-§() : void
      {
         if(!this.§4a§)
         {
            this.§4a§ = §0W§.§&"5§.§%G§(§0W§.§&"5§.§]!r§(this,{"mAnimationRatio":§#!P§},{"mAnimationRatio":0},§'e§ * 0.25,§0W§.§[!Z§),§0W§.§&"5§.§]!r§(this,{},{},§'e§ * 0.65,§0W§.§[!Z§),§0W§.§&"5§.§]!r§(this,{"mAnimationRatio":1},{"mAnimationRatio":§#!P§},§'e§ * 0.25,§0W§.§[!Z§));
            this.§4a§.onComplete = this.§0"Y§;
            this.§4a§.play();
            this.§,![§ = §@F§;
         }
      }
      
      private function §0"Y§() : void
      {
         this.mAnimationRatio = 0;
         this.§4a§ = null;
      }
      
      override protected function updateSpecialAnimation(param1:Number) : Boolean
      {
         if(!this.§4a§)
         {
            return false;
         }
         this.§,![§ -= param1;
         return true;
      }
      
      override public function getSpecialAnimationProgress() : Number
      {
         if(!this.§4a§)
         {
            return 0;
         }
         return this.mAnimationRatio;
      }
      
      override public function getSpecialAnimationTimeLeft() : Number
      {
         return this.§,![§;
      }
   }
}
