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
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && this))
         {
            super(§[!'§.§+@§.Views.PopupView_Warning[0],param1);
            while(true)
            {
               mClip.btnReload.addEventListener(MouseEvent.CLICK,this.§=T§);
               loop1:
               while(!(_loc3_ && param1))
               {
                  § _§.pause();
                  while(true)
                  {
                     AngryBirdsFP11.§3!a§.§5C§();
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
      
      private function §=T§(param1:MouseEvent) : void
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
            § _§.resume();
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
