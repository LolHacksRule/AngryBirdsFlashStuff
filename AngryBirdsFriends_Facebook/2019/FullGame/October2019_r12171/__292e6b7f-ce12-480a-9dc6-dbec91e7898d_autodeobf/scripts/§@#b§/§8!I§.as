package §@#b§
{
   import §,0§.§`5§;
   import §3"V§.§ b§;
   import §4"Y§.§+!q§;
   import §7"T§.§#"^§;
   import §8#K§.§ !q§;
   
   public class §8!I§ extends §1_§
   {
       
      
      protected var §[""§:§ !q§;
      
      public function §8!I§(param1:§`5§, param2:§+!q§, param3:Number, param4:§#"^§, param5:Number, param6:§ !q§, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param7);
         this.§[""§ = param6;
      }
      
      override public function playAmbientSound() : void
      {
         if(§ b§.§]!L§("CHANNEL_AMBIENT") == null || !§ b§.§]!L§("CHANNEL_AMBIENT").isPlaying())
         {
            if(this.§[""§)
            {
               this.§[""§.playSound(§<"!§,"CHANNEL_AMBIENT",10000);
            }
         }
      }
   }
}
