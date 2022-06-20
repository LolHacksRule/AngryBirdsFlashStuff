package §^$1§
{
   import §7!j§.§"I§;
   import §7!j§.§'0§;
   
   public class §-"p§ extends §2"^§
   {
      
      public static const §6#A§:String = "Effect_Shrinking_Particle";
       
      
      private var §#"6§:String;
      
      private var §]#;§:Number;
      
      public function §-"p§(param1:§"I§, param2:§'0§, param3:int, param4:int, param5:Number, param6:Number, param7:Number, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:Number = -1, param15:Boolean = false, param16:String = "", param17:Number = 0)
      {
         this.§#"6§ = param16;
         this.§]#;§ = param17;
         super(param1,param2,§6#A§,param3,param4,param5,param6,param7,"",param8,param9,param10,param11,param12,param13,param14,param15);
      }
      
      override protected function getParticleType() : String
      {
         return this.§#"6§;
      }
      
      override public function updateParticles(param1:Number) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc2_:Boolean = super.updateParticles(param1);
         var _loc3_:Number = §`#^§ / §+_§ * 100;
         if(_loc3_ >= this.§]#;§)
         {
            _loc4_ = §+_§ * (this.§]#;§ / 100);
            _loc5_ = § "A§ * (1 - (§`#^§ - _loc4_) / (§+_§ - _loc4_));
            §;"6§.scaleX = _loc5_;
            §;"6§.scaleY = _loc5_;
         }
         else
         {
            §;"6§.scaleX = § "A§;
            §;"6§.scaleY = § "A§;
         }
         return _loc2_;
      }
   }
}
