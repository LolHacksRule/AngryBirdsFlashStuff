package §<!U§
{
   import § !+§.§0Z§;
   import §!J§.§[&§;
   import §+?§.§,!N§;
   import §+?§.§@]§;
   import §8!8§.§4!C§;
   import §@,§.§4h§;
   import §@R§.§]^§;
   import §[M§.§&N§;
   import §]2§.§[4§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class §5!5§ extends §[4§
   {
      
      public static const §`O§:String = "CreditsState";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §`O§ = "CreditsState";
         }
      }
      
      private var §+h§:§&N§ = null;
      
      private var §%!!§:Boolean;
      
      private var §>F§:Number;
      
      private var §0!@§:Number;
      
      private var §%!D§:Number;
      
      private var §8!3§:Number;
      
      private var §9!W§:Number;
      
      public function §5!5§(param1:Boolean = false, param2:String = "CreditsState")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc3_))
         {
            super(param1,param2);
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            super.init();
         }
         loop0:
         while(true)
         {
            §"c§ = new §,!N§(this);
            while(true)
            {
               §"c§.init(§@]§.§3!6§.Views.View_Credits[0]);
               while(_loc2_ || _loc1_)
               {
                  if(_loc2_)
                  {
                     this.§+h§ = new §&N§(§[&§.§&!'§,"BACKGROUND_CHEETOS_1");
                     if(!_loc1_)
                     {
                        return;
                     }
                     continue;
                     continue;
                  }
                  continue loop0;
               }
            }
         }
      }
      
      override public function activate() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            super.activate();
            loop0:
            while(true)
            {
               §§push(§0Z§.§4J§);
               if(!(_loc2_ && _loc3_))
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§push(§0Z§.§4J§);
                        addr100:
                        while(true)
                        {
                           §§pop().start();
                           addr101:
                           while(true)
                           {
                           }
                        }
                        addr46:
                        if(!(_loc3_ || this))
                        {
                           continue;
                        }
                        §0Z§.§-m§.§5!T§ = false;
                        if(_loc3_ || _loc3_)
                        {
                           addr37:
                           if(false)
                           {
                              while(true)
                              {
                                 §,l§.§'!§();
                                 addr42:
                                 while(true)
                                 {
                                    if(!_loc2_)
                                    {
                                       if(!_loc3_)
                                       {
                                          break;
                                       }
                                       §§goto(addr46);
                                    }
                                    loop7:
                                    while(true)
                                    {
                                       if(_loc3_)
                                       {
                                          if(!(_loc3_ || _loc2_))
                                          {
                                             break;
                                          }
                                          continue loop0;
                                       }
                                       addr80:
                                       while(true)
                                       {
                                          this.§+h§.init();
                                          continue loop7;
                                       }
                                    }
                                    addr86:
                                    while(true)
                                    {
                                       §[&§.§2P§(this.§+h§);
                                       §§goto(addr80);
                                    }
                                 }
                                 §§goto(addr101);
                                 §§goto(addr37);
                              }
                              addr39:
                           }
                           var _loc1_:§4!C§ = §"c§.container.getItemByName("Container_Credits") as §4!C§;
                           if(_loc3_)
                           {
                              §"c§.addEventListener(MouseEvent.MOUSE_MOVE,this.§ I§);
                              loop10:
                              while(true)
                              {
                                 §"c§.addEventListener(MouseEvent.MOUSE_DOWN,this.§]z§);
                                 while(true)
                                 {
                                    §"c§.addEventListener(MouseEvent.MOUSE_UP,this.§@!T§);
                                    loop12:
                                    while(_loc3_)
                                    {
                                       addr193:
                                       if(!(_loc2_ && _loc3_))
                                       {
                                          this.§9!W§ = _loc1_.height + §[&§.§#S§ * §[&§.§6!H§;
                                          loop19:
                                          do
                                          {
                                             §§push(this);
                                             §§push(this.§9!W§);
                                             if(_loc3_ || this)
                                             {
                                                §§push(-§§pop());
                                             }
                                             §§pop().§8!3§ = §§pop();
                                             loop20:
                                             for(; _loc3_; §"c§.setText(§4h§.§]'§,"TextField_Version_Number"),if(!(_loc2_ && _loc1_))
                                             {
                                                continue loop19;
                                             })
                                             {
                                                addr165:
                                                if(!(_loc2_ && _loc3_))
                                                {
                                                   continue;
                                                }
                                                addr219:
                                                while(true)
                                                {
                                                   this.§8!3§ = 0;
                                                   addr210:
                                                   while(true)
                                                   {
                                                      this.§>F§ = 0;
                                                      addr205:
                                                      while(true)
                                                      {
                                                         this.§0!@§ = 0;
                                                         break loop20;
                                                      }
                                                   }
                                                   §§goto(addr165);
                                                }
                                             }
                                             while(true)
                                             {
                                                if(_loc3_)
                                                {
                                                   if(_loc3_)
                                                   {
                                                      §§goto(addr193);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr210);
                                                   }
                                                }
                                                §§goto(addr205);
                                             }
                                             continue loop12;
                                          }
                                          while(_loc2_);
                                          
                                          if(!_loc3_)
                                          {
                                             while(true)
                                             {
                                                §"c§.stage.addEventListener(Event.MOUSE_LEAVE,this.§2,§);
                                                §§goto(addr219);
                                             }
                                             addr227:
                                          }
                                          if(!_loc2_)
                                          {
                                             return;
                                          }
                                          continue loop10;
                                       }
                                    }
                                 }
                              }
                           }
                           while(true)
                           {
                              §"c§.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
                              §§goto(addr227);
                           }
                        }
                        §§goto(addr42);
                     }
                  }
                  while(true)
                  {
                     §[&§.§&!'§.§>!D§(true);
                     §§goto(addr86);
                     §§goto(addr101);
                  }
               }
               §§goto(addr100);
            }
         }
         §§goto(addr80);
      }
      
      private function § I§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            if(this.§%!!§)
            {
               while(true)
               {
                  §§push(this.§%!D§);
                  if(_loc3_ || _loc3_)
                  {
                     §§push(§§pop() - §"c§.mouseY);
                  }
                  loop1:
                  while(true)
                  {
                     §§push(0);
                     while(true)
                     {
                        if(§§pop() <= §§pop())
                        {
                           §§push(this.§%!D§);
                           if(_loc3_)
                           {
                              if(!_loc3_)
                              {
                                 continue loop1;
                              }
                              §§push(§§pop() - §"c§.mouseY);
                           }
                           §§push(0);
                           if(!_loc2_)
                           {
                              if(§§pop() < §§pop())
                              {
                                 if(!_loc2_)
                                 {
                                    §§push(this);
                                    §§push(this.§%!D§);
                                    if(!_loc2_)
                                    {
                                       §§push(§§pop() - §"c§.mouseY);
                                    }
                                    §§pop().§>F§ = §§pop();
                                 }
                                 while(true)
                                 {
                                    if(!_loc2_)
                                    {
                                       continue;
                                    }
                                 }
                                 break;
                                 addr91:
                              }
                              break;
                           }
                           continue;
                        }
                        if(!_loc2_)
                        {
                           §§push(this);
                           §§push(this.§%!D§);
                           if(!(_loc2_ && param1))
                           {
                              §§push(§§pop() - §"c§.mouseY);
                           }
                           §§pop().§>F§ = §§pop();
                        }
                        this.§%!D§ = §"c§.mouseY;
                        §§goto(addr91);
                     }
                  }
                  if(_loc2_ && param1)
                  {
                     continue;
                  }
                  addr25:
                  return;
                  addr45:
               }
            }
            §§goto(addr25);
         }
         §§goto(addr45);
      }
      
      private function §]z§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§%!!§ = true;
         }
         do
         {
            this.§%!D§ = §"c§.mouseY;
         }
         while(!(_loc3_ || _loc2_));
         
      }
      
      private function §@!T§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§%!!§ = false;
         }
      }
      
      private function §2,§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§%!!§ = false;
         }
      }
      
      private function onMouseWheel(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            if(param1.delta < 0)
            {
               if(!(_loc3_ && this))
               {
                  this.§0!@§ = 16;
                  addr80:
                  while(true)
                  {
                  }
                  addr80:
               }
               §§goto(addr80);
            }
            while(param1.delta > 0)
            {
               if(!_loc3_)
               {
                  if(!(_loc2_ || param1))
                  {
                     continue;
                  }
                  this.§0!@§ = -16;
               }
               break;
            }
            return;
         }
         §§goto(addr80);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(super.run(param1));
         if(!_loc4_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!_loc4_)
         {
            §§push(_loc2_);
            if(_loc3_ || param1)
            {
               if(§§pop() == §[4§.STATE_STATUS_RUNNING)
               {
                  loop0:
                  while(true)
                  {
                     §[&§.§&#§.update(param1);
                     while(true)
                     {
                        (§"c§.getItemByName("Container_Credits") as §4!C§).y = Math.floor(-this.§8!3§);
                        loop2:
                        do
                        {
                           this.§"m§(param1);
                           loop3:
                           while(true)
                           {
                              (§"c§.getItemByName("Container_Credits") as §4!C§).setVisibility(true);
                              while(true)
                              {
                                 if(_loc3_ || param1)
                                 {
                                    if(_loc3_)
                                    {
                                       if(!(_loc3_ || this))
                                       {
                                          return _loc2_;
                                       }
                                       addr139:
                                       if(mNextState.length <= 0)
                                       {
                                          break;
                                       }
                                       if(_loc3_)
                                       {
                                          continue loop2;
                                       }
                                       continue;
                                    }
                                    continue loop0;
                                 }
                                 continue loop3;
                              }
                              return §[4§.STATE_STATUS_RUNNING;
                           }
                        }
                        while(!_loc3_);
                        
                        return §[4§.STATE_STATUS_COMPLETED;
                     }
                  }
               }
            }
            §§goto(addr139);
         }
         §§goto(addr141);
      }
      
      private function §"m§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            §§push(this);
            §§push(this.§8!3§);
            if(_loc2_ || _loc3_)
            {
               §§push(§§pop() + this.§>F§);
            }
            §§pop().§8!3§ = §§pop();
            while(true)
            {
               §§push(this);
               §§push(this.§8!3§);
               if(_loc2_)
               {
                  §§push(§§pop() + this.§0!@§);
               }
               §§pop().§8!3§ = §§pop();
               loop1:
               while(!_loc3_)
               {
                  §§push(this.§%!!§);
                  while(true)
                  {
                     §§push(!§§pop());
                     while(true)
                     {
                        if(§§pop())
                        {
                           while(true)
                           {
                              §§pop();
                              addr235:
                              while(true)
                              {
                                 §§push(Math.abs(this.§0!@§) < param1 / 15);
                              }
                           }
                           addr234:
                        }
                        while(true)
                        {
                           loop7:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 loop8:
                                 while(!_loc3_)
                                 {
                                    §§push(this);
                                    §§push(this.§8!3§);
                                    if(!(_loc3_ && param1))
                                    {
                                       §§push(param1);
                                       if(_loc2_ || _loc3_)
                                       {
                                          §§push(§§pop() / 15);
                                       }
                                       §§push(§§pop() + §§pop());
                                    }
                                    §§pop().§8!3§ = §§pop();
                                    while(_loc2_ || param1)
                                    {
                                       while(_loc2_ || _loc2_)
                                       {
                                          §§push(this);
                                          §§push(this.§>F§);
                                          if(!(_loc3_ && _loc3_))
                                          {
                                             §§push(§§pop() * 0.9);
                                          }
                                          §§pop().§>F§ = §§pop();
                                          while(true)
                                          {
                                             if(!(_loc3_ && this))
                                             {
                                                if(_loc3_)
                                                {
                                                   break;
                                                }
                                                continue;
                                             }
                                             addr154:
                                             addr140:
                                             while(true)
                                             {
                                                if(_loc3_ && this)
                                                {
                                                   addr147:
                                                   this.§8!3§ = this.§9!W§;
                                                }
                                                else
                                                {
                                                   addr180:
                                                }
                                                if(!(_loc3_ && this))
                                                {
                                                   break;
                                                }
                                                continue loop8;
                                             }
                                             while(true)
                                             {
                                                §§push(this);
                                                §§push(-§,l§.§#S§);
                                                if(_loc2_ || param1)
                                                {
                                                   §§push(§§pop() * §[&§.§6!H§);
                                                }
                                                §§pop().§8!3§ = §§pop();
                                                while(true)
                                                {
                                                   continue loop7;
                                                   addr51:
                                                   if(!(_loc3_ && _loc2_))
                                                   {
                                                      addr24:
                                                      return;
                                                   }
                                                }
                                                §§goto(addr147);
                                             }
                                          }
                                          continue loop7;
                                       }
                                    }
                                    §§goto(addr235);
                                 }
                                 continue loop1;
                              }
                              while(true)
                              {
                                 §§push(this.§8!3§);
                                 loop11:
                                 while(true)
                                 {
                                    §§push(-§,l§.§#S§);
                                    loop12:
                                    while(true)
                                    {
                                       §§push(§§pop() * §[&§.§6!H§);
                                       while(§§pop() >= §§pop())
                                       {
                                          §§push(this.§8!3§);
                                          if(_loc3_)
                                          {
                                             continue loop11;
                                          }
                                          §§push(this.§9!W§);
                                          if(_loc3_)
                                          {
                                             continue;
                                          }
                                          if(!(_loc2_ || param1))
                                          {
                                             continue loop12;
                                          }
                                          if(§§pop() <= §§pop())
                                          {
                                             continue loop7;
                                          }
                                          §§goto(addr140);
                                       }
                                       §§goto(addr180);
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr154);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §"c§.removeEventListener(MouseEvent.MOUSE_MOVE,this.§ I§);
            loop0:
            while(true)
            {
               §"c§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§]z§);
               while(true)
               {
                  §"c§.removeEventListener(MouseEvent.MOUSE_UP,this.§@!T§);
                  while(!(_loc1_ && _loc1_))
                  {
                     §"c§.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
                     loop3:
                     while(!(_loc1_ && _loc1_))
                     {
                        §"c§.stage.removeEventListener(Event.MOUSE_LEAVE,this.§2,§);
                        loop4:
                        while(true)
                        {
                           (§"c§.getItemByName("Container_Credits") as §4!C§).setVisibility(false);
                           loop5:
                           while(!_loc1_)
                           {
                              continue loop0;
                              while(true)
                              {
                                 super.deActivate();
                                 if(_loc2_)
                                 {
                                    if(!_loc1_)
                                    {
                                       break;
                                    }
                                    continue loop4;
                                 }
                                 continue loop5;
                              }
                              return;
                           }
                           continue loop3;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr64);
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            super.cleanup();
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§]^§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = param2;
         if(!(_loc6_ && param1))
         {
            if("CREDITS_CLOSE_BUTTON" === _loc4_)
            {
               if(_loc5_ || this)
               {
                  §§push(0);
                  if(!_loc5_)
                  {
                  }
               }
               else
               {
                  addr118:
                  §§push(2);
                  if(!_loc5_)
                  {
                  }
               }
               §§goto(addr143);
            }
            else
            {
               if("PRIVACY_BUTTON" === _loc4_)
               {
                  if(!_loc6_)
                  {
                     addr109:
                     §§push(1);
                     if(!_loc5_)
                     {
                     }
                  }
               }
               else if("EULA_BUTTON" === _loc4_)
               {
                  if(_loc5_)
                  {
                     §§goto(addr118);
                  }
               }
               else if("FAQ_BUTTON" !== _loc4_)
               {
                  addr143:
                  switch(§§pop())
                  {
                     case 0:
                        mNextState = §6l§.§`O§;
                        break;
                        addr77:
                     case 1:
                        navigateToURL(new URLRequest("http://www.rovio.com/Privacy"),"_blank");
                        addr58:
                        if(_loc5_)
                        {
                           addr30:
                           break;
                        }
                        §§goto(addr77);
                        break;
                     case 2:
                        navigateToURL(new URLRequest("http://www.rovio.com/eula/"),"_blank");
                        if(!(_loc6_ && param1))
                        {
                           if(!_loc6_)
                           {
                              break;
                           }
                           §§goto(addr58);
                        }
                        break;
                     case 3:
                        navigateToURL(new URLRequest("http://www.rovio.com/en/our-work/games/view/1/angry-birds/faq/"),"_blank");
                        if(!_loc6_)
                        {
                           if(true)
                           {
                              break;
                           }
                           §§goto(addr30);
                        }
                  }
                  return;
                  §§push(4);
               }
               §§goto(addr143);
               if(!_loc6_)
               {
                  §§goto(addr138);
               }
            }
            §§goto(addr143);
         }
         §§goto(addr109);
      }
   }
}
