package §5!Y§
{
   import §@!"§.§?l§;
   import §`"%§.§ "<§;
   import §`"%§.§`_§;
   import flash.events.MouseEvent;
   
   public class §`! § extends Popup
   {
       
      
      public function §`! §(param1:§`_§, param2:StatePopupManager)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param1))
         {
            super(§ "<§.§%I§.Views.PopupView_Warning[0],param1);
            while(true)
            {
               mClip.btnReload.addEventListener(MouseEvent.CLICK,this.§6">§);
               while(true)
               {
                  §?l§.pause();
                  §§goto(addr68);
               }
            }
         }
         addr68:
         while(true)
         {
            AngryBirdsFP11.§>m§.§^X§();
            if(_loc4_)
            {
               if(!(_loc3_ && this))
               {
                  if(_loc4_)
                  {
                     break;
                  }
                  continue loop0;
               }
               continue loop1;
            }
         }
      }
      
      private function §6">§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.deActivate();
         }
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.close();
         }
      }
   }
}
