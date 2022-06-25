package §9!y§
{
   import §2h§.§'!^§;
   import §2h§.§[!'§;
   import §@i§.§=r§;
   import §[m§.Popup;
   import flash.events.MouseEvent;
   import §true§.§ _§;
   
   public class §2v§ extends Popup
   {
      
      public static const §?%§:String = "generalError";
      
      public static const §'1§:String = "thirdPartyCookiesDisabled";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §?%§ = "generalError";
            do
            {
               §'1§ = "thirdPartyCookiesDisabled";
            }
            while(_loc2_);
            
         }
      }
      
      public function §2v§(param1:§'!^§, param2:StatePopupManager, param3:String = "generalError")
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            super(§[!'§.§+@§.Views.PopupView_Error[0],param1);
            while(true)
            {
               mClip.gotoAndStop([§?%§,§'1§].indexOf(param3) + 1);
               loop1:
               for(; !_loc5_; if(!(_loc4_ || param1))
               {
                  continue;
               })
               {
                  mClip.btnReload.addEventListener(MouseEvent.CLICK,this.§"!8§);
                  while(true)
                  {
                     § _§.pause();
                     while(!(_loc5_ && param1))
                     {
                        AngryBirdsFP11.§3!a§.§5C§();
                        if(_loc4_ || param2)
                        {
                           continue loop1;
                        }
                     }
                  }
               }
            }
         }
      }
      
      private function §"!8§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            AngryBirdsFP11.§3!a§.§5C§();
         }
         do
         {
            §=r§.§[!3§("window.location.reload");
         }
         while(!(_loc2_ || param1));
         
      }
   }
}
