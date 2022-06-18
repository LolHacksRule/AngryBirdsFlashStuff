package §^0§
{
   import § "v§.§4$4§;
   import §#Z§.Sprite;
   import §%$0§.§2#Z§;
   import §%$0§.§`#I§;
   import §+!n§.§+!p§;
   import §-!j§.§-"8§;
   import §3#h§.b2FilterData;
   import §3#h§.b2World;
   import §6!R§.b2Vec2;
   import §9#M§.§,`§;
   import §@"v§.§@$<§;
   
   public class §0!P§ extends §=Q§
   {
      
      private static var §8!S§:int = -1;
      
      public static const §&#E§:uint = 3000;
      
      public static const §8!Z§:uint = 2000;
      
      public static const §"",§:uint = 50;
      
      public static const §"$ §:String = "shoot";
      
      private static const §0$ §:uint = 8;
      
      private static const §3#L§:Number = 137.5;
      
      public static const §#"Z§:uint = §0$ § * §3#L§;
      
      public static const §0#f§:Number = §#"Z§ / 1000;
      
      private static const §'$6§:String = "CannonSounds";
      
      private static const §1D§:int = 20;
      
      private static const §<#2§:Number = 0.1;
      
      public static var §<#I§:String = "SMOKE_CANNONCLOUD";
      
      public static var §,!?§:String = "MISC_FB_SHOT_CANNON";
       
      
      private const §,"T§:Number = 3.2;
      
      private const §"$=§:uint = 3;
      
      private const §=$ §:uint = 150;
      
      private var §""r§:Number = 2000;
      
      private var §1^§:Number = 0;
      
      private var §`$!§:Number = 0;
      
      private var §+#Z§:Boolean = false;
      
      private var §7#r§:int;
      
      public function §0!P§(param1:Sprite, param2:§,`§, param3:b2World, param4:§-"8§, param5:§@$<§, param6:Number)
      {
         super(param1,param2,param3,param4,param5,param6);
         this.§`$!§ = 0;
         §4$4§.§<!A§(§'$6§,§1D§,§<#2§);
         this.§7#r§ = §8!S§--;
         if(§8!S§ == int.MIN_VALUE)
         {
            §8!S§ = -1;
         }
         var _loc7_:b2FilterData;
         (_loc7_ = new b2FilterData()).§;!^§ = this.§7#r§;
         getBody().GetFixtureList().SetFilterData(_loc7_);
      }
      
      override public function update(param1:Number, param2:§>"T§) : void
      {
         var _loc3_:b2Vec2 = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:b2Vec2 = null;
         var _loc8_:§3I§ = null;
         super.update(param1,param2);
         if(!§+!p§.§`?§.§`"A§)
         {
            return;
         }
         this.§""r§ -= param1;
         if(this.§`$!§ > 0)
         {
            this.§`$!§ -= param1;
         }
         if(!this.§+#Z§ && this.§""r§ <= §#"Z§ && this.§`$!§ <= 0)
         {
            this.§+#Z§ = true;
            this.§`$!§ = §#"Z§;
            §-"p§.setAnimation(§"$ §,false);
            §4$4§.playSound("ABF_11_Water_Cannon_Load",§'$6§);
         }
         if(this.§""r§ <= this.§1^§)
         {
            if(param2)
            {
               _loc3_ = getBody().GetPosition();
               _loc4_ = getBody().GetAngle();
               _loc5_ = Math.cos(_loc4_);
               _loc6_ = Math.sin(_loc4_);
               _loc7_ = new b2Vec2(_loc3_.x + _loc5_ * this.§,"T§,_loc3_.y + _loc6_ * this.§,"T§);
               _loc4_ = this.§#$=§(_loc4_) + 180;
               (_loc8_ = param2.addObject(§,!?§,_loc7_.x,_loc7_.y,_loc4_,§%"^§.ID_NEXT_FREE,false,false,false,1) as §3I§).§^8§ = this;
               _loc8_.§#n§(this.§7#r§);
               _loc8_.shoot(_loc5_ * §"",§,_loc6_ * §"",§);
               §4$4§.playSound("ABF_11_Water_Cannon_Shot",§'$6§);
               if(this.§1^§ == 0)
               {
                  §+!p§.§`?§.particles.addSimpleParticle(§<#I§,§`#I§.§1!h§,§2#Z§.PARTICLE_GROUP_GAME_EFFECTS,§`#I§.PARTICLE_TYPE_KINETIC_PARTICLE,_loc7_.x,_loc7_.y,1000,"",§`#I§.§&#p§,0,0,0,0,0.5,8,true);
               }
            }
            this.§1^§ -= this.§=$ §;
            if(this.§1^§ <= -(this.§=$ § * this.§"$=§))
            {
               this.§""r§ = §&#E§;
               this.§1^§ = 0;
               this.§+#Z§ = false;
            }
         }
      }
      
      private function §#$=§(param1:Number) : Number
      {
         return (360 + param1 * 180 / Math.PI % 360) % 360;
      }
      
      override public function isDamageAwardingScore() : Boolean
      {
         return true;
      }
      
      override protected function addDestructionParticles(param1:§>"T§) : void
      {
         param1.addParticle(§`#I§.§1!h§,§2#Z§.PARTICLE_GROUP_GAME_EFFECTS,§`#I§.PARTICLE_TYPE_STATIC_PARTICLE,getBody().GetPosition().x,getBody().GetPosition().y - 1,2000,"",§`#I§.§&#p§,0,0,0,0,2);
      }
      
      override protected function normalize() : void
      {
         if(this.§`$!§ > 0)
         {
            return;
         }
         super.normalize();
      }
   }
}
