package §"!,§
{
   import §^!Y§.§'R§;
   import §^!Y§.§else §;
   
   public class §5A§ extends §9!B§
   {
       
      
      private var §&;§:String;
      
      public function §5A§(param1:§else §, param2:§'R§, param3:String, param4:int, param5:int, param6:Number, param7:Number, param8:Number, param9:String, param10:int, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:Number = 1, param16:int = -1, param17:Boolean = false, param18:String = "")
      {
         var _loc19_:Boolean = false;
         var _loc20_:Boolean = true;
         if(_loc20_)
         {
            this.§&;§ = param18;
         }
         do
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,param17);
         }
         while(!_loc20_);
         
      }
      
      override protected function createVisuals() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(this.§&;§)
            {
               if(_loc1_ || this)
               {
                  addr38:
                  createParticle(this.§&;§,null,§@!]§,§8F§);
               }
            }
            return;
         }
         §§goto(addr38);
      }
   }
}
