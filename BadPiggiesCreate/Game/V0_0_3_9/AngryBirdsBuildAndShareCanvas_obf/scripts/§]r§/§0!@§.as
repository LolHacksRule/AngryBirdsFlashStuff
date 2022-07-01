package §]r§
{
   import §3>§.§=!f§;
   import §6!&§.§0!b§;
   import §7q§.Sprite;
   import §=b§.§-!K§;
   
   public class §0!@§ extends §2"%§
   {
       
      
      public function §0!@§(param1:§-!K§, param2:§0!b§, param3:Sprite)
      {
         super(param1,param2,param3);
      }
      
      public function §0n§() : void
      {
         §var §.sort(this.§`"1§);
      }
      
      private function §`"1§(param1:§9!R§, param2:§9!R§, param3:Array = null) : int
      {
         if(param1.isGround() || !param2.isGround() && param1.§4!J§ == §=!f§.§3"3§)
         {
            return -1;
         }
         return 1;
      }
      
      public function §#!F§(param1:§9!R§, param2:int) : void
      {
         var _loc3_:int = §var §.indexOf(param1);
         var _loc4_:§9!R§ = §var §[_loc3_];
         if(param2 > 0 && _loc3_ < §var §.length)
         {
            §var §[_loc3_ + 1] = §var §[_loc3_];
            §var §[_loc3_] = _loc4_;
         }
         else if(param2 == -1 && _loc3_ >= 1)
         {
            §var §[_loc3_ - 1] = §var §[_loc3_];
            §var §[_loc3_] = _loc4_;
         }
      }
   }
}
