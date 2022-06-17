package §%$0§
{
   import §9#M§.§!!]§;
   import §9#M§.§%"=§;
   
   public class §2!A§ extends §`#I§
   {
      
      public static const §5=§:String = "Effect_Shrinking_Particle";
       
      
      private var §#!§:String;
      
      private var §"$B§:Number;
      
      public function §2!A§(param1:§!!]§, param2:§%"=§, param3:int, param4:int, param5:Number, param6:Number, param7:Number, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:Number = -1, param15:Boolean = false, param16:String = "", param17:Number = 0)
      {
         this.§#!§ = param16;
         this.§"$B§ = param17;
         super(param1,param2,§5=§,param3,param4,param5,param6,param7,"",param8,param9,param10,param11,param12,param13,param14,param15);
      }
      
      override protected function getParticleType() : String
      {
         return this.§#!§;
      }
      
      override public function updateParticles(param1:Number) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc2_:Boolean = super.updateParticles(param1);
         var _loc3_:Number = §7$;§ / §=Z§ * 100;
         if(_loc3_ >= this.§"$B§)
         {
            _loc4_ = §=Z§ * (this.§"$B§ / 100);
            _loc5_ = §6#q§ * (1 - (§7$;§ - _loc4_) / (§=Z§ - _loc4_));
            §8"`§.scaleX = _loc5_;
            §8"`§.scaleY = _loc5_;
         }
         else
         {
            §8"`§.scaleX = §6#q§;
            §8"`§.scaleY = §6#q§;
         }
         return _loc2_;
      }
   }
}
