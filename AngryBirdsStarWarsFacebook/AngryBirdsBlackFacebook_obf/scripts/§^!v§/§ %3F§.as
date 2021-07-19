package §^!v§
{
   import §!"e§.TournamentUnlockedPopup;
   import §!"e§.§`"W§;
   import §+D§.§ #^§;
   import §6"G§.§-#C§;
   import §6"G§.§[#R§;
   import §="2§.§?!r§;
   import §[!m§.§+5§;
   import §[!m§.§[!j§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class § ?§ extends EventDispatcher
   {
      
      public static const §[!9§:String = "badge_landed";
      
      public static const §="<§:String = "popup_opened";
      
      protected static const §`">§:Number = 30;
      
      protected static const §?d§:Number = 1500;
      
      protected static const §`O§:String = "EndScreenEffectChannel";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §[!9§ = "badge_landed";
            while(true)
            {
               §="<§ = "popup_opened";
               while(_loc1_)
               {
                  addr51:
                  if(!(_loc2_ && § ?§))
                  {
                     §`O§ = "EndScreenEffectChannel";
                     addr58:
                     if(_loc2_ && _loc1_)
                     {
                        while(!_loc2_)
                        {
                           §§goto(addr51);
                           §§goto(addr58);
                        }
                        while(true)
                        {
                           §?d§ = 1500;
                           §§goto(addr49);
                        }
                        addr49:
                        addr63:
                     }
                     return;
                  }
               }
            }
         }
         while(true)
         {
            §`">§ = 30;
            §§goto(addr63);
         }
      }
      
      protected var §##@§:§[#R§;
      
      protected var §7#Z§:Boolean;
      
      protected var §4P§:Boolean;
      
      protected var §^#7§:Number;
      
      protected var §@1§:Number;
      
      protected var §3#S§:Number = 0.0;
      
      protected var §"#Q§:Number = 0.0;
      
      protected var §^c§:§ #^§;
      
      protected var §7"o§:MovieClip;
      
      public function § ?§(param1:§ #^§)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            super();
         }
         do
         {
            this.§^c§ = param1;
            do
            {
               this.init();
            }
            while(_loc3_ && _loc3_);
            
         }
         while(_loc3_ && _loc3_);
         
      }
      
      protected function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.§7"o§ = this.§^c§.getItemByName("MovieClip_TournamentUnlock").mClip;
            loop0:
            while(true)
            {
               this.§7"o§.visible = false;
               loop1:
               while(true)
               {
                  this.§@1§ = -1;
                  loop2:
                  while(!_loc2_)
                  {
                     while(true)
                     {
                        this.§7#Z§ = false;
                        if(!_loc2_)
                        {
                           continue loop1;
                        }
                        continue loop2;
                     }
                     return;
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr58);
      }
      
      public function show() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            this.§##@§ = §-#C§.§%!E§.§^!H§(this.§7"o§,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":7,
               "scaleY":7
            },0.1);
            loop0:
            while(true)
            {
               §§push(this.§##@§);
               addr80:
               while(true)
               {
                  §§pop().delay = 1;
               }
               loop6:
               while(true)
               {
                  if(_loc1_ && _loc1_)
                  {
                     continue loop0;
                  }
                  addr67:
                  §§push(this.§##@§);
                  if(!_loc1_)
                  {
                     if(_loc2_)
                     {
                        §§pop().play();
                        if(_loc1_)
                        {
                           continue;
                        }
                        addr39:
                        if(_loc2_)
                        {
                           addr41:
                           if(_loc2_)
                           {
                              return;
                           }
                           addr82:
                           while(true)
                           {
                              §§push(this.§##@§);
                              break loop6;
                           }
                        }
                        while(true)
                        {
                           §§push(this.§##@§);
                           addr57:
                           while(true)
                           {
                              §§pop().§0!X§ = this.§8!0§;
                              continue loop6;
                              §§goto(addr67);
                           }
                           §§goto(addr39);
                        }
                        §§goto(addr41);
                     }
                     break;
                  }
                  §§goto(addr57);
               }
               while(!_loc1_)
               {
                  §§pop().onComplete = this.onBadgeLanded;
                  §§goto(addr76);
               }
               §§goto(addr80);
            }
         }
         §§goto(addr82);
      }
      
      protected function §8!0§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§7"o§.visible = true;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §§push(this.§##@§);
            if(_loc2_ || _loc1_)
            {
               if(§§pop())
               {
                  loop0:
                  while(true)
                  {
                     §§push(this.§##@§);
                     addr134:
                     while(true)
                     {
                        §§pop().stop();
                        addr135:
                        while(true)
                        {
                           this.§##@§ = null;
                           addr109:
                           addr111:
                           while(_loc1_)
                           {
                              continue loop0;
                           }
                        }
                     }
                  }
               }
               loop1:
               while(true)
               {
                  this.§@1§ = -1;
                  loop2:
                  while(true)
                  {
                     this.§4P§ = true;
                     do
                     {
                        if(!(_loc2_ || _loc2_))
                        {
                           continue loop2;
                        }
                        §§push(§4#;§.singleton);
                        if(!_loc1_)
                        {
                           §§push(§§pop().popupManager);
                           if(_loc2_ || this)
                           {
                              §§push(TournamentUnlockedPopup.§%!h§);
                              if(!(_loc1_ && _loc2_))
                              {
                                 if(!§§pop().isPopupOpenById(§§pop()))
                                 {
                                    §§goto(addr25);
                                 }
                                 if(!(_loc2_ || this))
                                 {
                                    continue;
                                 }
                                 if(!_loc1_)
                                 {
                                    addr75:
                                    §§push(§4#;§.singleton.popupManager);
                                    §§push(TournamentUnlockedPopup.§%!h§);
                                 }
                                 else
                                 {
                                    §§goto(addr109);
                                 }
                              }
                              §§pop().§,"o§(§§pop());
                              continue;
                           }
                        }
                        §§goto(addr75);
                     }
                     while(_loc1_);
                     
                     if(_loc2_ || _loc2_)
                     {
                        break loop1;
                     }
                     §§goto(addr135);
                  }
                  §§goto(addr111);
               }
               addr25:
               return;
            }
            §§goto(addr134);
         }
         §§goto(addr135);
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            §§push(this.§7#Z§);
            loop0:
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
                        addr373:
                        while(true)
                        {
                           §§push(this.§4P§);
                           if(!_loc2_)
                           {
                              if(_loc2_)
                              {
                                 break;
                              }
                              §§push(!§§pop());
                           }
                           if(!(_loc3_ || _loc3_))
                           {
                              continue loop2;
                           }
                           if(!(_loc3_ || this))
                           {
                              continue loop1;
                           }
                        }
                        continue loop0;
                     }
                  }
                  while(true)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           §§push(this);
                           §§push(this.§^#7§);
                           if(_loc3_)
                           {
                              §§push(§§pop() - param1);
                           }
                           §§pop().§^#7§ = §§pop();
                           loop6:
                           while(true)
                           {
                              §§push(this.§^#7§);
                              while(true)
                              {
                                 §§push(0);
                                 addr320:
                                 addr296:
                                 while(true)
                                 {
                                    if(§§pop() <= §§pop())
                                    {
                                       while(true)
                                       {
                                          this.§`+§();
                                          addr323:
                                          while(true)
                                          {
                                          }
                                       }
                                       addr321:
                                    }
                                 }
                                 loop12:
                                 for(; !(_loc2_ && param1); §§push(this.§@1§),if(_loc2_ && param1)
                                 {
                                    continue;
                                 },§§push(0),if(!_loc2_)
                                 {
                                    if(§§pop() > §§pop())
                                    {
                                       §§goto(addr216);
                                    }
                                    this.§3#S§ = 0;
                                    §§goto(addr89);
                                 },§§goto(addr304))
                                 {
                                    §§push(0);
                                    while(_loc3_ || this)
                                    {
                                       if(§§pop() < §§pop())
                                       {
                                          addr312:
                                          if(!_loc2_)
                                          {
                                             return;
                                          }
                                       }
                                       else
                                       {
                                          loop14:
                                          while(true)
                                          {
                                             §§push(this.§^c§);
                                             loop15:
                                             while(true)
                                             {
                                                §§push(this.§^c§);
                                                loop16:
                                                while(true)
                                                {
                                                   §§push(§§pop().x - this.§3#S§);
                                                   loop17:
                                                   while(true)
                                                   {
                                                      §§pop().x = §§pop();
                                                      loop18:
                                                      while(true)
                                                      {
                                                         §§push(this.§^c§);
                                                         while(true)
                                                         {
                                                            §§push(this.§^c§);
                                                            addr262:
                                                            while(true)
                                                            {
                                                               §§push(§§pop().y - this.§"#Q§);
                                                               if(!(_loc3_ || param1))
                                                               {
                                                                  break;
                                                               }
                                                               §§pop().y = §§pop();
                                                               while(_loc3_ || _loc2_)
                                                               {
                                                                  continue loop12;
                                                               }
                                                               §§goto(addr321);
                                                            }
                                                            continue loop17;
                                                            addr116:
                                                            if(_loc2_ && _loc2_)
                                                            {
                                                               continue;
                                                            }
                                                            if(_loc2_)
                                                            {
                                                               continue loop15;
                                                            }
                                                            §§push(this.§^c§);
                                                            if(_loc3_)
                                                            {
                                                               addr129:
                                                               if(!_loc2_)
                                                               {
                                                                  §§pop().y = §§pop().y + this.§"#Q§;
                                                                  loop25:
                                                                  while(true)
                                                                  {
                                                                     if(_loc3_)
                                                                     {
                                                                        if(_loc3_ || _loc2_)
                                                                        {
                                                                           loop24:
                                                                           while(true)
                                                                           {
                                                                              §§push(this);
                                                                              §§push(this.§@1§);
                                                                              if(!(_loc2_ && _loc2_))
                                                                              {
                                                                                 §§push(param1);
                                                                                 if(_loc3_)
                                                                                 {
                                                                                    §§push(§§pop() / 10);
                                                                                 }
                                                                                 §§push(§§pop() - §§pop());
                                                                              }
                                                                              §§pop().§@1§ = §§pop();
                                                                              if(!_loc3_)
                                                                              {
                                                                                 addr61:
                                                                                 while(_loc3_ || this)
                                                                                 {
                                                                                    if(!(_loc3_ || _loc2_))
                                                                                    {
                                                                                       continue loop25;
                                                                                    }
                                                                                    if(_loc3_ || this)
                                                                                    {
                                                                                       continue loop24;
                                                                                    }
                                                                                    §§goto(addr312);
                                                                                    continue loop24;
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc3_ || this)
                                                                                    {
                                                                                       continue loop6;
                                                                                    }
                                                                                    §§goto(addr61);
                                                                                 }
                                                                                 addr61:
                                                                                 continue loop6;
                                                                                 addr89:
                                                                              }
                                                                              if(_loc3_ || param1)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              addr216:
                                                                              while(!_loc2_)
                                                                              {
                                                                                 if(!_loc3_)
                                                                                 {
                                                                                    continue loop14;
                                                                                 }
                                                                                 if(!(_loc2_ && this))
                                                                                 {
                                                                                    §§push(this);
                                                                                    §§push(Math.random() - 0.5);
                                                                                    if(!(_loc2_ && _loc2_))
                                                                                    {
                                                                                       §§push(this.§@1§);
                                                                                       if(!_loc2_)
                                                                                       {
                                                                                          §§push(§§pop() / §`">§);
                                                                                       }
                                                                                       §§push(§§pop() * §§pop());
                                                                                       if(_loc3_ || this)
                                                                                       {
                                                                                          §§push(§§pop() * 20);
                                                                                       }
                                                                                    }
                                                                                    §§pop().§3#S§ = §§pop();
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(this);
                                                                                       §§push(Math.random() - 0.5);
                                                                                       if(_loc3_)
                                                                                       {
                                                                                          §§push(this.§@1§);
                                                                                          if(_loc3_ || this)
                                                                                          {
                                                                                             §§push(§§pop() / §`">§);
                                                                                          }
                                                                                          §§push(§§pop() * §§pop());
                                                                                          if(!_loc2_)
                                                                                          {
                                                                                             addr198:
                                                                                             §§push(§§pop() * 20);
                                                                                          }
                                                                                          §§pop().§"#Q§ = §§pop();
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(this.§^c§);
                                                                                             loop28:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(this.§^c§);
                                                                                                addr151:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(_loc3_ || _loc2_)
                                                                                                   {
                                                                                                      §§pop().x = §§pop().x + this.§3#S§;
                                                                                                      while(_loc3_)
                                                                                                      {
                                                                                                         §§push(this.§^c§);
                                                                                                         if(!(_loc3_ || this))
                                                                                                         {
                                                                                                            continue loop28;
                                                                                                         }
                                                                                                         §§goto(addr116);
                                                                                                      }
                                                                                                      continue loop18;
                                                                                                      addr163:
                                                                                                   }
                                                                                                   continue loop16;
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          addr201:
                                                                                       }
                                                                                       §§goto(addr198);
                                                                                    }
                                                                                    addr256:
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr373);
                                                                                 }
                                                                              }
                                                                              §§goto(addr274);
                                                                              §§goto(addr201);
                                                                           }
                                                                           addr145:
                                                                           return;
                                                                           addr56:
                                                                        }
                                                                        §§goto(addr256);
                                                                     }
                                                                     §§goto(addr163);
                                                                  }
                                                               }
                                                               §§goto(addr262);
                                                            }
                                                            §§goto(addr151);
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       §§goto(addr323);
                                    }
                                    §§goto(addr320);
                                 }
                              }
                           }
                        }
                     }
                     while(true)
                     {
                        §§goto(addr296);
                     }
                  }
               }
            }
         }
         §§goto(addr56);
      }
      
      private function onBadgeLanded() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §?!r§.§"#_§("Hiscore_Badge",§`O§);
         }
         loop0:
         while(true)
         {
            this.§4P§ = false;
            while(true)
            {
               this.§7#Z§ = true;
               addr69:
               while(_loc1_)
               {
                  continue loop0;
               }
            }
         }
      }
      
      protected function §`+§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§4P§ = true;
         }
         var _loc1_:§[!j§ = new TournamentUnlockedPopup(§`"W§.§+v§,§+5§.TOP,TournamentUnlockedPopup.§""l§);
         if(!_loc3_)
         {
            §4#;§.singleton.popupManager.openPopup(_loc1_,true,true,true);
            do
            {
               dispatchEvent(new Event(§="<§));
            }
            while(!(_loc2_ || _loc2_));
            
         }
      }
      
      private function §[!?§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§3#S§ = 0;
         }
         while(true)
         {
            this.§"#Q§ = 0;
            while(_loc2_)
            {
               this.§@1§ = §`">§;
               if(_loc2_)
               {
                  return;
               }
            }
         }
      }
   }
}
