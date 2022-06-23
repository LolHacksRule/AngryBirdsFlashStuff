package §;!B§
{
   import §5H§.§[k§;
   import §<!G§.§!I§;
   import §<!G§.§^3§;
   import flash.events.MouseEvent;
   
   public class §[!E§ extends Popup
   {
       
      
      public function §[!E§(param1:§^3§, param2:StatePopupManager)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super(§!I§.§7y§.Views.PopupView_Warning[0],param1);
            if(_loc3_)
            {
               mClip.btnReload.addEventListener(MouseEvent.CLICK,this.§8&§);
               if(!(_loc4_ && this))
               {
                  addr63:
                  §[k§.pause();
                  if(!_loc4_)
                  {
                     addr67:
                     AngryBirdsFP11.§,s§.§2'§();
                  }
               }
               return;
            }
            §§goto(addr63);
         }
         §§goto(addr67);
      }
      
      private function §8&§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.deActivate();
         }
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            super.deActivate();
            if(!(_loc1_ && _loc1_))
            {
               §§goto(addr43);
            }
            §§goto(addr52);
         }
         addr43:
         §[k§.resume();
         if(!(_loc1_ && _loc2_))
         {
            addr52:
            this.close();
         }
      }
   }
}
