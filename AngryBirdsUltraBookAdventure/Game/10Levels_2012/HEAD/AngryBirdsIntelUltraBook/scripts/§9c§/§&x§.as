package §9c§
{
   import §#!X§.LevelManager;
   import §'N§.§'!6§;
   import §-!>§.§4!T§;
   import §9!H§.§7k§;
   import §?A§.LevelMain;
   import §[!>§.StateBase;
   import flash.events.KeyboardEvent;
   
   public class §&x§ extends StateBase
   {
       
      
      protected var §-!,§:§7k§;
      
      protected var §&9§:Boolean = false;
      
      protected var §+J§:Boolean = false;
      
      private var §7!+§:Boolean = false;
      
      public function §&x§(initState:Boolean, name:String)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || name)
         {
         }
         if(_loc4_ || this)
         {
            while(true)
            {
            }
            addr82:
         }
         loop1:
         while(true)
         {
            while(_loc4_)
            {
               super(initState,name);
               while(!_loc4_)
               {
               }
               if(_loc3_)
               {
                  continue;
               }
               if(_loc4_)
               {
                  break loop1;
               }
               §§goto(addr82);
            }
         }
      }
      
      protected function levelStarted() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_)
         {
         }
         if(!(_loc2_ && _loc1_))
         {
            while(true)
            {
               this.§-!,§.init();
            }
            addr93:
         }
         loop1:
         while(true)
         {
            while(!_loc2_)
            {
               this.§7!+§ = false;
               continue loop1;
               if(!(_loc2_ && this))
               {
                  return;
               }
            }
            §§goto(addr93);
         }
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc2_)
         {
         }
         if(_loc2_)
         {
            loop0:
            while(true)
            {
               super.activate();
               loop1:
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     LevelManager.§ @§ = false;
                     loop3:
                     while(true)
                     {
                        loop4:
                        for(; _loc2_; while(_loc2_ || _loc1_)
                        {
                           §§goto(addr216);
                        })
                        {
                           §§push(§4!T§.§1t§);
                           loop5:
                           while(true)
                           {
                              §§push(true);
                              loop6:
                              while(true)
                              {
                                 §§pop().§@!F§(§§pop());
                                 loop7:
                                 while(true)
                                 {
                                    loop8:
                                    while(true)
                                    {
                                       §§push(§4!T§.§1t§);
                                       while(true)
                                       {
                                          §§push(true);
                                          if(_loc1_ && _loc2_)
                                          {
                                             break;
                                          }
                                          §§pop().§;!1§(§§pop());
                                          continue loop4;
                                          addr67:
                                          if(!(_loc1_ && _loc1_))
                                          {
                                             §§pop().background.§9J§();
                                             loop26:
                                             while(true)
                                             {
                                                if(!(_loc1_ && _loc1_))
                                                {
                                                   if(_loc2_)
                                                   {
                                                      if(!(_loc1_ && _loc2_))
                                                      {
                                                         addr93:
                                                         if(!(_loc1_ && this))
                                                         {
                                                            if(_loc2_ || _loc2_)
                                                            {
                                                               continue;
                                                            }
                                                            continue loop7;
                                                         }
                                                         loop16:
                                                         while(true)
                                                         {
                                                            if(_loc1_ && _loc1_)
                                                            {
                                                               while(_loc2_)
                                                               {
                                                                  §4!T§.resume();
                                                                  loop12:
                                                                  for(; !_loc1_; if(!(_loc1_ && _loc1_))
                                                                  {
                                                                     if(!_loc1_)
                                                                     {
                                                                        return;
                                                                     }
                                                                     continue loop8;
                                                                  })
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        if(this.§-!,§ == null)
                                                                        {
                                                                           addr201:
                                                                           while(true)
                                                                           {
                                                                              addr202:
                                                                              while(true)
                                                                              {
                                                                                 this.§-!,§ = this.getGameLogicController(§4!T§.§1t§);
                                                                                 continue loop16;
                                                                              }
                                                                           }
                                                                           addr201:
                                                                        }
                                                                        loop22:
                                                                        while(!(_loc1_ && _loc1_))
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              §4!T§.setController(this.§-!,§);
                                                                              loop24:
                                                                              while(!_loc1_)
                                                                              {
                                                                                 if(_loc2_)
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       if(!_loc1_)
                                                                                       {
                                                                                          §§push(§4!T§.§1t§);
                                                                                          if(_loc1_ && _loc1_)
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          §§goto(addr67);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr201);
                                                                                       }
                                                                                    }
                                                                                    continue loop5;
                                                                                    addr110:
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr149:
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    if(!_loc1_)
                                                                                    {
                                                                                       break loop24;
                                                                                    }
                                                                                    break;
                                                                                 }
                                                                                 §§goto(addr202);
                                                                              }
                                                                              continue loop22;
                                                                           }
                                                                           continue loop12;
                                                                        }
                                                                     }
                                                                  }
                                                                  continue loop0;
                                                               }
                                                               continue loop3;
                                                               addr216:
                                                            }
                                                            if(!_loc2_)
                                                            {
                                                               break;
                                                            }
                                                            while(true)
                                                            {
                                                               addr177:
                                                               while(true)
                                                               {
                                                               }
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(§4!T§.§1t§);
                                                               continue loop5;
                                                               §§goto(addr177);
                                                            }
                                                         }
                                                         continue loop4;
                                                      }
                                                      §§goto(addr177);
                                                   }
                                                   else
                                                   {
                                                      while(true)
                                                      {
                                                         break loop26;
                                                      }
                                                      addr166:
                                                   }
                                                }
                                                else
                                                {
                                                   §§goto(addr110);
                                                }
                                                §§goto(addr201);
                                             }
                                             continue loop2;
                                          }
                                       }
                                       continue loop6;
                                    }
                                 }
                              }
                           }
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
         §§goto(addr195);
      }
      
      protected function getGameLogicController(levelMain:LevelMain) : §7k§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
         }
         if(!_loc2_)
         {
            while(_loc2_ && _loc2_)
            {
            }
         }
         return new §7k§(levelMain);
      }
      
      override public function run(deltaTime:Number) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc3_ && _loc3_)
         {
         }
         if(_loc4_ || superReturn)
         {
         }
         loop0:
         while(true)
         {
            addr45:
            addr57:
            while(true)
            {
               continue loop0;
            }
            §§push(super.run(deltaTime));
            if(_loc4_ || superReturn)
            {
               §§push(int(§§pop()));
            }
            var superReturn:* = §§pop();
            if(!_loc3_)
            {
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
                           §§push(this.§&9§);
                           loop6:
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 §§push(§4!T§.isPaused);
                                 loop7:
                                 while(true)
                                 {
                                    §§push(!§§pop());
                                    loop8:
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          loop9:
                                          while(true)
                                          {
                                             while(true)
                                             {
                                                §§push(this.§-!,§);
                                                loop11:
                                                while(true)
                                                {
                                                   §§pop().update(deltaTime);
                                                   while(true)
                                                   {
                                                      while(!_loc3_)
                                                      {
                                                         addr229:
                                                         if(!(_loc4_ || superReturn))
                                                         {
                                                            continue;
                                                         }
                                                         if(!_loc3_)
                                                         {
                                                            while(true)
                                                            {
                                                               if(_loc4_ || _loc3_)
                                                               {
                                                                  if(_loc4_ || superReturn)
                                                                  {
                                                                     LevelManager.§ @§ = true;
                                                                     loop38:
                                                                     while(true)
                                                                     {
                                                                        if(!_loc3_)
                                                                        {
                                                                           if(!_loc3_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           loop45:
                                                                           while(true)
                                                                           {
                                                                              if(!_loc3_)
                                                                              {
                                                                                 §§push(this.§7!+§);
                                                                                 if(!(_loc3_ && deltaTime))
                                                                                 {
                                                                                    addr280:
                                                                                    if(_loc4_ || _loc3_)
                                                                                    {
                                                                                       if(!_loc3_)
                                                                                       {
                                                                                          if(!_loc4_)
                                                                                          {
                                                                                             continue loop7;
                                                                                          }
                                                                                          addr292:
                                                                                          §§push(!§§pop());
                                                                                          if(!_loc3_)
                                                                                          {
                                                                                             if(§§pop())
                                                                                             {
                                                                                                loop39:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!_loc3_)
                                                                                                   {
                                                                                                      loop43:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         this.§7!+§ = true;
                                                                                                         addr263:
                                                                                                         while(_loc3_)
                                                                                                         {
                                                                                                            continue loop39;
                                                                                                         }
                                                                                                         if(_loc3_)
                                                                                                         {
                                                                                                            loop28:
                                                                                                            while(_loc4_ || this)
                                                                                                            {
                                                                                                               addr334:
                                                                                                               if(_loc4_ || _loc3_)
                                                                                                               {
                                                                                                                  §§push(this.§-!,§);
                                                                                                                  loop29:
                                                                                                                  for(; !(_loc3_ && _loc3_); §§push(this.§-!,§),if(_loc4_ || deltaTime)
                                                                                                                  {
                                                                                                                     if(!_loc3_)
                                                                                                                     {
                                                                                                                        §§push(§§pop().§6$§);
                                                                                                                        while(_loc4_)
                                                                                                                        {
                                                                                                                           §§push(§7k§.§@!`§);
                                                                                                                           if(_loc4_)
                                                                                                                           {
                                                                                                                              if(§§pop() != §§pop())
                                                                                                                              {
                                                                                                                                 break loop38;
                                                                                                                              }
                                                                                                                              if(_loc4_)
                                                                                                                              {
                                                                                                                                 if(_loc4_)
                                                                                                                                 {
                                                                                                                                    addr157:
                                                                                                                                    if(_loc4_ || this)
                                                                                                                                    {
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(!(_loc3_ && _loc3_))
                                                                                                                                          {
                                                                                                                                             mNextState = this.getLoserState();
                                                                                                                                             continue;
                                                                                                                                          }
                                                                                                                                          continue loop43;
                                                                                                                                       }
                                                                                                                                       continue loop43;
                                                                                                                                       addr165:
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       addr426:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          mNextState = StatePause.STATE_NAME;
                                                                                                                                          §§goto(addr157);
                                                                                                                                       }
                                                                                                                                       addr426:
                                                                                                                                    }
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       break loop38;
                                                                                                                                    }
                                                                                                                                    addr423:
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    §§goto(addr314);
                                                                                                                                 }
                                                                                                                                 §§goto(addr426);
                                                                                                                              }
                                                                                                                              §§goto(addr165);
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              §§goto(addr313);
                                                                                                                           }
                                                                                                                           break loop38;
                                                                                                                        }
                                                                                                                        continue loop4;
                                                                                                                        addr145:
                                                                                                                     }
                                                                                                                     continue loop11;
                                                                                                                  })
                                                                                                                  {
                                                                                                                     §§push(§§pop().§6$§);
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§7k§.LEVEL_STATE_VICTORY2_END);
                                                                                                                        addr313:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(§§pop() != §§pop())
                                                                                                                           {
                                                                                                                              continue loop29;
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(!(_loc3_ && _loc3_))
                                                                                                                              {
                                                                                                                                 continue loop45;
                                                                                                                              }
                                                                                                                              addr447:
                                                                                                                              loop47:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 addr448:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    this.§&9§ = false;
                                                                                                                                    continue loop47;
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        addr81:
                                                                                                                        continue loop29;
                                                                                                                        if(!(_loc3_ && _loc3_))
                                                                                                                        {
                                                                                                                           §§goto(addr88);
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop().§#x§());
                                                                                                                     loop16:
                                                                                                                     while(!_loc3_)
                                                                                                                     {
                                                                                                                        §§push(Boolean(§§pop()));
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop());
                                                                                                                           if(!_loc3_)
                                                                                                                           {
                                                                                                                              §§push(Boolean(§§pop()));
                                                                                                                           }
                                                                                                                           if(!§§pop())
                                                                                                                           {
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§pop();
                                                                                                                                 addr386:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(!(_loc3_ && this))
                                                                                                                                    {
                                                                                                                                       §§push(this.§+J§);
                                                                                                                                       if(!_loc3_)
                                                                                                                                       {
                                                                                                                                          addr360:
                                                                                                                                          §§push(Boolean(§§pop()));
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(_loc3_)
                                                                                                                                             {
                                                                                                                                                continue loop16;
                                                                                                                                             }
                                                                                                                                             if(_loc3_ && superReturn)
                                                                                                                                             {
                                                                                                                                                break;
                                                                                                                                             }
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(!§§pop())
                                                                                                                                                {
                                                                                                                                                   break loop38;
                                                                                                                                                }
                                                                                                                                                addr371:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§goto(addr372);
                                                                                                                                                   break loop28;
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          continue loop6;
                                                                                                                                          addr360:
                                                                                                                                       }
                                                                                                                                       §§goto(addr360);
                                                                                                                                    }
                                                                                                                                    §§goto(addr448);
                                                                                                                                 }
                                                                                                                                 §§goto(addr280);
                                                                                                                              }
                                                                                                                              addr385:
                                                                                                                           }
                                                                                                                           §§goto(addr369);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     continue loop8;
                                                                                                                     §§goto(addr302);
                                                                                                                  }
                                                                                                                  addr302:
                                                                                                                  addr376:
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§goto(addr426);
                                                                                                                  §§goto(addr334);
                                                                                                               }
                                                                                                            }
                                                                                                            while(!(_loc3_ && _loc3_))
                                                                                                            {
                                                                                                               §§goto(addr327);
                                                                                                            }
                                                                                                            addr327:
                                                                                                            §§goto(addr371);
                                                                                                         }
                                                                                                         if(!_loc4_)
                                                                                                         {
                                                                                                            continue loop9;
                                                                                                         }
                                                                                                         §§goto(addr258);
                                                                                                      }
                                                                                                   }
                                                                                                   addr467:
                                                                                                   continue loop4;
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr200);
                                                                                          }
                                                                                          §§goto(addr360);
                                                                                       }
                                                                                       §§goto(addr380);
                                                                                    }
                                                                                    §§goto(addr385);
                                                                                 }
                                                                                 §§goto(addr292);
                                                                              }
                                                                              §§goto(addr386);
                                                                           }
                                                                        }
                                                                        §§goto(addr246);
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§push(superReturn);
                                                                        if(_loc4_ || deltaTime)
                                                                        {
                                                                           §§goto(addr81);
                                                                        }
                                                                        §§goto(addr145);
                                                                     }
                                                                  }
                                                                  continue loop5;
                                                                  addr88:
                                                                  return §§pop();
                                                               }
                                                               §§goto(addr205);
                                                               §§goto(addr238);
                                                            }
                                                            addr238:
                                                         }
                                                         §§goto(addr467);
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       while(true)
                                       {
                                          §§goto(addr376);
                                       }
                                    }
                                 }
                              }
                              §§goto(addr447);
                           }
                        }
                     }
                     §§goto(addr466);
                  }
                  while(_loc3_ && superReturn);
                  
                  return §§pop();
                  if(_loc3_ && _loc3_)
                  {
                     continue;
                  }
                  §§goto(addr241);
               }
            }
            §§goto(addr423);
         }
      }
      
      protected function levelCompleted() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_)
         {
         }
      }
      
      public function getVictoryState() : String
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_)
         {
         }
         if(_loc1_ || _loc1_)
         {
         }
         return null;
      }
      
      public function getLoserState() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
         }
         if(_loc1_ && this)
         {
         }
         return null;
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_)
         {
         }
         if(_loc2_)
         {
            do
            {
               super.deActivate();
               while(!(_loc2_ || this))
               {
               }
            }
            while(_loc1_);
            
         }
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
         }
         if(!(_loc1_ && _loc1_))
         {
            do
            {
               super.cleanup();
               while(!_loc2_)
               {
               }
            }
            while(_loc1_);
            
         }
      }
      
      override public function keyDown(e:KeyboardEvent) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc3_)
         {
         }
         if(!(_loc4_ && this))
         {
            while(true)
            {
               addr105:
               if(_loc4_ && this)
               {
                  continue;
               }
               var _loc2_:* = e.keyCode;
               if(_loc3_)
               {
                  if(_loc3_)
                  {
                     §§push(87);
                     if(_loc3_)
                     {
                        if(§§pop() === _loc2_)
                        {
                           if(!(_loc4_ && _loc3_))
                           {
                              §§push(0);
                              if(_loc4_ && _loc2_)
                              {
                                 addr229:
                              }
                           }
                           else
                           {
                              addr211:
                              §§push(2);
                              if(_loc3_ || _loc2_)
                              {
                                 §§goto(addr229);
                              }
                           }
                        }
                        else
                        {
                           §§push(66);
                           if(!(_loc4_ && _loc3_))
                           {
                              addr191:
                              if(§§pop() === _loc2_)
                              {
                                 if(_loc3_ || this)
                                 {
                                    addr200:
                                    §§push(1);
                                    if(_loc3_ || _loc3_)
                                    {
                                    }
                                    §§goto(addr231);
                                 }
                                 else
                                 {
                                    §§goto(addr211);
                                 }
                              }
                              else
                              {
                                 if(false)
                                 {
                                    §§goto(addr211);
                                 }
                                 else
                                 {
                                    addr231:
                                    loop7:
                                    switch(§§pop())
                                    {
                                       case 0:
                                          addr83:
                                          §4!T§.§1t§.§"!b§();
                                          if(_loc3_ || _loc3_)
                                          {
                                             if(_loc4_ && e)
                                             {
                                             }
                                             break;
                                          }
                                          §4!T§.controller.keyDown(e);
                                          while(true)
                                          {
                                             if(_loc3_)
                                             {
                                                break loop7;
                                             }
                                          }
                                          break;
                                          addr257:
                                          addr125:
                                       case 1:
                                          loop5:
                                          while(true)
                                          {
                                             addr46:
                                             while(true)
                                             {
                                                §§push(§4!T§.§1t§);
                                                if(_loc4_)
                                                {
                                                   break;
                                                }
                                                §§pop().§=-§();
                                                if(!_loc4_)
                                                {
                                                   continue loop5;
                                                }
                                                §§goto(addr257);
                                             }
                                             §§goto(addr83);
                                          }
                                          break;
                                       default:
                                          §§goto(addr83);
                                    }
                                    return;
                                    §§push(2);
                                 }
                                 §§goto(addr231);
                              }
                              §§goto(addr211);
                           }
                        }
                        §§goto(addr231);
                     }
                     §§goto(addr191);
                  }
                  §§goto(addr200);
               }
               §§goto(addr211);
            }
         }
         while(true)
         {
            super.keyDown(e);
            loop2:
            while(!(_loc4_ && _loc3_))
            {
               while(true)
               {
                  if(_loc3_)
                  {
                     if(!§4!T§.DEBUG_MODE_ENABLED)
                     {
                        break;
                     }
                     continue;
                  }
                  continue loop2;
               }
               §§goto(addr83);
            }
         }
      }
      
      override public function keyUp(e:KeyboardEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc3_)
         {
         }
         if(_loc2_ || this)
         {
            while(true)
            {
               while(!(_loc3_ && this))
               {
                  super.keyUp(e);
                  loop2:
                  for(; !(_loc3_ && e); if(_loc2_ || _loc3_)
                  {
                     addr65:
                     return;
                  })
                  {
                     loop3:
                     while(true)
                     {
                        §4!T§.controller.keyUp(e);
                        addr83:
                        while(true)
                        {
                           if(!(_loc3_ && _loc2_))
                           {
                              if(_loc2_ || _loc3_)
                              {
                                 continue loop2;
                              }
                              continue loop3;
                           }
                        }
                        §§goto(addr65);
                     }
                  }
               }
            }
         }
         §§goto(addr83);
      }
      
      public function §'7§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc3_)
         {
         }
         if(_loc4_)
         {
            loop0:
            while(true)
            {
               addr37:
               while(true)
               {
                  continue loop0;
               }
            }
            addr41:
         }
         while(true)
         {
            if(_loc3_ && borderValue)
            {
               continue;
            }
            if(_loc4_)
            {
               if(true)
               {
                  break;
               }
            }
            else
            {
               §§goto(addr41);
            }
            §§goto(addr37);
         }
         §§push(§4!T§.§1t§.camera.§+!1§);
         if(!(_loc3_ && _loc3_))
         {
            §§push(§§pop() - §4!T§.§1t§.camera.§<!T§);
            if(!(_loc3_ && borderValue))
            {
               addr67:
               §§push(Number(§§pop()));
            }
            var zoomLevel:* = §§pop();
            if(!_loc4_)
            {
            }
            §§push(§4!T§.§1t§.camera.§0%§);
            if(!_loc3_)
            {
               §§push(§§pop() - §4!T§.§1t§.camera.§<!T§);
               if(!_loc3_)
               {
                  §§push(§§pop() / 2);
                  if(_loc4_)
                  {
                     addr101:
                     §§push(Number(§§pop()));
                  }
               }
               var borderValue:* = §§pop();
               if(_loc4_ || zoomLevel)
               {
                  loop3:
                  for(; zoomLevel <= borderValue; if(_loc4_ || zoomLevel)
                  {
                     addr111:
                     return;
                  })
                  {
                     §§push(§'!6§.§!7§("Cursor_Zoom_In"));
                     if(!(_loc3_ && borderValue))
                     {
                        §§pop();
                        loop4:
                        while(_loc4_ || this)
                        {
                           if(_loc3_)
                           {
                              break loop3;
                           }
                           while(true)
                           {
                              if(!_loc3_)
                              {
                                 if(_loc3_ && zoomLevel)
                                 {
                                    break;
                                 }
                                 continue loop3;
                              }
                              continue loop4;
                           }
                           §'!6§.§!7§("Cursor_Zoom_Out");
                           break;
                        }
                        §§goto(addr111);
                     }
                     §§goto(addr175);
                  }
                  §§goto(addr175);
               }
               §§goto(addr169);
            }
            §§goto(addr101);
         }
         §§goto(addr67);
      }
   }
}
