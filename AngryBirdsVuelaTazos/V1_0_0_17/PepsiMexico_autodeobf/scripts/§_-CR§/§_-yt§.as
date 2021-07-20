package §_-CR§
{
   import §_-Cx§.§_-Gb§;
   import §_-Cx§.§_-UW§;
   import §_-Iw§.b2World;
   import §_-LP§.Sprite;
   import §_-OJ§.§_-tL§;
   import §_-hU§.§_-MB§;
   
   public class §_-yt§ extends §_-Dz§
   {
       
      
      private var §_-WR§:int = 0;
      
      public function §_-yt§(param1:§_-F5§, param2:Sprite, param3:b2World, param4:§_-tL§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
      }
      
      override public function addDestructionParticles(param1:§_-Gb§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc3_:int = Math.min(49,Math.max(1,§_-jY§(false))) + 1;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§_-e7§.mW * §_-tL§.§_-7m§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§_-e7§.mH * §_-tL§.§_-7m§) + Math.random() * -_loc8_ * 2;
            param1.§_-JY§(§_-UW§.§_-pG§,§_-Gb§.§_-oO§,§_-UW§.§_-s4§,§_-zq§().GetPosition().x + _loc7_,§_-zq§().GetPosition().y + _loc8_,1750 + Math.random() * 500,"",§_-UW§.§_-G9§(§_-L1§),4 * Math.cos(_loc6_),-4 * Math.sin(_loc6_),10,4 * 50);
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§_-Gb§, param2:int) : void
      {
      }
      
      override public function addTrail() : void
      {
         var _loc1_:§_-tL§ = §_-MB§.§_-A7§;
         if(§_-Qm§ < §_-FF§ || §_-zq§() == null)
         {
            _loc1_.§_-iF§(this);
            _loc1_.§_-aE§ = false;
            return;
         }
         var _loc2_:Number = x * §_-tL§.§_-7m§;
         var _loc3_:Number = y * §_-tL§.§_-7m§;
         var _loc4_:String = §_-UW§.PARTICLE_NAME_BIRD_TRAIL1;
         if(this.§_-WR§ == 1)
         {
            _loc4_ = §_-UW§.PARTICLE_NAME_BIRD_TRAIL2;
         }
         else if(this.§_-WR§ == 2)
         {
            _loc4_ = §_-UW§.PARTICLE_NAME_BIRD_TRAIL3;
         }
         this.§_-WR§ = (this.§_-WR§ + 1) % 3;
         _loc1_.particles.§_-JY§(_loc4_,§_-Gb§.§_-kL§,§_-UW§.§_-eQ§,_loc2_,_loc3_,-1,"",§_-UW§.§_-YC§);
      }
   }
}
