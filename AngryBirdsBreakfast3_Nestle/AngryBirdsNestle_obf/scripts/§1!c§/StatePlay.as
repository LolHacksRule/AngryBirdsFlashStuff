package §1!c§
{
   import § !9§.§1" §;
   import §%!B§.§0![§;
   import §,M§.§+f§;
   import §0!m§.§@!S§;
   import §0!q§.§;!-§;
   import §1![§.§`w§;
   import §1`§.§7I§;
   import §1`§.§9%§;
   import §2u§.§,6§;
   import §9!p§.§4!9§;
   import §9!p§.§@!n§;
   import §;"§.§+`§;
   import §[!Z§.§>D§;
   import flash.events.KeyboardEvent;
   import flash.ui.Keyboard;
   
   public class StatePlay extends §7t§
   {
      
      public static const §8"%§:String = "StatePlay";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §8"%§ = "StatePlay";
         }
      }
      
      protected var §+B§:§4!9§;
      
      protected var §5!R§:§@!n§;
      
      public function StatePlay(param1:§0![§, param2:§+f§, param3:Boolean = true, param4:String = "StatePlay")
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || param3)
         {
            super(param1,param2,param3,param4);
         }
      }
      
      private function get §'!l§() : §4!9§
      {
         return this.§+B§;
      }
      
      override protected function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            §^!T§ = new §9%§(this);
         }
         do
         {
            §^!T§.init(§7I§.§7!%§.Views.View_LevelPlay[0]);
         }
         while(!_loc2_);
         
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            super.cleanup();
         }
      }
      
      protected function §>B§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            this.§-!d§();
            while(true)
            {
               this.§8!i§();
               loop1:
               while(!(_loc2_ && _loc1_))
               {
                  while(true)
                  {
                     this.§;O§();
                     if(_loc1_ || this)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr69);
      }
      
      protected function §!"2§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            this.§ !d§();
            loop0:
            while(true)
            {
               §§push(this.§+B§);
               if(!_loc1_)
               {
                  if(§§pop())
                  {
                     if(!(_loc1_ && this))
                     {
                        addr124:
                        this.§+B§.dispose();
                     }
                     while(true)
                     {
                        this.§+B§ = null;
                        addr98:
                        while(true)
                        {
                        }
                        addr86:
                        if(!(_loc1_ && this))
                        {
                           this.§5!R§ = null;
                           addr93:
                           if(_loc1_ && _loc2_)
                           {
                              addr79:
                              while(_loc2_ || _loc2_)
                              {
                                 §§goto(addr86);
                                 §§goto(addr93);
                              }
                              §§goto(addr98);
                              addr79:
                           }
                           §§goto(addr25);
                        }
                     }
                  }
                  while(true)
                  {
                     §§push(this.§5!R§);
                     if(!(_loc1_ && _loc2_))
                     {
                        if(§§pop())
                        {
                           if(_loc2_ || this)
                           {
                              continue loop0;
                           }
                           §§goto(addr79);
                        }
                        break;
                     }
                     addr78:
                     §§pop().dispose();
                     §§goto(addr79);
                     §§goto(addr98);
                  }
                  addr25:
                  return;
               }
               §§goto(addr124);
            }
         }
         §§goto(addr98);
      }
      
      protected function §-!d§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:§`w§ = § !4§.§%"7§.§@D§;
         var _loc2_:§,6§ = §,6§(§^!T§.getItemByName("Container_Pause"));
         if(_loc3_ || this)
         {
            this.§5!R§ = new §+`§(_loc2_,§4a§,_loc1_,§8&§);
         }
      }
      
      protected function §8!i§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:§`w§ = § !4§.§%"7§.§@D§;
         var _loc2_:§,6§ = §,6§(§^!T§.getItemByName("Container_Play"));
         if(_loc3_)
         {
            this.§+B§ = new §1" §(_loc2_,§4a§,§4!"§,_loc1_,§8&§);
         }
      }
      
      protected function §;O§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§5!R§);
            loop0:
            while(true)
            {
               §§push(§;!-§.§3!w§);
               loop1:
               while(true)
               {
                  §§pop().addEventListener(§§pop(),this.§[b§);
                  loop2:
                  while(true)
                  {
                     §§push(this.§5!R§);
                     loop3:
                     while(true)
                     {
                        §§push(§;!-§.§,d§);
                        loop4:
                        while(true)
                        {
                           §§pop().addEventListener(§§pop(),this.§[b§);
                           loop5:
                           while(true)
                           {
                              §§push(this.§5!R§);
                              while(_loc2_)
                              {
                                 continue loop0;
                                 loop8:
                                 while(true)
                                 {
                                    §§push(this.§5!R§);
                                    if(!(_loc2_ || this))
                                    {
                                       break;
                                    }
                                    addr126:
                                    §§push(§;!-§.RESUME_LEVEL);
                                    if(_loc1_ && _loc1_)
                                    {
                                       while(!_loc1_)
                                       {
                                          §§pop().addEventListener(§§pop(),this.§[b§);
                                          continue loop8;
                                          §§goto(addr126);
                                       }
                                       continue loop4;
                                       addr155:
                                    }
                                    if(!_loc2_)
                                    {
                                       continue loop1;
                                    }
                                    §§pop().addEventListener(§§pop(),this.§[b§);
                                    loop9:
                                    while(true)
                                    {
                                       §§push(this.§+B§);
                                       loop10:
                                       while(true)
                                       {
                                          §§push(§;!-§.§,d§);
                                          loop11:
                                          while(true)
                                          {
                                             §§pop().addEventListener(§§pop(),this.§[b§);
                                             loop12:
                                             while(_loc2_)
                                             {
                                                §§push(this.§+B§);
                                                while(true)
                                                {
                                                   §§push(§;!-§.RESTART_LEVEL);
                                                   while(true)
                                                   {
                                                      §§pop().addEventListener(§§pop(),this.§[b§);
                                                      loop15:
                                                      while(true)
                                                      {
                                                         if(!_loc2_)
                                                         {
                                                            continue loop9;
                                                         }
                                                         if(_loc1_)
                                                         {
                                                            break;
                                                         }
                                                         if(!_loc2_)
                                                         {
                                                            continue loop2;
                                                         }
                                                         §§push(this.§+B§);
                                                         loop16:
                                                         while(true)
                                                         {
                                                            §§push(§;!-§.RESUME_LEVEL);
                                                            addr70:
                                                            while(!_loc1_)
                                                            {
                                                               §§pop().addEventListener(§§pop(),this.§[b§);
                                                               while(true)
                                                               {
                                                                  if(!_loc1_)
                                                                  {
                                                                     if(!_loc2_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     continue loop16;
                                                                  }
                                                                  continue loop15;
                                                               }
                                                               continue loop12;
                                                            }
                                                            continue loop11;
                                                         }
                                                      }
                                                      continue loop5;
                                                      addr52:
                                                      if(_loc1_ && _loc1_)
                                                      {
                                                         continue;
                                                      }
                                                      §§pop().addEventListener(§§pop(),this.§[b§);
                                                      if(!_loc2_)
                                                      {
                                                         §§goto(addr75);
                                                      }
                                                      §§goto(addr64);
                                                   }
                                                   if(!(_loc1_ && _loc1_))
                                                   {
                                                      continue loop10;
                                                   }
                                                }
                                             }
                                             continue loop8;
                                          }
                                       }
                                    }
                                 }
                              }
                              continue loop3;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr79);
      }
      
      protected function § !d§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§5!R§);
            loop0:
            while(true)
            {
               §§push(§;!-§.§3!w§);
               loop1:
               while(true)
               {
                  §§pop().removeEventListener(§§pop(),this.§[b§);
                  loop2:
                  while(true)
                  {
                     §§push(this.§5!R§);
                     while(true)
                     {
                        §§push(§;!-§.§,d§);
                        loop4:
                        while(_loc1_)
                        {
                           §§pop().removeEventListener(§§pop(),this.§[b§);
                           while(_loc1_ || _loc2_)
                           {
                              §§push(this.§5!R§);
                              loop6:
                              while(true)
                              {
                                 §§push(§;!-§.RESTART_LEVEL);
                                 addr155:
                                 while(!(_loc2_ && this))
                                 {
                                    §§pop().removeEventListener(§§pop(),this.§[b§);
                                    continue loop6;
                                 }
                                 continue loop4;
                              }
                           }
                           continue loop2;
                        }
                        continue loop1;
                        if(_loc1_ || _loc1_)
                        {
                           continue loop0;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr60);
      }
      
      override protected function levelStarted() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§1!8§();
            do
            {
               super.levelStarted();
               do
               {
                  this.§'n§();
               }
               while(!_loc2_);
               
            }
            while(_loc1_ && _loc2_);
            
         }
      }
      
      protected function §1!8§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §>D§.§>!%§();
         }
      }
      
      protected function §'n§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §>D§.§4W§("LevelStartsBirdsMilitary2");
         }
      }
      
      override public function activate(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            super.activate(param1);
         }
         do
         {
            this.§>B§();
            do
            {
               this.§=>§(false,false);
            }
            while(_loc2_ && _loc2_);
            
         }
         while(!(_loc3_ || _loc2_));
         
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§!"2§();
            while(true)
            {
               § !4§.§%"7§.§?!9§ = false;
               while(!(_loc2_ && _loc2_))
               {
                  super.deActivate();
                  if(!(_loc1_ || _loc1_))
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
      
      protected function §=>§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            § !4§.§%"7§.§?!9§ = param1;
            loop0:
            do
            {
               if(param1)
               {
                  if(_loc3_)
                  {
                     addr112:
                     this.§+B§.disable(param2);
                  }
                  loop3:
                  while(true)
                  {
                     §§push(this.§5!R§);
                     addr82:
                     while(true)
                     {
                        §§push(param2);
                        addr83:
                        while(true)
                        {
                           §§pop().enable(§§pop());
                           addr84:
                           while(!_loc3_)
                           {
                              continue loop3;
                           }
                           continue loop0;
                        }
                     }
                  }
                  addr113:
               }
               else
               {
                  §§push(this.§+B§);
                  if(!(_loc4_ && param2))
                  {
                     §§push(param2);
                     if(_loc3_ || param2)
                     {
                        §§pop().enable(§§pop());
                        loop1:
                        while(!_loc4_)
                        {
                           while(true)
                           {
                              §§push(this.§5!R§);
                              if(_loc3_)
                              {
                                 §§push(param2);
                                 if(!(_loc4_ && param2))
                                 {
                                    §§pop().disable(§§pop());
                                    if(_loc3_)
                                    {
                                       break;
                                    }
                                    continue loop1;
                                 }
                                 §§goto(addr83);
                              }
                              §§goto(addr82);
                           }
                           return;
                        }
                        §§goto(addr84);
                     }
                     else
                     {
                        §§goto(addr112);
                     }
                  }
                  else
                  {
                     §§goto(addr112);
                  }
                  §§goto(addr112);
               }
               §§goto(addr112);
            }
            while(_loc4_ && _loc3_);
            
            §§goto(addr24);
         }
         §§goto(addr78);
      }
      
      override protected function update(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            super.update(param1);
         }
         loop0:
         while(true)
         {
            §§push(this.§+B§);
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
                           loop5:
                           while(true)
                           {
                              §§push(this.§+B§);
                              if(!(_loc3_ && _loc3_))
                              {
                                 if(_loc3_)
                                 {
                                    break;
                                 }
                                 §§push(Boolean(§§pop().§5!W§()));
                                 loop6:
                                 while(!(_loc3_ && _loc3_))
                                 {
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          if(!(_loc3_ && _loc2_))
                                          {
                                             if(_loc2_)
                                             {
                                                continue loop0;
                                             }
                                             continue loop5;
                                          }
                                          addr143:
                                          while(true)
                                          {
                                             addr63:
                                             if(!(_loc3_ && _loc3_))
                                             {
                                                §§goto(addr19);
                                             }
                                          }
                                          addr143:
                                       }
                                       while(true)
                                       {
                                          §§push(this.§5!R§);
                                          loop10:
                                          while(true)
                                          {
                                             §§push(Boolean(§§pop()));
                                             loop11:
                                             while(true)
                                             {
                                                if(_loc3_)
                                                {
                                                   continue loop6;
                                                }
                                                §§push(§§pop());
                                                if(_loc3_)
                                                {
                                                   break;
                                                }
                                                if(§§pop())
                                                {
                                                   loop12:
                                                   while(!(_loc3_ && _loc2_))
                                                   {
                                                      §§pop();
                                                      loop13:
                                                      while(true)
                                                      {
                                                         §§push(this.§5!R§);
                                                         if(!_loc3_)
                                                         {
                                                            §§push(§§pop().§5!W§());
                                                            if(!(_loc3_ && this))
                                                            {
                                                               if(!_loc2_)
                                                               {
                                                                  break;
                                                               }
                                                               §§push(Boolean(§§pop()));
                                                            }
                                                            if(!_loc3_)
                                                            {
                                                               while(§§pop())
                                                               {
                                                                  if(_loc3_ && _loc2_)
                                                                  {
                                                                     continue loop13;
                                                                  }
                                                                  §§push(this.§5!R§);
                                                               }
                                                               addr19:
                                                            }
                                                            continue loop12;
                                                            return;
                                                         }
                                                         while(true)
                                                         {
                                                            if(_loc2_)
                                                            {
                                                               §§pop().update(param1);
                                                               continue loop13;
                                                            }
                                                            continue loop10;
                                                         }
                                                      }
                                                      continue loop11;
                                                   }
                                                   continue loop4;
                                                }
                                                §§goto(addr41);
                                             }
                                             continue loop3;
                                          }
                                          §§goto(addr143);
                                       }
                                    }
                                    continue loop0;
                                 }
                                 continue loop2;
                              }
                              addr141:
                              while(true)
                              {
                                 §§pop().update(param1);
                              }
                              §§goto(addr143);
                           }
                           continue loop1;
                        }
                     }
                     §§goto(addr121);
                  }
               }
            }
         }
      }
      
      protected function §[b§(param1:§;!-§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:* = null;
         var _loc3_:* = param1.type;
         if(!_loc4_)
         {
            §§push(§;!-§.§3!w§);
            if(_loc5_ || this)
            {
               if(§§pop() === _loc3_)
               {
                  if(_loc5_ || this)
                  {
                     §§push(0);
                     if(_loc4_ && _loc3_)
                     {
                        addr161:
                     }
                  }
                  else
                  {
                     addr136:
                     §§push(1);
                     if(_loc4_)
                     {
                        addr196:
                     }
                  }
               }
               else
               {
                  §§push(§;!-§.§5"+§);
                  if(!(_loc4_ && _loc2_))
                  {
                     if(§§pop() === _loc3_)
                     {
                        if(_loc5_ || _loc3_)
                        {
                           §§goto(addr136);
                        }
                        else
                        {
                           addr153:
                           §§push(2);
                           if(!(_loc4_ && this))
                           {
                              §§goto(addr161);
                           }
                           else
                           {
                              addr201:
                              loop1:
                              switch(§§pop())
                              {
                                 case 0:
                                    break;
                                 case 1:
                                    this.§=>§(true);
                                    break;
                                    addr72:
                                 case 2:
                                    this.§=>§(false);
                                    break;
                                    addr64:
                                 case 3:
                                    this.§;" §();
                                    addr36:
                                    break;
                                    addr57:
                                 case 4:
                                    §§push(param1.§'4§);
                                    if(_loc5_)
                                    {
                                       §§push(§§pop());
                                    }
                                    _loc2_ = §§pop();
                                    while(true)
                                    {
                                       if(!_loc4_)
                                       {
                                          if(!_loc4_)
                                          {
                                             if(_loc5_)
                                             {
                                                §7"6§(_loc2_);
                                                if(!_loc5_)
                                                {
                                                   break loop1;
                                                }
                                                continue;
                                             }
                                             §§goto(addr72);
                                          }
                                          else
                                          {
                                             §§goto(addr64);
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr57);
                                       }
                                    }
                                    §§goto(addr36);
                              }
                              return;
                              addr178:
                           }
                           §§goto(addr201);
                        }
                     }
                     else
                     {
                        §§push(§;!-§.RESUME_LEVEL);
                        if(_loc5_ || param1)
                        {
                           addr149:
                           if(§§pop() === _loc3_)
                           {
                              if(!_loc4_)
                              {
                                 §§goto(addr153);
                              }
                              else
                              {
                                 addr183:
                                 §§push(4);
                                 if(!_loc4_)
                                 {
                                    §§goto(addr196);
                                 }
                                 §§goto(addr201);
                              }
                           }
                           else
                           {
                              §§push(§;!-§.RESTART_LEVEL);
                              if(!_loc4_)
                              {
                                 addr166:
                                 if(§§pop() === _loc3_)
                                 {
                                    if(_loc5_)
                                    {
                                       §§push(3);
                                       if(_loc5_ || this)
                                       {
                                          §§goto(addr178);
                                       }
                                       §§goto(addr201);
                                    }
                                    else
                                    {
                                       §§goto(addr183);
                                    }
                                 }
                                 else
                                 {
                                    §§push(§;!-§.§,d§);
                                 }
                                 §§goto(addr183);
                              }
                           }
                           §§goto(addr183);
                        }
                        if(§§pop() === _loc3_)
                        {
                           §§goto(addr183);
                        }
                        else
                        {
                           §§goto(addr201);
                           §§push(5);
                        }
                        §§goto(addr201);
                     }
                     §§goto(addr201);
                  }
                  §§goto(addr166);
               }
               §§goto(addr201);
            }
            §§goto(addr149);
         }
         §§goto(addr183);
      }
      
      override public function getVictoryStateName() : String
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(this.§'!l§.isEagleUsed())
            {
               if(!(_loc2_ && _loc1_))
               {
                  §§push(§]0§.§8"%§);
                  if(!(_loc2_ && this))
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr59:
                  return §'!y§.§8"%§;
               }
               return §§pop();
            }
         }
         §§goto(addr59);
      }
      
      override public function getLoserStateName() : String
      {
         return §@=§.§8"%§;
      }
      
      protected function §5!B§() : String
      {
         return §'8§.§8"%§;
      }
      
      protected function §;" §() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §7"6§(this.§5!B§());
         }
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            if(isTransitioning)
            {
               if(!(_loc4_ && param1))
               {
                  §§goto(addr64);
               }
               else
               {
                  while(true)
                  {
                     §§goto(addr33);
                  }
               }
            }
            addr33:
            loop1:
            while(true)
            {
               super.keyUp(param1);
               if(!(_loc3_ || _loc3_))
               {
                  continue loop0;
               }
               var _loc2_:* = param1.keyCode;
               if(_loc3_ || this)
               {
                  if(Keyboard.R === _loc2_)
                  {
                     addr83:
                     §§push(0);
                     if(!_loc3_)
                     {
                     }
                  }
                  else
                  {
                     §§push(1);
                  }
                  switch(§§pop())
                  {
                     case 0:
                        if(!§@!S§.isPaused)
                        {
                           if(_loc3_)
                           {
                              this.§;" §();
                              if(_loc3_)
                              {
                                 addr31:
                                 if(true)
                                 {
                                    addr66:
                                 }
                                 continue;
                                 break loop1;
                              }
                              break loop1;
                           }
                           §§goto(addr31);
                        }
                        §§goto(addr66);
                  }
               }
               §§goto(addr83);
            }
            return;
         }
         addr64:
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            if(!isTransitioning)
            {
               loop0:
               for(; §@!S§.§!L§; while(true)
               {
                  continue loop0;
               })
               {
                  if(_loc4_ && param1)
                  {
                     continue;
                  }
                  if(_loc4_)
                  {
                     §§goto(addr73);
                  }
                  var _loc2_:* = param1.keyCode;
                  if(_loc3_)
                  {
                     if(Keyboard.NUMBER_5 === _loc2_)
                     {
                        if(_loc3_)
                        {
                           §§push(0);
                           if(_loc3_ || _loc3_)
                           {
                           }
                        }
                        else
                        {
                           addr101:
                           §§push(1);
                           if(_loc4_ && _loc3_)
                           {
                           }
                        }
                        addr124:
                        switch(§§pop())
                        {
                           case 0:
                              §7"6§(this.§5!B§());
                              break;
                           case 1:
                              §7"6§(this.§5!B§());
                              if(!_loc4_)
                              {
                                 break loop0;
                              }
                              break loop0;
                           default:
                              super.keyDown(param1);
                              if(_loc3_)
                              {
                                 if(!_loc4_)
                                 {
                                    if(false)
                                    {
                                       addr31:
                                       break loop0;
                                    }
                                    break loop0;
                                 }
                                 break;
                              }
                        }
                        §§goto(addr31);
                     }
                     else
                     {
                        if(Keyboard.NUMBER_6 === _loc2_)
                        {
                           §§goto(addr101);
                        }
                        else
                        {
                           §§push(2);
                        }
                        §§goto(addr124);
                     }
                  }
                  §§goto(addr101);
               }
               return;
            }
            addr73:
            return;
         }
         §§goto(addr74);
      }
      
      public function §&!z§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§+B§.§?e§.listenerUIEventOccured(0,"showTutorial");
         }
      }
   }
}
