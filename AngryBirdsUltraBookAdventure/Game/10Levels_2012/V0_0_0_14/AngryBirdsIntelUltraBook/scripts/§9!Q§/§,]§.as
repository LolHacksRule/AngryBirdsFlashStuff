package §9!Q§
{
   import §1n§.§ C§;
   import §1n§.dynamic;
   import §5i§.§4!]§;
   import §9#§.Popup;
   import flash.events.MouseEvent;
   
   public class §,]§ extends Popup
   {
       
      
      public function §,]§(param1:§ C§, param2:StatePopupManager)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && this))
         {
            super(dynamic.§[6§.Views.PopupView_Warning[0],param1);
            while(true)
            {
               mClip.btnReload.addEventListener(MouseEvent.CLICK,this.§+B§);
               loop1:
               while(!(_loc3_ && param1))
               {
                  §4!]§.pause();
                  while(true)
                  {
                     AngryBirdsFP11.§`!c§.§2!3§();
                     if(_loc4_)
                     {
                        if(_loc4_ || this)
                        {
                           break;
                        }
                        continue loop1;
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr66);
      }
      
      private function §+B§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.deActivate();
         }
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super.deActivate();
         }
         do
         {
            §4!]§.resume();
            do
            {
               this.close();
            }
            while(_loc2_ && _loc1_);
            
         }
         while(!_loc1_);
         
      }
   }
}
