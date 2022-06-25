package §^!m§
{
   import §!!j§.Popup;
   import §;!y§.§,!s§;
   import §>f§.§&!G§;
   import §>f§.§2!z§;
   import flash.events.MouseEvent;
   
   public class §^!S§ extends Popup
   {
       
      
      public function §^!S§(param1:§&!G§, param2:StatePopupManager)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
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
               while(_loc4_ || this)
               {
                  AngryBirdsFP11.§'!g§.§5!M§();
                  if(_loc4_)
                  {
                     continue loop0;
                  }
               }
            }
         }
         while(!(_loc4_ || param2));
         
      }
      
      private function §@!@§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.deActivate();
         }
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super.deActivate();
            do
            {
               §,!s§.resume();
               do
               {
                  this.close();
               }
               while(_loc2_ && _loc2_);
               
            }
            while(_loc2_ && _loc1_);
            
         }
      }
   }
}
