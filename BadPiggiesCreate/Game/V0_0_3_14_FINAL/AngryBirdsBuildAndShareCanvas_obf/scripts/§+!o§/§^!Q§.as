package §+!o§
{
   import §"v§.§9"§;
   import §,a§.§]!>§;
   import §5!V§.§!w§;
   import §default§.Sprite;
   
   public class §^!Q§ extends §?"-§
   {
       
      
      public function §^!Q§(param1:§!w§, param2:§9"§, param3:Sprite)
      {
         super(param1,param2,param3);
      }
      
      public function §6!Y§() : void
      {
         §84§.sort(this.§`!N§);
      }
      
      private function §`!N§(param1:§]"5§, param2:§]"5§, param3:Array = null) : int
      {
         if(param1.isGround() || !param2.isGround() && param1.§,!E§ == §]!>§.§&;§)
         {
            return -1;
         }
         return 1;
      }
      
      public function §!x§(param1:§]"5§, param2:int) : void
      {
         var _loc3_:int = §84§.indexOf(param1);
         var _loc4_:§]"5§ = §84§[_loc3_];
         if(param2 > 0 && _loc3_ < §84§.length)
         {
            §84§[_loc3_ + 1] = §84§[_loc3_];
            §84§[_loc3_] = _loc4_;
         }
         else if(param2 == -1 && _loc3_ >= 1)
         {
            §84§[_loc3_ - 1] = §84§[_loc3_];
            §84§[_loc3_] = _loc4_;
         }
      }
   }
}
