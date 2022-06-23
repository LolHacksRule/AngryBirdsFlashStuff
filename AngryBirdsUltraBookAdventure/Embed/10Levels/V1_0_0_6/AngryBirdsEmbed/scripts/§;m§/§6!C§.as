package §;m§
{
   import §+!?§.§"h§;
   import §3G§.§!E§;
   import §6H§.§>3§;
   import §=!B§.§59§;
   import §=E§.§1!$§;
   import §>K§.§7R§;
   import flash.events.KeyboardEvent;
   
   public class §6!C§ extends §>3§
   {
       
      
      protected var §^R§:§1!$§;
      
      protected var §3,§:Boolean = false;
      
      protected var §^8§:Boolean = false;
      
      private var §-_§:Boolean = false;
      
      public function §6!C§(param1:Boolean, param2:String)
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
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.§^R§.init();
            if(!_loc2_)
            {
               this.§-_§ = false;
            }
         }
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         super.activate();
         if(!_loc2_)
         {
            §59§.§]s§ = false;
         }
         §§push(§"h§.§1C§);
         if(!_loc2_)
         {
            §§push(true);
            if(!(_loc2_ && this))
            {
               §§pop().§]!!§(§§pop());
               if(!_loc2_)
               {
                  §§push(§"h§.§1C§);
                  if(_loc1_ || _loc2_)
                  {
                     addr48:
                     §§pop().§`M§(true);
                     if(!_loc2_)
                     {
                        §"h§.resume();
                        if(!_loc2_)
                        {
                           addr65:
                           if(this.§^R§ == null)
                           {
                              if(_loc1_ || this)
                              {
                                 this.§^R§ = this.getGameLogicController(§"h§.§1C§);
                                 if(_loc1_ || _loc1_)
                                 {
                                 }
                                 addr126:
                                 §"h§.§1C§.background.§>s§();
                                 addr128:
                                 return;
                                 addr124:
                              }
                           }
                           §§push(§"h§.§1C§);
                           if(_loc1_ || _loc2_)
                           {
                              if(§§pop().§["§ == 0)
                              {
                                 this.levelStarted();
                                 if(!(_loc2_ && _loc2_))
                                 {
                                    addr120:
                                    §"h§.§;j§(this.§^R§);
                                    §§goto(addr124);
                                 }
                                 §§goto(addr128);
                              }
                              §§goto(addr120);
                           }
                        }
                        §§goto(addr126);
                     }
                     §§goto(addr65);
                     addr47:
                  }
                  §§goto(addr126);
               }
               §§goto(addr120);
            }
            §§goto(addr48);
         }
         §§goto(addr47);
      }
      
      protected function getGameLogicController(param1:§!E§) : §1!$§
      {
         return new §1!$§(param1);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(super.run(param1));
         if(_loc4_ || this)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!(_loc3_ && param1))
         {
            §§push(_loc2_);
            if(!_loc3_)
            {
               if(§§pop() != §>3§.STATE_STATUS_RUNNING)
               {
                  if(!(_loc3_ && this))
                  {
                     addr49:
                     §§push(_loc2_);
                     if(!_loc3_)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr137:
                     this.§-_§ = true;
                     this.levelCompleted();
                     if(!_loc3_)
                     {
                        addr144:
                        mNextState = this.getVictoryState();
                        if(_loc4_ || _loc2_)
                        {
                           §59§.§]s§ = true;
                           §§goto(addr155);
                        }
                        §§goto(addr191);
                     }
                     §§goto(addr155);
                  }
                  §§goto(addr155);
               }
               else
               {
                  if(this.§3,§)
                  {
                     this.§3,§ = false;
                     mNextState = §6e§.§-!A§;
                  }
                  else
                  {
                     §§push(§"h§.isPaused);
                     if(!(_loc3_ && _loc3_))
                     {
                        if(!§§pop())
                        {
                           §§push(this.§^R§);
                           if(_loc4_)
                           {
                              §§pop().update(param1);
                              addr80:
                              §§push(this.§^R§);
                              if(_loc4_)
                              {
                                 addr94:
                                 §§push(Boolean(§§pop().§,Y§()));
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    if(!§§pop())
                                    {
                                       §§pop();
                                       §§push(Boolean(this.§^8§));
                                       if(!_loc4_)
                                       {
                                       }
                                       addr136:
                                       if(!§§pop())
                                       {
                                          §§goto(addr137);
                                       }
                                       §§goto(addr144);
                                    }
                                    if(§§pop())
                                    {
                                       this.§^8§ = false;
                                       §§push(this.§^R§);
                                       if(!_loc3_)
                                       {
                                          addr119:
                                          §§push(§§pop().§>!!§);
                                          if(!_loc3_)
                                          {
                                             addr122:
                                             §§push(§1!$§.LEVEL_STATE_VICTORY2_END);
                                             if(_loc4_)
                                             {
                                                if(§§pop() == §§pop())
                                                {
                                                   if(!(_loc3_ && _loc2_))
                                                   {
                                                      §§goto(addr136);
                                                      §§push(this.§-_§);
                                                   }
                                                   §§goto(addr191);
                                                }
                                                else
                                                {
                                                   addr178:
                                                   §§push(this.§^R§.§>!!§);
                                                   if(!(_loc3_ && param1))
                                                   {
                                                      addr188:
                                                      if(§§pop() == §1!$§.§]J§)
                                                      {
                                                         if(!_loc3_)
                                                         {
                                                            §§goto(addr191);
                                                         }
                                                      }
                                                      §§goto(addr155);
                                                   }
                                                }
                                                §§goto(addr155);
                                             }
                                          }
                                          §§goto(addr188);
                                       }
                                       §§goto(addr178);
                                    }
                                    §§goto(addr155);
                                 }
                                 §§goto(addr136);
                              }
                              §§goto(addr119);
                           }
                           §§goto(addr94);
                        }
                        §§goto(addr80);
                     }
                     §§goto(addr136);
                  }
                  addr155:
                  if(_loc3_ && param1)
                  {
                     addr191:
                     mNextState = this.getLoserState();
                  }
                  return _loc2_;
               }
               §§goto(addr144);
            }
            §§goto(addr122);
         }
         §§goto(addr49);
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
         if(_loc1_)
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
            if(!_loc4_)
            {
               if(§"h§.§0b§)
               {
                  var _loc2_:* = param1.keyCode;
                  if(_loc3_ || this)
                  {
                     §§push(87);
                     if(_loc3_ || _loc2_)
                     {
                        if(§§pop() === _loc2_)
                        {
                           if(_loc3_ || param1)
                           {
                              §§push(0);
                              if(_loc4_)
                              {
                                 addr114:
                                 if(§§pop() === _loc2_)
                                 {
                                    addr116:
                                    §§push(1);
                                    if(!(_loc4_ && _loc2_))
                                    {
                                       addr124:
                                    }
                                 }
                                 else
                                 {
                                    §§push(2);
                                 }
                              }
                              switch(§§pop())
                              {
                                 case 0:
                                    §§push(§"h§.§1C§);
                                    if(!(_loc3_ || param1))
                                    {
                                       addr49:
                                       §§pop().§&T§();
                                       if(_loc4_ && _loc2_)
                                       {
                                       }
                                       break;
                                    }
                                    §§pop().§%!1§();
                                    if(_loc3_)
                                    {
                                       addr133:
                                       §"h§.controller.keyDown(param1);
                                       break;
                                    }
                                    §§goto(addr133);
                                    §§goto(addr133);
                                 case 1:
                                    §§goto(addr49);
                                 default:
                                    §§goto(addr133);
                              }
                              §"h§.§1C§;
                              return;
                           }
                           §§goto(addr116);
                        }
                        else
                        {
                           §§push(66);
                           if(_loc3_)
                           {
                              §§goto(addr114);
                           }
                        }
                        §§goto(addr124);
                     }
                     §§goto(addr114);
                  }
                  §§goto(addr116);
                  addr31:
               }
               §§goto(addr133);
            }
         }
         §§goto(addr31);
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            super.keyUp(param1);
            if(!(_loc2_ && this))
            {
               addr29:
               §"h§.controller.keyUp(param1);
            }
            return;
         }
         §§goto(addr29);
      }
      
      public function §8!&§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(§"h§.§1C§.camera.§"Q§);
         if(!(_loc3_ && _loc3_))
         {
            §§push(§§pop() - §"h§.§1C§.camera.§2!#§);
            if(!_loc3_)
            {
               addr35:
               §§push(Number(§§pop()));
            }
            var _loc1_:* = §§pop();
            §§push(§"h§.§1C§.camera.§7y§);
            if(_loc4_ || _loc1_)
            {
               §§push(§§pop() - §"h§.§1C§.camera.§2!#§);
               if(!(_loc3_ && _loc1_))
               {
                  addr80:
                  §§push(§§pop() / 2);
                  if(_loc4_ || _loc1_)
                  {
                     addr89:
                     §§push(Number(§§pop()));
                  }
                  var _loc2_:* = §§pop();
                  if(_loc4_)
                  {
                     if(_loc1_ > _loc2_)
                     {
                        if(_loc4_)
                        {
                           §7R§.§-"§("Cursor_Zoom_Out");
                           if(!_loc3_)
                           {
                              addr103:
                           }
                        }
                     }
                     else
                     {
                        §7R§.§-"§("Cursor_Zoom_In");
                     }
                     return;
                  }
                  §§goto(addr103);
               }
               §§goto(addr89);
            }
            §§goto(addr80);
         }
         §§goto(addr35);
      }
   }
}
