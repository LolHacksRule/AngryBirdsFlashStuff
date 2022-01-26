package §_-mj§
{
   import §_-5Y§.§_-yw§;
   import §_-CW§.§_-C-§;
   import §_-CW§.§_-hK§;
   import §_-M0§.§_-u4§;
   import §_-b5§.Sprite;
   import §const§.b2World;
   
   public class §_-p9§ extends §_-GI§
   {
       
      
      private var §_-JX§:int = 0;
      
      public function §_-p9§(param1:§_-Fv§, param2:Sprite, param3:b2World, param4:§_-yw§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
      }
      
      override public function addDestructionParticles(param1:§_-hK§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc3_:int = Math.min(49,Math.max(1,§_-Bs§(false))) + 1;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§_-M4§.mW * §_-yw§.§_-rO§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§_-M4§.mH * §_-yw§.§_-rO§) + Math.random() * -_loc8_ * 2;
            param1.§_-pB§(§_-C-§.§_-L2§,§_-hK§.§_-I1§,§_-C-§.§_-g7§,§_-oR§().GetPosition().x + _loc7_,§_-oR§().GetPosition().y + _loc8_,1750 + Math.random() * 500,"",§_-C-§.§_-5X§(§_-FK§),4 * Math.cos(_loc6_),-4 * Math.sin(_loc6_),10,4 * 50);
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§_-hK§, param2:int) : void
      {
      }
      
      override public function addTrail() : void
      {
         var _loc1_:§_-yw§ = §_-u4§.§_-40§;
         if(§_-QY§ < §_-t6§ || §_-oR§() == null)
         {
            _loc1_.§_-nU§(this);
            _loc1_.§_-ZV§ = false;
            return;
         }
         var _loc2_:Number = x * §_-yw§.§_-rO§;
         var _loc3_:Number = y * §_-yw§.§_-rO§;
         var _loc4_:String = §_-C-§.PARTICLE_NAME_BIRD_TRAIL1;
         if(this.§_-JX§ == 1)
         {
            _loc4_ = §_-C-§.PARTICLE_NAME_BIRD_TRAIL2;
         }
         else if(this.§_-JX§ == 2)
         {
            _loc4_ = §_-C-§.PARTICLE_NAME_BIRD_TRAIL3;
         }
         this.§_-JX§ = (this.§_-JX§ + 1) % 3;
         _loc1_.particles.§_-pB§(_loc4_,§_-hK§.§_-jg§,§_-C-§.§_-qE§,_loc2_,_loc3_,-1,"",§_-C-§.§_-Gv§);
      }
   }
}
