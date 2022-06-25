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
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §%!P§ = "generalError";
            do
            {
               §-!W§ = "thirdPartyCookiesDisabled";
            }
            while(_loc1_ && _loc2_);
            
         }
      }
      
      public function §;0§(param1:§&!G§, param2:StatePopupManager, param3:String = "generalError")
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            super(§2!z§.§ _§.Views.PopupView_Error[0],param1);
            while(true)
            {
               mClip.gotoAndStop([§%!P§,§-!W§].indexOf(param3) + 1);
            }
            addr105:
         }
         loop1:
         while(true)
         {
            mClip.btnReload.addEventListener(MouseEvent.CLICK,this.§#m§);
            while(!_loc4_)
            {
               §,!s§.pause();
               while(!(_loc4_ && param3))
               {
                  continue loop1;
                  AngryBirdsFP11.§'!g§.§5!M§();
                  if(!(_loc4_ && param3))
                  {
                     return;
                  }
               }
            }
            §§goto(addr105);
         }
      }
      
      private function §#m§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            AngryBirdsFP11.§'!g§.§5!M§();
            do
            {
               §+!i§.§>!y§("window.location.reload");
            }
            while(_loc3_ && _loc2_);
            
         }
      }
   }
}
