package §;!=§
{
   import § !N§.§5"?§;
   import §'#K§.b2FilterData;
   import §'#K§.b2World;
   import §,#e§.Sprite;
   import §04§.b2Vec2;
   import §3"V§.§ b§;
   import §7"T§.§7b§;
   import §7"o§.§##P§;
   import §7"o§.§=,§;
   import §8#K§.§&2§;
   import §?#z§.§]$?§;
   
   public class §'$,§ extends §>"G§
   {
      
      private static var §'l§:int = -1;
      
      public static const §2!x§:uint = 3000;
      
      public static const §2#'§:uint = 2000;
      
      public static const §22§:uint = 50;
      
      public static const §9"8§:String = "shoot";
      
      private static const §8#X§:uint = 8;
      
      private static const §%!]§:Number = 137.5;
      
      public static const §3L§:uint = §8#X§ * §%!]§;
      
      public static const §@!q§:Number = §3L§ / 1000;
      
      private static const §@!a§:String = "CannonSounds";
      
      private static const §5#X§:int = 20;
      
      private static const §2#X§:Number = 0.1;
      
      public static var §&$2§:String = "SMOKE_CANNONCLOUD";
      
      public static var §do§:String = "MISC_FB_SHOT_CANNON";
       
      
      private const §7#W§:Number = 3.2;
      
      private const §?#7§:uint = 3;
      
      private const §=#9§:uint = 150;
      
      private var §^3§:Number = 2000;
      
      private var §3!U§:Number = 0;
      
      private var §5"J§:Number = 0;
      
      private var §#!@§:Boolean = false;
      
      private var §+"L§:int;
      
      public function §'$,§(param1:Sprite, param2:§7b§, param3:b2World, param4:§&2§, param5:§5"?§, param6:Number)
      {
         super(param1,param2,param3,param4,param5,param6);
         this.§5"J§ = 0;
         § b§.§%#C§(§@!a§,§5#X§,§2#X§);
         this.§+"L§ = §'l§--;
         if(§'l§ == int.MIN_VALUE)
         {
            §'l§ = -1;
         }
         var _loc7_:b2FilterData;
         (_loc7_ = new b2FilterData()).§<C§ = this.§+"L§;
         getBody().GetFixtureList().SetFilterData(_loc7_);
      }
      
      override public function update(param1:Number, param2:§]!m§) : void
      {
         var _loc3_:b2Vec2 = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:b2Vec2 = null;
         var _loc8_:§@#^§ = null;
         super.update(param1,param2);
         if(!§]$?§.§2#§.§>#Y§)
         {
            return;
         }
         this.§^3§ -= param1;
         if(this.§5"J§ > 0)
         {
            this.§5"J§ -= param1;
         }
         if(!this.§#!@§ && this.§^3§ <= §3L§ && this.§5"J§ <= 0)
         {
            this.§#!@§ = true;
            this.§5"J§ = §3L§;
            §]$"§.setAnimation(§9"8§,false);
            § b§.playSound("ABF_11_Water_Cannon_Load",§@!a§);
         }
         if(this.§^3§ <= this.§3!U§)
         {
            if(param2)
            {
               _loc3_ = getBody().GetPosition();
               _loc4_ = getBody().GetAngle();
               _loc5_ = Math.cos(_loc4_);
               _loc6_ = Math.sin(_loc4_);
               _loc7_ = new b2Vec2(_loc3_.x + _loc5_ * this.§7#W§,_loc3_.y + _loc6_ * this.§7#W§);
               _loc4_ = this.§`"F§(_loc4_) + 180;
               (_loc8_ = param2.addObject(§do§,_loc7_.x,_loc7_.y,_loc4_,§ !i§.ID_NEXT_FREE,false,false,false,1) as §@#^§).§]#"§ = this;
               _loc8_.§#!-§(this.§+"L§);
               _loc8_.shoot(_loc5_ * §22§,_loc6_ * §22§);
               § b§.playSound("ABF_11_Water_Cannon_Shot",§@!a§);
               if(this.§3!U§ == 0)
               {
                  §]$?§.§2#§.particles.addSimpleParticle(§&$2§,§=,§.§%!m§,§##P§.PARTICLE_GROUP_GAME_EFFECTS,§=,§.PARTICLE_TYPE_KINETIC_PARTICLE,_loc7_.x,_loc7_.y,1000,"",§=,§.§ a§,0,0,0,0,0.5,8,true);
               }
            }
            this.§3!U§ -= this.§=#9§;
            if(this.§3!U§ <= -(this.§=#9§ * this.§?#7§))
            {
               this.§^3§ = §2!x§;
               this.§3!U§ = 0;
               this.§#!@§ = false;
            }
         }
      }
      
      private function §`"F§(param1:Number) : Number
      {
         return (360 + param1 * 180 / Math.PI % 360) % 360;
      }
      
      override public function isDamageAwardingScore() : Boolean
      {
         return true;
      }
      
      override protected function addDestructionParticles(param1:§]!m§) : void
      {
         param1.addParticle(§=,§.§%!m§,§##P§.PARTICLE_GROUP_GAME_EFFECTS,§=,§.PARTICLE_TYPE_STATIC_PARTICLE,getBody().GetPosition().x,getBody().GetPosition().y - 1,2000,"",§=,§.§ a§,0,0,0,0,2);
      }
      
      override protected function normalize() : void
      {
         if(this.§5"J§ > 0)
         {
            return;
         }
         super.normalize();
      }
   }
}
