package §4!+§
{
   import §"!J§.§5!'§;
   import §>2§.§4h§;
   
   public class §;!9§ extends §5!'§
   {
       
      
      private var §`9§:Boolean = true;
      
      public function §;!9§(param1:§4h§)
      {
         super(param1);
      }
      
      public function §@H§() : void
      {
         if(!§&!;§ || !§@k§.mReadyToRun)
         {
            return;
         }
         if(!(§@k§.slingshot.mDragging || §@k§.camera.mDragging))
         {
            if(!§@k§.isPlayingReplay())
            {
               §@k§.camera.adjustManualScale(!this.§`9§,1);
               this.§`9§ = !this.§`9§;
            }
         }
      }
   }
}
