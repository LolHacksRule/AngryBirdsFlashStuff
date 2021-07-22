package §!!P§
{
   import §-<§.§?!N§;
   import §6#H§.Sprite;
   
   public class §7#g§ extends §4"T§
   {
       
      
      private var §6#I§:§2#%§;
      
      private var §3#7§:Boolean;
      
      public function §7#g§(param1:Sprite, param2:§2#%§, param3:§?!N§)
      {
         super(param1,param3.trigger,param3.tween,param3.sound,param3.soundVolume,param3.soundLoop);
         this.§6#I§ = param2;
         this.§3#7§ = param3.visible;
      }
      
      override protected function onStart() : void
      {
         this.§6#I§.setVisibility(this.§3#7§);
         §3"G§();
      }
   }
}
