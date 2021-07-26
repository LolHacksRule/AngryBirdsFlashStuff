package §3!#§
{
   import §&!Y§.b2World;
   import §0!2§.§5"L§;
   import §2E§.§!"&§;
   import §2E§.§&p§;
   import §5!G§.§&2§;
   import §7F§.b2Vec2;
   import §9"=§.§3!p§;
   import §9"=§.§4! §;
   import §>s§.§+m§;
   import §]!v§.Sprite;
   
   public class §>!j§ extends §5"A§
   {
      
      public static const §>!z§:uint = 3000;
      
      public static const §&!6§:uint = 2000;
      
      public static const §'v§:uint = 50;
      
      private static const §8!0§:uint = 8;
      
      private static const §+"8§:Number = 3 / §8!0§;
      
      public static const §=G§:uint = 1500;
      
      public static const §%R§:Number = §=G§ / 1000;
      
      private static const §+=§:String = "CannonSounds";
      
      private static const §3E§:int = 1;
      
      private static const §0!^§:Number = 1;
       
      
      private const §#!@§:Number = 4;
      
      private const §0!P§:uint = 3;
      
      private const §6!`§:uint = 150;
      
      private var §8!3§:§04§;
      
      private var §&!`§:Number = 2000;
      
      private var §5"1§:Number = 0;
      
      private var §+"D§:Number = 0;
      
      private var §[!2§:Boolean = false;
      
      private var §%!&§:§!"&§;
      
      public var mAnimationRatio:Number = 0;
      
      public function §>!j§(param1:§04§, param2:Sprite, param3:b2World, param4:§5"L§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         this.§8!3§ = param1;
         sprite.scaleX = -sprite.scaleX;
         §+m§.§9!g§(§+=§,§3E§,§0!^§);
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
         var _loc7_:§=o§ = null;
         this.§&!`§ -= param1;
         if(!this.§[!2§ && this.§&!`§ <= §=G§ && this.§+"D§ <= 0)
         {
            this.§[!2§ = true;
            this.§'G§();
            §+m§.§]!N§("Sound_Snow_Cannon_Charge",§+=§);
         }
         if(this.§&!`§ <= this.§5"1§)
         {
            _loc2_ = §`!y§().GetPosition();
            _loc3_ = §`!y§().GetAngle();
            _loc4_ = Math.cos(_loc3_);
            _loc5_ = Math.sin(_loc3_);
            _loc6_ = new b2Vec2(_loc2_.x + _loc4_ * this.§#!@§,_loc2_.y + _loc5_ * this.§#!@§);
            (_loc7_ = this.§8!3§.addObject("MISC_FB_ROLLING_SNOWBALL",_loc6_.x,_loc6_.y,0,false,false,false,0.5) as §=o§).§5"F§(true);
            _loc7_.§`!y§().SetLinearVelocity(new b2Vec2(_loc4_ * §'v§,_loc5_ * §'v§));
            if(this.§5"1§ == 0)
            {
               §+m§.§]!N§("Sound_Snow_Cannon_Shoot_" + Math.round(Math.random() * 2 + 1),§+=§);
               §&2§.§],§.particles.§-!O§("SMOKE_CANNONCLOUD",§4! §.§+Y§,§3!p§.PARTICLE_GROUP_GAME_EFFECTS,§4! §.PARTICLE_TYPE_KINETIC_PARTICLE,_loc6_.x,_loc6_.y,2000,"",§4! §.§-p§,0,0,0,0,0.5,1,true);
            }
            this.§5"1§ -= this.§6!`§;
            if(this.§5"1§ <= -(this.§6!`§ * this.§0!P§))
            {
               this.§&!`§ = §>!z§;
               this.§5"1§ = 0;
               this.§[!2§ = false;
            }
         }
      }
      
      private function §%e§(param1:b2Vec2) : void
      {
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:b2Vec2 = null;
         var _loc10_:Number = NaN;
         var _loc2_:Number = param1.x * (this.§#!@§ - 0.75);
         var _loc3_:Number = param1.y * (this.§#!@§ - 0.75);
         var _loc4_:b2Vec2;
         (_loc4_ = §`!y§().GetPosition().Copy()).§?!;§(new b2Vec2(_loc2_,_loc3_));
         var _loc5_:Number;
         if((_loc5_ = Math.atan2(param1.y,param1.x)) < 0)
         {
            _loc5_ += Math.PI * 2;
         }
         var _loc6_:int = 0;
         while(_loc6_ < 15)
         {
            _loc7_ = Math.random() * 10 + 15;
            _loc8_ = Math.random() * 0.5 - 0.25;
            _loc9_ = new b2Vec2(_loc4_.x + _loc3_ * _loc8_,_loc4_.y + -_loc2_ * _loc8_);
            _loc10_ = _loc5_ + (Math.PI / 3 * Math.random() - Math.PI / 6);
            §&2§.§],§.particles.§-!O§("PARTICLE_SNOW_" + Math.round(Math.random() * 4 + 3),§4! §.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§3!p§.PARTICLE_GROUP_GAME_EFFECTS,§4! §.PARTICLE_TYPE_KINETIC_PARTICLE,_loc9_.x,_loc9_.y,500 + Math.random() * 750,"",0,Math.cos(_loc10_) * _loc7_,Math.sin(_loc10_) * _loc7_,10,Math.random() * 180,1);
            _loc6_++;
         }
      }
      
      override public function shouldUpdate() : Boolean
      {
         return true;
      }
      
      private function §'G§() : void
      {
         if(!this.§%!&§)
         {
            this.§%!&§ = §&p§.§1[§.§3"3§(§&p§.§1[§.§7!3§(this,{"mAnimationRatio":§+"8§},{"mAnimationRatio":0},§%R§ * 0.25,§&p§.§-Z§),§&p§.§1[§.§7!3§(this,{},{},§%R§ * 0.65,§&p§.§-Z§),§&p§.§1[§.§7!3§(this,{"mAnimationRatio":1},{"mAnimationRatio":§+"8§},§%R§ * 0.25,§&p§.§-Z§));
            this.§%!&§.onComplete = this.§'!A§;
            this.§%!&§.play();
            this.§+"D§ = §=G§;
         }
      }
      
      private function §'!A§() : void
      {
         this.mAnimationRatio = 0;
         this.§%!&§ = null;
      }
      
      override protected function updateSpecialAnimation(param1:Number) : Boolean
      {
         if(!this.§%!&§)
         {
            return false;
         }
         this.§+"D§ -= param1;
         return true;
      }
      
      override public function getSpecialAnimationProgress() : Number
      {
         if(!this.§%!&§)
         {
            return 0;
         }
         return this.mAnimationRatio;
      }
      
      override public function getSpecialAnimationTimeLeft() : Number
      {
         return this.§+"D§;
      }
   }
}
