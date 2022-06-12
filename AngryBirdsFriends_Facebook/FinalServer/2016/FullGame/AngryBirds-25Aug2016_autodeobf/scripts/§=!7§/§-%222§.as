package §=!7§
{
   import §52§.§&#q§;
   import §@"§.§&!=§;
   import §@"§.§]!-§;
   
   public class §-"2§ extends §,"?§
   {
      
      public static const §&"S§:uint = 12000;
      
      public static var §^!m§:Number = 0;
      
      public static var §"#7§:Number = 5000;
       
      
      private const §^5§:int = Math.random() > 0.5 ? -1 : 1;
      
      private const §6"^§:Number = Math.random() * 0.2 - 0.1;
      
      private var §'!M§:Number;
      
      private var §'H§:int;
      
      public function §-"2§(param1:§]!-§, param2:§&!=§, param3:String, param4:int, param5:int, param6:Number, param7:Number, param8:Number, param9:String, param10:int, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:Number = 1, param16:int = -1, param17:Boolean = false)
      {
         this.§'!M§ = §"#7§ * Math.random();
         §^!m§ = §&#q§.§+"d§ / 100;
         this.§'H§ = Math.round(Math.random() * 7 + 1);
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,param17,"PARTICLE_SNOW_" + this.§'H§);
      }
      
      public function §0"^§() : int
      {
         if(this.§'H§ >= 5 && this.§'H§ <= 7)
         {
            return §5"6§.PARTICLE_GROUP_BACKGROUND_EFFECTS;
         }
         return §5"6§.§4"8§;
      }
      
      override public function update(param1:Number) : Boolean
      {
         this.§'!M§ -= param1;
         var _loc2_:Number = this.§'!M§ / §"#7§;
         var _loc3_:Number = Math.PI * 4 * _loc2_;
         §="W§ += Math.cos(_loc3_) * this.§6"^§;
         §%##§ += (§^!m§ * 10 + 1) * this.§^5§;
         if(this.§'!M§ <= 0)
         {
            this.§'!M§ = §"#7§;
         }
         §="W§ += §^!m§;
         return super.update(param1);
      }
   }
}
