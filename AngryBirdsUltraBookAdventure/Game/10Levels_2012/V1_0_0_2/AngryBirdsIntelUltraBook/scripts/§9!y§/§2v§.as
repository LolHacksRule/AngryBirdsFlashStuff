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
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §?%§ = "generalError";
            do
            {
               §'1§ = "thirdPartyCookiesDisabled";
            }
            while(!_loc2_);
            
         }
      }
      
      public function §2v§(param1:§'!^§, param2:StatePopupManager, param3:String = "generalError")
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            super(§[!'§.§+@§.Views.PopupView_Error[0],param1);
            loop0:
            while(true)
            {
               mClip.gotoAndStop([§?%§,§'1§].indexOf(param3) + 1);
               loop1:
               while(true)
               {
                  mClip.btnReload.addEventListener(MouseEvent.CLICK,this.§"!8§);
                  while(!_loc5_)
                  {
                     § _§.pause();
                     loop3:
                     while(_loc4_)
                     {
                        while(true)
                        {
                           AngryBirdsFP11.§3!a§.§5C§();
                           if(!_loc5_)
                           {
                              continue loop1;
                           }
                           continue loop3;
                        }
                        return;
                     }
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr52);
      }
      
      private function §"!8§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            AngryBirdsFP11.§3!a§.§5C§();
         }
         do
         {
            §=r§.§[!3§("window.location.reload");
         }
         while(_loc2_ && _loc3_);
         
      }
   }
}
