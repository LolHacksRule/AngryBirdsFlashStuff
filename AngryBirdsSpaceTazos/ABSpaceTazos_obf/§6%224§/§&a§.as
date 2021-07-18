package §6"4§
{
   import § !Y§.§&$§;
   import §0N§.§0!g§;
   import §3"!§.§7!U§;
   import §3C§.§9!;§;
   import §5X§.§+!#§;
   import §5X§.§@!!§;
   import §7!B§.§@"@§;
   import §7!H§.§1#§;
   import §7!H§.§8"6§;
   import §77§.§&!>§;
   import §;^§.§<!^§;
   import §;^§.§`>§;
   
   public class §&a§ extends §9!;§
   {
      
      public static const §+S§:String = "a-z A-Z 0-9 \\-";
      
      public static const §7!4§:String = "a-zA-Z";
      
      public static const §-D§:String = "0-9";
      
      public static const §?!_§:String = "a-z A-Z \'\\-.";
      
      public static const §'"<§:String = "a-zA-Z0-9\'\\-_@.";
      
      public static const §%!!§:int = 60;
      
      private static var §^!Q§:Class;
      
      public static var §"!c§:Boolean = false;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §+S§ = "a-z A-Z 0-9 \\-";
            loop0:
            while(true)
            {
               §7!4§ = "a-zA-Z";
               addr117:
               while(true)
               {
                  §-D§ = "0-9";
                  addr42:
                  if(_loc2_ || _loc1_)
                  {
                     return;
                  }
               }
               while(true)
               {
                  if(_loc2_ || §&a§)
                  {
                     §'"<§ = "a-zA-Z0-9\'\\-_@.";
                     loop4:
                     while(!_loc1_)
                     {
                        §%!!§ = 60;
                        loop5:
                        while(true)
                        {
                           §^!Q§ = §=X§;
                           while(true)
                           {
                              if(_loc2_)
                              {
                                 addr66:
                                 if(_loc1_ && §&a§)
                                 {
                                    break;
                                 }
                                 continue;
                              }
                              continue loop5;
                           }
                           addr112:
                           while(true)
                           {
                              §?!_§ = "a-z A-Z \'\\-.";
                              break loop4;
                              §§goto(addr66);
                           }
                        }
                        if(!(_loc2_ || §&a§))
                        {
                           continue;
                        }
                        §§goto(addr42);
                     }
                     continue;
                  }
                  continue loop0;
               }
               §§goto(addr117);
            }
         }
         §§goto(addr112);
      }
      
      private var §^,§:Boolean;
      
      private var §?W§:Boolean;
      
      private var §0r§:Boolean;
      
      private var §>X§:String;
      
      private var §%8§:String;
      
      private var § !T§:String;
      
      private var §9§:String;
      
      private var §+"D§:§`>§;
      
      private var §!x§:§<!^§;
      
      private var §;j§:Boolean;
      
      private var §-!N§:String = "";
      
      private var §+!D§:String = "";
      
      private var §0m§:String = "";
      
      private var §,"0§:String = "";
      
      private var §"h§:String = "";
      
      private var §-"7§:String = "";
      
      private var §6">§:§@"@§;
      
      public function §&a§(param1:§@"@§)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §>"2§ = true;
            while(true)
            {
               §1"$§ = true;
            }
            addr78:
         }
         loop1:
         do
         {
            super(§1#§.§["C§,§8"6§.§8p§,§0!g§.§[!y§(§^!Q§));
            while(_loc2_)
            {
               this.§6">§ = param1;
               if(!(_loc3_ && _loc2_))
               {
                  continue loop1;
               }
            }
            §§goto(addr78);
         }
         while(_loc3_);
         
      }
      
      override protected function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super.init();
         }
         loop0:
         while(true)
         {
            this.§+"D§ = new §`>§(§[S§,this);
            loop1:
            while(true)
            {
               this.§!x§ = new §<!^§(§[S§,this);
               while(true)
               {
                  this.§="C§();
                  loop3:
                  for(; !_loc2_; if(!(_loc1_ || _loc2_))
                  {
                     continue;
                  },§§goto(addr99))
                  {
                     §§push(this.§!x§);
                     while(true)
                     {
                        §§pop().activate();
                        addr104:
                        while(_loc1_)
                        {
                           continue loop0;
                        }
                        addr99:
                        §§push(this.§!x§);
                        continue loop1;
                        if(!(_loc2_ && _loc1_))
                        {
                           §§pop().§8!E§();
                           while(!_loc2_)
                           {
                              this.§+"D§.§`p§();
                              do
                              {
                                 (§ !g§.§;!'§ as §`Y§).§&,§.§4"1§(false);
                                 do
                                 {
                                    this.§;j§ = (§ !g§.§;!'§ as §`Y§).§&,§.§ w§();
                                 }
                                 while(!_loc1_);
                                 
                              }
                              while(_loc2_);
                              
                              if(_loc1_ || this)
                              {
                                 return;
                              }
                           }
                           while(true)
                           {
                              if(!(_loc2_ && _loc2_))
                              {
                                 continue loop3;
                              }
                              §§goto(addr104);
                           }
                           continue loop3;
                           addr85:
                        }
                     }
                  }
               }
            }
         }
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §§push(§ !g§.§;!'§);
            loop0:
            while(true)
            {
               §§push((§§pop() as §`Y§).§&,§);
               addr93:
               while(true)
               {
                  §§push(true);
                  addr94:
                  while(true)
                  {
                     §§pop().§4"1§(§§pop());
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr87);
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§+!#§) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:§@!!§ = null;
         var _loc5_:* = param2;
         if(!(_loc7_ && param3))
         {
            if("SUBMIT" === _loc5_)
            {
               if(_loc6_ || param3)
               {
                  §§push(0);
                  if(!(_loc6_ || param3))
                  {
                     addr372:
                  }
               }
               else
               {
                  addr467:
                  §§push(8);
                  if(!(_loc7_ && param2))
                  {
                     addr475:
                  }
                  else
                  {
                     addr492:
                  }
               }
            }
            else if("CANCEL" === _loc5_)
            {
               if(!(_loc7_ && param2))
               {
                  §§push(1);
                  if(!_loc7_)
                  {
                     §§goto(addr372);
                  }
                  else
                  {
                     §§goto(addr475);
                  }
               }
               else
               {
                  addr406:
                  §§push(4);
                  if(_loc7_ && this)
                  {
                     addr447:
                  }
               }
            }
            else if("SUBMIT_REGISTER" === _loc5_)
            {
               if(!_loc7_)
               {
                  §§push(2);
                  if(_loc7_)
                  {
                  }
               }
               else
               {
                  addr444:
                  §§push(6);
                  if(_loc6_)
                  {
                     §§goto(addr447);
                  }
               }
            }
            else if("CANCEL_REGISTER" === _loc5_)
            {
               if(_loc6_ || this)
               {
                  §§push(3);
                  if(!_loc6_)
                  {
                     addr433:
                  }
               }
               else
               {
                  §§goto(addr406);
               }
            }
            else
            {
               if("CHECKBOX_CHANGE" === _loc5_)
               {
                  if(!(_loc7_ && param1))
                  {
                     §§goto(addr406);
                  }
               }
               else if("CHECKBOX_MARKETING_CHANGE" === _loc5_)
               {
                  if(!(_loc7_ && this))
                  {
                     §§push(5);
                     if(_loc6_ || this)
                     {
                        §§goto(addr433);
                     }
                     else
                     {
                        addr461:
                        §§goto(addr497);
                     }
                  }
               }
               else if("CHECKBOX_EXT_MARKETING_CHANGE" === _loc5_)
               {
                  if(_loc6_ || this)
                  {
                     §§goto(addr444);
                  }
                  else
                  {
                     addr453:
                     §§push(7);
                     if(!(_loc7_ && this))
                     {
                        §§goto(addr461);
                     }
                     else
                     {
                        §§goto(addr492);
                     }
                  }
               }
               else if("FORGOT_PASSWORD" === _loc5_)
               {
                  if(_loc6_)
                  {
                     §§goto(addr453);
                  }
                  else
                  {
                     §§goto(addr467);
                  }
               }
               else
               {
                  if("TAB_LOGIN" === _loc5_)
                  {
                     if(!_loc7_)
                     {
                        §§goto(addr467);
                     }
                  }
                  else if("TAB_REGISTER" !== _loc5_)
                  {
                     addr497:
                     loop8:
                     switch(§§pop())
                     {
                        case 0:
                           this.§!x§.§8"@§();
                           break;
                           addr58:
                        case 1:
                           close();
                           addr50:
                           if(_loc6_)
                           {
                              addr36:
                              break;
                           }
                           §§goto(addr58);
                           break;
                        case 2:
                           this.§+"D§.§8"@§();
                           addr42:
                           if(!_loc7_)
                           {
                              break;
                           }
                           §§goto(addr50);
                           break;
                        case 3:
                           close();
                           if(!(_loc7_ && param1))
                           {
                              if(_loc6_)
                              {
                                 if(true)
                                 {
                                    break;
                                 }
                              }
                              else
                              {
                                 §§goto(addr42);
                              }
                              §§goto(addr36);
                           }
                           break;
                        case 4:
                           _loc4_ = §[S§.getItemByName("Checkbox_RememberMe") as §@!!§;
                           if(_loc6_)
                           {
                              §§push(this);
                              §§push(this.§^,§);
                              if(_loc6_)
                              {
                                 §§push(!§§pop());
                              }
                              §§pop().§^,§ = §§pop();
                           }
                           do
                           {
                              while(!this.§^,§)
                              {
                                 _loc4_.setComponentState(§@!!§.§else §);
                                 if(_loc6_ || param2)
                                 {
                                    if(!(_loc6_ || param2))
                                    {
                                       break;
                                    }
                                    if(false)
                                    {
                                       continue;
                                    }
                                 }
                                 else
                                 {
                                    addr104:
                                 }
                                 _loc4_ = §[S§.getItemByName("Checkbox_RememberMe_Register") as §@!!§;
                                 if(!(_loc7_ && param3))
                                 {
                                    if(this.§^,§)
                                    {
                                       if(_loc6_)
                                       {
                                          addr132:
                                          _loc4_.setComponentState(§@!!§.COMPONENT_STATE_ACTIVE_DEFAULT);
                                          if(_loc7_)
                                          {
                                          }
                                       }
                                    }
                                    else
                                    {
                                       _loc4_.setComponentState(§@!!§.§else §);
                                    }
                                    break loop8;
                                 }
                                 §§goto(addr132);
                              }
                           }
                           while(!_loc6_);
                           
                           _loc4_.setComponentState(§@!!§.COMPONENT_STATE_ACTIVE_DEFAULT);
                           §§goto(addr104);
                        case 5:
                           _loc4_ = §[S§.getItemByName("Checkbox_Marketing") as §@!!§;
                           if(!(_loc7_ && param1))
                           {
                              §§push(this);
                              §§push(this.§?W§);
                              if(!_loc7_)
                              {
                                 §§push(!§§pop());
                              }
                              §§pop().§?W§ = §§pop();
                           }
                           loop2:
                           while(true)
                           {
                              while(true)
                              {
                                 if(this.§?W§)
                                 {
                                    if(!(_loc6_ || param3))
                                    {
                                       break;
                                    }
                                    if(_loc6_)
                                    {
                                       _loc4_.setComponentState(§@!!§.COMPONENT_STATE_ACTIVE_DEFAULT);
                                       break;
                                    }
                                    continue loop2;
                                 }
                                 _loc4_.setComponentState(§@!!§.§else §);
                                 if(!(_loc6_ || param1))
                                 {
                                    break;
                                 }
                                 if(true)
                                 {
                                    break loop8;
                                 }
                                 addr202:
                              }
                              §§goto(addr202);
                           }
                           break;
                        case 6:
                           _loc4_ = §[S§.getItemByName("Checkbox_ExtMarketing") as §@!!§;
                           if(_loc6_ || param2)
                           {
                              §§push(this);
                              §§push(this.§0r§);
                              if(!(_loc7_ && this))
                              {
                                 §§push(!§§pop());
                              }
                              §§pop().§0r§ = §§pop();
                              while(true)
                              {
                                 if(this.§0r§)
                                 {
                                    if(_loc6_ || param3)
                                    {
                                       if(_loc7_)
                                       {
                                          continue;
                                       }
                                       _loc4_.setComponentState(§@!!§.COMPONENT_STATE_ACTIVE_DEFAULT);
                                    }
                                    break;
                                    addr314:
                                 }
                                 _loc4_.setComponentState(§@!!§.§else §);
                              }
                              addr270:
                              break;
                           }
                           addr296:
                           §§goto(addr270);
                        case 7:
                           § !g§.§;!'§.§>";§.openPopup(new §7!U§());
                           addr279:
                           if(!(_loc7_ && param2))
                           {
                              if(_loc6_)
                              {
                                 break;
                              }
                              §§goto(addr314);
                           }
                           else
                           {
                              §§goto(addr296);
                           }
                           §§goto(addr270);
                        case 8:
                           this.§"!t§();
                           loop5:
                           while(true)
                           {
                              this.§!x§.activate();
                              addr254:
                              while(true)
                              {
                                 if(!(_loc7_ && this))
                                 {
                                    break loop5;
                                 }
                                 continue loop5;
                              }
                           }
                           if(_loc6_)
                           {
                              addr234:
                              break;
                           }
                           §§goto(addr279);
                           break;
                        case 9:
                           this.§"!t§();
                           do
                           {
                              this.§+"D§.activate();
                           }
                           while(_loc7_);
                           
                           if(!(_loc7_ && param3))
                           {
                              if(true)
                              {
                                 break;
                              }
                           }
                           else
                           {
                              §§goto(addr254);
                           }
                           §§goto(addr234);
                     }
                     return;
                     §§push(10);
                  }
                  §§goto(addr497);
               }
               §§goto(addr497);
               if(!_loc7_)
               {
                  §§goto(addr492);
               }
            }
            §§goto(addr497);
         }
         §§goto(addr444);
      }
      
      public function § !6§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§"!t§();
         }
         do
         {
            this.§!x§.activate();
         }
         while(_loc2_);
         
      }
      
      private function §"!t§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            §[S§.getItemByName("MovieClip_ErrorRegisterMarkEmail").setVisibility(false);
            loop0:
            while(true)
            {
               §[S§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(false);
               while(true)
               {
                  §[S§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(false);
                  addr118:
                  addr50:
                  while(true)
                  {
                     §[S§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(false);
                     continue loop0;
                  }
                  if(_loc1_ || _loc1_)
                  {
                     return;
                     addr57:
                  }
               }
            }
         }
         §§goto(addr90);
      }
      
      override public function updateTextFields() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §&$§.§[!1§.updateTextFields(§[S§,"Login_Popup");
         }
         loop0:
         do
         {
            this.§"!t§();
            while(true)
            {
               this.§+"D§.updateTextFields();
               while(_loc1_ || this)
               {
                  this.§!x§.§[!]§();
                  if(!_loc2_)
                  {
                     continue loop0;
                  }
               }
            }
         }
         while(_loc2_ && _loc1_);
         
      }
      
      private function §="C§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(§"!c§);
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     this.§-!o§();
                     while(true)
                     {
                        this.§;!%§();
                        loop3:
                        while(true)
                        {
                           this.§^,§ = false;
                           addr205:
                           while(true)
                           {
                              this.§?W§ = false;
                              continue loop3;
                           }
                        }
                     }
                  }
               }
               §§goto(addr131);
               if(_loc1_ && _loc2_)
               {
                  continue;
               }
               §§goto(addr71);
            }
         }
         §§goto(addr50);
      }
      
      private function §#""§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            if(this.§6">§.§+!T§())
            {
               if(!(_loc1_ && _loc1_))
               {
                  (§[S§.getItemByName("TextField_UserNameField") as §&!>§).§ !'§.text = this.§6">§.name;
               }
               loop0:
               while(true)
               {
                  (§[S§.getItemByName("TextField_PasswordField") as §&!>§).§ !'§.text = this.§6">§.password;
                  addr61:
                  while(true)
                  {
                     this.§^,§ = this.§6">§.rememberMeToggled;
                     if(!_loc1_)
                     {
                        if(_loc2_)
                        {
                           break;
                        }
                        continue loop0;
                     }
                  }
                  §§goto(addr25);
               }
            }
            addr25:
            return;
         }
         §§goto(addr61);
      }
      
      public function §;!%§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            (§[S§.getItemByName("TextField_UserNameField") as §&!>§).§ !'§.text = "";
            while(true)
            {
               (§[S§.getItemByName("TextField_PasswordField") as §&!>§).§ !'§.text = "";
               while(_loc1_)
               {
                  §[S§.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(false);
                  while(!_loc2_)
                  {
                     §[S§.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(false);
                     if(!_loc2_)
                     {
                        return;
                        addr41:
                     }
                  }
               }
            }
         }
         §§goto(addr41);
      }
      
      public function §-!o§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            (§[S§.getItemByName("TextField_EmailField_Register") as §&!>§).§ !'§.text = "";
            loop0:
            while(true)
            {
               (§[S§.getItemByName("TextField_PasswordField_Register") as §&!>§).§ !'§.text = "";
               while(true)
               {
                  (§[S§.getItemByName("TextField_PasswordFieldRepeat_Register") as §&!>§).§ !'§.text = "";
                  while(_loc2_ || _loc1_)
                  {
                     while(true)
                     {
                        (§[S§.getItemByName("TextField_NickNameField_Register") as §&!>§).§ !'§.text = "";
                        continue loop0;
                     }
                     addr67:
                     if(!(_loc1_ && _loc2_))
                     {
                        §[S§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(false);
                        while(true)
                        {
                           if(!_loc1_)
                           {
                              addr46:
                              if(!(_loc2_ || _loc2_))
                              {
                                 break;
                              }
                              continue;
                           }
                           addr91:
                           while(_loc2_ || this)
                           {
                              §§goto(addr67);
                           }
                           while(true)
                           {
                              §[S§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(false);
                              §§goto(addr60);
                           }
                           addr60:
                        }
                        continue loop0;
                     }
                  }
               }
            }
         }
         §§goto(addr125);
      }
      
      public function §9P§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            this.§>X§ = this.§ !T§;
         }
         loop0:
         while(true)
         {
            this.§%8§ = this.§9§;
            loop1:
            while(true)
            {
               (§[S§.getItemByName("TextField_UserNameField") as §&!>§).§ !'§.text = this.§>X§;
               loop2:
               while(true)
               {
                  (§[S§.getItemByName("TextField_PasswordField") as §&!>§).§ !'§.text = this.§%8§;
                  for(; this.§^,§; if(_loc2_ || this)
                  {
                     if(!_loc1_)
                     {
                        break;
                     }
                     continue loop2;
                  })
                  {
                     if(!_loc1_)
                     {
                        if(_loc2_)
                        {
                           if(!_loc1_)
                           {
                              this.§6">§.§#Q§(this.§>X§,this.§%8§,this.§^,§);
                              continue;
                           }
                           continue loop0;
                        }
                        continue loop1;
                     }
                  }
                  return;
               }
            }
         }
      }
      
      public function get rememberMeToggled() : Boolean
      {
         return this.§^,§;
      }
      
      public function get §>!x§() : String
      {
         return this.§ !T§;
      }
      
      public function set §>!x§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§ !T§ = param1;
         }
      }
      
      public function get §-!<§() : String
      {
         return this.§9§;
      }
      
      public function set §-!<§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§9§ = param1;
         }
      }
      
      public function get §'!;§() : Boolean
      {
         return this.§?W§;
      }
      
      public function get §!!@§() : Boolean
      {
         return this.§0r§;
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            super.hide(param1,param2);
         }
      }
      
      public function get §@!j§() : §@"@§
      {
         return this.§6">§;
      }
   }
}
