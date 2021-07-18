package §!E§
{
   import §=!<§.§>"§;
   import §=!<§.§>a§;
   
   public class §default§ extends §!U§
   {
       
      
      private var §<b§:String;
      
      public function §default§(param1:§>"§, param2:§>a§, param3:String, param4:int, param5:int, param6:Number, param7:Number, param8:Number, param9:String, param10:int, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:Number = 1, param16:int = -1, param17:Boolean = false, param18:String = "")
      {
         var _loc19_:Boolean = true;
         var _loc20_:Boolean = false;
         if(_loc19_ || param1)
         {
            this.§<b§ = param18;
         }
         do
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,param17);
         }
         while(!(_loc19_ || param1));
         
      }
      
      override protected function createVisuals() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(this.§<b§)
            {
               if(!_loc2_)
               {
                  addr43:
                  createParticle(this.§<b§,null,§<d§,§81§);
               }
            }
            return;
         }
         §§goto(addr43);
      }
   }
}
