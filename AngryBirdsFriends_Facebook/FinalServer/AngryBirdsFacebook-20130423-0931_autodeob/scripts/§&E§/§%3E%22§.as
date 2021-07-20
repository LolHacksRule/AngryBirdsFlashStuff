package §&E§
{
   import §<T§.§^!Y§;
   import §<T§.§`m§;
   
   public class §>"§ extends §]6§
   {
      
      public static const §?I§:uint = 10000;
      
      public static var §&!c§:Number = 0;
      
      public static var §[B§:Number = 5000;
       
      
      private const §&!9§:int = Math.random() > 0.5 ? -1 : 1;
      
      private const §2!^§:Number = Math.random() * 0.2 - 0.1;
      
      private var §@!9§:Number;
      
      public function §>"§(param1:§^!Y§, param2:§`m§, param3:String, param4:int, param5:int, param6:Number, param7:Number, param8:Number, param9:String, param10:int, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:Number = 1, param16:int = -1, param17:Boolean = false)
      {
         this.§@!9§ = §[B§ * Math.random();
         var _loc18_:String = "PARTICLE_SNOW_" + Math.round(Math.random() * 7 + 1);
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,param17,_loc18_);
      }
      
      override public function update(param1:Number) : Boolean
      {
         this.§@!9§ -= param1;
         var _loc2_:Number = this.§@!9§ / §[B§;
         var _loc3_:Number = Math.PI * 4 * _loc2_;
         §>!,§ += Math.cos(_loc3_) * this.§2!^§;
         §!"W§ += (§&!c§ * 10 + 2) * this.§&!9§;
         if(this.§@!9§ <= 0)
         {
            this.§@!9§ = §[B§;
         }
         §>!,§ += §&!c§;
         return super.update(param1);
      }
   }
}
