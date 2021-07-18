package §;!§
{
   import §#"&§.§4!W§;
   import §0"$§.§"!a§;
   import §1T§.§'!c§;
   import §2S§.§<!'§;
   import §7!§.§#"0§;
   import §7!§.§2W§;
   import §7!A§.§-J§;
   import §7!A§.§9!y§;
   import §8!K§.§5!Y§;
   import §;0§.§6h§;
   import §]![§.§="+§;
   import §^Z§.§8S§;
   import com.angrybirds.§&!"§;
   import flash.events.KeyboardEvent;
   import flash.ui.Keyboard;
   
   public class StatePlay extends §6!X§
   {
      
      public static const §-!q§:String = "StatePlay";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §-!q§ = "StatePlay";
         }
      }
      
      protected var §>>§:§9!y§;
      
      protected var §?u§:§-J§;
      
      public function StatePlay(param1:§5!Y§, param2:§6h§, param3:Boolean = true, param4:String = "StatePlay")
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            super(param1,param2,param3,param4);
         }
      }
      
      private function get §!+§() : §9!y§
      {
         return this.§>>§;
      }
      
      override protected function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §?P§ = new §2W§(this);
         }
         do
         {
            §?P§.init(§#"0§.§+#§.Views.View_LevelPlay[0]);
         }
         while(!(_loc1_ || _loc1_));
         
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
      
      protected function §4!T§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.§!!H§();
         }
         while(true)
         {
            this.§?I§();
            while(!_loc2_)
            {
               this.§8`§();
               if(_loc1_ || _loc1_)
               {
                  return;
               }
            }
         }
      }
      
      protected function §[p§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§'!'§();
            loop0:
            while(true)
            {
               §§push(this.§>>§);
               if(!_loc1_)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§push(this.§>>§);
                        addr99:
                        while(true)
                        {
                           §§pop().dispose();
                           addr100:
                           while(true)
                           {
                              this.§>>§ = null;
                              addr80:
                              while(true)
                              {
                              }
                           }
                        }
                     }
                     addr97:
                  }
                  loop2:
                  while(true)
                  {
                     §§push(this.§?u§);
                     if(_loc2_ || _loc2_)
                     {
                        if(!§§pop())
                        {
                           break;
                        }
                        while(true)
                        {
                           §§push(this.§?u§);
                        }
                        addr70:
                     }
                     loop4:
                     while(true)
                     {
                        §§pop().dispose();
                        while(!_loc1_)
                        {
                           this.§?u§ = null;
                           if(_loc1_ && _loc2_)
                           {
                              continue;
                           }
                           if(_loc1_)
                           {
                              continue loop4;
                           }
                           if(!_loc1_)
                           {
                              if(_loc2_)
                              {
                                 continue loop0;
                              }
                              §§goto(addr97);
                           }
                           §§goto(addr100);
                        }
                        continue loop2;
                     }
                  }
                  §§goto(addr20);
               }
               §§goto(addr99);
            }
         }
         addr20:
      }
      
      protected function §!!H§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:§4!W§ = §6!!§.singleton.§<!S§;
         var _loc2_:§"!a§ = §"!a§(§?P§.getItemByName("Container_Pause"));
         if(_loc3_)
         {
            this.§?u§ = new §="+§(_loc2_,§&" §,_loc1_,§-!]§);
         }
      }
      
      protected function §?I§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:§4!W§ = §6!!§.singleton.§<!S§;
         var _loc2_:§"!a§ = §"!a§(§?P§.getItemByName("Container_Play"));
         if(!_loc3_)
         {
            this.§>>§ = new §<!'§(_loc2_,§&" §,§>A§,_loc1_,§-!]§);
         }
      }
      
      protected function §8`§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§?u§);
            loop0:
            while(true)
            {
               §§push(§8S§.§[$§);
               loop1:
               while(true)
               {
                  §§pop().addEventListener(§§pop(),this.§2U§);
                  while(true)
                  {
                     §§push(this.§?u§);
                     loop3:
                     while(true)
                     {
                        §§push(§8S§.§1!K§);
                        loop4:
                        while(true)
                        {
                           §§pop().addEventListener(§§pop(),this.§2U§);
                           loop5:
                           while(true)
                           {
                              §§push(this.§?u§);
                              loop6:
                              for(; _loc1_; §§push(this.§?u§),if(!_loc2_)
                              {
                                 continue loop3;
                              })
                              {
                                 §§push(§8S§.RESTART_LEVEL);
                                 while(true)
                                 {
                                    §§pop().addEventListener(§§pop(),this.§2U§);
                                    addr152:
                                    while(_loc1_)
                                    {
                                       continue loop6;
                                    }
                                    addr118:
                                    §§push(§8S§.RESUME_LEVEL);
                                    continue loop5;
                                    if(_loc2_ && this)
                                    {
                                       continue;
                                    }
                                    if(!_loc1_)
                                    {
                                       continue loop4;
                                    }
                                    if(_loc2_ && _loc2_)
                                    {
                                       continue loop1;
                                    }
                                    §§pop().addEventListener(§§pop(),this.§2U§);
                                    loop9:
                                    for(; !_loc2_; while(!(_loc2_ && _loc2_))
                                    {
                                       while(true)
                                       {
                                          §§push(this.§>>§);
                                          loop14:
                                          while(true)
                                          {
                                             §§push(§8S§.RESTART_LEVEL);
                                             addr76:
                                             while(true)
                                             {
                                                §§pop().addEventListener(§§pop(),this.§2U§);
                                                addr79:
                                                while(true)
                                                {
                                                   §§push(this.§>>§);
                                                   continue loop14;
                                                }
                                             }
                                          }
                                       }
                                    })
                                    {
                                       §§push(this.§>>§);
                                       while(true)
                                       {
                                          §§push(§8S§.§1!K§);
                                          addr95:
                                          while(true)
                                          {
                                             §§pop().addEventListener(§§pop(),this.§2U§);
                                             continue loop9;
                                          }
                                       }
                                    }
                                    §§goto(addr152);
                                 }
                              }
                              continue loop0;
                           }
                        }
                        if(!(_loc1_ || _loc1_))
                        {
                           continue;
                        }
                        §§goto(addr118);
                     }
                  }
               }
            }
         }
         §§goto(addr105);
      }
      
      protected function §'!'§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§?u§);
            loop0:
            while(true)
            {
               §§push(§8S§.§[$§);
               loop1:
               while(true)
               {
                  §§pop().removeEventListener(§§pop(),this.§2U§);
                  loop2:
                  while(true)
                  {
                     §§push(this.§?u§);
                     loop3:
                     while(true)
                     {
                        §§push(§8S§.§1!K§);
                        loop4:
                        while(!_loc2_)
                        {
                           §§pop().removeEventListener(§§pop(),this.§2U§);
                           loop5:
                           while(!_loc2_)
                           {
                              §§push(this.§?u§);
                              loop6:
                              for(; _loc1_; while(true)
                              {
                                 §§push(this.§?u§);
                                 if(_loc2_)
                                 {
                                    break;
                                 }
                                 if(!_loc1_)
                                 {
                                    continue loop0;
                                 }
                                 §§goto(addr100);
                              })
                              {
                                 §§push(§8S§.RESTART_LEVEL);
                                 while(_loc1_ || _loc1_)
                                 {
                                    §§pop().removeEventListener(§§pop(),this.§2U§);
                                    §§push(§8S§.RESUME_LEVEL);
                                    continue loop6;
                                    if(!(_loc1_ || _loc2_))
                                    {
                                       continue;
                                    }
                                    §§pop().removeEventListener(§§pop(),this.§2U§);
                                    loop9:
                                    while(true)
                                    {
                                       §§push(this.§>>§);
                                       loop10:
                                       while(true)
                                       {
                                          §§push(§8S§.§1!K§);
                                          loop11:
                                          while(true)
                                          {
                                             §§pop().removeEventListener(§§pop(),this.§2U§);
                                             loop12:
                                             while(!_loc2_)
                                             {
                                                §§push(this.§>>§);
                                                loop13:
                                                while(true)
                                                {
                                                   §§push(§8S§.RESTART_LEVEL);
                                                   loop14:
                                                   while(true)
                                                   {
                                                      §§pop().removeEventListener(§§pop(),this.§2U§);
                                                      loop15:
                                                      while(!_loc2_)
                                                      {
                                                         if(_loc2_)
                                                         {
                                                            continue loop5;
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(this.§>>§);
                                                            loop17:
                                                            for(; !_loc2_; §§push(this.§>>§),if(!_loc1_)
                                                            {
                                                               continue;
                                                            },if(!_loc1_)
                                                            {
                                                               continue loop13;
                                                            },§§push(§8S§.§[!&§),if(_loc1_)
                                                            {
                                                               if(_loc1_)
                                                               {
                                                                  if(!_loc2_)
                                                                  {
                                                                     §§pop().removeEventListener(§§pop(),this.§2U§);
                                                                     if(!_loc1_)
                                                                     {
                                                                        §§goto(addr56);
                                                                     }
                                                                     if(!_loc2_)
                                                                     {
                                                                        return;
                                                                     }
                                                                     continue loop12;
                                                                  }
                                                                  continue loop11;
                                                               }
                                                               continue loop14;
                                                            },§§goto(addr53))
                                                            {
                                                               §§push(§8S§.RESUME_LEVEL);
                                                               while(true)
                                                               {
                                                                  §§pop().removeEventListener(§§pop(),this.§2U§);
                                                                  addr56:
                                                                  while(!_loc2_)
                                                                  {
                                                                     continue loop17;
                                                                  }
                                                                  continue loop15;
                                                               }
                                                            }
                                                            continue loop10;
                                                         }
                                                      }
                                                      continue loop6;
                                                   }
                                                }
                                             }
                                             continue loop9;
                                          }
                                       }
                                    }
                                 }
                                 continue loop4;
                              }
                              continue loop3;
                           }
                           continue loop2;
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
         §§goto(addr81);
      }
      
      override protected function levelStarted() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            this.§0!$§();
            do
            {
               super.levelStarted();
               do
               {
                  this.§ !D§();
               }
               while(!_loc2_);
               
            }
            while(!(_loc2_ || this));
            
         }
      }
      
      protected function §0!$§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            §'!c§.§&j§();
         }
      }
      
      protected function § !D§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §'!c§.§"V§("LevelStartsBirdsMilitary2");
         }
      }
      
      override public function activate(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            super.activate(param1);
            do
            {
               this.§4!T§();
               do
               {
                  this.§+!;§(false,false);
               }
               while(_loc2_ && param1);
               
            }
            while(_loc2_);
            
         }
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            this.§[p§();
            while(true)
            {
               §6!!§.singleton.§2!h§ = false;
               while(!_loc2_)
               {
                  super.deActivate();
                  if(!_loc2_)
                  {
                     return;
                     addr43:
                  }
               }
            }
         }
         §§goto(addr43);
      }
      
      protected function §+!;§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
         {
            §6!!§.singleton.§2!h§ = param1;
            loop0:
            for(; !param1; if(!(_loc4_ && param1))
            {
               addr24:
               return;
            })
            {
               §§push(this.§>>§);
               if(_loc3_ || param2)
               {
                  §§push(param2);
                  if(!_loc4_)
                  {
                     §§pop().enable(§§pop());
                     while(!_loc4_)
                     {
                        §§push(this.§?u§);
                        if(!(_loc4_ && param2))
                        {
                           §§push(param2);
                           if(!_loc4_)
                           {
                              §§pop().disable(§§pop());
                              if(_loc4_ && param2)
                              {
                                 continue;
                              }
                              if(!(_loc4_ && param1))
                              {
                                 if(!_loc3_)
                                 {
                                    break loop0;
                                 }
                                 continue loop0;
                              }
                              §§goto(addr98);
                              §§push(this.§?u§);
                              addr118:
                              continue;
                           }
                        }
                        else
                        {
                           addr98:
                           §§push(param2);
                        }
                        §§pop().enable(§§pop());
                        break;
                     }
                     §§goto(addr24);
                  }
                  addr117:
                  §§pop().disable(§§pop());
                  §§goto(addr118);
               }
               §§goto(addr117);
               §§push(param2);
            }
            §§goto(addr116);
            §§push(this.§>>§);
         }
         §§goto(addr118);
      }
      
      override protected function update(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            super.update(param1);
            loop0:
            while(true)
            {
               §§push(this.§>>§);
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
                              loop15:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    addr120:
                                    loop16:
                                    while(true)
                                    {
                                       §§push(this.§>>§);
                                       addr122:
                                       while(!_loc3_)
                                       {
                                          §§pop().update(param1);
                                          while(true)
                                          {
                                          }
                                          continue loop16;
                                       }
                                       continue loop1;
                                    }
                                    addr120:
                                 }
                                 while(true)
                                 {
                                    §§push(this.§?u§);
                                    loop9:
                                    while(true)
                                    {
                                       §§push(Boolean(§§pop()));
                                       loop10:
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          if(_loc3_ && this)
                                          {
                                             break;
                                          }
                                          if(§§pop())
                                          {
                                             loop11:
                                             while(true)
                                             {
                                                §§pop();
                                                loop12:
                                                while(true)
                                                {
                                                   if(_loc2_)
                                                   {
                                                      if(!_loc2_)
                                                      {
                                                         break;
                                                      }
                                                      §§push(this.§?u§);
                                                      if(_loc2_ || this)
                                                      {
                                                         if(_loc3_ && _loc2_)
                                                         {
                                                            continue loop9;
                                                         }
                                                         §§push(§§pop().§+4§());
                                                         if(_loc2_)
                                                         {
                                                            if(!_loc2_)
                                                            {
                                                               continue loop11;
                                                            }
                                                            if(_loc3_)
                                                            {
                                                               continue loop10;
                                                            }
                                                            if(_loc3_)
                                                            {
                                                               continue loop15;
                                                            }
                                                            if(_loc3_)
                                                            {
                                                               continue loop2;
                                                            }
                                                            §§push(Boolean(§§pop()));
                                                         }
                                                         if(_loc2_ || this)
                                                         {
                                                            while(§§pop())
                                                            {
                                                               if(!_loc3_)
                                                               {
                                                                  if(_loc3_)
                                                                  {
                                                                     continue loop12;
                                                                  }
                                                                  this.§?u§.update(param1);
                                                               }
                                                               if(_loc2_)
                                                               {
                                                                  break;
                                                               }
                                                               continue loop0;
                                                            }
                                                            return;
                                                            addr64:
                                                         }
                                                         else
                                                         {
                                                            addr133:
                                                         }
                                                         while(true)
                                                         {
                                                            §§pop();
                                                            continue loop0;
                                                         }
                                                      }
                                                      §§goto(addr82);
                                                   }
                                                   §§goto(addr126);
                                                }
                                                §§goto(addr120);
                                             }
                                          }
                                          §§goto(addr64);
                                       }
                                       continue loop3;
                                    }
                                 }
                              }
                           }
                           addr118:
                        }
                        §§goto(addr133);
                     }
                  }
               }
            }
         }
         §§goto(addr120);
      }
      
      protected function §2U§(param1:§8S§) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:* = null;
         var _loc3_:* = param1.type;
         if(!(_loc5_ && this))
         {
            §§push(§8S§.§[$§);
            if(!_loc5_)
            {
               if(§§pop() === _loc3_)
               {
                  if(_loc4_ || _loc2_)
                  {
                     §§push(0);
                     if(!_loc4_)
                     {
                        addr170:
                     }
                  }
                  else
                  {
                     addr202:
                     §§push(4);
                     if(!_loc5_)
                     {
                        addr215:
                     }
                  }
                  §§goto(addr220);
               }
               else
               {
                  §§push(§8S§.§[!&§);
                  if(!(_loc5_ && _loc2_))
                  {
                     if(§§pop() === _loc3_)
                     {
                        if(_loc4_ || param1)
                        {
                           addr145:
                           §§push(1);
                           if(_loc5_ && this)
                           {
                              §§goto(addr170);
                           }
                        }
                        else
                        {
                           §§goto(addr202);
                        }
                        §§goto(addr220);
                     }
                     else
                     {
                        §§push(§8S§.RESUME_LEVEL);
                        if(!_loc5_)
                        {
                           addr158:
                           if(§§pop() === _loc3_)
                           {
                              if(!(_loc5_ && _loc2_))
                              {
                                 §§push(2);
                                 if(_loc4_)
                                 {
                                    §§goto(addr170);
                                 }
                              }
                              else
                              {
                                 §§goto(addr202);
                              }
                           }
                           else
                           {
                              §§push(§8S§.RESTART_LEVEL);
                              if(_loc5_ && this)
                              {
                              }
                              addr200:
                              if(§§pop() === _loc3_)
                              {
                                 §§goto(addr202);
                              }
                              else
                              {
                                 §§push(5);
                              }
                           }
                           §§goto(addr220);
                        }
                        if(§§pop() === _loc3_)
                        {
                           if(!(_loc5_ && param1))
                           {
                              §§push(3);
                              if(_loc5_ && _loc3_)
                              {
                                 §§goto(addr215);
                              }
                           }
                           else
                           {
                              §§goto(addr202);
                           }
                           addr220:
                           loop1:
                           switch(§§pop())
                           {
                              case 0:
                                 break;
                              case 1:
                                 this.§+!;§(true);
                                 if(_loc4_)
                                 {
                                    break;
                                 }
                                 break;
                              case 2:
                                 this.§+!;§(false);
                                 break;
                                 addr76:
                              case 3:
                                 this.§=3§();
                                 if(!(_loc5_ && param1))
                                 {
                                    if(_loc4_ || _loc2_)
                                    {
                                       addr35:
                                       break;
                                    }
                                    §§goto(addr76);
                                 }
                                 break;
                              case 4:
                                 §§push(param1.§0N§);
                                 if(_loc4_ || _loc2_)
                                 {
                                    §§push(§§pop());
                                 }
                                 _loc2_ = §§pop();
                                 while(true)
                                 {
                                    §<f§(_loc2_);
                                    if(!(_loc5_ && param1))
                                    {
                                       if(_loc5_)
                                       {
                                          continue;
                                       }
                                       if(true)
                                       {
                                          break loop1;
                                       }
                                       §§goto(addr35);
                                    }
                                    break loop1;
                                 }
                           }
                           return;
                        }
                        §§push(§8S§.§1!K§);
                        §§goto(addr202);
                     }
                  }
                  §§goto(addr200);
               }
            }
            §§goto(addr158);
         }
         §§goto(addr145);
      }
      
      override public function getVictoryStateName() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            if(this.§!+§.isEagleUsed())
            {
               if(!_loc1_)
               {
                  addr50:
                  §§push(§4!9§.§-!q§);
                  if(_loc2_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr55:
                  return §>!X§.§-!q§;
               }
               return §§pop();
            }
            §§goto(addr55);
         }
         §§goto(addr50);
      }
      
      override public function getLoserStateName() : String
      {
         return §"o§.§-!q§;
      }
      
      protected function §0!S§() : String
      {
         return §[j§.§-!q§;
      }
      
      protected function §=3§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §<f§(this.§0!S§());
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
               if(_loc3_)
               {
                  return;
               }
               while(true)
               {
               }
               addr55:
            }
            loop0:
            while(true)
            {
               super.keyUp(param1);
               if(!_loc4_)
               {
                  var _loc2_:* = param1.keyCode;
                  if(_loc3_ || this)
                  {
                     if(Keyboard.R === _loc2_)
                     {
                        addr73:
                        §§push(0);
                        if(_loc4_ && this)
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
                           if(!§&!"§.isPaused)
                           {
                              if(!_loc4_)
                              {
                                 this.§=3§();
                                 if(_loc3_)
                                 {
                                    addr31:
                                    if(true)
                                    {
                                       addr56:
                                    }
                                    continue;
                                    break loop0;
                                 }
                                 break loop0;
                              }
                              §§goto(addr31);
                           }
                           §§goto(addr56);
                     }
                  }
                  §§goto(addr73);
               }
            }
            return;
         }
         §§goto(addr55);
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            if(isTransitioning)
            {
               if(_loc4_ || _loc2_)
               {
                  §§goto(addr89);
               }
               else
               {
                  while(true)
                  {
                     addr56:
                     if(!(_loc4_ || this))
                     {
                        continue;
                     }
                     var _loc2_:* = param1.keyCode;
                     if(!_loc3_)
                     {
                        if(Keyboard.NUMBER_5 === _loc2_)
                        {
                           if(!_loc3_)
                           {
                              addr104:
                              §§push(0);
                              if(_loc3_)
                              {
                                 addr130:
                              }
                           }
                           else
                           {
                              addr112:
                              §§push(1);
                              if(_loc4_ || _loc3_)
                              {
                                 §§goto(addr130);
                              }
                           }
                           §§goto(addr135);
                        }
                        else
                        {
                           if(Keyboard.NUMBER_6 === _loc2_)
                           {
                              §§goto(addr112);
                           }
                           else
                           {
                              §§push(2);
                           }
                           addr135:
                           switch(§§pop())
                           {
                              case 0:
                                 §<f§(this.§0!S§());
                                 addr79:
                                 break;
                              case 1:
                                 §<f§(this.§0!S§());
                                 if(!(_loc3_ && this))
                                 {
                                    if(_loc3_ && _loc2_)
                                    {
                                       §§goto(addr79);
                                    }
                                 }
                                 §§goto(addr137);
                              default:
                                 super.keyDown(param1);
                                 if(!_loc3_)
                                 {
                                    if(false)
                                    {
                                       break;
                                    }
                                 }
                                 §§goto(addr137);
                           }
                           §§goto(addr137);
                        }
                     }
                     §§goto(addr104);
                  }
                  addr90:
               }
            }
            while(true)
            {
               if(§&!"§.§7!2§)
               {
                  §§goto(addr56);
               }
               break;
               §§goto(addr90);
            }
            addr137:
            return;
         }
         addr89:
      }
      
      public function §[P§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§>>§.§&$§.listenerUIEventOccured(0,"showTutorial");
         }
      }
   }
}
