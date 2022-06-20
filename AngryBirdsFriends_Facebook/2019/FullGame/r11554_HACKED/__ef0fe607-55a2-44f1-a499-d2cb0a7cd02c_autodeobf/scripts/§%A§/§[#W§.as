package §%A§
{
   import §^"[§.§2§;
   import §^"[§.§=#;§;
   
   public class §[#W§ extends §'Y§
   {
      
      public static const §extends§:String = "Effect_Shrinking_Particle";
       
      
      private var §`#,§:String;
      
      private var §&!?§:Number;
      
      public function §[#W§(param1:§2#6§, param2:§=#;§, param3:int, param4:int, param5:Number, param6:Number, param7:Number, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:Number = -1, param15:Boolean = false, param16:String = "", param17:Number = 0)
      {
         this.§`#,§ = param16;
         this.§&!?§ = param17;
         super(param1,param2,§extends§,param3,param4,param5,param6,param7,"",param8,param9,param10,param11,param12,param13,param14,param15);
      }
      
      override protected function getParticleType() : String
      {
         return this.§`#,§;
      }
      
      override public function updateParticles(param1:Number) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc2_:Boolean = super.updateParticles(param1);
         var _loc3_:Number = §'v§ / §'"Q§ * 100;
         if(_loc3_ >= this.§&!?§)
         {
            _loc4_ = §'"Q§ * (this.§&!?§ / 100);
            _loc5_ = §6z§ * (1 - (§'v§ - _loc4_) / (§'"Q§ - _loc4_));
            §^p§.scaleX = _loc5_;
            §^p§.scaleY = _loc5_;
         }
         else
         {
            §^p§.scaleX = §6z§;
            §^p§.scaleY = §6z§;
         }
         return _loc2_;
      }
   }
}
