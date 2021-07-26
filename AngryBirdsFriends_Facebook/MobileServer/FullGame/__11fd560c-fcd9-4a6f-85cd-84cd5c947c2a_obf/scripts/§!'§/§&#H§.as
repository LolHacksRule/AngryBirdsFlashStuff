package §!'§
{
   import §`"8§.§34§;
   import §`"8§.§`#+§;
   
   public class §&#H§ extends §@>§
   {
      
      public static const §9"i§:String = "Effect_Shrinking_Particle";
       
      
      private var §#!H§:String;
      
      private var §5#6§:Number;
      
      public function §&#H§(param1:§`#+§, param2:§34§, param3:int, param4:int, param5:Number, param6:Number, param7:Number, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:Number = -1, param15:Boolean = false, param16:String = "", param17:Number = 0)
      {
         this.§#!H§ = param16;
         this.§5#6§ = param17;
         super(param1,param2,§9"i§,param3,param4,param5,param6,param7,"",param8,param9,param10,param11,param12,param13,param14,param15);
      }
      
      override protected function getParticleType() : String
      {
         return this.§#!H§;
      }
      
      override public function updateParticles(param1:Number) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc2_:Boolean = super.updateParticles(param1);
         var _loc3_:Number = §each § / §"!>§ * 100;
         if(_loc3_ >= this.§5#6§)
         {
            _loc4_ = §"!>§ * (this.§5#6§ / 100);
            _loc5_ = §^#5§ * (1 - (§each § - _loc4_) / (§"!>§ - _loc4_));
            § $9§.scaleX = _loc5_;
            § $9§.scaleY = _loc5_;
         }
         else
         {
            § $9§.scaleX = §^#5§;
            § $9§.scaleY = §^#5§;
         }
         return _loc2_;
      }
   }
}
