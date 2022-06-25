package §9!y§
{
   import §2h§.§'!^§;
   import §2h§.§[!'§;
   import §[m§.Popup;
   import flash.events.MouseEvent;
   import §true§.§ _§;
   
   public class §!N§ extends Popup
   {
       
      
      public function §!N§(param1:§'!^§, param2:StatePopupManager)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
         {
            super(§[!'§.§+@§.Views.PopupView_Warning[0],param1);
            while(true)
            {
               mClip.btnReload.addEventListener(MouseEvent.CLICK,this.§=T§);
            }
            addr86:
         }
         loop1:
         do
         {
            § _§.pause();
            while(!_loc4_)
            {
               AngryBirdsFP11.§3!a§.§5C§();
               if(!_loc4_)
               {
                  continue loop1;
               }
            }
            §§goto(addr86);
         }
         while(_loc4_ && _loc3_);
         
      }
      
      private function §=T§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.deActivate();
         }
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super.deActivate();
            do
            {
               § _§.resume();
               do
               {
                  this.close();
               }
               while(!(_loc2_ || this));
               
            }
            while(!(_loc2_ || _loc2_));
            
         }
      }
   }
}
