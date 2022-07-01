package §%9§
{
   import §"m§.§,g§;
   import §;!b§.§%>§;
   import §?N§.§&j§;
   import §?N§.§6!b§;
   import flash.display.MovieClip;
   
   public class §<!M§ extends §6!b§
   {
       
      
      public function §<!M§(param1:MovieClip, param2:§%>§, param3:§,g§, param4:Number = 960, param5:Number = 560, param6:int = 11)
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      public function §;@§(param1:Boolean = false, param2:Boolean = true, param3:Boolean = false) : void
      {
         var _loc4_:§&j§ = null;
         super.closeAllPopups(param1,param2);
         for each(_loc4_ in §@![§)
         {
            if(_loc4_ && !_loc4_.isPersistentLayer && param3)
            {
               _loc4_.§9h§();
            }
         }
      }
   }
}
