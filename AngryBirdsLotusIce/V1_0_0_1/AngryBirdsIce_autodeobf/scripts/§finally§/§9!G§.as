package §finally§
{
   import §"o§.§ M§;
   import §;j§.§8[§;
   import §@!=§.Sprite;
   import §]2§.§<u§;
   import §]2§.§`b§;
   import com.rovio.Box2D.Dynamics.b2World;
   
   public class §9!G§ extends §%!7§
   {
       
      
      private var §`!9§:int = 0;
      
      public function §9!G§(param1:§3X§, param2:Sprite, param3:b2World, param4:§ M§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function addDestructionParticles(param1:§<u§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc3_:int = Math.min(49,Math.max(1,§']§(false))) + 1;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§8h§.mW * § M§.§%v§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§8h§.mH * § M§.§%v§) + Math.random() * -_loc8_ * 2;
            param1.§1C§(§`b§.§^e§,§<u§.§>7§,§`b§.§ "§,§+!-§().GetPosition().x + _loc7_,§+!-§().GetPosition().y + _loc8_,1750 + Math.random() * 500,"",§`b§.§>!6§(§5o§),4 * Math.cos(_loc6_),-4 * Math.sin(_loc6_),10,4 * 50);
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§<u§, param2:int) : void
      {
      }
      
      override public function addTrail() : void
      {
         var _loc1_:§ M§ = §8[§.§import§;
         if(§8x§ < §3-§ || §+!-§() == null)
         {
            _loc1_.§09§(this);
            _loc1_.§ 4§ = false;
            return;
         }
         var _loc2_:Number = x * § M§.§%v§;
         var _loc3_:Number = y * § M§.§%v§;
         var _loc4_:String = §`b§.PARTICLE_NAME_BIRD_TRAIL1;
         if(this.§`!9§ == 1)
         {
            _loc4_ = §`b§.PARTICLE_NAME_BIRD_TRAIL2;
         }
         else if(this.§`!9§ == 2)
         {
            _loc4_ = §`b§.PARTICLE_NAME_BIRD_TRAIL3;
         }
         this.§`!9§ = (this.§`!9§ + 1) % 3;
         _loc1_.particles.§1C§(_loc4_,§<u§.§6x§,§`b§.§!-§,_loc2_,_loc3_,-1,"",§`b§.§-Q§);
      }
   }
}
