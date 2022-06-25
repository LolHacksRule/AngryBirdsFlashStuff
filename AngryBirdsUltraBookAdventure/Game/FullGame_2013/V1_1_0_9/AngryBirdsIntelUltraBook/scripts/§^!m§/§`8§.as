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
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || this)
         {
            super(§2!z§.§ _§.Views.PopupView_Warning[0],param1);
         }
         loop0:
         do
         {
            mClip.btnReload.addEventListener(MouseEvent.CLICK,this.§@!@§);
            while(true)
            {
               §,!s§.pause();
               while(_loc4_)
               {
                  AngryBirdsFP11.§'!g§.§5!M§();
                  if(!_loc3_)
                  {
                     continue loop0;
                  }
               }
            }
         }
         while(_loc3_);
         
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
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            super.deActivate();
            while(true)
            {
               §,!s§.resume();
               loop1:
               while(!(_loc2_ && _loc2_))
               {
                  while(true)
                  {
                     this.close();
                     if(!(_loc2_ && this))
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr69);
      }
   }
}
