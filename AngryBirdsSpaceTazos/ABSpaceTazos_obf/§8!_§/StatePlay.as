package §8!_§
{
   import §!?§.§=!_§;
   import §%!r§.§3!'§;
   import §+G§.§+f§;
   import §+u§.§&!o§;
   import §+u§.§["!§;
   import §,"&§.§9q§;
   import §2"H§.§`N§;
   import §3"#§.§<!O§;
   import §77§.§ ",§;
   import §^8§.§#h§;
   import §^=§.§-G§;
   import §^=§.§1"F§;
   import §`!j§.§9"!§;
   import flash.events.KeyboardEvent;
   
   public class StatePlay extends §="%§
   {
      
      public static const STATE_NAME:String = "StatePlay";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || StatePlay)
         {
            STATE_NAME = "StatePlay";
         }
      }
      
      protected var §&j§:§&!o§;
      
      protected var §-'§:§["!§;
      
      public function StatePlay(param1:§9"!§, param2:§3!'§, param3:Boolean = true, param4:String = "StatePlay")
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || this)
         {
            super(param1,param2,param3,param4);
         }
      }
      
      private function get §-x§() : §&!o§
      {
         return this.§&j§;
      }
      
      override protected function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §8!A§ = new §1"F§(this);
         }
         do
         {
            §8!A§.init(§-G§.§4+§.Views.View_LevelPlay[0]);
         }
         while(_loc2_ && this);
         
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.cleanup();
         }
      }
      
      protected function §!u§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.§9!y§();
         }
         do
         {
            this.§="-§();
            do
            {
               this.§7J§();
            }
            while(!(_loc1_ || _loc2_));
            
         }
         while(!(_loc1_ || this));
         
      }
      
      protected function §;§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.§!!^§();
         }
         loop0:
         while(true)
         {
            §§push(this.§&j§);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.§&j§);
                     addr123:
                     while(true)
                     {
                        §§pop().dispose();
                        addr124:
                        while(true)
                        {
                           this.§&j§ = null;
                           addr104:
                           while(true)
                           {
                           }
                        }
                     }
                     addr53:
                     if(!(_loc2_ && this))
                     {
                        continue loop0;
                     }
                  }
               }
               while(true)
               {
                  §§push(this.§-'§);
                  if(_loc1_ || this)
                  {
                     if(!§§pop())
                     {
                        break;
                     }
                     loop3:
                     while(_loc1_ || _loc2_)
                     {
                        §§push(this.§-'§);
                        while(true)
                        {
                           §§pop().dispose();
                           do
                           {
                              this.§-'§ = null;
                           }
                           while(_loc2_ && _loc2_);
                           
                           if(_loc2_ && this)
                           {
                              continue loop3;
                           }
                           if(_loc1_ || _loc1_)
                           {
                              §§goto(addr53);
                           }
                           §§goto(addr124);
                        }
                     }
                     continue;
                  }
                  §§goto(addr98);
               }
               addr24:
               return;
            }
            §§goto(addr123);
         }
      }
      
      protected function §9!y§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:§=!_§ = § !g§.§;!'§.§&!`§;
         var _loc2_:§ ",§ = § ",§(§8!A§.getItemByName("Container_Pause"));
         if(!(_loc4_ && _loc1_))
         {
            this.§-'§ = new §+f§(_loc2_,§6u§,_loc1_,§7Z§);
         }
      }
      
      protected function §="-§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:§=!_§ = § !g§.§;!'§.§&!`§;
         var _loc2_:§ ",§ = § ",§(§8!A§.getItemByName("Container_Play"));
         if(_loc3_)
         {
            this.§&j§ = new §`N§(_loc2_,§6u§,§!K§,_loc1_,§7Z§);
         }
      }
      
      protected function §7J§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            §§push(this.§-'§);
            loop0:
            while(true)
            {
               §§push(§#h§.§ C§);
               addr193:
               while(true)
               {
                  §§pop().addEventListener(§§pop(),this.§%"9§);
                  addr196:
                  while(true)
                  {
                     §§push(this.§-'§);
                     continue loop0;
                  }
               }
            }
         }
         loop8:
         while(true)
         {
            §§push(this.§-'§);
            if(!_loc2_)
            {
               if(!_loc2_)
               {
                  §§push(§#h§.RESUME_LEVEL);
                  if(_loc1_)
                  {
                     if(_loc1_)
                     {
                        if(_loc1_ || _loc1_)
                        {
                           §§pop().addEventListener(§§pop(),this.§%"9§);
                           loop9:
                           while(true)
                           {
                              §§push(this.§&j§);
                              loop10:
                              while(true)
                              {
                                 §§push(§#h§.§&C§);
                                 loop11:
                                 while(true)
                                 {
                                    §§pop().addEventListener(§§pop(),this.§%"9§);
                                    loop12:
                                    while(true)
                                    {
                                       if(!_loc1_)
                                       {
                                          continue loop9;
                                       }
                                       if(_loc2_)
                                       {
                                          continue loop8;
                                       }
                                       if(_loc2_ && _loc2_)
                                       {
                                          break;
                                       }
                                       §§push(this.§&j§);
                                       loop13:
                                       while(true)
                                       {
                                          §§push(§#h§.RESTART_LEVEL);
                                          loop14:
                                          while(true)
                                          {
                                             §§pop().addEventListener(§§pop(),this.§%"9§);
                                             loop15:
                                             while(!_loc2_)
                                             {
                                                §§push(this.§&j§);
                                                loop16:
                                                while(_loc1_)
                                                {
                                                   §§push(§#h§.RESUME_LEVEL);
                                                   while(!(_loc2_ && this))
                                                   {
                                                      §§pop().addEventListener(§§pop(),this.§%"9§);
                                                      while(true)
                                                      {
                                                         if(!_loc2_)
                                                         {
                                                            §§push(this.§&j§);
                                                            if(_loc1_)
                                                            {
                                                               continue loop10;
                                                            }
                                                            continue loop16;
                                                            continue loop16;
                                                         }
                                                         continue loop15;
                                                         addr51:
                                                         §§pop().addEventListener(§§pop(),this.§%"9§);
                                                         if(_loc2_ && _loc1_)
                                                         {
                                                            continue;
                                                         }
                                                         if(_loc1_ || _loc1_)
                                                         {
                                                            return;
                                                         }
                                                         §§goto(addr196);
                                                      }
                                                      §§push(§#h§.§0"1§);
                                                      continue loop10;
                                                      if(!(_loc1_ || _loc2_))
                                                      {
                                                         continue;
                                                      }
                                                      if(_loc2_)
                                                      {
                                                         continue loop14;
                                                      }
                                                      §§goto(addr51);
                                                   }
                                                   continue loop11;
                                                }
                                                continue loop13;
                                             }
                                             continue loop12;
                                          }
                                       }
                                    }
                                    §§goto(addr188);
                                 }
                              }
                           }
                        }
                        §§goto(addr193);
                     }
                     §§goto(addr175);
                  }
                  §§goto(addr159);
               }
               §§goto(addr166);
            }
            §§goto(addr157);
         }
      }
      
      protected function §!!^§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§-'§);
            loop0:
            while(true)
            {
               §§push(§#h§.§ C§);
               loop1:
               while(true)
               {
                  §§pop().removeEventListener(§§pop(),this.§%"9§);
                  loop2:
                  while(true)
                  {
                     §§push(this.§-'§);
                     while(true)
                     {
                        §§push(§#h§.§&C§);
                        addr171:
                        while(true)
                        {
                           §§pop().removeEventListener(§§pop(),this.§%"9§);
                        }
                        loop6:
                        for(; !(_loc1_ && _loc1_); §§push(this.§-'§),if(!_loc1_)
                        {
                           continue loop0;
                        })
                        {
                           §§push(§#h§.RESTART_LEVEL);
                           while(!(_loc1_ && this))
                           {
                              §§pop().removeEventListener(§§pop(),this.§%"9§);
                              while(!(_loc1_ && _loc1_))
                              {
                                 continue loop6;
                              }
                              while(true)
                              {
                                 continue loop6;
                              }
                              §§push(§#h§.RESUME_LEVEL);
                              if(_loc1_ && this)
                              {
                                 continue;
                              }
                              if(_loc1_ && _loc2_)
                              {
                                 continue loop1;
                              }
                              §§pop().removeEventListener(§§pop(),this.§%"9§);
                              loop9:
                              while(true)
                              {
                                 §§push(this.§&j§);
                                 loop10:
                                 while(true)
                                 {
                                    §§push(§#h§.§&C§);
                                    loop11:
                                    while(true)
                                    {
                                       §§pop().removeEventListener(§§pop(),this.§%"9§);
                                       loop12:
                                       while(true)
                                       {
                                          §§push(this.§&j§);
                                          loop13:
                                          while(true)
                                          {
                                             §§push(§#h§.RESTART_LEVEL);
                                             loop14:
                                             while(true)
                                             {
                                                §§pop().removeEventListener(§§pop(),this.§%"9§);
                                                loop15:
                                                while(true)
                                                {
                                                   §§push(this.§&j§);
                                                   while(!_loc1_)
                                                   {
                                                      continue loop10;
                                                      addr75:
                                                      §§push(this.§&j§);
                                                      if(!_loc1_)
                                                      {
                                                         §§push(§#h§.§0"1§);
                                                         if(!_loc1_)
                                                         {
                                                            if(_loc2_)
                                                            {
                                                               addr35:
                                                               §§pop().removeEventListener(§§pop(),this.§%"9§);
                                                               if(!(_loc2_ || this))
                                                               {
                                                                  while(true)
                                                                  {
                                                                     if(!_loc2_)
                                                                     {
                                                                        continue loop15;
                                                                     }
                                                                     if(!_loc2_)
                                                                     {
                                                                        continue loop9;
                                                                     }
                                                                     if(_loc1_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     if(_loc1_)
                                                                     {
                                                                        continue loop2;
                                                                     }
                                                                     §§goto(addr75);
                                                                     §§goto(addr35);
                                                                  }
                                                                  §§goto(addr158);
                                                                  addr67:
                                                               }
                                                               if(!_loc1_)
                                                               {
                                                                  return;
                                                               }
                                                               continue loop12;
                                                            }
                                                            continue loop11;
                                                         }
                                                         while(!_loc1_)
                                                         {
                                                            §§pop().removeEventListener(§§pop(),this.§%"9§);
                                                            §§goto(addr67);
                                                         }
                                                         continue loop14;
                                                         addr62:
                                                      }
                                                   }
                                                   continue loop13;
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                           §§goto(addr171);
                        }
                     }
                  }
               }
               if(!(_loc2_ || _loc2_))
               {
                  continue;
               }
               §§goto(addr116);
            }
         }
         §§goto(addr184);
      }
      
      override protected function levelStarted() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §<!O§.§'N§();
         }
         do
         {
            super.levelStarted();
            do
            {
               this.§4!H§();
            }
            while(_loc2_ && this);
            
         }
         while(!_loc1_);
         
      }
      
      protected function §4!H§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §<!O§.§`h§("LevelStartsBirdsMilitary2");
         }
      }
      
      override public function activate(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            super.activate(param1);
            while(true)
            {
               this.§!u§();
               loop1:
               while(!(_loc2_ && param1))
               {
                  while(true)
                  {
                     this.§!!c§(false,false);
                     if(_loc3_ || param1)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr72);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§;§();
            while(true)
            {
               § !g§.§;!'§.§#!'§ = false;
               while(_loc1_)
               {
                  super.deActivate();
                  if(_loc1_)
                  {
                     return;
                     addr38:
                  }
               }
            }
         }
         §§goto(addr38);
      }
      
      protected function §!!c§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            § !g§.§;!'§.§#!'§ = param1;
            loop0:
            while(true)
            {
               if(param1)
               {
                  if(_loc4_ || _loc3_)
                  {
                     addr85:
                     §§push(this.§&j§);
                     break;
                  }
               }
               else
               {
                  §§push(this.§&j§);
                  if(!_loc4_)
                  {
                     break;
                  }
                  §§push(param2);
                  if(!_loc3_)
                  {
                     §§pop().enable(§§pop());
                     while(true)
                     {
                        if(!_loc3_)
                        {
                           continue loop0;
                        }
                     }
                     addr73:
                     §§pop().enable(param2);
                     addr20:
                     return;
                     addr72:
                     addr59:
                     addr74:
                  }
                  else
                  {
                     addr98:
                     §§pop().disable(§§pop());
                  }
               }
               §§goto(addr72);
            }
            §§goto(addr98);
            §§push(param2);
         }
         §§goto(addr85);
      }
      
      override protected function update(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            super.update(param1);
            loop0:
            while(true)
            {
               §§push(this.§&j§);
               loop1:
               while(true)
               {
                  §§push(Boolean(§§pop()));
                  loop2:
                  while(true)
                  {
                     §§push(§§pop());
                     loop3:
                     while(true)
                     {
                        if(§§pop())
                        {
                           loop4:
                           while(true)
                           {
                              §§pop();
                              addr156:
                              loop15:
                              while(true)
                              {
                                 §§push(this.§&j§);
                                 if(!_loc3_)
                                 {
                                    §§push(Boolean(§§pop().§7!=§()));
                                    while(true)
                                    {
                                       loop6:
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             loop7:
                                             while(true)
                                             {
                                                if(_loc2_ || this)
                                                {
                                                   §§push(this.§&j§);
                                                   while(_loc2_)
                                                   {
                                                      §§pop().update(param1);
                                                      while(true)
                                                      {
                                                         addr45:
                                                         if(!(_loc2_ || this))
                                                         {
                                                            continue;
                                                         }
                                                         addr54:
                                                         §§push(this.§-'§);
                                                         if(!(_loc2_ || param1))
                                                         {
                                                            loop11:
                                                            while(true)
                                                            {
                                                               §§push(Boolean(§§pop()));
                                                               if(_loc2_ || _loc2_)
                                                               {
                                                                  if(_loc2_ || _loc2_)
                                                                  {
                                                                     §§push(§§pop());
                                                                     if(!_loc3_)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           loop14:
                                                                           while(true)
                                                                           {
                                                                              if(_loc2_)
                                                                              {
                                                                                 if(!(_loc2_ || _loc2_))
                                                                                 {
                                                                                    break;
                                                                                    addr115:
                                                                                 }
                                                                                 addr114:
                                                                                 §§pop();
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(this.§-'§);
                                                                                    if(_loc3_)
                                                                                    {
                                                                                       continue loop11;
                                                                                    }
                                                                                    §§push(§§pop().§7!=§());
                                                                                    if(_loc2_)
                                                                                    {
                                                                                       §§push(Boolean(§§pop()));
                                                                                    }
                                                                                    if(!(_loc2_ || param1))
                                                                                    {
                                                                                       continue loop14;
                                                                                    }
                                                                                    §§goto(addr114);
                                                                                 }
                                                                                 continue loop15;
                                                                              }
                                                                              continue loop4;
                                                                           }
                                                                           continue loop2;
                                                                           addr105:
                                                                        }
                                                                        while(§§pop())
                                                                        {
                                                                           if(_loc3_)
                                                                           {
                                                                              addr63:
                                                                              if(_loc2_ || this)
                                                                              {
                                                                                 continue loop0;
                                                                              }
                                                                              continue loop7;
                                                                           }
                                                                           if(!_loc3_)
                                                                           {
                                                                              §§goto(addr45);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr115);
                                                                           }
                                                                        }
                                                                        addr19:
                                                                        return;
                                                                     }
                                                                     break;
                                                                  }
                                                                  continue loop6;
                                                               }
                                                               §§goto(addr105);
                                                            }
                                                            continue loop3;
                                                            addr86:
                                                         }
                                                         §§pop().update(param1);
                                                         §§goto(addr63);
                                                      }
                                                   }
                                                   continue loop1;
                                                   addr134:
                                                }
                                                continue loop15;
                                             }
                                          }
                                          while(true)
                                          {
                                             §§goto(addr86);
                                          }
                                       }
                                    }
                                    addr123:
                                 }
                                 §§goto(addr134);
                              }
                           }
                        }
                        §§goto(addr123);
                     }
                  }
               }
            }
         }
         §§goto(addr156);
      }
      
      protected function §%"9§(param1:§#h§) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:* = null;
         var _loc3_:* = param1.type;
         if(!(_loc5_ && _loc3_))
         {
            §§push(§#h§.§ C§);
            if(!(_loc5_ && param1))
            {
               if(§§pop() === _loc3_)
               {
                  if(!(_loc5_ && this))
                  {
                     §§push(0);
                     if(!(_loc4_ || _loc2_))
                     {
                        addr184:
                     }
                  }
                  else
                  {
                     addr181:
                     §§push(3);
                     if(!_loc5_)
                     {
                        §§goto(addr184);
                     }
                  }
               }
               else
               {
                  §§push(§#h§.§0"1§);
                  if(_loc4_ || param1)
                  {
                     if(§§pop() === _loc3_)
                     {
                        if(_loc4_)
                        {
                           §§push(1);
                           if(_loc4_ || param1)
                           {
                           }
                        }
                     }
                     else
                     {
                        §§push(§#h§.RESUME_LEVEL);
                        if(!_loc5_)
                        {
                           addr155:
                           if(§§pop() === _loc3_)
                           {
                              if(!(_loc5_ && this))
                              {
                                 addr164:
                                 §§push(2);
                                 if(!_loc5_)
                                 {
                                    §§goto(addr207);
                                 }
                                 else
                                 {
                                    §§goto(addr184);
                                 }
                              }
                              else
                              {
                                 §§goto(addr181);
                              }
                              §§goto(addr207);
                           }
                           else
                           {
                              §§push(§#h§.RESTART_LEVEL);
                              if(!_loc5_)
                              {
                                 addr172:
                                 if(§§pop() === _loc3_)
                                 {
                                    if(_loc4_ || param1)
                                    {
                                       §§goto(addr181);
                                    }
                                    else
                                    {
                                       addr189:
                                       §§push(4);
                                       if(!_loc4_)
                                       {
                                       }
                                       §§goto(addr207);
                                    }
                                 }
                                 else
                                 {
                                    §§push(§#h§.§&C§);
                                 }
                                 §§goto(addr189);
                              }
                           }
                           §§goto(addr207);
                        }
                        if(§§pop() !== _loc3_)
                        {
                           addr207:
                           loop1:
                           switch(§§pop())
                           {
                              case 0:
                                 break;
                              case 1:
                                 this.§!!c§(true);
                                 break;
                                 addr78:
                              case 2:
                                 this.§!!c§(false);
                                 break;
                                 addr70:
                              case 3:
                                 §8!^§(this.§`!e§());
                                 addr61:
                                 if(_loc4_)
                                 {
                                    addr42:
                                    break;
                                 }
                                 §§goto(addr78);
                                 break;
                              case 4:
                                 §§push(param1.§1s§);
                                 if(_loc4_)
                                 {
                                    §§push(§§pop());
                                 }
                                 _loc2_ = §§pop();
                                 while(true)
                                 {
                                    if(_loc4_)
                                    {
                                       §8!^§(_loc2_);
                                       if(!(_loc4_ || _loc3_))
                                       {
                                          break loop1;
                                       }
                                       continue;
                                    }
                                    §§goto(addr61);
                                 }
                           }
                           return;
                           §§push(5);
                        }
                     }
                     §§goto(addr207);
                  }
                  §§goto(addr155);
               }
               §§goto(addr207);
            }
            §§goto(addr172);
         }
         §§goto(addr164);
      }
      
      override public function getVictoryStateName() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(this.§-x§.isEagleUsed())
            {
               if(_loc2_ || this)
               {
                  addr50:
                  §§push(§3!g§.STATE_NAME);
                  if(_loc2_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr55:
                  return § null§.STATE_NAME;
               }
               return §§pop();
            }
            §§goto(addr55);
         }
         §§goto(addr50);
      }
      
      override public function getLoserStateName() : String
      {
         return §8!H§.STATE_NAME;
      }
      
      protected function §`!e§() : String
      {
         return §?!#§.STATE_NAME;
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && this))
         {
            if(!isTransitioning)
            {
               loop0:
               while(true)
               {
                  super.keyUp(param1);
                  if(_loc3_)
                  {
                     if(!_loc4_)
                     {
                        var _loc2_:* = param1.keyCode;
                        if(!_loc4_)
                        {
                           §§push(82);
                           if(_loc3_)
                           {
                              if(§§pop() === _loc2_)
                              {
                                 addr71:
                                 §§push(0);
                                 if(!_loc3_)
                                 {
                                 }
                              }
                              else
                              {
                                 §§push(1);
                              }
                           }
                           switch(§§pop())
                           {
                              case 0:
                                 §8!^§(this.§`!e§());
                                 if(_loc3_)
                                 {
                                    if(true)
                                    {
                                       break loop0;
                                    }
                                    continue;
                                 }
                           }
                        }
                        §§goto(addr71);
                     }
                  }
                  else
                  {
                     while(true)
                     {
                        continue loop0;
                     }
                     addr57:
                  }
               }
               return;
            }
            return;
         }
         §§goto(addr57);
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc3_))
         {
            if(!isTransitioning)
            {
               loop0:
               while(§9q§.§-"<§)
               {
                  if(_loc3_ && _loc3_)
                  {
                     continue;
                  }
                  if(!_loc4_)
                  {
                     §§goto(addr70);
                  }
                  var _loc2_:* = param1.keyCode;
                  if(_loc4_ || _loc2_)
                  {
                     §§push(53);
                     if(_loc4_)
                     {
                        if(§§pop() === _loc2_)
                        {
                           if(!_loc3_)
                           {
                              addr92:
                              §§push(0);
                              if(!(_loc3_ && param1))
                              {
                                 addr134:
                                 switch(§§pop())
                                 {
                                    case 0:
                                       §8!^§(this.§`!e§());
                                       break;
                                    case 1:
                                       §8!^§(this.§`!e§());
                                       if(_loc4_)
                                       {
                                          if(_loc3_)
                                          {
                                             break;
                                          }
                                          if(true)
                                          {
                                             break loop0;
                                          }
                                          continue;
                                       }
                                 }
                                 break;
                              }
                              addr109:
                              if(§§pop() !== _loc2_)
                              {
                                 §§goto(addr134);
                                 §§push(2);
                              }
                              §§goto(addr134);
                              §§goto(addr134);
                           }
                           §§push(1);
                           if(_loc4_ || _loc2_)
                           {
                           }
                           §§goto(addr134);
                        }
                        else
                        {
                           §§push(54);
                           if(!(_loc3_ && this))
                           {
                              §§goto(addr109);
                           }
                        }
                     }
                     §§goto(addr134);
                  }
                  §§goto(addr92);
               }
               return;
            }
         }
         addr70:
      }
   }
}
