package §>!A§
{
   import §"!&§.§#!,§;
   import §+!"§.§@P§;
   import §5H§.§[k§;
   import §6J§.§5j§;
   import §?b§.§7!,§;
   import §@!H§.§"E§;
   import flash.events.KeyboardEvent;
   
   public class §^e§ extends §#!,§
   {
       
      
      protected var §7!9§:§"E§;
      
      protected var §3!1§:Boolean = false;
      
      protected var §>!%§:Boolean = false;
      
      private var §3s§:Boolean = false;
      
      public function §^e§(param1:Boolean, param2:String)
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
            this.§7!9§.init();
            if(!_loc2_)
            {
               this.§3s§ = false;
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
               §5j§.§%J§ = false;
               if(_loc1_ || _loc2_)
               {
                  addr37:
                  §§push(§[k§.§&@§);
                  if(!_loc2_)
                  {
                     §§push(true);
                     if(!(_loc2_ && this))
                     {
                        §§pop().§`!G§(§§pop());
                        §§push(§[k§.§&@§);
                        if(!(_loc2_ && this))
                        {
                           §§goto(addr70);
                        }
                        §§goto(addr104);
                     }
                     addr70:
                     §§pop().§%7§(true);
                     §[k§.resume();
                     §§goto(addr69);
                  }
                  addr69:
                  if(this.§7!9§ == null)
                  {
                     this.§7!9§ = this.getGameLogicController(§[k§.§&@§);
                     if(_loc2_ && this)
                     {
                     }
                     §§goto(addr119);
                  }
                  §§push(§[k§.§&@§);
                  if(!_loc2_)
                  {
                     addr104:
                     if(§§pop().§2!,§ == 0)
                     {
                        this.levelStarted();
                        if(_loc2_)
                        {
                        }
                        §§goto(addr119);
                     }
                     §[k§.§^L§(this.§7!9§);
                     §§push(§[k§.§&@§);
                  }
                  §§pop().background.§6!!§();
                  §§goto(addr119);
               }
               addr119:
               return;
            }
         }
         §§goto(addr37);
      }
      
      protected function getGameLogicController(param1:§7!,§) : §"E§
      {
         return new §"E§(param1);
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
            if(§§pop() != §#!,§.STATE_STATUS_RUNNING)
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
            else if(this.§3!1§)
            {
               if(!(_loc4_ && _loc3_))
               {
                  this.§3!1§ = false;
                  if(_loc3_ || _loc2_)
                  {
                     mNextState = §?K§.§?x§;
                     if(!(_loc3_ || this))
                     {
                        addr135:
                        §§push(this.§>!%§);
                        if(_loc3_)
                        {
                           §§push(Boolean(§§pop()));
                        }
                        if(§§pop())
                        {
                           if(_loc3_ || _loc3_)
                           {
                              this.§>!%§ = false;
                              if(_loc3_)
                              {
                                 addr153:
                                 §§push(this.§7!9§);
                                 if(!(_loc4_ && _loc2_))
                                 {
                                    §§push(§§pop().§7H§);
                                    if(!_loc4_)
                                    {
                                       addr165:
                                       §§push(§"E§.LEVEL_STATE_VICTORY2_END);
                                       if(!(_loc4_ && _loc3_))
                                       {
                                          if(§§pop() == §§pop())
                                          {
                                             addr175:
                                             addr177:
                                             if(!this.§3s§)
                                             {
                                                if(!_loc4_)
                                                {
                                                   this.§3s§ = true;
                                                   addr183:
                                                   this.levelCompleted();
                                                }
                                                §§goto(addr183);
                                             }
                                             mNextState = this.getVictoryState();
                                             §5j§.§%J§ = true;
                                             if(_loc3_ || param1)
                                             {
                                                addr209:
                                             }
                                          }
                                          else
                                          {
                                             addr212:
                                             §§push(this.§7!9§.§7H§);
                                             if(_loc3_ || _loc2_)
                                             {
                                                addr220:
                                                §§push(§"E§.§return§);
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
               if(!§[k§.isPaused)
               {
                  §§push(this.§7!9§);
                  if(!(_loc4_ && _loc2_))
                  {
                     §§pop().update(param1);
                  }
                  §§goto(addr212);
               }
               §§push(this.§7!9§);
               if(!_loc4_)
               {
                  §§push(§§pop().§#!%§());
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
               if(§[k§.§,#§)
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
                                          §§push(§[k§.§&@§);
                                          if(!_loc4_)
                                          {
                                             §§pop().§1_§();
                                             if(!(_loc4_ && this))
                                             {
                                                break;
                                             }
                                             break;
                                          }
                                          addr44:
                                          §§pop().§45§();
                                          if(!_loc4_)
                                          {
                                             break;
                                          }
                                          break;
                                       case 1:
                                          §§goto(addr44);
                                    }
                                    §[k§.controller.keyDown(param1);
                                    §[k§.§&@§;
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
               §[k§.controller.keyUp(param1);
            }
         }
      }
      
      public function §#U§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(§[k§.§&@§.camera.§-!D§);
         if(_loc4_)
         {
            §§push(§§pop() - §[k§.§&@§.camera.§'!@§);
            if(!(_loc3_ && _loc1_))
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc1_:* = §§pop();
         §§push(§[k§.§&@§.camera.§?!$§);
         if(!_loc3_)
         {
            §§push(§§pop() - §[k§.§&@§.camera.§'!@§);
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
                        §@P§.§,l§("Cursor_Zoom_Out");
                        if(!(_loc3_ && _loc3_))
                        {
                           addr108:
                        }
                     }
                     §§goto(addr108);
                  }
                  else
                  {
                     §@P§.§,l§("Cursor_Zoom_In");
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
