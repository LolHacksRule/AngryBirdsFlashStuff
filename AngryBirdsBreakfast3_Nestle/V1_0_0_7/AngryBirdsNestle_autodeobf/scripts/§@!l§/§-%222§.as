package §@!l§
{
   import §!!`§.§8"'§;
   import §!!`§.§=!q§;
   import §'!u§.§&S§;
   import §="3§.§[N§;
   import flash.display.MovieClip;
   
   public class §-"2§ extends §8"'§
   {
       
      
      public function §-"2§(param1:MovieClip, param2:§&S§, param3:§[N§, param4:Number = 960, param5:Number = 560, param6:int = 11)
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      public function §!!k§(param1:Boolean = false, param2:Boolean = true, param3:Boolean = false) : void
      {
         var _loc4_:§=!q§ = null;
         super.closeAllPopups(param1,param2);
         for each(_loc4_ in §>"5§)
         {
            if(_loc4_ && !_loc4_.isPersistentLayer && param3)
            {
               _loc4_.§6!r§();
            }
         }
      }
   }
}
