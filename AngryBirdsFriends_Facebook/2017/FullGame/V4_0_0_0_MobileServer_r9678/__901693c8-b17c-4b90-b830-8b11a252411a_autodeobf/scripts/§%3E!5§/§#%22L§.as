package §>!5§
{
   import §%!9§.b2Vec2;
   import §&!v§.Sprite;
   import §1!+§.b2FilterData;
   import §1!+§.b2World;
   import §1#W§.§!#&§;
   import §6"r§.§!#A§;
   import §6$"§.§]"o§;
   import §7!j§.§8#B§;
   import §7"&§.§!"v§;
   import §^$1§.§2"^§;
   import §^$1§.§7"6§;
   
   public class §#"L§ extends §^"9§
   {
      
      private static var §,!k§:int = -1;
      
      public static const §[!H§:uint = 3000;
      
      public static const §]"?§:uint = 2000;
      
      public static const §]!&§:uint = 50;
      
      public static const §`s§:String = "shoot";
      
      private static const §^#'§:uint = 8;
      
      private static const §>#;§:Number = 137.5;
      
      public static const §="Q§:uint = §^#'§ * §>#;§;
      
      public static const §,!d§:Number = §="Q§ / 1000;
      
      private static const §;#d§:String = "CannonSounds";
      
      private static const §]#k§:int = 20;
      
      private static const §+#L§:Number = 0.1;
      
      public static var §3!Q§:String = "SMOKE_CANNONCLOUD";
      
      public static var §-"%§:String = "MISC_FB_SHOT_CANNON";
       
      
      private const §!m§:Number = 3.2;
      
      private const §,!B§:uint = 3;
      
      private const §[#h§:uint = 150;
      
      private var §-!P§:Number = 2000;
      
      private var §]5§:Number = 0;
      
      private var § #L§:Number = 0;
      
      private var §`!@§:Boolean = false;
      
      private var §7"7§:int;
      
      public function §#"L§(param1:Sprite, param2:§8#B§, param3:b2World, param4:§!"v§, param5:§]"o§, param6:Number)
      {
         super(param1,param2,param3,param4,param5,param6);
         this.§ #L§ = 0;
         §!#&§.§!"k§(§;#d§,§]#k§,§+#L§);
         this.§7"7§ = §,!k§--;
         if(§,!k§ == int.MIN_VALUE)
         {
            §,!k§ = -1;
         }
         var _loc7_:b2FilterData;
         (_loc7_ = new b2FilterData()).§4"Z§ = this.§7"7§;
         getBody().GetFixtureList().SetFilterData(_loc7_);
      }
      
      override public function applyDamage(param1:Number, param2:§-!S§, param3:§^"9§, param4:Boolean = true) : Number
      {
         return super.applyDamage(param1,param2,param3,param4);
      }
      
      override public function update(param1:Number, param2:§-!S§) : void
      {
         var _loc3_:b2Vec2 = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:b2Vec2 = null;
         var _loc8_:§-"I§ = null;
         super.update(param1,param2);
         if(!§!#A§.§#F§.§-#O§)
         {
            return;
         }
         this.§-!P§ -= param1;
         if(this.§ #L§ > 0)
         {
            this.§ #L§ -= param1;
         }
         if(!this.§`!@§ && this.§-!P§ <= §="Q§ && this.§ #L§ <= 0)
         {
            this.§`!@§ = true;
            this.§ #L§ = §="Q§;
            §implements§.setAnimation(§`s§,false);
            §!#&§.playSound("ABF_11_Water_Cannon_Load",§;#d§);
         }
         if(this.§-!P§ <= this.§]5§)
         {
            if(param2)
            {
               _loc3_ = getBody().GetPosition();
               _loc4_ = getBody().GetAngle();
               _loc5_ = Math.cos(_loc4_);
               _loc6_ = Math.sin(_loc4_);
               _loc7_ = new b2Vec2(_loc3_.x + _loc5_ * this.§!m§,_loc3_.y + _loc6_ * this.§!m§);
               _loc4_ = this.§#Z§(_loc4_) + 180;
               (_loc8_ = param2.addObject(§-"%§,_loc7_.x,_loc7_.y,_loc4_,§6#-§.ID_NEXT_FREE,false,false,false,1) as §-"I§).§-"g§ = this;
               _loc8_.§;R§(this.§7"7§);
               _loc8_.shoot(_loc5_ * §]!&§,_loc6_ * §]!&§);
               §!#&§.playSound("ABF_11_Water_Cannon_Shot",§;#d§);
               if(this.§]5§ == 0)
               {
                  §!#A§.§#F§.particles.addSimpleParticle(§3!Q§,§2"^§.§<$+§,§7"6§.PARTICLE_GROUP_GAME_EFFECTS,§2"^§.PARTICLE_TYPE_KINETIC_PARTICLE,_loc7_.x,_loc7_.y,1000,"",§2"^§.§9Z§,0,0,0,0,0.5,8,true);
               }
            }
            this.§]5§ -= this.§[#h§;
            if(this.§]5§ <= -(this.§[#h§ * this.§,!B§))
            {
               this.§-!P§ = §[!H§;
               this.§]5§ = 0;
               this.§`!@§ = false;
            }
         }
      }
      
      private function §#Z§(param1:Number) : Number
      {
         return (360 + param1 * 180 / Math.PI % 360) % 360;
      }
      
      override public function isDamageAwardingScore() : Boolean
      {
         return true;
      }
      
      override protected function addDestructionParticles(param1:§-!S§) : void
      {
         param1.addParticle(§2"^§.§<$+§,§7"6§.PARTICLE_GROUP_GAME_EFFECTS,§2"^§.PARTICLE_TYPE_STATIC_PARTICLE,getBody().GetPosition().x,getBody().GetPosition().y - 1,2000,"",§2"^§.§9Z§,0,0,0,0,2);
      }
      
      override protected function normalize() : void
      {
         if(this.§ #L§ > 0)
         {
            return;
         }
         super.normalize();
      }
   }
}
