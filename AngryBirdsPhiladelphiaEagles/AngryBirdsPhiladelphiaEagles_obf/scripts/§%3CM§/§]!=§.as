package §<M§
{
   import §8!B§.§#! §;
   import §]!-§.§`Z§;
   import §]!-§.§`o§;
   import flash.events.MouseEvent;
   
   public class §]!=§ extends Popup
   {
       
      
      public function §]!=§(param1:§`o§, param2:StatePopupManager)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc3_)
         {
            super(§`Z§.§5c§.Views.PopupView_Warning[0],param1);
         }
         loop0:
         do
         {
            mClip.btnReload.addEventListener(MouseEvent.CLICK,this.§@t§);
            while(true)
            {
               §#! §.pause();
               while(!(_loc3_ && param1))
               {
                  AngryBirdsFP11.§`y§.§@9§();
                  if(_loc4_ || param2)
                  {
                     continue loop0;
                  }
               }
            }
         }
         while(!_loc4_);
         
      }
      
      private function §@t§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
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
            §#! §.resume();
            while(!(_loc1_ && this))
            {
               this.close();
               if(_loc2_)
               {
                  return;
               }
            }
         }
      }
   }
}
