package §?I§
{
   import § S§.§3!b§;
   import § S§.§]"5§;
   import §"!G§.§3!f§;
   import §0P§.§+!l§;
   import flash.display.MovieClip;
   
   public class §4W§ extends §3!b§
   {
       
      
      public function §4W§(param1:MovieClip, param2:§3!f§, param3:§+!l§, param4:Number = 960, param5:Number = 560, param6:int = 11)
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      public function §6O§(param1:Boolean = false, param2:Boolean = true, param3:Boolean = false) : void
      {
         var _loc4_:§]"5§ = null;
         super.closeAllPopups(param1,param2);
         for each(_loc4_ in §@<§)
         {
            if(_loc4_ && !_loc4_.isPersistentLayer && param3)
            {
               _loc4_.§9>§();
            }
         }
      }
   }
}
