package §#+§
{
   import §#?§.§6!4§;
   import §#?§.§=E§;
   
   public class §0!8§ extends §9!E§
   {
      
      public static const §?!&§:uint = 10000;
      
      public static var §4!O§:Number = 0;
      
      public static var §+]§:Number = 5000;
       
      
      private const §]D§:int = Math.random() > 0.5 ? -1 : 1;
      
      private const §"!N§:Number = Math.random() * 0.2 - 0.1;
      
      private var §<?§:Number;
      
      public function §0!8§(param1:§=E§, param2:§6!4§, param3:String, param4:int, param5:int, param6:Number, param7:Number, param8:Number, param9:String, param10:int, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:Number = 1, param16:int = -1, param17:Boolean = false)
      {
         this.§<?§ = §+]§ * Math.random();
         var _loc18_:String = "PARTICLE_SNOW_" + Math.round(Math.random() * 7 + 1);
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,param17,_loc18_);
      }
      
      override public function update(param1:Number) : Boolean
      {
         this.§<?§ -= param1;
         var _loc2_:Number = this.§<?§ / §+]§;
         var _loc3_:Number = Math.PI * 4 * _loc2_;
         §=!A§ += Math.cos(_loc3_) * this.§"!N§;
         §;!D§ += (§4!O§ * 10 + 2) * this.§]D§;
         if(this.§<?§ <= 0)
         {
            this.§<?§ = §+]§;
         }
         §=!A§ += §4!O§;
         return super.update(param1);
      }
   }
}
