package §"W§
{
   import § d§.§'!"§;
   import §"§.§"@§;
   import §"§.§2z§;
   import §#!f§.Sprite;
   import §>!F§.§9!Z§;
   import §^!Z§.b2World;
   
   public class §-n§ extends §;N§
   {
      
      public static const §-m§:int = 1750;
       
      
      private var §?8§:int = 0;
      
      public function §-n§(param1:§?!T§, param2:Sprite, param3:b2World, param4:§'!"§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false, param12:String = "", param13:int = 1)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         §&p§ = param12;
         §&!c§ = param13;
      }
      
      override public function addDestructionParticles(param1:§"@§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:int = 0;
         var _loc3_:int = Math.min(49,Math.max(1,§<!R§(false))) + 1;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§%f§.mW * §'!"§.§#3§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§%f§.mH * §'!"§.§#3§) + Math.random() * -_loc8_ * 2;
            if(§&p§ != "")
            {
               _loc9_ = 1 + Math.floor(Math.random() * §&!c§);
               param1.§9x§(§&p§ + "_" + _loc9_,§2z§.§]-§,§"@§.§6^§,§2z§.§<A§,§"!H§().GetPosition().x + _loc7_,§"!H§().GetPosition().y + _loc8_,§-m§ + Math.random() * 500,"",§?1§(§]D§),4 * Math.cos(_loc6_),-4 * Math.sin(_loc6_),10,4 * 50);
            }
            else
            {
               param1.addParticle(§2z§.§]-§,§"@§.§6^§,§2z§.§<A§,§"!H§().GetPosition().x + _loc7_,§"!H§().GetPosition().y + _loc8_,§-m§ + Math.random() * 500,"",§?1§(§]D§),4 * Math.cos(_loc6_),-4 * Math.sin(_loc6_),10,4 * 50);
            }
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§"@§, param2:int) : void
      {
      }
      
      override public function addTrail() : void
      {
         var _loc1_:§'!"§ = §9!Z§.§5!$§;
         if(§>[§ < §&J§ || §"!H§() == null)
         {
            _loc1_.§ !B§(this);
            _loc1_.§ !,§ = false;
            return;
         }
         var _loc2_:Number = x * §'!"§.§#3§;
         var _loc3_:Number = y * §'!"§.§#3§;
         var _loc4_:String = §2z§.PARTICLE_NAME_BIRD_TRAIL1;
         if(this.§?8§ == 1)
         {
            _loc4_ = §2z§.PARTICLE_NAME_BIRD_TRAIL2;
         }
         else if(this.§?8§ == 2)
         {
            _loc4_ = §2z§.PARTICLE_NAME_BIRD_TRAIL3;
         }
         this.§?8§ = (this.§?8§ + 1) % 3;
         _loc1_.particles.addParticle(_loc4_,§"@§.§,!Y§,§2z§.§?!@§,_loc2_,_loc3_,-1,"",§2z§.§&_§);
      }
   }
}
