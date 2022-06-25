package §_-ad§
{
   import §_-0BH§.§_-FK§;
   import §_-0Dg§.§class§;
   import §_-6C§.§_-gt§;
   import §_-MN§.§_-wU§;
   import §_-Yl§.§_-5q§;
   import §_-Yl§.§_-vB§;
   import §_-qO§.§ in§;
   import §_-x8§.§_-nG§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §_-7A§ extends §_-nG§
   {
      
      public static const §_-pk§:String = "CreditsState";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §_-pk§ = "CreditsState";
         }
      }
      
      protected var §_-kL§:§class§ = null;
      
      private var §_-07-§:Boolean;
      
      private var §_-02Y§:Number;
      
      private var §_-Yg§:Number;
      
      private var §_-jg§:Number;
      
      private var §_-K2§:Number;
      
      private var §_-wT§:Number;
      
      public function §_-7A§(param1:Boolean = false, param2:String = "CreditsState")
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
         if(!_loc1_)
         {
            super.init();
         }
         loop0:
         do
         {
            §_-s0§ = new §_-5q§(this);
            while(true)
            {
               §_-s0§.init(§_-vB§.§_-ky§.Views.View_Credits[0]);
               while(!(_loc1_ && _loc1_))
               {
                  this.§_-kL§ = new §class§(§ in§.§_-Dc§);
                  if(!(_loc1_ && this))
                  {
                     continue loop0;
                  }
               }
            }
         }
         while(!(_loc2_ || _loc2_));
         
      }
      
      override public function activate() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super.activate();
            loop0:
            while(true)
            {
               this.§_-wT§ = (§_-s0§.getItemByName("Container_Credits") as §_-gt§).height + § in§.§_-Kj§ * § in§.§_-Sr§;
               loop1:
               while(true)
               {
                  §§push(this);
                  §§push(this.§_-wT§);
                  if(_loc3_)
                  {
                     §§push(-§§pop());
                  }
                  §§pop().§_-K2§ = §§pop();
                  loop2:
                  while(true)
                  {
                     § in§.§_-Dc§.§_-Vf§(true);
                     continue loop1;
                     addr67:
                     if(!(_loc3_ || _loc3_))
                     {
                        continue;
                     }
                     §_-s0§.stage.addEventListener(Event.MOUSE_LEAVE,this.§_-06h§);
                     loop13:
                     while(true)
                     {
                        addr29:
                        addr65:
                        while(true)
                        {
                           this.§_-02Y§ = 0;
                           continue loop13;
                        }
                        loop12:
                        while(true)
                        {
                           if(!_loc4_)
                           {
                              §§goto(addr67);
                           }
                           else
                           {
                              addr83:
                              while(_loc3_ || _loc1_)
                              {
                                 §_-s0§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
                                 continue loop12;
                              }
                              while(!_loc4_)
                              {
                                 §_-s0§.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§_-0AC§);
                                 continue loop0;
                                 §§goto(addr83);
                              }
                              addr83:
                              while(true)
                              {
                                 AngryBirdsFP11.playThemeMusic();
                                 §§goto(addr145);
                              }
                              addr145:
                              addr152:
                           }
                        }
                        continue loop2;
                     }
                  }
               }
            }
         }
         while(true)
         {
            §_-s0§.stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§_-lM§);
            §§goto(addr99);
         }
      }
      
      private function §_-tL§(param1:MouseEvent) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            if(§_-s0§.stage.mouseX < §_-s0§.stage.width - 180)
            {
               if(_loc3_ || _loc2_)
               {
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
         }
         §§goto(addr69);
      }
      
      private function §_-0AC§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.§_-07-§);
            if(_loc2_)
            {
               if(§§pop())
               {
                  loop0:
                  while(true)
                  {
                     §§push(this.§_-tL§(param1));
                     addr191:
                     loop1:
                     while(§§pop())
                     {
                        loop2:
                        while(true)
                        {
                           §§push(this.§_-jg§);
                           if(_loc2_)
                           {
                              §§push(§§pop() - §_-s0§.stage.mouseY);
                           }
                           loop3:
                           while(true)
                           {
                              §§push(0);
                              while(§§pop() <= §§pop())
                              {
                                 §§push(this.§_-jg§);
                                 if(_loc2_)
                                 {
                                    §§push(§§pop() - §_-s0§.stage.mouseY);
                                 }
                                 if(_loc3_ && _loc2_)
                                 {
                                    continue loop3;
                                 }
                                 §§push(0);
                                 if(!(_loc2_ || this))
                                 {
                                    continue;
                                 }
                                 if(§§pop() < §§pop())
                                 {
                                    if(!(_loc3_ && _loc2_))
                                    {
                                       if(!(_loc2_ || param1))
                                       {
                                          addr119:
                                          if(!(_loc2_ || this))
                                          {
                                             this.§_-jg§ = §_-s0§.stage.mouseY;
                                             §§goto(addr119);
                                             addr179:
                                          }
                                          if(!(_loc3_ && _loc2_))
                                          {
                                             if(!(_loc3_ && _loc3_))
                                             {
                                                §§goto(addr19);
                                             }
                                             break loop1;
                                          }
                                       }
                                       if(!(_loc2_ || param1))
                                       {
                                          break;
                                       }
                                       §§push(this);
                                       §§push(this.§_-jg§);
                                       if(_loc2_ || this)
                                       {
                                          §§push(§§pop() - §_-s0§.stage.mouseY);
                                       }
                                       §§pop().§_-02Y§ = §§pop();
                                       continue loop0;
                                       return;
                                       addr195:
                                    }
                                    continue loop0;
                                 }
                                 §§goto(addr19);
                              }
                              if(!(_loc3_ && this))
                              {
                                 break loop2;
                              }
                              continue loop2;
                           }
                        }
                        §§push(this);
                        §§push(this.§_-jg§);
                        if(!_loc3_)
                        {
                           §§push(§§pop() - §_-s0§.stage.mouseY);
                        }
                        §§pop().§_-02Y§ = §§pop();
                        §§goto(addr179);
                     }
                     this.§_-07-§ = false;
                     §§goto(addr195);
                  }
               }
               addr19:
               return;
            }
            §§goto(addr191);
         }
         §§goto(addr182);
      }
      
      private function §_-lM§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.§_-tL§(param1));
            if(!_loc3_)
            {
               if(§§pop())
               {
                  loop2:
                  while(true)
                  {
                     §§push(§ in§.isPaused);
                     addr62:
                     while(!§§pop())
                     {
                        if(!(_loc3_ && this))
                        {
                           this.§_-07-§ = true;
                        }
                        do
                        {
                           this.§_-jg§ = §_-s0§.stage.mouseY;
                        }
                        while(!_loc2_);
                        
                        if(!_loc3_)
                        {
                           break;
                        }
                        continue loop2;
                     }
                  }
                  addr60:
               }
               return;
            }
            §§goto(addr62);
         }
         §§goto(addr60);
      }
      
      private function §_-i5§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§_-07-§ = false;
         }
      }
      
      private function §_-06h§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§_-07-§ = false;
         }
      }
      
      private function onMouseWheel(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            if(this.§_-tL§(param1))
            {
               if(_loc2_)
               {
                  if(param1.delta >= 0)
                  {
                     if(param1.delta > 0)
                     {
                        if(_loc2_)
                        {
                           if(_loc2_)
                           {
                              if(_loc2_ || this)
                              {
                                 addr66:
                                 this.§_-Yg§ = -16;
                                 addr24:
                                 return;
                                 addr69:
                              }
                              else
                              {
                                 addr80:
                                 this.§_-Yg§ = 16;
                              }
                           }
                           §§goto(addr24);
                        }
                        §§goto(addr69);
                     }
                     §§goto(addr24);
                  }
               }
               §§goto(addr80);
            }
            §§goto(addr24);
         }
         §§goto(addr66);
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
         if(!(_loc4_ && param1))
         {
            §§push(_loc2_);
            if(_loc3_)
            {
               if(§§pop() == §_-nG§.STATE_STATUS_RUNNING)
               {
                  loop0:
                  while(true)
                  {
                     if(!§ in§.isPaused)
                     {
                        loop1:
                        while(true)
                        {
                           § in§.§_-03s§.update(param1);
                           loop2:
                           while(true)
                           {
                              (§_-s0§.getItemByName("Container_Credits") as §_-gt§).setVisibility(true);
                              addr134:
                              while(true)
                              {
                                 this.readyToShowCredits();
                                 loop6:
                                 while(true)
                                 {
                                    (§_-s0§.getItemByName("Container_Credits") as §_-gt§).y = Math.floor(-this.§_-K2§);
                                    addr104:
                                    while(true)
                                    {
                                       if(!(_loc3_ || _loc2_))
                                       {
                                          continue loop1;
                                       }
                                       this.§_-Ps§(param1);
                                       while(true)
                                       {
                                          if(_loc3_ || _loc2_)
                                          {
                                             if(!_loc4_)
                                             {
                                                break;
                                             }
                                             continue loop2;
                                          }
                                          continue loop6;
                                       }
                                       continue loop6;
                                    }
                                 }
                              }
                           }
                        }
                     }
                     while(mNextState.length > 0)
                     {
                        if(_loc3_)
                        {
                           if(!_loc4_)
                           {
                              if(!_loc4_)
                              {
                                 return §_-nG§.STATE_STATUS_COMPLETED;
                              }
                              §§goto(addr134);
                           }
                           §§goto(addr104);
                        }
                        else if(!_loc4_)
                        {
                           if(_loc3_ || this)
                           {
                              if(_loc3_ || _loc3_)
                              {
                                 break;
                              }
                              addr150:
                              return _loc2_;
                           }
                           continue loop0;
                        }
                        §§goto(addr82);
                     }
                     return §_-nG§.STATE_STATUS_RUNNING;
                  }
               }
            }
            §§goto(addr150);
         }
         §§goto(addr134);
      }
      
      protected function readyToShowCredits() : void
      {
      }
      
      private function §_-Ps§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this);
            §§push(this.§_-K2§);
            if(!_loc2_)
            {
               §§push(§§pop() + this.§_-02Y§);
            }
            §§pop().§_-K2§ = §§pop();
            loop0:
            while(true)
            {
               §§push(this);
               §§push(this.§_-K2§);
               if(_loc3_ || _loc2_)
               {
                  §§push(§§pop() + this.§_-Yg§);
               }
               §§pop().§_-K2§ = §§pop();
               loop1:
               while(true)
               {
                  §§push(this.§_-07-§);
                  loop2:
                  while(true)
                  {
                     §§push(!§§pop());
                     if(_loc3_ || _loc2_)
                     {
                        if(!§§pop())
                        {
                           loop3:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 loop4:
                                 while(true)
                                 {
                                    §§push(this);
                                    §§push(this.§_-K2§);
                                    if(!_loc2_)
                                    {
                                       §§push(param1);
                                       if(!(_loc2_ && _loc3_))
                                       {
                                          §§push(§§pop() / 15);
                                       }
                                       §§push(§§pop() + §§pop());
                                    }
                                    §§pop().§_-K2§ = §§pop();
                                    loop5:
                                    while(true)
                                    {
                                       addr73:
                                       if(!(_loc3_ || this))
                                       {
                                          continue;
                                       }
                                       if(!_loc3_)
                                       {
                                          continue loop4;
                                       }
                                       §§push(this);
                                       §§push(this.§_-Yg§);
                                       if(!(_loc2_ && param1))
                                       {
                                          §§push(§§pop() * 0.9);
                                       }
                                       §§pop().§_-Yg§ = §§pop();
                                       addr82:
                                       if(_loc3_ || this)
                                       {
                                          addr45:
                                          if(_loc3_ || _loc2_)
                                          {
                                             if(!_loc3_)
                                             {
                                                loop15:
                                                while(true)
                                                {
                                                   if(!(_loc2_ && param1))
                                                   {
                                                      addr55:
                                                      loop11:
                                                      while(true)
                                                      {
                                                         §§push(this.§_-07-§);
                                                         if(_loc3_)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               return;
                                                               addr61:
                                                            }
                                                            while(true)
                                                            {
                                                               if(_loc3_)
                                                               {
                                                                  §§push(this);
                                                                  §§push(this.§_-02Y§);
                                                                  if(_loc3_)
                                                                  {
                                                                     §§push(§§pop() * 0.9);
                                                                  }
                                                                  §§pop().§_-02Y§ = §§pop();
                                                                  while(true)
                                                                  {
                                                                     if(!_loc3_)
                                                                     {
                                                                        while(!_loc2_)
                                                                        {
                                                                           this.§_-K2§ = this.§_-wT§;
                                                                           break loop11;
                                                                        }
                                                                        continue loop1;
                                                                        addr140:
                                                                     }
                                                                     §§goto(addr73);
                                                                     §§goto(addr82);
                                                                  }
                                                                  continue loop5;
                                                                  addr71:
                                                               }
                                                               else
                                                               {
                                                                  addr100:
                                                               }
                                                               while(true)
                                                               {
                                                                  §§push(this);
                                                                  §§push(-AngryBirdsFP11.§_-06d§);
                                                                  if(_loc3_)
                                                                  {
                                                                     §§push(§§pop() * § in§.§_-Sr§);
                                                                  }
                                                                  §§pop().§_-K2§ = §§pop();
                                                                  continue loop15;
                                                               }
                                                               §§goto(addr45);
                                                            }
                                                            continue loop15;
                                                            addr20:
                                                         }
                                                         else
                                                         {
                                                            addr163:
                                                         }
                                                         while(true)
                                                         {
                                                            if(!_loc2_)
                                                            {
                                                               continue loop3;
                                                            }
                                                            addr205:
                                                            addr205:
                                                            while(true)
                                                            {
                                                               §§pop();
                                                               continue loop1;
                                                            }
                                                         }
                                                         continue loop2;
                                                      }
                                                      addr55:
                                                   }
                                                   continue loop0;
                                                }
                                                addr120:
                                             }
                                             addr54:
                                             §§goto(addr20);
                                          }
                                          §§goto(addr61);
                                       }
                                       §§goto(addr71);
                                    }
                                 }
                              }
                              while(true)
                              {
                                 §§push(this.§_-K2§);
                                 loop7:
                                 while(true)
                                 {
                                    §§push(-AngryBirdsFP11.§_-06d§);
                                    if(!_loc2_)
                                    {
                                       §§push(§§pop() * § in§.§_-Sr§);
                                    }
                                    addr139:
                                    while(§§pop() >= §§pop())
                                    {
                                       continue loop7;
                                    }
                                    §§goto(addr140);
                                 }
                              }
                           }
                           addr172:
                        }
                     }
                     §§goto(addr205);
                  }
               }
            }
         }
         §§goto(addr54);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            §_-s0§.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.§_-0AC§);
            loop0:
            while(true)
            {
               §_-s0§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§_-lM§);
               while(true)
               {
                  §_-s0§.stage.removeEventListener(MouseEvent.MOUSE_UP,this.§_-i5§);
                  loop2:
                  while(true)
                  {
                     §_-s0§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
                     while(true)
                     {
                        §_-s0§.stage.removeEventListener(Event.MOUSE_LEAVE,this.§_-06h§);
                        continue loop2;
                        addr55:
                        while(!(_loc1_ && _loc2_))
                        {
                           continue loop0;
                           super.deActivate();
                           if(!(_loc1_ && _loc2_))
                           {
                              addr39:
                              if(!(_loc1_ && this))
                              {
                                 return;
                                 addr46:
                              }
                              continue loop2;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr46);
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
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§_-wU§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = param2;
         if(!_loc5_)
         {
            §§push("CREDITS_CLOSE_BUTTON");
            if(_loc6_ || this)
            {
               §§push(_loc4_);
               if(_loc6_ || param2)
               {
                  if(§§pop() === §§pop())
                  {
                     if(_loc6_)
                     {
                        addr88:
                        §§push(0);
                        if(_loc5_ && param1)
                        {
                           addr108:
                        }
                     }
                     else
                     {
                        addr100:
                        §§push(1);
                        if(_loc6_ || param1)
                        {
                           §§goto(addr108);
                        }
                     }
                     §§goto(addr113);
                  }
                  else
                  {
                     §§goto(addr99);
                  }
               }
               §§goto(addr99);
            }
            addr99:
            if("FULLSCREEN_BUTTON" === _loc4_)
            {
               §§goto(addr100);
            }
            else
            {
               §§push(2);
            }
            addr113:
            switch(§§pop())
            {
               case 0:
                  mNextState = §_-05N§.§_-pk§;
                  if(!(_loc5_ && param3))
                  {
                     break;
                  }
                  addr42:
                  break;
               case 1:
                  AngryBirdsFP11.§_-07§.§_-0De§();
                  if(!(_loc5_ && this))
                  {
                     §§goto(addr42);
                  }
            }
            return;
         }
         §§goto(addr88);
      }
   }
}
