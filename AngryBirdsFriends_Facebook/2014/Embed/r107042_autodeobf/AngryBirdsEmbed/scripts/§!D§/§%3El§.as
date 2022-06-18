package §!D§
{
   import §%q§.§'!A§;
   import §%q§.§9;§;
   import §[v§.§0&§;
   import §[v§.§7e§;
   
   public class §>l§ extends §?!§
   {
       
      
      private var §#]§:§9;§;
      
      public var §2!5§:Number = 0;
      
      public function §>l§(param1:§7e§, param2:§0&§, param3:String, param4:int, param5:int, param6:Number, param7:Number, param8:Number, param9:String, param10:int, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:Number = 1, param16:int = -1, param17:Boolean = false)
      {
         this.§-9§();
         var _loc18_:int = Math.random() * 7 + 1;
         var _loc19_:String = "WINGMAN_EFFECT_" + _loc18_;
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,param17,_loc19_);
         this.§5=§();
      }
      
      private function §5=§() : void
      {
         if(!this.§#]§)
         {
            this.§#]§ = §'!A§.§5+§.§@v§(§'!A§.§5+§.§;h§(this.§9!"§,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":0,
               "scaleY":0
            },0.25,§'!A§.§9!'§),§'!A§.§5+§.§;h§(this.§9!"§,{"rotation":0},{"rotation":180 * Math.PI / 180},0.25,§'!A§.§3!>§));
            this.§#]§.onComplete = this.§-9§;
            this.§#]§.play();
         }
      }
      
      private function §-9§() : void
      {
         this.§2!5§ = 0;
         this.§#]§ = null;
      }
   }
}
