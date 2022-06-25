package § !k§
{
   import §1n§.§ C§;
   import §1n§.dynamic;
   import §2!!§.§<!b§;
   import §5i§.§4!]§;
   import §6z§.§[g§;
   import §8,§.§+_§;
   import §=R§.§7!"§;
   import §`M§.§9!#§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §6!5§ extends §+_§
   {
      
      public static const §3F§:String = "CreditsState";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §3F§ = "CreditsState";
         }
      }
      
      protected var §+4§:§<!b§ = null;
      
      private var §`2§:Boolean;
      
      private var §?`§:Number;
      
      private var §=!T§:Number;
      
      private var §+S§:Number;
      
      private var §^!Z§:Number;
      
      private var §3W§:Number;
      
      public function §6!5§(param1:Boolean = false, param2:String = "CreditsState")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param2))
         {
            super(param1,param2);
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            super.init();
            while(true)
            {
               §`-§ = new § C§(this);
               §§goto(addr83);
            }
         }
         addr83:
         while(true)
         {
            §`-§.init(dynamic.§[6§.Views.View_Credits[0]);
            do
            {
               this.§+4§ = new §<!b§(§4!]§.§8C§);
            }
            while(!_loc1_);
            
            if(!_loc2_)
            {
               if(_loc1_ || this)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      override public function activate() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super.activate();
            while(true)
            {
               this.§3W§ = (§`-§.getItemByName("Container_Credits") as §9!#§).height + §4!]§.§0N§ * §4!]§.§%!'§;
               loop9:
               for(; !(_loc4_ && this); while(true)
               {
                  if(!(_loc4_ && _loc1_))
                  {
                     if(!_loc4_)
                     {
                        §`-§.stage.addEventListener(Event.MOUSE_LEAVE,this.§[!§);
                        §§goto(addr75);
                     }
                     break;
                  }
                  continue loop9;
               },§§goto(addr163))
               {
                  §`-§.stage.addEventListener(MouseEvent.MOUSE_UP,this.§-!d§);
                  while(true)
                  {
                     §`-§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
                     continue loop9;
                     loop14:
                     while(_loc3_ || this)
                     {
                        this.§=!T§ = 0;
                        if(_loc4_)
                        {
                           continue;
                        }
                        addr25:
                        if(!(_loc4_ && _loc1_))
                        {
                           addr32:
                           if(_loc3_ || _loc3_)
                           {
                              addr39:
                              if(_loc3_ || this)
                              {
                                 addr46:
                                 if(_loc3_ || this)
                                 {
                                    if(false)
                                    {
                                       addr150:
                                       while(true)
                                       {
                                          this.§?`§ = 0;
                                          continue loop14;
                                          §§goto(addr46);
                                       }
                                       while(true)
                                       {
                                          §§goto(addr46);
                                       }
                                       loop2:
                                       for(; _loc3_; §§goto(addr150))
                                       {
                                          §4!]§.§8C§.§1B§(true);
                                          while(true)
                                          {
                                             §4!]§.resume();
                                             addr167:
                                             while(_loc3_)
                                             {
                                                §4!]§.setController(this.§+4§);
                                                while(true)
                                                {
                                                   this.§+4§.init();
                                                   continue loop2;
                                                }
                                             }
                                          }
                                       }
                                       addr150:
                                       while(true)
                                       {
                                          §§push(this);
                                          §§push(this.§3W§);
                                          if(!(_loc4_ && this))
                                          {
                                             §§push(-§§pop());
                                          }
                                          §§pop().§^!Z§ = §§pop();
                                          §§goto(addr189);
                                       }
                                       addr189:
                                       addr55:
                                       addr207:
                                    }
                                    else
                                    {
                                       §§push(§[g§.§ !M§);
                                       if(_loc3_ || _loc1_)
                                       {
                                          §§push(§§pop());
                                       }
                                       var _loc1_:* = §§pop();
                                       §§push(_loc1_);
                                       if(!_loc4_)
                                       {
                                          §§push(§§pop().slice(_loc1_.search("Server:"),_loc1_.length));
                                       }
                                       var _loc2_:* = §§pop();
                                       if(!_loc4_)
                                       {
                                          §§push(_loc1_);
                                          if(_loc3_)
                                          {
                                             §§push(§§pop().slice(0,_loc1_.search("Server:")));
                                          }
                                          _loc1_ = §§pop();
                                       }
                                       §`-§.setText(_loc1_,"TextField_Version_Number");
                                       §`-§.setText(_loc2_,"TextField_Version_Number_Server");
                                       addr281:
                                       if(!(_loc4_ && _loc3_))
                                       {
                                          if(!_loc3_)
                                          {
                                             §§goto(addr281);
                                          }
                                          return;
                                       }
                                       addr270:
                                       §§goto(addr270);
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr150);
                                 }
                                 if(!§§pop())
                                 {
                                    §§goto(addr150);
                                 }
                                 AngryBirdsFP11.playThemeMusic();
                              }
                              while(true)
                              {
                                 §`-§.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§0!r§);
                                 §§goto(addr39);
                              }
                           }
                           while(true)
                           {
                              §`-§.stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§12§);
                              continue loop9;
                              §§goto(addr32);
                           }
                        }
                        else
                        {
                           while(true)
                           {
                              if(_loc4_)
                              {
                                 continue loop9;
                              }
                              if(_loc4_)
                              {
                                 break;
                              }
                              §§goto(addr55);
                              §§goto(addr25);
                           }
                           addr75:
                        }
                        §§goto(addr167);
                     }
                  }
               }
            }
         }
         §§goto(addr207);
      }
      
      private function §+!c§(param1:MouseEvent) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            if(§`-§.stage.mouseX < §`-§.stage.width - 180)
            {
               if(!(_loc2_ && _loc3_))
               {
                  addr60:
                  §§push(true);
                  if(!(_loc2_ && _loc3_))
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr69:
                  return false;
               }
               return §§pop();
            }
            §§goto(addr69);
         }
         §§goto(addr60);
      }
      
      private function §0!r§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.§`2§);
            if(_loc2_)
            {
               if(§§pop())
               {
                  loop0:
                  while(true)
                  {
                     §§push(this.§+!c§(param1));
                     addr186:
                     while(true)
                     {
                        if(§§pop())
                        {
                           loop2:
                           while(true)
                           {
                              §§push(this.§+S§);
                              if(_loc2_ || _loc2_)
                              {
                                 §§push(§§pop() - §`-§.stage.mouseY);
                              }
                              loop3:
                              while(true)
                              {
                                 §§push(0);
                                 addr132:
                                 addr133:
                                 while(§§pop() <= §§pop())
                                 {
                                    continue loop3;
                                 }
                                 if(_loc2_)
                                 {
                                    break loop2;
                                 }
                                 if(!(_loc2_ || param1))
                                 {
                                    return;
                                 }
                                 addr190:
                                 continue loop0;
                              }
                              addr177:
                           }
                           §§push(this);
                           §§push(this.§+S§);
                           if(!(_loc3_ && _loc2_))
                           {
                              §§push(§§pop() - §`-§.stage.mouseY);
                           }
                           §§pop().§?`§ = §§pop();
                           §§goto(addr150);
                        }
                        §§goto(addr187);
                        continue loop0;
                     }
                  }
               }
               §§goto(addr19);
            }
            §§goto(addr186);
         }
         §§goto(addr187);
      }
      
      private function §12§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            §§push(this.§+!c§(param1));
            if(_loc3_ || this)
            {
               if(§§pop())
               {
                  loop0:
                  while(true)
                  {
                     §§push(§4!]§.isPaused);
                     addr75:
                     while(!§§pop())
                     {
                        continue loop0;
                     }
                  }
               }
               return;
            }
            §§goto(addr75);
         }
         §§goto(addr76);
      }
      
      private function §-!d§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§`2§ = false;
         }
      }
      
      private function §[!§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§`2§ = false;
         }
      }
      
      private function onMouseWheel(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            if(this.§+!c§(param1))
            {
               if(_loc2_ || this)
               {
                  if(param1.delta < 0)
                  {
                     if(_loc2_)
                     {
                        addr85:
                        this.§=!T§ = 16;
                     }
                     addr24:
                     return;
                     addr88:
                  }
                  else
                  {
                     if(param1.delta > 0)
                     {
                        if(_loc2_)
                        {
                           addr47:
                           this.§=!T§ = -16;
                        }
                        if(_loc2_ || param1)
                        {
                           §§goto(addr24);
                        }
                        else
                        {
                           §§goto(addr88);
                        }
                     }
                     §§goto(addr24);
                  }
                  §§goto(addr24);
               }
               §§goto(addr85);
            }
            §§goto(addr24);
         }
         §§goto(addr47);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(super.run(param1));
         if(!_loc4_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc3_ || _loc2_)
         {
            §§push(_loc2_);
            if(_loc3_ || this)
            {
               if(§§pop() == §+_§.STATE_STATUS_RUNNING)
               {
                  loop0:
                  do
                  {
                     if(!§4!]§.isPaused)
                     {
                        if(_loc3_ || this)
                        {
                           §4!]§.§=`§.update(param1);
                        }
                        loop1:
                        while(true)
                        {
                           (§`-§.getItemByName("Container_Credits") as §9!#§).setVisibility(true);
                           while(true)
                           {
                              this.readyToShowCredits();
                              for(; _loc3_ || this; if(!(_loc4_ && _loc3_))
                              {
                                 continue loop1;
                              })
                              {
                                 if(_loc4_)
                                 {
                                    addr156:
                                    return _loc2_;
                                    addr155:
                                 }
                                 (§`-§.getItemByName("Container_Credits") as §9!#§).y = Math.floor(-this.§^!Z§);
                                 while(true)
                                 {
                                    this.§-!5§(param1);
                                    addr56:
                                    §§goto(addr82);
                                 }
                              }
                           }
                           if(_loc4_ && this)
                           {
                              continue;
                           }
                           §§goto(addr82);
                        }
                     }
                     addr82:
                     while(true)
                     {
                        if(_loc3_)
                        {
                           continue loop3;
                        }
                        continue loop6;
                     }
                     while(mNextState.length > 0)
                     {
                        if(_loc3_)
                        {
                           continue loop0;
                        }
                        if(!_loc4_)
                        {
                           break;
                        }
                        §§goto(addr56);
                     }
                     return §+_§.STATE_STATUS_RUNNING;
                  }
                  while(_loc4_);
                  
                  return §+_§.STATE_STATUS_COMPLETED;
               }
               §§goto(addr155);
            }
            §§goto(addr156);
         }
         §§goto(addr95);
      }
      
      protected function readyToShowCredits() : void
      {
      }
      
      private function §-!5§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this);
            §§push(this.§^!Z§);
            if(!(_loc3_ && _loc2_))
            {
               §§push(§§pop() + this.§?`§);
            }
            §§pop().§^!Z§ = §§pop();
            loop0:
            while(true)
            {
               §§push(this);
               §§push(this.§^!Z§);
               if(!_loc3_)
               {
                  §§push(§§pop() + this.§=!T§);
               }
               §§pop().§^!Z§ = §§pop();
               loop1:
               while(true)
               {
                  §§push(this.§`2§);
                  loop2:
                  while(true)
                  {
                     §§push(!§§pop());
                     loop3:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           while(true)
                           {
                              if(§§pop())
                              {
                                 if(!_loc3_)
                                 {
                                    if(_loc3_)
                                    {
                                       break;
                                    }
                                    §§push(this);
                                    §§push(this.§^!Z§);
                                    if(!_loc3_)
                                    {
                                       §§push(param1);
                                       if(!_loc3_)
                                       {
                                          §§push(§§pop() / 15);
                                       }
                                       §§push(§§pop() + §§pop());
                                    }
                                    §§pop().§^!Z§ = §§pop();
                                 }
                                 while(true)
                                 {
                                 }
                                 addr194:
                              }
                              loop9:
                              while(true)
                              {
                                 §§push(this.§^!Z§);
                                 loop10:
                                 while(true)
                                 {
                                    §§push(-AngryBirdsFP11.§7P§);
                                    if(_loc2_)
                                    {
                                       §§push(§§pop() * §4!]§.§%!'§);
                                    }
                                    loop11:
                                    while(§§pop() >= §§pop())
                                    {
                                       §§push(this.§^!Z§);
                                       if(_loc3_)
                                       {
                                          continue loop10;
                                       }
                                       §§push(this.§3W§);
                                       if(_loc3_)
                                       {
                                          continue;
                                       }
                                       if(§§pop() > §§pop())
                                       {
                                          loop16:
                                          while(true)
                                          {
                                             §§push(this);
                                             §§push(-AngryBirdsFP11.§7P§);
                                             if(_loc2_ || this)
                                             {
                                                §§push(§§pop() * §4!]§.§%!'§);
                                             }
                                             §§pop().§^!Z§ = §§pop();
                                             loop17:
                                             while(true)
                                             {
                                                if(!(_loc3_ && param1))
                                                {
                                                   if(!_loc2_)
                                                   {
                                                      continue loop9;
                                                   }
                                                   if(_loc2_ || _loc3_)
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(this.§`2§);
                                                         if(!_loc2_)
                                                         {
                                                            break;
                                                         }
                                                         if(!_loc3_)
                                                         {
                                                            if(!§§pop())
                                                            {
                                                               if(!_loc3_)
                                                               {
                                                                  if(!_loc2_)
                                                                  {
                                                                     continue loop16;
                                                                  }
                                                                  §§push(this);
                                                                  §§push(this.§?`§);
                                                                  if(!_loc3_)
                                                                  {
                                                                     §§push(§§pop() * 0.9);
                                                                  }
                                                                  §§pop().§?`§ = §§pop();
                                                               }
                                                               while(true)
                                                               {
                                                                  if(_loc2_ || _loc2_)
                                                                  {
                                                                     continue loop0;
                                                                  }
                                                                  §§push(this);
                                                                  addr81:
                                                                  §§push(this.§=!T§);
                                                                  continue loop17;
                                                                  if(!(_loc3_ && this))
                                                                  {
                                                                     §§push(§§pop() * 0.9);
                                                                  }
                                                                  §§pop().§=!T§ = §§pop();
                                                                  if(_loc2_ || _loc2_)
                                                                  {
                                                                     if(_loc2_)
                                                                     {
                                                                        §§goto(addr19);
                                                                     }
                                                                     break loop11;
                                                                  }
                                                               }
                                                               continue loop17;
                                                            }
                                                            addr19:
                                                         }
                                                         continue loop3;
                                                         return;
                                                      }
                                                      while(_loc2_ || _loc3_)
                                                      {
                                                         continue loop2;
                                                      }
                                                      while(true)
                                                      {
                                                         §§pop();
                                                      }
                                                      addr162:
                                                      addr47:
                                                      addr211:
                                                   }
                                                   while(true)
                                                   {
                                                      §§goto(addr162);
                                                   }
                                                }
                                                else
                                                {
                                                   while(true)
                                                   {
                                                   }
                                                   addr152:
                                                }
                                             }
                                          }
                                          addr94:
                                       }
                                       §§goto(addr47);
                                    }
                                    while(true)
                                    {
                                       this.§^!Z§ = this.§3W§;
                                       §§goto(addr152);
                                    }
                                 }
                              }
                           }
                           continue loop1;
                           addr176:
                        }
                        §§goto(addr211);
                     }
                  }
               }
            }
         }
         §§goto(addr94);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §`-§.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.§0!r§);
            while(true)
            {
               §`-§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§12§);
               loop3:
               for(; !(_loc2_ && _loc1_); while(_loc1_ || _loc1_)
               {
                  super.deActivate();
                  if(!_loc1_)
                  {
                     continue;
                  }
                  §§goto(addr33);
               })
               {
                  §`-§.stage.removeEventListener(Event.MOUSE_LEAVE,this.§[!§);
                  while(_loc1_)
                  {
                     (§`-§.getItemByName("Container_Credits") as §9!#§).visible = false;
                     continue loop3;
                     if(_loc1_ || _loc2_)
                     {
                        addr40:
                        if(_loc2_)
                        {
                           while(true)
                           {
                              §`-§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
                              continue loop3;
                              §§goto(addr40);
                           }
                           addr114:
                        }
                        return;
                     }
                  }
                  while(true)
                  {
                     §`-§.stage.removeEventListener(MouseEvent.MOUSE_UP,this.§-!d§);
                     §§goto(addr114);
                  }
               }
            }
         }
         §§goto(addr123);
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            super.cleanup();
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§7!"§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = param2;
         if(!(_loc5_ && param2))
         {
            §§push("CREDITS_CLOSE_BUTTON");
            if(_loc6_ || param2)
            {
               §§push(_loc4_);
               if(!_loc5_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(!_loc5_)
                     {
                        addr83:
                        §§push(0);
                        if(!_loc6_)
                        {
                           addr93:
                        }
                     }
                     else
                     {
                        addr90:
                        §§push(1);
                        if(!_loc5_)
                        {
                           §§goto(addr93);
                        }
                     }
                     §§goto(addr98);
                  }
                  else
                  {
                     §§goto(addr89);
                  }
               }
               §§goto(addr89);
            }
            addr89:
            if("FULLSCREEN_BUTTON" === _loc4_)
            {
               §§goto(addr90);
            }
            else
            {
               §§push(2);
            }
            addr98:
            switch(§§pop())
            {
               case 0:
                  mNextState = §4A§.§3F§;
                  if(_loc6_)
                  {
                     break;
                  }
                  break;
               case 1:
                  AngryBirdsFP11.§`!c§.§catch§();
                  if(_loc6_ || param1)
                  {
                     break;
                  }
            }
            return;
         }
         §§goto(addr83);
      }
   }
}
