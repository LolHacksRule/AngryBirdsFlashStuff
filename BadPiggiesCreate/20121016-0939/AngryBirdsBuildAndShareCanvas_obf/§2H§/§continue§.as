package §2H§
{
   import §'p§.§`!<§;
   import §+h§.Popup;
   import §+h§.StatePopupManager;
   import §-!n§.§5!U§;
   import §1"2§.§'s§;
   import §1"2§.§`7§;
   import flash.events.MouseEvent;
   
   public class §continue§ extends Popup
   {
       
      
      private var §0!f§:Function;
      
      public function §continue§(param1:§'s§, param2:StatePopupManager, param3:String)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param2)
         {
            super(§`7§.§>"?§.Views.PopupView_Prompt[0],param1);
            while(true)
            {
               (getItemByName("TextField_PromptMessage") as §`!<§).setText(param3);
               §§goto(addr74);
            }
         }
         addr74:
         while(true)
         {
            getItemByName("Button_Close").mClip.addEventListener(MouseEvent.CLICK,this.§2e§);
            do
            {
               mClip.gotoAndStop(1);
            }
            while(!(_loc5_ || param3));
            
            if(!_loc4_)
            {
               if(_loc5_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function get §3!N§() : Function
      {
         return this.§0!f§;
      }
      
      public function set §3!N§(param1:Function) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§0!f§ = param1;
         }
      }
      
      protected function §2e§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            §5!U§.playSound("Sound_Button_Click");
            loop0:
            while(true)
            {
               this.close();
               while(this.§0!f§ != null)
               {
                  if(_loc2_)
                  {
                     this.§0!f§();
                  }
                  if(!(_loc3_ && this))
                  {
                     continue loop0;
                  }
               }
               §§goto(addr24);
            }
         }
         addr24:
      }
   }
}
