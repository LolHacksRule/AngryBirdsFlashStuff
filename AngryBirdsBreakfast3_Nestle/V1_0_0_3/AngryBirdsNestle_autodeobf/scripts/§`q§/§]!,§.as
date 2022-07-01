package §`q§
{
   import §<R§.§!@§;
   import §[<§.§'!P§;
   import §[<§.§,H§;
   import §]!d§.§-!<§;
   import flash.display.MovieClip;
   
   public class §]!,§ extends §'!P§
   {
       
      
      public function §]!,§(param1:MovieClip, param2:§-!<§, param3:§!@§, param4:Number = 960, param5:Number = 560, param6:int = 11)
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      public function §#!r§(param1:Boolean = false, param2:Boolean = true, param3:Boolean = false) : void
      {
         var _loc4_:§,H§ = null;
         super.closeAllPopups(param1,param2);
         for each(_loc4_ in §[!J§)
         {
            if(_loc4_ && !_loc4_.isPersistentLayer && param3)
            {
               _loc4_.§ !i§();
            }
         }
      }
   }
}
