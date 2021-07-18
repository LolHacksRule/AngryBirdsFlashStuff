package §8!_§
{
   import § M§.§]o§;
   import §%!r§.§3!'§;
   import §'4§.§^g§;
   import §,"&§.§9q§;
   import §0N§.§5!^§;
   import §`!j§.§9"!§;
   import flash.events.KeyboardEvent;
   
   public class §="%§ extends §5!&§
   {
       
      
      protected var §!K§:§]o§;
      
      protected var §2K§:Boolean = false;
      
      private var §8f§:Boolean = false;
      
      public function §="%§(param1:§9"!§, param2:§3!'§, param3:Boolean, param4:String)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || param1)
         {
            super(param1,param3,param4,param2);
         }
      }
      
      protected function levelStarted() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§!K§.init();
            do
            {
               this.§8f§ = false;
            }
            while(_loc1_);
            
         }
      }
      
      override public function activate(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            super.activate(param1);
            while(true)
            {
               §§push(§9q§.§>!L§);
               loop1:
               while(true)
               {
                  §§push(true);
                  addr157:
                  while(true)
                  {
                     §§pop().§0!M§(§§pop());
                     addr158:
                     while(true)
                     {
                        §§push(§9q§.§>!L§);
                        continue loop1;
                     }
                  }
               }
            }
         }
         §§goto(addr122);
      }
      
      protected function §?!f§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §9q§.resume();
         }
      }
      
      protected function getGameLogicController(param1:§^g§) : §]o§
      {
         return new §]o§(param1,§6u§);
      }
      
      override protected function update(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            §§push(§9q§.isPaused);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  while(true)
                  {
                     §§push(this.§!K§);
                     addr224:
                     while(true)
                     {
                        §§pop().update(param1);
                        addr226:
                        while(true)
                        {
                        }
                     }
                  }
                  addr222:
               }
               while(true)
               {
                  §§push(this.§!K§);
                  loop5:
                  while(true)
                  {
                     §§push(§§pop().§5r§());
                     loop6:
                     while(true)
                     {
                        §§push(Boolean(§§pop()));
                        loop7:
                        while(true)
                        {
                           if(!§§pop())
                           {
                              loop8:
                              while(true)
                              {
                                 §§pop();
                                 addr218:
                                 while(true)
                                 {
                                    §§push(this.§2K§);
                                    while(_loc3_)
                                    {
                                       §§push(Boolean(§§pop()));
                                       while(!_loc2_)
                                       {
                                          if(_loc2_)
                                          {
                                             continue loop6;
                                          }
                                       }
                                       continue loop7;
                                       if(_loc3_ || _loc3_)
                                       {
                                          if(§§pop())
                                          {
                                             addr123:
                                             §8!^§(this.getVictoryStateName());
                                          }
                                          §§goto(addr25);
                                       }
                                    }
                                    continue loop8;
                                 }
                              }
                           }
                           loop12:
                           while(§§pop())
                           {
                              loop13:
                              while(true)
                              {
                                 this.§2K§ = false;
                                 loop14:
                                 while(true)
                                 {
                                    §§push(this.§!K§);
                                    loop15:
                                    for(; _loc3_; §§push(this.§!K§),if(!(_loc3_ || _loc2_))
                                    {
                                       continue;
                                    },if(_loc3_)
                                    {
                                       §§push(§§pop().§]e§);
                                       if(!_loc2_)
                                       {
                                          §§push(§]o§.§0!+§);
                                          if(_loc2_ && param1)
                                          {
                                             §§goto(addr156);
                                          }
                                          if(§§pop() == §§pop())
                                          {
                                             if(!_loc2_)
                                             {
                                                if(_loc3_ || _loc2_)
                                                {
                                                   if(_loc3_)
                                                   {
                                                      §§push(this.§&h§());
                                                      if(_loc3_ || this)
                                                      {
                                                         if(_loc3_)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               if(_loc3_)
                                                               {
                                                                  if(_loc3_ || _loc3_)
                                                                  {
                                                                     §8!^§(this.getLoserStateName());
                                                                     addr92:
                                                                     if(!(_loc2_ && _loc3_))
                                                                     {
                                                                        break loop12;
                                                                     }
                                                                     continue loop14;
                                                                  }
                                                                  §§goto(addr123);
                                                               }
                                                               §§goto(addr92);
                                                            }
                                                            break loop12;
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr113);
                                                      }
                                                      §§goto(addr190);
                                                   }
                                                   §§goto(addr183);
                                                }
                                                §§goto(addr123);
                                             }
                                             §§goto(addr92);
                                          }
                                          break loop12;
                                       }
                                       §§goto(addr154);
                                    },§§goto(addr224))
                                    {
                                       §§push(§§pop().§]e§);
                                       while(true)
                                       {
                                          §§push(§]o§.LEVEL_STATE_VICTORY2_END);
                                          addr156:
                                          while(true)
                                          {
                                             if(§§pop() != §§pop())
                                             {
                                                continue loop15;
                                             }
                                             if(!_loc2_)
                                             {
                                                if(_loc3_ || this)
                                                {
                                                   if(_loc3_ || this)
                                                   {
                                                      addr175:
                                                      §§push(this.§8f§);
                                                      if(!_loc3_)
                                                      {
                                                         continue loop0;
                                                      }
                                                      if(§§pop())
                                                      {
                                                         addr113:
                                                         §§push(this.isAllowedToChangeVictoryState());
                                                         if(_loc2_)
                                                         {
                                                            §§goto(addr175);
                                                         }
                                                         §§goto(addr115);
                                                      }
                                                      if(_loc3_)
                                                      {
                                                         addr180:
                                                         this.§8f§ = true;
                                                      }
                                                      this.levelCompleted();
                                                      addr183:
                                                      if(!(_loc2_ && param1))
                                                      {
                                                         continue loop13;
                                                      }
                                                      §§goto(addr183);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr222);
                                                   }
                                                }
                                                §§goto(addr218);
                                             }
                                             §§goto(addr180);
                                          }
                                          §§goto(addr224);
                                       }
                                    }
                                    continue loop5;
                                 }
                              }
                           }
                           addr25:
                           return;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr123);
      }
      
      protected function isAllowedToChangeVictoryState() : Boolean
      {
         return true;
      }
      
      protected function §&h§() : Boolean
      {
         return true;
      }
      
      protected function levelCompleted() : void
      {
      }
      
      public function getVictoryStateName() : String
      {
         return null;
      }
      
      public function getLoserStateName() : String
      {
         return null;
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            super.deActivate();
         }
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            super.cleanup();
         }
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
         {
            super.keyDown(param1);
         }
         loop0:
         while(true)
         {
            loop1:
            while(§9q§.§-"<§)
            {
               if(!_loc4_)
               {
                  continue loop0;
               }
               var _loc2_:* = param1.keyCode;
               if(_loc4_)
               {
                  §§push(87);
                  if(_loc4_ || param1)
                  {
                     if(§§pop() === _loc2_)
                     {
                        if(_loc4_ || this)
                        {
                           §§push(0);
                           if(_loc4_)
                           {
                              addr122:
                              switch(§§pop())
                              {
                                 case 0:
                                    break;
                                 case 1:
                                    §§push(§9q§.§>!L§);
                                    §§push(§9q§.§>!L§);
                                    if(_loc4_ || param1)
                                    {
                                       §§pop().§<!!§();
                                       if(!_loc3_)
                                       {
                                          if(!_loc4_)
                                          {
                                             break loop1;
                                          }
                                          if(true)
                                          {
                                             break loop1;
                                          }
                                          continue;
                                          addr55:
                                       }
                                       break loop1;
                                    }
                                    break;
                              }
                              §§pop().§[Q§();
                              §§goto(addr55);
                           }
                        }
                        else
                        {
                           addr109:
                           §§push(1);
                           if(_loc3_ && _loc2_)
                           {
                           }
                        }
                        §§goto(addr122);
                     }
                     else
                     {
                        §§push(66);
                        if(_loc4_ || this)
                        {
                           if(§§pop() === _loc2_)
                           {
                              §§goto(addr109);
                           }
                           else
                           {
                              §§goto(addr122);
                              §§push(2);
                           }
                           §§goto(addr122);
                        }
                     }
                  }
                  §§goto(addr122);
               }
               §§goto(addr109);
            }
            §9q§.§&!$§.keyDown(param1);
            return;
         }
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            super.keyUp(param1);
            do
            {
               §9q§.§&!$§.keyUp(param1);
            }
            while(_loc3_);
            
         }
      }
      
      public function §>"D§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(§9q§.§>!L§.camera.§'!$§);
         if(_loc4_)
         {
            §§push(§§pop() - §9q§.§>!L§.camera.§[!u§);
            if(_loc4_ || _loc1_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc1_:* = §§pop();
         §§push(§9q§.§>!L§.camera.§?!t§);
         if(!_loc3_)
         {
            §§push(§§pop() - §9q§.§>!L§.camera.§[!u§);
            if(_loc4_ || _loc3_)
            {
               §§push(§§pop() / 2);
               if(!(_loc3_ && this))
               {
                  §§push(Number(§§pop()));
               }
            }
         }
         var _loc2_:* = §§pop();
         if(!(_loc3_ && _loc1_))
         {
            if(_loc1_ <= _loc2_)
            {
               §5!^§.§<!w§("Cursor_Zoom_In");
               if(_loc4_ || this)
               {
                  addr101:
               }
               else
               {
                  addr125:
               }
               return;
            }
            if(!(_loc3_ && _loc2_))
            {
               §5!^§.§<!w§("Cursor_Zoom_Out");
            }
            §§goto(addr125);
         }
         §§goto(addr101);
      }
   }
}
