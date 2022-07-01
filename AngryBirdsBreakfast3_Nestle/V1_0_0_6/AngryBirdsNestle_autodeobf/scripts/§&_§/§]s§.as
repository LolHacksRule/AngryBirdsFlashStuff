package §&_§
{
   import § ,§.§>u§;
   import §5u§.§!!v§;
   import §5u§.§]m§;
   import §6!^§.§1!7§;
   import flash.display.MovieClip;
   
   public class §]s§ extends §!!v§
   {
       
      
      public function §]s§(param1:MovieClip, param2:§>u§, param3:§1!7§, param4:Number = 960, param5:Number = 560, param6:int = 11)
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      public function §41§(param1:Boolean = false, param2:Boolean = true, param3:Boolean = false) : void
      {
         var _loc4_:§]m§ = null;
         super.closeAllPopups(param1,param2);
         for each(_loc4_ in §<G§)
         {
            if(_loc4_ && !_loc4_.isPersistentLayer && param3)
            {
               _loc4_.§@C§();
            }
         }
      }
   }
}
