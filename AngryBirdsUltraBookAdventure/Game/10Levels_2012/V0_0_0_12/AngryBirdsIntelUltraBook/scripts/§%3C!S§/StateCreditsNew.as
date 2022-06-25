package §<!S§
{
   import § D§.§]!B§;
   import §2!?§.§>X§;
   import §4!9§.§6"§;
   import §4!9§.§>!^§;
   import §4H§.StateBase;
   import §6b§.Log;
   import §>!-§.UIEventListenerRovio;
   import §]!6§.UIContainerRovio;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class StateCreditsNew extends StateBase
   {
      
      public static const STATE_NAME:String = "CreditsState";
      
      {
         var STATE_NAME:Boolean = true;
         var _loc2_:Boolean = false;
         if(STATE_NAME || _loc2_)
         {
            do
            {
               STATE_NAME = "CreditsState";
            }
            while(_loc2_ && StateCreditsNew);
            
         }
      }
      
      protected var §8!i§:§>X§ = null;
      
      private var §1!@§:Boolean;
      
      private var §1W§:Number;
      
      private var §-j§:Number;
      
      private var §;w§:Number;
      
      private var §-!+§:Number;
      
      private var §<1§:Number;
      
      public function StateCreditsNew(initState:Boolean = false, name:String = "CreditsState")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || initState)
         {
         }
         if(_loc3_)
         {
         }
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               while(true)
               {
                  super(initState,name);
                  while(!(_loc3_ && initState))
                  {
                     if(_loc4_)
                     {
                        if(_loc4_)
                        {
                           if(!(_loc3_ && this))
                           {
                              return;
                           }
                           continue;
                           continue;
                        }
                        continue loop0;
                     }
                     continue loop1;
                  }
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
         if(_loc2_ || _loc1_)
         {
            while(true)
            {
               super.init();
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     §5!M§ = new §6"§(this);
                     while(true)
                     {
                        continue loop2;
                        addr98:
                        loop5:
                        while(_loc2_ || _loc1_)
                        {
                           while(_loc2_ || _loc2_)
                           {
                              this.§8!i§ = new §>X§(§]!B§.§>F§);
                              continue loop5;
                              while(!(_loc1_ && _loc2_))
                              {
                                 if(_loc1_)
                                 {
                                    continue;
                                 }
                                 §§goto(addr42);
                              }
                              if(!(_loc1_ && _loc2_))
                              {
                                 return;
                                 addr49:
                              }
                           }
                           continue loop2;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr49);
      }
      
      override public function activate() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc3_)
         {
         }
         if(!_loc3_)
         {
            while(true)
            {
               while(true)
               {
                  while(true)
                  {
                     super.activate();
                     while(true)
                     {
                        while(true)
                        {
                           this.§<1§ = (§5!M§.getItemByName("Container_Credits") as UIContainerRovio).height + §]!B§.SCREEN_HEIGHT * §]!B§.§9$§;
                           while(true)
                           {
                              while(true)
                              {
                                 §§push(this);
                                 §§push(this.§<1§);
                                 if(!(_loc3_ && this))
                                 {
                                    §§push(-§§pop());
                                 }
                                 §§pop().§-!+§ = §§pop();
                                 while(true)
                                 {
                                    loop8:
                                    while(true)
                                    {
                                       §]!B§.§>F§.§,>§(true);
                                       addr318:
                                       while(true)
                                       {
                                          addr310:
                                          while(true)
                                          {
                                             §]!B§.resume();
                                             addr307:
                                             while(true)
                                             {
                                                continue loop8;
                                             }
                                          }
                                       }
                                    }
                                    addr201:
                                    while(_loc4_ || this)
                                    {
                                       §§goto(addr189);
                                       §§goto(addr85);
                                    }
                                 }
                              }
                           }
                           while(!(_loc3_ && verText))
                           {
                              §5!M§.stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§5N§);
                              §§goto(addr201);
                              §§goto(addr40);
                           }
                        }
                        while(_loc4_ || _loc3_)
                        {
                           §§goto(addr261);
                        }
                     }
                  }
                  if(_loc3_ && this)
                  {
                     continue;
                  }
                  §§goto(addr120);
               }
            }
         }
         §§goto(addr101);
      }
      
      private function §&%§(e:MouseEvent) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
         }
         if(!_loc2_)
         {
            if(§5!M§.stage.mouseX < §5!M§.stage.width - 180)
            {
               if(_loc3_)
               {
                  addr92:
                  §§push(true);
                  addr92:
               }
               §§goto(addr92);
            }
            else
            {
               §§push(false);
               if(!_loc2_)
               {
                  return §§pop();
               }
            }
            return §§pop();
         }
         §§goto(addr92);
      }
      
      private function §&!§(e:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
         }
         if(!(_loc3_ && _loc2_))
         {
            while(true)
            {
               while(true)
               {
                  §§push(this.§1!@§);
                  addr273:
                  loop2:
                  while(§§pop())
                  {
                     while(true)
                     {
                        continue loop2;
                     }
                  }
                  addr33:
                  addr261:
                  return;
                  if(_loc2_ || e)
                  {
                     addr268:
                     do
                     {
                        this.§1!@§ = false;
                     }
                     while(!_loc2_);
                     
                     return;
                     addr228:
                  }
               }
               addr218:
               if(!(_loc2_ || this))
               {
                  continue;
               }
               addr225:
               loop5:
               while(true)
               {
                  §§push(this.§;w§);
                  loop6:
                  while(true)
                  {
                     §§push(§§pop() - §5!M§.stage.mouseY);
                     loop7:
                     while(true)
                     {
                        §§push(0);
                        while(§§pop() <= §§pop())
                        {
                           §§push(this.§;w§);
                           if(_loc2_ || e)
                           {
                              if(_loc3_)
                              {
                                 continue loop6;
                              }
                              §§push(§§pop() - §5!M§.stage.mouseY);
                           }
                           if(_loc3_)
                           {
                              continue loop7;
                           }
                           §§push(0);
                           if(!(_loc2_ || _loc3_))
                           {
                              continue;
                           }
                           if(§§pop() < §§pop())
                           {
                              addr164:
                              if(_loc2_ || this)
                              {
                                 §§push(this);
                                 §§push(this.§;w§);
                                 if(!_loc3_)
                                 {
                                    §§push(§§pop() - §5!M§.stage.mouseY);
                                 }
                                 §§pop().§1W§ = §§pop();
                                 addr172:
                                 if(_loc2_ || e)
                                 {
                                    if(_loc2_)
                                    {
                                       if(!(_loc3_ && this))
                                       {
                                          addr80:
                                          if(!_loc3_)
                                          {
                                             if(!_loc3_)
                                             {
                                                if(!(_loc3_ && _loc3_))
                                                {
                                                   if(!_loc3_)
                                                   {
                                                      this.§;w§ = §5!M§.stage.mouseY;
                                                      addr56:
                                                      if(_loc2_ || this)
                                                      {
                                                         if(_loc2_ || _loc2_)
                                                         {
                                                            if(!(_loc3_ && _loc2_))
                                                            {
                                                               if(!_loc2_)
                                                               {
                                                                  §§goto(addr56);
                                                               }
                                                               if(!(_loc3_ && this))
                                                               {
                                                                  §§goto(addr33);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr261);
                                                               }
                                                            }
                                                            addr200:
                                                         }
                                                         if(!_loc3_)
                                                         {
                                                            this.§;w§ = §5!M§.stage.mouseY;
                                                            addr180:
                                                            if(_loc3_)
                                                            {
                                                               break;
                                                            }
                                                            §§goto(addr33);
                                                         }
                                                         §§push(this);
                                                         §§push(this.§;w§);
                                                         if(_loc2_)
                                                         {
                                                            §§push(§§pop() - §5!M§.stage.mouseY);
                                                         }
                                                         §§pop().§1W§ = §§pop();
                                                         §§goto(addr200);
                                                         addr215:
                                                      }
                                                      §§goto(addr80);
                                                   }
                                                   §§goto(addr274);
                                                }
                                                §§goto(addr164);
                                             }
                                          }
                                          §§goto(addr172);
                                       }
                                       §§goto(addr233);
                                    }
                                    §§goto(addr228);
                                 }
                                 §§goto(addr218);
                              }
                              §§goto(addr180);
                           }
                           §§goto(addr33);
                        }
                        if(!_loc3_)
                        {
                           §§goto(addr215);
                        }
                        addr275:
                        while(true)
                        {
                           §§push(this.§&%§(e));
                           if(!_loc3_)
                           {
                              §§push(!§§pop());
                           }
                           if(_loc2_ || this)
                           {
                              if(!§§pop())
                              {
                                 continue loop5;
                              }
                              §§goto(addr261);
                           }
                           §§goto(addr273);
                        }
                        §§goto(addr268);
                     }
                  }
               }
            }
         }
         §§goto(addr275);
      }
      
      private function §5N§(e:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc3_)
         {
         }
         if(!_loc3_)
         {
            while(true)
            {
               loop1:
               while(!_loc3_)
               {
                  §§push(this.§&%§(e));
                  loop2:
                  while(true)
                  {
                     if(§§pop())
                     {
                        loop3:
                        while(true)
                        {
                           loop4:
                           while(true)
                           {
                              §§push(§]!B§.isPaused);
                              if(_loc2_ || _loc2_)
                              {
                                 if(_loc3_)
                                 {
                                    break;
                                 }
                                 §§push(!§§pop());
                              }
                              if(§§pop())
                              {
                                 loop5:
                                 while(true)
                                 {
                                    addr113:
                                    loop6:
                                    while(true)
                                    {
                                       this.§1!@§ = true;
                                       while(!_loc3_)
                                       {
                                          if(_loc3_)
                                          {
                                             continue loop1;
                                          }
                                          while(true)
                                          {
                                             if(!_loc3_)
                                             {
                                                continue;
                                             }
                                             continue loop4;
                                          }
                                          if(_loc2_ || this)
                                          {
                                             if(!(_loc3_ && _loc3_))
                                             {
                                                continue loop5;
                                             }
                                             continue loop6;
                                          }
                                       }
                                       continue loop3;
                                    }
                                 }
                              }
                           }
                           continue loop2;
                        }
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr113);
      }
      
      private function §%!1§(e:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc2_ && _loc2_)
         {
         }
         if(!(_loc2_ && this))
         {
            while(true)
            {
               while(true)
               {
                  this.§1!@§ = false;
                  §§goto(addr76);
               }
            }
         }
         addr76:
         while(true)
         {
            if(_loc3_)
            {
               if(!(_loc2_ && _loc3_))
               {
                  if(!_loc2_)
                  {
                     break;
                  }
                  continue loop0;
               }
               continue loop1;
            }
         }
      }
      
      private function §"X§(e:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc2_)
         {
         }
         if(!_loc2_)
         {
            while(true)
            {
               while(_loc3_)
               {
                  this.§1!@§ = false;
                  while(_loc2_ && this)
                  {
                  }
                  if(!(_loc2_ && e))
                  {
                     return;
                     addr64:
                  }
               }
            }
         }
         §§goto(addr64);
      }
      
      private function onMouseWheel(e:MouseEvent) : void
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
               loop1:
               for(; this.§&%§(e); if(_loc2_)
               {
                  continue;
               },if(!_loc3_)
               {
                  continue loop0;
               },§§goto(addr62))
               {
                  loop2:
                  while(true)
                  {
                     loop3:
                     while(e.delta >= 0)
                     {
                        if(e.delta > 0)
                        {
                           if(_loc3_ || _loc3_)
                           {
                           }
                           loop4:
                           while(!(_loc2_ && this))
                           {
                              if(_loc3_ || _loc2_)
                              {
                                 if(_loc3_)
                                 {
                                    this.§-j§ = -16;
                                    while(_loc3_)
                                    {
                                       if(_loc2_)
                                       {
                                          break loop3;
                                       }
                                       continue loop1;
                                       if(_loc3_ || this)
                                       {
                                          if(!_loc2_)
                                          {
                                             break loop1;
                                          }
                                          continue loop4;
                                       }
                                    }
                                    this.§-j§ = 16;
                                    break;
                                    addr117:
                                 }
                                 continue loop2;
                              }
                              continue loop3;
                           }
                           break loop1;
                        }
                        break loop1;
                     }
                     addr116:
                     §§goto(addr117);
                  }
               }
               return;
            }
         }
         §§goto(addr116);
      }
      
      override public function run(deltaTime:Number) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc4_ && this)
         {
         }
         if(_loc3_ || this)
         {
            while(true)
            {
               loop1:
               while(true)
               {
                  while(_loc4_)
                  {
                  }
                  if(_loc4_)
                  {
                     break;
                  }
                  while(false)
                  {
                     continue loop1;
                  }
                  §§push(super.run(deltaTime));
                  if(!_loc4_)
                  {
                     §§push(int(§§pop()));
                  }
                  var superReturn:* = §§pop();
                  if(!(_loc4_ && superReturn))
                  {
                     loop4:
                     while(true)
                     {
                        §§push(superReturn);
                        loop5:
                        do
                        {
                           if(§§pop() != StateBase.STATE_STATUS_RUNNING)
                           {
                              if(_loc4_ && deltaTime)
                              {
                              }
                              continue;
                           }
                           loop6:
                           while(true)
                           {
                              §§push(§]!B§.isPaused);
                              if(!_loc4_)
                              {
                                 §§push(!§§pop());
                              }
                              if(!§§pop())
                              {
                                 loop17:
                                 while(true)
                                 {
                                    if(mNextState.length <= 0)
                                    {
                                       return StateBase.STATE_STATUS_RUNNING;
                                    }
                                    if(!_loc4_)
                                    {
                                       if(_loc3_)
                                       {
                                          addr89:
                                          if(!(_loc4_ && this))
                                          {
                                             addr96:
                                             if(!(_loc4_ && _loc3_))
                                             {
                                                addr103:
                                                if(!(_loc4_ && deltaTime))
                                                {
                                                   addr111:
                                                   if(_loc3_)
                                                   {
                                                      if(!_loc4_)
                                                      {
                                                         addr115:
                                                         if(!(_loc4_ && _loc3_))
                                                         {
                                                            return StateBase.STATE_STATUS_COMPLETED;
                                                         }
                                                         loop11:
                                                         for(; !(_loc4_ && _loc3_); §§goto(addr115))
                                                         {
                                                            if(!(_loc3_ || superReturn))
                                                            {
                                                               continue loop6;
                                                            }
                                                            loop12:
                                                            while(_loc3_)
                                                            {
                                                               this.readyToShowCredits();
                                                               while(true)
                                                               {
                                                                  addr179:
                                                                  while(_loc3_ || this)
                                                                  {
                                                                     (§5!M§.getItemByName("Container_Credits") as UIContainerRovio).y = Math.floor(-this.§-!+§);
                                                                     while(true)
                                                                     {
                                                                        addr158:
                                                                        while(_loc3_)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              this.§4!&§(deltaTime);
                                                                              addr148:
                                                                              while(_loc4_ && superReturn)
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    §]!B§.controller.update(deltaTime);
                                                                                    break loop11;
                                                                                 }
                                                                              }
                                                                              continue loop17;
                                                                           }
                                                                        }
                                                                        continue loop12;
                                                                        §§goto(addr89);
                                                                     }
                                                                  }
                                                                  continue loop5;
                                                                  §§goto(addr96);
                                                               }
                                                            }
                                                            while(true)
                                                            {
                                                               (§5!M§.getItemByName("Container_Credits") as UIContainerRovio).setVisibility(true);
                                                               continue loop11;
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            §§goto(addr225);
                                                            §§goto(addr208);
                                                         }
                                                         addr208:
                                                      }
                                                      §§goto(addr179);
                                                   }
                                                   §§goto(addr158);
                                                }
                                                else
                                                {
                                                   while(true)
                                                   {
                                                      §§goto(addr103);
                                                   }
                                                   addr253:
                                                }
                                                §§goto(addr254);
                                             }
                                             §§goto(addr191);
                                          }
                                          §§goto(addr176);
                                       }
                                       §§goto(addr148);
                                    }
                                    §§goto(addr111);
                                 }
                                 continue loop4;
                                 addr79:
                              }
                              §§goto(addr253);
                           }
                        }
                        while(§§push(superReturn), !(_loc3_ || this));
                        
                        return §§pop();
                     }
                  }
                  §§goto(addr160);
               }
            }
         }
         §§goto(addr39);
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
      
      private function §4!&§(deltaTime:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
         }
         if(!_loc2_)
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  §§push(this);
                  §§push(this.§-!+§);
                  if(!_loc2_)
                  {
                     §§push(§§pop() + this.§1W§);
                  }
                  §§pop().§-!+§ = §§pop();
                  loop2:
                  while(true)
                  {
                     loop3:
                     while(true)
                     {
                        §§push(this);
                        §§push(this.§-!+§);
                        if(!_loc2_)
                        {
                           §§push(§§pop() + this.§-j§);
                        }
                        §§pop().§-!+§ = §§pop();
                        while(true)
                        {
                           loop5:
                           while(true)
                           {
                              §§push(this.§1!@§);
                              loop6:
                              while(true)
                              {
                                 §§push(!§§pop());
                                 while(true)
                                 {
                                    §§push(Boolean(§§pop()));
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       if(_loc3_)
                                       {
                                          §§push(Boolean(§§pop()));
                                       }
                                       if(§§pop())
                                       {
                                          loop9:
                                          while(true)
                                          {
                                             §§pop();
                                             addr328:
                                             while(true)
                                             {
                                                §§push(Math.abs(this.§-j§) < deltaTime / 15);
                                                if(_loc3_ || this)
                                                {
                                                   continue loop6;
                                                }
                                                addr301:
                                                addr301:
                                                while(_loc3_)
                                                {
                                                }
                                                continue loop9;
                                             }
                                             continue loop6;
                                          }
                                       }
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             loop13:
                                             while(true)
                                             {
                                                addr306:
                                                loop14:
                                                while(true)
                                                {
                                                   §§push(this);
                                                   §§push(this.§-!+§);
                                                   if(_loc3_ || this)
                                                   {
                                                      §§push(deltaTime);
                                                      if(_loc3_)
                                                      {
                                                         §§push(§§pop() / 15);
                                                      }
                                                      §§push(§§pop() + §§pop());
                                                   }
                                                   §§pop().§-!+§ = §§pop();
                                                   while(!_loc2_)
                                                   {
                                                      if(!_loc2_)
                                                      {
                                                         if(_loc3_)
                                                         {
                                                            while(!_loc2_)
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(this.§-!+§);
                                                                  loop18:
                                                                  while(true)
                                                                  {
                                                                     §§push(-AngryBirdsFP11.§1[§);
                                                                     if(_loc3_)
                                                                     {
                                                                        §§push(§§pop() * §]!B§.§9$§);
                                                                     }
                                                                     addr236:
                                                                     while(§§pop() >= §§pop())
                                                                     {
                                                                        continue loop18;
                                                                     }
                                                                     continue loop13;
                                                                  }
                                                               }
                                                               if(!(_loc3_ || _loc3_))
                                                               {
                                                                  continue;
                                                               }
                                                               if(!_loc3_)
                                                               {
                                                                  continue loop14;
                                                               }
                                                               while(true)
                                                               {
                                                                  while(_loc3_)
                                                                  {
                                                                     §§push(this);
                                                                     §§push(this.§1W§);
                                                                     if(_loc3_)
                                                                     {
                                                                        §§push(§§pop() * 0.9);
                                                                     }
                                                                     §§pop().§1W§ = §§pop();
                                                                     continue loop0;
                                                                     addr65:
                                                                     if(!(_loc3_ || deltaTime))
                                                                     {
                                                                        continue;
                                                                     }
                                                                     addr72:
                                                                     if(_loc2_)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           if(_loc3_)
                                                                           {
                                                                              if(_loc2_)
                                                                              {
                                                                                 continue loop0;
                                                                              }
                                                                              §§goto(addr65);
                                                                           }
                                                                           else
                                                                           {
                                                                              while(_loc3_ || deltaTime)
                                                                              {
                                                                                 continue loop2;
                                                                              }
                                                                              §§goto(addr156);
                                                                              addr75:
                                                                           }
                                                                           §§goto(addr72);
                                                                        }
                                                                        continue;
                                                                        addr61:
                                                                     }
                                                                     if(!_loc2_)
                                                                     {
                                                                        addr39:
                                                                        if(!(_loc3_ || deltaTime))
                                                                        {
                                                                           continue loop13;
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr125);
                                                                     }
                                                                     §§goto(addr29);
                                                                  }
                                                                  §§goto(addr142);
                                                               }
                                                            }
                                                            continue loop3;
                                                         }
                                                         continue loop1;
                                                      }
                                                      continue loop5;
                                                   }
                                                   §§goto(addr328);
                                                }
                                             }
                                          }
                                          §§goto(addr223);
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
         }
         §§goto(addr136);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_)
         {
         }
         if(_loc1_ || _loc2_)
         {
            while(true)
            {
               §5!M§.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.§&!§);
            }
            addr208:
         }
         loop1:
         while(true)
         {
            loop2:
            while(true)
            {
               §5!M§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§5N§);
               loop3:
               while(true)
               {
                  while(true)
                  {
                     §5!M§.stage.removeEventListener(MouseEvent.MOUSE_UP,this.§%!1§);
                     loop5:
                     while(true)
                     {
                        while(true)
                        {
                           §5!M§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
                           while(_loc1_)
                           {
                              loop8:
                              while(true)
                              {
                                 §5!M§.stage.removeEventListener(Event.MOUSE_LEAVE,this.§"X§);
                                 addr134:
                                 while(true)
                                 {
                                    continue loop8;
                                 }
                              }
                              if(_loc1_ || this)
                              {
                                 if(!_loc2_)
                                 {
                                    continue loop3;
                                 }
                                 continue loop5;
                              }
                           }
                           continue loop1;
                           addr75:
                           if(!(_loc1_ || this))
                           {
                              continue;
                           }
                           if(!_loc2_)
                           {
                              super.deActivate();
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
                                 §§goto(addr134);
                              }
                              continue loop2;
                           }
                           §§goto(addr208);
                        }
                     }
                     if(_loc2_ && this)
                     {
                        continue;
                     }
                     (§5!M§.getItemByName("Container_Credits") as UIContainerRovio).visible = false;
                     §§goto(addr105);
                  }
               }
            }
         }
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_ && _loc1_)
         {
         }
         if(_loc2_ && _loc2_)
         {
         }
         do
         {
            super.cleanup();
            while(_loc2_)
            {
            }
         }
         while(_loc2_);
         
      }
      
      override public function uiInteractionHandler(eventIndex:int, eventName:String, component:UIEventListenerRovio) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || eventIndex)
         {
         }
         if(_loc6_ || eventName)
         {
            while(true)
            {
               while(!(_loc5_ && eventName))
               {
                  if(_loc5_)
                  {
                     continue;
                  }
                  var _loc4_:* = eventName;
                  if(!_loc5_)
                  {
                     §§push("CREDITS_CLOSE_BUTTON");
                     if(!(_loc5_ && this))
                     {
                        if(_loc6_)
                        {
                           §§push(_loc4_);
                           if(_loc6_ || eventIndex)
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(_loc6_)
                                 {
                                    addr140:
                                    §§push(0);
                                    if(_loc5_ && eventName)
                                    {
                                       addr191:
                                    }
                                 }
                                 else
                                 {
                                    addr183:
                                    §§push(2);
                                    if(!(_loc5_ && component))
                                    {
                                       §§goto(addr191);
                                    }
                                 }
                                 §§goto(addr193);
                              }
                              else
                              {
                                 §§push("FULLSCREEN_BUTTON");
                                 if(_loc6_ || eventName)
                                 {
                                    addr168:
                                    if(§§pop() !== _loc4_)
                                    {
                                       if(false)
                                       {
                                          §§goto(addr183);
                                       }
                                       else
                                       {
                                          §§push(2);
                                       }
                                       addr193:
                                       loop4:
                                       switch(§§pop())
                                       {
                                          case 0:
                                             mNextState = StateStart.STATE_NAME;
                                             break;
                                             addr82:
                                             addr77:
                                             addr70:
                                          case 1:
                                             for(; !_loc5_; while(true)
                                             {
                                                AngryBirdsFP11.§5V§.§>J§();
                                                if(_loc5_ && eventIndex)
                                                {
                                                   break;
                                                }
                                                if(true)
                                                {
                                                   break loop4;
                                                }
                                             })
                                             {
                                                if(_loc6_ || eventName)
                                                {
                                                   if(_loc6_)
                                                   {
                                                      continue;
                                                   }
                                                   §§goto(addr82);
                                                }
                                                §§goto(addr77);
                                             }
                                             §§goto(addr70);
                                       }
                                       return;
                                    }
                                    if(_loc6_ || eventName)
                                    {
                                       §§push(1);
                                       if(!_loc6_)
                                       {
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr183);
                                    }
                                    §§goto(addr193);
                                    addr157:
                                 }
                                 §§goto(addr168);
                              }
                           }
                           §§goto(addr168);
                        }
                        §§goto(addr157);
                     }
                     §§goto(addr168);
                  }
                  §§goto(addr140);
                  addr97:
               }
            }
         }
         §§goto(addr97);
      }
   }
}
