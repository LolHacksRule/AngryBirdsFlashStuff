package §`u§
{
   import §0!2§.§5"L§;
   import §`!n§.§#!s§;
   
   public class §4]§ extends §5!-§
   {
       
      
      public function §4]§(param1:§5"L§, param2:§#!s§, param3:Number = 1.0)
      {
         super(param1,param2,param3);
      }
      
      public function §4!W§() : Number
      {
         return §true§.x + §@!7§ / §true§.scale / 2;
      }
      
      public function §2!$§() : Number
      {
         return §true§.x - §@!7§ / §true§.scale / 2;
      }
      
      override protected function drawEngineDebug() : void
      {
         §^!"§.mLevelEngine.updateScrollAndScale(§+!2§,§"'§,§&>§ / 0.67);
      }
   }
}
