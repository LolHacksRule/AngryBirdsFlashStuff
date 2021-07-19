package § C§
{
   import §!F§.§>J§;
   import §!Y§.§[o§;
   import §2]§.§#H§;
   import §2]§.§set §;
   import §;8§.§3f§;
   import §[v§.§&F§;
   import §]4§.§-§;
   import §`W§.§-[§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §%H§ extends §-§
   {
      
      public static const §?B§:String = "CreditsState";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §?B§ = "CreditsState";
         }
      }
      
      protected var §6!6§:§>J§ = null;
      
      private var §@-§:Boolean;
      
      private var §&M§:Number;
      
      private var §extends§:Number;
      
      private var §2t§:Number;
      
      private var §5`§:Number;
      
      private var §3!3§:Number;
      
      public function §%H§(param1:Boolean = false, param2:String = "CreditsState")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            super(param1,param2);
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            super.init();
         }
         loop0:
         while(true)
         {
            §,R§ = new §#H§(this);
            do
            {
               §,R§.init(§set §.§&!1§.Views.View_Credits[0]);
               continue loop0;
            }
            while(_loc1_);
            
            return;
         }
      }
      
      override public function activate() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         super.activate();
         this.§3!3§ = (§,R§.getItemByName("Container_Credits") as §&F§).height + §[o§.§for§ * §[o§.§>k§;
         §§push(this);
         §§push(this.§3!3§);
         if(_loc3_)
         {
            §§push(-§§pop());
         }
         §§pop().§5`§ = §§pop();
         §[o§.§='§.§"3§(true);
         while(true)
         {
            §[o§.resume();
            loop1:
            for(; _loc3_; while(_loc3_ || this)
            {
               §§goto(addr32);
            })
            {
               §[o§.§%!<§(this.§6!6§);
               loop2:
               while(true)
               {
                  this.§6!6§.init();
                  while(true)
                  {
                     AngryBirdsFP11.§]!"§();
                     §,R§.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.onMouseMove);
                     while(true)
                     {
                        §,R§.stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§!1§);
                        do
                        {
                           §,R§.stage.addEventListener(MouseEvent.MOUSE_UP,this.§0c§);
                           §,R§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
                        }
                        while(!_loc3_);
                        
                        if(!_loc3_)
                        {
                           break;
                        }
                        continue loop2;
                        addr23:
                        if(_loc4_ && _loc3_)
                        {
                           continue;
                        }
                        if(false)
                        {
                           while(true)
                           {
                              this.§&M§ = 0;
                              this.§extends§ = 0;
                              if(_loc3_)
                              {
                                 continue;
                              }
                              continue loop1;
                           }
                           continue;
                           addr32:
                        }
                        §§push(§3f§.§7f§);
                        if(_loc3_ || _loc2_)
                        {
                           §§push(§§pop());
                        }
                        var _loc1_:* = §§pop();
                        §§push(_loc1_);
                        if(_loc3_)
                        {
                           §§push(§§pop().slice(_loc1_.search("Server:"),_loc1_.length));
                        }
                        var _loc2_:* = §§pop();
                        if(_loc3_ || _loc2_)
                        {
                           §§push(_loc1_);
                           if(!_loc4_)
                           {
                              §§push(§§pop().slice(0,_loc1_.search("Server:")));
                           }
                           _loc1_ = §§pop();
                           §,R§.setText(_loc1_,"TextField_Version_Number");
                           addr245:
                        }
                        §,R§.setText(_loc2_,"TextField_Version_Number_Server");
                        if(_loc3_ || _loc1_)
                        {
                           if(!(_loc3_ || this))
                           {
                              §§goto(addr245);
                           }
                           return;
                        }
                        addr234:
                        §§goto(addr234);
                     }
                  }
               }
            }
         }
      }
      
      private function §+g§(param1:MouseEvent) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            if(§,R§.stage.mouseX < §,R§.stage.width - 180)
            {
               if(!_loc2_)
               {
                  §§push(true);
                  if(_loc3_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr49:
                  return false;
               }
               return §§pop();
            }
         }
         §§goto(addr49);
      }
      
      private function onMouseMove(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            §§push(this.§@-§);
            if(_loc2_)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.§+g§(param1));
                     §§goto(addr171);
                  }
               }
               §§goto(addr24);
            }
            addr171:
            loop1:
            while(true)
            {
               if(!§§pop())
               {
                  this.§@-§ = false;
                  break;
               }
               §§push(this.§2t§);
               if(_loc2_ || _loc3_)
               {
                  §§push(§§pop() - §,R§.stage.mouseY);
               }
               loop2:
               while(true)
               {
                  §§push(0);
                  loop3:
                  while(§§pop() <= §§pop())
                  {
                     §§push(this.§2t§);
                     if(!(_loc3_ && _loc2_))
                     {
                        if(!_loc2_)
                        {
                           continue loop2;
                        }
                        §§push(§§pop() - §,R§.stage.mouseY);
                     }
                     §§push(0);
                     if(_loc3_ && param1)
                     {
                        continue;
                     }
                     if(§§pop() < §§pop())
                     {
                        §§push(this);
                        §§push(this.§2t§);
                        if(!(_loc3_ && param1))
                        {
                           §§push(§§pop() - §,R§.stage.mouseY);
                        }
                        §§pop().§&M§ = §§pop();
                        while(true)
                        {
                           this.§2t§ = §,R§.stage.mouseY;
                           if(_loc2_ || this)
                           {
                              if(_loc2_ || param1)
                              {
                                 §§goto(addr24);
                              }
                              break loop3;
                           }
                           break;
                        }
                        addr24:
                        return;
                        addr108:
                        addr101:
                     }
                     §§goto(addr24);
                  }
                  while(true)
                  {
                     §§push(this);
                     §§push(this.§2t§);
                     if(_loc2_)
                     {
                        §§push(§§pop() - §,R§.stage.mouseY);
                     }
                     §§pop().§&M§ = §§pop();
                     if(_loc3_ && _loc2_)
                     {
                        break loop1;
                     }
                     continue loop0;
                  }
               }
               continue loop0;
            }
            return;
         }
         §§goto(addr101);
      }
      
      private function §!1§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            §§push(this.§+g§(param1));
            if(_loc3_ || param1)
            {
               if(§§pop())
               {
                  if(!(_loc2_ && _loc3_))
                  {
                     addr85:
                     if(!§[o§.§'Z§)
                     {
                        while(true)
                        {
                           this.§@-§ = true;
                        }
                        addr86:
                     }
                     §§goto(addr25);
                  }
                  while(true)
                  {
                     this.§2t§ = §,R§.stage.mouseY;
                     if(!_loc3_)
                     {
                        continue;
                     }
                     if(!(_loc2_ && param1))
                     {
                        break;
                     }
                     §§goto(addr86);
                  }
                  addr64:
               }
               addr25:
               return;
            }
            §§goto(addr85);
         }
         §§goto(addr64);
      }
      
      private function §0c§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§@-§ = false;
         }
      }
      
      private function §6!G§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§@-§ = false;
         }
      }
      
      private function onMouseWheel(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(this.§+g§(param1))
            {
               if(!(_loc2_ && this))
               {
                  if(param1.delta >= 0)
                  {
                     if(param1.delta > 0)
                     {
                        if(_loc3_)
                        {
                           if(_loc3_)
                           {
                              this.§extends§ = -16;
                              addr58:
                              if(_loc3_ || _loc2_)
                              {
                              }
                              §§goto(addr20);
                           }
                           else
                           {
                              addr81:
                              this.§extends§ = 16;
                           }
                           §§goto(addr20);
                        }
                        §§goto(addr58);
                     }
                  }
               }
               §§goto(addr81);
            }
            addr20:
            return;
         }
         §§goto(addr81);
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
         if(_loc3_)
         {
            if(§§pop() == §-§.STATE_STATUS_RUNNING)
            {
               loop0:
               while(true)
               {
                  if(!§[o§.§'Z§)
                  {
                     while(true)
                     {
                        §[o§.controller.update(param1);
                        if(!_loc3_)
                        {
                           break;
                           addr72:
                        }
                        (§,R§.getItemByName("Container_Credits") as §&F§).setVisibility(true);
                        this.readyToShowCredits();
                        (§,R§.getItemByName("Container_Credits") as §&F§).y = Math.floor(-this.§5`§);
                        while(!_loc4_)
                        {
                           this.§"h§(param1);
                           if(_loc4_)
                           {
                              continue loop0;
                           }
                        }
                     }
                     addr116:
                     return _loc2_;
                     addr115:
                  }
                  while(mNextState.length > 0)
                  {
                     if(!_loc3_)
                     {
                        break;
                     }
                     if(!_loc4_)
                     {
                        return §-§.STATE_STATUS_COMPLETED;
                     }
                     §§goto(addr72);
                  }
                  return §-§.STATE_STATUS_RUNNING;
               }
            }
            §§goto(addr115);
         }
         §§goto(addr116);
      }
      
      protected function readyToShowCredits() : void
      {
      }
      
      private function §"h§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(this);
         §§push(this.§5`§);
         if(_loc3_ || _loc2_)
         {
            §§push(§§pop() + this.§&M§);
         }
         §§pop().§5`§ = §§pop();
         loop0:
         while(true)
         {
            §§push(this);
            §§push(this.§5`§);
            if(_loc3_ || _loc3_)
            {
               §§push(§§pop() + this.§extends§);
            }
            §§pop().§5`§ = §§pop();
            §§push(this.§@-§);
            loop1:
            while(true)
            {
               §§push(!§§pop());
               loop2:
               while(true)
               {
                  if(§§pop())
                  {
                     loop3:
                     while(true)
                     {
                        §§pop();
                        §§push(Math.abs(this.§extends§) < param1 / 15);
                        while(true)
                        {
                           if(_loc2_)
                           {
                              continue loop3;
                           }
                           if(!_loc3_)
                           {
                              break;
                           }
                           addr39:
                           §§push(this.§@-§);
                           if(!(_loc2_ && _loc2_))
                           {
                              if(_loc3_ || this)
                              {
                                 if(!§§pop())
                                 {
                                    §§push(this);
                                    §§push(this.§&M§);
                                    if(!_loc2_)
                                    {
                                       §§push(§§pop() * 0.9);
                                    }
                                    §§pop().§&M§ = §§pop();
                                    if(!(_loc3_ || param1))
                                    {
                                       continue loop0;
                                    }
                                    §§push(this);
                                    §§push(this.§extends§);
                                    if(!(_loc2_ && _loc3_))
                                    {
                                       §§push(§§pop() * 0.9);
                                    }
                                    §§pop().§extends§ = §§pop();
                                    addr72:
                                    if(!_loc3_)
                                    {
                                       while(true)
                                       {
                                          §§push(this);
                                          §§push(this.§5`§);
                                          if(!_loc2_)
                                          {
                                             §§push(param1);
                                             if(!_loc2_)
                                             {
                                                §§push(§§pop() / 15);
                                             }
                                             §§push(§§pop() + §§pop());
                                          }
                                          §§pop().§5`§ = §§pop();
                                          while(true)
                                          {
                                             addr127:
                                             loop8:
                                             while(true)
                                             {
                                                §§push(this.§5`§);
                                                loop9:
                                                while(true)
                                                {
                                                   §§push(-AngryBirdsFP11.screenHeight);
                                                   addr133:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() * §[o§.§>k§);
                                                      addr136:
                                                      while(§§pop() >= §§pop())
                                                      {
                                                         continue loop9;
                                                      }
                                                      addr137:
                                                      if(!_loc2_)
                                                      {
                                                         this.§5`§ = this.§3!3§;
                                                         continue loop0;
                                                      }
                                                      continue loop8;
                                                   }
                                                }
                                             }
                                          }
                                          §§goto(addr72);
                                       }
                                       addr166:
                                    }
                                 }
                                 return;
                              }
                              continue loop2;
                           }
                        }
                        continue loop1;
                     }
                  }
                  while(true)
                  {
                     if(§§pop())
                     {
                        §§goto(addr166);
                     }
                     §§goto(addr127);
                  }
               }
            }
         }
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §,R§.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.onMouseMove);
         }
         do
         {
            §,R§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§!1§);
            §,R§.stage.removeEventListener(MouseEvent.MOUSE_UP,this.§0c§);
         }
         while(!_loc1_);
         
         §,R§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §,R§.stage.removeEventListener(Event.MOUSE_LEAVE,this.§6!G§);
         while(true)
         {
            (§,R§.getItemByName("Container_Credits") as §&F§).visible = false;
            while(!(_loc2_ && _loc1_))
            {
               super.deActivate();
               if(!_loc2_)
               {
                  return;
               }
            }
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
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§-[§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = param2;
         if(_loc5_ || this)
         {
            §§push("CREDITS_CLOSE_BUTTON");
            if(_loc5_)
            {
               §§push(_loc4_);
               if(_loc5_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(_loc5_ || param1)
                     {
                        §§push(0);
                        if(_loc6_)
                        {
                        }
                     }
                     else
                     {
                        addr89:
                        §§push(1);
                        if(_loc6_ && param2)
                        {
                        }
                     }
                     §§goto(addr102);
                  }
                  else
                  {
                     addr87:
                     §§push("FULLSCREEN_BUTTON");
                     §§push(_loc4_);
                  }
                  §§goto(addr89);
               }
               if(§§pop() === §§pop())
               {
                  §§goto(addr89);
               }
               else
               {
                  §§push(2);
               }
               addr102:
               switch(§§pop())
               {
                  case 0:
                     mNextState = §,!?§.§?B§;
                     if(_loc5_ || this)
                     {
                        break;
                     }
                     break;
                  case 1:
                     AngryBirdsFP11.§?L§.§,!!§();
                     if(!_loc6_)
                     {
                        break;
                     }
               }
               return;
            }
            §§goto(addr87);
         }
         §§goto(addr89);
      }
   }
}
