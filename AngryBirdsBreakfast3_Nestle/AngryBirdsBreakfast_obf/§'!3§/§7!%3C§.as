package §'!3§
{
   import §&!y§.§14§;
   import §'"!§.§+§;
   import §1!c§.§?"7§;
   import §1!i§.§4z§;
   import §1!i§.§`!t§;
   import §24§.§4!H§;
   import §4!i§.§@"#§;
   import §4[§.§2P§;
   import §4[§.§4Z§;
   import §4[§.LoginHandlerEvent;
   import §<S§.HighscoreSidebar;
   import §[!Z§.§>D§;
   
   public class §7!<§ extends §;!o§
   {
      
      private static var §6B§:Class;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §6B§ = §@!s§;
         }
      }
      
      private var §%!f§:Boolean;
      
      private var §3!+§:§4Z§;
      
      private var §'!O§:Boolean;
      
      public function §7!<§(param1:§4Z§)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            §9p§ = true;
            while(true)
            {
               §]G§ = true;
               loop1:
               while(!(_loc2_ && this))
               {
                  §^J§ = true;
                  while(true)
                  {
                     super(§`!t§.§3"1§,§4z§.DEFAULT,this.§'!,§());
                     do
                     {
                        this.§3!+§ = param1;
                     }
                     while(_loc2_);
                     
                     if(!(_loc2_ && _loc2_))
                     {
                        if(_loc3_)
                        {
                           break;
                        }
                        continue loop1;
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr69);
      }
      
      protected function §'!,§() : XML
      {
         var _loc1_:XML = §4!H§.§7o§(§6B§);
         return AngryBirdsCustom.§9!>§(_loc1_);
      }
      
      override protected function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.init();
         }
         loop0:
         while(true)
         {
            this.§%!f§ = false;
            loop1:
            while(true)
            {
               this.updateTextFields();
               while(true)
               {
                  this.§'!O§ = (§ !4§.§%"7§ as AngryBirdsCustom).§<=§.§08§.§-H§;
                  while(_loc2_)
                  {
                     continue loop1;
                     (§ !4§.§%"7§ as AngryBirdsCustom).§<=§.§2!J§(false);
                     if(_loc2_)
                     {
                        continue loop0;
                     }
                  }
               }
            }
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§+§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = param2;
         if(!_loc5_)
         {
            if("LOGOUT_YES" !== _loc4_)
            {
               if("LOGOUT_NO" === _loc4_)
               {
                  §§goto(addr190);
               }
               else
               {
                  §§push(2);
               }
               addr208:
               loop11:
               switch(§§pop())
               {
                  case 0:
                     this.§%!f§ = true;
                     loop0:
                     while(true)
                     {
                        §§push(§ !4§.§%"7§);
                        addr153:
                        while(true)
                        {
                           §§push((§§pop() as AngryBirdsCustom).§<=§);
                           addr156:
                           while(true)
                           {
                              §§push(this.§'!O§);
                              addr158:
                              while(true)
                              {
                                 §§pop().§2!J§(§§pop());
                                 addr159:
                                 while(true)
                                 {
                                    §>D§.§9!q§("Menu_Confirm");
                                    if(_loc5_ && param3)
                                    {
                                       break loop11;
                                    }
                                    close();
                                    continue loop0;
                                 }
                              }
                           }
                        }
                     }
                     break;
                  case 1:
                     §§push(§ !4§.§%"7§);
                     loop1:
                     for(; !(_loc5_ && param2); §§push(§ !4§.§%"7§),if(!(_loc6_ || param2))
                     {
                        continue;
                     },§§goto(addr56))
                     {
                        §§push((§§pop() as AngryBirdsCustom).§<=§);
                        while(true)
                        {
                           if(_loc6_ || param2)
                           {
                              §§pop().§08§.§4!4§(true);
                              while(_loc6_ || this)
                              {
                                 continue loop1;
                                 while(_loc6_ || param1)
                                 {
                                    while(true)
                                    {
                                       §>D§.§9!q§("Menu_Back");
                                       if(!(_loc5_ && param1))
                                       {
                                          if(!_loc5_)
                                          {
                                             close();
                                             if(!(_loc5_ && param2))
                                             {
                                                if(!_loc5_)
                                                {
                                                   if(true)
                                                   {
                                                      break loop11;
                                                   }
                                                   continue;
                                                }
                                                §§goto(addr130);
                                             }
                                             break loop11;
                                          }
                                          break;
                                       }
                                       break loop11;
                                    }
                                 }
                              }
                              §§goto(addr159);
                           }
                           §§push((§§pop() as AngryBirdsCustom).§<=§);
                           addr56:
                           break;
                           if(_loc5_ && param3)
                           {
                              continue;
                           }
                           §§push(this.§'!O§);
                           if(!(_loc5_ && param2))
                           {
                              §§pop().§2!J§(§§pop());
                              §§goto(addr76);
                           }
                           §§goto(addr158);
                        }
                        §§goto(addr156);
                     }
                     §§goto(addr153);
               }
               return;
            }
            if(_loc6_ || param3)
            {
               addr183:
               §§push(0);
               if(_loc5_)
               {
               }
            }
            else
            {
               addr190:
               §§push(1);
               if(_loc5_)
               {
               }
            }
            §§goto(addr208);
            §§goto(addr190);
         }
         §§goto(addr183);
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:HighscoreSidebar = null;
         if(_loc4_ || param1)
         {
            if(this.§%!f§)
            {
               while(true)
               {
                  this.§%!f§ = false;
                  if(!(_loc5_ && _loc3_))
                  {
                     §14§.§>c§ = true;
                     loop1:
                     while(true)
                     {
                        §§push(§ !4§.§%"7§);
                        loop2:
                        while(true)
                        {
                           (§§pop() as AngryBirdsCustom).§[M§();
                           loop3:
                           while(true)
                           {
                              §2P§.levelProfile = [];
                              if(!(_loc4_ || param1))
                              {
                                 break;
                              }
                              while(true)
                              {
                                 §§push(§ !4§.§%"7§);
                                 loop5:
                                 for(; _loc4_; if(!(_loc4_ || param1))
                                 {
                                    continue;
                                 },§§push((§§pop() as AngryBirdsCustom).§<=§),if(_loc4_ || _loc3_)
                                 {
                                    §§pop().§@!0§();
                                    if(_loc4_)
                                    {
                                       if(!_loc5_)
                                       {
                                          §§push(§ !4§.§%"7§);
                                          if(_loc4_)
                                          {
                                             if(_loc4_)
                                             {
                                                ((§§pop() as AngryBirdsCustom).§+!J§ as §;!H§).§=!5§(false,false,true);
                                                if(_loc4_)
                                                {
                                                   addr45:
                                                   if(_loc5_ && param2)
                                                   {
                                                      continue loop1;
                                                   }
                                                   if(false)
                                                   {
                                                      §§goto(addr54);
                                                   }
                                                   §§goto(addr178);
                                                   §§push(§ !4§.§%"7§);
                                                }
                                                break loop3;
                                             }
                                             while(true)
                                             {
                                                §§pop().§7"6§(§?"7§.§8"%§);
                                                §§goto(addr93);
                                             }
                                             continue loop3;
                                             addr90:
                                          }
                                          §§goto(addr178);
                                       }
                                       §§goto(addr93);
                                    }
                                    break loop3;
                                 },§§goto(addr181))
                                 {
                                    (§§pop() as AngryBirdsCustom).§+Y§.§5!z§ = false;
                                    while(true)
                                    {
                                       this.§3!+§.§4!s§();
                                       continue loop1;
                                       addr93:
                                       while(!(_loc5_ && param1))
                                       {
                                          if(_loc5_)
                                          {
                                             continue loop3;
                                          }
                                          while(true)
                                          {
                                             §§push(§ !4§.§%"7§);
                                             if(!(_loc4_ || param2))
                                             {
                                                break;
                                             }
                                             continue loop5;
                                          }
                                          _loc3_ = (§§pop() as AngryBirdsCustom).§<=§.§08§;
                                          if(!_loc5_)
                                          {
                                             _loc3_.reset();
                                          }
                                          _loc3_.§5!Z§();
                                          addr206:
                                          §>D§.§>!%§();
                                          addr230:
                                          if(!(_loc5_ && param1))
                                          {
                                             this.§3!+§.dispatchEvent(new LoginHandlerEvent(LoginHandlerEvent.§]!2§));
                                             if(!_loc5_)
                                             {
                                                if(_loc4_ || param1)
                                                {
                                                   if(false)
                                                   {
                                                      §§goto(addr206);
                                                   }
                                                   addr234:
                                                   super.hide(param1,param2);
                                                   break loop3;
                                                }
                                                §§goto(addr230);
                                             }
                                             §§goto(addr206);
                                          }
                                          addr233:
                                          §§goto(addr233);
                                       }
                                    }
                                 }
                                 continue loop2;
                              }
                           }
                        }
                     }
                  }
                  return;
                  if(_loc5_ && param2)
                  {
                     continue;
                  }
                  §§goto(addr90);
                  §§push(§ !4§.§%"7§);
               }
            }
            §§goto(addr234);
         }
         §§goto(addr149);
      }
      
      override public function updateTextFields() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §@"#§.§,2§.updateTextFields(§29§,"Logout_Popup");
         }
      }
   }
}
