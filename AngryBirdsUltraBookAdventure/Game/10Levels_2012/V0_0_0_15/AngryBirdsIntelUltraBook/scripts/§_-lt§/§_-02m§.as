package §_-lt§
{
   import §_-N3§.§_-Hv§;
   import §_-N3§.§_-Zc§;
   import §_-TG§.§_-00u§;
   import §_-aU§.b2World;
   import §_-qO§.§ in§;
   import §_-uY§.Sprite;
   
   public class §_-02m§ extends §_-eZ§
   {
       
      
      private var §_-Jh§:int = 0;
      
      public function §_-02m§(param1:§_-30§, param2:Sprite, param3:b2World, param4:§_-00u§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false, param12:String = "", param13:int = 1)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         §_-SE§ = param12;
         §_-nf§ = param13;
      }
      
      override public function addDestructionParticles(param1:§_-Zc§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:int = 0;
         var _loc3_:int = Math.min(49,Math.max(1,§_-vw§(false))) + 1;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§_-U-§.mW * §_-00u§.§_-lY§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§_-U-§.mH * §_-00u§.§_-lY§) + Math.random() * -_loc8_ * 2;
            if(§_-SE§ != "")
            {
               _loc9_ = 1 + Math.floor(Math.random() * §_-nf§);
               param1.§_-0-N§(§_-SE§ + "_" + _loc9_,§_-Hv§.§_-0o§,§_-Zc§.§_-MP§,§_-Hv§.§_-vg§,§_-SJ§().GetPosition().x + _loc7_,§_-SJ§().GetPosition().y + _loc8_,1750 + Math.random() * 500,"",§_-08L§(§_-o2§),4 * Math.cos(_loc6_),-4 * Math.sin(_loc6_),10,4 * 50);
            }
            else
            {
               param1.§_-0EQ§(§_-Hv§.§_-0o§,§_-Zc§.§_-MP§,§_-Hv§.§_-vg§,§_-SJ§().GetPosition().x + _loc7_,§_-SJ§().GetPosition().y + _loc8_,1750 + Math.random() * 500,"",§_-08L§(§_-o2§),4 * Math.cos(_loc6_),-4 * Math.sin(_loc6_),10,4 * 50);
            }
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§_-Zc§, param2:int) : void
      {
      }
      
      override public function addTrail() : void
      {
         var _loc1_:§_-00u§ = § in§.§_-Dc§;
         if(§_-Kh§ < §_-8l§ || §_-SJ§() == null)
         {
            _loc1_.§_-5Q§(this);
            _loc1_.§_-02W§ = false;
            return;
         }
         var _loc2_:Number = x * §_-00u§.§_-lY§;
         var _loc3_:Number = y * §_-00u§.§_-lY§;
         var _loc4_:String = §_-Hv§.PARTICLE_NAME_BIRD_TRAIL1;
         if(this.§_-Jh§ == 1)
         {
            _loc4_ = §_-Hv§.PARTICLE_NAME_BIRD_TRAIL2;
         }
         else if(this.§_-Jh§ == 2)
         {
            _loc4_ = §_-Hv§.PARTICLE_NAME_BIRD_TRAIL3;
         }
         this.§_-Jh§ = (this.§_-Jh§ + 1) % 3;
         _loc1_.particles.§_-0EQ§(_loc4_,§_-Zc§.§_-WZ§,§_-Hv§.§_-0EM§,_loc2_,_loc3_,-1,"",§_-Hv§.§_-Do§);
      }
   }
}
