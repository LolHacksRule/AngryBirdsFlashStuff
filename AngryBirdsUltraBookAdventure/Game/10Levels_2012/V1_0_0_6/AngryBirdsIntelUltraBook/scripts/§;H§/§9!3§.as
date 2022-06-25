package §;H§
{
   import §"x§.§-8§;
   import §+0§.§,!E§;
   import §-%§.§]!K§;
   import §1!E§.§#?§;
   import §>! §.§^!c§;
   import §>7§.§,!c§;
   import §[!+§.§ !I§;
   import §[!+§.§4`§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §9!3§ extends §,!E§
   {
      
      public static const §"!s§:String = "CreditsState";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §"!s§ = "CreditsState";
         }
      }
      
      protected var §+!h§:§]!K§ = null;
      
      private var §&!z§:Boolean;
      
      private var §?!Y§:Number;
      
      private var §#!U§:Number;
      
      private var §%!$§:Number;
      
      private var §?!n§:Number;
      
      private var §?!^§:Number;
      
      public function §9!3§(param1:Boolean = false, param2:String = "CreditsState")
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
               §&!m§ = new §4`§(this);
               §§goto(addr83);
            }
         }
         addr83:
         while(true)
         {
            §&!m§.init(§ !I§.§3!a§.Views.View_Credits[0]);
            do
            {
               this.§+!h§ = new §]!K§(§^!c§.§5!Y§);
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
               this.§?!^§ = (§&!m§.getItemByName("Container_Credits") as §#?§).height + §^!c§.§%g§ * §^!c§.§6W§;
               loop9:
               for(; !(_loc4_ && this); while(true)
               {
                  if(!(_loc4_ && _loc1_))
                  {
                     if(!_loc4_)
                     {
                        §&!m§.stage.addEventListener(Event.MOUSE_LEAVE,this.§1!r§);
                        §§goto(addr75);
                     }
                     break;
                  }
                  continue loop9;
               },§§goto(addr163))
               {
                  §&!m§.stage.addEventListener(MouseEvent.MOUSE_UP,this.§2!x§);
                  while(true)
                  {
                     §&!m§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
                     continue loop9;
                     loop14:
                     while(_loc3_ || this)
                     {
                        this.§#!U§ = 0;
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
                                          this.§?!Y§ = 0;
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
                                          §^!c§.§5!Y§.§@!v§(true);
                                          while(true)
                                          {
                                             §^!c§.resume();
                                             addr167:
                                             while(_loc3_)
                                             {
                                                §^!c§.setController(this.§+!h§);
                                                while(true)
                                                {
                                                   this.§+!h§.init();
                                                   continue loop2;
                                                }
                                             }
                                          }
                                       }
                                       addr150:
                                       while(true)
                                       {
                                          §§push(this);
                                          §§push(this.§?!^§);
                                          if(!(_loc4_ && this))
                                          {
                                             §§push(-§§pop());
                                          }
                                          §§pop().§?!n§ = §§pop();
                                          §§goto(addr189);
                                       }
                                       addr189:
                                       addr55:
                                       addr207:
                                    }
                                    else
                                    {
                                       §§push(§-8§.§9g§);
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
                                       §&!m§.setText(_loc1_,"TextField_Version_Number");
                                       §&!m§.setText(_loc2_,"TextField_Version_Number_Server");
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
                                 §&!m§.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§<k§);
                                 §§goto(addr39);
                              }
                           }
                           while(true)
                           {
                              §&!m§.stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§ !D§);
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
      
      private function § use§(param1:MouseEvent) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            if(§&!m§.stage.mouseX < §&!m§.stage.width - 180)
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
      
      private function §<k§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.§&!z§);
            if(_loc2_)
            {
               if(§§pop())
               {
                  loop0:
                  while(true)
                  {
                     §§push(this.§ use§(param1));
                     addr186:
                     while(true)
                     {
                        if(§§pop())
                        {
                           loop2:
                           while(true)
                           {
                              §§push(this.§%!$§);
                              if(_loc2_ || _loc2_)
                              {
                                 §§push(§§pop() - §&!m§.stage.mouseY);
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
                           §§push(this.§%!$§);
                           if(!(_loc3_ && _loc2_))
                           {
                              §§push(§§pop() - §&!m§.stage.mouseY);
                           }
                           §§pop().§?!Y§ = §§pop();
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
      
      private function § !D§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            §§push(this.§ use§(param1));
            if(_loc3_ || this)
            {
               if(§§pop())
               {
                  loop0:
                  while(true)
                  {
                     §§push(§^!c§.isPaused);
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
      
      private function §2!x§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§&!z§ = false;
         }
      }
      
      private function §1!r§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§&!z§ = false;
         }
      }
      
      private function onMouseWheel(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            if(this.§ use§(param1))
            {
               if(_loc2_ || this)
               {
                  if(param1.delta < 0)
                  {
                     if(_loc2_)
                     {
                        addr85:
                        this.§#!U§ = 16;
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
                           this.§#!U§ = -16;
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
               if(§§pop() == §,!E§.STATE_STATUS_RUNNING)
               {
                  loop0:
                  do
                  {
                     if(!§^!c§.isPaused)
                     {
                        if(_loc3_ || this)
                        {
                           §^!c§.§-U§.update(param1);
                        }
                        loop1:
                        while(true)
                        {
                           (§&!m§.getItemByName("Container_Credits") as §#?§).setVisibility(true);
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
                                 (§&!m§.getItemByName("Container_Credits") as §#?§).y = Math.floor(-this.§?!n§);
                                 while(true)
                                 {
                                    this.§6!Q§(param1);
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
                     return §,!E§.STATE_STATUS_RUNNING;
                  }
                  while(_loc4_);
                  
                  return §,!E§.STATE_STATUS_COMPLETED;
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
      
      private function §6!Q§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this);
            §§push(this.§?!n§);
            if(!(_loc3_ && _loc2_))
            {
               §§push(§§pop() + this.§?!Y§);
            }
            §§pop().§?!n§ = §§pop();
            loop0:
            while(true)
            {
               §§push(this);
               §§push(this.§?!n§);
               if(!_loc3_)
               {
                  §§push(§§pop() + this.§#!U§);
               }
               §§pop().§?!n§ = §§pop();
               loop1:
               while(true)
               {
                  §§push(this.§&!z§);
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
                                    §§push(this.§?!n§);
                                    if(!_loc3_)
                                    {
                                       §§push(param1);
                                       if(!_loc3_)
                                       {
                                          §§push(§§pop() / 15);
                                       }
                                       §§push(§§pop() + §§pop());
                                    }
                                    §§pop().§?!n§ = §§pop();
                                 }
                                 while(true)
                                 {
                                 }
                                 addr194:
                              }
                              loop9:
                              while(true)
                              {
                                 §§push(this.§?!n§);
                                 loop10:
                                 while(true)
                                 {
                                    §§push(-AngryBirdsFP11.§]!m§);
                                    if(_loc2_)
                                    {
                                       §§push(§§pop() * §^!c§.§6W§);
                                    }
                                    loop11:
                                    while(§§pop() >= §§pop())
                                    {
                                       §§push(this.§?!n§);
                                       if(_loc3_)
                                       {
                                          continue loop10;
                                       }
                                       §§push(this.§?!^§);
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
                                             §§push(-AngryBirdsFP11.§]!m§);
                                             if(_loc2_ || this)
                                             {
                                                §§push(§§pop() * §^!c§.§6W§);
                                             }
                                             §§pop().§?!n§ = §§pop();
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
                                                         §§push(this.§&!z§);
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
                                                                  §§push(this.§?!Y§);
                                                                  if(!_loc3_)
                                                                  {
                                                                     §§push(§§pop() * 0.9);
                                                                  }
                                                                  §§pop().§?!Y§ = §§pop();
                                                               }
                                                               while(true)
                                                               {
                                                                  if(_loc2_ || _loc2_)
                                                                  {
                                                                     continue loop0;
                                                                  }
                                                                  §§push(this);
                                                                  addr81:
                                                                  §§push(this.§#!U§);
                                                                  continue loop17;
                                                                  if(!(_loc3_ && this))
                                                                  {
                                                                     §§push(§§pop() * 0.9);
                                                                  }
                                                                  §§pop().§#!U§ = §§pop();
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
                                       this.§?!n§ = this.§?!^§;
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
            §&!m§.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.§<k§);
            while(true)
            {
               §&!m§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§ !D§);
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
                  §&!m§.stage.removeEventListener(Event.MOUSE_LEAVE,this.§1!r§);
                  while(_loc1_)
                  {
                     (§&!m§.getItemByName("Container_Credits") as §#?§).visible = false;
                     continue loop3;
                     if(_loc1_ || _loc2_)
                     {
                        addr40:
                        if(_loc2_)
                        {
                           while(true)
                           {
                              §&!m§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
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
                     §&!m§.stage.removeEventListener(MouseEvent.MOUSE_UP,this.§2!x§);
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
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§,!c§) : void
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
                  mNextState = §%!R§.§"!s§;
                  if(_loc6_)
                  {
                     break;
                  }
                  break;
               case 1:
                  AngryBirdsFP11.§3l§.§1T§();
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
