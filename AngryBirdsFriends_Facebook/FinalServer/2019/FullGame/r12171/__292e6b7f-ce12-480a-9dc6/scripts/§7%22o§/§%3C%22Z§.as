package §7"o§
{
   import §7"T§.§#"^§;
   import §7"T§.§4#[§;
   
   public class §<"Z§ extends §=,§
   {
      
      public static const §7"5§:String = "Effect_Shrinking_Particle";
       
      
      private var §?"&§:String;
      
      private var §6!S§:Number;
      
      public function §<"Z§(param1:§4#[§, param2:§#"^§, param3:int, param4:int, param5:Number, param6:Number, param7:Number, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:Number = -1, param15:Boolean = false, param16:String = "", param17:Number = 0)
      {
         this.§?"&§ = param16;
         this.§6!S§ = param17;
         super(param1,param2,§7"5§,param3,param4,param5,param6,param7,"",param8,param9,param10,param11,param12,param13,param14,param15);
      }
      
      override protected function getParticleType() : String
      {
         return this.§?"&§;
      }
      
      override public function updateParticles(param1:Number) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc2_:Boolean = super.updateParticles(param1);
         var _loc3_:Number = §3%§ / §@"s§ * 100;
         if(_loc3_ >= this.§6!S§)
         {
            _loc4_ = §@"s§ * (this.§6!S§ / 100);
            _loc5_ = §#!1§ * (1 - (§3%§ - _loc4_) / (§@"s§ - _loc4_));
            §6"z§.scaleX = _loc5_;
            §6"z§.scaleY = _loc5_;
         }
         else
         {
            §6"z§.scaleX = §#!1§;
            §6"z§.scaleY = §#!1§;
         }
         return _loc2_;
      }
   }
}
