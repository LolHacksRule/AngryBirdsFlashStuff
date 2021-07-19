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
   
   public class §="-§ extends Popup
   {
      
      private static const §^"=§:Array;
      
      private static const §0!b§:Array;
      
      private static const §2q§:String = "X ";
      
      private static const §6!I§:String = "+";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && §="-§))
         {
            §^"=§ = [1,2,5,20,50];
         }
         while(true)
         {
            §0!b§ = [5,10,50,200,500];
            while(_loc2_ || §="-§)
            {
               §2q§ = "X ";
               do
               {
                  §6!I§ = "+";
               }
               while(!(_loc2_ || §="-§));
               
               if(_loc2_)
               {
                  return;
               }
            }
         }
      }
      
      private var §2P§:StatePopupManager;
      
      public function §="-§(param1:§'s§, param2:StatePopupManager)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param1))
         {
            super(§`7§.§>"?§.Views.PopupView_AddBlocks[0],param1);
         }
         loop0:
         while(true)
         {
            this.§2P§ = param2;
            while(true)
            {
               param2.addEventListener(§+!!§.§]!M§,this.onUiInteraction);
               while(!(_loc4_ && param1))
               {
                  (getItemByName("TextField_Blocks_Header") as §`!<§).setText("More Building Objects");
                  while(_loc3_)
                  {
                     (((getItemByName("Container_AddBlock_1") as §`!T§).getItemByName("Container_AddBlocks") as §`!T§).getItemByName("Textfield_Amount") as §`!<§).setText(§2q§ + §^"=§[0].toString());
                     loop4:
                     while(true)
                     {
                        (((getItemByName("Container_AddBlock_2") as §`!T§).getItemByName("Container_AddBlocks") as §`!T§).getItemByName("Textfield_Amount") as §`!<§).setText(§2q§ + §^"=§[1].toString());
                        while(true)
                        {
                           if(!_loc3_)
                           {
                              continue loop4;
                           }
                           if(!_loc3_)
                           {
                              break;
                           }
                           (((getItemByName("Container_AddBlock_3") as §`!T§).getItemByName("Container_AddBlocks") as §`!T§).getItemByName("Textfield_Amount") as §`!<§).setText(§2q§ + §^"=§[2].toString());
                           loop6:
                           while(true)
                           {
                              (((getItemByName("Container_AddBlock_4") as §`!T§).getItemByName("Container_AddBlocks") as §`!T§).getItemByName("Textfield_Amount") as §`!<§).setText(§2q§ + §^"=§[3].toString());
                              addr209:
                              while(true)
                              {
                                 (((getItemByName("Container_AddBlock_5") as §`!T§).getItemByName("Container_AddBlocks") as §`!T§).getItemByName("Textfield_Amount") as §`!<§).setText(§2q§ + §^"=§[4].toString());
                                 continue loop6;
                              }
                           }
                        }
                        continue loop0;
                     }
                     if(!(_loc3_ || this))
                     {
                        continue;
                     }
                     ((getItemByName("Container_AddBlock_3") as §`!T§).getItemByName("TextField_Block_Amount") as §`!<§).setText(§6!I§ + §0!b§[2].toString());
                     §§goto(addr94);
                  }
               }
            }
         }
      }
      
      private function onUiInteraction(param1:§+!!§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
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
            if(!(_loc7_ && this))
            {
               if("CLOSE_POPUP" === _loc5_)
               {
                  addr46:
                  §§push(0);
                  if(!_loc6_)
                  {
                  }
               }
               else
               {
                  §§push(1);
               }
               if(!_loc7_)
               {
                  switch(§§pop())
                  {
                     case 0:
                        §5!U§.playSound("Menu_Confirm");
                        if(!_loc7_)
                        {
                           this.deActivate();
                           if(_loc6_)
                           {
                              break;
                           }
                           loop0:
                           while(true)
                           {
                              §0x§.§2=§.§"""§(§0x§.INCREASE_ITEM_COUNT,§0!b§[_loc4_]);
                              while(!(_loc7_ && param2))
                              {
                                 this.deActivate();
                                 if(_loc6_)
                                 {
                                    if(_loc6_ || param1)
                                    {
                                       break loop0;
                                    }
                                    continue loop0;
                                 }
                              }
                           }
                           addr76:
                           return;
                           addr136:
                        }
                        while(true)
                        {
                           §§push(int(parseInt(param2.substr(param2.length - 1,1)) - 1));
                        }
                        addr115:
                  }
                  addr111:
                  if(param2.indexOf("ADD_BLOCKS") != -1)
                  {
                     §§goto(addr115);
                  }
                  §§goto(addr76);
               }
               while(true)
               {
                  _loc4_ = §§pop();
                  §§goto(addr136);
               }
            }
            §§goto(addr46);
         }
         §§goto(addr111);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§2P§.removeEventListener(§+!!§.§]!M§,this.onUiInteraction);
            while(true)
            {
               super.deActivate();
               while(_loc1_ || _loc1_)
               {
                  preClose();
                  if(_loc2_ && this)
                  {
                     continue;
                  }
                  return;
                  addr43:
               }
            }
         }
         §§goto(addr43);
      }
   }
}
