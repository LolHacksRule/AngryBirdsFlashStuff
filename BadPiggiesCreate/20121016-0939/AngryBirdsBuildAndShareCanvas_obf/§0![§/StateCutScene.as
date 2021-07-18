package §0![§
{
   import §"v§.§3!w§;
   import §%%§.§5!a§;
   import §%%§.§6!_§;
   import §%c§.§=!X§;
   import §&"5§.§3s§;
   import §&"5§.§7!P§;
   import §'!A§.§-!S§;
   import §1"2§.§'s§;
   import §1"2§.§`7§;
   import §5"-§.§5y§;
   import §6p§.§?%§;
   import flash.events.Event;
   
   public class StateCutScene extends §5y§
   {
      
      public static const §'=§:String = "StateCutScene";
      
      private static const §`">§:Number = 500;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §'=§ = "StateCutScene";
         }
         do
         {
            §`">§ = 500;
         }
         while(!_loc2_);
         
      }
      
      private var §3!m§:§6!_§;
      
      private var §^6§:Boolean;
      
      private var §9E§:Number = 0;
      
      private var §<+§:Number = 0;
      
      private var §,E§:§3s§;
      
      public function StateCutScene(param1:Boolean = true, param2:String = "StateCutScene")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            super(param1,param2);
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.init();
         }
         while(true)
         {
            §?E§ = new §'s§(this);
            while(!_loc1_)
            {
               §?E§.init(§`7§.§>"?§.Views.View_CutScene[0]);
               if(_loc2_)
               {
                  return;
               }
            }
         }
      }
      
      protected function §4!W§(param1:String) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            if(param1)
            {
               loop0:
               while(true)
               {
                  §§push(this.§,E§);
                  while(true)
                  {
                     if(!§§pop())
                     {
                        this.§%!G§();
                        if(_loc2_ || _loc2_)
                        {
                           if(!_loc2_)
                           {
                              while(true)
                              {
                                 §§push(this.§,E§);
                                 loop3:
                                 while(true)
                                 {
                                    §§pop().addEventListener(Event.CANCEL,this.§8f§);
                                    addr113:
                                    loop4:
                                    while(!(_loc3_ && _loc3_))
                                    {
                                       if(!(_loc3_ && this))
                                       {
                                          continue loop3;
                                       }
                                       addr172:
                                       loop11:
                                       while(true)
                                       {
                                          §§push(this.§,E§);
                                          addr142:
                                          while(!(_loc2_ || param1))
                                          {
                                             while(true)
                                             {
                                                §§pop().removeEventListener(Event.COMPLETE,this.§+"+§);
                                                continue loop11;
                                             }
                                             continue loop11;
                                          }
                                          addr149:
                                          §§pop().removeEventListener(Event.CANCEL,this.§8f§);
                                          break loop4;
                                       }
                                    }
                                    while(true)
                                    {
                                       if(!_loc3_)
                                       {
                                          continue loop0;
                                       }
                                       addr188:
                                       while(true)
                                       {
                                          §?E§.getItemByName("MovieClip_Loading").setVisibility(true);
                                          §§goto(addr167);
                                       }
                                       §§goto(addr149);
                                    }
                                    continue loop0;
                                 }
                                 §§pop().addEventListener(Event.COMPLETE,this.§+"+§);
                              }
                           }
                           §§goto(addr31);
                        }
                        §§goto(addr87);
                     }
                     §§goto(addr188);
                  }
               }
            }
            else
            {
               §§push(false);
               if(_loc2_)
               {
                  return §§pop();
               }
            }
            §§goto(addr33);
         }
         §§goto(addr172);
      }
      
      private function §+"+§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            §§push(this.§,E§);
            loop0:
            while(§§pop())
            {
               loop1:
               while(true)
               {
                  §§push(this.§,E§);
                  while(true)
                  {
                     §§pop().removeEventListener(Event.COMPLETE,this.§+"+§);
                     while(true)
                     {
                        §§push(this.§,E§);
                        if(!(_loc2_ || param1))
                        {
                           break;
                        }
                        if(_loc2_)
                        {
                           §§pop().removeEventListener(Event.CANCEL,this.§8f§);
                           loop4:
                           while(!(_loc3_ && this))
                           {
                              while(true)
                              {
                                 this.§%!G§();
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    if(!_loc3_)
                                    {
                                       break loop0;
                                    }
                                    continue loop1;
                                 }
                                 continue loop4;
                              }
                           }
                           continue;
                        }
                        continue loop0;
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr75);
      }
      
      private function §%!G§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc2_))
         {
            §?E§.getItemByName("MovieClip_Loading").setVisibility(false);
         }
         §§push(this.§#!t§());
         if(!(_loc4_ && _loc1_))
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         var _loc2_:§7!P§ = §7!P§.§2=§;
         if(!_loc4_)
         {
            §§push(this.§,E§);
            if(!(_loc4_ && _loc1_))
            {
               if(§§pop())
               {
                  if(_loc3_ || _loc2_)
                  {
                     addr64:
                     _loc2_ = this.§,E§.§7!J§;
                     this.§3!m§ = §5!a§.§7!x§(_loc1_,_loc2_);
                     addr67:
                     if(_loc3_)
                     {
                        §§push(this.§3!m§);
                        while(true)
                        {
                           if(§§pop())
                           {
                              addr163:
                              loop9:
                              while(true)
                              {
                                 AngryBirdsFP11.§>" §.§^"9§(_loc1_);
                                 while(true)
                                 {
                                    §§push(§=!X§.§!'§);
                                    loop3:
                                    while(true)
                                    {
                                       §§push(true);
                                       addr148:
                                       while(true)
                                       {
                                          §§pop().§;p§(§§pop());
                                          addr159:
                                          while(true)
                                          {
                                             §§push(§=!X§.§!'§);
                                             continue loop3;
                                          }
                                          continue loop3;
                                       }
                                    }
                                    continue loop9;
                                 }
                              }
                              addr163:
                           }
                           §§goto(addr86);
                        }
                     }
                     §§goto(addr163);
                  }
                  §§goto(addr143);
               }
               §§goto(addr67);
            }
            §§goto(addr64);
         }
         §§goto(addr163);
      }
      
      protected function §8f§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            §§push(this.§,E§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  loop4:
                  while(true)
                  {
                     §§push(this.§,E§);
                     loop5:
                     while(true)
                     {
                        §§pop().removeEventListener(Event.COMPLETE,this.§+"+§);
                        addr87:
                        while(true)
                        {
                           §§push(this.§,E§);
                           if(!_loc3_)
                           {
                              continue loop5;
                           }
                           if(_loc2_)
                           {
                              break;
                           }
                           §§pop().removeEventListener(Event.CANCEL,this.§8f§);
                           while(_loc2_)
                           {
                              continue loop4;
                           }
                           continue loop5;
                        }
                        continue loop0;
                     }
                  }
                  addr80:
               }
               while(true)
               {
                  this.end();
                  if(_loc3_)
                  {
                     if(_loc3_ || this)
                     {
                        break;
                     }
                     §§goto(addr87);
                  }
                  §§goto(addr64);
               }
               return;
            }
         }
         §§goto(addr80);
      }
      
      override public function activate() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc1_))
         {
            super.activate();
            loop0:
            while(true)
            {
               if(!this.§,E§)
               {
                  if(_loc3_)
                  {
                     this.§,E§ = §=!X§.§!'§.§;!p§;
                  }
                  while(true)
                  {
                  }
                  addr150:
               }
               loop2:
               while(true)
               {
                  §§push(§?%§.§%b§);
                  if(!_loc2_)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           §§push(§?%§.§%b§);
                           addr136:
                           while(true)
                           {
                              §§pop().color = 0;
                              addr138:
                              while(true)
                              {
                              }
                           }
                        }
                        addr134:
                     }
                     while(true)
                     {
                        this.§9E§ = 0;
                        loop5:
                        while(true)
                        {
                           this.§<+§ = 0;
                           while(!_loc2_)
                           {
                              §?E§.getItemByName("Button_Skip").setVisibility(false);
                              loop7:
                              while(true)
                              {
                                 §?E§.getItemByName("Button_Skip").mClip.alpha = this.§9E§;
                                 loop8:
                                 while(!_loc2_)
                                 {
                                    AngryBirdsFP11.§@!1§();
                                    continue loop7;
                                    addr38:
                                    if(!(_loc2_ && _loc1_))
                                    {
                                       while(false)
                                       {
                                          while(true)
                                          {
                                             this.§^6§ = false;
                                             addr51:
                                             while(!(_loc2_ && this))
                                             {
                                                if(!(_loc3_ || _loc3_))
                                                {
                                                   continue loop5;
                                                }
                                                if(_loc3_)
                                                {
                                                   §?E§.getItemByName("MovieClip_Loading").setVisibility(false);
                                                   if(_loc2_ && _loc3_)
                                                   {
                                                      continue;
                                                   }
                                                   §§goto(addr38);
                                                }
                                                else
                                                {
                                                   §§goto(addr134);
                                                }
                                             }
                                             continue loop7;
                                          }
                                          continue loop8;
                                       }
                                       §§push(this.§#!t§());
                                       if(!(_loc2_ && this))
                                       {
                                          §§push(§§pop());
                                       }
                                       var _loc1_:* = §§pop();
                                       if(_loc3_ || this)
                                       {
                                          if(!this.§4!W§(_loc1_))
                                          {
                                             if(!_loc2_)
                                             {
                                                this.end();
                                             }
                                          }
                                       }
                                       return;
                                       addr45:
                                    }
                                 }
                                 continue loop0;
                              }
                           }
                           continue loop2;
                        }
                        §§goto(addr138);
                     }
                  }
                  §§goto(addr136);
               }
            }
         }
         §§goto(addr45);
      }
      
      protected function §#!t§() : String
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(§3!w§.§8H§);
         if(!_loc4_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         §§push(§3!w§.§4I§().§3!2§(_loc1_ + "-OUTRO"));
         if(!(_loc4_ && _loc2_))
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(!(_loc4_ && _loc3_))
         {
            §§push(_loc2_);
            loop0:
            do
            {
               if(!§§pop())
               {
                  if(!(_loc4_ && this))
                  {
                     while(true)
                     {
                        §§push(§3!w§.§%n§);
                        addr123:
                        while(true)
                        {
                           §§push(§§pop());
                           addr124:
                           while(true)
                           {
                              _loc1_ = §§pop();
                           }
                        }
                     }
                     addr121:
                  }
                  loop1:
                  while(true)
                  {
                     §§push(§3!w§.§4I§().§3!2§(_loc1_ + "-INTRO"));
                     loop2:
                     while(_loc3_)
                     {
                        §§push(§§pop());
                        loop3:
                        while(_loc3_ || _loc3_)
                        {
                           _loc2_ = §§pop();
                           if(!(_loc4_ && this))
                           {
                              while(true)
                              {
                                 §§push(_loc2_);
                                 if(_loc3_ || this)
                                 {
                                    if(_loc3_)
                                    {
                                       break;
                                    }
                                    continue loop2;
                                 }
                                 continue loop3;
                              }
                              continue loop0;
                              continue;
                           }
                           continue loop1;
                        }
                        §§goto(addr123);
                     }
                     §§goto(addr124);
                  }
               }
               §§goto(addr45);
            }
            while(_loc4_ && _loc1_);
            
            return §§pop();
         }
         §§goto(addr121);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§3!m§);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  loop6:
                  while(true)
                  {
                     §§push(this.§,E§);
                     if(!_loc1_)
                     {
                        if(§§pop())
                        {
                           while(true)
                           {
                              §§push(this.§,E§);
                              addr109:
                              loop12:
                              while(true)
                              {
                                 §§pop().removeEventListener(Event.COMPLETE,this.§+"+§);
                                 addr114:
                                 loop11:
                                 while(_loc2_ || _loc2_)
                                 {
                                    if(_loc2_)
                                    {
                                       while(true)
                                       {
                                          §§push(this.§,E§);
                                          if(!_loc2_)
                                          {
                                             continue loop12;
                                          }
                                          §§pop().removeEventListener(Event.CANCEL,this.§8f§);
                                          while(true)
                                          {
                                          }
                                       }
                                       addr123:
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                          this.§3!m§ = null;
                                          break loop11;
                                       }
                                       addr140:
                                    }
                                    continue loop12;
                                 }
                                 continue loop6;
                              }
                              addr29:
                              if(!(_loc1_ && this))
                              {
                                 return;
                              }
                           }
                        }
                        loop8:
                        while(true)
                        {
                           §§push(§=!X§.§!'§);
                           if(_loc2_ || _loc1_)
                           {
                              §§pop().§'7§(true);
                              loop9:
                              while(true)
                              {
                                 §3!w§.§8H§ = null;
                                 while(true)
                                 {
                                    if(!_loc2_)
                                    {
                                       continue loop9;
                                    }
                                    if(!(_loc2_ || _loc1_))
                                    {
                                       continue loop8;
                                    }
                                    if(!(_loc1_ && _loc1_))
                                    {
                                       if(_loc1_)
                                       {
                                          break;
                                       }
                                       if(_loc2_ || _loc2_)
                                       {
                                          continue;
                                       }
                                       addr154:
                                       while(true)
                                       {
                                          §§push(§=!X§.§!'§);
                                          break loop8;
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr114);
                                    }
                                 }
                                 continue loop0;
                              }
                           }
                           break;
                        }
                        while(true)
                        {
                           §§pop().§+!=§.removeChild(this.§3!m§.sprite);
                           continue loop0;
                        }
                     }
                     §§goto(addr109);
                  }
               }
               §§goto(addr154);
            }
         }
         §§goto(addr123);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§-!S§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = param2;
         if(!_loc6_)
         {
            if("SKIP" !== _loc4_)
            {
               if("FULLSCREEN_BUTTON" === _loc4_)
               {
                  §§goto(addr74);
               }
               else
               {
                  §§push(2);
               }
               addr92:
               switch(§§pop())
               {
                  case 0:
                     this.§^6§ = true;
                     if(!(_loc6_ && this))
                     {
                        break;
                     }
                     addr50:
                     break;
                  case 1:
                     AngryBirdsFP11.§%d§.§9+§();
                     if(!(_loc6_ && this))
                     {
                        §§goto(addr50);
                     }
               }
               return;
            }
            if(_loc5_)
            {
               addr62:
               §§push(0);
               if(_loc5_ || param1)
               {
               }
            }
            else
            {
               addr74:
               §§push(1);
               if(!_loc5_)
               {
               }
            }
            §§goto(addr92);
            §§goto(addr74);
         }
         §§goto(addr62);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §§push(this.§<+§);
            loop0:
            while(true)
            {
               if(§§pop() <= §`">§)
               {
                  §§push(this);
                  §§push(this.§<+§);
                  if(_loc4_ || _loc2_)
                  {
                     §§push(§§pop() + param1);
                  }
                  §§pop().§<+§ = §§pop();
                  loop1:
                  while(true)
                  {
                     if(!_loc3_)
                     {
                        while(true)
                        {
                           addr37:
                           while(true)
                           {
                              if(this.§^6§)
                              {
                                 if(_loc3_ && _loc3_)
                                 {
                                    return §5y§.STATE_STATUS_COMPLETED;
                                 }
                                 addr71:
                                 continue loop1;
                              }
                              §§push(super.run(param1));
                              if(!(_loc3_ && _loc3_))
                              {
                                 §§push(int(§§pop()));
                              }
                              var _loc2_:* = §§pop();
                              if(!_loc3_)
                              {
                                 §§push(_loc2_);
                                 if(!_loc3_)
                                 {
                                    if(§§pop() == §5y§.STATE_STATUS_RUNNING)
                                    {
                                       addr232:
                                       if(mNextState.length <= 0)
                                       {
                                          addr222:
                                          §§push(Boolean(this.§3!m§));
                                          if(Boolean(this.§3!m§))
                                          {
                                             addr228:
                                             §§pop();
                                             §§goto(addr229);
                                          }
                                          addr198:
                                          if(!§§pop())
                                          {
                                             if(_loc4_ || param1)
                                             {
                                                if(_loc4_)
                                                {
                                                   if(_loc4_ || param1)
                                                   {
                                                      this.end();
                                                      addr217:
                                                      if(_loc3_)
                                                      {
                                                         §§goto(addr222);
                                                      }
                                                      if(!_loc3_)
                                                      {
                                                         §§goto(addr177);
                                                      }
                                                      addr258:
                                                      return _loc2_;
                                                      addr257:
                                                   }
                                                   addr259:
                                                   §§goto(addr232);
                                                }
                                                addr229:
                                                if(!_loc3_)
                                                {
                                                   §§push(this.§3!m§);
                                                   if(!_loc3_)
                                                   {
                                                      §§push(§§pop().update(param1));
                                                      if(_loc4_)
                                                      {
                                                         if(_loc4_)
                                                         {
                                                            if(_loc4_)
                                                            {
                                                               §§goto(addr198);
                                                            }
                                                            §§goto(addr222);
                                                         }
                                                         §§goto(addr228);
                                                      }
                                                      §§goto(addr198);
                                                   }
                                                   §§goto(addr222);
                                                }
                                                §§goto(addr237);
                                             }
                                             §§goto(addr217);
                                          }
                                          addr177:
                                          return §5y§.STATE_STATUS_RUNNING;
                                       }
                                       addr237:
                                       return §5y§.STATE_STATUS_COMPLETED;
                                    }
                                    §§goto(addr257);
                                 }
                                 §§goto(addr258);
                              }
                              §§goto(addr259);
                           }
                        }
                        addr90:
                     }
                  }
               }
               while(true)
               {
                  §?E§.getItemByName("Button_Skip").setVisibility(true);
                  do
                  {
                     §§push(this);
                     §§push(this.§9E§);
                     if(!_loc3_)
                     {
                        §§push(param1);
                        if(!(_loc3_ && _loc3_))
                        {
                           §§push(§§pop() / 1000);
                        }
                        §§push(§§pop() + §§pop());
                     }
                     §§pop().§9E§ = §§pop();
                  }
                  while(!(_loc4_ || this));
                  
                  §?E§.getItemByName("Button_Skip").mClip.alpha = this.§9E§;
                  continue loop0;
               }
            }
         }
         §§goto(addr90);
      }
      
      private function end() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:* = null;
         if(_loc2_)
         {
            §§push(this.§3!m§);
            while(true)
            {
               §§push(Boolean(§§pop()));
               loop1:
               while(true)
               {
                  §§push(§§pop());
                  loop2:
                  while(true)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           §§pop();
                           addr228:
                           while(true)
                           {
                              §§push(this.§3!m§);
                              addr201:
                              while(true)
                              {
                                 §§push(§§pop().§^v§);
                                 addr202:
                                 while(true)
                                 {
                                    §§push(§6!_§.§7_§);
                                    addr204:
                                    while(true)
                                    {
                                       §§push(§§pop() == §§pop());
                                    }
                                 }
                              }
                           }
                        }
                        addr227:
                     }
                     while(true)
                     {
                        loop9:
                        for(; !§§pop(); while(_loc2_ || _loc3_)
                        {
                           §§goto(addr190);
                        })
                        {
                           §§push(this.§3!m§);
                           loop10:
                           while(true)
                           {
                              §§push(Boolean(§§pop()));
                              if(_loc3_)
                              {
                                 continue loop9;
                              }
                              §§push(§§pop());
                              if(_loc3_)
                              {
                                 break;
                              }
                              if(§§pop())
                              {
                                 continue loop9;
                              }
                              addr221:
                              loop11:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    if(_loc2_ || _loc3_)
                                    {
                                       if(_loc3_)
                                       {
                                          break loop9;
                                       }
                                       mNextState = §'"6§.§'=§;
                                       addr170:
                                    }
                                    §§goto(addr170);
                                 }
                                 else
                                 {
                                    §§push(§3!w§.§%n§);
                                    loop12:
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       loop13:
                                       while(!(_loc3_ && _loc1_))
                                       {
                                          _loc1_ = §§pop();
                                          while(true)
                                          {
                                             if(!_loc3_)
                                             {
                                                if(!(_loc2_ || _loc3_))
                                                {
                                                   break loop11;
                                                }
                                                §§push(_loc1_);
                                                if(!_loc3_)
                                                {
                                                   continue loop12;
                                                }
                                                continue loop13;
                                             }
                                             continue loop10;
                                          }
                                          §§goto(addr201);
                                       }
                                       addr127:
                                       while(true)
                                       {
                                          if(!_loc3_)
                                          {
                                             §§push(§6!_§.§0!Q§);
                                             if(!(_loc3_ && _loc3_))
                                             {
                                                §§push(§§pop() == §§pop());
                                                if(!(_loc2_ || _loc1_))
                                                {
                                                   continue loop9;
                                                }
                                                if(_loc2_ || _loc2_)
                                                {
                                                   if(!_loc3_)
                                                   {
                                                      continue loop11;
                                                   }
                                                   continue loop1;
                                                }
                                                §§goto(addr227);
                                             }
                                             §§goto(addr204);
                                          }
                                          §§goto(addr202);
                                       }
                                    }
                                 }
                                 §§goto(addr22);
                              }
                              mNextState = §7B§.§'=§;
                              §§goto(addr197);
                           }
                           continue loop2;
                        }
                        §7B§.§[""§ = StateCutScene.§'=§;
                        §§goto(addr221);
                     }
                  }
               }
            }
         }
         §§goto(addr170);
      }
      
      protected function §]!W§() : String
      {
         return §0!v§.§'=§;
      }
   }
}
