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
   
   public class §1!k§ extends Popup
   {
      
      private static const §["0§:Array;
      
      private static const §=!=§:Array;
      
      private static const §&">§:String = "X ";
      
      private static const §^!#§:String = "+";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §["0§ = [1,2,5,20,50];
            loop0:
            while(true)
            {
               §=!=§ = [5,10,50,200,500];
               while(true)
               {
                  §&">§ = "X ";
                  loop2:
                  while(_loc1_ || _loc1_)
                  {
                     if(!_loc2_)
                     {
                        while(true)
                        {
                           §^!#§ = "+";
                           if(_loc1_ || _loc1_)
                           {
                              break;
                           }
                           continue loop2;
                        }
                        return;
                        continue;
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr63);
      }
      
      private var §["<§:StatePopupManager;
      
      public function §1!k§(param1:§>!V§, param2:StatePopupManager)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            super(§]!M§.§"!V§.Views.PopupView_AddBlocks[0],param1);
            while(true)
            {
               this.§["<§ = param2;
               addr52:
               if(_loc4_ || param2)
               {
                  return;
               }
            }
         }
         loop1:
         while(true)
         {
            param2.addEventListener(§[!f§.§`h§,this.onUiInteraction);
            addr311:
            while(true)
            {
               (getItemByName("TextField_Blocks_Header") as §!!]§).setText("More Building Objects");
               continue loop1;
            }
         }
      }
      
      private function onUiInteraction(param1:§[!f§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.uiInteractionHandler(param1.§4§,param1.§'!5§,param1.component);
         }
      }
      
      private function uiInteractionHandler(param1:int, param2:String, param3:§0=§) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:* = 0;
         §§push(param2);
         if(_loc7_ || param2)
         {
            var _loc5_:* = §§pop();
            if(_loc7_)
            {
               if("CLOSE_POPUP" === _loc5_)
               {
                  addr52:
                  §§push(0);
                  if(_loc6_ && this)
                  {
                  }
               }
               else
               {
                  §§push(1);
               }
               if(_loc7_)
               {
                  switch(§§pop())
                  {
                     case 0:
                        §0"#§.§9"2§("Menu_Confirm");
                        if(_loc6_ && param3)
                        {
                           break;
                        }
                        this.deActivate();
                        if(_loc7_)
                        {
                           break;
                        }
                        while(true)
                        {
                           §§push(int(parseInt(param2.substr(param2.length - 1,1)) - 1));
                           addr113:
                           if(_loc6_ && param1)
                           {
                              continue;
                           }
                           this.deActivate();
                           addr120:
                           if(_loc6_ && param2)
                           {
                              while(_loc7_ || this)
                              {
                                 §§goto(addr113);
                                 §§goto(addr120);
                              }
                              while(true)
                              {
                                 §,$§.§[E§.§9!j§(§,$§.INCREASE_ITEM_COUNT,§=!=§[_loc4_]);
                                 §§goto(addr106);
                              }
                              addr106:
                              addr147:
                           }
                           §§goto(addr82);
                        }
                        addr126:
                  }
                  §§goto(addr122);
               }
               while(true)
               {
                  _loc4_ = §§pop();
                  §§goto(addr147);
               }
            }
            §§goto(addr52);
         }
         addr122:
         if(param2.indexOf("ADD_BLOCKS") != -1)
         {
            §§goto(addr126);
         }
         addr82:
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§["<§.removeEventListener(§[!f§.§`h§,this.onUiInteraction);
            while(true)
            {
               super.deActivate();
               while(!(_loc1_ && _loc2_))
               {
                  preClose();
                  if(!_loc2_)
                  {
                     continue;
                  }
                  return;
                  addr39:
               }
            }
         }
         §§goto(addr39);
      }
   }
}
