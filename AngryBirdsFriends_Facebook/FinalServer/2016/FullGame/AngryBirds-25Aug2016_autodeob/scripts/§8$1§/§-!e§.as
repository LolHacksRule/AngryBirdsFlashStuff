package §8$1§
{
   import §6§.§]!Q§;
   import §8§.§#$+§;
   import §@"§.§&!=§;
   import §^§.§[>§;
   
   public class §-!e§ extends §<"G§
   {
       
      
      private var §>!B§:Number = 1.0;
      
      public function §-!e§(param1:§]!Q§, param2:§[>§, param3:Number, param4:§&!=§, param5:Number, param6:Boolean = true, param7:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6);
         this.§>!B§ = param7;
      }
      
      override public function playAmbientSound() : void
      {
         if(§#$+§.§#!C§("CHANNEL_AMBIENT") == null || !§#$+§.§#!C§("CHANNEL_AMBIENT").isPlaying())
         {
            §#$+§.playSound(§-$4§,"CHANNEL_AMBIENT",999,this.§>!B§);
         }
      }
   }
}
