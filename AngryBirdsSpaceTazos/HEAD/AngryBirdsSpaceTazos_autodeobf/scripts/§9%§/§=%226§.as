package §9%§
{
   import §%"%§.§2Z§;
   import §1!k§.ColorFadeLayerEvent;
   import §1z§.§^!@§;
   import §3>§.§[8§;
   
   public class §="6§ extends §]!F§
   {
      
      public static const STATE_NAME:String = "LevelLoadCreditsCustom";
       
      
      public function §="6§(param1:§^!@§, param2:§2Z§, param3:§[8§, param4:Boolean = true, param5:String = "LevelLoadCreditsCustom")
      {
         super(param1,param2,param3,param4,param5);
      }
      
      override protected function setLoadingText() : void
      {
      }
      
      override protected function onFadeComplete(param1:ColorFadeLayerEvent) : void
      {
         §[H§.removeEventListener(ColorFadeLayerEvent.§4,§,this.onFadeComplete);
         § !I§(§2w§.STATE_NAME);
      }
   }
}
