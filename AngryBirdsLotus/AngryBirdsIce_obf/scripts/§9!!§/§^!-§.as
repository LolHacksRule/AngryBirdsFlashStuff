package §9!!§
{
   import §!Y§.§[o§;
   import §2]§.§#H§;
   import §2]§.§set §;
   import flash.events.MouseEvent;
   
   public class §^!-§ extends Popup
   {
       
      
      public function §^!-§(param1:§#H§, param2:StatePopupManager)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param2)
         {
            super(§set §.§&!1§.Views.PopupView_Warning[0],param1);
            while(true)
            {
               mClip.btnReload.addEventListener(MouseEvent.CLICK,this.§0!G§);
               loop1:
               while(!(_loc3_ && param1))
               {
                  §[o§.pause();
                  while(true)
                  {
                     AngryBirdsFP11.§?L§.§&x§();
                     if(!_loc3_)
                     {
                        if(_loc4_ || param2)
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
      
      private function §0!G§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.deActivate();
         }
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            super.deActivate();
            while(true)
            {
               §[o§.resume();
               loop1:
               while(_loc1_ || this)
               {
                  while(true)
                  {
                     this.close();
                     if(_loc1_ || _loc1_)
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
