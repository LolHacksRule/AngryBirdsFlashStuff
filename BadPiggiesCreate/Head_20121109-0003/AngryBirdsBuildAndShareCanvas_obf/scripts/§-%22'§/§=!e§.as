package §-"'§
{
   import §#";§.§0"#§;
   import §&!<§.§>!V§;
   import §&!<§.§]!M§;
   import §=!7§.§!!]§;
   import §?!'§.Popup;
   import §?!'§.StatePopupManager;
   import flash.events.MouseEvent;
   
   public class §=!e§ extends Popup
   {
       
      
      private var §`_§:Function;
      
      public function §=!e§(param1:§>!V§, param2:StatePopupManager, param3:String)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            super(§]!M§.§"!V§.Views.PopupView_Prompt[0],param1);
            while(true)
            {
               (getItemByName("TextField_PromptMessage") as §!!]§).setText(param3);
               §§goto(addr69);
            }
         }
         addr69:
         while(true)
         {
            getItemByName("Button_Close").mClip.addEventListener(MouseEvent.CLICK,this.§+!V§);
            do
            {
               mClip.gotoAndStop(1);
            }
            while(!(_loc5_ || param2));
            
            if(_loc5_)
            {
               if(!_loc4_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function get §2"&§() : Function
      {
         return this.§`_§;
      }
      
      public function set §2"&§(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§`_§ = param1;
         }
      }
      
      protected function §+!V§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            §0"#§.§9"2§("Sound_Button_Click");
            while(true)
            {
               this.close();
            }
            addr70:
         }
         while(this.§`_§ != null)
         {
            if(_loc3_)
            {
               if(!_loc3_)
               {
                  continue;
               }
               if(_loc3_)
               {
                  this.§`_§();
               }
               else
               {
                  §§goto(addr70);
               }
            }
            break;
         }
      }
   }
}
