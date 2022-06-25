package § !k§
{
   import §!!§.LevelManager;
   import §+&§.§-!7§;
   import §2!!§.§@!G§;
   import §5i§.§4!]§;
   import §6z§.§+!D§;
   import §8,§.§+_§;
   import flash.events.KeyboardEvent;
   
   public class §@q§ extends §+_§
   {
       
      
      protected var § !a§:§@!G§;
      
      protected var §#!o§:Boolean = false;
      
      protected var §"!'§:Boolean = false;
      
      private var §8!e§:Boolean = false;
      
      public function §@q§(param1:Boolean, param2:String)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || this)
         {
            super(param1,param2);
         }
      }
      
      protected function levelStarted() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§ !a§.init();
         }
         do
         {
            this.§8!e§ = false;
         }
         while(_loc1_ && _loc2_);
         
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super.activate();
            while(true)
            {
               LevelManager.§&!Q§ = false;
               loop1:
               while(!(_loc2_ && this))
               {
                  §§push(§4!]§.§8C§);
                  while(true)
                  {
                     §§push(true);
                     loop3:
                     while(true)
                     {
                        §§pop().§1B§(§§pop());
                        loop4:
                        while(true)
                        {
                           §§push(§4!]§.§8C§);
                           while(true)
                           {
                              §§push(true);
                              if(!_loc1_)
                              {
                                 break;
                              }
                              §§pop().§+!b§(§§pop());
                              loop6:
                              for(; !_loc2_; while(!(_loc2_ && _loc2_))
                              {
                                 if(_loc2_)
                                 {
                                    continue loop4;
                                 }
                                 §§goto(addr42);
                              })
                              {
                                 while(true)
                                 {
                                    §4!]§.resume();
                                    loop8:
                                    while(true)
                                    {
                                       if(this.§ !a§ == null)
                                       {
                                          while(true)
                                          {
                                             this.§ !a§ = this.getGameLogicController(§4!]§.§8C§);
                                             addr112:
                                             while(true)
                                             {
                                             }
                                             addr75:
                                             if(_loc1_ || this)
                                             {
                                                continue loop8;
                                             }
                                          }
                                       }
                                       loop11:
                                       while(true)
                                       {
                                          §§push(§4!]§.§8C§);
                                          loop12:
                                          while(true)
                                          {
                                             if(§§pop().§0!F§ != 0)
                                             {
                                                while(true)
                                                {
                                                   §4!]§.setController(this.§ !a§);
                                                   addr47:
                                                   while(_loc1_)
                                                   {
                                                      if(_loc1_ || _loc2_)
                                                      {
                                                         continue loop12;
                                                      }
                                                   }
                                                   continue loop6;
                                                }
                                                addr42:
                                             }
                                             while(!_loc2_)
                                             {
                                                §§goto(addr75);
                                             }
                                             continue loop11;
                                          }
                                       }
                                    }
                                 }
                              }
                              continue loop1;
                           }
                           continue loop3;
                        }
                     }
                     if(!(_loc2_ && _loc2_))
                     {
                        §§pop().background.§4!w§();
                        if(_loc2_)
                        {
                           §§goto(addr47);
                        }
                        return;
                     }
                  }
               }
            }
         }
         §§goto(addr136);
      }
      
      protected function getGameLogicController(param1:§-!7§) : §@!G§
      {
         return new §@!G§(param1);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(super.run(param1));
         if(_loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc3_)
         {
            §§push(_loc2_);
            loop0:
            while(true)
            {
               if(§§pop() == §+_§.STATE_STATUS_RUNNING)
               {
                  loop1:
                  while(true)
                  {
                     §§push(this.§#!o§);
                     loop2:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           §§push(§4!]§.isPaused);
                           loop3:
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 loop4:
                                 while(true)
                                 {
                                    §§push(this.§ !a§);
                                    loop5:
                                    while(true)
                                    {
                                       §§pop().update(param1);
                                       loop6:
                                       while(true)
                                       {
                                          if(!(_loc4_ && _loc3_))
                                          {
                                             while(true)
                                             {
                                                §§push(this.§ !a§);
                                                loop25:
                                                while(true)
                                                {
                                                   §§push(§§pop().§=!=§());
                                                   if(_loc3_)
                                                   {
                                                      §§push(Boolean(§§pop()));
                                                      loop26:
                                                      while(true)
                                                      {
                                                         if(!§§pop())
                                                         {
                                                            loop27:
                                                            while(true)
                                                            {
                                                               §§pop();
                                                               loop21:
                                                               while(true)
                                                               {
                                                                  if(_loc3_ || this)
                                                                  {
                                                                     if(!_loc4_)
                                                                     {
                                                                        §§push(this.§"!'§);
                                                                        if(!_loc4_)
                                                                        {
                                                                           §§push(Boolean(§§pop()));
                                                                        }
                                                                        loop17:
                                                                        while(true)
                                                                        {
                                                                           if(_loc4_)
                                                                           {
                                                                              continue loop3;
                                                                           }
                                                                           if(!(_loc3_ || _loc2_))
                                                                           {
                                                                              continue loop2;
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 loop29:
                                                                                 while(true)
                                                                                 {
                                                                                    this.§"!'§ = false;
                                                                                    loop30:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(this.§ !a§);
                                                                                       loop12:
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc3_)
                                                                                          {
                                                                                             addr125:
                                                                                             §§push(§§pop().§'9§);
                                                                                             while(_loc3_ || _loc2_)
                                                                                             {
                                                                                                §§push(§@!G§.LEVEL_STATE_VICTORY2_END);
                                                                                                loop11:
                                                                                                while(§§pop() != §§pop())
                                                                                                {
                                                                                                   §§push(this.§ !a§);
                                                                                                   if(_loc4_ && _loc2_)
                                                                                                   {
                                                                                                      continue loop12;
                                                                                                   }
                                                                                                   if(_loc4_ && _loc3_)
                                                                                                   {
                                                                                                      continue loop5;
                                                                                                   }
                                                                                                   §§push(§§pop().§'9§);
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§@!G§.§`§);
                                                                                                      if(!_loc4_)
                                                                                                      {
                                                                                                         if(§§pop() == §§pop())
                                                                                                         {
                                                                                                            if(_loc3_)
                                                                                                            {
                                                                                                               if(!_loc4_)
                                                                                                               {
                                                                                                                  if(_loc3_ || param1)
                                                                                                                  {
                                                                                                                     mNextState = this.getLoserState();
                                                                                                                     addr82:
                                                                                                                     if(_loc3_)
                                                                                                                     {
                                                                                                                        break loop12;
                                                                                                                     }
                                                                                                                     loop23:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(_loc4_)
                                                                                                                        {
                                                                                                                           break loop11;
                                                                                                                        }
                                                                                                                        if(!(_loc3_ || _loc3_))
                                                                                                                        {
                                                                                                                           continue loop6;
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           mNextState = this.getVictoryState();
                                                                                                                           loop16:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(_loc4_)
                                                                                                                              {
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(_loc3_)
                                                                                                                                    {
                                                                                                                                       if(_loc3_ || param1)
                                                                                                                                       {
                                                                                                                                          this.levelCompleted();
                                                                                                                                          continue loop23;
                                                                                                                                       }
                                                                                                                                       continue loop29;
                                                                                                                                    }
                                                                                                                                    continue loop30;
                                                                                                                                 }
                                                                                                                                 continue loop30;
                                                                                                                                 addr180:
                                                                                                                              }
                                                                                                                              if(_loc4_ && _loc2_)
                                                                                                                              {
                                                                                                                                 break;
                                                                                                                              }
                                                                                                                              LevelManager.§&!Q§ = true;
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(!_loc4_)
                                                                                                                                 {
                                                                                                                                    break loop12;
                                                                                                                                 }
                                                                                                                                 continue loop16;
                                                                                                                              }
                                                                                                                           }
                                                                                                                           continue loop4;
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(!(_loc3_ || this))
                                                                                                                     {
                                                                                                                        continue loop21;
                                                                                                                     }
                                                                                                                     this.§8!e§ = true;
                                                                                                                     §§goto(addr180);
                                                                                                                  }
                                                                                                                  addr170:
                                                                                                               }
                                                                                                               §§goto(addr89);
                                                                                                            }
                                                                                                            §§goto(addr82);
                                                                                                         }
                                                                                                         break loop12;
                                                                                                      }
                                                                                                      continue loop11;
                                                                                                   }
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(this.§8!e§);
                                                                                                   if(!(_loc3_ || param1))
                                                                                                   {
                                                                                                      continue loop17;
                                                                                                   }
                                                                                                   if(_loc4_ && _loc3_)
                                                                                                   {
                                                                                                      continue loop27;
                                                                                                   }
                                                                                                   if(!(_loc3_ || this))
                                                                                                   {
                                                                                                      continue loop26;
                                                                                                   }
                                                                                                   if(!§§pop())
                                                                                                   {
                                                                                                      §§goto(addr170);
                                                                                                   }
                                                                                                   §§goto(addr92);
                                                                                                }
                                                                                                continue loop17;
                                                                                                §§goto(addr125);
                                                                                             }
                                                                                             addr287:
                                                                                             return §§pop();
                                                                                             addr126:
                                                                                          }
                                                                                          continue loop25;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 addr207:
                                                                              }
                                                                              addr26:
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc2_);
                                                                                 if(!(_loc4_ && _loc3_))
                                                                                 {
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    §§goto(addr126);
                                                                                 }
                                                                                 §§goto(addr62);
                                                                              }
                                                                              if(!_loc4_)
                                                                              {
                                                                                 return §§pop();
                                                                              }
                                                                              continue loop0;
                                                                           }
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           this.§#!o§ = false;
                                                                           addr281:
                                                                           while(true)
                                                                           {
                                                                              mNextState = §=!#§.§3F§;
                                                                              addr264:
                                                                              while(_loc3_ || _loc3_)
                                                                              {
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    §§goto(addr26);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr286:
                                                                                    §§push(_loc2_);
                                                                                 }
                                                                                 continue loop21;
                                                                              }
                                                                              continue loop1;
                                                                           }
                                                                        }
                                                                        addr278:
                                                                     }
                                                                     §§goto(addr287);
                                                                  }
                                                                  §§goto(addr264);
                                                               }
                                                            }
                                                            addr220:
                                                         }
                                                         §§goto(addr205);
                                                      }
                                                   }
                                                   §§goto(addr220);
                                                }
                                             }
                                             addr211:
                                          }
                                          §§goto(addr281);
                                       }
                                    }
                                 }
                              }
                              §§goto(addr211);
                           }
                        }
                        §§goto(addr278);
                     }
                  }
               }
               §§goto(addr286);
            }
         }
         §§goto(addr207);
      }
      
      protected function levelCompleted() : void
      {
      }
      
      public function getVictoryState() : String
      {
         return null;
      }
      
      public function getLoserState() : String
      {
         return null;
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super.deActivate();
         }
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
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param1))
         {
            super.keyDown(param1);
         }
         loop0:
         while(true)
         {
            loop1:
            while(§4!]§.§2!y§)
            {
               if(!_loc3_)
               {
                  continue loop0;
               }
               var _loc2_:* = param1.keyCode;
               if(_loc3_)
               {
                  §§push(87);
                  if(!_loc4_)
                  {
                     if(§§pop() === _loc2_)
                     {
                        if(_loc3_ || param1)
                        {
                           §§push(0);
                           if(!_loc3_)
                           {
                           }
                        }
                        else
                        {
                           addr113:
                           §§push(1);
                           if(!_loc3_)
                           {
                           }
                        }
                        §§goto(addr121);
                     }
                     else
                     {
                        §§push(66);
                        if(!(_loc4_ && _loc2_))
                        {
                           if(§§pop() === _loc2_)
                           {
                              §§goto(addr113);
                           }
                           else
                           {
                              addr121:
                              switch(§§pop())
                              {
                                 case 0:
                                    addr61:
                                    §4!]§.§8C§.§%Q§();
                                    if(_loc3_)
                                    {
                                       break loop1;
                                    }
                                    break loop1;
                                 case 1:
                                    §§push(§4!]§.§8C§);
                                    if(_loc3_)
                                    {
                                       §§pop().§2!4§();
                                       if(_loc4_ && _loc3_)
                                       {
                                          break;
                                       }
                                       if(true)
                                       {
                                          break loop1;
                                       }
                                       continue;
                                    }
                                    §§goto(addr61);
                              }
                              return;
                              §§push(2);
                           }
                           §§goto(addr121);
                        }
                     }
                  }
                  §§goto(addr121);
               }
               §§goto(addr113);
            }
            §4!]§.§=`§.keyDown(param1);
            §§goto(addr121);
         }
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            super.keyUp(param1);
            do
            {
               §4!]§.§=`§.keyUp(param1);
            }
            while(!(_loc3_ || this));
            
         }
      }
      
      public function §#!k§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(§4!]§.§8C§.camera.§=!m§);
         if(!(_loc4_ && _loc3_))
         {
            §§push(§§pop() - §4!]§.§8C§.camera.§!t§);
            if(_loc3_ || this)
            {
               addr49:
               §§push(Number(§§pop()));
            }
            var _loc1_:* = §§pop();
            §§push(§4!]§.§8C§.camera.§3!O§);
            if(_loc3_)
            {
               §§push(§§pop() - §4!]§.§8C§.camera.§!t§);
               if(!_loc4_)
               {
                  §§push(§§pop() / 2);
                  if(_loc3_)
                  {
                     §§push(Number(§§pop()));
                  }
               }
            }
            var _loc2_:* = §§pop();
            if(_loc3_ || _loc1_)
            {
               if(_loc1_ <= _loc2_)
               {
                  §+!D§.§,!=§("Cursor_Zoom_In");
                  if(!_loc4_)
                  {
                     if(!_loc3_)
                     {
                        addr106:
                        §+!D§.§,!=§("Cursor_Zoom_Out");
                        addr109:
                     }
                     return;
                  }
                  §§goto(addr109);
               }
            }
            §§goto(addr106);
         }
         §§goto(addr49);
      }
   }
}
