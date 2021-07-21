package §0![§
{
   import §"v§.§3!w§;
   import §%c§.§=!X§;
   import §5!V§.§!w§;
   import §5"-§.§5y§;
   import §;'§.§`!V§;
   import §=!M§.§"o§;
   import flash.events.KeyboardEvent;
   
   public class §6l§ extends §5y§
   {
       
      
      protected var §-!K§:§`!V§;
      
      protected var §3"&§:Boolean = false;
      
      protected var §1!T§:Boolean = false;
      
      private var §<,§:Boolean = false;
      
      public function §6l§(param1:Boolean, param2:String)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            super(param1,param2);
         }
      }
      
      protected function levelStarted() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§-!K§.init();
            do
            {
               this.§<,§ = false;
            }
            while(_loc1_ && _loc1_);
            
         }
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super.activate();
            loop0:
            while(true)
            {
               §3!w§.§6!"§ = false;
               loop1:
               while(true)
               {
                  §§push(§=!X§.§!'§);
                  while(true)
                  {
                     §§push(true);
                     addr148:
                     while(true)
                     {
                        §§pop().§;p§(§§pop());
                     }
                     loop5:
                     while(!(_loc2_ && this))
                     {
                        §§push(true);
                        if(!_loc2_)
                        {
                           §§pop().§'7§(§§pop());
                           loop6:
                           while(true)
                           {
                              §=!X§.resume();
                              loop7:
                              while(true)
                              {
                                 if(this.§-!K§ == null)
                                 {
                                    while(true)
                                    {
                                       this.§-!K§ = this.§`!4§(§=!X§.§!'§);
                                       addr112:
                                       while(!_loc2_)
                                       {
                                       }
                                       continue loop1;
                                       addr44:
                                       if(!(_loc1_ || _loc1_))
                                       {
                                          continue;
                                       }
                                       if(!_loc2_)
                                       {
                                          if(_loc1_)
                                          {
                                             return;
                                          }
                                          continue loop0;
                                       }
                                       addr149:
                                       addr149:
                                       while(true)
                                       {
                                          continue loop5;
                                       }
                                    }
                                 }
                                 while(true)
                                 {
                                    §§push(§=!X§.§!'§);
                                    loop11:
                                    for(; _loc1_; §§push(§=!X§.§!'§),if(!(_loc1_ || _loc1_))
                                    {
                                       continue;
                                    },§§pop().background.§^!g§(),if(!_loc1_)
                                    {
                                       §§goto(addr61);
                                    },if(!(_loc2_ && _loc2_))
                                    {
                                       §§goto(addr44);
                                    },§§goto(addr112))
                                    {
                                       if(§§pop().§," § == 0)
                                       {
                                          if(!(_loc2_ && this))
                                          {
                                             if(!_loc1_)
                                             {
                                                continue loop7;
                                             }
                                             this.levelStarted();
                                          }
                                          loop12:
                                          while(_loc1_)
                                          {
                                             while(true)
                                             {
                                                if(!(_loc2_ && _loc1_))
                                                {
                                                   continue;
                                                }
                                                continue loop12;
                                             }
                                             continue loop11;
                                          }
                                          continue loop6;
                                       }
                                       while(true)
                                       {
                                          §=!X§.§]T§(this.§-!K§);
                                          §§goto(addr61);
                                       }
                                    }
                                    continue loop5;
                                 }
                              }
                           }
                        }
                        else
                        {
                           §§goto(addr148);
                        }
                        §§goto(addr149);
                     }
                  }
               }
            }
         }
         §§goto(addr149);
      }
      
      protected function §`!4§(param1:§!w§) : §`!V§
      {
         return new §`!V§(param1);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(super.run(param1));
         if(!(_loc3_ && this))
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc4_ || param1)
         {
            §§push(_loc2_);
            if(!(_loc3_ && _loc2_))
            {
               if(§§pop() == §5y§.STATE_STATUS_RUNNING)
               {
                  loop0:
                  while(true)
                  {
                     §§push(this.§3"&§);
                     loop1:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           §§push(§=!X§.isPaused);
                           loop2:
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 if(_loc4_)
                                 {
                                    if(!_loc3_)
                                    {
                                       §§push(this.§-!K§);
                                       loop3:
                                       while(true)
                                       {
                                          §§pop().update(param1);
                                          addr267:
                                          loop19:
                                          while(!_loc3_)
                                          {
                                             while(true)
                                             {
                                                §§push(this.§-!K§);
                                                loop21:
                                                while(true)
                                                {
                                                   §§push(§§pop().§]e§());
                                                   addr225:
                                                   addr215:
                                                   while(true)
                                                   {
                                                      §§push(Boolean(§§pop()));
                                                      if(_loc4_)
                                                      {
                                                         if(!(_loc3_ && _loc3_))
                                                         {
                                                            if(§§pop())
                                                            {
                                                               break;
                                                            }
                                                            continue loop2;
                                                         }
                                                         continue loop1;
                                                      }
                                                      continue loop2;
                                                   }
                                                   if(§§pop())
                                                   {
                                                      loop23:
                                                      while(true)
                                                      {
                                                         this.§1!T§ = false;
                                                         loop24:
                                                         while(true)
                                                         {
                                                            §§push(this.§-!K§);
                                                            loop25:
                                                            while(true)
                                                            {
                                                               §§push(§§pop().§`""§);
                                                               addr167:
                                                               loop7:
                                                               while(true)
                                                               {
                                                                  §§push(§`!V§.LEVEL_STATE_VICTORY2_END);
                                                                  loop8:
                                                                  while(true)
                                                                  {
                                                                     if(§§pop() == §§pop())
                                                                     {
                                                                        if(_loc4_ || _loc2_)
                                                                        {
                                                                           if(!_loc4_)
                                                                           {
                                                                              continue loop24;
                                                                           }
                                                                           if(_loc3_ && _loc2_)
                                                                           {
                                                                              §§goto(addr306);
                                                                           }
                                                                           §§push(this.§<,§);
                                                                           if(_loc4_)
                                                                           {
                                                                              if(!_loc4_)
                                                                              {
                                                                                 continue loop2;
                                                                              }
                                                                              if(!§§pop())
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    this.§<,§ = true;
                                                                                    addr196:
                                                                                    while(true)
                                                                                    {
                                                                                       this.§9!m§();
                                                                                       loop12:
                                                                                       while(true)
                                                                                       {
                                                                                          if(!_loc3_)
                                                                                          {
                                                                                             if(_loc4_ || _loc3_)
                                                                                             {
                                                                                                if(_loc4_)
                                                                                                {
                                                                                                   addr162:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      mNextState = this.getVictoryState();
                                                                                                      addr137:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §3!w§.§6!"§ = true;
                                                                                                         addr129:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!_loc3_)
                                                                                                            {
                                                                                                               break loop7;
                                                                                                            }
                                                                                                            continue loop12;
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr162);
                                                                                                   }
                                                                                                   loop10:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc4_);
                                                                                                      if(!_loc4_)
                                                                                                      {
                                                                                                         §§pop();
                                                                                                         addr251:
                                                                                                         if(_loc2_)
                                                                                                         {
                                                                                                            §§push(this.§1!T§);
                                                                                                            if(!(_loc3_ && _loc2_))
                                                                                                            {
                                                                                                               if(!(_loc3_ && param1))
                                                                                                               {
                                                                                                                  §§push(Boolean(§§pop()));
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  §§goto(addr225);
                                                                                                               }
                                                                                                               §§goto(addr215);
                                                                                                            }
                                                                                                            break;
                                                                                                         }
                                                                                                         addr283:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            mNextState = §4g§.§'=§;
                                                                                                            addr275:
                                                                                                            while(true)
                                                                                                            {
                                                                                                            }
                                                                                                            continue loop10;
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr251);
                                                                                                   }
                                                                                                   §§goto(addr215);
                                                                                                   addr245:
                                                                                                   addr132:
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr275);
                                                                                                }
                                                                                                break loop7;
                                                                                             }
                                                                                             continue loop19;
                                                                                          }
                                                                                          §§goto(addr245);
                                                                                          §§goto(addr251);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 addr193:
                                                                              }
                                                                              §§goto(addr132);
                                                                           }
                                                                           §§goto(addr215);
                                                                        }
                                                                        §§goto(addr196);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push(this.§-!K§);
                                                                        if(_loc3_)
                                                                        {
                                                                           continue loop25;
                                                                        }
                                                                        if(_loc3_)
                                                                        {
                                                                           continue loop21;
                                                                        }
                                                                        if(_loc3_)
                                                                        {
                                                                           continue loop3;
                                                                        }
                                                                        §§push(§§pop().§`""§);
                                                                        while(true)
                                                                        {
                                                                           §§push(§`!V§.§51§);
                                                                           if(!(_loc3_ && param1))
                                                                           {
                                                                              if(§§pop() == §§pop())
                                                                              {
                                                                                 if(!_loc3_)
                                                                                 {
                                                                                    if(_loc4_ || this)
                                                                                    {
                                                                                       if(!(_loc4_ || this))
                                                                                       {
                                                                                          continue loop23;
                                                                                       }
                                                                                       this.§1p§();
                                                                                       addr103:
                                                                                       if(!(_loc3_ && _loc3_))
                                                                                       {
                                                                                          if(!(_loc3_ && _loc2_))
                                                                                          {
                                                                                             if(_loc4_ || _loc3_)
                                                                                             {
                                                                                                break loop7;
                                                                                             }
                                                                                             §§goto(addr196);
                                                                                          }
                                                                                          §§goto(addr137);
                                                                                       }
                                                                                       §§goto(addr129);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr193);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr103);
                                                                              }
                                                                              break loop7;
                                                                           }
                                                                           continue loop8;
                                                                        }
                                                                     }
                                                                     §§goto(addr129);
                                                                  }
                                                                  continue loop25;
                                                               }
                                                            }
                                                         }
                                                      }
                                                      addr217:
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(_loc2_);
                                                      if(_loc4_ || _loc3_)
                                                      {
                                                         if(_loc4_ || param1)
                                                         {
                                                            if(!(_loc3_ && this))
                                                            {
                                                               return §§pop();
                                                            }
                                                            break;
                                                         }
                                                         §§goto(addr167);
                                                      }
                                                      §§goto(addr75);
                                                   }
                                                   §§goto(addr306);
                                                }
                                             }
                                          }
                                          continue loop0;
                                       }
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                          this.§3"&§ = false;
                                       }
                                       addr280:
                                    }
                                    §§goto(addr283);
                                 }
                                 §§goto(addr267);
                              }
                              §§goto(addr221);
                           }
                        }
                        §§goto(addr280);
                     }
                  }
               }
               §§goto(addr306);
            }
            addr306:
            return _loc2_;
         }
         §§goto(addr217);
      }
      
      protected function §1p§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            mNextState = this.getLoserState();
         }
      }
      
      protected function §9!m§() : void
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
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            super.deActivate();
         }
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            super.cleanup();
         }
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            super.keyDown(param1);
            loop0:
            while(true)
            {
               loop1:
               while(§=!X§.§>3§)
               {
                  if(!_loc3_)
                  {
                     loop2:
                     while(true)
                     {
                        var _loc2_:* = param1.keyCode;
                        if(!_loc3_)
                        {
                           §§push(87);
                           if(_loc4_ || param1)
                           {
                              if(§§pop() === _loc2_)
                              {
                                 if(_loc4_ || _loc2_)
                                 {
                                    §§push(0);
                                    if(!_loc4_)
                                    {
                                       addr97:
                                       if(§§pop() === _loc2_)
                                       {
                                          addr99:
                                          §§push(1);
                                          if(_loc4_ || this)
                                          {
                                          }
                                       }
                                       else
                                       {
                                          §§push(2);
                                       }
                                    }
                                    else
                                    {
                                       addr88:
                                    }
                                 }
                                 §§goto(addr99);
                              }
                              else
                              {
                                 §§push(66);
                                 if(_loc4_ || _loc2_)
                                 {
                                    §§goto(addr97);
                                 }
                              }
                              switch(§§pop())
                              {
                                 case 0:
                                    break;
                                 case 1:
                                    §§push(§=!X§.§!'§);
                                    §§push(§=!X§.§!'§);
                                    if(!_loc4_)
                                    {
                                       break;
                                    }
                                    §§pop().§3O§();
                                    if(!_loc4_)
                                    {
                                       break loop2;
                                    }
                                    if(true)
                                    {
                                       break loop1;
                                    }
                                    continue loop1;
                              }
                              §§pop().§+j§();
                              if(!_loc3_)
                              {
                                 break loop1;
                              }
                              break;
                           }
                           §§goto(addr88);
                        }
                        §§goto(addr99);
                     }
                     addr130:
                     return;
                     addr38:
                  }
                  continue loop0;
               }
               §=!X§.§#H§.keyDown(param1);
               §§goto(addr130);
            }
         }
         §§goto(addr38);
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            super.keyUp(param1);
            do
            {
               §=!X§.§#H§.keyUp(param1);
            }
            while(!_loc3_);
            
         }
      }
      
      public function § S§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(§=!X§.§!'§.camera.§0"'§);
         if(!_loc3_)
         {
            §§push(§§pop() - §=!X§.§!'§.camera.§<O§);
            if(!_loc3_)
            {
               addr30:
               §§push(Number(§§pop()));
            }
            var _loc1_:* = §§pop();
            §§push(§=!X§.§!'§.camera.§5!s§);
            if(_loc4_)
            {
               §§push(§§pop() - §=!X§.§!'§.camera.§<O§);
               if(_loc4_ || this)
               {
                  §§push(§§pop() / 2);
                  if(!_loc4_)
                  {
                  }
                  addr65:
                  var _loc2_:* = §§pop();
                  if(!_loc3_)
                  {
                     if(_loc1_ <= _loc2_)
                     {
                        §"o§.§^!+§("Cursor_Zoom_In");
                        if(!_loc4_)
                        {
                           addr100:
                        }
                        return;
                     }
                     if(_loc4_)
                     {
                        addr97:
                        §"o§.§^!+§("Cursor_Zoom_Out");
                     }
                     §§goto(addr100);
                  }
                  §§goto(addr97);
               }
               §§push(Number(§§pop()));
            }
            §§goto(addr65);
         }
         §§goto(addr30);
      }
   }
}
