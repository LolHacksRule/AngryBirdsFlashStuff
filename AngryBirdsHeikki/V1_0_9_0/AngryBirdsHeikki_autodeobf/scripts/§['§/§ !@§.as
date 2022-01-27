package §['§
{
   import § d§.§'!"§;
   import §"§.§"@§;
   import §"§.§2z§;
   import §"W§.§!f§;
   import §"W§.§?!T§;
   import §#!f§.Sprite;
   import §>!F§.§9!Z§;
   import §^!Z§.b2World;
   
   public class § !@§ extends §!f§
   {
       
      
      private var §3a§:int;
      
      public function § !@§(param1:§?!T§, param2:Sprite, param3:b2World, param4:§'!"§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         this.§3a§ = 0;
      }
      
      override public function activateSpecialPower(param1:§?!T§) : Boolean
      {
         super.activateSpecialPower(param1);
         return false;
      }
      
      override public function addTrail() : void
      {
         var _loc4_:String = null;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc1_:§'!"§ = §9!Z§.§5!$§;
         if(§>[§ < §&J§ || §"!H§() == null)
         {
            _loc1_.§ !B§(this);
            _loc1_.§ !,§ = false;
            return;
         }
         var _loc2_:Number = x * §'!"§.§#3§;
         var _loc3_:Number = y * §'!"§.§#3§;
         if(_loc1_.§ !,§)
         {
            _loc1_.particles.addParticle(§2z§.§&!J§,§"@§.§,!Y§,§2z§.§?!@§,_loc2_,_loc3_,-1,"",§2z§.§&_§);
            _loc1_.§ !,§ = false;
            §?8§ = 0;
         }
         else if(§[!e§ > 1)
         {
            _loc1_.particles.addParticle(§2z§.§"L§,§"@§.§,!Y§,§2z§.§?!@§,_loc2_,_loc3_,-1,"",§2z§.§&_§);
         }
         else
         {
            _loc4_ = §2z§.PARTICLE_NAME_BIRD_TRAIL1;
            if(§?8§ == 1)
            {
               _loc4_ = §2z§.PARTICLE_NAME_BIRD_TRAIL2;
            }
            else if(§?8§ == 2)
            {
               if(this.§3a§ < 3)
               {
                  _loc4_ = §2z§.§'f§;
                  _loc1_.particles.addParticle(_loc4_,§"@§.§,!Y§,§2z§.§?!@§,_loc2_,_loc3_,-1,"",§2z§.§&_§);
                  ++this.§3a§;
               }
               _loc4_ = §2z§.PARTICLE_NAME_BIRD_TRAIL3;
            }
            §?8§ = (§?8§ + 1) % 3;
            _loc1_.particles.addParticle(_loc4_,§"@§.§,!Y§,§2z§.§?!@§,_loc2_,_loc3_,-1,"",§2z§.§&_§);
         }
         if(Math.random() < §4!S§)
         {
            _loc5_ = -Math.PI / 2;
            _loc6_ = Math.random();
            _loc1_.particles.addParticle(§2z§.§?^§,§"@§.§6^§,§2z§.§<A§,§"!H§().GetPosition().x,§"!H§().GetPosition().y,1250,"",§2z§.§?1§(§]D§),_loc6_ * Math.cos(_loc5_) * scale,-_loc6_ * Math.sin(_loc5_) * scale,5,_loc6_ * 20,Math.sqrt(scale));
         }
      }
   }
}
