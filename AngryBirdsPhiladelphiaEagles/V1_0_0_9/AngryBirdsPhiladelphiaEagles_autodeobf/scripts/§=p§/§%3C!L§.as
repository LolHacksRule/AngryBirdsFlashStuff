package §=p§
{
   import §,T§.§[-§;
   import §=!1§.§"!D§;
   
   public class §<!L§ extends §"!D§
   {
       
      
      private var §4!=§:Boolean = true;
      
      public function §<!L§(param1:§[-§)
      {
         super(param1);
      }
      
      public function §3Z§() : void
      {
         if(!§5!@§ || !§34§.mReadyToRun)
         {
            return;
         }
         if(!(§34§.slingshot.mDragging || §34§.camera.mDragging))
         {
            if(!§34§.isPlayingReplay())
            {
               §34§.camera.adjustManualScale(!this.§4!=§,1);
               this.§4!=§ = !this.§4!=§;
            }
         }
      }
   }
}
