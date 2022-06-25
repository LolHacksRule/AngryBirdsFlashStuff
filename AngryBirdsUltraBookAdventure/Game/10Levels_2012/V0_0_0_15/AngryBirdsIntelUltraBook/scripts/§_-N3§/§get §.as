package §_-N3§
{
   import §_-8d§.§_-0FF§;
   import §_-8d§.§_-Ew§;
   
   public class §get § extends §_-Hv§
   {
       
      
      private var §_-SE§:String;
      
      public function §get §(param1:§_-Ew§, param2:§_-0FF§, param3:String, param4:int, param5:int, param6:Number, param7:Number, param8:Number, param9:String, param10:int, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:Number = 1, param16:int = -1, param17:Boolean = false, param18:String = "")
      {
         var _loc19_:Boolean = true;
         var _loc20_:Boolean = false;
         if(!_loc20_)
         {
            this.§_-SE§ = param18;
         }
         do
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,param17);
         }
         while(_loc20_);
         
      }
      
      override protected function createVisuals() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(this.§_-SE§)
            {
               if(!(_loc2_ && _loc1_))
               {
                  addr38:
                  createParticle(this.§_-SE§,null,§_-jR§,§_-xi§);
               }
            }
            return;
         }
         §§goto(addr38);
      }
   }
}
