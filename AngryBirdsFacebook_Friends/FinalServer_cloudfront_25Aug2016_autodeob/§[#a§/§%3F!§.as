package §[#a§
{
   import §,#L§.§!#%§;
   import §0m§.b2Vec2;
   import §8§.§#$+§;
   import §9$§.Sprite;
   import §=!7§.§5"6§;
   import §=!7§.§=$4§;
   import §=#n§.b2FilterData;
   import §=#n§.b2World;
   import §?§.§>"$§;
   import §@"§.§`"W§;
   import §`#C§.§8K§;
   
   public class §?!§ extends §="@§
   {
      
      private static var §4S§:int = -1;
      
      public static const §+"b§:uint = 3000;
      
      public static const §2"c§:uint = 2000;
      
      public static const §!8§:uint = 50;
      
      public static const §2c§:String = "shoot";
      
      private static const §4!>§:uint = 8;
      
      private static const §2"q§:Number = 137.5;
      
      public static const §%!K§:uint = §4!>§ * §2"q§;
      
      public static const §'f§:Number = §%!K§ / 1000;
      
      private static const §["§:String = "CannonSounds";
      
      private static const §-"[§:int = 20;
      
      private static const §<"Y§:Number = 0.1;
      
      public static var §[$;§:String = "SMOKE_CANNONCLOUD";
      
      public static var §?"l§:String = "Sound_Water_Cannon_Charge";
      
      public static var §9!>§:String = "Sound_Water_Cannon_Shot";
      
      public static var §+#h§:String = "MISC_FB_SHOT_CANNON";
       
      
      private const §#@§:Number = 3.2;
      
      private const §9$'§:uint = 3;
      
      private const §=w§:uint = 150;
      
      private var §-#i§:Number = 2000;
      
      private var §]"D§:Number = 0;
      
      private var §-!Z§:Number = 0;
      
      private var §,e§:Boolean = false;
      
      private var §,;§:int;
      
      public function §?!§(param1:Sprite, param2:§`"W§, param3:b2World, param4:§8K§, param5:§!#%§, param6:Number)
      {
         super(param1,param2,param3,param4,param5,param6);
         this.§-!Z§ = 0;
         §#$+§.§9"]§(§["§,§-"[§,§<"Y§);
         this.§,;§ = §4S§--;
         if(§4S§ == int.MIN_VALUE)
         {
            §4S§ = -1;
         }
         var _loc7_:b2FilterData;
         (_loc7_ = new b2FilterData()).§="%§ = this.§,;§;
         getBody().GetFixtureList().SetFilterData(_loc7_);
      }
      
      override public function applyDamage(param1:Number, param2:§7!O§, param3:§="@§, param4:Boolean = true) : Number
      {
         return super.applyDamage(param1,param2,param3,param4);
      }
      
      override public function update(param1:Number, param2:§7!O§) : void
      {
         var _loc3_:b2Vec2 = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:b2Vec2 = null;
         var _loc8_:§7#D§ = null;
         super.update(param1,param2);
         if(!§>"$§.§3#'§.§?"x§)
         {
            return;
         }
         this.§-#i§ -= param1;
         if(this.§-!Z§ > 0)
         {
            this.§-!Z§ -= param1;
         }
         if(!this.§,e§ && this.§-#i§ <= §%!K§ && this.§-!Z§ <= 0)
         {
            this.§,e§ = true;
            this.§-!Z§ = §%!K§;
            §'"s§.setAnimation(§2c§,false);
            §#$+§.playSound(§?"l§,§["§);
         }
         if(this.§-#i§ <= this.§]"D§)
         {
            if(param2)
            {
               _loc3_ = getBody().GetPosition();
               _loc4_ = getBody().GetAngle();
               _loc5_ = Math.cos(_loc4_);
               _loc6_ = Math.sin(_loc4_);
               _loc7_ = new b2Vec2(_loc3_.x + _loc5_ * this.§#@§,_loc3_.y + _loc6_ * this.§#@§);
               _loc4_ = this.§3#+§(_loc4_) + 180;
               (_loc8_ = param2.addObject(§+#h§,_loc7_.x,_loc7_.y,_loc4_,§6"[§.ID_NEXT_FREE,false,false,false,1) as §7#D§).§;"W§ = this;
               _loc8_.§>!_§(this.§,;§);
               _loc8_.shoot(_loc5_ * §!8§,_loc6_ * §!8§);
               §#$+§.playSound(§9!>§,§["§);
               if(this.§]"D§ == 0)
               {
                  §>"$§.§3#'§.particles.addSimpleParticle(§[$;§,§=$4§.§<#h§,§5"6§.PARTICLE_GROUP_GAME_EFFECTS,§=$4§.PARTICLE_TYPE_KINETIC_PARTICLE,_loc7_.x,_loc7_.y,1000,"",§=$4§.§-!0§,0,0,0,0,0.5,8,true);
               }
            }
            this.§]"D§ -= this.§=w§;
            if(this.§]"D§ <= -(this.§=w§ * this.§9$'§))
            {
               this.§-#i§ = §+"b§;
               this.§]"D§ = 0;
               this.§,e§ = false;
            }
         }
      }
      
      private function §3#+§(param1:Number) : Number
      {
         return (360 + param1 * 180 / Math.PI % 360) % 360;
      }
      
      override public function isDamageAwardingScore() : Boolean
      {
         return true;
      }
      
      override protected function addDestructionParticles(param1:§7!O§) : void
      {
         param1.addParticle(§=$4§.§<#h§,§5"6§.PARTICLE_GROUP_GAME_EFFECTS,§=$4§.§;";§,getBody().GetPosition().x,getBody().GetPosition().y - 1,2000,"",§=$4§.§-!0§,0,0,0,0,2);
      }
      
      override protected function normalize() : void
      {
         if(this.§-!Z§ > 0)
         {
            return;
         }
         super.normalize();
      }
   }
}
