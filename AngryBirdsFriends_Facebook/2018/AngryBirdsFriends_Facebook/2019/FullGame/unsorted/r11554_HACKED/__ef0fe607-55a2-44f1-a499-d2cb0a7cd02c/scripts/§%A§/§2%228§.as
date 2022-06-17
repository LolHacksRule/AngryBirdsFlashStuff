package §%A§
{
   import § !D§.§0$?§;
   import §^"[§.§2§;
   import §^"[§.§=#;§;
   
   public class §2"8§ extends §3!t§
   {
      
      public static const §%#N§:uint = 12000;
      
      public static var §"$1§:Number = 0;
      
      public static var §5",§:Number = 5000;
       
      
      private const §7#F§:int = Math.random() > 0.5 ? -1 : 1;
      
      private const §3!6§:Number = Math.random() * 0.2 - 0.1;
      
      private var § !?§:Number;
      
      private var § $,§:int;
      
      public function §2"8§(param1:§2#6§, param2:§=#;§, param3:String, param4:int, param5:int, param6:Number, param7:Number, param8:Number, param9:String, param10:int, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:Number = 1, param16:int = -1, param17:Boolean = false)
      {
         this.§ !?§ = §5",§ * Math.random();
         §"$1§ = §0$?§.§-#H§ / 100;
         this.§ $,§ = Math.round(Math.random() * 7 + 1);
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,param17,"PARTICLE_SNOW_" + this.§ $,§);
      }
      
      public function §0!J§() : int
      {
         if(this.§ $,§ >= 5 && this.§ $,§ <= 7)
         {
            return §>F§.PARTICLE_GROUP_BACKGROUND_EFFECTS;
         }
         return §>F§.PARTICLE_GROUP_FOREGROUND_EFFECTS;
      }
      
      override public function update(param1:Number) : Boolean
      {
         this.§ !?§ -= param1;
         var _loc2_:Number = this.§ !?§ / §5",§;
         var _loc3_:Number = Math.PI * 4 * _loc2_;
         §`!_§ += Math.cos(_loc3_) * this.§3!6§;
         §%"b§ += (§"$1§ * 10 + 1) * this.§7#F§;
         if(this.§ !?§ <= 0)
         {
            this.§ !?§ = §5",§;
         }
         §`!_§ += §"$1§;
         return super.update(param1);
      }
   }
}
