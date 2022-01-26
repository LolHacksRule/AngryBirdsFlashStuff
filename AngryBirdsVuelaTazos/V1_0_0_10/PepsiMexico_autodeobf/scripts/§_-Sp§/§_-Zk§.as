package §_-Sp§
{
   import §_-0y§.§_-B3§;
   import §_-7o§.§_-Kd§;
   import §_-7o§.§_-w7§;
   import §_-I1§.§_-2N§;
   import §_-rg§.b2World;
   import §_-se§.Sprite;
   
   public class §_-Zk§ extends §_-JP§
   {
       
      
      private var §_-jg§:int = 0;
      
      public function §_-Zk§(param1:§_-D4§, param2:Sprite, param3:b2World, param4:§_-B3§, param5:int, param6:String, param7:Number, param8:Number, param9:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9);
      }
      
      override public function addDestructionParticles(param1:§_-Kd§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc3_:int = Math.min(49,Math.max(1,§_-mL§(false))) + 1;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§_-LF§.mW * §_-B3§.§_-s8§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§_-LF§.mH * §_-B3§.§_-s8§) + Math.random() * -_loc8_ * 2;
            param1.§_-4V§(§_-w7§.§_-mu§,§_-Kd§.§_-vR§,§_-w7§.§_-Or§,§_-dZ§().GetPosition().x + _loc7_,§_-dZ§().GetPosition().y + _loc8_,1750 + Math.random() * 500,"",§_-w7§.§_-MH§(§_-TR§),4 * Math.cos(_loc6_),-4 * Math.sin(_loc6_),10,4 * 50);
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§_-Kd§, param2:int) : void
      {
      }
      
      override public function addTrail() : void
      {
         var _loc1_:§_-B3§ = §_-2N§.§_-iP§;
         if(§null § < §_-8S§ || §_-dZ§() == null)
         {
            _loc1_.§_-TJ§(this);
            _loc1_.mTrailSpecial = false;
            return;
         }
         var _loc2_:Number = x * §_-B3§.§_-s8§;
         var _loc3_:Number = y * §_-B3§.§_-s8§;
         var _loc4_:String = §_-w7§.PARTICLE_NAME_BIRD_TRAIL1;
         if(this.§_-jg§ == 1)
         {
            _loc4_ = §_-w7§.PARTICLE_NAME_BIRD_TRAIL2;
         }
         else if(this.§_-jg§ == 2)
         {
            _loc4_ = §_-w7§.PARTICLE_NAME_BIRD_TRAIL3;
         }
         this.§_-jg§ = (this.§_-jg§ + 1) % 3;
         _loc1_.§_-29§.§_-4V§(_loc4_,§_-Kd§.§_-Zh§,§_-w7§.§_-ev§,_loc2_,_loc3_,-1,"",§_-w7§.§_-6U§);
      }
   }
}
