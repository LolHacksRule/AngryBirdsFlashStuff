package §^!m§
{
   import §!!j§.Popup;
   import §;!y§.§,!s§;
   import §>L§.§+!i§;
   import §>f§.§&!G§;
   import §>f§.§2!z§;
   import flash.events.MouseEvent;
   
   public class §;0§ extends Popup
   {
      
      public static const §%!P§:String = "generalError";
      
      public static const §-!W§:String = "thirdPartyCookiesDisabled";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §%!P§ = "generalError";
            do
            {
               §-!W§ = "thirdPartyCookiesDisabled";
            }
            while(!(_loc1_ || _loc1_));
            
         }
      }
      
      public function §;0§(param1:§&!G§, param2:StatePopupManager, param3:String = "generalError")
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            super(§2!z§.§ _§.Views.PopupView_Error[0],param1);
            loop0:
            do
            {
               mClip.gotoAndStop([§%!P§,§-!W§].indexOf(param3) + 1);
               while(true)
               {
                  mClip.btnReload.addEventListener(MouseEvent.CLICK,this.§#m§);
                  while(!(_loc4_ && param1))
                  {
                     §,!s§.pause();
                     while(!(_loc4_ && param1))
                     {
                        AngryBirdsFP11.§'!g§.§5!M§();
                        if(_loc5_ || param1)
                        {
                           continue loop0;
                        }
                     }
                  }
               }
            }
            while(!(_loc5_ || param2));
            
         }
      }
      
      private function §#m§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            AngryBirdsFP11.§'!g§.§5!M§();
            do
            {
               §+!i§.§>!y§("window.location.reload");
            }
            while(!_loc3_);
            
         }
      }
   }
}
