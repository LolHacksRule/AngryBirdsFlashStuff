package §[!i§
{
   import §"n§.§!!G§;
   import §,L§.§6!W§;
   import §1T§.§'!c§;
   import §48§.§1!<§;
   import §48§.§]l§;
   import each.§8!N§;
   
   public class §[!x§ extends §@"§
   {
      
      private static var §3E§:Class;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && §[!x§))
         {
            §3E§ = §3!;§;
         }
      }
      
      private var §,!#§:Boolean;
      
      public function §[!x§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §-!w§ = true;
            loop0:
            while(true)
            {
               §@!X§ = true;
               while(true)
               {
                  §0!T§ = true;
                  addr54:
                  while(_loc1_)
                  {
                     if(!_loc2_)
                     {
                        continue;
                     }
                     continue loop0;
                  }
               }
            }
         }
         while(true)
         {
            super(§1!<§.§&!_§,§]l§.DEFAULT,this.§`!K§());
            if(!(_loc2_ && _loc2_))
            {
               break;
            }
            §§goto(addr54);
         }
      }
      
      protected function §`!K§() : XML
      {
         var _loc1_:XML = §8!N§.§?!c§(§3E§);
         return §4!=§.§'!u§(_loc1_);
      }
      
      override protected function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            super.init();
            while(true)
            {
               this.§,!#§ = false;
               §§goto(addr60);
            }
         }
         addr60:
         while(true)
         {
            this.updateTextFields();
            if(!_loc2_)
            {
               if(_loc1_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§6!W§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = param2;
         if(_loc6_)
         {
            if("LOGOUT_YES" !== _loc4_)
            {
               if("LOGOUT_NO" === _loc4_)
               {
                  §§goto(addr92);
               }
               else
               {
                  §§push(2);
               }
               addr115:
               switch(§§pop())
               {
                  case 0:
                     this.§,!#§ = true;
                     if(!_loc5_)
                     {
                        close();
                        if(_loc6_)
                        {
                           addr34:
                           §'!c§.§3!f§("Menu_Confirm");
                           break;
                           addr38:
                        }
                        break;
                     }
                     break;
                  case 1:
                     this.closePressed();
                     if(_loc6_)
                     {
                        if(_loc6_ || param2)
                        {
                           if(true)
                           {
                              break;
                           }
                           §§goto(addr34);
                        }
                        §§goto(addr38);
                     }
               }
               return;
            }
            if(_loc6_ || param1)
            {
               addr80:
               §§push(0);
               if(_loc5_ && param1)
               {
                  addr110:
               }
            }
            else
            {
               addr92:
               §§push(1);
               if(_loc6_ || param3)
               {
                  §§goto(addr110);
               }
            }
            §§goto(addr115);
            §§goto(addr92);
         }
         §§goto(addr80);
      }
      
      override protected function closePressed() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            close();
         }
         do
         {
            §'!c§.§3!f§("Menu_Back");
         }
         while(!_loc2_);
         
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            if(this.§,!#§)
            {
               if(!(_loc3_ && param2))
               {
                  addr67:
                  (§6!!§.singleton as §4!=§).§0Q§();
               }
               while(true)
               {
                  §§goto(addr24);
               }
            }
            addr24:
            while(true)
            {
               super.hide(param1,param2);
               if(_loc4_ || this)
               {
                  break;
               }
               continue loop0;
            }
            return;
         }
         §§goto(addr67);
      }
      
      override public function updateTextFields() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §!!G§.§2Z§.updateTextFields(§@'§,"Logout_Popup");
         }
      }
   }
}
