package §2!,§
{
   import §'"&§.§4!2§;
   import §1!s§.§4!6§;
   import §1!s§.§4"5§;
   import §7"6§.§^!_§;
   import flash.display.MovieClip;
   
   public class §2!@§ extends §4"5§
   {
       
      
      public function §2!@§(param1:MovieClip, param2:§^!_§, param3:§4!2§, param4:Number = 960, param5:Number = 560, param6:int = 11)
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      public function §?C§(param1:Boolean = false, param2:Boolean = true, param3:Boolean = false) : void
      {
         var _loc4_:§4!6§ = null;
         super.closeAllPopups(param1,param2);
         for each(_loc4_ in §<a§)
         {
            if(_loc4_ && !_loc4_.isPersistentLayer && param3)
            {
               _loc4_.§3!F§();
            }
         }
      }
   }
}
