package §_-bl§
{
   import §_-2r§.§_-sn§;
   import §_-Ls§.Sprite;
   import §_-gC§.§_-XR§;
   import §_-we§.§_-5J§;
   import §_-we§.§_-yB§;
   import §try§.b2World;
   
   public class §_-o4§ extends §_-Ie§
   {
       
      
      private var §_-ax§:int = 0;
      
      public function §_-o4§(param1:§_-S4§, param2:Sprite, param3:b2World, param4:§_-sn§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function addDestructionParticles(param1:§_-5J§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc3_:int = Math.min(49,Math.max(1,§_-vE§(false))) + 1;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§_-KI§.mW * §_-sn§.§_-5Y§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§_-KI§.mH * §_-sn§.§_-5Y§) + Math.random() * -_loc8_ * 2;
            param1.addParticle(§_-yB§.§_-4P§,§_-5J§.§_-2S§,§_-yB§.§_-7K§,§_-BO§().GetPosition().x + _loc7_,§_-BO§().GetPosition().y + _loc8_,1750 + Math.random() * 500,"",§_-yB§.§_-zC§(§_-G2§),4 * Math.cos(_loc6_),-4 * Math.sin(_loc6_),10,4 * 50);
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§_-5J§, param2:int) : void
      {
      }
      
      override public function addTrail() : void
      {
         var _loc1_:§_-sn§ = §_-XR§.§_-Xv§;
         if(§_-T5§ < §_-Rj§ || §_-BO§() == null)
         {
            _loc1_.§_-0Q§(this);
            _loc1_.§_-8q§ = false;
            return;
         }
         var _loc2_:Number = x * §_-sn§.§_-5Y§;
         var _loc3_:Number = y * §_-sn§.§_-5Y§;
         var _loc4_:String = §_-yB§.PARTICLE_NAME_BIRD_TRAIL1;
         if(this.§_-ax§ == 1)
         {
            _loc4_ = §_-yB§.PARTICLE_NAME_BIRD_TRAIL2;
         }
         else if(this.§_-ax§ == 2)
         {
            _loc4_ = §_-yB§.PARTICLE_NAME_BIRD_TRAIL3;
         }
         this.§_-ax§ = (this.§_-ax§ + 1) % 3;
         _loc1_.particles.addParticle(_loc4_,§_-5J§.§_-aB§,§_-yB§.§_-0-5§,_loc2_,_loc3_,-1,"",§_-yB§.§_-6p§);
      }
   }
}
