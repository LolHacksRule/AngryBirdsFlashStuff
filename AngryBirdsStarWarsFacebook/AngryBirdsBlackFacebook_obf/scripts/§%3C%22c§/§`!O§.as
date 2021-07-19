package §<"c§
{
   import §"a§.§`!,§;
   import §+D§.§ #^§;
   import §5t§.Log;
   import §7!$§.§&$§;
   import §7!$§.§]#[§;
   import §;"Y§.§&#X§;
   import §>@§.§5"H§;
   import §?m§.§+"2§;
   import com.angrybirds.§,!q§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §`!O§ extends §]"_§
   {
      
      public static const §^!7§:String = "CreditsState";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §^!7§ = "CreditsState";
         }
      }
      
      protected var §2#$§:§`!,§ = null;
      
      private var §&!8§:Boolean;
      
      private var §<u§:Number;
      
      private var §^#L§:Number;
      
      private var §@"t§:Number;
      
      private var §[s§:Number;
      
      private var §&Y§:Number;
      
      public function §`!O§(param1:§+"2§, param2:§5"H§, param3:Boolean = false, param4:String = "CreditsState")
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            super(param1,param3,param4,param2);
         }
      }
      
      override protected function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.init();
            while(true)
            {
               §@;§ = new §]#[§(this);
               loop1:
               while(!_loc1_)
               {
                  while(true)
                  {
                     §@;§.init(§&$§.§@8§.Views.View_Credits[0]);
                     do
                     {
                        this.§2#$§ = new §`!,§(§,!q§.§9!,§,null);
                     }
                     while(!_loc2_);
                     
                     if(_loc2_ || _loc2_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr80);
      }
      
      override public function activate(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            super.activate(param1);
            while(true)
            {
               this.§&!8§ = false;
               addr195:
               while(true)
               {
                  this.§&Y§ = (§@;§.getItemByName("Container_Credits") as § #^§).height + §,!q§.§>#O§ * §,!q§.§!"N§;
               }
               addr142:
               if(_loc2_ && param1)
               {
                  continue;
               }
               §@;§.stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§[!&§);
               loop6:
               while(true)
               {
                  §@;§.stage.addEventListener(MouseEvent.MOUSE_UP,this.§@#H§);
                  loop7:
                  while(true)
                  {
                     §@;§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
                     loop8:
                     while(true)
                     {
                        §@;§.stage.addEventListener(Event.MOUSE_LEAVE,this.§[u§);
                        addr87:
                        addr190:
                        while(_loc3_ || _loc3_)
                        {
                           this.§<u§ = 0;
                           while(true)
                           {
                              if(_loc3_)
                              {
                                 if(!_loc2_)
                                 {
                                    if(!_loc3_)
                                    {
                                       break;
                                    }
                                    this.§^#L§ = 0;
                                    continue;
                                 }
                                 continue loop6;
                              }
                              continue loop7;
                           }
                           loop5:
                           while(true)
                           {
                              if(_loc3_)
                              {
                                 §§goto(addr142);
                              }
                              else
                              {
                                 while(!_loc2_)
                                 {
                                    §@;§.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§[#8§);
                                    continue loop5;
                                 }
                                 while(true)
                                 {
                                    this.§"#6§();
                                    §§goto(addr153);
                                 }
                                 addr153:
                                 addr164:
                              }
                           }
                           §§goto(addr195);
                           if(!(_loc2_ && this))
                           {
                              continue loop8;
                           }
                        }
                        while(true)
                        {
                           §§push(this);
                           §§push(this.§&Y§);
                           if(!_loc2_)
                           {
                              §§push(-§§pop());
                           }
                           §§pop().§[s§ = §§pop();
                           §§goto(addr164);
                           §§goto(addr87);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr190);
      }
      
      protected function §"#6§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §,!q§.§9!,§.§]"J§(true);
         }
         loop0:
         while(true)
         {
            §,!q§.resume();
            while(true)
            {
               §,!q§.§3!Q§(this.§2#$§);
               while(_loc2_ || _loc1_)
               {
                  if(_loc2_)
                  {
                     this.§2#$§.init();
                     while(_loc2_)
                     {
                        §4#;§.singleton.playThemeMusic();
                        if(_loc2_ || _loc1_)
                        {
                           return;
                        }
                     }
                     continue;
                  }
                  continue loop0;
               }
            }
         }
      }
      
      protected function §&!K§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(Log.§,#1§);
         if(!(_loc4_ && _loc1_))
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
         if(_loc3_ || _loc3_)
         {
            §§push(_loc1_);
            if(!_loc4_)
            {
               §§push(§§pop().slice(0,_loc1_.search("Server:")));
            }
            _loc1_ = §§pop();
            loop0:
            while(true)
            {
               §@;§.setText(_loc1_,"TextField_Version_Number");
               do
               {
                  if(!(_loc4_ && this))
                  {
                     continue;
                  }
                  continue loop0;
               }
               while(§@;§.setText(_loc2_,"TextField_Version_Number_Server"), _loc4_ && _loc2_);
               
               §§goto(addr72);
            }
         }
         addr72:
      }
      
      private function §># §(param1:MouseEvent) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(§@;§.stage.mouseX < §@;§.stage.width - 180)
            {
               if(!(_loc3_ && param1))
               {
                  §§push(true);
                  if(_loc2_)
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
      
      private function §[#8§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            §§push(this.§&!8§);
            if(!(_loc3_ && _loc2_))
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.§># §(param1));
                     §§goto(addr174);
                  }
                  addr161:
               }
               return;
            }
            addr174:
            while(true)
            {
               if(!§§pop())
               {
                  if(_loc2_)
                  {
                     this.§&!8§ = false;
                     break;
                  }
                  break;
               }
               loop1:
               while(true)
               {
                  §§push(this.§@"t§);
                  loop2:
                  while(true)
                  {
                     §§push(§§pop() - §@;§.stage.mouseY);
                     loop3:
                     while(true)
                     {
                        §§push(0);
                        while(true)
                        {
                           if(§§pop() > §§pop())
                           {
                              if(!(_loc3_ && _loc3_))
                              {
                                 §§push(this);
                                 §§push(this.§@"t§);
                                 if(_loc2_)
                                 {
                                    §§push(§§pop() - §@;§.stage.mouseY);
                                 }
                                 §§pop().§<u§ = §§pop();
                              }
                              this.§@"t§ = §@;§.stage.mouseY;
                              addr147:
                           }
                           §§push(this.§@"t§);
                           if(!_loc3_)
                           {
                              §§push(§§pop() - §@;§.stage.mouseY);
                           }
                           if(!(_loc2_ || _loc2_))
                           {
                              continue loop3;
                              if(!(_loc3_ && this))
                              {
                                 break;
                              }
                           }
                           if(!_loc2_)
                           {
                              continue loop2;
                           }
                           §§push(0);
                           if(!(_loc3_ && param1))
                           {
                              if(§§pop() < §§pop())
                              {
                                 if(_loc2_)
                                 {
                                    §§push(this);
                                    §§push(this.§@"t§);
                                    if(!(_loc3_ && _loc3_))
                                    {
                                       §§push(§§pop() - §@;§.stage.mouseY);
                                    }
                                    §§pop().§<u§ = §§pop();
                                 }
                                 addr97:
                                 if(!(_loc3_ && this))
                                 {
                                    if(!_loc3_)
                                    {
                                       this.§@"t§ = §@;§.stage.mouseY;
                                       if(!_loc2_)
                                       {
                                          §§goto(addr97);
                                       }
                                       if(_loc2_)
                                       {
                                          if(!_loc3_)
                                          {
                                             break;
                                          }
                                          continue loop5;
                                       }
                                       §§goto(addr147);
                                    }
                                    continue loop1;
                                 }
                              }
                              break;
                           }
                        }
                     }
                  }
               }
               continue loop5;
            }
            return;
         }
         §§goto(addr161);
      }
      
      private function §[!&§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§># §(param1));
            if(!_loc2_)
            {
               if(§§pop())
               {
                  loop0:
                  while(true)
                  {
                     §§push(§,!q§.isPaused);
                     addr68:
                     while(!§§pop())
                     {
                        if(_loc3_)
                        {
                           this.§&!8§ = true;
                        }
                        continue loop0;
                     }
                  }
               }
               return;
            }
            §§goto(addr68);
         }
         §§goto(addr74);
      }
      
      private function §@#H§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§&!8§ = false;
         }
      }
      
      private function §[u§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§&!8§ = false;
         }
      }
      
      private function onMouseWheel(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            if(this.§># §(param1))
            {
               if(!(_loc2_ && this))
               {
                  if(param1.delta < 0)
                  {
                     if(!_loc2_)
                     {
                        addr91:
                        this.§^#L§ = 16;
                     }
                     addr94:
                  }
                  else if(param1.delta > 0)
                  {
                     if(!(_loc2_ && this))
                     {
                        if(!(_loc2_ && this))
                        {
                           this.§^#L§ = -16;
                        }
                        else
                        {
                           §§goto(addr94);
                        }
                        §§goto(addr25);
                     }
                  }
               }
               §§goto(addr91);
            }
            addr25:
            return;
         }
         §§goto(addr91);
      }
      
      override protected function update(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            super.update(param1);
            loop0:
            while(!§,!q§.isPaused)
            {
               loop1:
               while(true)
               {
                  §,!q§.§>k§.update(param1);
                  addr103:
                  while(_loc3_)
                  {
                     (§@;§.getItemByName("Container_Credits") as § #^§).setVisibility(true);
                     while(true)
                     {
                        this.§5T§();
                        continue loop1;
                     }
                  }
                  continue loop0;
               }
            }
            return;
         }
         §§goto(addr75);
      }
      
      protected function §5T§() : void
      {
      }
      
      private function §4!x§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            §§push(this);
            §§push(this.§[s§);
            if(!_loc3_)
            {
               §§push(§§pop() + this.§<u§);
            }
            §§pop().§[s§ = §§pop();
            loop0:
            while(true)
            {
               §§push(this);
               §§push(this.§[s§);
               if(!_loc3_)
               {
                  §§push(§§pop() + this.§^#L§);
               }
               §§pop().§[s§ = §§pop();
               loop1:
               while(true)
               {
                  §§push(this.§&!8§);
                  while(true)
                  {
                     §§push(!§§pop());
                     if(_loc2_ || this)
                     {
                        if(§§pop())
                        {
                           loop9:
                           while(true)
                           {
                              §§pop();
                              addr190:
                              while(_loc2_)
                              {
                                 §§push(Math.abs(this.§^#L§) < param1 / 15);
                                 continue loop9;
                              }
                              continue loop0;
                           }
                           addr189:
                        }
                        while(true)
                        {
                           if(§§pop())
                           {
                              while(true)
                              {
                                 §§push(this);
                                 §§push(this.§[s§);
                                 if(!_loc3_)
                                 {
                                    §§push(param1);
                                    if(_loc2_)
                                    {
                                       §§push(§§pop() / 15);
                                    }
                                    §§push(§§pop() + §§pop());
                                 }
                                 §§pop().§[s§ = §§pop();
                                 addr175:
                                 while(true)
                                 {
                                 }
                              }
                              addr163:
                           }
                           while(true)
                           {
                              §§push(this.§[s§);
                              loop6:
                              while(true)
                              {
                                 §§push(-§4#;§.screenHeight);
                                 loop7:
                                 while(true)
                                 {
                                    §§push(§§pop() * §,!q§.§!"N§);
                                    while(§§pop() >= §§pop())
                                    {
                                       §§push(this.§[s§);
                                       if(_loc3_)
                                       {
                                          continue loop6;
                                       }
                                       §§push(this.§&Y§);
                                       if(_loc3_)
                                       {
                                          continue;
                                       }
                                       if(!_loc2_)
                                       {
                                          continue loop7;
                                       }
                                       if(§§pop() > §§pop())
                                       {
                                          addr89:
                                          if(!(_loc3_ && _loc2_))
                                          {
                                             if(_loc3_)
                                             {
                                                continue loop1;
                                             }
                                             §§push(this);
                                             §§push(-§4#;§.screenHeight);
                                             if(!_loc3_)
                                             {
                                                §§push(§§pop() * §,!q§.§!"N§);
                                             }
                                             §§pop().§[s§ = §§pop();
                                             addr118:
                                          }
                                          break;
                                       }
                                       addr56:
                                       §§push(this.§&!8§);
                                       if(_loc2_)
                                       {
                                          if(!§§pop())
                                          {
                                             addr62:
                                             if(!_loc3_)
                                             {
                                                §§push(this);
                                                §§push(this.§<u§);
                                                if(_loc2_)
                                                {
                                                   §§push(§§pop() * 0.9);
                                                }
                                                §§pop().§<u§ = §§pop();
                                                addr72:
                                                if(!_loc3_)
                                                {
                                                   §§push(this);
                                                   §§push(this.§^#L§);
                                                   if(_loc2_)
                                                   {
                                                      §§push(§§pop() * 0.9);
                                                   }
                                                   §§pop().§^#L§ = §§pop();
                                                   if(!(_loc3_ && _loc3_))
                                                   {
                                                      if(!(_loc3_ && _loc3_))
                                                      {
                                                         if(_loc3_)
                                                         {
                                                            §§goto(addr56);
                                                            addr142:
                                                         }
                                                         if(_loc2_)
                                                         {
                                                            §§goto(addr24);
                                                         }
                                                         §§goto(addr190);
                                                      }
                                                      §§goto(addr62);
                                                   }
                                                   §§goto(addr72);
                                                }
                                                §§goto(addr118);
                                             }
                                             §§goto(addr89);
                                          }
                                          addr24:
                                          return;
                                       }
                                       §§goto(addr152);
                                    }
                                    if(!_loc3_)
                                    {
                                       if(!(_loc3_ && param1))
                                       {
                                          this.§[s§ = this.§&Y§;
                                          §§goto(addr142);
                                       }
                                       §§goto(addr163);
                                    }
                                    §§goto(addr175);
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr189);
                  }
               }
            }
         }
         §§goto(addr175);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §@;§.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.§[#8§);
            loop0:
            while(true)
            {
               §@;§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§[!&§);
               loop1:
               do
               {
                  §@;§.stage.removeEventListener(MouseEvent.MOUSE_UP,this.§@#H§);
                  while(true)
                  {
                     §@;§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
                     while(_loc1_)
                     {
                        §@;§.stage.removeEventListener(Event.MOUSE_LEAVE,this.§[u§);
                        loop4:
                        do
                        {
                           (§@;§.getItemByName("Container_Credits") as § #^§).visible = false;
                           while(!_loc2_)
                           {
                              super.deActivate();
                              if(_loc1_ || _loc2_)
                              {
                                 continue loop4;
                              }
                           }
                           continue loop0;
                        }
                        while(_loc2_ && _loc1_);
                        
                        if(_loc1_ || this)
                        {
                           continue loop1;
                        }
                     }
                  }
               }
               while(_loc2_ && _loc2_);
               
            }
         }
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super.cleanup();
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§&#X§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = param2;
         if(!_loc6_)
         {
            if("CREDITS_CLOSE_BUTTON" !== _loc4_)
            {
               if("FULLSCREEN_BUTTON" === _loc4_)
               {
                  §§goto(addr70);
               }
               else
               {
                  §§push(2);
               }
               addr93:
               switch(§§pop())
               {
                  case 0:
                     § g§(§+!n§.§^!7§);
                     if(!_loc6_)
                     {
                        break;
                     }
                     addr36:
                     break;
                  case 1:
                     §4#;§.singleton.§5"q§();
                     if(_loc5_ || param3)
                     {
                        §§goto(addr36);
                     }
               }
               return;
            }
            if(!(_loc6_ && param2))
            {
               addr63:
               §§push(0);
               if(_loc6_)
               {
               }
            }
            else
            {
               addr70:
               §§push(1);
               if(_loc5_ || param1)
               {
               }
            }
            §§goto(addr93);
            §§goto(addr70);
         }
         §§goto(addr63);
      }
   }
}
