package §^$1§
{
   import §+!C§.§9!b§;
   import §7!j§.§"I§;
   import §7!j§.§'0§;
   
   public class §%Z§ extends §88§
   {
      
      public static const §-#[§:uint = 12000;
      
      public static var §<8§:Number = 0;
      
      public static var §;X§:Number = 5000;
       
      
      private const §""h§:int = Math.random() > 0.5 ? -1 : 1;
      
      private const §>#V§:Number = Math.random() * 0.2 - 0.1;
      
      private var §%x§:Number;
      
      private var §<#-§:int;
      
      public function §%Z§(param1:§"I§, param2:§'0§, param3:String, param4:int, param5:int, param6:Number, param7:Number, param8:Number, param9:String, param10:int, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:Number = 1, param16:int = -1, param17:Boolean = false)
      {
         this.§%x§ = §;X§ * Math.random();
         §<8§ = §9!b§.§2!D§ / 100;
         this.§<#-§ = Math.round(Math.random() * 7 + 1);
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,param17,"PARTICLE_SNOW_" + this.§<#-§);
      }
      
      public function §@!G§() : int
      {
         if(this.§<#-§ >= 5 && this.§<#-§ <= 7)
         {
            return §7"6§.PARTICLE_GROUP_BACKGROUND_EFFECTS;
         }
         return §7"6§.§#$4§;
      }
      
      override public function update(param1:Number) : Boolean
      {
         this.§%x§ -= param1;
         var _loc2_:Number = this.§%x§ / §;X§;
         var _loc3_:Number = Math.PI * 4 * _loc2_;
         §6! § += Math.cos(_loc3_) * this.§>#V§;
         §,!H§ += (§<8§ * 10 + 1) * this.§""h§;
         if(this.§%x§ <= 0)
         {
            this.§%x§ = §;X§;
         }
         §6! § += §<8§;
         return super.update(param1);
      }
   }
}
