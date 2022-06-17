package §`$=§
{
   import §+!n§.§+!p§;
   import §?$#§.§<d§;
   import §?o§.§ ^§;
   
   public class §<Q§ extends §5$E§
   {
       
      
      public function §<Q§(param1:§<d§, param2:§ ^§, param3:Number = 1.0)
      {
         super(param1,param2,param3);
      }
      
      public function §<?§() : Number
      {
         return §?!e§.x + §'!F§ / §?!e§.scale / 2;
      }
      
      public function §=#Z§() : Number
      {
         return §?!e§.x - §'!F§ / §?!e§.scale / 2;
      }
      
      override public function adjustManualScale(param1:Boolean, param2:Number = 0.1) : void
      {
         if(!§+!p§.isPaused)
         {
            super.adjustManualScale(param1,param2);
         }
      }
      
      override public function loadCameraBorders() : void
      {
         super.loadCameraBorders();
         §=G§ = §'!_§.x - §'!F§ / 2 / §'!_§.scale;
         §9!"§ = §0#8§.x + §'!F§ / 2 / §0#8§.scale;
      }
      
      public function get §,!j§() : Number
      {
         return §8#?§;
      }
      
      public function get §,_§() : Number
      {
         return §'"#§;
      }
   }
}
