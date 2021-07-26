package §7"o§
{
   import §#g§.§+!C§;
   import §7"T§.§#"^§;
   import §7"T§.§4#[§;
   
   public class §4"H§ extends §3#z§
   {
      
      public static const §,#b§:uint = 12000;
      
      public static var §;"<§:Number = 0;
      
      public static var §%#v§:Number = 5000;
       
      
      private const §39§:int = Math.random() > 0.5 ? -1 : 1;
      
      private const §3"-§:Number = Math.random() * 0.2 - 0.1;
      
      private var §5";§:Number;
      
      private var §`#U§:int;
      
      public function §4"H§(param1:§4#[§, param2:§#"^§, param3:String, param4:int, param5:int, param6:Number, param7:Number, param8:Number, param9:String, param10:int, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:Number = 1, param16:int = -1, param17:Boolean = false)
      {
         this.§5";§ = §%#v§ * Math.random();
         §;"<§ = §+!C§.§@!s§ / 100;
         this.§`#U§ = Math.round(Math.random() * 7 + 1);
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,param17,"PARTICLE_SNOW_" + this.§`#U§);
      }
      
      public function §4#W§() : int
      {
         if(this.§`#U§ >= 5 && this.§`#U§ <= 7)
         {
            return §##P§.PARTICLE_GROUP_BACKGROUND_EFFECTS;
         }
         return §##P§.PARTICLE_GROUP_FOREGROUND_EFFECTS;
      }
      
      override public function update(param1:Number) : Boolean
      {
         this.§5";§ -= param1;
         var _loc2_:Number = this.§5";§ / §%#v§;
         var _loc3_:Number = Math.PI * 4 * _loc2_;
         §1"m§ += Math.cos(_loc3_) * this.§3"-§;
         §^]§ += (§;"<§ * 10 + 1) * this.§39§;
         if(this.§5";§ <= 0)
         {
            this.§5";§ = §%#v§;
         }
         §1"m§ += §;"<§;
         return super.update(param1);
      }
   }
}
