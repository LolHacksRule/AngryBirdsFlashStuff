package §=!4§
{
   import §"!5§.§,!!§;
   import §1;§.§!!1§;
   import §1;§.§0!&§;
   import flash.events.MouseEvent;
   
   public class §^^§ extends Popup
   {
      
      public static const § n§:String = "generalError";
      
      public static const §<!8§:String = "thirdPartyCookiesDisabled";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            § n§ = "generalError";
            if(!_loc2_)
            {
               addr28:
               §<!8§ = "thirdPartyCookiesDisabled";
            }
            return;
         }
         §§goto(addr28);
      }
      
      public function §^^§(param1:§!!1§, param2:StatePopupManager, param3:String = "generalError")
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param2))
         {
            super(§0!&§.§'^§.Views.PopupView_Error[0],param1);
            if(!_loc4_)
            {
               mClip.gotoAndStop([§ n§,§<!8§].indexOf(param3) + 1);
               if(!_loc4_)
               {
                  mClip.btnReload.addEventListener(MouseEvent.CLICK,this.§true §);
                  if(!_loc4_)
                  {
                     §,!!§.pause();
                     if(!_loc4_)
                     {
                        addr79:
                        AngryBirdsFP11.§@t§.§>!1§();
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr79);
      }
      
      private function §true §(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            AngryBirdsFP11.§@t§.§>!1§();
         }
      }
   }
}
