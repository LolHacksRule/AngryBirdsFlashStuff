package §!'§
{
   import §@0§.§9"^§;
   import §`"8§.§34§;
   import §`"8§.§`#+§;
   
   public class §3c§ extends §8! §
   {
      
      public static const §7#W§:uint = 12000;
      
      public static var §4!5§:Number = 0;
      
      public static var §;2§:Number = 5000;
       
      
      private const §'" §:int = Math.random() > 0.5 ? -1 : 1;
      
      private const §!#>§:Number = Math.random() * 0.2 - 0.1;
      
      private var §#";§:Number;
      
      private var §?#]§:int;
      
      public function §3c§(param1:§`#+§, param2:§34§, param3:String, param4:int, param5:int, param6:Number, param7:Number, param8:Number, param9:String, param10:int, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:Number = 1, param16:int = -1, param17:Boolean = false)
      {
         this.§#";§ = §;2§ * Math.random();
         §4!5§ = §9"^§.§=#$§ / 100;
         this.§?#]§ = Math.round(Math.random() * 7 + 1);
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,param17,"PARTICLE_SNOW_" + this.§?#]§);
      }
      
      public function §05§() : int
      {
         if(this.§?#]§ >= 5 && this.§?#]§ <= 7)
         {
            return §[p§.PARTICLE_GROUP_BACKGROUND_EFFECTS;
         }
         return §[p§.PARTICLE_GROUP_FOREGROUND_EFFECTS;
      }
      
      override public function update(param1:Number) : Boolean
      {
         this.§#";§ -= param1;
         var _loc2_:Number = this.§#";§ / §;2§;
         var _loc3_:Number = Math.PI * 4 * _loc2_;
         §@q§ += Math.cos(_loc3_) * this.§!#>§;
         §]#8§ += (§4!5§ * 10 + 1) * this.§'" §;
         if(this.§#";§ <= 0)
         {
            this.§#";§ = §;2§;
         }
         §@q§ += §4!5§;
         return super.update(param1);
      }
   }
}
