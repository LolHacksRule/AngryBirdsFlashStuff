package §?"&§
{
   import § ""§.§]k§;
   import §0s§.§];§;
   import §8!E§.§?!X§;
   import §`L§.Sprite;
   
   public class §,!"§ extends §5b§
   {
       
      
      public function §,!"§(param1:§?!X§, param2:§];§, param3:Sprite)
      {
         super(param1,param2,param3);
      }
      
      public function §#!v§() : void
      {
         §+"'§.sort(this.§-[§);
      }
      
      private function §-[§(param1:§"!q§, param2:§"!q§, param3:Array = null) : int
      {
         if(param1.isGround() || !param2.isGround() && param1.§!"3§ == §]k§.§'U§)
         {
            return -1;
         }
         return 1;
      }
      
      public function §7!"§(param1:§"!q§, param2:int) : void
      {
         var _loc3_:int = §+"'§.indexOf(param1);
         var _loc4_:§"!q§ = §+"'§[_loc3_];
         if(param2 > 0 && _loc3_ < §+"'§.length)
         {
            §+"'§[_loc3_ + 1] = §+"'§[_loc3_];
            §+"'§[_loc3_] = _loc4_;
         }
         else if(param2 == -1 && _loc3_ >= 1)
         {
            §+"'§[_loc3_ - 1] = §+"'§[_loc3_];
            §+"'§[_loc3_] = _loc4_;
         }
      }
   }
}
