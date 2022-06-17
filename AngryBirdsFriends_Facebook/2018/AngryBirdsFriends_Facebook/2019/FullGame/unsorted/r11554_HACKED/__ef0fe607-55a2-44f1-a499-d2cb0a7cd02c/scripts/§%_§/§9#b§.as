package §%_§
{
   import § !D§.§'"u§;
   import §"$=§.§=$&§;
   import §=!2§.§%"T§;
   
   public class §9#b§ extends §;l§
   {
       
      
      public function §9#b§(param1:§'"u§, param2:§=$&§, param3:Number = 1.0)
      {
         super(param1,param2,param3);
      }
      
      public function §<#H§() : Number
      {
         return §%!r§.x + §@#5§ / §%!r§.scale / 2;
      }
      
      public function §@[§() : Number
      {
         return §%!r§.x - §@#5§ / §%!r§.scale / 2;
      }
      
      override public function adjustManualScale(param1:Boolean, param2:Number = 0.1) : void
      {
         if(!§%"T§.isPaused)
         {
            super.adjustManualScale(param1,param2);
         }
      }
      
      override public function loadCameraBorders() : void
      {
         super.loadCameraBorders();
         §`#f§ = §8!q§.x - §@#5§ / 2 / §8!q§.scale;
         §'"r§ = §#s§.x + §@#5§ / 2 / §#s§.scale;
      }
      
      public function get §'#?§() : Number
      {
         return §&#k§;
      }
      
      public function get §?8§() : Number
      {
         return §"O§;
      }
   }
}
