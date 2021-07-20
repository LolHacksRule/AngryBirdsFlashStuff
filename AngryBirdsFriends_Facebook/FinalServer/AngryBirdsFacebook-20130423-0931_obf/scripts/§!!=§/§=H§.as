package §!!=§
{
   import §4!<§.§'!S§;
   import §9!n§.§0"T§;
   
   public class §=H§ extends §"l§
   {
       
      
      public function §=H§(param1:§'!S§, param2:§0"T§, param3:Number = 1.0)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param3))
         {
            super(param1,param2,param3);
         }
      }
      
      public function §@"A§() : Number
      {
         return §8">§.x + §8! § / §8">§.scale / 2;
      }
      
      public function §"!4§() : Number
      {
         return §8">§.x - §8! § / §8">§.scale / 2;
      }
      
      override protected function drawEngineDebug() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            mLevelMain.mLevelEngine.updateScrollAndScale(§8@§,§@";§,§<"E§ / 0.67);
         }
      }
   }
}
