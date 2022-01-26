package §_-ST§
{
   import §_-Ah§.§_-b§;
   import §_-Vq§.§_-dI§;
   import §_-Vq§.§_-gu§;
   import §_-WW§.b2World;
   import §_-ez§.§_-Ay§;
   import §_-vO§.Sprite;
   
   public class §_-EZ§ extends §_-fK§
   {
       
      
      private var §_-iT§:int = 0;
      
      public function §_-EZ§(param1:§_-oF§, param2:Sprite, param3:b2World, param4:§_-Ay§, param5:int, param6:String, param7:Number, param8:Number, param9:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9);
      }
      
      override public function addDestructionParticles(param1:§_-dI§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc3_:int = Math.min(49,Math.max(1,§_-2R§(false))) + 1;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§_-ds§.mW * §_-Ay§.§_-G0§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§_-ds§.mH * §_-Ay§.§_-G0§) + Math.random() * -_loc8_ * 2;
            param1.§_-2b§(§_-gu§.§_-jG§,§_-dI§.§_-Hw§,§_-gu§.§_-Ii§,§_-Nu§().GetPosition().x + _loc7_,§_-Nu§().GetPosition().y + _loc8_,1750 + Math.random() * 500,"",§_-gu§.§_-kb§(§_-Pd§),4 * Math.cos(_loc6_),-4 * Math.sin(_loc6_),10,4 * 50);
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§_-dI§, param2:int) : void
      {
      }
      
      override public function addTrail() : void
      {
         var _loc1_:§_-Ay§ = §_-b§.§_-cK§;
         if(§_-Sy§ < §_-JQ§ || §_-Nu§() == null)
         {
            _loc1_.§_-MR§(this);
            _loc1_.mTrailSpecial = false;
            return;
         }
         var _loc2_:Number = x * §_-Ay§.§_-G0§;
         var _loc3_:Number = y * §_-Ay§.§_-G0§;
         var _loc4_:String = §_-gu§.PARTICLE_NAME_BIRD_TRAIL1;
         if(this.§_-iT§ == 1)
         {
            _loc4_ = §_-gu§.PARTICLE_NAME_BIRD_TRAIL2;
         }
         else if(this.§_-iT§ == 2)
         {
            _loc4_ = §_-gu§.PARTICLE_NAME_BIRD_TRAIL3;
         }
         this.§_-iT§ = (this.§_-iT§ + 1) % 3;
         _loc1_.§_-Rh§.§_-2b§(_loc4_,§_-dI§.§_-Gs§,§_-gu§.§_-1Q§,_loc2_,_loc3_,-1,"",§_-gu§.§_-bk§);
      }
   }
}
