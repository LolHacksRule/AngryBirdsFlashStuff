package §9!Q§
{
   import §&9§.§1?§;
   import §1n§.§ C§;
   import §1n§.dynamic;
   import §5i§.§4!]§;
   import §9#§.Popup;
   import flash.events.MouseEvent;
   
   public class §2!S§ extends Popup
   {
      
      public static const §;v§:String = "generalError";
      
      public static const §2u§:String = "thirdPartyCookiesDisabled";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §;v§ = "generalError";
            do
            {
               §2u§ = "thirdPartyCookiesDisabled";
            }
            while(_loc2_);
            
         }
      }
      
      public function §2!S§(param1:§ C§, param2:StatePopupManager, param3:String = "generalError")
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            super(dynamic.§[6§.Views.PopupView_Error[0],param1);
            while(true)
            {
               mClip.gotoAndStop([§;v§,§2u§].indexOf(param3) + 1);
               loop1:
               for(; !_loc5_; if(!(_loc4_ || param1))
               {
                  continue;
               })
               {
                  mClip.btnReload.addEventListener(MouseEvent.CLICK,this.§&_§);
                  while(true)
                  {
                     §4!]§.pause();
                     while(!(_loc5_ && param1))
                     {
                        AngryBirdsFP11.§`!c§.§2!3§();
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
      
      private function §&_§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            AngryBirdsFP11.§`!c§.§2!3§();
         }
         do
         {
            §1?§.§>!X§("window.location.reload");
         }
         while(!(_loc2_ || param1));
         
      }
   }
}
