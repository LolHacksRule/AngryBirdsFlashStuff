package §1!c§
{
   import §#!`§.§&!`§;
   import §%!B§.§0![§;
   import §'"!§.§+§;
   import §,M§.§+f§;
   import §0!m§.§@!S§;
   import §1'§.§?>§;
   import §1'§.ColorFadeLayerEvent;
   import §1`§.§7I§;
   import §1`§.§9%§;
   import §4[§.§2P§;
   import §@V§.§#=§;
   import §@V§.§&#§;
   import §[!Z§.§>D§;
   
   public class §-@§ extends §1!Z§
   {
       
      
      private var §!`§:§#=§;
      
      protected var §@T§:§?>§ = null;
      
      private var §+T§:Boolean;
      
      public function §-@§(param1:§0![§, param2:§+f§, param3:Boolean = false)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param2))
         {
            super(param1,param2,param3);
         }
      }
      
      override protected function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§@T§ = new §?>§(0,0,0,1);
            while(true)
            {
               §^!T§ = new §9%§(this);
            }
            addr98:
         }
         loop1:
         while(true)
         {
            §^!T§.init(this.§'!,§());
            while(true)
            {
               this.§!`§ = §@!S§.§2A§;
               while(!(_loc1_ && _loc2_))
               {
                  §9!m§ = new §&!`§(this.§!`§,§4a§);
                  if(!_loc1_)
                  {
                     continue loop1;
                  }
               }
            }
         }
      }
      
      protected function §'!,§() : XML
      {
         var _loc1_:XML = §7I§.§7!%§.Views.View_Credits[0];
         return AngryBirdsCustom.§9!>§(_loc1_);
      }
      
      override protected function activateLevelEngine() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §§push(this.§!`§);
            loop0:
            while(true)
            {
               §§pop().§`!V§(true);
               addr103:
               loop1:
               while(true)
               {
                  §@!S§.resume();
                  while(true)
                  {
                     §@!S§.setController(§9!m§);
                     continue loop0;
                     addr70:
                     loop4:
                     while(!(_loc1_ && this))
                     {
                        if(!_loc1_)
                        {
                           this.§[!V§();
                           while(!_loc1_)
                           {
                              AngryBirdsCustom.§get §();
                              if(!(_loc1_ && _loc2_))
                              {
                                 if(_loc2_)
                                 {
                                    return;
                                 }
                                 continue loop4;
                              }
                           }
                           continue loop0;
                        }
                        continue loop1;
                     }
                  }
               }
            }
            addr101:
         }
         while(true)
         {
            §§push(this.§!`§);
            if(_loc2_ || _loc2_)
            {
               §§pop().camera.§0!,§();
               §§goto(addr70);
            }
            else
            {
               §§goto(addr101);
            }
         }
      }
      
      private function §[!V§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§&#§ = null;
         var _loc3_:* = this.§!`§.slingshot.§&]§;
         for each(_loc1_ in _loc3_)
         {
            if(_loc5_ || _loc3_)
            {
               _loc1_.§??§ = false;
            }
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§+§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = param2;
         if(!(_loc6_ && param3))
         {
            if("CREDITS_CLOSE_BUTTON" === _loc4_)
            {
               addr69:
               §§push(0);
               if(_loc6_ && param2)
               {
               }
            }
            else
            {
               §§push(1);
            }
            loop2:
            switch(§§pop())
            {
               case 0:
                  this.§+T§ = false;
                  loop0:
                  while(true)
                  {
                     while(true)
                     {
                        this.§<"1§();
                        if(_loc6_ && this)
                        {
                           break loop2;
                        }
                        §>D§.§9!q§("Menu_Back");
                        if(!_loc5_)
                        {
                           break loop2;
                        }
                        if(_loc5_)
                        {
                           if(true)
                           {
                              break loop2;
                           }
                           continue;
                        }
                        continue loop0;
                     }
                     break loop2;
                  }
            }
            return;
         }
         §§goto(addr69);
      }
      
      protected function §<"1§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §§push(this.§@T§);
            while(true)
            {
               §§push(Boolean(§§pop()));
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§pop();
                        addr145:
                        while(true)
                        {
                           §§push(this.§+T§);
                           if(!(_loc2_ && _loc1_))
                           {
                              if(!_loc1_)
                              {
                                 break;
                              }
                              §§push(!§§pop());
                           }
                           if(!(_loc1_ || this))
                           {
                              continue loop2;
                           }
                        }
                        continue loop1;
                     }
                  }
                  loop4:
                  while(§§pop())
                  {
                     while(true)
                     {
                        §§push(this.§@T§);
                        while(true)
                        {
                           §§pop().mouseEnabled = true;
                           addr138:
                           loop7:
                           while(true)
                           {
                              this.§+T§ = true;
                              loop8:
                              while(!_loc2_)
                              {
                                 §§push(this.§@T§);
                                 while(true)
                                 {
                                    §§push(0);
                                    loop10:
                                    while(true)
                                    {
                                       §§pop().§'7§(§§pop());
                                       loop11:
                                       while(!_loc2_)
                                       {
                                          §§push(this.§@T§);
                                          loop12:
                                          while(true)
                                          {
                                             §§push(1);
                                             if(!(_loc1_ || _loc1_))
                                             {
                                                break;
                                                addr82:
                                             }
                                             §§pop().§!!p§(§§pop(),0.25);
                                             while(true)
                                             {
                                                if(_loc1_)
                                                {
                                                   if(_loc2_)
                                                   {
                                                      break;
                                                   }
                                                   continue loop12;
                                                }
                                                continue loop11;
                                             }
                                             continue loop7;
                                          }
                                          continue loop10;
                                       }
                                       continue loop8;
                                    }
                                 }
                              }
                              §§goto(addr145);
                           }
                        }
                        if(_loc1_ || _loc2_)
                        {
                           break loop4;
                        }
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr138);
      }
      
      protected function §,!K§(param1:ColorFadeLayerEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            §§push(this.§@T§);
            while(true)
            {
               §§pop().mouseEnabled = false;
               loop1:
               while(true)
               {
                  §§push(this.§@T§);
                  if(_loc3_)
                  {
                     break;
                  }
                  §§pop().removeEventListener(ColorFadeLayerEvent.§#!9§,this.§,!K§);
                  loop2:
                  while(true)
                  {
                     §§push(§2P§.§[!$§);
                     loop3:
                     while(true)
                     {
                        §§push(Boolean(§§pop()));
                        addr98:
                        while(true)
                        {
                           if(!§§pop())
                           {
                              while(true)
                              {
                                 if(!§§pop())
                                 {
                                    §7"6§(§%!<§.§8"%§);
                                    if(_loc3_ && _loc3_)
                                    {
                                       continue loop2;
                                    }
                                    if(_loc2_)
                                    {
                                       if(!_loc3_)
                                       {
                                          addr24:
                                          return;
                                       }
                                       continue loop1;
                                    }
                                 }
                                 if(_loc2_)
                                 {
                                    break;
                                 }
                                 continue loop3;
                              }
                              §7"6§(§;D§.§8"%§);
                              continue loop2;
                              addr78:
                           }
                           while(true)
                           {
                              §§pop();
                              continue loop3;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr93);
      }
      
      override public function activate(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            super.activate(param1);
            loop0:
            while(true)
            {
               this.§@T§.mouseEnabled = true;
               loop1:
               while(true)
               {
                  this.§+T§ = false;
                  loop2:
                  while(true)
                  {
                     §^!T§.container.mClip.addChild(this.§@T§);
                     loop3:
                     while(true)
                     {
                        this.§`!O§();
                        loop4:
                        while(!_loc2_)
                        {
                           if(!_loc3_)
                           {
                              continue loop1;
                           }
                           §§push(§ !4§.§%"7§);
                           while(true)
                           {
                              §§pop().§+!J§.closeAllPopups();
                              continue loop3;
                              addr99:
                              loop7:
                              for(; _loc3_ || _loc2_; loop12:
                              for(; _loc3_ || _loc2_; §§push(§ !4§.§%"7§),if(_loc2_ && param1)
                              {
                                 continue;
                              },§§push((§§pop() as AngryBirdsCustom).§<=§),if(!_loc2_)
                              {
                                 if(!_loc2_)
                                 {
                                    §§goto(addr46);
                                 }
                                 §§goto(addr109);
                              },§§goto(addr72))
                              {
                                 §§push((§§pop() as AngryBirdsCustom).§<=§);
                                 while(true)
                                 {
                                    §§push(false);
                                    if(!(_loc3_ || param1))
                                    {
                                       break;
                                    }
                                    §§pop().§;!I§(§§pop());
                                    while(!_loc2_)
                                    {
                                       if(!_loc2_)
                                       {
                                          continue loop12;
                                       }
                                       continue loop0;
                                       §§pop().§08§.§4!4§(false);
                                       if(!(_loc3_ || _loc2_))
                                       {
                                          continue;
                                       }
                                       if(!_loc3_)
                                       {
                                          §§goto(addr111);
                                       }
                                       §§goto(addr58);
                                    }
                                    continue loop4;
                                 }
                                 §§goto(addr110);
                              })
                              {
                                 §§push((§§pop() as AngryBirdsCustom).§<=§);
                                 while(true)
                                 {
                                    §§push(true);
                                    addr110:
                                    while(true)
                                    {
                                       §§pop().§9!z§(§§pop());
                                       addr111:
                                       while(!(_loc2_ && param1))
                                       {
                                          while(true)
                                          {
                                             §§push(§ !4§.§%"7§);
                                             continue loop7;
                                          }
                                          return;
                                       }
                                       continue loop3;
                                    }
                                 }
                              }
                           }
                        }
                        continue loop2;
                     }
                  }
               }
            }
         }
         §§goto(addr118);
      }
      
      protected function §`!O§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§@T§);
            while(true)
            {
               §§push(Boolean(§§pop()));
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§pop();
                        addr135:
                        do
                        {
                           §§push(this.§+T§);
                           if(!_loc2_)
                           {
                              §§push(!§§pop());
                           }
                           if(!(_loc1_ || _loc1_))
                           {
                              continue loop2;
                           }
                        }
                        while(!_loc2_);
                        
                        continue loop1;
                     }
                  }
                  while(§§pop())
                  {
                     loop5:
                     while(true)
                     {
                        this.§+T§ = true;
                        addr128:
                        while(true)
                        {
                           §§push(this.§@T§);
                           addr88:
                           while(true)
                           {
                              §§push(1);
                              addr89:
                              while(true)
                              {
                                 §§pop().§'7§(§§pop());
                                 continue loop5;
                              }
                           }
                        }
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr84);
      }
      
      private function §"!S§(param1:ColorFadeLayerEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            §§push(this.§@T§);
            while(true)
            {
               §§pop().mouseEnabled = false;
               §§goto(addr76);
            }
         }
         addr76:
         while(true)
         {
            §§push(this.§@T§);
            if(!(_loc2_ && this))
            {
               §§pop().removeEventListener(ColorFadeLayerEvent.§#!9§,this.§"!S§);
               if(!(_loc2_ && _loc3_))
               {
                  break;
               }
               continue;
            }
            continue loop0;
         }
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(this.§@T§.parent == §^!T§.container.mClip)
            {
               loop0:
               while(true)
               {
                  §^!T§.container.mClip.removeChild(this.§@T§);
                  addr182:
                  while(true)
                  {
                  }
                  loop11:
                  while(true)
                  {
                     if(_loc1_ && _loc2_)
                     {
                        continue loop0;
                     }
                     if(§2P§.§[!$§.§-n§)
                     {
                        §§push(§ !4§.§%"7§);
                        if(!_loc1_)
                        {
                           addr31:
                           if(!(_loc1_ && _loc2_))
                           {
                              addr38:
                              if(!(_loc1_ && this))
                              {
                                 §§push((§§pop() as AngryBirdsCustom).§<=§);
                                 if(!(_loc1_ && _loc1_))
                                 {
                                    §§push(§§pop().§08§);
                                    if(_loc2_)
                                    {
                                       §§push(true);
                                       if(!_loc1_)
                                       {
                                          §§pop().§4!4§(§§pop());
                                          if(!(_loc1_ && _loc1_))
                                          {
                                             if(!(_loc1_ && _loc1_))
                                             {
                                                if(!_loc1_)
                                                {
                                                   addr78:
                                                   if(_loc1_ && _loc2_)
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(§ !4§.§%"7§);
                                                         addr142:
                                                         while(true)
                                                         {
                                                            §§push((§§pop() as AngryBirdsCustom).§<=§);
                                                            addr145:
                                                            while(true)
                                                            {
                                                               §§push(true);
                                                               addr146:
                                                               while(true)
                                                               {
                                                                  §§pop().§;!I§(§§pop());
                                                                  addr147:
                                                                  while(!(_loc1_ && _loc1_))
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(§ !4§.§%"7§);
                                                                        break loop11;
                                                                     }
                                                                  }
                                                                  §§goto(addr182);
                                                               }
                                                            }
                                                            §§goto(addr38);
                                                         }
                                                         §§goto(addr78);
                                                      }
                                                      addr158:
                                                   }
                                                   §§goto(addr20);
                                                }
                                                continue;
                                             }
                                             addr101:
                                             if(_loc2_)
                                             {
                                                §§goto(addr108);
                                             }
                                             §§goto(addr147);
                                          }
                                          §§goto(addr113);
                                       }
                                       §§goto(addr112);
                                    }
                                    §§goto(addr111);
                                 }
                                 §§goto(addr108);
                              }
                              §§goto(addr142);
                           }
                           break;
                        }
                        addr108:
                        §§push((§ !4§.§%"7§ as AngryBirdsCustom).§<=§);
                        if(!_loc1_)
                        {
                           addr112:
                           §§pop().§08§.§4!4§(false);
                           addr110:
                           addr113:
                           addr111:
                        }
                        else
                        {
                           while(true)
                           {
                              if(_loc2_ || _loc1_)
                              {
                                 §§push(true);
                                 if(_loc2_)
                                 {
                                    §§pop().§9!z§(§§pop());
                                    continue loop11;
                                 }
                                 §§goto(addr146);
                              }
                              §§goto(addr145);
                           }
                           §§goto(addr110);
                           addr120:
                        }
                        addr20:
                        return;
                     }
                     §§goto(addr101);
                  }
                  while(true)
                  {
                     §§goto(addr120);
                     §§goto(addr31);
                  }
               }
            }
            while(true)
            {
               super.deActivate();
               §§goto(addr158);
               §§goto(addr182);
            }
         }
         §§goto(addr154);
      }
   }
}
