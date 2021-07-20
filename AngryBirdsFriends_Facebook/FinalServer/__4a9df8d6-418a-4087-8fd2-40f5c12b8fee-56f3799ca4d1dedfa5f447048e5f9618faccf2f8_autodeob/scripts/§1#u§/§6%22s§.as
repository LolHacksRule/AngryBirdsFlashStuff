package §1#u§
{
   import §,"v§.§7!J§;
   import §>2§.§!6§;
   import §`#@§.§7n§;
   
   public class §6"s§ extends §;"Q§
   {
       
      
      public function §6"s§(param1:§!6§, param2:§7!J§, param3:Number = 1.0)
      {
         super(param1,param2,param3);
      }
      
      public function §["N§() : Number
      {
         return §%!X§.x + §[$8§ / §%!X§.scale / 2;
      }
      
      public function §=!#§() : Number
      {
         return §%!X§.x - §[$8§ / §%!X§.scale / 2;
      }
      
      override public function adjustManualScale(param1:Boolean, param2:Number = 0.1) : void
      {
         if(!§7n§.isPaused)
         {
            super.adjustManualScale(param1,param2);
         }
      }
      
      override public function loadCameraBorders() : void
      {
         super.loadCameraBorders();
         §03§ = §,!§.x - §[$8§ / 2 / §,!§.scale;
         §+!U§ = §3"_§.x + §[$8§ / 2 / §3"_§.scale;
      }
      
      public function get §[$>§() : Number
      {
         return §0!D§;
      }
      
      public function get §?""§() : Number
      {
         return §0!i§;
      }
   }
}
