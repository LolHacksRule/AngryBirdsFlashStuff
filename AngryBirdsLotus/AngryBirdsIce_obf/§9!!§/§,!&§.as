package §9!!§
{
   import §!Y§.§[o§;
   import §2]§.§#H§;
   import §2]§.§set §;
   import flash.events.MouseEvent;
   
   public class §,!&§ extends Popup
   {
      
      public static const §7!G§:String = "generalError";
      
      public static const § §:String = "thirdPartyCookiesDisabled";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §7!G§ = "generalError";
         }
         do
         {
            § § = "thirdPartyCookiesDisabled";
         }
         while(_loc2_ && §,!&§);
         
      }
      
      public function §,!&§(param1:§#H§, param2:StatePopupManager, param3:String = "generalError")
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            super(§set §.§&!1§.Views.PopupView_Error[0],param1);
         }
         loop0:
         while(true)
         {
            mClip.gotoAndStop([§7!G§,§ §].indexOf(param3) + 1);
            while(true)
            {
               mClip.btnReload.addEventListener(MouseEvent.CLICK,this.§1^§);
               while(_loc5_)
               {
                  §[o§.pause();
                  while(_loc5_ || param2)
                  {
                     if(!_loc4_)
                     {
                        AngryBirdsFP11.§?L§.§&x§();
                        if(_loc5_ || param3)
                        {
                           return;
                        }
                        continue;
                        continue;
                     }
                     continue loop0;
                  }
               }
            }
         }
      }
      
      private function §1^§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            AngryBirdsFP11.§?L§.§&x§();
         }
      }
   }
}
