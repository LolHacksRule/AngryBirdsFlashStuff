package §else§
{
   import §_-OJ§.§_-LW§;
   import §_-PD§.HighscoreSidebar;
   import §_-Qx§.§_-Sf§;
   import §_-W3§.§_-zI§;
   import §_-e3§.§_-9Y§;
   import §_-gY§.§_-Vu§;
   import §_-hU§.§_-MB§;
   import §_-y7§.§_-VA§;
   import flash.events.KeyboardEvent;
   
   public class §_-6y§ extends §_-iL§
   {
       
      
      protected var §_-uZ§:§_-zI§;
      
      protected var §_-oT§:Boolean = false;
      
      protected var §_-VX§:Boolean = false;
      
      public function §_-6y§(param1:Boolean, param2:String)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param2))
         {
            super(param1,param2);
         }
      }
      
      protected function levelStarted() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            this.§_-uZ§.init();
         }
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            super.activate();
            §_-Sf§.§_-LD§ = false;
            §§push(§_-MB§.§_-A7§);
            if(_loc2_)
            {
               §§push(true);
               if(_loc2_)
               {
                  §§pop().§_-Gf§(§§pop());
                  §§push(§_-MB§.§_-A7§);
                  if(!(_loc1_ && _loc1_))
                  {
                     addr44:
                     §§pop().§_-m3§(true);
                     if(_loc2_)
                     {
                        if(this.§_-uZ§ == null)
                        {
                           this.§_-uZ§ = new §_-zI§(§_-MB§.§_-A7§);
                           if(!_loc1_)
                           {
                              addr66:
                              §§push(§_-MB§.§_-A7§);
                              if(_loc2_ || this)
                              {
                                 addr75:
                                 if(§§pop().§_-9c§ == 0)
                                 {
                                    §§goto(addr112);
                                 }
                                 §§goto(addr87);
                              }
                              §§pop().background.§_-o2§();
                              if(_loc1_)
                              {
                              }
                              §§goto(addr112);
                           }
                           addr112:
                           if(_loc2_ || _loc2_)
                           {
                              addr85:
                              this.levelStarted();
                              addr87:
                              §_-1S§.changeState(HighscoreSidebar.§_-Jf§);
                              §_-1S§.showHighscores(§_-Sf§.§_-vj§);
                              §_-MB§.§_-U0§(this.§_-uZ§);
                              §§push(§_-MB§.§_-A7§);
                           }
                           §_-Vu§.§_-jT§.§_-ra§ = false;
                           return;
                        }
                        §§goto(addr66);
                     }
                     §§goto(addr85);
                  }
                  §§goto(addr75);
               }
            }
            §§goto(addr44);
         }
         §§goto(addr85);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = super.run(param1);
         §§push(_loc2_);
         if(!(_loc4_ && _loc3_))
         {
            if(§§pop() != §_-VA§.STATE_STATUS_RUNNING)
            {
               §§push(_loc2_);
               if(!(_loc4_ && _loc2_))
               {
                  return §§pop();
               }
               addr156:
               if(§§pop() == §_-zI§.§_-zt§)
               {
                  if(_loc3_ || this)
                  {
                     mNextState = this.getLoserState();
                  }
               }
            }
            else
            {
               §§push(this.§_-oT§);
               if(_loc3_ || _loc3_)
               {
                  if(§§pop())
                  {
                     this.§_-oT§ = false;
                     mNextState = §_-xb§.§_-Az§;
                     addr178:
                     return _loc2_;
                     addr177:
                  }
                  else
                  {
                     §§push(this.§_-uZ§);
                     if(_loc3_)
                     {
                        §§pop().update(param1);
                        §§push(this.§_-uZ§);
                        if(!(_loc4_ && _loc2_))
                        {
                           §§push(§§pop().§_-1w§());
                           if(!(_loc4_ && param1))
                           {
                              addr79:
                              §§push(Boolean(§§pop()));
                              if(!_loc4_)
                              {
                                 addr89:
                                 if(!§§pop())
                                 {
                                    if(!(_loc4_ && param1))
                                    {
                                       addr98:
                                       §§pop();
                                       if(_loc3_)
                                       {
                                          §§push(this.§_-VX§);
                                          if(_loc3_ || param1)
                                          {
                                             addr111:
                                             if(§§pop())
                                             {
                                                if(_loc3_)
                                                {
                                                   this.§_-VX§ = false;
                                                   if(!(_loc4_ && _loc2_))
                                                   {
                                                      §§push(this.§_-uZ§);
                                                      if(!_loc4_)
                                                      {
                                                         addr128:
                                                         §§push(§§pop().§_-L-§);
                                                         if(_loc3_ || param1)
                                                         {
                                                            addr136:
                                                            §§push(§_-zI§.LEVEL_STATE_VICTORY2_END);
                                                            if(_loc3_)
                                                            {
                                                               if(§§pop() == §§pop())
                                                               {
                                                                  addr141:
                                                                  mNextState = this.getVictoryState();
                                                                  §_-Sf§.§_-LD§ = true;
                                                                  addr148:
                                                                  this.levelCompleted();
                                                                  §§goto(addr177);
                                                               }
                                                               else
                                                               {
                                                                  addr153:
                                                                  §§push(this.§_-uZ§.§_-L-§);
                                                                  if(_loc3_)
                                                                  {
                                                                     §§goto(addr156);
                                                                  }
                                                               }
                                                               §§goto(addr178);
                                                            }
                                                         }
                                                         §§goto(addr156);
                                                      }
                                                      §§goto(addr153);
                                                   }
                                                }
                                                §§goto(addr141);
                                             }
                                             §§goto(addr178);
                                          }
                                          §§goto(addr111);
                                       }
                                       §§goto(addr148);
                                    }
                                 }
                                 §§goto(addr111);
                              }
                              §§goto(addr98);
                           }
                           §§goto(addr89);
                        }
                        §§goto(addr153);
                     }
                     §§goto(addr128);
                  }
                  §§goto(addr178);
               }
               §§goto(addr79);
            }
            §§goto(addr178);
         }
         §§goto(addr136);
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
            if(_loc2_)
            {
               addr27:
               §_-MB§.§_-A7§.background.§_-yE§();
            }
            return;
         }
         §§goto(addr27);
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
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            super.keyDown(param1);
            if(_loc2_ || _loc3_)
            {
               addr44:
               §_-MB§.§_-Gk§.keyDown(param1);
            }
            return;
         }
         §§goto(addr44);
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            super.keyUp(param1);
            if(_loc2_ || this)
            {
               addr44:
               §_-MB§.§_-Gk§.keyUp(param1);
            }
            return;
         }
         §§goto(addr44);
      }
      
      public function §_-Om§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(§_-MB§.§_-A7§.camera.mManualScale);
         if(!_loc3_)
         {
            §§push(§§pop() - §_-LW§.§_-tc§);
            if(_loc4_ || _loc2_)
            {
               addr30:
               §§push(Number(§§pop()));
            }
            var _loc1_:* = §§pop();
            §§push(§_-LW§.§_-E3§);
            if(_loc4_ || _loc1_)
            {
               §§push(§§pop() - §_-LW§.§_-tc§);
               if(!_loc3_)
               {
                  §§push(§§pop() / 2);
                  if(_loc4_)
                  {
                     addr57:
                     §§push(Number(§§pop()));
                  }
               }
               var _loc2_:* = §§pop();
               if(!(_loc3_ && _loc3_))
               {
                  if(_loc1_ > _loc2_)
                  {
                     if(_loc4_ || _loc2_)
                     {
                        addr76:
                        §_-9Y§.§_-k6§("Cursor_Zoom_Out");
                        if(_loc3_ && _loc2_)
                        {
                        }
                     }
                  }
                  else
                  {
                     §_-9Y§.§_-k6§("Cursor_Zoom_In");
                  }
                  return;
               }
               §§goto(addr76);
            }
            §§goto(addr57);
         }
         §§goto(addr30);
      }
   }
}
