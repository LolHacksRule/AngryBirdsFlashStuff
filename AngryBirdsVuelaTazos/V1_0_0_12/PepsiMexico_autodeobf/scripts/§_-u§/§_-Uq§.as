package §_-u§
{
   import §_-DS§.§_-Aa§;
   import §_-DS§.§_-t0§;
   import §_-EH§.b2World;
   import §_-Hw§.§_-3C§;
   import §_-pF§.Sprite;
   import §_-rp§.§_-c5§;
   
   public class §_-Uq§ extends §_-5Q§
   {
       
      
      private var §_-rO§:int = 0;
      
      public function §_-Uq§(param1:§_-Av§, param2:Sprite, param3:b2World, param4:§_-c5§, param5:int, param6:String, param7:Number, param8:Number, param9:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9);
      }
      
      override public function addDestructionParticles(param1:§_-t0§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc3_:int = Math.min(49,Math.max(1,§_-dd§(false))) + 1;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§use§.mW * §_-c5§.§_-Wa§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§use§.mH * §_-c5§.§_-Wa§) + Math.random() * -_loc8_ * 2;
            param1.§_-RE§(§_-Aa§.§_-12§,§_-t0§.§_-FQ§,§_-Aa§.include,§_-t9§().GetPosition().x + _loc7_,§_-t9§().GetPosition().y + _loc8_,1750 + Math.random() * 500,"",§_-Aa§.§_-Am§(§_-s7§),4 * Math.cos(_loc6_),-4 * Math.sin(_loc6_),10,4 * 50);
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§_-t0§, param2:int) : void
      {
      }
      
      override public function addTrail() : void
      {
         var _loc1_:§_-c5§ = §_-3C§.§_-bz§;
         if(§_-c8§ < §_-gA§ || §_-t9§() == null)
         {
            _loc1_.§_-j7§(this);
            _loc1_.mTrailSpecial = false;
            return;
         }
         var _loc2_:Number = x * §_-c5§.§_-Wa§;
         var _loc3_:Number = y * §_-c5§.§_-Wa§;
         var _loc4_:String = §_-Aa§.PARTICLE_NAME_BIRD_TRAIL1;
         if(this.§_-rO§ == 1)
         {
            _loc4_ = §_-Aa§.PARTICLE_NAME_BIRD_TRAIL2;
         }
         else if(this.§_-rO§ == 2)
         {
            _loc4_ = §_-Aa§.PARTICLE_NAME_BIRD_TRAIL3;
         }
         this.§_-rO§ = (this.§_-rO§ + 1) % 3;
         _loc1_.§_-AC§.§_-RE§(_loc4_,§_-t0§.§_-hG§,§_-Aa§.§_-tZ§,_loc2_,_loc3_,-1,"",§_-Aa§.§_-rc§);
      }
   }
}
