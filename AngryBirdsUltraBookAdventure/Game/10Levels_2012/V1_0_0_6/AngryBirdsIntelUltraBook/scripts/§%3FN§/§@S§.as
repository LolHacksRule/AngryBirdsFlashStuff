package §?N§
{
   import §,B§.Popup;
   import §;!o§.§>!l§;
   import §>! §.§^!c§;
   import §[!+§.§ !I§;
   import §[!+§.§4`§;
   import flash.display.StageDisplayState;
   import flash.events.MouseEvent;
   
   public class §@S§ extends Popup
   {
       
      
      public function §@S§(param1:§4`§, param2:StatePopupManager)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super(§ !I§.§3!a§.Views.PopupServerUpdated_Error[0],param1);
         }
         while(true)
         {
            mClip.btnReload.addEventListener(MouseEvent.CLICK,this.§<,§);
            while(!_loc4_)
            {
               §^!c§.pause();
               while(!_loc4_)
               {
                  AngryBirdsFP11.§3l§.§&2§();
                  if(!_loc4_)
                  {
                     return;
                  }
               }
            }
         }
      }
      
      private function §<,§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            AngryBirdsFP11.§3l§.stage.displayState = StageDisplayState.NORMAL;
            do
            {
               §>!l§.§ a§("window.location.reload");
            }
            while(_loc3_ && _loc2_);
            
         }
      }
   }
}
