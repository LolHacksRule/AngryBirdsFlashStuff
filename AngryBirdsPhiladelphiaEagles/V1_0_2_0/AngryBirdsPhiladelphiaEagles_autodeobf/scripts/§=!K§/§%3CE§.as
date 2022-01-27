package §=!K§
{
   import §%"§.§ do§;
   import §]G§.§>G§;
   
   public class §<E§ extends §>G§
   {
       
      
      private var §'l§:Boolean = true;
      
      public function §<E§(param1:§ do§)
      {
         super(param1);
      }
      
      public function §!!@§() : void
      {
         if(!§[i§ || !§-H§.mReadyToRun)
         {
            return;
         }
         if(!(§-H§.slingshot.mDragging || §-H§.camera.mDragging))
         {
            if(!§-H§.isPlayingReplay())
            {
               §-H§.camera.adjustManualScale(!this.§'l§,1);
               this.§'l§ = !this.§'l§;
            }
         }
      }
   }
}
