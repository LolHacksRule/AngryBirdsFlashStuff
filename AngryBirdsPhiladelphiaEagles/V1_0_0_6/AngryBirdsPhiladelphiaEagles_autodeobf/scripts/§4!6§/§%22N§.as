package §4!6§
{
   import §3?§.§6+§;
   import §4!-§.§%o§;
   
   public class §"N§ extends §6+§
   {
       
      
      private var §^l§:Boolean = true;
      
      public function §"N§(param1:§%o§)
      {
         super(param1);
      }
      
      public function §<S§() : void
      {
         if(!§'4§ || !§'!8§.mReadyToRun)
         {
            return;
         }
         if(!(§'!8§.slingshot.mDragging || §'!8§.camera.mDragging))
         {
            if(!§'!8§.isPlayingReplay())
            {
               §'!8§.camera.adjustManualScale(!this.§^l§,1);
               this.§^l§ = !this.§^l§;
            }
         }
      }
   }
}
