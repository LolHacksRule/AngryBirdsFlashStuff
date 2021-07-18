package §3C§
{
   import § !Y§.§&$§;
   import §0N§.§0!g§;
   import §3D§.HighscoreSidebar;
   import §5X§.§+!#§;
   import §6"4§.§&a§;
   import §7!B§.§?A§;
   import §7!B§.§@!^§;
   import §7!B§.§@"@§;
   import §7!B§.LoginHandlerEvent;
   import §7!H§.§1#§;
   import §7!H§.§8"6§;
   import §8!_§.StateEpisodeSelection;
   import §=r§.§7!r§;
   
   public class §[%§ extends §9!;§
   {
      
      private static var §@-§:Class;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §@-§ = §<!q§;
         }
      }
      
      private var §`"9§:Boolean;
      
      private var §6">§:§@"@§;
      
      public function §[%§(param1:§@"@§)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            §>"2§ = true;
            while(true)
            {
               §1"$§ = true;
               addr49:
               if(!(_loc2_ || _loc3_))
               {
                  continue;
               }
               return;
               addr56:
            }
         }
         while(true)
         {
            super(§1#§.§["C§,§8"6§.§ K§,§0!g§.§[!y§(§@-§));
            while(_loc2_ || _loc3_)
            {
               this.§6">§ = param1;
               if(_loc3_ && _loc3_)
               {
                  continue;
               }
               §§goto(addr49);
            }
         }
         §§goto(addr56);
      }
      
      override protected function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super.init();
         }
         while(true)
         {
            this.§`"9§ = false;
            while(_loc2_)
            {
               this.updateTextFields();
               if(!(_loc1_ && _loc1_))
               {
                  return;
               }
            }
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§+!#§) : void
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
                  §§goto(addr95);
               }
               else
               {
                  §§push(2);
               }
               addr113:
               switch(§§pop())
               {
                  case 0:
                     this.§`"9§ = true;
                     addr46:
                     close();
                     break;
                     addr65:
                     addr59:
                  case 1:
                     close();
                     if(!(_loc5_ && param1))
                     {
                        if(!(_loc5_ && param2))
                        {
                           if(_loc6_ || param3)
                           {
                              if(true)
                              {
                                 break;
                              }
                           }
                           else
                           {
                              §§goto(addr65);
                           }
                           §§goto(addr46);
                        }
                        §§goto(addr59);
                     }
               }
               return;
            }
            if(!(_loc5_ && this))
            {
               addr83:
               §§push(0);
               if(!(_loc6_ || param3))
               {
                  addr108:
               }
            }
            else
            {
               addr95:
               §§push(1);
               if(!_loc5_)
               {
                  §§goto(addr108);
               }
            }
            §§goto(addr113);
            §§goto(addr95);
         }
         §§goto(addr83);
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:HighscoreSidebar = null;
         if(_loc4_ || this)
         {
            if(this.§`"9§)
            {
               loop0:
               while(true)
               {
                  this.§`"9§ = false;
                  if(!(_loc5_ && param2))
                  {
                     §&a§.§"!c§ = true;
                     loop1:
                     while(true)
                     {
                        §§push(§ !g§.§;!'§);
                        if(_loc5_)
                        {
                           break;
                        }
                        (§§pop() as §`Y§).§?"3§();
                        loop2:
                        while(true)
                        {
                           §@!^§.levelProfile = [];
                           loop3:
                           while(true)
                           {
                              §@!^§.§2j§ = new §?A§();
                              if(!_loc4_)
                              {
                                 break;
                              }
                              if(!_loc4_)
                              {
                                 continue loop0;
                              }
                              while(true)
                              {
                                 §§push(§ !g§.§;!'§);
                                 while(true)
                                 {
                                    (§§pop() as §`Y§).§]]§.§?m§ = false;
                                    addr162:
                                    addr51:
                                    while(true)
                                    {
                                       this.§6">§.§1!m§();
                                       addr153:
                                       while(true)
                                       {
                                          §7!r§.§[!1§.§#!§();
                                          continue loop3;
                                       }
                                    }
                                    if(!(_loc5_ && _loc3_))
                                    {
                                       ((§§pop() as §`Y§).§>";§ as §4!!§).§,"+§(false,false,true);
                                       if(!_loc5_)
                                       {
                                          if(!_loc5_)
                                          {
                                             addr71:
                                             if(!(_loc5_ && _loc3_))
                                             {
                                                if(true)
                                                {
                                                   §§push(§ !g§.§;!'§);
                                                   addr80:
                                                }
                                                while(true)
                                                {
                                                   §§push(§ !g§.§;!'§);
                                                   addr83:
                                                   addr211:
                                                   while(true)
                                                   {
                                                      §§push((§§pop() as §`Y§).§&,§);
                                                      if(!(_loc4_ || _loc3_))
                                                      {
                                                         break;
                                                      }
                                                      §§pop().§1M§();
                                                      if(_loc5_)
                                                      {
                                                         break loop3;
                                                      }
                                                      if(_loc4_ || param1)
                                                      {
                                                         continue loop2;
                                                      }
                                                      §§goto(addr162);
                                                   }
                                                   _loc3_ = §§pop().§9Z§;
                                                   if(!(_loc5_ && param1))
                                                   {
                                                      _loc3_.reset();
                                                   }
                                                   addr270:
                                                   addr267:
                                                   addr253:
                                                   _loc3_.§!!I§();
                                                   addr248:
                                                   _loc3_.changeState(HighscoreSidebar.§9"§);
                                                   this.§6">§.dispatchEvent(new LoginHandlerEvent(LoginHandlerEvent.§%&§));
                                                   if(_loc4_)
                                                   {
                                                      if(_loc4_ || _loc3_)
                                                      {
                                                         if(!(_loc5_ && param1))
                                                         {
                                                            if(false)
                                                            {
                                                               §§goto(addr248);
                                                            }
                                                            addr271:
                                                            super.hide(param1,param2);
                                                            break loop3;
                                                         }
                                                         §§goto(addr270);
                                                      }
                                                      §§goto(addr267);
                                                   }
                                                   §§goto(addr253);
                                                }
                                                continue;
                                                break loop1;
                                             }
                                             continue loop3;
                                          }
                                          addr117:
                                          while(true)
                                          {
                                             if(!_loc5_)
                                             {
                                                continue loop1;
                                             }
                                          }
                                          continue loop1;
                                          §§goto(addr153);
                                       }
                                       break loop3;
                                    }
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr211);
                     §§push((§§pop() as §`Y§).§&,§);
                  }
                  return;
               }
            }
            §§goto(addr271);
         }
         §§goto(addr172);
      }
      
      override public function updateTextFields() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §&$§.§[!1§.updateTextFields(§[S§,"Logout_Popup");
         }
      }
   }
}
