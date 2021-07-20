package § z§
{
   import § !$§.§7!!§;
   import § !$§.§[!!§;
   import §+d§.b2World;
   import §,!A§.§-q§;
   import §,!A§.§0i§;
   import §6!;§.Sprite;
   import §8O§.§&#§;
   import §9!'§.§0!%§;
   
   public class §"!h§ extends §[!!§
   {
       
      
      private var §,!B§:int;
      
      public function §"!h§(param1:§7!!§, param2:Sprite, param3:b2World, param4:§0!%§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         this.§,!B§ = 0;
      }
      
      override public function activateSpecialPower(param1:§7!!§) : Boolean
      {
         super.activateSpecialPower(param1);
         return false;
      }
      
      override public function addTrail() : void
      {
         var _loc4_:String = null;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc1_:§0!%§ = §&#§.§3!D§;
         if(§6!^§ < §1D§ || §]!2§() == null)
         {
            _loc1_.§+!4§(this);
            _loc1_.§61§ = false;
            return;
         }
         var _loc2_:Number = x * §0!%§.§"m§;
         var _loc3_:Number = y * §0!%§.§"m§;
         if(_loc1_.§61§)
         {
            _loc1_.particles.addParticle(§-q§.§=%§,§0i§.§=R§,§-q§.§#!2§,_loc2_,_loc3_,-1,"",§-q§.§%u§);
            _loc1_.§61§ = false;
            §1!H§ = 0;
         }
         else if(§-!=§ > 1)
         {
            _loc1_.particles.addParticle(§-q§.§0k§,§0i§.§=R§,§-q§.§#!2§,_loc2_,_loc3_,-1,"",§-q§.§%u§);
         }
         else
         {
            _loc4_ = §-q§.PARTICLE_NAME_BIRD_TRAIL1;
            if(§1!H§ == 1)
            {
               _loc4_ = §-q§.PARTICLE_NAME_BIRD_TRAIL2;
            }
            else if(§1!H§ == 2)
            {
               if(this.§,!B§ < 3)
               {
                  _loc4_ = §-q§.§-!L§;
                  _loc1_.particles.addParticle(_loc4_,§0i§.§=R§,§-q§.§#!2§,_loc2_,_loc3_,-1,"",§-q§.§%u§);
                  ++this.§,!B§;
               }
               _loc4_ = §-q§.PARTICLE_NAME_BIRD_TRAIL3;
            }
            §1!H§ = (§1!H§ + 1) % 3;
            _loc1_.particles.addParticle(_loc4_,§0i§.§=R§,§-q§.§#!2§,_loc2_,_loc3_,-1,"",§-q§.§%u§);
         }
         if(Math.random() < §32§)
         {
            _loc5_ = -Math.PI / 2;
            _loc6_ = Math.random();
            _loc1_.particles.addParticle(§-q§.§]!^§,§0i§.§>E§,§-q§.§5[§,§]!2§().GetPosition().x,§]!2§().GetPosition().y,1250,"",§-q§.§]8§(§ [§),_loc6_ * Math.cos(_loc5_) * scale,-_loc6_ * Math.sin(_loc5_) * scale,5,_loc6_ * 20,Math.sqrt(scale));
         }
      }
   }
}
