package §="§
{
   import §&!s§.§1!S§;
   import §4!s§.§%I§;
   import §7M§.§+R§;
   import §^I§.Sprite;
   
   public class §<x§ extends §="-§
   {
       
      
      public function §<x§(param1:§%I§, param2:§+R§, param3:Sprite)
      {
         super(param1,param2,param3);
      }
      
      public function §#O§() : void
      {
         §>!l§.sort(this.§[!1§);
      }
      
      private function §[!1§(param1:§`T§, param2:§`T§, param3:Array = null) : int
      {
         if(param1.isGround() || !param2.isGround() && param1.§`!A§ == §1!S§.§<J§)
         {
            return -1;
         }
         return 1;
      }
      
      public function §=!O§(param1:§`T§, param2:int) : void
      {
         var _loc3_:int = §>!l§.indexOf(param1);
         var _loc4_:§`T§ = §>!l§[_loc3_];
         if(param2 > 0 && _loc3_ < §>!l§.length)
         {
            §>!l§[_loc3_ + 1] = §>!l§[_loc3_];
            §>!l§[_loc3_] = _loc4_;
         }
         else if(param2 == -1 && _loc3_ >= 1)
         {
            §>!l§[_loc3_ - 1] = §>!l§[_loc3_];
            §>!l§[_loc3_] = _loc4_;
         }
      }
   }
}
