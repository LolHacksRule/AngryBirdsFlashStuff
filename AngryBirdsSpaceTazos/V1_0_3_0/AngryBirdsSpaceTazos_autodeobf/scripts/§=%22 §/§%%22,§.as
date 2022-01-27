package §=" §
{
   import §4",§.§,!j§;
   import §6!M§.§3Y§;
   import §71§.§;l§;
   import §9!L§.ColorFadeLayerEvent;
   
   public class §%",§ extends §-k§
   {
      
      public static const STATE_NAME:String = "LevelLoadCreditsCustom";
       
      
      public function §%",§(param1:§,!j§, param2:§;l§, param3:§3Y§, param4:Boolean = true, param5:String = "LevelLoadCreditsCustom")
      {
         super(param1,param2,param3,param4,param5);
      }
      
      override protected function setLoadingText() : void
      {
      }
      
      override protected function onFadeComplete(param1:ColorFadeLayerEvent) : void
      {
         §@!3§.removeEventListener(ColorFadeLayerEvent.§+[§,this.onFadeComplete);
         §'Q§(§?-§.STATE_NAME);
      }
   }
}
