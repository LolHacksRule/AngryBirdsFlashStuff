package §%$0§
{
   import §9#M§.§!!]§;
   import §9#M§.§%"=§;
   import §?$#§.§]"]§;
   
   public class §-#i§ extends §'T§
   {
      
      public static const §,o§:uint = 12000;
      
      public static var § !D§:Number = 0;
      
      public static var §[!D§:Number = 5000;
       
      
      private const §<x§:int = Math.random() > 0.5 ? -1 : 1;
      
      private const §=E§:Number = Math.random() * 0.2 - 0.1;
      
      private var §1$6§:Number;
      
      private var §''§:int;
      
      public function §-#i§(param1:§!!]§, param2:§%"=§, param3:String, param4:int, param5:int, param6:Number, param7:Number, param8:Number, param9:String, param10:int, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:Number = 1, param16:int = -1, param17:Boolean = false)
      {
         this.§1$6§ = §[!D§ * Math.random();
         § !D§ = §]"]§.§>!v§ / 100;
         this.§''§ = Math.round(Math.random() * 7 + 1);
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,param17,"PARTICLE_SNOW_" + this.§''§);
      }
      
      public function §3S§() : int
      {
         if(this.§''§ >= 5 && this.§''§ <= 7)
         {
            return §2#Z§.PARTICLE_GROUP_BACKGROUND_EFFECTS;
         }
         return §2#Z§.PARTICLE_GROUP_FOREGROUND_EFFECTS;
      }
      
      override public function update(param1:Number) : Boolean
      {
         this.§1$6§ -= param1;
         var _loc2_:Number = this.§1$6§ / §[!D§;
         var _loc3_:Number = Math.PI * 4 * _loc2_;
         §55§ += Math.cos(_loc3_) * this.§=E§;
         §^I§ += (§ !D§ * 10 + 1) * this.§<x§;
         if(this.§1$6§ <= 0)
         {
            this.§1$6§ = §[!D§;
         }
         §55§ += § !D§;
         return super.update(param1);
      }
   }
}
