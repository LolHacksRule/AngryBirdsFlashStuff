package §4§#7
{
   import §#g§.§8§;
   import §7#$§.§?# §;
   import §?#z§.§]$?§;
   
   public class §<!`§ extends §`3§
   {
       
      
      public function §<!`§(param1:§8#3§, param2:§?# §, param3:Number = 1.0)
      {
         super(param1,param2,param3);
      }
      
      public function §!c§() : Number
      {
         return §'#"§.x + §#$7§ / §'#"§.scale / 2;
      }
      
      public function §4"R§() : Number
      {
         return §'#"§.x - §#$7§ / §'#"§.scale / 2;
      }
      
      override public function adjustManualScale(param1:Boolean, param2:Number = 0.1) : void
      {
         if(!§]$?§.isPaused)
         {
            super.adjustManualScale(param1,param2);
         }
      }
      
      override public function loadCameraBorders() : void
      {
         super.loadCameraBorders();
         §-!9§ = §1#l§.x - §#$7§ / 2 / §1#l§.scale;
         §6!x§ = §^>§.x + §#$7§ / 2 / §^>§.scale;
      }
      
      public function get §2!U§() : Number
      {
         return §8$<§;
      }
      
      public function get §&!s§() : Number
      {
         return §&#z§;
      }
   }
}
