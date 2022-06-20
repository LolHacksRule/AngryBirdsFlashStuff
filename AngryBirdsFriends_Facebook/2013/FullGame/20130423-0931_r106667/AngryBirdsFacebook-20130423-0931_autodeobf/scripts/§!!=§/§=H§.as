package §!!=§
{
   import §4!<§.§'!S§;
   import §9!n§.§0"T§;
   
   public class §=H§ extends §"l§
   {
       
      
      public function §=H§(param1:§'!S§, param2:§0"T§, param3:Number = 1.0)
      {
         super(param1,param2,param3);
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
         mLevelMain.mLevelEngine.updateScrollAndScale(§8@§,§@";§,§<"E§ / 0.67);
      }
   }
}
