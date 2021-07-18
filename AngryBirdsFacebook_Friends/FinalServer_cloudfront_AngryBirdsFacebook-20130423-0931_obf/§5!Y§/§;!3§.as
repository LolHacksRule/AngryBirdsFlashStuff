package §5!Y§
{
   import §30§.§'"+§;
   import §@!"§.§?l§;
   import §`"%§.§ "<§;
   import §`"%§.§`_§;
   import flash.display.StageDisplayState;
   import flash.events.MouseEvent;
   
   public class §;!3§ extends Popup
   {
       
      
      public function §;!3§(param1:§`_§, param2:StatePopupManager)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            super(§ "<§.§%I§.Views.PopupServerUpdated_Error[0],param1);
            while(true)
            {
               mClip.btnReload.addEventListener(MouseEvent.CLICK,this.§ "B§);
               loop1:
               for(; !(_loc3_ && this); if(_loc4_ || param2)
               {
                  addr59:
                  return;
               })
               {
                  §""W§ = §>!L§;
                  loop2:
                  while(true)
                  {
                     §?l§.pause();
                     addr63:
                     while(true)
                     {
                        AngryBirdsFP11.§>m§.§^X§();
                        if(!(_loc3_ && _loc3_))
                        {
                           if(!(_loc3_ && this))
                           {
                              continue loop1;
                           }
                           continue loop2;
                        }
                     }
                     §§goto(addr59);
                  }
               }
            }
         }
         §§goto(addr63);
      }
      
      private function § "B§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            AngryBirdsFP11.§>m§.stage.displayState = StageDisplayState.NORMAL;
            do
            {
               §'"+§.§'!#§("window.location.reload");
            }
            while(!_loc2_);
            
         }
      }
   }
}
