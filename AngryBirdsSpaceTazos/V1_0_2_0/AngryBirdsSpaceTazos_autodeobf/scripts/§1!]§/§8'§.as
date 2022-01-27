package §1!]§
{
   import §"!>§.§<!o§;
   import §"_§.§4!N§;
   import §"_§.§5S§;
   import §;!,§.§"q§;
   import flash.display.MovieClip;
   
   public class §8'§ extends §5S§
   {
       
      
      public function §8'§(param1:MovieClip, param2:§<!o§, param3:§"q§, param4:Number = 960, param5:Number = 560, param6:int = 11)
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      public function §<!B§(param1:Boolean = false, param2:Boolean = true, param3:Boolean = false) : void
      {
         var _loc4_:§4!N§ = null;
         super.§=!B§(param1,param2);
         for each(_loc4_ in §>Z§)
         {
            if(_loc4_ && !_loc4_.isPersistentLayer && param3)
            {
               _loc4_.§0!%§();
            }
         }
      }
   }
}
