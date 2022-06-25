package §4@§
{
   import §9K§.§"!?§;
   import §9K§.§5!H§;
   
   public class §>E§ extends §<!6§
   {
       
      
      private var §4N§:String;
      
      public function §>E§(param1:§"!?§, param2:§5!H§, param3:String, param4:int, param5:int, param6:Number, param7:Number, param8:Number, param9:String, param10:int, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:Number = 1, param16:int = -1, param17:Boolean = false, param18:String = "")
      {
         var _loc19_:Boolean = true;
         var _loc20_:Boolean = false;
         if(!(_loc20_ && param3))
         {
            this.§4N§ = param18;
            if(_loc19_ || param1)
            {
               super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,param17);
            }
         }
      }
      
      override protected function createVisuals() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(this.§4N§)
            {
               if(_loc2_ || _loc1_)
               {
                  createParticle(this.§4N§,null,§]!§,§7e§);
               }
            }
         }
      }
   }
}
