package §+h§
{
   import §'!A§.§-!S§;
   import §'p§.§`!<§;
   import §'p§.§`!T§;
   import §-!n§.§5!U§;
   import §1"2§.§'s§;
   import §1"2§.§`7§;
   import §6!U§.§+!!§;
   import §9!O§.§0x§;
   
   public class §+"9§ extends Popup
   {
      
      private static const §^"=§:Array;
      
      private static const §"!z§:Array;
      
      private static const §8!I§:String = "X ";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || §+"9§)
         {
            §^"=§ = [3,5,7,10];
         }
         while(true)
         {
            §"!z§ = [1,2,3,5];
            while(_loc1_ || §+"9§)
            {
               §8!I§ = "X ";
               if(!(_loc2_ && _loc1_))
               {
                  return;
               }
            }
         }
      }
      
      private var §2P§:StatePopupManager;
      
      public function §+"9§(param1:§'s§, param2:StatePopupManager)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super(§`7§.§>"?§.Views.PopupView_AddBolts[0],param1);
            loop0:
            while(true)
            {
               this.§2P§ = param2;
               loop1:
               while(true)
               {
                  param2.addEventListener(§+!!§.§]!M§,this.onUiInteraction);
                  loop2:
                  while(true)
                  {
                     (getItemByName("TextField_Bolts_Header") as §`!<§).setText("Out of Bolts!");
                     while(true)
                     {
                        (getItemByName("TextField_Bolts_Header_Small") as §`!<§).setText("Refill your Bolts to Build");
                        loop4:
                        while(!(_loc4_ && _loc3_))
                        {
                           ((getItemByName("Container_BoltsBar_1") as §`!T§).getItemByName("Textfield_Amount") as §`!<§).setText(§8!I§ + §^"=§[0].toString());
                           loop5:
                           while(!_loc4_)
                           {
                              if(_loc3_)
                              {
                                 ((getItemByName("Container_BoltsBar_2") as §`!T§).getItemByName("Textfield_Amount") as §`!<§).setText(§8!I§ + §^"=§[1].toString());
                                 loop6:
                                 while(_loc3_)
                                 {
                                    ((getItemByName("Container_BoltsBar_3") as §`!T§).getItemByName("Textfield_Amount") as §`!<§).setText(§8!I§ + §^"=§[2].toString());
                                    loop7:
                                    while(_loc3_)
                                    {
                                       while(true)
                                       {
                                          ((getItemByName("Container_BoltsBar_4") as §`!T§).getItemByName("Textfield_Amount") as §`!<§).setText(§8!I§ + §^"=§[3].toString());
                                          if(_loc3_ || _loc3_)
                                          {
                                             if(!(_loc4_ && this))
                                             {
                                                if(_loc4_ && _loc3_)
                                                {
                                                   continue loop5;
                                                }
                                                §§goto(addr61);
                                                continue loop5;
                                             }
                                             continue loop6;
                                             continue loop6;
                                          }
                                          continue loop7;
                                       }
                                       return;
                                    }
                                    continue loop0;
                                 }
                                 continue loop4;
                              }
                              continue loop1;
                           }
                           continue loop2;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr81);
      }
      
      private function onUiInteraction(param1:§+!!§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.uiInteractionHandler(param1.§&!X§,param1.§1_§,param1.component);
         }
      }
      
      private function uiInteractionHandler(param1:int, param2:String, param3:§-!S§) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:* = 0;
         §§push(param2);
         if(!_loc7_)
         {
            var _loc5_:* = §§pop();
            if(!_loc7_)
            {
               if("CLOSE_POPUP" === _loc5_)
               {
                  addr46:
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
                        §5!U§.playSound("Sound_Button_Back");
                        if(!(_loc7_ && this))
                        {
                           this.deActivate();
                           if(!_loc7_)
                           {
                              §§goto(addr115);
                           }
                           §§goto(addr120);
                        }
                        break;
                     default:
                        addr115:
                        §§goto(addr116);
                  }
                  continue loop1;
               }
               §§goto(addr140);
            }
            §§goto(addr46);
         }
         addr116:
         if(param2.indexOf("ADD_BOLTS") != -1)
         {
            while(true)
            {
               §§push(int(parseInt(param2.substr(param2.length - 1,1)) - 1));
               addr140:
               while(true)
               {
                  _loc4_ = §§pop();
                  loop4:
                  while(true)
                  {
                     §0x§.§2=§.§"""§(§0x§.§1!O§,§"!z§[_loc4_]);
                     while(true)
                     {
                        if(!(_loc7_ && param3))
                        {
                           break loop5;
                        }
                        continue loop4;
                     }
                     break loop5;
                  }
               }
            }
            addr120:
         }
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§2P§.removeEventListener(§+!!§.§]!M§,this.onUiInteraction);
            while(true)
            {
               super.deActivate();
               §§goto(addr60);
            }
         }
         addr60:
         while(true)
         {
            preClose();
            if(!_loc1_)
            {
               if(_loc2_ || _loc2_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
   }
}
