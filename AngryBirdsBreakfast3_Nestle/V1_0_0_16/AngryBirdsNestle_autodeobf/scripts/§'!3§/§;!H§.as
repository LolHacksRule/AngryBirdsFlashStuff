package §'!3§
{
   import §,!'§.§5O§;
   import §,M§.§+f§;
   import §1!i§.§ 3§;
   import §1!i§.§"g§;
   import flash.display.MovieClip;
   
   public class §;!H§ extends §"g§
   {
       
      
      public function §;!H§(param1:MovieClip, param2:§+f§, param3:§5O§, param4:Number = 960, param5:Number = 560, param6:int = 11)
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      public function §=!5§(param1:Boolean = false, param2:Boolean = true, param3:Boolean = false) : void
      {
         var _loc4_:§ 3§ = null;
         super.closeAllPopups(param1,param2);
         for each(_loc4_ in §3S§)
         {
            if(_loc4_ && !_loc4_.isPersistentLayer && param3)
            {
               _loc4_.§4"3§();
            }
         }
      }
   }
}
