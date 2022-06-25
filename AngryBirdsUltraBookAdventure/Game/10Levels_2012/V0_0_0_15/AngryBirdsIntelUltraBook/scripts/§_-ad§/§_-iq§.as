package §_-ad§
{
   import §_-0BH§.§_-Hy§;
   import §_-0Dg§.§_-hi§;
   import §_-Ga§.LevelManager;
   import §_-TG§.§_-00u§;
   import §_-qO§.§ in§;
   import §_-x8§.§_-nG§;
   import flash.events.KeyboardEvent;
   
   public class §_-iq§ extends §_-nG§
   {
       
      
      protected var §_-JC§:§_-hi§;
      
      protected var §_-06c§:Boolean = false;
      
      protected var §_-6j§:Boolean = false;
      
      private var §_-0CS§:Boolean = false;
      
      public function §_-iq§(param1:Boolean, param2:String)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param2)
         {
            super(param1,param2);
         }
      }
      
      protected function levelStarted() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§_-JC§.init();
            do
            {
               this.§_-0CS§ = false;
            }
            while(!(_loc1_ || _loc2_));
            
         }
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            super.activate();
            while(true)
            {
               LevelManager.§_-PY§ = false;
               addr117:
               if(!(_loc2_ || _loc1_))
               {
                  continue;
               }
               this.§_-JC§ = this.getGameLogicController(§ in§.§_-Dc§);
               loop9:
               while(!_loc1_)
               {
                  loop10:
                  while(true)
                  {
                     §§push(§ in§.§_-Dc§);
                     loop11:
                     while(true)
                     {
                        if(§§pop().§_-Dn§ == 0)
                        {
                           addr93:
                           while(true)
                           {
                              if(!(_loc2_ || this))
                              {
                                 break loop11;
                                 addr102:
                              }
                              this.levelStarted();
                              while(_loc2_)
                              {
                              }
                              continue loop9;
                           }
                           addr93:
                        }
                        while(true)
                        {
                           § in§.setController(this.§_-JC§);
                           continue loop11;
                        }
                        addr56:
                        if(_loc2_ || _loc2_)
                        {
                           addr63:
                           if(_loc2_ || this)
                           {
                              return;
                           }
                           addr154:
                           while(true)
                           {
                              § in§.resume();
                              §§goto(addr63);
                           }
                        }
                        while(true)
                        {
                           if(this.§_-JC§ == null)
                           {
                              break loop11;
                           }
                           continue loop10;
                           §§goto(addr56);
                        }
                     }
                     addr110:
                     addr165:
                     while(_loc2_ || _loc1_)
                     {
                        §§goto(addr117);
                        §§goto(addr93);
                     }
                     while(true)
                     {
                        §§goto(addr158);
                        §§goto(addr110);
                     }
                  }
               }
               while(true)
               {
                  §§goto(addr150);
               }
            }
         }
         §§goto(addr165);
      }
      
      protected function getGameLogicController(param1:§_-00u§) : §_-hi§
      {
         return new §_-hi§(param1);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(super.run(param1));
         if(_loc4_ || _loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!(_loc3_ && _loc2_))
         {
            §§push(_loc2_);
            loop0:
            while(true)
            {
               if(§§pop() == §_-nG§.STATE_STATUS_RUNNING)
               {
                  loop1:
                  while(true)
                  {
                     §§push(this.§_-06c§);
                     loop2:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           §§push(§ in§.isPaused);
                           loop3:
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 loop4:
                                 while(true)
                                 {
                                    if(_loc4_ || _loc3_)
                                    {
                                       §§push(this.§_-JC§);
                                       loop5:
                                       while(true)
                                       {
                                          §§pop().update(param1);
                                          loop6:
                                          while(!(_loc3_ && this))
                                          {
                                             while(true)
                                             {
                                                §§push(this.§_-JC§);
                                                addr211:
                                                while(!_loc4_)
                                                {
                                                   continue loop5;
                                                }
                                                addr214:
                                                §§push(§§pop().§_-oH§());
                                                loop12:
                                                do
                                                {
                                                   if(_loc3_)
                                                   {
                                                      continue loop2;
                                                   }
                                                   §§push(Boolean(§§pop()));
                                                   while(true)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         break loop12;
                                                      }
                                                      continue loop3;
                                                   }
                                                }
                                                while(!(_loc4_ || _loc2_));
                                                
                                                if(§§pop())
                                                {
                                                   loop26:
                                                   while(true)
                                                   {
                                                      this.§_-6j§ = false;
                                                      loop23:
                                                      while(true)
                                                      {
                                                         §§push(this.§_-JC§);
                                                         loop24:
                                                         while(true)
                                                         {
                                                            §§push(§§pop().§_-Gx§);
                                                            addr159:
                                                            loop9:
                                                            while(true)
                                                            {
                                                               if(_loc3_)
                                                               {
                                                                  continue loop0;
                                                               }
                                                               §§push(§_-hi§.LEVEL_STATE_VICTORY2_END);
                                                               loop10:
                                                               while(§§pop() != §§pop())
                                                               {
                                                                  §§push(this.§_-JC§);
                                                                  if(_loc3_)
                                                                  {
                                                                     continue loop24;
                                                                  }
                                                                  if(_loc4_)
                                                                  {
                                                                     §§push(§§pop().§_-Gx§);
                                                                     while(true)
                                                                     {
                                                                        §§push(§_-hi§.§_-013§);
                                                                        if(!_loc3_)
                                                                        {
                                                                           if(§§pop() == §§pop())
                                                                           {
                                                                              if(!_loc3_)
                                                                              {
                                                                                 if(_loc4_)
                                                                                 {
                                                                                    if(_loc3_)
                                                                                    {
                                                                                       break loop10;
                                                                                    }
                                                                                    mNextState = this.getLoserState();
                                                                                    addr83:
                                                                                    if(!(_loc3_ && _loc3_))
                                                                                    {
                                                                                       if(_loc4_ || param1)
                                                                                       {
                                                                                          if(!_loc4_)
                                                                                          {
                                                                                             continue loop6;
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             break loop9;
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          loop25:
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc3_ && _loc2_)
                                                                                             {
                                                                                                continue loop26;
                                                                                             }
                                                                                             this.levelCompleted();
                                                                                             addr178:
                                                                                             loop14:
                                                                                             while(true)
                                                                                             {
                                                                                                this.§_-0CS§ = true;
                                                                                                continue loop25;
                                                                                                addr147:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!(_loc4_ || _loc2_))
                                                                                                   {
                                                                                                      continue loop14;
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      mNextState = this.getVictoryState();
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(_loc4_ || _loc3_)
                                                                                                         {
                                                                                                            if(!_loc3_)
                                                                                                            {
                                                                                                               LevelManager.§_-PY§ = true;
                                                                                                               continue;
                                                                                                            }
                                                                                                            addr277:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(!(_loc4_ || _loc2_))
                                                                                                               {
                                                                                                                  §§goto(addr293);
                                                                                                               }
                                                                                                               this.§_-06c§ = false;
                                                                                                            }
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(!_loc4_)
                                                                                                               {
                                                                                                                  continue loop4;
                                                                                                               }
                                                                                                               if(_loc4_)
                                                                                                               {
                                                                                                                  §§push(this.§_-6j§);
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(Boolean(§§pop()));
                                                                                                                     addr193:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(!_loc4_)
                                                                                                                        {
                                                                                                                           continue loop3;
                                                                                                                        }
                                                                                                                        §§goto(addr195);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  addr192:
                                                                                                               }
                                                                                                            }
                                                                                                            addr227:
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            mNextState = §_-08C§.§_-pk§;
                                                                                                            addr272:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               break loop9;
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      if(_loc4_ || this)
                                                                                                      {
                                                                                                         break loop9;
                                                                                                      }
                                                                                                      continue loop23;
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             continue loop26;
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr147);
                                                                                 }
                                                                                 §§goto(addr104);
                                                                              }
                                                                              §§goto(addr83);
                                                                           }
                                                                           break loop9;
                                                                        }
                                                                        continue loop10;
                                                                     }
                                                                     addr68:
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr211);
                                                                  }
                                                                  §§goto(addr214);
                                                               }
                                                               while(true)
                                                               {
                                                                  §§push(this.§_-0CS§);
                                                                  if(!_loc3_)
                                                                  {
                                                                     if(!_loc3_)
                                                                     {
                                                                        if(!(_loc3_ && this))
                                                                        {
                                                                           if(!§§pop())
                                                                           {
                                                                              §§goto(addr178);
                                                                           }
                                                                           §§goto(addr119);
                                                                        }
                                                                        §§goto(addr217);
                                                                     }
                                                                     §§goto(addr192);
                                                                  }
                                                                  §§goto(addr193);
                                                               }
                                                               continue loop24;
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                                while(true)
                                                {
                                                   §§push(_loc2_);
                                                   if(_loc4_)
                                                   {
                                                      if(_loc4_ || _loc3_)
                                                      {
                                                         if(_loc4_ || _loc2_)
                                                         {
                                                            return §§pop();
                                                         }
                                                         break;
                                                      }
                                                      §§goto(addr159);
                                                   }
                                                   §§goto(addr68);
                                                }
                                                §§goto(addr293);
                                             }
                                          }
                                          continue loop1;
                                       }
                                    }
                                    §§goto(addr272);
                                 }
                              }
                              §§goto(addr208);
                           }
                        }
                        §§goto(addr277);
                     }
                  }
               }
               addr293:
               return _loc2_;
            }
         }
         §§goto(addr99);
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
         if(!(_loc2_ && _loc2_))
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
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && this))
         {
            super.keyDown(param1);
         }
         loop0:
         while(true)
         {
            while(§ in§.§_-LI§)
            {
               if(!_loc3_)
               {
                  continue loop0;
               }
               var _loc2_:* = param1.keyCode;
               if(!_loc4_)
               {
                  §§push(87);
                  if(_loc3_ || param1)
                  {
                     if(§§pop() === _loc2_)
                     {
                        if(_loc3_)
                        {
                           addr94:
                           §§push(0);
                           if(!_loc3_)
                           {
                              addr116:
                           }
                        }
                        else
                        {
                           addr113:
                           §§push(1);
                           if(!_loc4_)
                           {
                              §§goto(addr116);
                           }
                        }
                        §§goto(addr121);
                     }
                     §§push(66);
                     if(!_loc4_)
                     {
                        §§goto(addr111);
                     }
                     §§goto(addr116);
                  }
                  addr111:
                  if(§§pop() === _loc2_)
                  {
                     §§goto(addr113);
                  }
                  else
                  {
                     §§push(2);
                  }
                  §§goto(addr121);
               }
               §§goto(addr94);
            }
            § in§.§_-03s§.keyDown(param1);
            addr121:
            switch(§§pop())
            {
               case 0:
                  addr51:
                  § in§.§_-Dc§.§_-Fi§();
                  if(!(_loc4_ && _loc3_))
                  {
                     break loop1;
                  }
                  break loop1;
               case 1:
                  §§push(§ in§.§_-Dc§);
                  if(_loc3_)
                  {
                     §§pop().§_-Lv§();
                     if(!(_loc3_ || _loc3_))
                     {
                        break;
                     }
                     if(true)
                     {
                        break loop1;
                     }
                     continue loop1;
                  }
                  §§goto(addr51);
            }
            return;
         }
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            super.keyUp(param1);
         }
         do
         {
            § in§.§_-03s§.keyUp(param1);
         }
         while(_loc3_);
         
      }
      
      public function §_-00d§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(§ in§.§_-Dc§.camera.§_-kC§);
         if(_loc4_)
         {
            §§push(§§pop() - § in§.§_-Dc§.camera.§_-NK§);
            if(_loc4_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc1_:* = §§pop();
         §§push(§ in§.§_-Dc§.camera.§_-TL§);
         if(_loc4_)
         {
            §§push(§§pop() - § in§.§_-Dc§.camera.§_-NK§);
            if(_loc4_)
            {
               §§push(§§pop() / 2);
               if(!(_loc3_ && _loc1_))
               {
                  §§push(Number(§§pop()));
               }
            }
         }
         var _loc2_:* = §§pop();
         if(_loc4_ || this)
         {
            if(_loc1_ <= _loc2_)
            {
               §_-Hy§.§_-Ru§("Cursor_Zoom_In");
               if(_loc4_ || _loc3_)
               {
                  if(_loc3_)
                  {
                     addr107:
                     §_-Hy§.§_-Ru§("Cursor_Zoom_Out");
                     addr110:
                  }
                  else
                  {
                     addr103:
                  }
                  return;
               }
               §§goto(addr110);
            }
            §§goto(addr107);
         }
         §§goto(addr103);
      }
   }
}
