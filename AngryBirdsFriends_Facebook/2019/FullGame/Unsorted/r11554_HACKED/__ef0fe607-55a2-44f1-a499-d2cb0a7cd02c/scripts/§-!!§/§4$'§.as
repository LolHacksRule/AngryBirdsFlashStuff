package §-!!§
{
   import §!6§.Sprite;
   import §%A§.§'Y§;
   import §%A§.§>F§;
   import §8#t§.b2FilterData;
   import §8#t§.b2World;
   import §9$+§.§9"4§;
   import §=!2§.§%"T§;
   import §>"9§.§[#%§;
   import §?§.§,Y§;
   import §^"[§.§4!8§;
   import §`# §.b2Vec2;
   
   public class §4$'§ extends §8"J§
   {
      
      private static var §@$,§:int = -1;
      
      public static const §5!V§:uint = 3000;
      
      public static const §8m§:uint = 2000;
      
      public static const §+"Q§:uint = 50;
      
      public static const §%">§:String = "shoot";
      
      private static const §-"B§:uint = 8;
      
      private static const §@"h§:Number = 137.5;
      
      public static const §?"-§:uint = §-"B§ * §@"h§;
      
      public static const §-#F§:Number = §?"-§ / 1000;
      
      private static const §8#6§:String = "CannonSounds";
      
      private static const §]!S§:int = 20;
      
      private static const §3!r§:Number = 0.1;
      
      public static var §]"c§:String = "SMOKE_CANNONCLOUD";
      
      public static var §4s§:String = "MISC_FB_SHOT_CANNON";
       
      
      private const §1#'§:Number = 3.2;
      
      private const §'"&§:uint = 3;
      
      private const §9h§:uint = 150;
      
      private var §=#l§:Number = 2000;
      
      private var §0#T§:Number = 0;
      
      private var §0!M§:Number = 0;
      
      private var §!#E§:Boolean = false;
      
      private var §2F§:int;
      
      public function §4$'§(param1:Sprite, param2:§4!8§, param3:b2World, param4:§,Y§, param5:§9"4§, param6:Number)
      {
         super(param1,param2,param3,param4,param5,param6);
         this.§0!M§ = 0;
         §[#%§.§8!3§(§8#6§,§]!S§,§3!r§);
         this.§2F§ = §@$,§--;
         if(§@$,§ == int.MIN_VALUE)
         {
            §@$,§ = -1;
         }
         var _loc7_:b2FilterData;
         (_loc7_ = new b2FilterData()).§?#0§ = this.§2F§;
         getBody().GetFixtureList().SetFilterData(_loc7_);
      }
      
      override public function update(param1:Number, param2:§ #'§) : void
      {
         var _loc3_:b2Vec2 = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:b2Vec2 = null;
         var _loc8_:§?Z§ = null;
         super.update(param1,param2);
         if(!§%"T§.§;`§.§=#S§)
         {
            return;
         }
         this.§=#l§ -= param1;
         if(this.§0!M§ > 0)
         {
            this.§0!M§ -= param1;
         }
         if(!this.§!#E§ && this.§=#l§ <= §?"-§ && this.§0!M§ <= 0)
         {
            this.§!#E§ = true;
            this.§0!M§ = §?"-§;
            §]+§.setAnimation(§%">§,false);
            §[#%§.playSound("ABF_11_Water_Cannon_Load",§8#6§);
         }
         if(this.§=#l§ <= this.§0#T§)
         {
            if(param2)
            {
               _loc3_ = getBody().GetPosition();
               _loc4_ = getBody().GetAngle();
               _loc5_ = Math.cos(_loc4_);
               _loc6_ = Math.sin(_loc4_);
               _loc7_ = new b2Vec2(_loc3_.x + _loc5_ * this.§1#'§,_loc3_.y + _loc6_ * this.§1#'§);
               _loc4_ = this.§3#;§(_loc4_) + 180;
               (_loc8_ = param2.addObject(§4s§,_loc7_.x,_loc7_.y,_loc4_,§7S§.ID_NEXT_FREE,false,false,false,1) as §?Z§).§,L§ = this;
               _loc8_.§@N§(this.§2F§);
               _loc8_.shoot(_loc5_ * §+"Q§,_loc6_ * §+"Q§);
               §[#%§.playSound("ABF_11_Water_Cannon_Shot",§8#6§);
               if(this.§0#T§ == 0)
               {
                  §%"T§.§;`§.particles.addSimpleParticle(§]"c§,§'Y§.§>$?§,§>F§.PARTICLE_GROUP_GAME_EFFECTS,§'Y§.PARTICLE_TYPE_KINETIC_PARTICLE,_loc7_.x,_loc7_.y,1000,"",§'Y§.§,"A§,0,0,0,0,0.5,8,true);
               }
            }
            this.§0#T§ -= this.§9h§;
            if(this.§0#T§ <= -(this.§9h§ * this.§'"&§))
            {
               this.§=#l§ = §5!V§;
               this.§0#T§ = 0;
               this.§!#E§ = false;
            }
         }
      }
      
      private function §3#;§(param1:Number) : Number
      {
         return (360 + param1 * 180 / Math.PI % 360) % 360;
      }
      
      override public function isDamageAwardingScore() : Boolean
      {
         return true;
      }
      
      override protected function addDestructionParticles(param1:§ #'§) : void
      {
         param1.addParticle(§'Y§.§>$?§,§>F§.PARTICLE_GROUP_GAME_EFFECTS,§'Y§.PARTICLE_TYPE_STATIC_PARTICLE,getBody().GetPosition().x,getBody().GetPosition().y - 1,2000,"",§'Y§.§,"A§,0,0,0,0,2);
      }
      
      override protected function normalize() : void
      {
         if(this.§0!M§ > 0)
         {
            return;
         }
         super.normalize();
      }
   }
}
