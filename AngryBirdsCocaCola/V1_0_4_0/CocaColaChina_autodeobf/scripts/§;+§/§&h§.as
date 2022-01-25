package §;+§
{
   import § !K§.Sprite;
   import §-v§.§,!1§;
   import §3f§.b2World;
   import §4A§.§&_§;
   import §;G§.§1D§;
   import §;G§.§;Z§;
   
   public class §&h§ extends §[!3§
   {
       
      
      private var §<n§:int = 0;
      
      public function §&h§(param1:§+!?§, param2:Sprite, param3:b2World, param4:§&_§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function addDestructionParticles(param1:§1D§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc3_:int = Math.min(49,Math.max(1,§!!W§(false))) + 1;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§4!%§.mW * §&_§.§5-§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§4!%§.mH * §&_§.§5-§) + Math.random() * -_loc8_ * 2;
            param1.§#!Q§(§;Z§.§#]§,§1D§.§%d§,§;Z§.§>!H§,§1!d§().GetPosition().x + _loc7_,§1!d§().GetPosition().y + _loc8_,1750 + Math.random() * 500,"",§;Z§.§"!a§(§1T§),4 * Math.cos(_loc6_),-4 * Math.sin(_loc6_),10,4 * 50);
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§1D§, param2:int) : void
      {
      }
      
      override public function addTrail() : void
      {
         var _loc1_:§&_§ = §,!1§.§2T§;
         if(§"!D§ < §?L§ || §1!d§() == null)
         {
            _loc1_.§5#§(this);
            _loc1_.§+2§ = false;
            return;
         }
         var _loc2_:Number = x * §&_§.§5-§;
         var _loc3_:Number = y * §&_§.§5-§;
         var _loc4_:String = §;Z§.PARTICLE_NAME_BIRD_TRAIL1;
         if(this.§<n§ == 1)
         {
            _loc4_ = §;Z§.PARTICLE_NAME_BIRD_TRAIL2;
         }
         else if(this.§<n§ == 2)
         {
            _loc4_ = §;Z§.PARTICLE_NAME_BIRD_TRAIL3;
         }
         this.§<n§ = (this.§<n§ + 1) % 3;
         _loc1_.particles.§#!Q§(_loc4_,§1D§.§`!F§,§;Z§.§<!6§,_loc2_,_loc3_,-1,"",§;Z§.§`E§);
      }
   }
}
