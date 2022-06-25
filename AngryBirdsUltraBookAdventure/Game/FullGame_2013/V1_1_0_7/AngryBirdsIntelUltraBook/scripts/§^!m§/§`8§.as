package §^!m§
{
   import §!!j§.Popup;
   import §;!y§.§,!s§;
   import §>f§.§&!G§;
   import §>f§.§2!z§;
   import flash.events.MouseEvent;
   
   public class §`8§ extends Popup
   {
       
      
      public function §`8§(param1:§&!G§, param2:StatePopupManager)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            super(§2!z§.§ _§.Views.PopupView_Warning[0],param1);
            while(true)
            {
               mClip.btnReload.addEventListener(MouseEvent.CLICK,this.§@!@§);
               while(!(_loc4_ && _loc3_))
               {
                  §,!s§.pause();
                  loop2:
                  while(_loc3_ || this)
                  {
                     while(true)
                     {
                        AngryBirdsFP11.§'!g§.§5!M§();
                        if(!(_loc4_ && param2))
                        {
                           break;
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr70);
      }
      
      private function §@!@§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
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
            super.deActivate();
         }
         while(true)
         {
            §,!s§.resume();
            while(!(_loc1_ && _loc1_))
            {
               this.close();
               if(!_loc1_)
               {
                  return;
               }
            }
         }
      }
   }
}
