package §["Q§
{
   import §#v§.§-"R§;
   import §52§.§#!,§;
   import §?§.§>"$§;
   
   public class §2";§ extends §0$,§
   {
       
      
      public function §2";§(param1:§#!,§, param2:§-"R§, param3:Number = 1.0)
      {
         super(param1,param2,param3);
      }
      
      public function §&#T§() : Number
      {
         return §=!=§.x + §,4§ / §=!=§.scale / 2;
      }
      
      public function §7#o§() : Number
      {
         return §=!=§.x - §,4§ / §=!=§.scale / 2;
      }
      
      override public function adjustManualScale(param1:Boolean, param2:Number = 0.1) : void
      {
         if(!§>"$§.isPaused)
         {
            super.adjustManualScale(param1,param2);
         }
      }
      
      override public function loadCameraBorders() : void
      {
         super.loadCameraBorders();
         §@"F§ = §<%§.x - §,4§ / 2 / §<%§.scale;
         §<" § = §4R§.x + §,4§ / 2 / §4R§.scale;
      }
   }
}
