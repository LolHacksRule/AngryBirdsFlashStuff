package §_-Xd§
{
   import §_-7§.§_-ph§;
   import §_-FQ§.§_-7W§;
   import §_-PP§.§_-Tg§;
   import §_-PP§.§_-qC§;
   import §_-UX§.Sprite;
   import §_-qW§.b2World;
   
   public class §_-Uw§ extends §_-sW§
   {
       
      
      private var §_-xA§:int = 0;
      
      public function §_-Uw§(param1:§_-OL§, param2:Sprite, param3:b2World, param4:§_-7W§, param5:int, param6:String, param7:Number, param8:Number, param9:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9);
      }
      
      override public function addDestructionParticles(param1:§_-Tg§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc3_:int = Math.min(49,Math.max(1,§_-8h§(false))) + 1;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§_-UF§.mW * §_-7W§.§_-hT§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§_-UF§.mH * §_-7W§.§_-hT§) + Math.random() * -_loc8_ * 2;
            param1.§_-Eo§(§_-qC§.§_-KK§,§_-Tg§.§_-U1§,§_-qC§.§_-L4§,§_-vv§().GetPosition().x + _loc7_,§_-vv§().GetPosition().y + _loc8_,1750 + Math.random() * 500,"",§_-qC§.§_-rI§(§true §),4 * Math.cos(_loc6_),-4 * Math.sin(_loc6_),10,4 * 50);
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§_-Tg§, param2:int) : void
      {
      }
      
      override public function addTrail() : void
      {
         var _loc1_:§_-7W§ = §_-ph§.§_-Tw§;
         if(§_-gg§ < §_-jW§ || §_-vv§() == null)
         {
            _loc1_.§_-C9§(this);
            _loc1_.§_-TQ§ = false;
            return;
         }
         var _loc2_:Number = x * §_-7W§.§_-hT§;
         var _loc3_:Number = y * §_-7W§.§_-hT§;
         var _loc4_:String = §_-qC§.PARTICLE_NAME_BIRD_TRAIL1;
         if(this.§_-xA§ == 1)
         {
            _loc4_ = §_-qC§.PARTICLE_NAME_BIRD_TRAIL2;
         }
         else if(this.§_-xA§ == 2)
         {
            _loc4_ = §_-qC§.PARTICLE_NAME_BIRD_TRAIL3;
         }
         this.§_-xA§ = (this.§_-xA§ + 1) % 3;
         _loc1_.§_-sk§.§_-Eo§(_loc4_,§_-Tg§.§_-oZ§,§_-qC§.§_-O5§,_loc2_,_loc3_,-1,"",§_-qC§.§_-xp§);
      }
   }
}
