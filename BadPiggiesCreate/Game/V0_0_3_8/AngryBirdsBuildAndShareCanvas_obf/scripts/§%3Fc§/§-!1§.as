package §?c§
{
   import § !V§.§7!P§;
   import § !V§.§]"5§;
   
   public class §-!1§ extends §3!u§
   {
       
      
      private var §0!5§:String;
      
      public function §-!1§(param1:§]"5§, param2:§7!P§, param3:String, param4:int, param5:int, param6:Number, param7:Number, param8:Number, param9:String, param10:int, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:Number = 1, param16:int = -1, param17:Boolean = false, param18:String = "")
      {
         this.§0!5§ = param18;
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,param17);
      }
      
      override protected function createVisuals() : void
      {
         if(this.§0!5§)
         {
            createParticle(this.§0!5§,null,§`r§,§>%§);
         }
      }
   }
}
