package §_-fr§
{
   import §_-43§.b2World;
   import §_-94§.§_-si§;
   import §_-GY§.Sprite;
   import §_-Kz§.§_-c3§;
   import §_-Sr§.§_-Jq§;
   import §_-Sr§.§_-K-§;
   
   public class §_-3s§ extends §_-FX§
   {
       
      
      private var §_-am§:int = 0;
      
      public function §_-3s§(param1:§ else§, param2:Sprite, param3:b2World, param4:§_-c3§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function addDestructionParticles(param1:§_-Jq§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc3_:int = Math.min(49,Math.max(1,§_-m8§(false))) + 1;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§_-9G§.mW * §_-c3§.§_-GA§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§_-9G§.mH * §_-c3§.§_-GA§) + Math.random() * -_loc8_ * 2;
            param1.addParticle(§_-K-§.§_-Qq§,§_-Jq§.§_-0-§,§_-K-§.§_-AI§,§implements§().GetPosition().x + _loc7_,§implements§().GetPosition().y + _loc8_,1750 + Math.random() * 500,"",§_-K-§.§_-2U§(§_-05§),4 * Math.cos(_loc6_),-4 * Math.sin(_loc6_),10,4 * 50);
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§_-Jq§, param2:int) : void
      {
      }
      
      override public function addTrail() : void
      {
         var _loc1_:§_-c3§ = §_-si§.§_-HI§;
         if(§_-KZ§ < §_-EU§ || §implements§() == null)
         {
            _loc1_.§_-uy§(this);
            _loc1_.§_-qF§ = false;
            return;
         }
         var _loc2_:Number = x * §_-c3§.§_-GA§;
         var _loc3_:Number = y * §_-c3§.§_-GA§;
         var _loc4_:String = §_-K-§.PARTICLE_NAME_BIRD_TRAIL1;
         if(this.§_-am§ == 1)
         {
            _loc4_ = §_-K-§.PARTICLE_NAME_BIRD_TRAIL2;
         }
         else if(this.§_-am§ == 2)
         {
            _loc4_ = §_-K-§.PARTICLE_NAME_BIRD_TRAIL3;
         }
         this.§_-am§ = (this.§_-am§ + 1) % 3;
         _loc1_.particles.addParticle(_loc4_,§_-Jq§.§_-Ml§,§_-K-§.§_-BZ§,_loc2_,_loc3_,-1,"",§_-K-§.§_-P8§);
      }
   }
}
