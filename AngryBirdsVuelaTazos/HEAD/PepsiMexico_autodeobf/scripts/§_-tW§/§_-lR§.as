package §_-tW§
{
   import §_-Di§.§_-ix§;
   import §_-SE§.Sprite;
   import §_-dH§.§_-ds§;
   import §_-dH§.§_-wT§;
   import §_-pm§.§_-gb§;
   import §_-vk§.b2World;
   
   public class §_-lR§ extends §_-lx§
   {
       
      
      private var §_-ca§:int = 0;
      
      public function §_-lR§(param1:§_-S5§, param2:Sprite, param3:b2World, param4:§_-ix§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function addDestructionParticles(param1:§_-wT§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc3_:int = Math.min(49,Math.max(1,§_-Zw§(false))) + 1;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§_-bV§.mW * §_-ix§.§_-z8§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§_-bV§.mH * §_-ix§.§_-z8§) + Math.random() * -_loc8_ * 2;
            param1.§_-Kw§(§_-ds§.§_-2i§,§_-wT§.§_-Kz§,§_-ds§.§_-qg§,§_-UF§().GetPosition().x + _loc7_,§_-UF§().GetPosition().y + _loc8_,1750 + Math.random() * 500,"",§_-ds§.§_-vZ§(§_-ep§),4 * Math.cos(_loc6_),-4 * Math.sin(_loc6_),10,4 * 50);
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§_-wT§, param2:int) : void
      {
      }
      
      override public function addTrail() : void
      {
         var _loc1_:§_-ix§ = §_-gb§.§_-ls§;
         if(§_-hs§ < §_-eV§ || §_-UF§() == null)
         {
            _loc1_.§_-9d§(this);
            _loc1_.§_-9U§ = false;
            return;
         }
         var _loc2_:Number = x * §_-ix§.§_-z8§;
         var _loc3_:Number = y * §_-ix§.§_-z8§;
         var _loc4_:String = §_-ds§.PARTICLE_NAME_BIRD_TRAIL1;
         if(this.§_-ca§ == 1)
         {
            _loc4_ = §_-ds§.PARTICLE_NAME_BIRD_TRAIL2;
         }
         else if(this.§_-ca§ == 2)
         {
            _loc4_ = §_-ds§.PARTICLE_NAME_BIRD_TRAIL3;
         }
         this.§_-ca§ = (this.§_-ca§ + 1) % 3;
         _loc1_.particles.§_-Kw§(_loc4_,§_-wT§.§_-uY§,§_-ds§.§_-OG§,_loc2_,_loc3_,-1,"",§_-ds§.§_-8W§);
      }
   }
}
