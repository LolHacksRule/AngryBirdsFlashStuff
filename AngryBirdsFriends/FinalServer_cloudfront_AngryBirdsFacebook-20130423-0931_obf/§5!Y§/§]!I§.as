package §5!Y§
{
   import §30§.§'"+§;
   import §@!"§.§?l§;
   import §`"%§.§ "<§;
   import §`"%§.§`_§;
   import flash.events.MouseEvent;
   
   public class §]!I§ extends Popup
   {
      
      public static const § !d§:String = "generalError";
      
      public static const §`'§:String = "thirdPartyCookiesDisabled";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            § !d§ = "generalError";
            do
            {
               §`'§ = "thirdPartyCookiesDisabled";
            }
            while(_loc2_ && _loc1_);
            
         }
      }
      
      public function §]!I§(param1:§`_§, param2:StatePopupManager, param3:String = "generalError")
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            super(§ "<§.§%I§.Views.PopupView_Error[0],param1);
            while(true)
            {
               §""W§ = §>!L§;
               loop1:
               for(; !(_loc4_ && param2); while(_loc5_ || param2)
               {
                  §?l§.pause();
                  while(!(_loc4_ && this))
                  {
                     AngryBirdsFP11.§>m§.§^X§();
                     if(!(_loc5_ || param2))
                     {
                        continue;
                     }
                     §§goto(addr35);
                  }
               })
               {
                  while(true)
                  {
                     mClip.gotoAndStop([§ !d§,§`'§].indexOf(param3) + 1);
                     do
                     {
                        mClip.btnReload.addEventListener(MouseEvent.CLICK,this.§ "B§);
                        continue loop1;
                     }
                     while(!_loc5_);
                     
                     return;
                  }
               }
            }
         }
         §§goto(addr107);
      }
      
      private function § "B§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            AngryBirdsFP11.§>m§.§^X§();
            do
            {
               §'"+§.§'!#§("window.location.reload");
            }
            while(!_loc2_);
            
         }
      }
   }
}
