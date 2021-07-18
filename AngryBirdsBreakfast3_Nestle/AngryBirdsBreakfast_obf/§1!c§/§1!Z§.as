package §1!c§
{
   import §#!`§.§&!`§;
   import §%!B§.§0![§;
   import §'"!§.§+§;
   import §,M§.§+f§;
   import §0!m§.§@!S§;
   import §1`§.§7I§;
   import §1`§.§9%§;
   import §24§.;
   import §2u§.§,6§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §1!Z§ extends §7X§
   {
      
      public static const §8"%§:String = "CreditsState";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || §1!Z§)
         {
            §8"%§ = "CreditsState";
         }
      }
      
      protected var §9!m§:§&!`§ = null;
      
      private var §6!5§:Boolean;
      
      private var §',§:Number;
      
      private var §;W§:Number;
      
      private var §#!7§:Number;
      
      private var §+6§:Number;
      
      private var §%§:Number;
      
      public function §1!Z§(param1:§0![§, param2:§+f§, param3:Boolean = false, param4:String = "CreditsState")
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && this))
         {
            super(param1,param3,param4,param2);
         }
      }
      
      override protected function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            super.init();
            while(true)
            {
               §^!T§ = new §9%§(this);
               while(_loc1_)
               {
                  §^!T§.init(§7I§.§7!%§.Views.View_Credits[0]);
                  while(!(_loc2_ && _loc2_))
                  {
                     this.§9!m§ = new §&!`§(§@!S§.§2A§,null);
                     if(_loc1_)
                     {
                        return;
                        addr48:
                     }
                  }
               }
            }
         }
         §§goto(addr48);
      }
      
      override public function activate(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            super.activate(param1);
         }
         loop0:
         while(true)
         {
            this.§6!5§ = false;
            loop1:
            while(true)
            {
               this.§%§ = (§^!T§.getItemByName("Container_Credits") as §,6§).height + §@!S§.§`!,§ * §@!S§.§+!q§;
               while(true)
               {
                  §§push(this);
                  §§push(this.§%§);
                  if(!(_loc3_ && _loc3_))
                  {
                     §§push(-§§pop());
                  }
                  §§pop().§+6§ = §§pop();
                  loop3:
                  while(true)
                  {
                     this.activateLevelEngine();
                     loop4:
                     for(; !_loc3_; if(_loc3_ && _loc3_)
                     {
                        continue;
                     },§^!T§.stage.addEventListener(Event.MOUSE_LEAVE,this.§4f§),§§goto(addr80))
                     {
                        §^!T§.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§>Z§);
                        loop5:
                        while(true)
                        {
                           §^!T§.stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§=!H§);
                           loop6:
                           while(true)
                           {
                              §^!T§.stage.addEventListener(MouseEvent.MOUSE_UP,this.§<e§);
                              continue loop5;
                              loop10:
                              while(true)
                              {
                                 if(!(_loc3_ && _loc2_))
                                 {
                                    continue loop3;
                                 }
                                 continue loop6;
                                 addr71:
                                 this.§;W§ = 0;
                                 do
                                 {
                                    this.§+b§();
                                 }
                                 while(_loc3_ && param1);
                                 
                                 if(!_loc3_)
                                 {
                                    addr40:
                                    if(!(_loc3_ && _loc3_))
                                    {
                                       return;
                                    }
                                    addr80:
                                    while(true)
                                    {
                                       if(_loc2_ || param1)
                                       {
                                          if(_loc3_)
                                          {
                                             break;
                                          }
                                          this.§',§ = 0;
                                          continue loop10;
                                       }
                                       addr108:
                                       while(true)
                                       {
                                          if(_loc2_ || _loc2_)
                                          {
                                             continue loop4;
                                          }
                                          continue loop5;
                                       }
                                       continue loop4;
                                       §§goto(addr40);
                                    }
                                    continue loop0;
                                 }
                              }
                              continue loop3;
                           }
                        }
                     }
                     continue loop1;
                  }
               }
            }
         }
      }
      
      protected function activateLevelEngine() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §@!S§.§2A§.§`!V§(true);
            while(true)
            {
               §@!S§.resume();
            }
            addr86:
         }
         loop1:
         while(true)
         {
            §@!S§.setController(this.§9!m§);
            while(_loc2_ || _loc1_)
            {
               this.§9!m§.init();
               do
               {
                  § !4§.§%"7§.§get §();
               }
               while(!_loc2_);
               
               if(!(_loc2_ || _loc1_))
               {
                  continue;
               }
               if(!_loc1_)
               {
                  break loop1;
               }
               §§goto(addr86);
            }
         }
      }
      
      protected function §+b§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(§#7§.§02§);
         if(!(_loc4_ && _loc3_))
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         §§push(_loc1_);
         if(_loc3_ || _loc3_)
         {
            §§push(§§pop().slice(_loc1_.search("Server:"),_loc1_.length));
         }
         var _loc2_:* = §§pop();
         if(_loc3_ || _loc2_)
         {
            §§push(_loc1_);
            if(_loc3_ || _loc2_)
            {
               §§push(§§pop().slice(0,_loc1_.search("Server:")));
            }
            _loc1_ = §§pop();
            do
            {
               §^!T§.setText(_loc1_,"TextField_Version_Number");
               do
               {
                  §^!T§.setText(_loc2_,"TextField_Version_Number_Server");
               }
               while(!_loc3_);
               
            }
            while(_loc4_ && _loc1_);
            
         }
      }
      
      private function §?+§(param1:MouseEvent) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(§^!T§.stage.mouseX < §^!T§.stage.width - 180)
            {
               if(_loc3_)
               {
                  addr40:
                  §§push(true);
                  if(_loc3_ || _loc3_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr59:
                  return false;
               }
               return §§pop();
            }
            §§goto(addr59);
         }
         §§goto(addr40);
      }
      
      private function §>Z§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§6!5§);
            if(!(_loc2_ && _loc2_))
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.§?+§(param1));
                     §§goto(addr192);
                  }
               }
               §§goto(addr20);
            }
            addr192:
            §§goto(addr193);
         }
         addr193:
         loop1:
         while(§§pop())
         {
            loop2:
            while(true)
            {
               §§push(this.§#!7§);
               loop3:
               while(true)
               {
                  §§push(§§pop() - §^!T§.stage.mouseY);
                  loop4:
                  while(true)
                  {
                     §§push(0);
                     while(§§pop() <= §§pop())
                     {
                        §§push(this.§#!7§);
                        if(!(_loc2_ && _loc2_))
                        {
                           if(_loc2_ && _loc3_)
                           {
                              continue loop3;
                           }
                           §§push(§§pop() - §^!T§.stage.mouseY);
                        }
                        if(!(_loc2_ && _loc2_))
                        {
                           §§push(0);
                           if(_loc2_)
                           {
                              continue;
                           }
                           if(§§pop() < §§pop())
                           {
                              if(!(_loc2_ && param1))
                              {
                                 §§push(this);
                                 §§push(this.§#!7§);
                                 if(!(_loc2_ && _loc3_))
                                 {
                                    §§push(§§pop() - §^!T§.stage.mouseY);
                                 }
                                 §§pop().§',§ = §§pop();
                              }
                              addr110:
                              if(!(_loc3_ || _loc3_))
                              {
                                 break;
                              }
                              if(_loc3_ || param1)
                              {
                                 this.§#!7§ = §^!T§.stage.mouseY;
                                 if(!_loc3_)
                                 {
                                    §§goto(addr110);
                                 }
                                 if(!(_loc2_ && this))
                                 {
                                    if(_loc3_)
                                    {
                                       if(!_loc2_)
                                       {
                                          §§goto(addr20);
                                       }
                                       §§goto(addr196);
                                    }
                                    addr165:
                                    this.§#!7§ = §^!T§.stage.mouseY;
                                 }
                                 if(_loc2_)
                                 {
                                    break loop1;
                                 }
                                 continue loop0;
                              }
                              continue loop2;
                           }
                        }
                        continue loop4;
                        addr20:
                        return;
                     }
                     §§push(this);
                     §§push(this.§#!7§);
                     if(!(_loc2_ && _loc2_))
                     {
                        §§push(§§pop() - §^!T§.stage.mouseY);
                     }
                     §§pop().§',§ = §§pop();
                     §§goto(addr165);
                  }
               }
            }
         }
         this.§6!5§ = false;
         addr196:
      }
      
      private function §=!H§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.§?+§(param1));
            if(!_loc2_)
            {
               if(§§pop())
               {
                  if(!(_loc2_ && _loc2_))
                  {
                     addr75:
                     if(!§@!S§.isPaused)
                     {
                        while(true)
                        {
                           this.§6!5§ = true;
                        }
                        addr76:
                     }
                     §§goto(addr20);
                  }
                  while(true)
                  {
                     this.§#!7§ = §^!T§.stage.mouseY;
                     if(_loc2_ && param1)
                     {
                        continue;
                     }
                     if(_loc3_)
                     {
                        break;
                     }
                     §§goto(addr76);
                  }
                  addr49:
               }
               addr20:
               return;
            }
            §§goto(addr75);
         }
         §§goto(addr49);
      }
      
      private function §<e§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§6!5§ = false;
         }
      }
      
      private function §4f§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§6!5§ = false;
         }
      }
      
      private function onMouseWheel(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(this.§?+§(param1))
            {
               loop0:
               for(; param1.delta >= 0; if(_loc2_ && _loc2_)
               {
                  continue;
               })
               {
                  if(param1.delta > 0)
                  {
                     if(!_loc2_)
                     {
                        if(!_loc2_)
                        {
                           while(true)
                           {
                              this.§;W§ = -16;
                              addr48:
                              while(true)
                              {
                                 if(_loc2_ && param1)
                                 {
                                    break loop0;
                                 }
                                 continue loop0;
                              }
                           }
                           addr45:
                        }
                        addr20:
                        return;
                        addr84:
                     }
                     §§goto(addr48);
                  }
                  §§goto(addr20);
               }
               this.§;W§ = 16;
               §§goto(addr84);
            }
            §§goto(addr20);
         }
         §§goto(addr45);
      }
      
      override protected function update(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            super.update(param1);
         }
         loop0:
         while(!§@!S§.isPaused)
         {
            loop1:
            while(!_loc3_)
            {
               §@!S§.controller.update(param1);
               while(true)
               {
                  (§^!T§.getItemByName("Container_Credits") as §,6§).setVisibility(true);
                  while(_loc2_ || _loc3_)
                  {
                     this.§8p§();
                     loop4:
                     while(_loc2_ || param1)
                     {
                        (§^!T§.getItemByName("Container_Credits") as §,6§).y = Math.floor(-this.§+6§);
                        while(_loc2_)
                        {
                           this.§4!`§(param1);
                           if(!_loc3_)
                           {
                              if(!_loc3_)
                              {
                                 break loop0;
                              }
                              continue loop4;
                           }
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
      }
      
      protected function §8p§() : void
      {
      }
      
      private function §4!`§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this);
            §§push(this.§+6§);
            if(!_loc2_)
            {
               §§push(§§pop() + this.§',§);
            }
            §§pop().§+6§ = §§pop();
            loop0:
            while(true)
            {
               §§push(this);
               §§push(this.§+6§);
               if(!(_loc2_ && _loc2_))
               {
                  §§push(§§pop() + this.§;W§);
               }
               §§pop().§+6§ = §§pop();
               loop1:
               while(true)
               {
                  §§push(this.§6!5§);
                  if(!(_loc2_ && param1))
                  {
                     §§push(!§§pop());
                     if(_loc3_ || _loc3_)
                     {
                        addr220:
                        if(§§pop())
                        {
                           while(true)
                           {
                              §§pop();
                              addr223:
                              addr48:
                              while(true)
                              {
                                 §§push(Math.abs(this.§;W§) < param1 / 15);
                              }
                              if(!(_loc2_ && param1))
                              {
                                 if(!§§pop())
                                 {
                                    if(_loc3_ || _loc3_)
                                    {
                                       if(_loc3_)
                                       {
                                          if(_loc3_ || _loc2_)
                                          {
                                             continue loop0;
                                          }
                                          §§goto(addr223);
                                       }
                                       while(_loc3_)
                                       {
                                          addr136:
                                          if(!(_loc2_ && _loc2_))
                                          {
                                             addr153:
                                             §§push(this);
                                             §§push(-§ !4§.§,n§);
                                             if(!_loc2_)
                                             {
                                                §§push(§§pop() * §@!S§.§+!q§);
                                             }
                                             §§pop().§+6§ = §§pop();
                                             while(true)
                                             {
                                                §§goto(addr43);
                                             }
                                             addr153:
                                          }
                                          §§goto(addr201);
                                       }
                                       addr43:
                                       §§goto(addr20);
                                    }
                                    while(_loc3_ || _loc3_)
                                    {
                                       §§push(this);
                                       §§push(this.§;W§);
                                       if(!_loc2_)
                                       {
                                          §§push(§§pop() * 0.9);
                                       }
                                       §§pop().§;W§ = §§pop();
                                       if(_loc2_ && _loc2_)
                                       {
                                          continue;
                                       }
                                       if(_loc2_)
                                       {
                                          §§goto(addr164);
                                       }
                                       §§goto(addr20);
                                    }
                                    §§goto(addr153);
                                    addr92:
                                 }
                                 addr20:
                              }
                              continue;
                              loop12:
                              while(true)
                              {
                                 §§push(this.§6!5§);
                                 if(!_loc2_)
                                 {
                                    §§goto(addr48);
                                 }
                                 addr179:
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       if(_loc3_ || _loc3_)
                                       {
                                          if(!_loc3_)
                                          {
                                             break;
                                          }
                                          §§push(this);
                                          §§push(this.§+6§);
                                          if(!_loc2_)
                                          {
                                             §§push(param1);
                                             if(_loc3_)
                                             {
                                                §§push(§§pop() / 15);
                                             }
                                             §§push(§§pop() + §§pop());
                                          }
                                          §§pop().§+6§ = §§pop();
                                          while(true)
                                          {
                                             §§goto(addr136);
                                          }
                                          addr201:
                                       }
                                       §§goto(addr201);
                                    }
                                    while(true)
                                    {
                                       §§push(this.§+6§);
                                       loop7:
                                       while(true)
                                       {
                                          §§push(-§ !4§.§,n§);
                                          loop8:
                                          while(true)
                                          {
                                             §§push(§§pop() * §@!S§.§+!q§);
                                             while(§§pop() >= §§pop())
                                             {
                                                §§push(this.§+6§);
                                                if(_loc3_)
                                                {
                                                   §§push(this.§%§);
                                                   if(!(_loc2_ && this))
                                                   {
                                                      if(_loc3_ || this)
                                                      {
                                                         if(§§pop() > §§pop())
                                                         {
                                                            continue loop13;
                                                         }
                                                         continue loop12;
                                                      }
                                                      continue loop8;
                                                   }
                                                   continue;
                                                }
                                                continue loop7;
                                             }
                                             addr164:
                                             this.§+6§ = this.§%§;
                                             break loop13;
                                          }
                                       }
                                    }
                                 }
                                 continue loop1;
                              }
                              return;
                           }
                           addr222:
                        }
                        while(true)
                        {
                           §§goto(addr179);
                        }
                     }
                     §§goto(addr222);
                  }
                  §§goto(addr220);
               }
            }
         }
         §§goto(addr153);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §^!T§.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.§>Z§);
            while(true)
            {
               §^!T§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§=!H§);
               loop1:
               for(; _loc1_ || this; loop4:
               while(true)
               {
                  if(_loc2_ && _loc2_)
                  {
                     continue loop1;
                  }
                  (§^!T§.getItemByName("Container_Credits") as §,6§).visible = false;
                  while(!_loc2_)
                  {
                     if(_loc2_)
                     {
                        break loop4;
                     }
                     super.deActivate();
                     if(_loc1_ || this)
                     {
                        continue loop4;
                     }
                  }
                  §§goto(addr93);
               },§§goto(addr102))
               {
                  §^!T§.stage.removeEventListener(MouseEvent.MOUSE_UP,this.§<e§);
                  while(true)
                  {
                     §^!T§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
                     addr93:
                     while(true)
                     {
                        §^!T§.stage.removeEventListener(Event.MOUSE_LEAVE,this.§4f§);
                        continue loop1;
                     }
                  }
               }
            }
         }
         §§goto(addr93);
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            super.cleanup();
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§+§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = param2;
         if(_loc6_ || param1)
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
                     §7"6§(§`!z§.§8"%§);
                     if(!_loc5_)
                     {
                        break;
                     }
                     break;
                  case 1:
                     § !4§.§%"7§.§]!;§();
                     if(_loc6_ || param2)
                     {
                        break;
                     }
               }
               return;
            }
            if(_loc6_)
            {
               §§push(0);
               if(_loc5_ && param2)
               {
               }
            }
            else
            {
               addr76:
               §§push(1);
               if(_loc6_ || this)
               {
               }
            }
            §§goto(addr99);
         }
         §§goto(addr76);
      }
   }
}
