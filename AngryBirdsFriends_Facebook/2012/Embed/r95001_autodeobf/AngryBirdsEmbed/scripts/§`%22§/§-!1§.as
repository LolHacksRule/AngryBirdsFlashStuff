package §`"§
{
   import §0H§.§-V§;
   import §0H§.§2x§;
   import §10§.§#!4§;
   import §9!?§.§^]§;
   import §<k§.Sprite;
   import com.rovio.Box2D.Dynamics.b2World;
   
   public class §-!1§ extends §"e§
   {
       
      
      private var §&m§:int = 0;
      
      public function §-!1§(param1:§?!;§, param2:Sprite, param3:b2World, param4:§^]§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function addDestructionParticles(param1:§2x§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc3_:int = Math.min(49,Math.max(1,§7V§(false))) + 1;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§>b§.mW * §^]§.§ u§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§>b§.mH * §^]§.§ u§) + Math.random() * -_loc8_ * 2;
            param1.§]1§(§-V§.§`!9§,§2x§.§3!6§,§-V§.§?P§,§]d§().GetPosition().x + _loc7_,§]d§().GetPosition().y + _loc8_,1750 + Math.random() * 500,"",§-V§.§3!;§(§"]§),4 * Math.cos(_loc6_),-4 * Math.sin(_loc6_),10,4 * 50);
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§2x§, param2:int) : void
      {
      }
      
      override public function addTrail() : void
      {
         var _loc1_:§^]§ = §#!4§.§^Y§;
         if(§`h§ < §'R§ || §]d§() == null)
         {
            _loc1_.§3!=§(this);
            _loc1_.§4J§ = false;
            return;
         }
         var _loc2_:Number = x * §^]§.§ u§;
         var _loc3_:Number = y * §^]§.§ u§;
         var _loc4_:String = §-V§.PARTICLE_NAME_BIRD_TRAIL1;
         if(this.§&m§ == 1)
         {
            _loc4_ = §-V§.PARTICLE_NAME_BIRD_TRAIL2;
         }
         else if(this.§&m§ == 2)
         {
            _loc4_ = §-V§.PARTICLE_NAME_BIRD_TRAIL3;
         }
         this.§&m§ = (this.§&m§ + 1) % 3;
         _loc1_.particles.§]1§(_loc4_,§2x§.§+u§,§-V§.§^W§,_loc2_,_loc3_,-1,"",§-V§.§>&§);
      }
   }
}
