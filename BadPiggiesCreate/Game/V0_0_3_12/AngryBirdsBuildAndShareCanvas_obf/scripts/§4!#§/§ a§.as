package §4!#§
{
   import §#?§.§4">§;
   import §0E§.§#O§;
   import §@!i§.Sprite;
   import §[B§.§"d§;
   
   public class § a§ extends §[R§
   {
       
      
      public function § a§(param1:§"d§, param2:§#O§, param3:Sprite)
      {
         super(param1,param2,param3);
      }
      
      public function § !^§() : void
      {
         §7!q§.sort(this.§[!c§);
      }
      
      private function §[!c§(param1:§60§, param2:§60§, param3:Array = null) : int
      {
         if(param1.isGround() || !param2.isGround() && param1.§#>§ == §4">§.§2'§)
         {
            return -1;
         }
         return 1;
      }
      
      public function §%!L§(param1:§60§, param2:int) : void
      {
         var _loc3_:int = §7!q§.indexOf(param1);
         var _loc4_:§60§ = §7!q§[_loc3_];
         if(param2 > 0 && _loc3_ < §7!q§.length)
         {
            §7!q§[_loc3_ + 1] = §7!q§[_loc3_];
            §7!q§[_loc3_] = _loc4_;
         }
         else if(param2 == -1 && _loc3_ >= 1)
         {
            §7!q§[_loc3_ - 1] = §7!q§[_loc3_];
            §7!q§[_loc3_] = _loc4_;
         }
      }
   }
}
