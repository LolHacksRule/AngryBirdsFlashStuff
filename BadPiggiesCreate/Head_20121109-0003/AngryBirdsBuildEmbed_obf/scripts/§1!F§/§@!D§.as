package §1!F§
{
   import § !r§.§%s§;
   import §-!0§.§1^§;
   import §5#§.§@o§;
   import §<!<§.§7E§;
   import §=!3§.§;!!§;
   import §?!-§.§'!V§;
   import flash.events.KeyboardEvent;
   
   public class §@!D§ extends §;!!§
   {
       
      
      protected var §5!J§:§@o§;
      
      protected var §,![§:Boolean = false;
      
      protected var §4!,§:Boolean = false;
      
      private var §3!_§:Boolean = false;
      
      public function §@!D§(param1:Boolean, param2:String)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param1))
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
            this.§5!J§.init();
            if(!(_loc1_ && _loc1_))
            {
               this.§3!_§ = false;
            }
         }
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            super.activate();
            §1^§.§,6§ = false;
            §§push(§'!V§.§1!2§);
            if(!(_loc1_ && _loc2_))
            {
               §§push(true);
               if(!(_loc1_ && _loc1_))
               {
                  §§pop().§-I§(§§pop());
                  if(!(_loc1_ && _loc2_))
                  {
                     §§push(§'!V§.§1!2§);
                     if(!(_loc1_ && _loc1_))
                     {
                        addr74:
                        §§pop().§?m§(true);
                        if(!(_loc1_ && _loc1_))
                        {
                           addr82:
                           §'!V§.resume();
                           if(!_loc1_)
                           {
                              if(this.§5!J§ == null)
                              {
                                 this.§5!J§ = this.getGameLogicController(§'!V§.§1!2§);
                              }
                           }
                           addr137:
                           §'!V§.§1!2§.background.§[!<§();
                           addr139:
                           return;
                           addr135:
                        }
                        §§push(§'!V§.§1!2§);
                        if(_loc2_)
                        {
                           addr110:
                           if(§§pop().§1z§ == 0)
                           {
                              if(_loc2_ || this)
                              {
                                 this.levelStarted();
                                 if(!_loc1_)
                                 {
                                    addr124:
                                    §'!V§.§>_§(this.§5!J§);
                                    if(!(_loc1_ && this))
                                    {
                                       §§goto(addr135);
                                    }
                                 }
                              }
                              §§goto(addr139);
                           }
                           §§goto(addr124);
                        }
                     }
                  }
                  §§goto(addr137);
               }
               §§goto(addr74);
            }
            §§goto(addr110);
         }
         §§goto(addr82);
      }
      
      protected function getGameLogicController(param1:§7E§) : §@o§
      {
         return new §@o§(param1);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(super.run(param1));
         if(!(_loc4_ && _loc2_))
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!(_loc4_ && _loc3_))
         {
            §§push(_loc2_);
            if(!_loc4_)
            {
               if(§§pop() != §;!!§.STATE_STATUS_RUNNING)
               {
                  §§push(_loc2_);
                  if(_loc3_)
                  {
                     return §§pop();
                  }
                  addr150:
                  §§push(§@o§.LEVEL_STATE_VICTORY2_END);
                  if(!(_loc4_ && param1))
                  {
                     if(§§pop() == §§pop())
                     {
                        addr162:
                        if(!this.§3!_§)
                        {
                           this.§3!_§ = true;
                           addr166:
                           this.levelCompleted();
                           if(!_loc4_)
                           {
                              addr180:
                              mNextState = this.getVictoryState();
                              §1^§.§,6§ = true;
                           }
                           §§goto(addr208);
                        }
                        §§goto(addr180);
                     }
                     else
                     {
                        addr190:
                        §§push(this.§5!J§.§<!]§);
                        if(!(_loc4_ && _loc3_))
                        {
                           addr198:
                           §§push(§@o§.§%!s§);
                        }
                        §§goto(addr208);
                     }
                  }
                  if(§§pop() == §§pop())
                  {
                     if(!_loc4_)
                     {
                        mNextState = this.getLoserState();
                     }
                  }
                  §§goto(addr208);
               }
               else
               {
                  §§push(this.§,![§);
                  if(!_loc4_)
                  {
                     if(§§pop())
                     {
                        this.§,![§ = false;
                        mNextState = §^r§.STATE_NAME;
                        if(!(_loc4_ && _loc3_))
                        {
                           §§goto(addr208);
                        }
                        else
                        {
                           addr130:
                           this.§4!,§ = false;
                           §§push(this.§5!J§);
                           if(_loc3_ || this)
                           {
                              addr142:
                              §§push(§§pop().§<!]§);
                              if(_loc3_ || _loc3_)
                              {
                                 §§goto(addr150);
                              }
                              §§goto(addr198);
                           }
                        }
                        §§goto(addr208);
                     }
                     else
                     {
                        if(!§'!V§.§=!A§)
                        {
                           if(!(_loc4_ && this))
                           {
                              §§push(this.§5!J§);
                              if(!(_loc4_ && _loc3_))
                              {
                                 §§pop().update(param1);
                                 addr86:
                                 §§push(this.§5!J§);
                                 if(!(_loc4_ && _loc3_))
                                 {
                                    §§push(§§pop().§,!>§());
                                    if(_loc3_ || _loc3_)
                                    {
                                       §§push(Boolean(§§pop()));
                                    }
                                    if(!§§pop())
                                    {
                                       if(_loc3_ || this)
                                       {
                                          addr123:
                                          §§pop();
                                          §§push(this.§4!,§);
                                       }
                                       §§push(Boolean(§§pop()));
                                       if(_loc4_)
                                       {
                                       }
                                       §§goto(addr162);
                                    }
                                    if(§§pop())
                                    {
                                       §§goto(addr130);
                                    }
                                    §§goto(addr208);
                                 }
                                 §§goto(addr190);
                              }
                              §§goto(addr142);
                           }
                           §§goto(addr130);
                        }
                        §§goto(addr86);
                     }
                  }
                  §§goto(addr123);
               }
               §§goto(addr162);
            }
            addr208:
            return _loc2_;
         }
         §§goto(addr166);
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
         if(_loc1_ || _loc1_)
         {
            super.deActivate();
         }
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
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
            if(_loc3_)
            {
               if(§'!V§.§>!q§)
               {
                  var _loc2_:* = param1.keyCode;
                  if(!(_loc4_ && _loc2_))
                  {
                     §§push(87);
                     if(!(_loc4_ && _loc2_))
                     {
                        if(§§pop() === _loc2_)
                        {
                           if(_loc3_ || _loc3_)
                           {
                              §§push(0);
                              if(_loc4_ && _loc2_)
                              {
                              }
                           }
                           else
                           {
                              addr116:
                              §§push(1);
                              if(_loc3_)
                              {
                                 addr119:
                              }
                           }
                           §§goto(addr124);
                        }
                        else
                        {
                           §§push(66);
                           if(_loc3_ || _loc2_)
                           {
                              if(§§pop() === _loc2_)
                              {
                                 §§goto(addr116);
                              }
                              else
                              {
                                 §§push(2);
                              }
                              addr124:
                              switch(§§pop())
                              {
                                 case 0:
                                    §§push(§'!V§.§1!2§);
                                    if(_loc4_ && this)
                                    {
                                       addr44:
                                       §§pop().§6T§();
                                       if(!_loc4_)
                                       {
                                          §§goto(addr133);
                                       }
                                       break;
                                    }
                                    §§pop().§=B§();
                                    if(!_loc4_)
                                    {
                                       addr133:
                                       §'!V§.§?!G§.keyDown(param1);
                                       break;
                                    }
                                    §§goto(addr133);
                                    §§goto(addr133);
                                 case 1:
                                    §§goto(addr44);
                                 default:
                                    §§goto(addr133);
                              }
                              §'!V§.§1!2§;
                              return;
                           }
                        }
                     }
                     §§goto(addr119);
                  }
                  §§goto(addr116);
                  addr26:
               }
               §§goto(addr133);
            }
         }
         §§goto(addr26);
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            super.keyUp(param1);
            if(!_loc3_)
            {
               §'!V§.§?!G§.keyUp(param1);
            }
         }
      }
      
      public function §-!K§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(§'!V§.§1!2§.camera.§[!+§);
         if(!_loc4_)
         {
            §§push(§§pop() - §'!V§.§1!2§.camera.§<_§);
            if(!_loc4_)
            {
               addr29:
               §§push(Number(§§pop()));
            }
            var _loc1_:* = §§pop();
            §§push(§'!V§.§1!2§.camera.§9! §);
            if(!(_loc4_ && this))
            {
               §§push(§§pop() - §'!V§.§1!2§.camera.§<_§);
               if(!_loc4_)
               {
                  §§push(§§pop() / 2);
                  if(_loc3_ || _loc1_)
                  {
                     addr78:
                     §§push(Number(§§pop()));
                  }
                  var _loc2_:* = §§pop();
                  if(_loc3_ || this)
                  {
                     if(_loc1_ > _loc2_)
                     {
                        if(!_loc4_)
                        {
                           addr92:
                           §%s§.§ do§("Cursor_Zoom_Out");
                           if(_loc4_ && this)
                           {
                           }
                        }
                     }
                     else
                     {
                        §%s§.§ do§("Cursor_Zoom_In");
                     }
                     return;
                  }
                  §§goto(addr92);
               }
            }
            §§goto(addr78);
         }
         §§goto(addr29);
      }
   }
}
