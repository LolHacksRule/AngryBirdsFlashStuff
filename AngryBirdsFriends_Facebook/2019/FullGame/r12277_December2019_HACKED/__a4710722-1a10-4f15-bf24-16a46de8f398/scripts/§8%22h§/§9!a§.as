package §8"h§
{
   import § "v§.§4$4§;
   import §#!S§.§`"B§;
   import §-!j§.§4"-§;
   import §0#I§.§-!6§;
   import §9#M§.§%"=§;
   
   public class §9!a§ extends §]n§
   {
       
      
      protected var §?"_§:§4"-§;
      
      public function §9!a§(param1:§-!6§, param2:§`"B§, param3:Number, param4:§%"=§, param5:Number, param6:§4"-§, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param7);
         this.§?"_§ = param6;
      }
      
      override public function playAmbientSound() : void
      {
         if(§4$4§.§`!U§("CHANNEL_AMBIENT") == null || !§4$4§.§`!U§("CHANNEL_AMBIENT").isPlaying())
         {
            if(this.§?"_§)
            {
               this.§?"_§.playSound(§-!Y§,"CHANNEL_AMBIENT",10000);
            }
         }
      }
   }
}
