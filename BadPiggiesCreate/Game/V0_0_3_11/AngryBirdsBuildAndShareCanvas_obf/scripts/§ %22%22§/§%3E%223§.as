package § ""§
{
   import §+%§.§5!F§;
   import §1!Y§.Sprite;
   import §1!v§.§@%§;
   import §8q§.§6n§;
   
   public class §>"3§ extends §6!u§
   {
       
      
      public function §>"3§(param1:§@%§, param2:§5!F§, param3:Sprite)
      {
         super(param1,param2,param3);
      }
      
      public function §8w§() : void
      {
         §>i§.sort(this.§[<§);
      }
      
      private function §[<§(param1:§%,§, param2:§%,§, param3:Array = null) : int
      {
         if(param1.isGround() || !param2.isGround() && param1.§"W§ == §6n§.§=!v§)
         {
            return -1;
         }
         return 1;
      }
      
      public function §5!$§(param1:§%,§, param2:int) : void
      {
         var _loc3_:int = §>i§.indexOf(param1);
         var _loc4_:§%,§ = §>i§[_loc3_];
         if(param2 > 0 && _loc3_ < §>i§.length)
         {
            §>i§[_loc3_ + 1] = §>i§[_loc3_];
            §>i§[_loc3_] = _loc4_;
         }
         else if(param2 == -1 && _loc3_ >= 1)
         {
            §>i§[_loc3_ - 1] = §>i§[_loc3_];
            §>i§[_loc3_] = _loc4_;
         }
      }
   }
}
