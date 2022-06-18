package §!D§
{
   import §[v§.§0&§;
   import §[v§.§7e§;
   
   public class §%'§ extends §?!§
   {
      
      public static const §4R§:uint = 10000;
      
      public static var §!l§:Number = 0;
      
      public static var § !L§:Number = 5000;
       
      
      private const §;A§:int = Math.random() > 0.5 ? -1 : 1;
      
      private const §+§:Number = Math.random() * 0.2 - 0.1;
      
      private var §-l§:Number;
      
      public function §%'§(param1:§7e§, param2:§0&§, param3:String, param4:int, param5:int, param6:Number, param7:Number, param8:Number, param9:String, param10:int, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:Number = 1, param16:int = -1, param17:Boolean = false)
      {
         this.§-l§ = § !L§ * Math.random();
         var _loc18_:String = "PARTICLE_SNOW_" + Math.round(Math.random() * 7 + 1);
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,param17,_loc18_);
      }
      
      override public function update(param1:Number) : Boolean
      {
         this.§-l§ -= param1;
         var _loc2_:Number = this.§-l§ / § !L§;
         var _loc3_:Number = Math.PI * 4 * _loc2_;
         §;y§ += Math.cos(_loc3_) * this.§+§;
         §4!5§ += (§!l§ * 10 + 2) * this.§;A§;
         if(this.§-l§ <= 0)
         {
            this.§-l§ = § !L§;
         }
         §;y§ += §!l§;
         return super.update(param1);
      }
   }
}
