package §8e§
{
   import §9!2§.§'![§;
   import §9!2§.§0!5§;
   
   public class §?#§ extends §"!U§
   {
       
      
      private var §,v§:String;
      
      public function §?#§(param1:§0!5§, param2:§'![§, param3:String, param4:int, param5:int, param6:Number, param7:Number, param8:Number, param9:String, param10:int, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:Number = 1, param16:int = -1, param17:Boolean = false, param18:String = "")
      {
         this.§,v§ = param18;
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,param17);
      }
      
      override protected function createVisuals() : void
      {
         if(this.§,v§)
         {
            createParticle(this.§,v§,null,§@7§,§]!Q§);
         }
      }
   }
}
