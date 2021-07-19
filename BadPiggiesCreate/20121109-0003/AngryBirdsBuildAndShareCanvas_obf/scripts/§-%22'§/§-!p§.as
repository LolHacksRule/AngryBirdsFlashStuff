package §-"'§
{
   import §#";§.§0"#§;
   import §&!<§.§>!V§;
   import §&!<§.§]!M§;
   import §=!7§.§!!]§;
   import §?!'§.Popup;
   import §?!'§.StatePopupManager;
   import §@y§.§0=§;
   import §[!E§.§[!f§;
   
   public class §-!p§ extends Popup
   {
       
      
      private var §["<§:StatePopupManager;
      
      public function §-!p§(param1:§>!V§, param2:String, param3:StatePopupManager)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && this))
         {
            super(§]!M§.§"!V§.Views.PopupView_Error[0],param1);
            while(true)
            {
               (getItemByName("TextField_ErrorMessage") as §!!]§).setText(param2);
               addr39:
               if(_loc5_)
               {
                  continue;
               }
               return;
               addr51:
            }
         }
         while(true)
         {
            this.§["<§ = param3;
            while(_loc4_)
            {
               this.§["<§.addEventListener(§[!f§.§`h§,this.onUiInteraction);
               while(!_loc5_)
               {
                  §9=§ = §=u§;
                  if(_loc5_ && param3)
                  {
                     continue;
                  }
                  §§goto(addr39);
               }
            }
         }
         §§goto(addr51);
      }
      
      private function onUiInteraction(param1:§[!f§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.uiInteractionHandler(param1.§4§,param1.§'!5§,param1.component);
         }
      }
      
      private function uiInteractionHandler(param1:int, param2:String, param3:§0=§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = param2;
         if(_loc5_ || param2)
         {
            if("CLOSE_POPUP" === _loc4_)
            {
               addr57:
               §§push(0);
               if(_loc6_)
               {
               }
            }
            else
            {
               §§push(1);
            }
            switch(§§pop())
            {
               case 0:
                  §0"#§.§9"2§("Sound_Button_Back");
                  if(!_loc6_)
                  {
                     this.deActivate();
                     if(_loc6_ && param3)
                     {
                     }
                     break;
                  }
            }
            return;
         }
         §§goto(addr57);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§["<§.removeEventListener(§[!f§.§`h§,this.onUiInteraction);
         }
         do
         {
            super.deActivate();
            do
            {
               preClose();
            }
            while(_loc1_);
            
         }
         while(!(_loc2_ || this));
         
      }
   }
}
