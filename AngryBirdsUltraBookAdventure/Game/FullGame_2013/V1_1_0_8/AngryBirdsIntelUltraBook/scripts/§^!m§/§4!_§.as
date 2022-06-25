package §^!m§
{
   import §!!j§.Popup;
   import §;!y§.§,!s§;
   import §>L§.§+!i§;
   import §>f§.§&!G§;
   import §>f§.§2!z§;
   import flash.display.StageDisplayState;
   import flash.events.MouseEvent;
   
   public class §4!_§ extends Popup
   {
       
      
      public function §4!_§(param1:§&!G§, param2:StatePopupManager)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super(§2!z§.§ _§.Views.PopupServerUpdated_Error[0],param1);
            do
            {
               mClip.btnReload.addEventListener(MouseEvent.CLICK,this.§#m§);
               do
               {
                  §,!s§.pause();
                  do
                  {
                     AngryBirdsFP11.§'!g§.§5!M§();
                  }
                  while(_loc4_);
                  
               }
               while(!_loc3_);
               
            }
            while(!(_loc3_ || this));
            
         }
      }
      
      private function §#m§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            AngryBirdsFP11.§'!g§.stage.displayState = StageDisplayState.NORMAL;
         }
         do
         {
            §+!i§.§>!y§("window.location.reload");
         }
         while(_loc3_ && param1);
         
      }
   }
}
