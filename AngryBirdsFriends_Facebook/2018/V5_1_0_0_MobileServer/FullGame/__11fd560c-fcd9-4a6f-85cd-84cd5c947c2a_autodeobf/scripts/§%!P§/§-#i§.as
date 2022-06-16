package §%!P§
{
   import §;#D§.§3#U§;
   import §;$3§.§>f§;
   import §@0§.§%!q§;
   
   public class §-#i§ extends §4#u§
   {
       
      
      public function §-#i§(param1:§%!q§, param2:§>f§, param3:Number = 1.0)
      {
         super(param1,param2,param3);
      }
      
      public function §8"5§() : Number
      {
         return §`l§.x + §[!#§ / §`l§.scale / 2;
      }
      
      public function §;!u§() : Number
      {
         return §`l§.x - §[!#§ / §`l§.scale / 2;
      }
      
      override public function adjustManualScale(param1:Boolean, param2:Number = 0.1) : void
      {
         if(!§3#U§.isPaused)
         {
            super.adjustManualScale(param1,param2);
         }
      }
      
      override public function loadCameraBorders() : void
      {
         super.loadCameraBorders();
         §!g§ = §7#1§.x - §[!#§ / 2 / §7#1§.scale;
         §3D§ = §+!L§.x + §[!#§ / 2 / §+!L§.scale;
      }
      
      public function get §3#F§() : Number
      {
         return §?"x§;
      }
      
      public function get §=Y§() : Number
      {
         return §""p§;
      }
   }
}
