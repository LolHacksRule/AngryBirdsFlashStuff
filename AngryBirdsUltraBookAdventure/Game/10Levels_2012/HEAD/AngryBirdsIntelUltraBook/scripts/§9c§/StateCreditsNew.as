package §9c§
{
   import §"!2§.UIContainerRovio;
   import §'N§.Log;
   import §-!>§.§4!T§;
   import §9!H§.§@1§;
   import §>!<§.UIEventListenerRovio;
   import §@!H§.§-!H§;
   import §@!H§.§3!5§;
   import §[!>§.StateBase;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class StateCreditsNew extends StateBase
   {
      
      public static const STATE_NAME:String = "CreditsState";
      
      {
         var STATE_NAME:Boolean = false;
         var _loc2_:Boolean = true;
         if(STATE_NAME)
         {
         }
         do
         {
            STATE_NAME = "CreditsState";
         }
         while(STATE_NAME && _loc2_);
         
      }
      
      protected var §5m§:§@1§ = null;
      
      private var §2t§:Boolean;
      
      private var §>y§:Number;
      
      private var § o§:Number;
      
      private var § !7§:Number;
      
      private var §6s§:Number;
      
      private var §2]§:Number;
      
      public function StateCreditsNew(initState:Boolean = false, name:String = "CreditsState")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc4_ && initState)
         {
         }
         if(_loc3_ || _loc3_)
         {
            while(true)
            {
               loop1:
               while(_loc3_)
               {
                  loop2:
                  do
                  {
                     super(initState,name);
                     while(!_loc4_)
                     {
                        if(_loc3_ || _loc3_)
                        {
                           continue loop2;
                        }
                     }
                     continue loop1;
                  }
                  while(!(_loc3_ || _loc3_));
                  
               }
            }
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
         }
         if(!_loc1_)
         {
            loop0:
            while(true)
            {
               super.init();
               loop1:
               while(true)
               {
                  while(true)
                  {
                     §^,§ = new §-!H§(this);
                     addr107:
                     while(!_loc1_)
                     {
                        if(!_loc1_)
                        {
                           continue loop0;
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
         loop6:
         while(true)
         {
            this.§5m§ = new §@1§(§4!T§.§1t§);
            for(; !_loc1_; if(!_loc2_)
            {
               continue;
            },if(_loc1_)
            {
               continue loop6;
            },if(_loc2_)
            {
               break loop6;
            },§§goto(addr107))
            {
               if(_loc2_)
               {
                  continue;
               }
               §§goto(addr93);
            }
            §§goto(addr90);
         }
      }
      
      override public function activate() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc3_)
         {
         }
         if(_loc4_ || this)
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     super.activate();
                     loop3:
                     while(true)
                     {
                        loop4:
                        while(true)
                        {
                           this.§2]§ = (§^,§.getItemByName("Container_Credits") as UIContainerRovio).height + §4!T§.SCREEN_HEIGHT * §4!T§.§=!_§;
                           loop5:
                           while(true)
                           {
                              loop6:
                              while(true)
                              {
                                 §§push(this);
                                 §§push(this.§2]§);
                                 if(_loc4_ || this)
                                 {
                                    §§push(-§§pop());
                                 }
                                 §§pop().§6s§ = §§pop();
                                 loop7:
                                 while(_loc4_)
                                 {
                                    loop8:
                                    while(true)
                                    {
                                       §4!T§.§1t§.§@!F§(true);
                                       loop9:
                                       for(; !_loc3_; if(!(_loc4_ || verText))
                                       {
                                          continue;
                                       },§^,§.stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§`!F§),loop21:
                                       while(true)
                                       {
                                          loop22:
                                          while(true)
                                          {
                                             if(!_loc3_)
                                             {
                                                if(_loc4_)
                                                {
                                                   addr175:
                                                   if(_loc4_ || verText)
                                                   {
                                                      §^,§.stage.addEventListener(MouseEvent.MOUSE_UP,this.§5f§);
                                                      loop23:
                                                      for(; _loc4_; while(true)
                                                      {
                                                         if(_loc4_ || verText)
                                                         {
                                                            continue loop22;
                                                         }
                                                         continue loop23;
                                                      },loop14:
                                                      while(true)
                                                      {
                                                         this.§5m§.init();
                                                         addr278:
                                                         addr140:
                                                         while(true)
                                                         {
                                                            break loop22;
                                                         }
                                                         if(_loc3_ && verTextServ)
                                                         {
                                                            continue;
                                                         }
                                                         if(_loc3_)
                                                         {
                                                            continue loop5;
                                                         }
                                                         while(true)
                                                         {
                                                            §^,§.stage.addEventListener(Event.MOUSE_LEAVE,this.§&!I§);
                                                            addr104:
                                                            while(!(_loc3_ && verText))
                                                            {
                                                               loop28:
                                                               while(true)
                                                               {
                                                                  this.§>y§ = 0;
                                                                  addr78:
                                                                  while(true)
                                                                  {
                                                                     if(!_loc4_)
                                                                     {
                                                                        continue loop28;
                                                                     }
                                                                     if(!_loc3_)
                                                                     {
                                                                        continue loop6;
                                                                     }
                                                                     §§goto(addr126);
                                                                  }
                                                                  continue loop6;
                                                               }
                                                            }
                                                            continue loop0;
                                                            addr55:
                                                            if(_loc3_ && _loc3_)
                                                            {
                                                               continue;
                                                            }
                                                            if(_loc3_)
                                                            {
                                                               continue loop21;
                                                            }
                                                            if(!_loc3_)
                                                            {
                                                               if(_loc3_)
                                                               {
                                                                  continue loop2;
                                                               }
                                                               if(!(_loc3_ && _loc3_))
                                                               {
                                                                  if(!_loc3_)
                                                                  {
                                                                     addr40:
                                                                     if(!_loc3_)
                                                                     {
                                                                        if(false)
                                                                        {
                                                                           loop31:
                                                                           while(true)
                                                                           {
                                                                              this.§ o§ = 0;
                                                                              addr48:
                                                                              addr245:
                                                                              while(true)
                                                                              {
                                                                                 if(!(_loc3_ && this))
                                                                                 {
                                                                                    §§goto(addr55);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    while(!_loc3_)
                                                                                    {
                                                                                       continue loop31;
                                                                                    }
                                                                                    §§goto(addr104);
                                                                                    addr71:
                                                                                 }
                                                                                 §§goto(addr92);
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 if(!_loc3_)
                                                                                 {
                                                                                    if(_loc3_)
                                                                                    {
                                                                                       break;
                                                                                       addr223:
                                                                                    }
                                                                                    §^,§.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§,!$§);
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc4_)
                                                                                       {
                                                                                          continue loop4;
                                                                                       }
                                                                                       addr298:
                                                                                       while(true)
                                                                                       {
                                                                                          addr292:
                                                                                          while(true)
                                                                                          {
                                                                                             §4!T§.setController(this.§5m§);
                                                                                             addr289:
                                                                                             while(true)
                                                                                             {
                                                                                                continue loop14;
                                                                                                §§goto(addr175);
                                                                                             }
                                                                                             break loop22;
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    continue loop4;
                                                                                 }
                                                                                 §§goto(addr278);
                                                                              }
                                                                              continue loop7;
                                                                           }
                                                                           §§goto(addr152);
                                                                        }
                                                                        §§push(Log.§;h§);
                                                                        if(_loc4_ || _loc3_)
                                                                        {
                                                                           §§push(§§pop());
                                                                        }
                                                                        var verText:* = §§pop();
                                                                        if(_loc3_ && this)
                                                                        {
                                                                        }
                                                                        §§push(verText);
                                                                        if(_loc4_)
                                                                        {
                                                                           §§push(§§pop().slice(verText.search("Server:"),verText.length));
                                                                        }
                                                                        var verTextServ:* = §§pop();
                                                                        if(_loc4_ || _loc3_)
                                                                        {
                                                                           §§push(verText);
                                                                           if(_loc4_ || _loc3_)
                                                                           {
                                                                              §§push(§§pop().slice(0,verText.search("Server:")));
                                                                           }
                                                                           verText = §§pop();
                                                                           addr493:
                                                                        }
                                                                        addr491:
                                                                        if(!(_loc3_ && _loc3_))
                                                                        {
                                                                           §^,§.setText(verText,"TextField_Version_Number");
                                                                           addr437:
                                                                           if(_loc4_ || verTextServ)
                                                                           {
                                                                              if(_loc4_)
                                                                              {
                                                                                 §^,§.setText(verTextServ,"TextField_Version_Number_Server");
                                                                                 addr427:
                                                                                 if(_loc4_ || _loc3_)
                                                                                 {
                                                                                    if(!_loc3_)
                                                                                    {
                                                                                       if(!_loc4_)
                                                                                       {
                                                                                          §§goto(addr491);
                                                                                       }
                                                                                       return;
                                                                                    }
                                                                                    §§goto(addr427);
                                                                                 }
                                                                                 §§goto(addr437);
                                                                              }
                                                                              §§goto(addr491);
                                                                           }
                                                                           addr464:
                                                                           §§goto(addr464);
                                                                        }
                                                                        §§goto(addr493);
                                                                     }
                                                                     §§goto(addr152);
                                                                  }
                                                                  §§goto(addr78);
                                                               }
                                                               §§goto(addr48);
                                                            }
                                                            §§goto(addr245);
                                                         }
                                                      },addr126:)
                                                      {
                                                         while(!_loc3_)
                                                         {
                                                            §^,§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
                                                            continue loop23;
                                                         }
                                                         §§goto(addr197);
                                                      }
                                                      continue loop8;
                                                   }
                                                   §§goto(addr289);
                                                }
                                                break;
                                             }
                                             §§goto(addr223);
                                             if(_loc3_ && verTextServ)
                                             {
                                                continue;
                                             }
                                             §§goto(addr140);
                                          }
                                          while(!(_loc3_ && _loc3_))
                                          {
                                             AngryBirdsFP11.playThemeMusic();
                                             continue loop0;
                                          }
                                          §§goto(addr292);
                                       })
                                       {
                                          while(true)
                                          {
                                             §4!T§.resume();
                                             addr197:
                                             while(_loc4_ || verText)
                                             {
                                                continue loop9;
                                             }
                                          }
                                       }
                                       continue loop3;
                                    }
                                 }
                                 continue loop1;
                                 if(_loc3_ && verTextServ)
                                 {
                                    continue;
                                 }
                                 §§goto(addr71);
                              }
                           }
                           if(_loc3_ && _loc3_)
                           {
                              continue;
                           }
                           §§goto(addr197);
                        }
                     }
                  }
               }
               while(true)
               {
                  if(!(_loc4_ || verText))
                  {
                     continue loop0;
                  }
                  §§goto(addr245);
                  §§goto(addr104);
               }
            }
         }
         §§goto(addr298);
      }
      
      private function §^y§(e:MouseEvent) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc3_)
         {
         }
         if(!(_loc2_ && _loc2_))
         {
            loop0:
            while(true)
            {
               if(§^,§.stage.mouseX >= §^,§.stage.width - 180)
               {
                  §§push(false);
                  if(!_loc2_)
                  {
                     return §§pop();
                  }
                  break;
               }
               if(_loc3_)
               {
                  while(true)
                  {
                  }
                  addr79:
               }
               while(true)
               {
                  if(_loc3_)
                  {
                     §§push(true);
                     break loop0;
                  }
                  continue loop0;
               }
            }
            return §§pop();
         }
         §§goto(addr79);
      }
      
      private function §,!$§(e:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
         }
         if(!_loc2_)
         {
            while(true)
            {
               while(_loc3_ || _loc3_)
               {
                  §§push(this.§2t§);
                  loop2:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        addr29:
                        return;
                     }
                     while(true)
                     {
                        continue loop2;
                     }
                  }
               }
            }
         }
         §§goto(addr213);
      }
      
      private function §`!F§(e:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc2_)
         {
         }
         if(_loc3_)
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  §§push(this.§^y§(e));
                  loop2:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        addr24:
                        return;
                     }
                     while(true)
                     {
                        addr131:
                        while(!_loc2_)
                        {
                           continue loop2;
                        }
                        continue loop0;
                     }
                  }
               }
            }
         }
         §§goto(addr73);
      }
      
      private function §5f§(e:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc3_)
         {
         }
         if(!(_loc2_ && e))
         {
            while(true)
            {
               while(_loc3_ || e)
               {
                  this.§2t§ = false;
                  while(!(_loc2_ && this))
                  {
                     if(_loc2_)
                     {
                        continue;
                     }
                     return;
                     addr57:
                  }
               }
            }
         }
         §§goto(addr57);
      }
      
      private function §&!I§(e:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc3_ && e)
         {
         }
         if(_loc2_ || _loc2_)
         {
         }
         while(true)
         {
            while(_loc2_ || _loc2_)
            {
               this.§2t§ = false;
               while(_loc3_)
               {
               }
               if(!_loc3_)
               {
                  return;
               }
            }
         }
      }
      
      private function onMouseWheel(e:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc3_)
         {
         }
         if(_loc3_ || _loc3_)
         {
            while(true)
            {
               loop1:
               for(; this.§^y§(e); if(!(_loc3_ || this))
               {
                  continue;
               },this.§ o§ = -16,while(true)
               {
                  if(_loc3_)
                  {
                     if(!_loc3_)
                     {
                        break;
                     }
                     continue;
                  }
                  §§goto(addr79);
               },§§goto(addr110))
               {
                  if(_loc3_ || this)
                  {
                     while(true)
                     {
                     }
                     addr123:
                  }
                  while(e.delta >= 0)
                  {
                     if(e.delta > 0)
                     {
                        if(!(_loc2_ && _loc3_))
                        {
                           if(!_loc3_)
                           {
                              continue;
                           }
                        }
                        while(!_loc2_)
                        {
                           continue loop1;
                        }
                        break loop1;
                        addr103:
                        addr79:
                     }
                     break loop1;
                  }
                  this.§ o§ = 16;
                  §§goto(addr103);
               }
               return;
            }
         }
         §§goto(addr123);
      }
      
      override public function run(deltaTime:Number) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc3_)
         {
         }
         if(_loc4_ || _loc3_)
         {
         }
         while(true)
         {
            while(true)
            {
               while(!_loc4_)
               {
               }
               if(_loc3_)
               {
                  break;
               }
               if(false)
               {
                  continue;
               }
               §§push(super.run(deltaTime));
               if(_loc4_ || superReturn)
               {
                  §§push(int(§§pop()));
               }
               var superReturn:* = §§pop();
               if(!(_loc3_ && superReturn))
               {
                  loop3:
                  while(true)
                  {
                     §§push(superReturn);
                     loop4:
                     do
                     {
                        if(§§pop() == StateBase.STATE_STATUS_RUNNING)
                        {
                           loop5:
                           while(true)
                           {
                              §§push(§4!T§.isPaused);
                              if(!(_loc3_ && this))
                              {
                                 §§push(!§§pop());
                              }
                              if(§§pop())
                              {
                                 loop6:
                                 while(true)
                                 {
                                    loop7:
                                    while(true)
                                    {
                                       §4!T§.controller.update(deltaTime);
                                       loop8:
                                       while(true)
                                       {
                                          loop9:
                                          while(_loc4_ || _loc3_)
                                          {
                                             (§^,§.getItemByName("Container_Credits") as UIContainerRovio).setVisibility(true);
                                             loop10:
                                             while(true)
                                             {
                                                addr189:
                                                while(!_loc3_)
                                                {
                                                   this.readyToShowCredits();
                                                   loop12:
                                                   while(_loc4_)
                                                   {
                                                      loop13:
                                                      while(_loc4_ || this)
                                                      {
                                                         (§^,§.getItemByName("Container_Credits") as UIContainerRovio).y = Math.floor(-this.§6s§);
                                                         while(true)
                                                         {
                                                            if(_loc3_)
                                                            {
                                                               continue loop13;
                                                            }
                                                            if(_loc3_)
                                                            {
                                                               break;
                                                            }
                                                            while(true)
                                                            {
                                                               addr149:
                                                               while(true)
                                                               {
                                                                  this.§,P§(deltaTime);
                                                                  addr146:
                                                                  while(true)
                                                                  {
                                                                     addr136:
                                                                     addr140:
                                                                     while(true)
                                                                     {
                                                                        if(_loc4_)
                                                                        {
                                                                           if(_loc4_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           continue loop10;
                                                                        }
                                                                        continue loop12;
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         continue loop8;
                                                      }
                                                      continue loop7;
                                                   }
                                                   continue loop6;
                                                }
                                                continue loop9;
                                             }
                                          }
                                          continue loop5;
                                       }
                                    }
                                 }
                              }
                              while(true)
                              {
                                 if(mNextState.length <= 0)
                                 {
                                    return StateBase.STATE_STATUS_RUNNING;
                                 }
                                 if(!(_loc3_ && this))
                                 {
                                    if(!_loc3_)
                                    {
                                       if(_loc4_)
                                       {
                                          if(!_loc3_)
                                          {
                                             continue loop3;
                                          }
                                          continue loop4;
                                       }
                                       §§goto(addr189);
                                    }
                                    §§goto(addr136);
                                 }
                                 else
                                 {
                                    addr110:
                                    if(_loc4_)
                                    {
                                       if(!_loc3_)
                                       {
                                          if(_loc4_)
                                          {
                                             break;
                                          }
                                          §§goto(addr165);
                                       }
                                       §§goto(addr149);
                                    }
                                 }
                                 §§goto(addr146);
                                 §§goto(addr140);
                              }
                              if(_loc4_ || _loc3_)
                              {
                                 return StateBase.STATE_STATUS_COMPLETED;
                              }
                           }
                        }
                     }
                     while(§§push(superReturn), _loc3_);
                     
                     return §§pop();
                  }
               }
               §§goto(addr169);
            }
         }
      }
      
      protected function readyToShowCredits() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc1_)
         {
         }
         if(_loc2_)
         {
         }
      }
      
      private function §,P§(deltaTime:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc3_ && deltaTime)
         {
         }
         if(_loc2_)
         {
            while(true)
            {
               while(true)
               {
                  §§push(this);
                  §§push(this.§6s§);
                  if(_loc2_)
                  {
                     §§push(§§pop() + this.§>y§);
                  }
                  §§pop().§6s§ = §§pop();
                  loop2:
                  while(true)
                  {
                     loop3:
                     while(true)
                     {
                        §§push(this);
                        §§push(this.§6s§);
                        if(!(_loc3_ && this))
                        {
                           §§push(§§pop() + this.§ o§);
                        }
                        §§pop().§6s§ = §§pop();
                        while(true)
                        {
                           loop5:
                           while(true)
                           {
                              §§push(this.§2t§);
                              loop6:
                              while(true)
                              {
                                 §§push(!§§pop());
                                 if(!_loc3_)
                                 {
                                    §§push(Boolean(§§pop()));
                                    if(_loc2_)
                                    {
                                       addr326:
                                       §§push(§§pop());
                                       if(!_loc3_)
                                       {
                                          §§push(Boolean(§§pop()));
                                       }
                                       if(§§pop())
                                       {
                                          addr331:
                                          while(true)
                                          {
                                             §§pop();
                                             addr332:
                                             while(true)
                                             {
                                                §§push(Math.abs(this.§ o§) < deltaTime / 15);
                                                if(!_loc3_)
                                                {
                                                   §§push(Boolean(§§pop()));
                                                }
                                                addr304:
                                                while(!_loc3_)
                                                {
                                                }
                                                continue loop6;
                                             }
                                          }
                                          addr331:
                                       }
                                       while(true)
                                       {
                                          if(!§§pop())
                                          {
                                             loop14:
                                             while(true)
                                             {
                                                §§push(this.§6s§);
                                                loop15:
                                                while(true)
                                                {
                                                   §§push(-AngryBirdsFP11.include);
                                                   if(!(_loc3_ && deltaTime))
                                                   {
                                                      §§push(§§pop() * §4!T§.§=!_§);
                                                   }
                                                   loop16:
                                                   while(true)
                                                   {
                                                      if(§§pop() >= §§pop())
                                                      {
                                                         continue loop15;
                                                      }
                                                      if(!_loc2_)
                                                      {
                                                      }
                                                      while(true)
                                                      {
                                                         this.§6s§ = this.§2]§;
                                                         addr231:
                                                         while(!(_loc3_ && _loc2_))
                                                         {
                                                            if(_loc2_ || _loc2_)
                                                            {
                                                               break loop16;
                                                            }
                                                            §§goto(addr332);
                                                         }
                                                      }
                                                      addr201:
                                                      §§push(this.§2]§);
                                                      if(_loc2_ || _loc3_)
                                                      {
                                                         if(§§pop() > §§pop())
                                                         {
                                                            if(!_loc3_)
                                                            {
                                                               if(_loc3_)
                                                               {
                                                                  continue loop14;
                                                               }
                                                               addr215:
                                                               if(_loc3_ && deltaTime)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     continue loop14;
                                                                     §§goto(addr215);
                                                                  }
                                                                  addr290:
                                                               }
                                                            }
                                                            while(!_loc3_)
                                                            {
                                                               §§push(this);
                                                               §§push(-AngryBirdsFP11.include);
                                                               if(_loc2_ || _loc2_)
                                                               {
                                                                  §§push(§§pop() * §4!T§.§=!_§);
                                                               }
                                                               §§pop().§6s§ = §§pop();
                                                               while(!_loc3_)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     break loop16;
                                                                  }
                                                               }
                                                               continue loop5;
                                                            }
                                                            continue loop2;
                                                            addr223:
                                                         }
                                                         break;
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(this.§2t§);
                                                      if(_loc2_ || this)
                                                      {
                                                         if(!_loc3_)
                                                         {
                                                            if(!_loc3_)
                                                            {
                                                               addr151:
                                                               if(§§pop())
                                                               {
                                                                  break;
                                                               }
                                                               loop18:
                                                               while(true)
                                                               {
                                                                  addr153:
                                                                  while(true)
                                                                  {
                                                                     §§push(this);
                                                                     §§push(this.§>y§);
                                                                     if(!(_loc3_ && this))
                                                                     {
                                                                        §§push(§§pop() * 0.9);
                                                                     }
                                                                     §§pop().§>y§ = §§pop();
                                                                     continue loop18;
                                                                  }
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr331);
                                                            }
                                                         }
                                                         §§goto(addr304);
                                                      }
                                                      §§goto(addr151);
                                                   }
                                                   addr28:
                                                   return;
                                                }
                                             }
                                          }
                                          while(true)
                                          {
                                             continue loop5;
                                             §§goto(addr231);
                                          }
                                       }
                                    }
                                    §§goto(addr331);
                                 }
                                 §§goto(addr326);
                              }
                           }
                           if(!(_loc3_ && deltaTime))
                           {
                              continue loop3;
                           }
                        }
                     }
                  }
               }
               if(!(_loc2_ || this))
               {
                  continue;
               }
               §§goto(addr78);
            }
         }
         §§goto(addr52);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_ && _loc1_)
         {
         }
         if(_loc1_)
         {
            while(true)
            {
               §^,§.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.§,!$§);
               loop1:
               while(true)
               {
                  addr199:
                  addr149:
                  while(true)
                  {
                     §^,§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§`!F§);
                     addr196:
                     while(true)
                     {
                     }
                  }
                  if(!(_loc1_ || _loc1_))
                  {
                     continue;
                  }
                  while(_loc1_)
                  {
                     §^,§.stage.removeEventListener(Event.MOUSE_LEAVE,this.§&!I§);
                     loop9:
                     while(true)
                     {
                        addr89:
                        loop10:
                        while(!(_loc2_ && _loc2_))
                        {
                           addr106:
                           if(!(_loc2_ && this))
                           {
                              (§^,§.getItemByName("Container_Credits") as UIContainerRovio).visible = false;
                              while(true)
                              {
                                 if(!_loc2_)
                                 {
                                    if(_loc2_)
                                    {
                                       break;
                                    }
                                    continue;
                                 }
                                 continue loop9;
                              }
                              §§goto(addr199);
                           }
                           while(true)
                           {
                              §^,§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
                              break loop10;
                              §§goto(addr106);
                           }
                        }
                        while(true)
                        {
                           if(!(_loc2_ && _loc2_))
                           {
                              §§goto(addr149);
                           }
                           else
                           {
                              §§goto(addr181);
                           }
                        }
                        continue loop1;
                     }
                  }
                  §§goto(addr196);
               }
            }
         }
         §§goto(addr184);
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_ && _loc2_)
         {
         }
         if(!_loc1_)
         {
         }
         do
         {
            super.cleanup();
            while(!_loc1_)
            {
            }
         }
         while(_loc2_ && this);
         
      }
      
      override public function uiInteractionHandler(eventIndex:int, eventName:String, component:UIEventListenerRovio) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc5_ && component)
         {
         }
         if(_loc5_)
         {
         }
         do
         {
            while(!(_loc6_ || eventName))
            {
            }
         }
         while(!_loc6_);
         
         var _loc4_:* = eventName;
         if(_loc6_ || component)
         {
            §§push("CREDITS_CLOSE_BUTTON");
            if(!(_loc5_ && eventIndex))
            {
               if(!_loc5_)
               {
                  §§push(_loc4_);
                  if(!_loc5_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!_loc5_)
                        {
                           §§push(0);
                           if(!_loc6_)
                           {
                           }
                        }
                        else
                        {
                           addr155:
                           §§push(1);
                           if(!(_loc6_ || eventName))
                           {
                              addr169:
                           }
                        }
                     }
                     else
                     {
                        §§push("FULLSCREEN_BUTTON");
                        if(_loc6_ || this)
                        {
                           addr146:
                           if(§§pop() === _loc4_)
                           {
                              if(_loc6_ || component)
                              {
                                 §§goto(addr155);
                              }
                              else
                              {
                                 addr166:
                                 §§push(2);
                                 if(!_loc5_)
                                 {
                                    §§goto(addr169);
                                 }
                              }
                           }
                           else if(false)
                           {
                              §§goto(addr166);
                           }
                           else
                           {
                              §§push(2);
                           }
                           §§goto(addr166);
                           addr135:
                        }
                        §§goto(addr146);
                     }
                     switch(§§pop())
                     {
                        case 0:
                           loop2:
                           while(true)
                           {
                              mNextState = StateStart.STATE_NAME;
                              addr58:
                              while(true)
                              {
                                 if(!_loc5_)
                                 {
                                    break loop2;
                                 }
                                 continue loop2;
                              }
                           }
                           break;
                           addr51:
                        case 1:
                           while(true)
                           {
                              AngryBirdsFP11.§8R§.§,!f§();
                              if(_loc6_)
                              {
                                 continue;
                              }
                              §§goto(addr58);
                           }
                           §§goto(addr51);
                     }
                     return;
                  }
               }
               §§goto(addr146);
            }
            §§goto(addr135);
         }
         §§goto(addr166);
      }
   }
}
