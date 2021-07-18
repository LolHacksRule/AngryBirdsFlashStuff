package §<M§
{
   import §8!B§.§#! §;
   import §]!-§.§`Z§;
   import §]!-§.§`o§;
   import flash.events.MouseEvent;
   
   public class §]!N§ extends Popup
   {
      
      public static const §1!>§:String = "generalError";
      
      public static const §`e§:String = "thirdPartyCookiesDisabled";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || §]!N§)
         {
            §1!>§ = "generalError";
            do
            {
               §`e§ = "thirdPartyCookiesDisabled";
            }
            while(_loc1_ && _loc1_);
            
         }
      }
      
      public function §]!N§(param1:§`o§, param2:StatePopupManager, param3:String = "generalError")
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            super(§`Z§.§5c§.Views.PopupView_Error[0],param1);
            loop0:
            while(true)
            {
               mClip.gotoAndStop([§1!>§,§`e§].indexOf(param3) + 1);
               while(true)
               {
                  mClip.btnReload.addEventListener(MouseEvent.CLICK,this.§^c§);
                  loop2:
                  while(!(_loc4_ && param1))
                  {
                     §#! §.pause();
                     while(true)
                     {
                        AngryBirdsFP11.§`y§.§@9§();
                        if(_loc5_ || param1)
                        {
                           if(!(_loc4_ && this))
                           {
                              if(!_loc4_)
                              {
                                 break;
                              }
                              continue loop0;
                           }
                           continue loop2;
                        }
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr58);
      }
      
      private function §^c§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            AngryBirdsFP11.§`y§.§@9§();
         }
      }
   }
}
