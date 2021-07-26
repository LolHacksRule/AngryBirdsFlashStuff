package §7"p§
{
   import §'G§.§3$§;
   import §'G§.§^"[§;
   import §>2§.§7#;§;
   
   public class §[$<§ extends §&"+§
   {
      
      public static const §;!N§:uint = 12000;
      
      public static var §0M§:Number = 0;
      
      public static var §1N§:Number = 5000;
       
      
      private const §?";§:int = Math.random() > 0.5 ? -1 : 1;
      
      private const §?"d§:Number = Math.random() * 0.2 - 0.1;
      
      private var §8,§:Number;
      
      private var §!#N§:int;
      
      public function §[$<§(param1:§^"[§, param2:§3$§, param3:String, param4:int, param5:int, param6:Number, param7:Number, param8:Number, param9:String, param10:int, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:Number = 1, param16:int = -1, param17:Boolean = false)
      {
         this.§8,§ = §1N§ * Math.random();
         §0M§ = §7#;§.§ G§ / 100;
         this.§!#N§ = Math.round(Math.random() * 7 + 1);
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,param17,"PARTICLE_SNOW_" + this.§!#N§);
      }
      
      public function §["6§() : int
      {
         if(this.§!#N§ >= 5 && this.§!#N§ <= 7)
         {
            return §<#]§.PARTICLE_GROUP_BACKGROUND_EFFECTS;
         }
         return §<#]§.PARTICLE_GROUP_FOREGROUND_EFFECTS;
      }
      
      override public function update(param1:Number) : Boolean
      {
         this.§8,§ -= param1;
         var _loc2_:Number = this.§8,§ / §1N§;
         var _loc3_:Number = Math.PI * 4 * _loc2_;
         §@@§ += Math.cos(_loc3_) * this.§?"d§;
         §'$5§ += (§0M§ * 10 + 1) * this.§?";§;
         if(this.§8,§ <= 0)
         {
            this.§8,§ = §1N§;
         }
         §@@§ += §0M§;
         return super.update(param1);
      }
   }
}
