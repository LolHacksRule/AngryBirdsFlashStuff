package §^U§
{
   import §&!<§.§>!V§;
   import §&!<§.§]!M§;
   import §,P§.§'_§;
   import §6]§.§,"0§;
   import §;<§.§'B§;
   import §=!7§.§6W§;
   import §@y§.§0=§;
   import §]§.§[!m§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §<K§ extends §'B§
   {
      
      public static const §%!Q§:String = "CreditsState";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §%!Q§ = "CreditsState";
         }
      }
      
      protected var §6"=§:§[!m§ = null;
      
      private var §&"7§:Boolean;
      
      private var §1F§:Number;
      
      private var §#&§:Number;
      
      private var §`N§:Number;
      
      private var §0!v§:Number;
      
      private var §'F§:Number;
      
      public function §<K§(param1:Boolean = false, param2:String = "CreditsState")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param2)
         {
            super(param1,param2);
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super.init();
            loop0:
            while(true)
            {
               §`!v§ = new §>!V§(this);
               while(true)
               {
                  §`!v§.init(§]!M§.§"!V§.Views.View_Credits[0]);
                  while(_loc1_)
                  {
                     continue loop0;
                     this.§6"=§ = new §[!m§(§'_§.§=M§);
                     if(!_loc2_)
                     {
                        return;
                        addr42:
                     }
                  }
               }
            }
         }
         §§goto(addr42);
      }
      
      override public function activate() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            super.activate();
            loop0:
            while(true)
            {
               this.§'F§ = (§`!v§.getItemByName("Container_Credits") as §6W§).height + §'_§.§7$§ * §'_§.§<e§;
               loop1:
               while(true)
               {
                  §§push(this);
                  §§push(this.§'F§);
                  if(_loc3_ || this)
                  {
                     §§push(-§§pop());
                  }
                  §§pop().§0!v§ = §§pop();
                  loop2:
                  while(true)
                  {
                     §'_§.§=M§.§'"@§(true);
                     loop3:
                     while(true)
                     {
                        §'_§.resume();
                        loop4:
                        for(; _loc3_; if(!(_loc4_ && this))
                        {
                           if(_loc3_)
                           {
                              if(false)
                              {
                                 §§goto(addr43);
                              }
                              §§push(§,"0§.§+9§);
                              if(!(_loc4_ && _loc2_))
                              {
                                 §§push(§§pop());
                              }
                              var _loc1_:* = §§pop();
                              §§push(_loc1_);
                              if(_loc3_ || _loc2_)
                              {
                                 §§push(§§pop().slice(_loc1_.search("Server:"),_loc1_.length));
                              }
                              var _loc2_:* = §§pop();
                              if(!_loc4_)
                              {
                                 §§push(_loc1_);
                                 if(!(_loc4_ && this))
                                 {
                                    §§push(§§pop().slice(0,_loc1_.search("Server:")));
                                 }
                                 _loc1_ = §§pop();
                                 this.§9!S§(_loc1_,_loc2_);
                                 addr273:
                                 if(!_loc3_)
                                 {
                                    §§goto(addr273);
                                 }
                              }
                              return;
                           }
                           continue loop2;
                        })
                        {
                           §'_§.§^`§(this.§6"=§);
                           loop5:
                           while(true)
                           {
                              this.§6"=§.init();
                              while(true)
                              {
                                 this.§do §();
                                 addr74:
                                 loop11:
                                 while(!(_loc4_ && _loc2_))
                                 {
                                    continue loop0;
                                    loop14:
                                    while(true)
                                    {
                                       if(!(_loc3_ || _loc3_))
                                       {
                                          continue loop11;
                                       }
                                       if(!_loc3_)
                                       {
                                          break;
                                       }
                                       this.§#&§ = 0;
                                       if(!(_loc3_ || _loc3_))
                                       {
                                          continue;
                                       }
                                       if(_loc3_)
                                       {
                                          continue loop4;
                                       }
                                       addr65:
                                       while(true)
                                       {
                                          addr43:
                                          while(true)
                                          {
                                             this.§1F§ = 0;
                                             continue loop14;
                                          }
                                          continue loop4;
                                       }
                                    }
                                    loop10:
                                    while(true)
                                    {
                                       if(!_loc4_)
                                       {
                                          continue loop3;
                                       }
                                       while(!(_loc4_ && _loc1_))
                                       {
                                          §`!v§.stage.addEventListener(MouseEvent.MOUSE_UP,this.§8!R§);
                                          continue loop10;
                                       }
                                       loop8:
                                       while(true)
                                       {
                                          if(_loc3_)
                                          {
                                             if(_loc4_)
                                             {
                                                break;
                                             }
                                             §`!v§.stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§=c§);
                                             continue;
                                          }
                                          addr149:
                                          while(true)
                                          {
                                             §`!v§.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§8x§);
                                             continue loop8;
                                          }
                                       }
                                       addr115:
                                       continue loop5;
                                    }
                                    continue loop3;
                                 }
                              }
                           }
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
         §§goto(addr149);
      }
      
      protected function §9!S§(param1:String, param2:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param1))
         {
            §`!v§.setText(param1,"TextField_Version_Number");
         }
         do
         {
            §`!v§.setText(param2,"TextField_Version_Number_Server");
         }
         while(!_loc3_);
         
      }
      
      protected function §do §() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            AngryBirdsFP11.§do §();
         }
      }
      
      private function §^!T§(param1:MouseEvent) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(§`!v§.stage.mouseX < §`!v§.stage.width - 180)
            {
               if(_loc2_)
               {
                  §§push(true);
                  if(_loc2_ || _loc2_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr58:
                  return false;
               }
               return §§pop();
            }
         }
         §§goto(addr58);
      }
      
      private function §8x§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.§&"7§);
            if(_loc3_ || _loc3_)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.§^!T§(param1));
                     §§goto(addr182);
                  }
               }
               §§goto(addr20);
            }
            addr182:
            §§goto(addr183);
         }
         addr183:
         while(§§pop())
         {
            do
            {
               §§push(this.§`N§);
               if(_loc3_ || _loc2_)
               {
                  §§push(§§pop() - §`!v§.stage.mouseY);
               }
               loop3:
               while(true)
               {
                  §§push(0);
                  addr142:
                  while(§§pop() <= §§pop())
                  {
                     continue loop3;
                  }
                  addr143:
                  §§push(this);
                  §§push(this.§`N§);
                  addr153:
                  addr110:
                  if(_loc3_)
                  {
                     §§push(§§pop() - §`!v§.stage.mouseY);
                  }
                  §§pop().§1F§ = §§pop();
                  §§goto(addr186);
               }
            }
            while(_loc3_);
            
            continue loop0;
         }
         this.§&"7§ = false;
         addr186:
         this.§`N§ = §`!v§.stage.mouseY;
         if(_loc2_)
         {
            §§goto(addr143);
         }
         if(_loc3_ || this)
         {
            if(!(_loc2_ && _loc2_))
            {
               addr20:
               return;
            }
            break loop1;
         }
      }
      
      private function §=c§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.§^!T§(param1));
            if(!_loc3_)
            {
               if(§§pop())
               {
                  loop0:
                  while(true)
                  {
                     §§push(§'_§.isPaused);
                     addr67:
                     while(!§§pop())
                     {
                        if(_loc3_)
                        {
                           continue loop0;
                        }
                        while(true)
                        {
                           this.§&"7§ = true;
                           continue loop0;
                        }
                        continue loop0;
                     }
                  }
               }
               return;
            }
            §§goto(addr67);
         }
         §§goto(addr70);
      }
      
      private function §8!R§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§&"7§ = false;
         }
      }
      
      private function §%!3§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§&"7§ = false;
         }
      }
      
      private function onMouseWheel(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            if(this.§^!T§(param1))
            {
               if(_loc3_ || this)
               {
                  if(param1.delta < 0)
                  {
                     if(!(_loc2_ && _loc2_))
                     {
                        addr86:
                        this.§#&§ = 16;
                     }
                  }
                  else
                  {
                     if(param1.delta > 0)
                     {
                        if(!_loc2_)
                        {
                           this.§#&§ = -16;
                        }
                        if(!_loc3_)
                        {
                        }
                     }
                     §§goto(addr25);
                  }
                  §§goto(addr25);
               }
            }
            addr25:
            return;
         }
         §§goto(addr86);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(super.run(param1));
         if(_loc3_ || param1)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc3_)
         {
            §§push(_loc2_);
            if(_loc3_)
            {
               if(§§pop() == §'B§.STATE_STATUS_RUNNING)
               {
                  loop0:
                  while(true)
                  {
                     if(!§'_§.isPaused)
                     {
                        loop1:
                        while(true)
                        {
                           §'_§.§=R§.update(param1);
                           loop2:
                           while(true)
                           {
                              (§`!v§.getItemByName("Container_Credits") as §6W§).setVisibility(true);
                              while(true)
                              {
                                 this.§2,§();
                                 loop4:
                                 while(_loc3_)
                                 {
                                    if(!(_loc4_ && _loc2_))
                                    {
                                       (§`!v§.getItemByName("Container_Credits") as §6W§).y = Math.floor(-this.§0!v§);
                                       loop5:
                                       while(!(_loc4_ && param1))
                                       {
                                          if(!(_loc4_ && _loc3_))
                                          {
                                             this.§+"'§(param1);
                                             while(true)
                                             {
                                                if(!_loc4_)
                                                {
                                                   if(_loc4_ && _loc2_)
                                                   {
                                                      continue loop4;
                                                   }
                                                   if(_loc4_ && this)
                                                   {
                                                   }
                                                   §§goto(addr165);
                                                   continue loop4;
                                                }
                                                continue loop5;
                                                addr49:
                                                if(!(_loc4_ && param1))
                                                {
                                                   return §'B§.STATE_STATUS_COMPLETED;
                                                }
                                             }
                                             addr166:
                                             return _loc2_;
                                             addr165:
                                          }
                                          continue loop1;
                                       }
                                       continue loop2;
                                    }
                                    continue loop0;
                                 }
                              }
                           }
                        }
                     }
                     while(mNextState.length > 0)
                     {
                        if(!(_loc3_ || _loc2_))
                        {
                           break;
                        }
                        §§goto(addr49);
                     }
                     return §'B§.STATE_STATUS_RUNNING;
                  }
               }
               §§goto(addr165);
            }
         }
         §§goto(addr166);
      }
      
      protected function §2,§() : void
      {
      }
      
      private function §+"'§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this);
            §§push(this.§0!v§);
            if(!(_loc3_ && param1))
            {
               §§push(§§pop() + this.§1F§);
            }
            §§pop().§0!v§ = §§pop();
            loop0:
            while(true)
            {
               §§push(this);
               §§push(this.§0!v§);
               if(!(_loc3_ && _loc3_))
               {
                  §§push(§§pop() + this.§#&§);
               }
               §§pop().§0!v§ = §§pop();
               loop1:
               while(true)
               {
                  §§push(this.§&"7§);
                  loop2:
                  while(true)
                  {
                     §§push(!§§pop());
                     loop3:
                     while(true)
                     {
                        if(§§pop())
                        {
                           loop4:
                           while(true)
                           {
                              §§pop();
                              addr212:
                              while(true)
                              {
                                 §§push(Math.abs(this.§#&§) < param1 / 15);
                                 addr169:
                                 while(!(_loc3_ && param1))
                                 {
                                    if(!_loc2_)
                                    {
                                       continue loop3;
                                    }
                                 }
                                 continue loop4;
                              }
                           }
                        }
                        while(true)
                        {
                           if(§§pop())
                           {
                              while(_loc2_)
                              {
                                 §§push(this);
                                 §§push(this.§0!v§);
                                 if(!(_loc3_ && param1))
                                 {
                                    §§push(param1);
                                    if(_loc2_ || this)
                                    {
                                       §§push(§§pop() / 15);
                                    }
                                    §§push(§§pop() + §§pop());
                                 }
                                 §§pop().§0!v§ = §§pop();
                                 while(true)
                                 {
                                 }
                              }
                              continue loop1;
                              addr180:
                           }
                           loop10:
                           while(true)
                           {
                              §§push(this.§0!v§);
                              loop11:
                              while(true)
                              {
                                 §§push(-AngryBirdsFP11.§+#§);
                                 loop12:
                                 while(true)
                                 {
                                    §§push(§§pop() * §'_§.§<e§);
                                    loop13:
                                    while(§§pop() >= §§pop())
                                    {
                                       §§push(this.§0!v§);
                                       if(_loc3_)
                                       {
                                          continue loop11;
                                       }
                                       §§push(this.§'F§);
                                       if(!(_loc2_ || _loc3_))
                                       {
                                          continue;
                                       }
                                       if(_loc3_ && _loc2_)
                                       {
                                          continue loop12;
                                       }
                                       if(§§pop() > §§pop())
                                       {
                                          while(true)
                                          {
                                             §§push(this);
                                             §§push(-AngryBirdsFP11.§+#§);
                                             if(!_loc3_)
                                             {
                                                §§push(§§pop() * §'_§.§<e§);
                                             }
                                             §§pop().§0!v§ = §§pop();
                                             addr109:
                                             while(true)
                                             {
                                                if(!(_loc3_ && _loc2_))
                                                {
                                                   continue loop0;
                                                }
                                                addr159:
                                                addr159:
                                                while(true)
                                                {
                                                }
                                             }
                                          }
                                          addr99:
                                       }
                                       while(true)
                                       {
                                          §§push(this.§&"7§);
                                          if(_loc2_)
                                          {
                                             if(!_loc3_)
                                             {
                                                if(!§§pop())
                                                {
                                                   if(_loc2_ || _loc3_)
                                                   {
                                                      §§push(this);
                                                      §§push(this.§1F§);
                                                      if(!(_loc3_ && this))
                                                      {
                                                         §§push(§§pop() * 0.9);
                                                      }
                                                      §§pop().§1F§ = §§pop();
                                                   }
                                                   while(!_loc2_)
                                                   {
                                                      break loop13;
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(this);
                                                      §§push(this.§#&§);
                                                      if(!_loc3_)
                                                      {
                                                         §§push(§§pop() * 0.9);
                                                      }
                                                      §§pop().§#&§ = §§pop();
                                                      if(_loc2_)
                                                      {
                                                         if(!(_loc3_ && param1))
                                                         {
                                                            if(_loc2_)
                                                            {
                                                               §§goto(addr19);
                                                            }
                                                            §§goto(addr99);
                                                         }
                                                         §§goto(addr109);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr72);
                                                      }
                                                   }
                                                   addr72:
                                                   addr74:
                                                }
                                                addr19:
                                             }
                                             continue loop2;
                                             return;
                                          }
                                          §§goto(addr169);
                                          §§goto(addr159);
                                       }
                                    }
                                    while(true)
                                    {
                                       if(_loc3_)
                                       {
                                          continue loop10;
                                       }
                                       if(!_loc3_)
                                       {
                                          if(_loc2_ || _loc2_)
                                          {
                                             this.§0!v§ = this.§'F§;
                                             §§goto(addr159);
                                          }
                                          §§goto(addr212);
                                       }
                                       else
                                       {
                                          §§goto(addr180);
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr74);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            §`!v§.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.§8x§);
            while(true)
            {
               §`!v§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§=c§);
               while(!_loc1_)
               {
                  §`!v§.stage.removeEventListener(MouseEvent.MOUSE_UP,this.§8!R§);
                  loop2:
                  while(true)
                  {
                     §`!v§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
                     loop3:
                     while(true)
                     {
                        §`!v§.stage.removeEventListener(Event.MOUSE_LEAVE,this.§%!3§);
                        addr90:
                        while(true)
                        {
                           (§`!v§.getItemByName("Container_Credits") as §6W§).visible = false;
                           do
                           {
                              super.deActivate();
                           }
                           while(!(_loc2_ || this));
                           
                           if(_loc2_ || this)
                           {
                              if(!_loc1_)
                              {
                                 continue loop2;
                              }
                              continue loop3;
                           }
                        }
                        §§goto(addr72);
                     }
                  }
                  if(_loc2_ || _loc1_)
                  {
                     addr72:
                  }
                  continue;
                  return;
               }
            }
         }
         §§goto(addr90);
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
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§0=§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = param2;
         if(_loc6_ || param3)
         {
            if("CREDITS_CLOSE_BUTTON" !== _loc4_)
            {
               if("FULLSCREEN_BUTTON" === _loc4_)
               {
                  §§goto(addr76);
               }
               else
               {
                  §§push(2);
               }
               addr99:
               switch(§§pop())
               {
                  case 0:
                     mNextState = §7!X§.§%!Q§;
                     if(_loc6_)
                     {
                        break;
                     }
                     addr32:
                     break;
                  case 1:
                     AngryBirdsFP11.§@"7§.§>!5§();
                     if(!_loc5_)
                     {
                        §§goto(addr32);
                     }
               }
               return;
            }
            if(_loc6_ || param2)
            {
               addr64:
               §§push(0);
               if(_loc5_ && param3)
               {
               }
            }
            else
            {
               addr76:
               §§push(1);
               if(_loc6_ || param2)
               {
               }
            }
            §§goto(addr99);
            §§goto(addr76);
         }
         §§goto(addr64);
      }
   }
}
