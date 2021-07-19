package §,!"§
{
   import §'!O§.§'!#§;
   import §8!B§.§#! §;
   import §9T§.§1r§;
   import §?#§.§+7§;
   import §^]§.§`!K§;
   import §`K§.§4N§;
   import flash.events.KeyboardEvent;
   
   public class §@'§ extends §'!#§
   {
       
      
      protected var §0!=§:§+7§;
      
      protected var §6!3§:Boolean = false;
      
      protected var §`z§:Boolean = false;
      
      private var §8!>§:Boolean = false;
      
      public function §@'§(param1:Boolean, param2:String)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param1))
         {
            super(param1,param2);
         }
      }
      
      protected function levelStarted() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            this.§0!=§.init();
            do
            {
               this.§8!>§ = false;
            }
            while(_loc1_);
            
         }
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            super.activate();
            §`!K§.§#B§ = false;
            §§push(§#! §.§`'§);
            loop0:
            while(true)
            {
               §§push(true);
               addr143:
               while(true)
               {
                  §§pop().§^!6§(§§pop());
                  addr144:
                  while(true)
                  {
                     §§push(§#! §.§`'§);
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr74);
      }
      
      protected function getGameLogicController(param1:§1r§) : §+7§
      {
         return new §+7§(param1);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(super.run(param1));
         if(_loc4_ || _loc2_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(_loc2_);
         loop0:
         while(true)
         {
            if(§§pop() != §'!#§.STATE_STATUS_RUNNING)
            {
               §§push(_loc2_);
            }
            else
            {
               loop1:
               while(true)
               {
                  §§push(this.§6!3§);
                  loop2:
                  while(!§§pop())
                  {
                     §§push(§#! §.isPaused);
                     if(_loc3_)
                     {
                        continue;
                     }
                     if(!§§pop())
                     {
                        while(true)
                        {
                           §§push(this.§0!=§);
                           addr222:
                           addr66:
                           while(true)
                           {
                              §§pop().update(param1);
                              addr224:
                              while(true)
                              {
                              }
                           }
                           if(!(_loc4_ || this))
                           {
                              continue;
                           }
                           mNextState = this.getLoserState();
                           if(_loc4_)
                           {
                              if(_loc4_ || this)
                              {
                                 loop20:
                                 while(true)
                                 {
                                    §§push(_loc2_);
                                    if(!(_loc3_ && _loc2_))
                                    {
                                       if(_loc4_)
                                       {
                                          break;
                                       }
                                       loop13:
                                       while(true)
                                       {
                                          if(_loc3_ && _loc3_)
                                          {
                                             §§goto(addr244);
                                          }
                                          if(_loc3_)
                                          {
                                             break;
                                          }
                                          §§push(§+7§.LEVEL_STATE_VICTORY2_END);
                                          loop14:
                                          while(true)
                                          {
                                             if(§§pop() == §§pop())
                                             {
                                                if(_loc4_ || _loc3_)
                                                {
                                                   addr149:
                                                   §§push(this.§8!>§);
                                                   if(_loc4_ || _loc2_)
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         this.§8!>§ = true;
                                                         while(true)
                                                         {
                                                            this.levelCompleted();
                                                            addr118:
                                                            while(true)
                                                            {
                                                            }
                                                         }
                                                         addr162:
                                                      }
                                                      while(true)
                                                      {
                                                         mNextState = this.getVictoryState();
                                                         if(!(_loc4_ || _loc3_))
                                                         {
                                                            break;
                                                         }
                                                         §`!K§.§#B§ = true;
                                                         while(true)
                                                         {
                                                            continue loop20;
                                                         }
                                                         §§goto(addr118);
                                                      }
                                                      continue loop1;
                                                   }
                                                   addr169:
                                                   loop10:
                                                   while(true)
                                                   {
                                                      if(_loc4_ || param1)
                                                      {
                                                         loop11:
                                                         while(true)
                                                         {
                                                            if(!§§pop())
                                                            {
                                                               continue loop20;
                                                            }
                                                            this.§`z§ = false;
                                                            if(_loc4_)
                                                            {
                                                               if(!_loc4_)
                                                               {
                                                                  break loop2;
                                                               }
                                                               §§push(this.§0!=§);
                                                               while(!(_loc3_ && _loc3_))
                                                               {
                                                                  §§push(§§pop().§;q§);
                                                                  continue loop13;
                                                               }
                                                               while(_loc4_ || param1)
                                                               {
                                                                  §§push(Boolean(§§pop().§"`§()));
                                                                  if(!Boolean(§§pop().§"`§()))
                                                                  {
                                                                     break loop10;
                                                                  }
                                                                  continue loop11;
                                                                  §§goto(addr122);
                                                               }
                                                               addr122:
                                                               §§goto(addr222);
                                                            }
                                                            while(true)
                                                            {
                                                               continue loop20;
                                                            }
                                                         }
                                                      }
                                                      break;
                                                      §§goto(addr149);
                                                   }
                                                   while(true)
                                                   {
                                                      §§pop();
                                                      break loop14;
                                                      §§goto(addr169);
                                                   }
                                                   addr169:
                                                }
                                                break;
                                             }
                                             §§push(this.§0!=§);
                                             if(_loc4_)
                                             {
                                                §§push(§§pop().§;q§);
                                                continue;
                                             }
                                             §§goto(addr122);
                                          }
                                          while(true)
                                          {
                                             §§push(this.§`z§);
                                             if(_loc4_)
                                             {
                                                §§push(Boolean(§§pop()));
                                             }
                                             §§goto(addr169);
                                          }
                                       }
                                       continue loop0;
                                    }
                                    while(true)
                                    {
                                       §§push(§+7§.§2F§);
                                       if(!(_loc3_ && _loc3_))
                                       {
                                          if(§§pop() != §§pop())
                                          {
                                             continue loop20;
                                          }
                                          if(_loc4_)
                                          {
                                             if(_loc4_)
                                             {
                                                §§goto(addr66);
                                             }
                                             §§goto(addr162);
                                          }
                                          §§goto(addr118);
                                       }
                                       §§goto(addr141);
                                       continue loop20;
                                    }
                                 }
                                 return §§pop();
                              }
                              §§goto(addr224);
                           }
                           §§goto(addr91);
                        }
                     }
                     while(true)
                     {
                        §§goto(addr189);
                        §§goto(addr224);
                     }
                  }
                  while(true)
                  {
                     this.§6!3§ = false;
                     mNextState = §="§.§-A§;
                     §§goto(addr230);
                  }
               }
            }
            addr244:
            return §§pop();
         }
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
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super.deActivate();
         }
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super.cleanup();
         }
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc2_)
         {
            super.keyDown(param1);
            loop0:
            while(true)
            {
               loop1:
               while(§#! §.§^!E§)
               {
                  if(!_loc3_)
                  {
                     loop2:
                     while(true)
                     {
                        var _loc2_:* = param1.keyCode;
                        if(!(_loc3_ && _loc2_))
                        {
                           §§push(87);
                           if(!_loc3_)
                           {
                              if(§§pop() === _loc2_)
                              {
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    addr90:
                                    §§push(0);
                                    if(_loc4_)
                                    {
                                       addr127:
                                       switch(§§pop())
                                       {
                                          case 0:
                                             break;
                                          case 1:
                                             §§push(§#! §.§`'§);
                                             §§push(§#! §.§`'§);
                                             if(_loc3_)
                                             {
                                                break;
                                             }
                                             §§pop().§1!3§();
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
                                       §§pop().§`!'§();
                                       if(_loc4_)
                                       {
                                          break loop1;
                                       }
                                       break;
                                    }
                                    addr112:
                                    if(§§pop() !== _loc2_)
                                    {
                                       §§goto(addr127);
                                       §§push(2);
                                    }
                                    §§goto(addr127);
                                    §§goto(addr127);
                                 }
                                 §§push(1);
                                 if(!(_loc3_ && param1))
                                 {
                                    addr122:
                                 }
                              }
                              else
                              {
                                 §§push(66);
                                 if(_loc4_ || this)
                                 {
                                    §§goto(addr112);
                                 }
                              }
                              §§goto(addr127);
                           }
                           §§goto(addr122);
                        }
                        §§goto(addr90);
                     }
                     addr135:
                     return;
                     addr43:
                  }
                  continue loop0;
               }
               §#! §.controller.keyDown(param1);
               §§goto(addr135);
            }
         }
         §§goto(addr43);
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
               §#! §.controller.keyUp(param1);
            }
            while(!(_loc2_ || this));
            
         }
      }
      
      public function §,C§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(§#! §.§`'§.camera.§%L§);
         if(_loc4_ || _loc3_)
         {
            §§push(§§pop() - §#! §.§`'§.camera.§9!L§);
            if(!(_loc3_ && _loc3_))
            {
               addr50:
               §§push(Number(§§pop()));
            }
            var _loc1_:* = §§pop();
            §§push(§#! §.§`'§.camera.§#K§);
            if(!(_loc3_ && _loc3_))
            {
               §§push(§§pop() - §#! §.§`'§.camera.§9!L§);
               if(_loc4_)
               {
                  §§push(§§pop() / 2);
                  if(!_loc3_)
                  {
                     addr84:
                     §§push(Number(§§pop()));
                  }
                  var _loc2_:* = §§pop();
                  if(_loc4_)
                  {
                     if(_loc1_ <= _loc2_)
                     {
                        §4N§.§!_§("Cursor_Zoom_In");
                        if(_loc4_)
                        {
                           addr101:
                        }
                        else
                        {
                           addr110:
                        }
                        return;
                     }
                     if(!_loc3_)
                     {
                        §4N§.§!_§("Cursor_Zoom_Out");
                     }
                     §§goto(addr110);
                  }
                  §§goto(addr101);
               }
            }
            §§goto(addr84);
         }
         §§goto(addr50);
      }
   }
}
