package §?N§
{
   import §,B§.Popup;
   import §;!o§.§>!l§;
   import §>! §.§^!c§;
   import §[!+§.§ !I§;
   import §[!+§.§4`§;
   import flash.events.MouseEvent;
   
   public class §!!m§ extends Popup
   {
      
      public static const §^![§:String = "generalError";
      
      public static const §[!x§:String = "thirdPartyCookiesDisabled";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && §!!m§))
         {
            §^![§ = "generalError";
            do
            {
               §[!x§ = "thirdPartyCookiesDisabled";
            }
            while(_loc1_ && §!!m§);
            
         }
      }
      
      public function §!!m§(param1:§4`§, param2:StatePopupManager, param3:String = "generalError")
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || this)
         {
            super(§ !I§.§3!a§.Views.PopupView_Error[0],param1);
            while(true)
            {
               mClip.gotoAndStop([§^![§,§[!x§].indexOf(param3) + 1);
               while(!(_loc4_ && param1))
               {
                  mClip.btnReload.addEventListener(MouseEvent.CLICK,this.§<,§);
                  loop2:
                  while(_loc5_)
                  {
                     §^!c§.pause();
                     while(true)
                     {
                        AngryBirdsFP11.§3l§.§&2§();
                        if(!_loc4_)
                        {
                           if(!_loc4_)
                           {
                              break;
                           }
                           continue loop2;
                        }
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr51);
      }
      
      private function §<,§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            AngryBirdsFP11.§3l§.§&2§();
         }
         do
         {
            §>!l§.§ a§("window.location.reload");
         }
         while(_loc2_);
         
      }
   }
}
