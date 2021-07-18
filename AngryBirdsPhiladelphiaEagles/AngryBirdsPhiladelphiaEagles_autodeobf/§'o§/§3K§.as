package §'o§
{
   import §9T§.§1r§;
   import §?#§.§+7§;
   
   public class §3K§ extends §+7§
   {
       
      
      private var §#!8§:Boolean = true;
      
      public function §3K§(param1:§1r§)
      {
         super(param1);
      }
      
      public function §0T§() : void
      {
         if(!§!<§ || !§;§.mReadyToRun)
         {
            return;
         }
         if(!(§;§.slingshot.mDragging || §;§.camera.mDragging))
         {
            if(!§;§.isPlayingReplay())
            {
               §;§.camera.adjustManualScale(!this.§#!8§,1);
               this.§#!8§ = !this.§#!8§;
            }
         }
      }
   }
}
