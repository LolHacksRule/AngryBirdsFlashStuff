package §8§#8
{
   import § "%§.b2Vec2;
   import §!'§.§@>§;
   import §!'§.§[p§;
   import §4"O§.b2FilterData;
   import §4"O§.b2World;
   import §8"L§.§4U§;
   import §;#D§.§3#U§;
   import §>M§.§["z§;
   import §@!M§.§!"p§;
   import §^"S§.Sprite;
   import §`"8§.§0$2§;
   
   public class §;#E§ extends §4!y§
   {
      
      private static var §1"M§:int = -1;
      
      public static const §`!%§:uint = 3000;
      
      public static const §7!m§:uint = 2000;
      
      public static const §<$=§:uint = 50;
      
      public static const §9"9§:String = "shoot";
      
      private static const §%8§:uint = 8;
      
      private static const §+"P§:Number = 137.5;
      
      public static const §&!q§:uint = §%8§ * §+"P§;
      
      public static const §try §:Number = §&!q§ / 1000;
      
      private static const §4"G§:String = "CannonSounds";
      
      private static const §#$$§:int = 20;
      
      private static const § !8§:Number = 0.1;
      
      public static var §,#M§:String = "SMOKE_CANNONCLOUD";
      
      public static var §-!b§:String = "MISC_FB_SHOT_CANNON";
       
      
      private const §]#^§:Number = 3.2;
      
      private const §'$%§:uint = 3;
      
      private const §?"!§:uint = 150;
      
      private var §&"]§:Number = 2000;
      
      private var §@!y§:Number = 0;
      
      private var §-#>§:Number = 0;
      
      private var §-_§:Boolean = false;
      
      private var §];§:int;
      
      public function §;#E§(param1:Sprite, param2:§0$2§, param3:b2World, param4:§4U§, param5:§["z§, param6:Number)
      {
         super(param1,param2,param3,param4,param5,param6);
         this.§-#>§ = 0;
         §!"p§.§5#4§(§4"G§,§#$$§,§ !8§);
         this.§];§ = §1"M§--;
         if(§1"M§ == int.MIN_VALUE)
         {
            §1"M§ = -1;
         }
         var _loc7_:b2FilterData;
         (_loc7_ = new b2FilterData()).§]#s§ = this.§];§;
         getBody().GetFixtureList().SetFilterData(_loc7_);
      }
      
      override public function applyDamage(param1:Number, param2:§&#V§, param3:§4!y§, param4:Boolean = true) : Number
      {
         return super.applyDamage(param1,param2,param3,param4);
      }
      
      override public function update(param1:Number, param2:§&#V§) : void
      {
         var _loc3_:b2Vec2 = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:b2Vec2 = null;
         var _loc8_:§?#d§ = null;
         super.update(param1,param2);
         if(!§3#U§.§#$4§.§]!`§)
         {
            return;
         }
         this.§&"]§ -= param1;
         if(this.§-#>§ > 0)
         {
            this.§-#>§ -= param1;
         }
         if(!this.§-_§ && this.§&"]§ <= §&!q§ && this.§-#>§ <= 0)
         {
            this.§-_§ = true;
            this.§-#>§ = §&!q§;
            §9"6§.setAnimation(§9"9§,false);
            §!"p§.playSound("ABF_11_Water_Cannon_Load",§4"G§);
         }
         if(this.§&"]§ <= this.§@!y§)
         {
            if(param2)
            {
               _loc3_ = getBody().GetPosition();
               _loc4_ = getBody().GetAngle();
               _loc5_ = Math.cos(_loc4_);
               _loc6_ = Math.sin(_loc4_);
               _loc7_ = new b2Vec2(_loc3_.x + _loc5_ * this.§]#^§,_loc3_.y + _loc6_ * this.§]#^§);
               _loc4_ = this.§^#A§(_loc4_) + 180;
               (_loc8_ = param2.addObject(§-!b§,_loc7_.x,_loc7_.y,_loc4_,§!#L§.ID_NEXT_FREE,false,false,false,1) as §?#d§).§]!9§ = this;
               _loc8_.§-"@§(this.§];§);
               _loc8_.shoot(_loc5_ * §<$=§,_loc6_ * §<$=§);
               §!"p§.playSound("ABF_11_Water_Cannon_Shot",§4"G§);
               if(this.§@!y§ == 0)
               {
                  §3#U§.§#$4§.particles.addSimpleParticle(§,#M§,§@>§.§2c§,§[p§.PARTICLE_GROUP_GAME_EFFECTS,§@>§.PARTICLE_TYPE_KINETIC_PARTICLE,_loc7_.x,_loc7_.y,1000,"",§@>§.§&_§,0,0,0,0,0.5,8,true);
               }
            }
            this.§@!y§ -= this.§?"!§;
            if(this.§@!y§ <= -(this.§?"!§ * this.§'$%§))
            {
               this.§&"]§ = §`!%§;
               this.§@!y§ = 0;
               this.§-_§ = false;
            }
         }
      }
      
      private function §^#A§(param1:Number) : Number
      {
         return (360 + param1 * 180 / Math.PI % 360) % 360;
      }
      
      override public function isDamageAwardingScore() : Boolean
      {
         return true;
      }
      
      override protected function addDestructionParticles(param1:§&#V§) : void
      {
         param1.addParticle(§@>§.§2c§,§[p§.PARTICLE_GROUP_GAME_EFFECTS,§@>§.PARTICLE_TYPE_STATIC_PARTICLE,getBody().GetPosition().x,getBody().GetPosition().y - 1,2000,"",§@>§.§&_§,0,0,0,0,2);
      }
      
      override protected function normalize() : void
      {
         if(this.§-#>§ > 0)
         {
            return;
         }
         super.normalize();
      }
   }
}
