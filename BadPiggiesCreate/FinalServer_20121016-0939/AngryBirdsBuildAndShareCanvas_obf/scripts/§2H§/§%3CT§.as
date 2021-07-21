package §2H§
{
   import §'!A§.§-!S§;
   import §'p§.§`!<§;
   import §+h§.Popup;
   import §+h§.StatePopupManager;
   import §-!n§.§5!U§;
   import §1"2§.§'s§;
   import §1"2§.§`7§;
   import §6!U§.§+!!§;
   
   public class §<T§ extends Popup
   {
       
      
      private var §2P§:StatePopupManager;
      
      public function §<T§(param1:§'s§, param2:String, param3:StatePopupManager)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || this)
         {
            super(§`7§.§>"?§.Views.PopupView_Error[0],param1);
            loop0:
            while(true)
            {
               (getItemByName("TextField_ErrorMessage") as §`!<§).setText(param2);
               while(true)
               {
                  this.§2P§ = param3;
                  loop2:
                  while(_loc4_)
                  {
                     while(true)
                     {
                        this.§2P§.addEventListener(§+!!§.§]!M§,this.onUiInteraction);
                        do
                        {
                           §0!x§ = §-8§;
                        }
                        while(_loc5_);
                        
                        if(_loc4_)
                        {
                           continue loop0;
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr64);
      }
      
      private function onUiInteraction(param1:§+!!§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.uiInteractionHandler(param1.§&!X§,param1.§1_§,param1.component);
         }
      }
      
      private function uiInteractionHandler(param1:int, param2:String, param3:§-!S§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = param2;
         if(!(_loc5_ && param2))
         {
            if("CLOSE_POPUP" === _loc4_)
            {
               addr63:
               §§push(0);
               if(_loc5_ && this)
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
                  §5!U§.playSound("Sound_Button_Back");
                  if(!(_loc5_ && param3))
                  {
                     this.deActivate();
                     if(_loc6_ || param3)
                     {
                        break;
                     }
                     break;
                  }
            }
            return;
         }
         §§goto(addr63);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§2P§.removeEventListener(§+!!§.§]!M§,this.onUiInteraction);
            while(true)
            {
               super.deActivate();
               loop1:
               while(!_loc2_)
               {
                  while(true)
                  {
                     preClose();
                     if(_loc1_ || _loc1_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr59);
      }
   }
}
