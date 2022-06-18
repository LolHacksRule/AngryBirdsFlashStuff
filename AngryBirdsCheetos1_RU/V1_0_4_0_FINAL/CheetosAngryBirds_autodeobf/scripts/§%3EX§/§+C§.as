package §>X§
{
   import §`n§.§#H§;
   import §`n§.§2!"§;
   
   public class §+C§ extends §7!%§
   {
       
      
      private var §6j§:String;
      
      public function §+C§(param1:§2!"§, param2:§#H§, param3:String, param4:int, param5:int, param6:Number, param7:Number, param8:Number, param9:String, param10:int, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:Number = 1, param16:int = -1, param17:Boolean = false, param18:String = "")
      {
         this.§6j§ = param18;
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,param17);
      }
      
      override protected function createVisuals() : void
      {
         if(this.§6j§)
         {
            createParticle(this.§6j§,null,§6a§,§9!J§);
         }
      }
   }
}
