package §&!P§
{
   import §%!0§.§,4§;
   import §+!-§.Sprite;
   import §<i§.§'!e§;
   import §]";§.§4!p§;
   
   public class §`>§ extends §^!!§
   {
       
      
      public function §`>§(param1:§,4§, param2:§'!e§, param3:Sprite)
      {
         super(param1,param2,param3);
      }
      
      public function §^!e§() : void
      {
         §9n§.sort(this.§ "!§);
      }
      
      private function § "!§(param1:§``§, param2:§``§, param3:Array = null) : int
      {
         if(param1.isGround() || !param2.isGround() && param1.§@F§ == §4!p§.§ z§)
         {
            return -1;
         }
         return 1;
      }
      
      public function §,x§(param1:§``§, param2:int) : void
      {
         var _loc3_:int = §9n§.indexOf(param1);
         var _loc4_:§``§ = §9n§[_loc3_];
         if(param2 > 0 && _loc3_ < §9n§.length)
         {
            §9n§[_loc3_ + 1] = §9n§[_loc3_];
            §9n§[_loc3_] = _loc4_;
         }
         else if(param2 == -1 && _loc3_ >= 1)
         {
            §9n§[_loc3_ - 1] = §9n§[_loc3_];
            §9n§[_loc3_] = _loc4_;
         }
      }
   }
}
