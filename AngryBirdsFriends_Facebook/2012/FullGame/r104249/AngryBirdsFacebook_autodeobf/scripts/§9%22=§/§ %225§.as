package §9"=§
{
   import §#S§.§+!;§;
   import §#S§.§?!?§;
   
   public class § "5§ extends §#Q§
   {
      
      public static const §,-§:uint = 10000;
      
      public static var §@"I§:Number = 0;
      
      public static var §6d§:Number = 5000;
       
      
      private const §-!1§:int = Math.random() > 0.5 ? -1 : 1;
      
      private const §@!'§:Number = Math.random() * 0.2 - 0.1;
      
      private var §'!!§:Number;
      
      public function § "5§(param1:§+!;§, param2:§?!?§, param3:String, param4:int, param5:int, param6:Number, param7:Number, param8:Number, param9:String, param10:int, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:Number = 1, param16:int = -1, param17:Boolean = false)
      {
         this.§'!!§ = §6d§ * Math.random();
         var _loc18_:String = "PARTICLE_SNOW_" + Math.round(Math.random() * 7 + 1);
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,param17,_loc18_);
      }
      
      override public function update(param1:Number) : Boolean
      {
         this.§'!!§ -= param1;
         var _loc2_:Number = this.§'!!§ / §6d§;
         var _loc3_:Number = Math.PI * 4 * _loc2_;
         §-%§ += Math.cos(_loc3_) * this.§@!'§;
         § !r§ += (§@"I§ * 10 + 2) * this.§-!1§;
         if(this.§'!!§ <= 0)
         {
            this.§'!!§ = §6d§;
         }
         §-%§ += §@"I§;
         return super.update(param1);
      }
   }
}
