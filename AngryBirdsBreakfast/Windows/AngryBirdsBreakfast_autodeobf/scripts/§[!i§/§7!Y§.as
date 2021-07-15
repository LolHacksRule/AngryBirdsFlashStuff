package §[!i§
{
   import §48§.§5E§;
   import §48§.§^A§;
   import §;0§.§6h§;
   import §?""§.§6!A§;
   import flash.display.MovieClip;
   
   public class §7!Y§ extends §5E§
   {
       
      
      public function §7!Y§(param1:MovieClip, param2:§6h§, param3:§6!A§, param4:Number, param5:Number, param6:int = 11)
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      public function §==§(param1:Boolean = false, param2:Boolean = true, param3:Boolean = false) : void
      {
         var _loc4_:§^A§ = null;
         super.§[!"§(param1,param2);
         for each(_loc4_ in §"x§)
         {
            if(_loc4_ && !_loc4_.isPersistentLayer && param3)
            {
               _loc4_.§9§();
            }
         }
      }
   }
}
