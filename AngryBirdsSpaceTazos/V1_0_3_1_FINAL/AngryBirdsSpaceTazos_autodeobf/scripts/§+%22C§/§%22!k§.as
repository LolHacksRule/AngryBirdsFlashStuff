package §+"C§
{
   import §'!k§.§>!P§;
   import §+"2§.§%!A§;
   import §+"2§.§5!M§;
   import §71§.§;l§;
   import flash.display.MovieClip;
   
   public class §"!k§ extends §%!A§
   {
       
      
      public function §"!k§(param1:MovieClip, param2:§;l§, param3:§>!P§, param4:Number = 960, param5:Number = 560, param6:int = 11)
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      public function §@!$§(param1:Boolean = false, param2:Boolean = true, param3:Boolean = false) : void
      {
         var _loc4_:§5!M§ = null;
         super.§`x§(param1,param2);
         for each(_loc4_ in §,!y§)
         {
            if(_loc4_ && !_loc4_.isPersistentLayer && param3)
            {
               _loc4_.§]y§();
            }
         }
      }
   }
}
