package §8!_§
{
   import §%!r§.§3!'§;
   import §,"&§.§9q§;
   import §4&§.§ "E§;
   import §4&§.§,C§;
   import §5Q§.§^!e§;
   import §5X§.§+!#§;
   import §?_§.§>",§;
   import §?_§.§^"4§;
   import §^=§.§-G§;
   import §^=§.§1"F§;
   import §`!j§.§9"!§;
   import flash.events.Event;
   
   public class StateCutScene extends §5!&§
   {
      
      public static const STATE_NAME:String = "StateCutScene";
      
      private static const §%!z§:Number = 500;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            STATE_NAME = "StateCutScene";
         }
         do
         {
            §%!z§ = 500;
         }
         while(!(_loc2_ || _loc2_));
         
      }
      
      private var §5?§:§>",§;
      
      private var §78§:Boolean;
      
      private var §07§:Number = 0;
      
      private var §%,§:Number = 0;
      
      protected var §,!g§:§ "E§;
      
      public function StateCutScene(param1:§9"!§, param2:§3!'§, param3:Boolean = true, param4:String = "StateCutScene")
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && param3))
         {
            super(param1,param3,param4,param2);
         }
      }
      
      override protected function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super.init();
            do
            {
               §8!A§ = new §1"F§(this);
               do
               {
                  §8!A§.init(§-G§.§4+§.Views.View_CutScene[0]);
               }
               while(_loc2_ && this);
               
            }
            while(_loc2_ && _loc2_);
            
         }
      }
      
      protected function §5!Z§(param1:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            if(param1)
            {
               loop0:
               while(true)
               {
                  §§push(this.§,!g§);
                  loop1:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        this.§&g§();
                        if(_loc3_)
                        {
                           if(_loc3_ || param1)
                           {
                              if(_loc2_ && this)
                              {
                                 addr189:
                                 §8!A§.getItemByName("MovieClip_Loading").setVisibility(true);
                                 loop9:
                                 while(true)
                                 {
                                    §§push(this.§,!g§);
                                    loop5:
                                    while(true)
                                    {
                                       §§pop().removeEventListener(Event.COMPLETE,this.§7m§);
                                       loop8:
                                       while(true)
                                       {
                                          §§push(this.§,!g§);
                                          addr150:
                                          while(true)
                                          {
                                             §§pop().removeEventListener(Event.CANCEL,this.§<!&§);
                                             if(!(_loc2_ && param1))
                                             {
                                                break;
                                             }
                                             continue loop9;
                                          }
                                          if(_loc2_)
                                          {
                                             continue loop0;
                                          }
                                          §§push(this.§,!g§);
                                          while(true)
                                          {
                                             if(!(_loc2_ && _loc3_))
                                             {
                                                if(_loc3_ || this)
                                                {
                                                   break;
                                                }
                                                continue loop5;
                                             }
                                             §§goto(addr150);
                                             §§goto(addr164);
                                          }
                                          addr164:
                                          §§pop().addEventListener(Event.COMPLETE,this.§7m§);
                                          loop10:
                                          while(true)
                                          {
                                             §§push(this.§,!g§);
                                             addr104:
                                             addr111:
                                             while(!(_loc3_ || param1))
                                             {
                                                §§goto(addr127);
                                                continue loop10;
                                             }
                                             if(_loc3_ || _loc2_)
                                             {
                                                §§pop().addEventListener(Event.CANCEL,this.§<!&§);
                                                while(true)
                                                {
                                                   §§push(this.§,!g§);
                                                   if(_loc3_)
                                                   {
                                                      §§pop().§@t§("cutscene_" + param1);
                                                      while(_loc2_ && param1)
                                                      {
                                                         continue loop8;
                                                      }
                                                      addr83:
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr104);
                                                   }
                                                   §§goto(addr111);
                                                }
                                                addr123:
                                             }
                                             continue loop1;
                                          }
                                          addr127:
                                       }
                                    }
                                 }
                              }
                              §§goto(addr39);
                           }
                           §§goto(addr123);
                        }
                        §§goto(addr83);
                     }
                     §§goto(addr189);
                  }
               }
            }
            else
            {
               §§push(false);
               if(_loc3_ || this)
               {
                  return §§pop();
               }
            }
            addr39:
            return true;
         }
         §§goto(addr146);
      }
      
      private function §7m§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            §§push(this.§,!g§);
            loop0:
            for(; §§pop(); if(!(_loc3_ || _loc3_))
            {
               continue;
            },§§pop().removeEventListener(Event.CANCEL,this.§<!&§),while(_loc3_ || this)
            {
               this.§&g§();
               if(_loc3_)
               {
                  break loop0;
               }
            },§§goto(addr97))
            {
               if(!(_loc2_ && this))
               {
                  while(true)
                  {
                     §§push(this.§,!g§);
                     addr92:
                     while(true)
                     {
                        §§pop().removeEventListener(Event.COMPLETE,this.§7m§);
                     }
                  }
                  addr90:
               }
               while(true)
               {
                  §§push(this.§,!g§);
                  if(_loc3_)
                  {
                     continue loop0;
                  }
                  §§goto(addr92);
               }
            }
            return;
         }
         §§goto(addr90);
      }
      
      protected function §&g§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §8!A§.getItemByName("MovieClip_Loading").setVisibility(false);
         }
         §§push(this.§6,§());
         if(_loc4_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         var _loc2_:§,C§ = §,C§.§[!1§;
         if(_loc4_ || _loc1_)
         {
            §§push(this.§,!g§);
            if(!_loc3_)
            {
               if(§§pop())
               {
                  if(!_loc3_)
                  {
                     addr50:
                     _loc2_ = this.§,!g§.textureManager;
                     addr53:
                     this.§5?§ = §^"4§.§]!b§(_loc1_,_loc2_);
                     if(!_loc3_)
                     {
                        §§push(this.§5?§);
                        loop5:
                        while(true)
                        {
                           if(§§pop())
                           {
                              loop1:
                              while(true)
                              {
                                 § !g§.§;!'§.§&!`§.userProgress.§=!=§(_loc1_);
                                 loop2:
                                 while(true)
                                 {
                                    §§push(§9q§.§>!L§);
                                    while(true)
                                    {
                                       §§push(true);
                                       loop4:
                                       while(true)
                                       {
                                          §§pop().§0!M§(§§pop());
                                          loop7:
                                          while(true)
                                          {
                                             if(_loc3_ && _loc1_)
                                             {
                                                continue loop2;
                                             }
                                             §§push(§9q§.§>!L§);
                                             loop9:
                                             while(true)
                                             {
                                                if(_loc3_)
                                                {
                                                   break loop4;
                                                }
                                                §§push(false);
                                                if(!(_loc4_ || _loc3_))
                                                {
                                                   continue loop7;
                                                }
                                                §§pop().§1!L§(§§pop());
                                                loop8:
                                                while(true)
                                                {
                                                   if(_loc3_)
                                                   {
                                                      continue loop1;
                                                   }
                                                   loop0:
                                                   while(true)
                                                   {
                                                      §§push(this.§5?§);
                                                      if(!(_loc4_ || _loc1_))
                                                      {
                                                         continue loop5;
                                                      }
                                                      §§pop().update(0);
                                                      while(true)
                                                      {
                                                         §§push(§9q§.§>!L§);
                                                         if(_loc4_ || this)
                                                         {
                                                            §§pop().§5!`§.addChild(this.§5?§.sprite);
                                                            if(_loc4_)
                                                            {
                                                               if(!(_loc3_ && this))
                                                               {
                                                                  if(!_loc3_)
                                                                  {
                                                                     break loop0;
                                                                  }
                                                                  continue loop7;
                                                               }
                                                               continue loop8;
                                                            }
                                                            continue;
                                                         }
                                                         continue loop9;
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                              addr159:
                           }
                           return;
                        }
                     }
                     §§goto(addr159);
                  }
                  §§goto(addr132);
               }
               §§goto(addr53);
            }
            §§goto(addr50);
         }
         §§goto(addr115);
      }
      
      protected function §<!&§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            §§push(this.§,!g§);
            if(_loc2_)
            {
               if(§§pop())
               {
                  addr84:
                  while(true)
                  {
                     §§push(this.§,!g§);
                     addr86:
                     loop3:
                     while(true)
                     {
                        §§pop().removeEventListener(Event.COMPLETE,this.§7m§);
                        addr91:
                        addr61:
                        addr66:
                        while(true)
                        {
                           §§push(this.§,!g§);
                           if(_loc2_)
                           {
                              break;
                           }
                           continue loop3;
                        }
                        §§pop().removeEventListener(Event.CANCEL,this.§<!&§);
                        addr68:
                        while(_loc3_)
                        {
                           §§goto(addr91);
                           §§goto(addr61);
                        }
                     }
                  }
                  addr84:
               }
               while(true)
               {
                  this.end();
                  if(!(_loc3_ && _loc2_))
                  {
                     if(!(_loc3_ && _loc2_))
                     {
                        break;
                     }
                     §§goto(addr84);
                  }
                  §§goto(addr66);
                  §§goto(addr68);
               }
               return;
            }
            §§goto(addr86);
         }
         §§goto(addr84);
      }
      
      override public function activate(param1:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
         {
            super.activate(param1);
            loop0:
            while(true)
            {
               §§push(§9q§.§>!L§);
               while(true)
               {
                  §§pop().clearLevel();
                  while(true)
                  {
                     §§push(§9q§.§>!L§);
                     if(_loc4_)
                     {
                        break;
                     }
                     §§pop().§0!M§(false);
                     loop3:
                     while(true)
                     {
                        if(!this.§,!g§)
                        {
                           loop4:
                           while(true)
                           {
                              this.§,!g§ = §9q§.§>!L§.§[!l§;
                              addr174:
                              while(true)
                              {
                              }
                              loop16:
                              while(true)
                              {
                                 if(_loc4_ && param1)
                                 {
                                    continue loop4;
                                 }
                                 addr164:
                                 while(true)
                                 {
                                    this.§07§ = 0;
                                    loop8:
                                    while(true)
                                    {
                                       if(!(_loc4_ && _loc2_))
                                       {
                                          this.§%,§ = 0;
                                          loop9:
                                          while(_loc3_)
                                          {
                                             §8!A§.getItemByName("Button_Skip").setVisibility(false);
                                             continue loop3;
                                             loop11:
                                             while(true)
                                             {
                                                if(_loc3_ || _loc3_)
                                                {
                                                   continue loop0;
                                                }
                                                continue loop9;
                                                addr59:
                                                if(_loc4_ && _loc2_)
                                                {
                                                   continue;
                                                }
                                                §8!A§.getItemByName("MovieClip_Loading").setVisibility(false);
                                                if(!(_loc4_ && _loc3_))
                                                {
                                                   addr37:
                                                   if(!(_loc3_ || param1))
                                                   {
                                                      continue loop3;
                                                   }
                                                   addr44:
                                                   if(!_loc4_)
                                                   {
                                                      if(false)
                                                      {
                                                         loop13:
                                                         while(true)
                                                         {
                                                            this.§78§ = false;
                                                            addr52:
                                                            while(true)
                                                            {
                                                               if(!(_loc4_ && param1))
                                                               {
                                                                  §§goto(addr59);
                                                               }
                                                               else
                                                               {
                                                                  while(true)
                                                                  {
                                                                     if(_loc3_)
                                                                     {
                                                                        continue loop13;
                                                                     }
                                                                     continue loop16;
                                                                  }
                                                                  addr71:
                                                               }
                                                            }
                                                            continue loop11;
                                                         }
                                                         §§goto(addr174);
                                                      }
                                                      §§push(this.§6,§());
                                                      if(_loc3_)
                                                      {
                                                         §§push(§§pop());
                                                      }
                                                      var _loc2_:* = §§pop();
                                                      if(_loc3_)
                                                      {
                                                         if(!this.§5!Z§(_loc2_))
                                                         {
                                                            if(_loc3_)
                                                            {
                                                               this.end();
                                                            }
                                                         }
                                                      }
                                                      return;
                                                   }
                                                   §§goto(addr174);
                                                }
                                                §§goto(addr52);
                                             }
                                             continue loop16;
                                          }
                                          continue;
                                       }
                                       addr153:
                                       while(true)
                                       {
                                          §§push(§^!e§.§`?§);
                                          addr155:
                                          while(true)
                                          {
                                             §§pop().color = 0;
                                             continue loop16;
                                          }
                                          continue loop8;
                                       }
                                    }
                                    §§goto(addr164);
                                 }
                              }
                           }
                        }
                        while(true)
                        {
                           §§push(§^!e§.§`?§);
                           if(_loc3_)
                           {
                              if(§§pop())
                              {
                                 §§goto(addr153);
                              }
                              §§goto(addr135);
                           }
                           §§goto(addr155);
                           §§goto(addr174);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr174);
      }
      
      protected function §6,§() : String
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:* = §6u§.previousLevel;
         var _loc2_:* = §6u§.getCurrentEpisodeModel().getCutScene(_loc1_ + "-OUTRO");
         if(!(_loc3_ && this))
         {
            §§push(_loc2_);
            loop0:
            do
            {
               if(!§§pop())
               {
                  if(_loc4_ || this)
                  {
                     while(true)
                     {
                        §§push(§6u§.currentLevel);
                        addr102:
                        while(true)
                        {
                           _loc1_ = §§pop();
                        }
                     }
                     addr99:
                  }
                  while(true)
                  {
                     §§push(§6u§.getCurrentEpisodeModel().getCutScene(_loc1_ + "-INTRO"));
                     loop2:
                     while(true)
                     {
                        _loc2_ = §§pop();
                        if(_loc3_ && this)
                        {
                           break;
                        }
                        addr37:
                        while(true)
                        {
                           §§push(_loc2_);
                           if(!(_loc4_ || this))
                           {
                              continue loop2;
                           }
                           if(!_loc3_)
                           {
                              break;
                           }
                           §§goto(addr102);
                        }
                        continue loop0;
                     }
                  }
               }
               §§goto(addr37);
            }
            while(!_loc4_);
            
            return §§pop();
         }
         §§goto(addr99);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§5?§);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  loop3:
                  while(true)
                  {
                     §§push(this.§,!g§);
                     if(_loc1_ || _loc2_)
                     {
                        if(§§pop())
                        {
                           loop4:
                           while(true)
                           {
                              §§push(this.§,!g§);
                              addr91:
                              loop10:
                              while(true)
                              {
                                 §§pop().removeEventListener(Event.COMPLETE,this.§7m§);
                                 addr96:
                                 while(true)
                                 {
                                    §§push(this.§,!g§);
                                    if(!_loc2_)
                                    {
                                       break;
                                    }
                                    continue loop10;
                                 }
                                 §§pop().removeEventListener(Event.CANCEL,this.§<!&§);
                                 addr75:
                                 if(_loc1_)
                                 {
                                    addr77:
                                    loop5:
                                    while(true)
                                    {
                                       §§push(§9q§.§>!L§);
                                       if(_loc1_)
                                       {
                                          §§pop().§1!L§(true);
                                          while(_loc1_)
                                          {
                                             if(_loc1_)
                                             {
                                                super.deActivate();
                                                if(!(_loc1_ || _loc2_))
                                                {
                                                   continue;
                                                }
                                                if(_loc1_)
                                                {
                                                   continue loop4;
                                                }
                                                §§goto(addr75);
                                                continue;
                                             }
                                             loop8:
                                             while(true)
                                             {
                                                if(_loc2_)
                                                {
                                                   continue loop0;
                                                }
                                                if(_loc1_ || _loc2_)
                                                {
                                                   break;
                                                }
                                                addr131:
                                                addr117:
                                                while(true)
                                                {
                                                   §§push(§9q§.§>!L§);
                                                   break loop5;
                                                }
                                                addr117:
                                                while(true)
                                                {
                                                   this.§5?§ = null;
                                                   continue loop8;
                                                }
                                             }
                                             continue loop3;
                                          }
                                          §§goto(addr96);
                                       }
                                       break;
                                       §§goto(addr77);
                                    }
                                    while(true)
                                    {
                                       §§pop().§5!`§.removeChild(this.§5?§.sprite);
                                       continue loop0;
                                    }
                                    addr43:
                                 }
                                 §§goto(addr117);
                              }
                           }
                        }
                        §§goto(addr43);
                     }
                     §§goto(addr91);
                  }
                  addr78:
               }
               §§goto(addr131);
            }
            addr130:
         }
         while(true)
         {
            §§push(this.§5?§);
            if(_loc1_)
            {
               §§pop().dispose();
               §§goto(addr117);
            }
            else
            {
               §§goto(addr130);
            }
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§+!#§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = param2;
         if(!(_loc5_ && param2))
         {
            if("SKIP" !== _loc4_)
            {
               if("FULLSCREEN_BUTTON" === _loc4_)
               {
                  §§goto(addr75);
               }
               else
               {
                  §§push(2);
               }
               addr98:
               switch(§§pop())
               {
                  case 0:
                     this.§78§ = true;
                     if(_loc6_)
                     {
                        break;
                     }
                     break;
                  case 1:
                     § !g§.§;!'§.§%!N§();
                     if(_loc6_ || this)
                     {
                        break;
                     }
               }
               return;
            }
            if(_loc6_)
            {
               §§push(0);
               if(!(_loc6_ || param1))
               {
                  addr93:
               }
            }
            else
            {
               addr75:
               §§push(1);
               if(!(_loc5_ && this))
               {
                  §§goto(addr93);
               }
            }
            §§goto(addr98);
         }
         §§goto(addr75);
      }
      
      override protected function update(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            §§push(this.§%,§);
            loop0:
            while(true)
            {
               if(§§pop() <= §%!z§)
               {
                  §§push(this);
                  §§push(this.§%,§);
                  if(!_loc3_)
                  {
                     §§push(§§pop() + param1);
                  }
                  §§pop().§%,§ = §§pop();
                  loop1:
                  while(true)
                  {
                     if(_loc2_)
                     {
                        if(_loc3_)
                        {
                           continue loop0;
                        }
                        if(!(_loc3_ && this))
                        {
                           loop2:
                           while(true)
                           {
                              §§push(this.§78§);
                              while(true)
                              {
                                 §§push(Boolean(§§pop()));
                                 loop4:
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    loop5:
                                    while(true)
                                    {
                                       if(!§§pop())
                                       {
                                          loop6:
                                          while(true)
                                          {
                                             §§pop();
                                             loop7:
                                             while(true)
                                             {
                                                if(!_loc2_)
                                                {
                                                   continue loop1;
                                                }
                                                if(!(_loc3_ && _loc3_))
                                                {
                                                   §§push(this.§5?§);
                                                   loop8:
                                                   while(true)
                                                   {
                                                      §§push(Boolean(§§pop()));
                                                      addr93:
                                                      while(true)
                                                      {
                                                         if(_loc3_)
                                                         {
                                                            continue loop6;
                                                         }
                                                         §§push(§§pop());
                                                         if(!(_loc2_ || _loc3_))
                                                         {
                                                            break;
                                                         }
                                                         if(§§pop())
                                                         {
                                                            while(_loc2_ || param1)
                                                            {
                                                               §§pop();
                                                               continue loop8;
                                                            }
                                                            continue loop4;
                                                            addr114:
                                                         }
                                                      }
                                                      continue loop5;
                                                   }
                                                }
                                                else
                                                {
                                                   while(true)
                                                   {
                                                      §8!A§.getItemByName("Button_Skip").setVisibility(true);
                                                      addr221:
                                                      while(true)
                                                      {
                                                         §§push(this);
                                                         §§push(this.§07§);
                                                         if(_loc2_)
                                                         {
                                                            §§push(param1);
                                                            if(!_loc3_)
                                                            {
                                                               §§push(§§pop() / 1000);
                                                            }
                                                            §§push(§§pop() + §§pop());
                                                         }
                                                         §§pop().§07§ = §§pop();
                                                         break loop7;
                                                      }
                                                   }
                                                   addr216:
                                                }
                                             }
                                             addr201:
                                             while(true)
                                             {
                                                §8!A§.getItemByName("Button_Skip").mClip.alpha = this.§07§;
                                                continue loop0;
                                             }
                                          }
                                       }
                                       §§goto(addr58);
                                    }
                                 }
                              }
                              addr140:
                              while(true)
                              {
                                 continue loop2;
                              }
                           }
                        }
                        §§goto(addr221);
                     }
                     §§goto(addr178);
                  }
               }
               §§goto(addr216);
            }
         }
         §§goto(addr201);
      }
      
      private function end() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:* = null;
         if(_loc3_ || _loc2_)
         {
            §§push(this.§,!g§);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  loop5:
                  while(true)
                  {
                     §§push(this.§5?§);
                     loop6:
                     while(true)
                     {
                        §§push(Boolean(§§pop()));
                        loop7:
                        while(true)
                        {
                           §§push(§§pop());
                           loop8:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 loop9:
                                 while(true)
                                 {
                                    §§pop();
                                    loop10:
                                    while(true)
                                    {
                                       §§push(this.§5?§);
                                       while(true)
                                       {
                                          §§push(§§pop().§5"-§);
                                          addr201:
                                          while(true)
                                          {
                                             §§push(§>",§.§6!Z§);
                                             addr203:
                                             while(true)
                                             {
                                                §§push(§§pop() == §§pop());
                                             }
                                          }
                                          loop16:
                                          for(; _loc3_ || _loc2_; while(true)
                                          {
                                             §§push(this.§5?§);
                                             if(_loc2_ && _loc2_)
                                             {
                                                break;
                                             }
                                             §§goto(addr112);
                                             §§push(§§pop().§5"-§);
                                          })
                                          {
                                             if(!_loc2_)
                                             {
                                                §§push(Boolean(§§pop()));
                                                loop17:
                                                while(true)
                                                {
                                                   if(!(_loc3_ || _loc3_))
                                                   {
                                                      continue loop9;
                                                   }
                                                   §§push(§§pop());
                                                   if(!(_loc3_ || this))
                                                   {
                                                      continue loop8;
                                                   }
                                                   if(!§§pop())
                                                   {
                                                      while(true)
                                                      {
                                                         if(!§§pop())
                                                         {
                                                            §§push(§6u§.currentLevel);
                                                            loop22:
                                                            while(true)
                                                            {
                                                               if(_loc3_ || _loc1_)
                                                               {
                                                                  if(_loc2_ && _loc1_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  _loc1_ = §§pop();
                                                                  continue;
                                                               }
                                                               addr112:
                                                               while(true)
                                                               {
                                                                  §§push(§>",§.§]!W§);
                                                                  if(_loc3_)
                                                                  {
                                                                     §§push(§§pop() == §§pop());
                                                                     if(_loc3_)
                                                                     {
                                                                        continue loop17;
                                                                     }
                                                                     addr180:
                                                                     while(_loc3_)
                                                                     {
                                                                        §§pop();
                                                                        continue loop16;
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr203);
                                                                  }
                                                                  addr205:
                                                                  addr206:
                                                                  while(!§§pop())
                                                                  {
                                                                     §§push(this.§5?§);
                                                                     continue loop16;
                                                                  }
                                                                  addr206:
                                                                  if(_loc2_ && _loc2_)
                                                                  {
                                                                     continue loop5;
                                                                  }
                                                                  if(!(_loc2_ && this))
                                                                  {
                                                                     §]J§.§6"?§ = StateCutScene.STATE_NAME;
                                                                     addr224:
                                                                     if(!(_loc3_ || _loc1_))
                                                                     {
                                                                        break loop17;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §8!^§(§]J§.STATE_NAME);
                                                                        addr189:
                                                                        while(true)
                                                                        {
                                                                           if(_loc3_ || _loc1_)
                                                                           {
                                                                              §§goto(addr28);
                                                                           }
                                                                           addr283:
                                                                           while(true)
                                                                           {
                                                                              §§push(this.§,!g§);
                                                                              if(!(_loc3_ || this))
                                                                              {
                                                                                 break;
                                                                              }
                                                                              continue loop0;
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§,!g§);
                                                                     }
                                                                     addr276:
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§pop().removeEventListener(Event.COMPLETE,this.§7m§);
                                                                     §§goto(addr283);
                                                                  }
                                                                  continue loop22;
                                                               }
                                                               continue loop7;
                                                            }
                                                            §§goto(addr201);
                                                         }
                                                         if(!_loc2_)
                                                         {
                                                            break;
                                                         }
                                                         continue loop16;
                                                      }
                                                      if(_loc3_)
                                                      {
                                                         §8!^§(§4!U§.STATE_NAME);
                                                         §§goto(addr148);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr189);
                                                      }
                                                      addr128:
                                                   }
                                                   §§goto(addr180);
                                                }
                                                continue loop10;
                                             }
                                             continue loop6;
                                          }
                                       }
                                    }
                                 }
                              }
                              while(true)
                              {
                                 §§goto(addr205);
                              }
                              §§goto(addr28);
                           }
                        }
                     }
                  }
               }
               §§goto(addr276);
            }
         }
         §§goto(addr231);
      }
      
      protected function §^!m§() : String
      {
         return §?!#§.STATE_NAME;
      }
   }
}
