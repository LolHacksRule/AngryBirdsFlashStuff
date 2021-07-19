package §-!7§
{
   import §!J§.§[&§;
   import §&!"§.b2World;
   import §9N§.§9!%§;
   import §?f§.§,v§;
   import §?f§.§-&§;
   import §`a§.Sprite;
   
   public class §--§ extends §@m§
   {
       
      
      private var §@A§:int = 0;
      
      public function §--§(param1:§&$§, param2:Sprite, param3:b2World, param4:§9!%§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function addDestructionParticles(param1:§,v§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc3_:int = Math.min(49,Math.max(1,§>!&§(false))) + 1;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§%n§.mW * §9!%§.§catch§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§%n§.mH * §9!%§.§catch§) + Math.random() * -_loc8_ * 2;
            param1.addParticle(§-&§.§2!K§,§,v§.§-!;§,§-&§.§ ,§,§`!#§().GetPosition().x + _loc7_,§`!#§().GetPosition().y + _loc8_,1750 + Math.random() * 500,"",§-&§.§%6§(§ h§),4 * Math.cos(_loc6_),-4 * Math.sin(_loc6_),10,4 * 50);
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§,v§, param2:int) : void
      {
      }
      
      override public function addTrail() : void
      {
         var _loc1_:§9!%§ = §[&§.§&!'§;
         if(§4^§ < §,>§ || §`!#§() == null)
         {
            _loc1_.§ c§(this);
            _loc1_.§%w§ = false;
            return;
         }
         var _loc2_:Number = x * §9!%§.§catch§;
         var _loc3_:Number = y * §9!%§.§catch§;
         var _loc4_:String = §-&§.PARTICLE_NAME_BIRD_TRAIL1;
         if(this.§@A§ == 1)
         {
            _loc4_ = §-&§.PARTICLE_NAME_BIRD_TRAIL2;
         }
         else if(this.§@A§ == 2)
         {
            _loc4_ = §-&§.PARTICLE_NAME_BIRD_TRAIL3;
         }
         this.§@A§ = (this.§@A§ + 1) % 3;
         _loc1_.particles.addParticle(_loc4_,§,v§.§`!+§,§-&§.§<6§,_loc2_,_loc3_,-1,"",§-&§.§[!$§);
      }
   }
}
