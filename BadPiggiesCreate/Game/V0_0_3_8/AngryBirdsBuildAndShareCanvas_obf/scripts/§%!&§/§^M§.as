package §%!&§
{
   import §%!<§.§,6§;
   import §%h§.§5X§;
   import §'!O§.§@!l§;
   import §]!2§.Sprite;
   
   public class §^M§ extends §'"-§
   {
       
      
      public function §^M§(param1:§5X§, param2:§@!l§, param3:Sprite)
      {
         super(param1,param2,param3);
      }
      
      public function §!!L§() : void
      {
         §1!4§.sort(this.§',§);
      }
      
      private function §',§(param1:§;!x§, param2:§;!x§, param3:Array = null) : int
      {
         if(param1.isGround() || !param2.isGround() && param1.§9E§ == §,6§.§9!4§)
         {
            return -1;
         }
         return 1;
      }
      
      public function §7!a§(param1:§;!x§, param2:int) : void
      {
         var _loc3_:int = §1!4§.indexOf(param1);
         var _loc4_:§;!x§ = §1!4§[_loc3_];
         if(param2 > 0 && _loc3_ < §1!4§.length)
         {
            §1!4§[_loc3_ + 1] = §1!4§[_loc3_];
            §1!4§[_loc3_] = _loc4_;
         }
         else if(param2 == -1 && _loc3_ >= 1)
         {
            §1!4§[_loc3_ - 1] = §1!4§[_loc3_];
            §1!4§[_loc3_] = _loc4_;
         }
      }
   }
}
