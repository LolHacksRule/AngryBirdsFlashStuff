package § !@§
{
   import §1!-§.§[4§;
   import §3a§.§'q§;
   import §5!L§.§=w§;
   import §6A§.§ !§;
   import §7g§.§1Q§;
   import §>!7§.§@!+§;
   import flash.events.KeyboardEvent;
   
   public class §#<§ extends §1Q§
   {
       
      
      protected var §!!&§:§@!+§;
      
      protected var §2!'§:Boolean = false;
      
      protected var § W§:Boolean = false;
      
      private var §5!A§:Boolean = false;
      
      public function §#<§(param1:Boolean, param2:String)
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
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§!!&§.init();
            if(!_loc2_)
            {
               this.§5!A§ = false;
            }
         }
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.activate();
            if(!_loc1_)
            {
               §[4§.§<!L§ = false;
               if(!_loc1_)
               {
                  §§push(§=w§.§ o§);
                  if(!(_loc1_ && _loc2_))
                  {
                     §§push(true);
                     if(_loc2_ || this)
                     {
                        §§pop().§7!E§(§§pop());
                        if(!_loc1_)
                        {
                           §§push(§=w§.§ o§);
                           if(_loc2_ || this)
                           {
                              §§goto(addr68);
                           }
                           §§goto(addr108);
                        }
                        §§goto(addr99);
                     }
                     §§goto(addr68);
                  }
                  addr68:
                  §§pop().§&!B§(true);
                  if(!_loc1_)
                  {
                     §=w§.resume();
                     addr73:
                     if(this.§!!&§ == null)
                     {
                        addr77:
                        this.§!!&§ = this.getGameLogicController(§=w§.§ o§);
                        if(!_loc1_)
                        {
                           §=w§.§>@§(this.§!!&§);
                           addr99:
                           §§push(§=w§.§ o§);
                           if(_loc2_ || _loc2_)
                           {
                              addr108:
                              if(§§pop().§&!?§ == 0)
                              {
                                 if(_loc2_ || _loc1_)
                                 {
                                    §§goto(addr118);
                                 }
                              }
                              §§goto(addr122);
                           }
                           §§goto(addr124);
                           addr85:
                        }
                        §§goto(addr124);
                     }
                     §§goto(addr85);
                  }
                  §§goto(addr118);
               }
               addr118:
               this.levelStarted();
               if(!_loc1_)
               {
                  addr124:
                  §=w§.§ o§.background.§@!K§();
                  addr122:
               }
               return;
            }
            §§goto(addr73);
         }
         §§goto(addr77);
      }
      
      protected function getGameLogicController(param1:§ !§) : §@!+§
      {
         return new §@!+§(param1);
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
         §§push(_loc2_);
         if(_loc3_ || _loc2_)
         {
            if(§§pop() != §1Q§.STATE_STATUS_RUNNING)
            {
               if(!(_loc4_ && _loc2_))
               {
                  §§push(_loc2_);
                  if(_loc3_ || this)
                  {
                     return §§pop();
                  }
                  addr161:
                  §§push(§@!+§.LEVEL_STATE_VICTORY2_END);
                  if(_loc3_ || _loc3_)
                  {
                     if(§§pop() == §§pop())
                     {
                        if(!(_loc4_ && _loc3_))
                        {
                           addr178:
                           addr180:
                           if(!this.§5!A§)
                           {
                              addr181:
                              this.§5!A§ = true;
                              addr184:
                              this.levelCompleted();
                           }
                           mNextState = this.getVictoryState();
                           if(!_loc4_)
                           {
                              §[4§.§<!L§ = true;
                           }
                           addr229:
                           return _loc2_;
                           addr228:
                        }
                        §§goto(addr184);
                     }
                     else
                     {
                        addr208:
                        §§push(this.§!!&§.§?!8§);
                        if(!(_loc4_ && _loc3_))
                        {
                           addr218:
                           if(§§pop() == §@!+§.§%<§)
                           {
                              if(!(_loc4_ && this))
                              {
                                 this.§7X§();
                              }
                           }
                           §§goto(addr228);
                        }
                     }
                     §§goto(addr229);
                  }
                  §§goto(addr218);
               }
               else
               {
                  addr71:
               }
               §§goto(addr229);
            }
            else if(this.§2!'§)
            {
               this.§2!'§ = false;
               if(_loc3_)
               {
                  mNextState = §7§.§>9§;
                  if(!(_loc4_ && param1))
                  {
                     §§goto(addr71);
                  }
                  else
                  {
                     §§goto(addr178);
                  }
               }
               else
               {
                  addr139:
                  this.§ W§ = false;
                  if(!_loc4_)
                  {
                     §§push(this.§!!&§);
                     if(!(_loc4_ && this))
                     {
                        §§push(§§pop().§?!8§);
                        if(_loc3_ || param1)
                        {
                           §§goto(addr161);
                        }
                        §§goto(addr218);
                     }
                     §§goto(addr208);
                  }
               }
               §§goto(addr178);
            }
            else
            {
               if(!§=w§.isPaused)
               {
                  if(_loc3_)
                  {
                     §§push(this.§!!&§);
                     if(!(_loc4_ && _loc3_))
                     {
                        §§pop().update(param1);
                        if(_loc3_ || _loc2_)
                        {
                           addr95:
                           §§push(this.§!!&§);
                           if(!(_loc4_ && _loc2_))
                           {
                              addr114:
                              §§push(§§pop().§9$§());
                              if(_loc3_ || param1)
                              {
                                 §§push(Boolean(§§pop()));
                                 if(_loc3_ || this)
                                 {
                                    if(!§§pop())
                                    {
                                       if(_loc3_)
                                       {
                                          §§pop();
                                          §§push(Boolean(this.§ W§));
                                       }
                                    }
                                    if(§§pop())
                                    {
                                       §§goto(addr139);
                                    }
                                    §§goto(addr178);
                                 }
                              }
                              §§goto(addr180);
                           }
                           §§goto(addr208);
                        }
                        §§goto(addr184);
                     }
                     §§goto(addr114);
                  }
                  §§goto(addr181);
               }
               §§goto(addr95);
            }
            §§goto(addr208);
         }
         §§goto(addr161);
      }
      
      protected function §7X§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
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
         if(!(_loc1_ && _loc1_))
         {
            super.cleanup();
         }
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            super.keyDown(param1);
            if(!(_loc4_ && _loc3_))
            {
               if(§=w§.§%Z§)
               {
                  var _loc2_:* = param1.keyCode;
                  if(!(_loc4_ && _loc2_))
                  {
                     §§push(87);
                     if(!(_loc4_ && param1))
                     {
                        if(§§pop() === _loc2_)
                        {
                           if(_loc3_)
                           {
                              §§push(0);
                              if(_loc4_ && this)
                              {
                                 addr124:
                              }
                           }
                           else
                           {
                              addr116:
                              §§push(1);
                              if(_loc3_ || this)
                              {
                                 §§goto(addr124);
                              }
                           }
                           §§goto(addr129);
                        }
                        else
                        {
                           §§push(66);
                           if(!_loc4_)
                           {
                              §§goto(addr114);
                           }
                        }
                        §§goto(addr124);
                     }
                     addr114:
                     if(§§pop() === _loc2_)
                     {
                        §§goto(addr116);
                     }
                     else
                     {
                        §§push(2);
                     }
                     addr129:
                     switch(§§pop())
                     {
                        case 0:
                           §§push(§=w§.§ o§);
                           if(_loc3_)
                           {
                              §§pop().§`!>§();
                              if(_loc3_)
                              {
                                 addr138:
                                 §=w§.controller.keyDown(param1);
                                 break;
                              }
                              break;
                           }
                           addr49:
                           §§pop().§^d§();
                           if(!(_loc4_ && param1))
                           {
                              §§goto(addr138);
                           }
                           break;
                           §§goto(addr138);
                        case 1:
                           §§goto(addr49);
                        default:
                           §§goto(addr138);
                     }
                     §=w§.§ o§;
                     return;
                  }
                  §§goto(addr116);
                  addr36:
               }
               §§goto(addr138);
            }
         }
         §§goto(addr36);
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            super.keyUp(param1);
            if(!(_loc3_ && _loc3_))
            {
               addr43:
               §=w§.controller.keyUp(param1);
            }
            return;
         }
         §§goto(addr43);
      }
      
      public function §@T§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(§=w§.§ o§.camera.§^!4§);
         if(_loc4_)
         {
            §§push(§§pop() - §=w§.§ o§.camera.§0g§);
            if(!(_loc3_ && _loc3_))
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc1_:* = §§pop();
         §§push(§=w§.§ o§.camera.§'!D§);
         if(!_loc3_)
         {
            §§push(§§pop() - §=w§.§ o§.camera.§0g§);
            if(!_loc3_)
            {
               §§push(§§pop() / 2);
               if(!(_loc3_ && _loc1_))
               {
                  §§push(Number(§§pop()));
               }
            }
         }
         var _loc2_:* = §§pop();
         if(_loc4_)
         {
            if(_loc1_ > _loc2_)
            {
               if(_loc4_ || _loc3_)
               {
                  addr93:
                  §'q§.§7C§("Cursor_Zoom_Out");
                  if(_loc4_ || _loc3_)
                  {
                  }
                  §§goto(addr107);
               }
            }
            else
            {
               §'q§.§7C§("Cursor_Zoom_In");
            }
            addr107:
            return;
         }
         §§goto(addr93);
      }
   }
}
