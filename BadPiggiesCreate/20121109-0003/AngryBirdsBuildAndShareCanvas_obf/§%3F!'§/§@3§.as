package §?!'§
{
   import §#";§.§0"#§;
   import §&!<§.§>!V§;
   import §&!<§.§]!M§;
   import §=!7§.§!!]§;
   import §=!7§.§6W§;
   import §>!d§.§,$§;
   import §@y§.§0=§;
   import §[!E§.§[!f§;
   
   public class §@3§ extends Popup
   {
      
      private static const §["0§:Array;
      
      private static const §%!D§:Array;
      
      private static const §&!p§:String = "X ";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §["0§ = [3,5,7,10];
            while(true)
            {
               §%!D§ = [1,2,3,5];
               §§goto(addr65);
            }
         }
         addr65:
         while(true)
         {
            §&!p§ = "X ";
            if(!(_loc2_ && _loc1_))
            {
               if(_loc1_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      private var §["<§:StatePopupManager;
      
      public function §@3§(param1:§>!V§, param2:StatePopupManager)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param1))
         {
            super(§]!M§.§"!V§.Views.PopupView_AddBolts[0],param1);
            while(true)
            {
               this.§["<§ = param2;
               while(true)
               {
                  param2.addEventListener(§[!f§.§`h§,this.onUiInteraction);
                  loop2:
                  while(!(_loc3_ && param1))
                  {
                     (getItemByName("TextField_Bolts_Header") as §!!]§).setText("Out of Bolts!");
                     while(true)
                     {
                        (getItemByName("TextField_Bolts_Header_Small") as §!!]§).setText("Refill your Bolts to Build");
                        loop4:
                        while(true)
                        {
                           ((getItemByName("Container_BoltsBar_1") as §6W§).getItemByName("Textfield_Amount") as §!!]§).setText(§&!p§ + §["0§[0].toString());
                           addr144:
                           loop5:
                           while(true)
                           {
                              ((getItemByName("Container_BoltsBar_2") as §6W§).getItemByName("Textfield_Amount") as §!!]§).setText(§&!p§ + §["0§[1].toString());
                              loop6:
                              while(_loc4_)
                              {
                                 ((getItemByName("Container_BoltsBar_3") as §6W§).getItemByName("Textfield_Amount") as §!!]§).setText(§&!p§ + §["0§[2].toString());
                                 while(true)
                                 {
                                    if(_loc4_)
                                    {
                                       continue loop4;
                                    }
                                    continue loop6;
                                    addr106:
                                    ((getItemByName("Container_BoltsBar_4") as §6W§).getItemByName("Textfield_Amount") as §!!]§).setText(§&!p§ + §["0§[3].toString());
                                    if(_loc4_ || this)
                                    {
                                       continue loop5;
                                    }
                                 }
                                 continue loop4;
                              }
                              continue loop2;
                           }
                           §§goto(addr69);
                        }
                     }
                  }
               }
               if(!(_loc3_ && param2))
               {
                  addr69:
                  return;
               }
            }
         }
         §§goto(addr144);
      }
      
      private function onUiInteraction(param1:§[!f§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.uiInteractionHandler(param1.§4§,param1.§'!5§,param1.component);
         }
      }
      
      private function uiInteractionHandler(param1:int, param2:String, param3:§0=§) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:int = 0;
         §§push(param2);
         if(_loc6_ || param2)
         {
            var _loc5_:* = §§pop();
            if(_loc6_)
            {
               if("CLOSE_POPUP" === _loc5_)
               {
                  addr56:
                  §§push(0);
                  if(_loc6_ || param3)
                  {
                  }
               }
               else
               {
                  §§push(1);
               }
               if(_loc6_ || param3)
               {
                  switch(§§pop())
                  {
                     case 0:
                        §0"#§.§9"2§("Sound_Button_Back");
                        if(_loc6_ || param3)
                        {
                           this.deActivate();
                           if(!(_loc7_ && param3))
                           {
                              break;
                           }
                           addr155:
                           _loc4_ = parseInt(param2.substr(param2.length - 1,1)) - 1;
                           addr135:
                           do
                           {
                              §,$§.§[E§.§9!j§(§,$§.§<!^§,§%!D§[_loc4_]);
                              do
                              {
                                 this.deActivate();
                              }
                              while(_loc7_ && this);
                              
                           }
                           while(_loc7_);
                           
                           addr156:
                        }
                        §§goto(addr96);
                  }
                  §§goto(addr124);
               }
               §§goto(addr155);
            }
            §§goto(addr56);
         }
         addr124:
         if(param2.indexOf("ADD_BOLTS") != -1)
         {
            if(_loc6_ || param3)
            {
               §§goto(addr135);
            }
            §§goto(addr156);
         }
         addr96:
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§["<§.removeEventListener(§[!f§.§`h§,this.onUiInteraction);
            while(true)
            {
               super.deActivate();
               while(_loc2_)
               {
                  preClose();
                  if(_loc2_ || this)
                  {
                     return;
                     addr44:
                  }
               }
            }
         }
         §§goto(addr44);
      }
   }
}
