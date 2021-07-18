package §<"c§
{
   import § "p§.§2!Y§;
   import §+D§.§ #^§;
   import §,"N§.§@>§;
   import §7!$§.§&$§;
   import §7!$§.§]#[§;
   import §8!E§.§true §;
   import §;!W§.§7"]§;
   import §;!W§.§8§;
   import §="2§.§?!r§;
   import §>@§.§5"H§;
   import §?m§.§+"2§;
   import §`"%§.§"!4§;
   import com.angrybirds.§,!q§;
   import flash.events.KeyboardEvent;
   import flash.ui.Keyboard;
   
   public class StatePlay extends §-f§
   {
      
      public static const §^!7§:String = "StatePlay";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §^!7§ = "StatePlay";
         }
      }
      
      protected var §?#M§:§7"]§;
      
      protected var §2!j§:§8#0§;
      
      public function StatePlay(param1:§+"2§, param2:§5"H§, param3:Boolean = true, param4:String = "StatePlay")
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && param1))
         {
            super(param1,param2,param3,param4);
         }
      }
      
      private function get §?D§() : §7"]§
      {
         return this.§?#M§;
      }
      
      override protected function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §@;§ = new §]#[§(this);
         }
         do
         {
            §@;§.init(§&$§.§@8§.Views.View_LevelPlay[0]);
         }
         while(!_loc2_);
         
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            super.cleanup();
         }
      }
      
      protected function §-#3§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            this.addPauseView();
            while(true)
            {
               this.addPlayView();
               §§goto(addr60);
            }
         }
         addr60:
         while(true)
         {
            this.§+#-§();
            if(_loc2_)
            {
               if(!_loc1_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      protected function §8#?§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§+O§();
            loop0:
            while(true)
            {
               §§push(this.§?#M§);
               if(_loc2_)
               {
                  if(!§§pop())
                  {
                     while(true)
                     {
                        §§push(this.§2!j§);
                        if(_loc2_ || _loc2_)
                        {
                           if(§§pop())
                           {
                              if(_loc2_ || _loc1_)
                              {
                                 addr82:
                                 this.§2!j§.dispose();
                              }
                              do
                              {
                                 this.§2!j§ = null;
                              }
                              while(_loc1_ && _loc1_);
                              
                              if(_loc1_ && _loc2_)
                              {
                                 continue;
                              }
                              if(_loc1_ && _loc1_)
                              {
                                 continue loop0;
                              }
                              addr49:
                              if(_loc2_)
                              {
                                 addr61:
                                 break;
                              }
                              addr95:
                              while(true)
                              {
                                 §§push(this.§?#M§);
                                 addr97:
                                 while(true)
                                 {
                                    §§pop().dispose();
                                    continue loop0;
                                 }
                                 §§goto(addr49);
                              }
                           }
                           break;
                        }
                        §§goto(addr82);
                     }
                     return;
                  }
                  §§goto(addr95);
               }
               §§goto(addr97);
            }
         }
         §§goto(addr61);
      }
      
      protected function addPauseView() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:§@>§ = §4#;§.singleton.dataModel;
         var _loc2_:§ #^§ = § #^§(§@;§.getItemByName("Container_Pause"));
         if(!(_loc3_ && this))
         {
            this.§2!j§ = new §2!Y§(_loc2_,§+!b§,_loc1_,§^"N§);
         }
      }
      
      protected function addPlayView() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:§@>§ = §4#;§.singleton.dataModel;
         var _loc2_:§ #^§ = § #^§(§@;§.getItemByName("Container_Play"));
         if(_loc3_)
         {
            this.§?#M§ = new §true §(_loc2_,§+!b§,§ F§,_loc1_,§^"N§);
         }
      }
      
      protected function §+#-§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            §§push(this.§2!j§);
            while(true)
            {
               §§push(§"!4§.§ z§);
               addr198:
               while(true)
               {
                  §§pop().addEventListener(§§pop(),this.viewEventHandler);
               }
            }
            addr196:
         }
         loop2:
         while(true)
         {
            §§push(this.§2!j§);
            while(true)
            {
               §§push(§"!4§.§@L§);
               loop4:
               while(true)
               {
                  §§pop().addEventListener(§§pop(),this.viewEventHandler);
                  loop5:
                  while(true)
                  {
                     §§push(this.§2!j§);
                     loop6:
                     while(true)
                     {
                        if(!_loc2_)
                        {
                           §§push(§"!4§.RESTART_LEVEL);
                           while(!_loc2_)
                           {
                              §§pop().addEventListener(§§pop(),this.viewEventHandler);
                              §§push(§"!4§.RESUME_LEVEL);
                              continue loop6;
                              if(_loc2_ && _loc2_)
                              {
                                 continue;
                              }
                              if(_loc1_)
                              {
                                 §§pop().addEventListener(§§pop(),this.viewEventHandler);
                                 loop9:
                                 while(_loc1_ || _loc2_)
                                 {
                                    §§push(this.§?#M§);
                                    loop10:
                                    while(true)
                                    {
                                       §§push(§"!4§.§@L§);
                                       loop11:
                                       while(true)
                                       {
                                          §§pop().addEventListener(§§pop(),this.viewEventHandler);
                                          loop12:
                                          while(true)
                                          {
                                             §§push(this.§?#M§);
                                             while(!_loc2_)
                                             {
                                                §§push(§"!4§.RESTART_LEVEL);
                                                loop14:
                                                while(true)
                                                {
                                                   §§pop().addEventListener(§§pop(),this.viewEventHandler);
                                                   loop15:
                                                   while(true)
                                                   {
                                                      if(_loc2_)
                                                      {
                                                         continue loop9;
                                                      }
                                                      if(!(_loc1_ || _loc2_))
                                                      {
                                                         break;
                                                      }
                                                      §§push(this.§?#M§);
                                                      loop16:
                                                      while(true)
                                                      {
                                                         §§push(§"!4§.RESUME_LEVEL);
                                                         addr62:
                                                         while(true)
                                                         {
                                                            if(_loc1_)
                                                            {
                                                               if(_loc2_ && this)
                                                               {
                                                                  break;
                                                               }
                                                               §§pop().addEventListener(§§pop(),this.viewEventHandler);
                                                               while(true)
                                                               {
                                                                  if(!(_loc2_ && this))
                                                                  {
                                                                     if(_loc2_ && _loc1_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     continue loop16;
                                                                  }
                                                                  continue loop15;
                                                                  addr39:
                                                                  §§pop().addEventListener(§§pop(),this.viewEventHandler);
                                                                  if(_loc1_ || _loc1_)
                                                                  {
                                                                     if(_loc1_ || _loc2_)
                                                                     {
                                                                        return;
                                                                     }
                                                                     continue loop12;
                                                                  }
                                                               }
                                                               continue loop2;
                                                            }
                                                            continue loop14;
                                                         }
                                                         continue loop11;
                                                      }
                                                   }
                                                   continue loop5;
                                                }
                                             }
                                             continue loop10;
                                          }
                                       }
                                    }
                                 }
                                 continue loop6;
                                 addr154:
                              }
                              §§goto(addr198);
                           }
                           continue loop4;
                        }
                        §§goto(addr196);
                     }
                  }
               }
            }
         }
      }
      
      protected function §+O§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            §§push(this.§2!j§);
            loop0:
            while(true)
            {
               §§push(§"!4§.§ z§);
               loop1:
               while(true)
               {
                  §§pop().removeEventListener(§§pop(),this.viewEventHandler);
                  loop2:
                  while(true)
                  {
                     §§push(this.§2!j§);
                     loop3:
                     while(true)
                     {
                        §§push(§"!4§.§@L§);
                        loop4:
                        while(!_loc2_)
                        {
                           §§pop().removeEventListener(§§pop(),this.viewEventHandler);
                           while(true)
                           {
                              §§push(this.§2!j§);
                              while(_loc1_)
                              {
                                 continue loop0;
                                 loop8:
                                 while(true)
                                 {
                                    §§push(this.§2!j§);
                                    if(!(_loc1_ || _loc2_))
                                    {
                                       break;
                                    }
                                    §§push(§"!4§.RESUME_LEVEL);
                                    if(_loc2_)
                                    {
                                       while(_loc1_ || _loc2_)
                                       {
                                          §§pop().removeEventListener(§§pop(),this.viewEventHandler);
                                          continue loop8;
                                       }
                                       continue loop4;
                                       addr162:
                                    }
                                    §§pop().removeEventListener(§§pop(),this.viewEventHandler);
                                    loop9:
                                    while(true)
                                    {
                                       §§push(this.§?#M§);
                                       loop10:
                                       while(true)
                                       {
                                          §§push(§"!4§.§@L§);
                                          addr122:
                                          while(true)
                                          {
                                             §§pop().removeEventListener(§§pop(),this.viewEventHandler);
                                             addr125:
                                             while(!_loc2_)
                                             {
                                                if(_loc1_)
                                                {
                                                   §§push(this.§?#M§);
                                                   continue loop10;
                                                }
                                                continue loop8;
                                             }
                                             continue loop9;
                                          }
                                       }
                                    }
                                 }
                              }
                              continue loop3;
                              if(_loc2_ && this)
                              {
                                 continue;
                              }
                              if(_loc2_)
                              {
                                 continue loop2;
                              }
                              §§goto(addr83);
                           }
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
         §§goto(addr83);
      }
      
      override protected function levelStarted() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§"!i§();
         }
         while(true)
         {
            super.levelStarted();
            while(_loc1_ || _loc1_)
            {
               this.playLevelStartSound();
               if(_loc1_)
               {
                  return;
               }
            }
         }
      }
      
      protected function §"!i§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §4#;§.singleton.stopThemeMusic();
         }
         do
         {
            §?!r§.§0"#§();
         }
         while(_loc1_);
         
      }
      
      protected function playLevelStartSound() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §?!r§.§]!H§("LevelStartsBirdsMilitary2");
         }
      }
      
      override public function activate(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            super.activate(param1);
         }
         while(true)
         {
            this.§-#3§();
            while(_loc2_)
            {
               this.§'#`§(false,false);
               if(!_loc3_)
               {
                  return;
               }
            }
         }
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            this.§8#?§();
            while(true)
            {
               §4#;§.singleton.§-2§ = false;
               while(!(_loc2_ && _loc2_))
               {
                  super.deActivate();
                  if(!_loc1_)
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
      
      protected function §'#`§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §4#;§.singleton.§-2§ = param1;
            loop0:
            while(!param1)
            {
               §§push(this.§?#M§);
               if(!(_loc4_ && param2))
               {
                  §§push(param2);
                  if(_loc3_ || this)
                  {
                     §§pop().enable(§§pop());
                     loop1:
                     while(true)
                     {
                        §§push(this.§2!j§);
                        if(!_loc4_)
                        {
                           §§push(param2);
                           if(_loc3_)
                           {
                              §§pop().disable(§§pop());
                              if(!_loc4_)
                              {
                                 if(!(_loc4_ && param2))
                                 {
                                    if(_loc4_)
                                    {
                                       continue loop0;
                                    }
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                       if(_loc3_)
                                       {
                                          if(_loc4_ && this)
                                          {
                                             break loop0;
                                          }
                                          addr90:
                                       }
                                       addr108:
                                       while(true)
                                       {
                                          §§push(this.§2!j§);
                                          break loop1;
                                       }
                                    }
                                    addr81:
                                 }
                                 return;
                              }
                              continue;
                           }
                           while(true)
                           {
                              §§pop().enable(§§pop());
                              §§goto(addr81);
                              break loop1;
                           }
                           addr80:
                        }
                        break;
                     }
                     while(true)
                     {
                        §§goto(addr80);
                        §§goto(addr108);
                     }
                     §§goto(addr90);
                  }
                  loop3:
                  while(true)
                  {
                     §§pop().disable(§§pop());
                     §§goto(addr108);
                     addr106:
                     while(true)
                     {
                        §§push(param2);
                        continue loop3;
                     }
                  }
               }
               §§goto(addr106);
            }
            while(true)
            {
               §§goto(addr106);
            }
         }
         §§goto(addr108);
      }
      
      override protected function update(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            super.update(param1);
            loop0:
            while(true)
            {
               §§push(this.§?#M§);
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
                        if(!§§pop())
                        {
                           while(true)
                           {
                              loop16:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    if(!_loc3_)
                                    {
                                       continue loop0;
                                    }
                                    while(true)
                                    {
                                       §§push(this.§?#M§);
                                    }
                                    addr148:
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                       §§push(this.§2!j§);
                                       loop9:
                                       while(true)
                                       {
                                          §§push(Boolean(§§pop()));
                                          if(!_loc2_)
                                          {
                                             §§push(§§pop());
                                             if(!(_loc3_ || this))
                                             {
                                                break;
                                             }
                                             if(§§pop())
                                             {
                                                loop14:
                                                while(true)
                                                {
                                                   §§pop();
                                                   loop13:
                                                   while(true)
                                                   {
                                                      if(!_loc2_)
                                                      {
                                                         §§push(this.§2!j§);
                                                         if(_loc3_)
                                                         {
                                                            §§push(§§pop().isEnabled());
                                                            if(_loc2_ && this)
                                                            {
                                                               break;
                                                            }
                                                            if(!(_loc2_ && param1))
                                                            {
                                                               if(_loc3_)
                                                               {
                                                                  §§push(Boolean(§§pop()));
                                                                  break;
                                                               }
                                                               continue loop2;
                                                            }
                                                            continue loop14;
                                                         }
                                                         while(true)
                                                         {
                                                            if(!(_loc2_ && this))
                                                            {
                                                               §§pop().update(param1);
                                                               while(_loc2_ && param1)
                                                               {
                                                                  continue loop13;
                                                               }
                                                               addr25:
                                                               return;
                                                               addr98:
                                                            }
                                                            break;
                                                            §§goto(addr124);
                                                         }
                                                         addr124:
                                                         continue loop9;
                                                         addr79:
                                                      }
                                                      addr177:
                                                      while(true)
                                                      {
                                                         §§push(this.§?#M§);
                                                         if(_loc3_ || this)
                                                         {
                                                            continue loop1;
                                                         }
                                                         addr150:
                                                         while(true)
                                                         {
                                                            §§pop().update(param1);
                                                            continue loop0;
                                                            §§goto(addr148);
                                                         }
                                                      }
                                                      continue loop1;
                                                   }
                                                   if(!(_loc3_ || param1))
                                                   {
                                                      continue loop16;
                                                   }
                                                   if(_loc2_ && _loc3_)
                                                   {
                                                   }
                                                   while(true)
                                                   {
                                                      §§pop();
                                                      §§goto(addr177);
                                                   }
                                                }
                                                addr121:
                                             }
                                             while(true)
                                             {
                                                if(§§pop())
                                                {
                                                   if(_loc3_ || _loc2_)
                                                   {
                                                      if(_loc2_)
                                                      {
                                                         continue loop0;
                                                      }
                                                      §§goto(addr79);
                                                      §§push(this.§2!j§);
                                                   }
                                                   §§goto(addr98);
                                                }
                                                §§goto(addr25);
                                                §§goto(addr59);
                                             }
                                             continue loop16;
                                          }
                                          §§goto(addr121);
                                       }
                                       continue loop3;
                                    }
                                    addr106:
                                 }
                                 §§goto(addr150);
                              }
                           }
                           addr144:
                        }
                        §§goto(addr176);
                     }
                  }
               }
            }
         }
         §§goto(addr148);
      }
      
      protected function viewEventHandler(param1:§"!4§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:* = null;
         var _loc3_:* = param1.type;
         if(!(_loc4_ && param1))
         {
            §§push(§"!4§.§ z§);
            if(_loc5_)
            {
               if(§§pop() === _loc3_)
               {
                  if(_loc5_)
                  {
                     §§push(0);
                     if(_loc4_)
                     {
                     }
                  }
                  else
                  {
                     addr180:
                     §§push(3);
                     if(!(_loc5_ || _loc2_))
                     {
                        addr206:
                     }
                  }
                  §§goto(addr211);
               }
               else
               {
                  §§push(§"!4§.§!#B§);
                  if(_loc5_ || _loc2_)
                  {
                     addr132:
                     if(§§pop() === _loc3_)
                     {
                        if(_loc5_)
                        {
                           §§push(1);
                           if(!_loc5_)
                           {
                           }
                           §§goto(addr211);
                        }
                        else
                        {
                           §§goto(addr180);
                        }
                     }
                     else
                     {
                        §§push(§"!4§.RESUME_LEVEL);
                        if(_loc5_ || param1)
                        {
                           addr149:
                           if(§§pop() === _loc3_)
                           {
                              if(!(_loc4_ && _loc2_))
                              {
                                 §§push(2);
                                 if(_loc5_ || this)
                                 {
                                 }
                                 §§goto(addr211);
                              }
                              else
                              {
                                 §§goto(addr180);
                              }
                           }
                           else
                           {
                              §§push(§"!4§.RESTART_LEVEL);
                              if(!_loc4_)
                              {
                                 if(§§pop() === _loc3_)
                                 {
                                    if(_loc5_ || param1)
                                    {
                                       §§goto(addr180);
                                    }
                                 }
                                 else
                                 {
                                    addr191:
                                    if(§"!4§.§@L§ !== _loc3_)
                                    {
                                       addr211:
                                       switch(§§pop())
                                       {
                                          case 0:
                                             break;
                                          case 1:
                                             this.§'#`§(true);
                                             break;
                                             addr87:
                                          case 2:
                                             this.§'#`§(false);
                                             if(!_loc4_)
                                             {
                                                break;
                                             }
                                             break;
                                          case 3:
                                             this.restartLevel();
                                             addr48:
                                             break;
                                             addr70:
                                          case 4:
                                             §§push(param1.§^"y§);
                                             if(_loc5_ || param1)
                                             {
                                                §§push(§§pop());
                                             }
                                             _loc2_ = §§pop();
                                             if(!_loc4_)
                                             {
                                                § g§(_loc2_);
                                                if(_loc5_ || this)
                                                {
                                                   if(_loc5_ || param1)
                                                   {
                                                      if(_loc5_ || _loc3_)
                                                      {
                                                         if(true)
                                                         {
                                                            break;
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr87);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr70);
                                                   }
                                                   §§goto(addr48);
                                                }
                                                break;
                                             }
                                       }
                                       return;
                                       §§push(5);
                                    }
                                 }
                                 §§goto(addr211);
                                 §§goto(addr211);
                              }
                           }
                           §§goto(addr211);
                        }
                        §§goto(addr191);
                     }
                     §§goto(addr211);
                  }
                  §§goto(addr149);
               }
            }
            §§goto(addr132);
         }
         §§goto(addr180);
      }
      
      override public function getVictoryStateName() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(this.§?D§.isEagleUsed())
            {
               if(_loc2_ || this)
               {
                  §§push(§1!#§.§^!7§);
                  if(!_loc1_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr55:
                  return §5"p§.§^!7§;
               }
               return §§pop();
            }
         }
         §§goto(addr55);
      }
      
      override public function getLoserStateName() : String
      {
         return §^#M§.§^!7§;
      }
      
      protected function getLevelLoadStateName() : String
      {
         return §<2§.§^!7§;
      }
      
      protected function restartLevel() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            § g§(this.getLevelLoadStateName());
         }
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            if(!isTransitioning)
            {
               loop0:
               while(true)
               {
                  super.keyUp(param1);
                  if(_loc4_ || _loc2_)
                  {
                     if(!(_loc3_ && _loc3_))
                     {
                        var _loc2_:* = param1.keyCode;
                        if(!_loc3_)
                        {
                           if(Keyboard.R === _loc2_)
                           {
                              addr84:
                              §§push(0);
                              if(!_loc4_)
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
                                 if(!§,!q§.isPaused)
                                 {
                                    if(_loc4_ || _loc3_)
                                    {
                                       this.restartLevel();
                                       if(!_loc3_)
                                       {
                                          addr37:
                                          if(true)
                                          {
                                             addr72:
                                          }
                                          continue;
                                          break loop0;
                                       }
                                       break loop0;
                                    }
                                    §§goto(addr37);
                                 }
                                 §§goto(addr72);
                           }
                        }
                        §§goto(addr84);
                     }
                  }
                  else
                  {
                     while(true)
                     {
                        continue loop0;
                     }
                     addr71:
                  }
               }
               return;
            }
            return;
         }
         §§goto(addr71);
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            if(isTransitioning)
            {
               if(!(_loc3_ && _loc2_))
               {
                  return;
               }
               while(true)
               {
               }
               addr85:
            }
            loop1:
            for(; §,!q§.§<N§; §§goto(addr85))
            {
               if(_loc3_)
               {
                  continue;
               }
               var _loc2_:* = param1.keyCode;
               if(!_loc3_)
               {
                  if(Keyboard.NUMBER_5 === _loc2_)
                  {
                     if(_loc4_)
                     {
                        addr99:
                        §§push(0);
                        if(!_loc4_)
                        {
                        }
                     }
                     else
                     {
                        addr107:
                        §§push(1);
                        if(_loc4_ || this)
                        {
                        }
                     }
                     addr130:
                     switch(§§pop())
                     {
                        case 0:
                           § g§(this.getLevelLoadStateName());
                           addr74:
                           break;
                        case 1:
                           § g§(this.getLevelLoadStateName());
                           if(!(_loc3_ && this))
                           {
                              if(_loc4_ || this)
                              {
                                 break loop1;
                              }
                              §§goto(addr74);
                           }
                           break loop1;
                        default:
                           super.keyDown(param1);
                           if(!_loc3_)
                           {
                              if(false)
                              {
                                 break;
                              }
                              break loop1;
                           }
                     }
                     break;
                  }
                  if(Keyboard.NUMBER_6 === _loc2_)
                  {
                     §§goto(addr107);
                  }
                  else
                  {
                     §§push(2);
                  }
                  §§goto(addr130);
                  §§goto(addr107);
               }
               §§goto(addr99);
            }
            return;
         }
         §§goto(addr68);
      }
      
      public function showTutorials() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.§?#M§.§`Z§.listenerUIEventOccured(0,"showTutorial");
         }
      }
   }
}
