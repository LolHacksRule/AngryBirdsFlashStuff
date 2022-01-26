package §_-Fk§
{
   import §_-0-K§.§_-FL§;
   import §_-00B§.b2World;
   import §_-Lw§.§_-RT§;
   import §_-Lw§.§_-hQ§;
   import §_-TX§.§_-0X§;
   import §case §.Sprite;
   
   public class §_-W4§ extends §_-Cb§
   {
       
      
      private var §_-Dz§:int = 0;
      
      public function §_-W4§(param1:§_-lp§, param2:Sprite, param3:b2World, param4:§_-FL§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function addDestructionParticles(param1:§_-RT§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc3_:int = Math.min(49,Math.max(1,§_-nM§(false))) + 1;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§_-Rh§.mW * §_-FL§.§_-NU§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§_-Rh§.mH * §_-FL§.§_-NU§) + Math.random() * -_loc8_ * 2;
            param1.addParticle(§_-hQ§.§_-7w§,§_-RT§.§_-MU§,§_-hQ§.§_-Wf§,§_-Zv§().GetPosition().x + _loc7_,§_-Zv§().GetPosition().y + _loc8_,1750 + Math.random() * 500,"",§_-hQ§.§_-kW§(§_-k-§),4 * Math.cos(_loc6_),-4 * Math.sin(_loc6_),10,4 * 50);
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§_-RT§, param2:int) : void
      {
      }
      
      override public function addTrail() : void
      {
         var _loc1_:§_-FL§ = §_-0X§.§_-O2§;
         if(§_-tR§ < §_-m1§ || §_-Zv§() == null)
         {
            _loc1_.§_-qW§(this);
            _loc1_.§_-rk§ = false;
            return;
         }
         var _loc2_:Number = x * §_-FL§.§_-NU§;
         var _loc3_:Number = y * §_-FL§.§_-NU§;
         var _loc4_:String = §_-hQ§.PARTICLE_NAME_BIRD_TRAIL1;
         if(this.§_-Dz§ == 1)
         {
            _loc4_ = §_-hQ§.PARTICLE_NAME_BIRD_TRAIL2;
         }
         else if(this.§_-Dz§ == 2)
         {
            _loc4_ = §_-hQ§.PARTICLE_NAME_BIRD_TRAIL3;
         }
         this.§_-Dz§ = (this.§_-Dz§ + 1) % 3;
         _loc1_.particles.addParticle(_loc4_,§_-RT§.§_-E6§,§_-hQ§.§_-ep§,_loc2_,_loc3_,-1,"",§_-hQ§.§_-Q6§);
      }
   }
}
