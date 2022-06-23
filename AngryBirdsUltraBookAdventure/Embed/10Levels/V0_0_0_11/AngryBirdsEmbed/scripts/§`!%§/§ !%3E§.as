package §`!%§
{
   import §"!5§.§,!!§;
   import §%x§.§#;§;
   import §'X§.§9[§;
   import §0!<§.§%r§;
   import §>!C§.§6M§;
   import §?!D§.§if§;
   import flash.events.KeyboardEvent;
   
   public class § !>§ extends §9[§
   {
       
      
      protected var §3K§:§if§;
      
      protected var §%!=§:Boolean = false;
      
      protected var §'"§:Boolean = false;
      
      private var §"P§:Boolean = false;
      
      public function § !>§(param1:Boolean, param2:String)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc3_))
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
            this.§3K§.init();
            if(!_loc2_)
            {
               this.§"P§ = false;
            }
         }
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super.activate();
            if(_loc1_ || _loc1_)
            {
               §6M§.§6!E§ = false;
               if(_loc1_ || _loc2_)
               {
                  addr37:
                  §§push(§,!!§.§;4§);
                  if(!_loc2_)
                  {
                     §§push(true);
                     if(!(_loc2_ && this))
                     {
                        §§pop().§69§(§§pop());
                        §§push(§,!!§.§;4§);
                        if(!(_loc2_ && this))
                        {
                           §§goto(addr70);
                        }
                        §§goto(addr104);
                     }
                     addr70:
                     §§pop().§#O§(true);
                     §,!!§.resume();
                     §§goto(addr69);
                  }
                  addr69:
                  if(this.§3K§ == null)
                  {
                     this.§3K§ = this.getGameLogicController(§,!!§.§;4§);
                     if(_loc2_ && this)
                     {
                     }
                     §§goto(addr119);
                  }
                  §§push(§,!!§.§;4§);
                  if(!_loc2_)
                  {
                     addr104:
                     if(§§pop().§3!F§ == 0)
                     {
                        this.levelStarted();
                        if(_loc2_)
                        {
                        }
                        §§goto(addr119);
                     }
                     §,!!§.§ ]§(this.§3K§);
                     §§push(§,!!§.§;4§);
                  }
                  §§pop().background.§break§();
                  §§goto(addr119);
               }
               addr119:
               return;
            }
         }
         §§goto(addr37);
      }
      
      protected function getGameLogicController(param1:§#;§) : §if§
      {
         return new §if§(param1);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(super.run(param1));
         if(_loc3_ || _loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(_loc2_);
         if(_loc3_ || this)
         {
            if(§§pop() != §9[§.STATE_STATUS_RUNNING)
            {
               if(!_loc4_)
               {
                  §§push(_loc2_);
                  if(_loc3_)
                  {
                     return §§pop();
                  }
                  §§goto(addr165);
               }
               §§goto(addr183);
            }
            else if(this.§%!=§)
            {
               if(!(_loc4_ && _loc3_))
               {
                  this.§%!=§ = false;
                  if(_loc3_ || _loc2_)
                  {
                     mNextState = §77§.§0!7§;
                     if(!(_loc3_ || this))
                     {
                        addr135:
                        §§push(this.§'"§);
                        if(_loc3_)
                        {
                           §§push(Boolean(§§pop()));
                        }
                        if(§§pop())
                        {
                           if(_loc3_ || _loc3_)
                           {
                              this.§'"§ = false;
                              if(_loc3_)
                              {
                                 addr153:
                                 §§push(this.§3K§);
                                 if(!(_loc4_ && _loc2_))
                                 {
                                    §§push(§§pop().§^I§);
                                    if(!_loc4_)
                                    {
                                       addr165:
                                       §§push(§if§.LEVEL_STATE_VICTORY2_END);
                                       if(!(_loc4_ && _loc3_))
                                       {
                                          if(§§pop() == §§pop())
                                          {
                                             addr175:
                                             addr177:
                                             if(!this.§"P§)
                                             {
                                                if(!_loc4_)
                                                {
                                                   this.§"P§ = true;
                                                   addr183:
                                                   this.levelCompleted();
                                                }
                                                §§goto(addr183);
                                             }
                                             mNextState = this.getVictoryState();
                                             §6M§.§6!E§ = true;
                                             if(_loc3_ || param1)
                                             {
                                                addr209:
                                             }
                                          }
                                          else
                                          {
                                             addr212:
                                             §§push(this.§3K§.§^I§);
                                             if(_loc3_ || _loc2_)
                                             {
                                                addr220:
                                                §§push(§if§.§ get§);
                                             }
                                          }
                                          §§goto(addr235);
                                       }
                                       if(§§pop() == §§pop())
                                       {
                                          if(_loc3_ || this)
                                          {
                                             addr230:
                                             mNextState = this.getLoserState();
                                          }
                                       }
                                       §§goto(addr235);
                                    }
                                    §§goto(addr220);
                                 }
                                 §§goto(addr212);
                              }
                              §§goto(addr230);
                           }
                           §§goto(addr209);
                        }
                     }
                     addr235:
                     return _loc2_;
                  }
                  §§goto(addr135);
               }
               §§goto(addr153);
            }
            else
            {
               if(!§,!!§.isPaused)
               {
                  §§push(this.§3K§);
                  if(!(_loc4_ && _loc2_))
                  {
                     §§pop().update(param1);
                  }
                  §§goto(addr212);
               }
               §§push(this.§3K§);
               if(!_loc4_)
               {
                  §§push(§§pop().§4x§());
                  if(_loc3_)
                  {
                     §§push(Boolean(§§pop()));
                     if(!(_loc4_ && _loc2_))
                     {
                        addr118:
                        if(!§§pop())
                        {
                           if(_loc3_ || param1)
                           {
                              §§pop();
                              if(_loc3_ || param1)
                              {
                                 §§goto(addr135);
                              }
                              §§goto(addr175);
                           }
                        }
                        §§goto(addr135);
                     }
                     §§goto(addr177);
                  }
                  §§goto(addr118);
               }
            }
            §§goto(addr212);
         }
         §§goto(addr175);
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
         if(!_loc1_)
         {
            super.deActivate();
         }
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            super.cleanup();
         }
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super.keyDown(param1);
            if(!_loc4_)
            {
               if(§,!!§.§[!2§)
               {
                  var _loc2_:* = param1.keyCode;
                  if(!(_loc4_ && _loc3_))
                  {
                     §§push(87);
                     if(_loc3_)
                     {
                        if(§§pop() === _loc2_)
                        {
                           if(!_loc4_)
                           {
                              addr77:
                              §§push(0);
                              if(_loc4_)
                              {
                                 addr99:
                                 if(§§pop() !== _loc2_)
                                 {
                                    addr109:
                                    switch(§§pop())
                                    {
                                       case 0:
                                          §§push(§,!!§.§;4§);
                                          if(!_loc4_)
                                          {
                                             §§pop().§ L§();
                                             if(!(_loc4_ && this))
                                             {
                                                break;
                                             }
                                             break;
                                          }
                                          addr44:
                                          §§pop().§`C§();
                                          if(!_loc4_)
                                          {
                                             break;
                                          }
                                          break;
                                       case 1:
                                          §§goto(addr44);
                                    }
                                    §,!!§.controller.keyDown(param1);
                                    §,!!§.§;4§;
                                    return;
                                    §§push(2);
                                 }
                              }
                              §§goto(addr109);
                           }
                           §§push(1);
                           if(!_loc3_)
                           {
                           }
                        }
                        else
                        {
                           §§push(66);
                           if(_loc3_ || param1)
                           {
                              §§goto(addr99);
                           }
                        }
                     }
                     §§goto(addr109);
                  }
                  §§goto(addr77);
                  addr26:
               }
               §§goto(addr109);
            }
         }
         §§goto(addr26);
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            super.keyUp(param1);
            if(!(_loc3_ && _loc2_))
            {
               §,!!§.controller.keyUp(param1);
            }
         }
      }
      
      public function §4!G§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(§,!!§.§;4§.camera.§=G§);
         if(_loc4_)
         {
            §§push(§§pop() - §,!!§.§;4§.camera.§4#§);
            if(!(_loc3_ && _loc1_))
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc1_:* = §§pop();
         §§push(§,!!§.§;4§.camera.§3Z§);
         if(!_loc3_)
         {
            §§push(§§pop() - §,!!§.§;4§.camera.§4#§);
            if(!(_loc3_ && this))
            {
               addr65:
               §§push(§§pop() / 2);
               if(_loc4_)
               {
                  addr69:
                  §§push(Number(§§pop()));
               }
               var _loc2_:* = §§pop();
               if(!(_loc3_ && this))
               {
                  if(_loc1_ > _loc2_)
                  {
                     if(_loc4_ || _loc1_)
                     {
                        §%r§.§2!2§("Cursor_Zoom_Out");
                        if(!(_loc3_ && _loc3_))
                        {
                           addr108:
                        }
                     }
                     §§goto(addr108);
                  }
                  else
                  {
                     §%r§.§2!2§("Cursor_Zoom_In");
                  }
                  return;
               }
               §§goto(addr108);
            }
            §§goto(addr69);
         }
         §§goto(addr65);
      }
   }
}
