package §;u§
{
   import §+!c§.§&!0§;
   import §-p§.§4!`§;
   import §4!<§.§'!S§;
   import §8";§.§+d§;
   import §9!n§.LevelManager;
   import §@!"§.§?l§;
   import flash.events.KeyboardEvent;
   
   public class §6!T§ extends §+d§
   {
       
      
      protected var §%"9§:§4!`§;
      
      protected var §<!v§:Boolean = false;
      
      protected var §0"E§:Boolean = false;
      
      private var §5"P§:Boolean = false;
      
      public function §6!T§(param1:Boolean, param2:String)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
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
            this.§%"9§.init();
            do
            {
               this.§5"P§ = false;
            }
            while(!_loc2_);
            
         }
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super.activate();
            while(true)
            {
               LevelManager.§50§ = false;
               while(_loc1_ || _loc2_)
               {
                  §§push(§?l§.§'h§);
                  loop2:
                  while(true)
                  {
                     §§push(true);
                     addr131:
                     while(true)
                     {
                        §§pop().§#"[§(§§pop());
                        addr132:
                        while(true)
                        {
                           §§push(§?l§.§'h§);
                           continue loop2;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr45);
      }
      
      protected function getGameLogicController(param1:§'!S§) : §4!`§
      {
         return new §4!`§(param1);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(super.run(param1));
         if(_loc3_ || _loc2_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!_loc4_)
         {
            §§push(_loc2_);
            loop0:
            while(true)
            {
               if(§§pop() == §+d§.STATE_STATUS_RUNNING)
               {
                  loop1:
                  while(true)
                  {
                     §§push(this.§<!v§);
                     loop2:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           §§push(§?l§.isPaused);
                           loop3:
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 while(true)
                                 {
                                    §§push(this.§%"9§);
                                    addr278:
                                    while(true)
                                    {
                                       §§pop().update(param1);
                                       addr280:
                                       while(true)
                                       {
                                       }
                                    }
                                 }
                                 addr276:
                              }
                              while(true)
                              {
                                 §§push(this.§%"9§);
                                 loop8:
                                 while(true)
                                 {
                                    §§push(§§pop().§&!k§());
                                    if(_loc3_ || param1)
                                    {
                                       §§push(Boolean(§§pop()));
                                    }
                                    loop9:
                                    while(true)
                                    {
                                       if(!§§pop())
                                       {
                                          loop10:
                                          while(!_loc4_)
                                          {
                                             §§pop();
                                             while(true)
                                             {
                                                if(_loc3_ || _loc3_)
                                                {
                                                   §§push(this.§0"E§);
                                                   if(_loc3_ || _loc2_)
                                                   {
                                                      if(!(_loc3_ || _loc3_))
                                                      {
                                                         continue loop10;
                                                      }
                                                      §§push(Boolean(§§pop()));
                                                   }
                                                   do
                                                   {
                                                      if(!_loc3_)
                                                      {
                                                         continue loop9;
                                                      }
                                                   }
                                                   while(_loc3_);
                                                   
                                                   continue loop3;
                                                   addr225:
                                                }
                                                §§goto(addr276);
                                             }
                                             §§goto(addr278);
                                          }
                                          continue loop2;
                                       }
                                       while(true)
                                       {
                                          if(!§§pop())
                                          {
                                             loop29:
                                             while(true)
                                             {
                                                §§push(_loc2_);
                                                if(!(_loc4_ && _loc2_))
                                                {
                                                   break;
                                                }
                                                loop19:
                                                for(; _loc3_; continue loop29)
                                                {
                                                   §§push(§4!`§.LEVEL_STATE_FAIL);
                                                   if(!_loc3_)
                                                   {
                                                      while(true)
                                                      {
                                                         if(§§pop() == §§pop())
                                                         {
                                                            §§goto(addr175);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr45);
                                                         }
                                                      }
                                                      continue loop8;
                                                      addr174:
                                                   }
                                                   if(§§pop() != §§pop())
                                                   {
                                                      continue loop29;
                                                   }
                                                   if(_loc3_)
                                                   {
                                                      this.§4"+§();
                                                   }
                                                   if(!(_loc3_ || _loc2_))
                                                   {
                                                      loop20:
                                                      while(true)
                                                      {
                                                         if(_loc3_ || _loc3_)
                                                         {
                                                            if(!(_loc4_ && param1))
                                                            {
                                                               if(!(_loc4_ && _loc2_))
                                                               {
                                                                  break;
                                                               }
                                                               loop21:
                                                               for(; !_loc4_; while(true)
                                                               {
                                                                  this.§5"P§ = true;
                                                                  continue loop21;
                                                               })
                                                               {
                                                                  this.levelCompleted();
                                                                  loop22:
                                                                  while(true)
                                                                  {
                                                                     if(!_loc4_)
                                                                     {
                                                                        if(_loc3_)
                                                                        {
                                                                           if(!_loc3_)
                                                                           {
                                                                              §§goto(addr300);
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              mNextState = this.getVictoryState();
                                                                              addr117:
                                                                              addr231:
                                                                              loop24:
                                                                              while(true)
                                                                              {
                                                                                 if(_loc3_)
                                                                                 {
                                                                                    if(_loc3_ || param1)
                                                                                    {
                                                                                       continue loop20;
                                                                                    }
                                                                                    addr175:
                                                                                    while(!(_loc4_ && _loc3_))
                                                                                    {
                                                                                       §§push(this.§5"P§);
                                                                                       if(!_loc3_)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       if(§§pop())
                                                                                       {
                                                                                          continue loop24;
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc4_ && param1)
                                                                                          {
                                                                                             break loop24;
                                                                                          }
                                                                                          if(!(_loc4_ && this))
                                                                                          {
                                                                                             continue loop21;
                                                                                          }
                                                                                          addr294:
                                                                                          while(true)
                                                                                          {
                                                                                             mNextState = §4!Q§.STATE_NAME;
                                                                                             break loop21;
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    break loop22;
                                                                                    §§goto(addr225);
                                                                                 }
                                                                                 §§goto(addr187);
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 this.§0"E§ = false;
                                                                                 addr234:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(this.§%"9§);
                                                                                    addr150:
                                                                                    while(true)
                                                                                    {
                                                                                       if(!(_loc4_ && _loc2_))
                                                                                       {
                                                                                          §§push(§§pop().§1A§);
                                                                                          break loop19;
                                                                                       }
                                                                                       addr45:
                                                                                       §§push(this.§%"9§);
                                                                                       if(_loc3_ || this)
                                                                                       {
                                                                                          if(!_loc4_)
                                                                                          {
                                                                                             §§push(§§pop().§1A§);
                                                                                             continue loop19;
                                                                                          }
                                                                                          continue loop8;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr187);
                                                                              }
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr252);
                                                                        }
                                                                        §§goto(addr278);
                                                                     }
                                                                     §§goto(addr234);
                                                                  }
                                                                  §§goto(addr280);
                                                               }
                                                               while(true)
                                                               {
                                                                  continue loop29;
                                                               }
                                                            }
                                                            §§goto(addr130);
                                                         }
                                                         §§goto(addr117);
                                                      }
                                                      continue loop29;
                                                   }
                                                   if(_loc3_)
                                                   {
                                                      if(_loc3_ || param1)
                                                      {
                                                         continue loop29;
                                                      }
                                                      continue loop1;
                                                   }
                                                   addr291:
                                                   while(true)
                                                   {
                                                      this.§<!v§ = false;
                                                   }
                                                   §§goto(addr294);
                                                   §§goto(addr175);
                                                }
                                                while(!(_loc4_ && this))
                                                {
                                                   continue loop0;
                                                }
                                                §§goto(addr300);
                                             }
                                             return §§pop();
                                          }
                                          §§goto(addr231);
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        §§goto(addr291);
                     }
                  }
               }
               addr300:
               return _loc2_;
            }
         }
         §§goto(addr201);
      }
      
      protected function §4"+§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            mNextState = this.getLoserState();
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
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super.deActivate();
         }
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.cleanup();
         }
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            super.keyDown(param1);
         }
         loop0:
         while(true)
         {
            addr37:
            addr131:
            while(§?l§.§#V§)
            {
               continue loop0;
            }
            addr135:
            §?l§.§5-§.keyDown(param1);
            return;
         }
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            super.keyUp(param1);
            do
            {
               §?l§.§5-§.keyUp(param1);
            }
            while(!(_loc2_ || _loc2_));
            
         }
      }
      
      public function §&"<§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(§?l§.§'h§.camera.§=!r§);
         if(_loc3_ || _loc1_)
         {
            §§push(§§pop() - §?l§.§'h§.camera.§"!?§);
            if(_loc3_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc1_:* = §§pop();
         §§push(§?l§.§'h§.camera.§["C§);
         if(!_loc4_)
         {
            §§push(§§pop() - §?l§.§'h§.camera.§"!?§);
            if(_loc3_ || _loc2_)
            {
               §§push(§§pop() / 2);
               if(_loc4_)
               {
               }
               addr79:
               var _loc2_:* = §§pop();
               if(!_loc4_)
               {
                  if(_loc1_ <= _loc2_)
                  {
                     §&!0§.§6B§("Cursor_Zoom_In");
                     if(!(_loc3_ || _loc2_))
                     {
                        addr109:
                     }
                     return;
                  }
                  if(_loc3_)
                  {
                     addr106:
                     §&!0§.§6B§("Cursor_Zoom_Out");
                  }
                  §§goto(addr109);
               }
               §§goto(addr106);
            }
            §§push(Number(§§pop()));
         }
         §§goto(addr79);
      }
   }
}
