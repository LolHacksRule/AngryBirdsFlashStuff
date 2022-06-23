package §;!B§
{
   import §5H§.§[k§;
   import §<!G§.§!I§;
   import §<!G§.§^3§;
   import flash.events.MouseEvent;
   
   public class §`C§ extends Popup
   {
      
      public static const §3X§:String = "generalError";
      
      public static const §8M§:String = "thirdPartyCookiesDisabled";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §3X§ = "generalError";
            if(!_loc2_)
            {
               addr28:
               §8M§ = "thirdPartyCookiesDisabled";
            }
            return;
         }
         §§goto(addr28);
      }
      
      public function §`C§(param1:§^3§, param2:StatePopupManager, param3:String = "generalError")
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param2))
         {
            super(§!I§.§7y§.Views.PopupView_Error[0],param1);
            if(!_loc4_)
            {
               mClip.gotoAndStop([§3X§,§8M§].indexOf(param3) + 1);
               if(!_loc4_)
               {
                  mClip.btnReload.addEventListener(MouseEvent.CLICK,this.§&#§);
                  if(!_loc4_)
                  {
                     §[k§.pause();
                     if(!_loc4_)
                     {
                        addr79:
                        AngryBirdsFP11.§,s§.§2'§();
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr79);
      }
      
      private function §&#§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            AngryBirdsFP11.§,s§.§2'§();
         }
      }
   }
}
