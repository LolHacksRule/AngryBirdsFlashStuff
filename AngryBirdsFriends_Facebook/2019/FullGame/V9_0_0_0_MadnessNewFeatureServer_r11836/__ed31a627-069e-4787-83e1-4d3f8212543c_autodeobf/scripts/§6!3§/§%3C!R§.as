package §6!3§
{
   import §'G§.§;D§;
   import §-#X§.§,!B§;
   import §6#H§.Sprite;
   import §7"p§.§6!9§;
   import §7"p§.§<#]§;
   import §8#K§.§3Z§;
   import §?!C§.b2Vec2;
   import §?$<§.§?$>§;
   import §@!S§.b2FilterData;
   import §@!S§.b2World;
   import §`#@§.§7n§;
   
   public class §<!R§ extends §;!U§
   {
      
      private static var §3"^§:int = -1;
      
      public static const §^"N§:uint = 3000;
      
      public static const §<"s§:uint = 2000;
      
      public static const §>>§:uint = 50;
      
      public static const §'"#§:String = "shoot";
      
      private static const §`!C§:uint = 8;
      
      private static const §%i§:Number = 137.5;
      
      public static const §9#<§:uint = §`!C§ * §%i§;
      
      public static const §"m§:Number = §9#<§ / 1000;
      
      private static const §4g§:String = "CannonSounds";
      
      private static const §,$5§:int = 20;
      
      private static const §!!H§:Number = 0.1;
      
      public static var §1!§:String = "SMOKE_CANNONCLOUD";
      
      public static var §,#6§:String = "MISC_FB_SHOT_CANNON";
       
      
      private const §;$§:Number = 3.2;
      
      private const §0#t§:uint = 3;
      
      private const §1!s§:uint = 150;
      
      private var §%!Z§:Number = 2000;
      
      private var §#" §:Number = 0;
      
      private var §"6§:Number = 0;
      
      private var §!$8§:Boolean = false;
      
      private var §&"3§:int;
      
      public function §<!R§(param1:Sprite, param2:§;D§, param3:b2World, param4:§?$>§, param5:§,!B§, param6:Number)
      {
         super(param1,param2,param3,param4,param5,param6);
         this.§"6§ = 0;
         §3Z§.§'#E§(§4g§,§,$5§,§!!H§);
         this.§&"3§ = §3"^§--;
         if(§3"^§ == int.MIN_VALUE)
         {
            §3"^§ = -1;
         }
         var _loc7_:b2FilterData;
         (_loc7_ = new b2FilterData()).§5$8§ = this.§&"3§;
         getBody().GetFixtureList().SetFilterData(_loc7_);
      }
      
      override public function update(param1:Number, param2:§8$B§) : void
      {
         var _loc3_:b2Vec2 = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:b2Vec2 = null;
         var _loc8_:§!"A§ = null;
         super.update(param1,param2);
         if(!§7n§.§6#K§.§2$5§)
         {
            return;
         }
         this.§%!Z§ -= param1;
         if(this.§"6§ > 0)
         {
            this.§"6§ -= param1;
         }
         if(!this.§!$8§ && this.§%!Z§ <= §9#<§ && this.§"6§ <= 0)
         {
            this.§!$8§ = true;
            this.§"6§ = §9#<§;
            §="!§.setAnimation(§'"#§,false);
            §3Z§.playSound("ABF_11_Water_Cannon_Load",§4g§);
         }
         if(this.§%!Z§ <= this.§#" §)
         {
            if(param2)
            {
               _loc3_ = getBody().GetPosition();
               _loc4_ = getBody().GetAngle();
               _loc5_ = Math.cos(_loc4_);
               _loc6_ = Math.sin(_loc4_);
               _loc7_ = new b2Vec2(_loc3_.x + _loc5_ * this.§;$§,_loc3_.y + _loc6_ * this.§;$§);
               _loc4_ = this.§=#F§(_loc4_) + 180;
               (_loc8_ = param2.addObject(§,#6§,_loc7_.x,_loc7_.y,_loc4_,§'!§.ID_NEXT_FREE,false,false,false,1) as §!"A§).§"#v§ = this;
               _loc8_.§!§(this.§&"3§);
               _loc8_.shoot(_loc5_ * §>>§,_loc6_ * §>>§);
               §3Z§.playSound("ABF_11_Water_Cannon_Shot",§4g§);
               if(this.§#" § == 0)
               {
                  §7n§.§6#K§.particles.addSimpleParticle(§1!§,§6!9§.§5!L§,§<#]§.PARTICLE_GROUP_GAME_EFFECTS,§6!9§.PARTICLE_TYPE_KINETIC_PARTICLE,_loc7_.x,_loc7_.y,1000,"",§6!9§.§'s§,0,0,0,0,0.5,8,true);
               }
            }
            this.§#" § -= this.§1!s§;
            if(this.§#" § <= -(this.§1!s§ * this.§0#t§))
            {
               this.§%!Z§ = §^"N§;
               this.§#" § = 0;
               this.§!$8§ = false;
            }
         }
      }
      
      private function §=#F§(param1:Number) : Number
      {
         return (360 + param1 * 180 / Math.PI % 360) % 360;
      }
      
      override public function isDamageAwardingScore() : Boolean
      {
         return true;
      }
      
      override protected function addDestructionParticles(param1:§8$B§) : void
      {
         param1.addParticle(§6!9§.§5!L§,§<#]§.PARTICLE_GROUP_GAME_EFFECTS,§6!9§.PARTICLE_TYPE_STATIC_PARTICLE,getBody().GetPosition().x,getBody().GetPosition().y - 1,2000,"",§6!9§.§'s§,0,0,0,0,2);
      }
      
      override protected function normalize() : void
      {
         if(this.§"6§ > 0)
         {
            return;
         }
         super.normalize();
      }
   }
}
