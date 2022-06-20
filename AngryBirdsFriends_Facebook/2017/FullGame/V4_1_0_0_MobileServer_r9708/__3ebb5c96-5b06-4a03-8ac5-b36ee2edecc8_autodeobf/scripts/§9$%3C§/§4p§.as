package §9$<§
{
   import §+!C§.§!!S§;
   import §6"r§.§!#A§;
   import §@#§.§]#B§;
   
   public class §4p§ extends §-t§
   {
       
      
      public function §4p§(param1:§!!S§, param2:§]#B§, param3:Number = 1.0)
      {
         super(param1,param2,param3);
      }
      
      public function §'#F§() : Number
      {
         return §-l§.x + §6w§ / §-l§.scale / 2;
      }
      
      public function §##k§() : Number
      {
         return §-l§.x - §6w§ / §-l§.scale / 2;
      }
      
      override public function adjustManualScale(param1:Boolean, param2:Number = 0.1) : void
      {
         if(!§!#A§.isPaused)
         {
            super.adjustManualScale(param1,param2);
         }
      }
      
      override public function loadCameraBorders() : void
      {
         super.loadCameraBorders();
         §^<§ = §5#t§.x - §6w§ / 2 / §5#t§.scale;
         §^"]§ = §4#@§.x + §6w§ / 2 / §4#@§.scale;
      }
      
      public function get §>+§() : Number
      {
         return §?"j§;
      }
      
      public function get §`#!§() : Number
      {
         return §&H§;
      }
   }
}
