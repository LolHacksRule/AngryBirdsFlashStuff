package §?5§
{
   import §+=§.§%!H§;
   import §,!F§.§#§;
   
   public class §`C§ extends §%!H§
   {
       
      
      private var §;4§:Boolean = true;
      
      public function §`C§(param1:§#§)
      {
         super(param1);
      }
      
      public function §8<§() : void
      {
         if(!§"E§ || !§&§.mReadyToRun)
         {
            return;
         }
         if(!(§&§.slingshot.mDragging || §&§.camera.mDragging))
         {
            if(!§&§.isPlayingReplay())
            {
               §&§.camera.adjustManualScale(!this.§;4§,1);
               this.§;4§ = !this.§;4§;
            }
         }
      }
   }
}
