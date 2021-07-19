package §8!_§
{
   import § M§.§`"2§;
   import §%!r§.§3!'§;
   import §,"&§.§9q§;
   import §0N§.§2!@§;
   import §5X§.§+!#§;
   import §77§.§ ",§;
   import §^=§.§-G§;
   import §^=§.§1"F§;
   import §`!j§.§9"!§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §4!U§ extends §5!&§
   {
      
      public static const STATE_NAME:String = "CreditsState";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            STATE_NAME = "CreditsState";
         }
      }
      
      protected var §'!v§:§`"2§ = null;
      
      private var §+H§:Boolean;
      
      private var §5_§:Number;
      
      private var §return§:Number;
      
      private var §8!8§:Number;
      
      private var §'!!§:Number;
      
      private var §2N§:Number;
      
      public function §4!U§(param1:§9"!§, param2:§3!'§, param3:Boolean = false, param4:String = "CreditsState")
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
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            super.init();
            while(true)
            {
               §8!A§ = new §1"F§(this);
               while(_loc1_)
               {
                  §8!A§.init(§-G§.§4+§.Views.View_Credits[0]);
                  while(_loc1_ || _loc2_)
                  {
                     this.§'!v§ = new §`"2§(§9q§.§>!L§,null);
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
         if(!(_loc3_ && this))
         {
            super.activate(param1);
            loop0:
            while(true)
            {
               this.§2N§ = (§8!A§.getItemByName("Container_Credits") as § ",§).height + §9q§.§3!h§ * §9q§.§+w§;
               loop1:
               while(true)
               {
                  §§push(this);
                  §§push(this.§2N§);
                  if(_loc2_ || param1)
                  {
                     §§push(-§§pop());
                  }
                  §§pop().§'!!§ = §§pop();
                  addr156:
                  while(true)
                  {
                     this.activateLevelEngine();
                     addr142:
                     while(true)
                     {
                        §8!A§.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§?!J§);
                        addr138:
                        while(true)
                        {
                           §8!A§.stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§4!E§);
                        }
                     }
                  }
                  addr95:
                  if(_loc3_ && param1)
                  {
                     continue;
                  }
                  this.§5_§ = 0;
                  loop9:
                  while(true)
                  {
                     if(_loc2_ || param1)
                     {
                        if(!_loc3_)
                        {
                           this.§return§ = 0;
                           while(true)
                           {
                              if(_loc2_)
                              {
                                 if(_loc3_)
                                 {
                                    break;
                                 }
                                 if(!_loc3_)
                                 {
                                    continue;
                                 }
                                 continue loop0;
                              }
                              addr129:
                              while(true)
                              {
                                 §8!A§.stage.addEventListener(MouseEvent.MOUSE_UP,this.§9v§);
                                 while(true)
                                 {
                                    §8!A§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
                                    loop7:
                                    while(true)
                                    {
                                       §8!A§.stage.addEventListener(Event.MOUSE_LEAVE,this.§]!Y§);
                                       addr93:
                                       while(true)
                                       {
                                          if(!_loc2_)
                                          {
                                             continue loop7;
                                          }
                                          §§goto(addr95);
                                          continue loop9;
                                       }
                                       continue loop1;
                                    }
                                    addr40:
                                    if(_loc3_ && _loc3_)
                                    {
                                       continue;
                                    }
                                    if(_loc2_)
                                    {
                                       return;
                                    }
                                    §§goto(addr156);
                                 }
                              }
                           }
                           §§goto(addr142);
                        }
                        break;
                     }
                     §§goto(addr93);
                  }
                  §§goto(addr138);
               }
            }
         }
         §§goto(addr129);
      }
      
      protected function activateLevelEngine() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §9q§.§>!L§.§0!M§(true);
         }
         do
         {
            §9q§.resume();
            loop1:
            do
            {
               §9q§.§15§(this.§'!v§);
               while(true)
               {
                  this.§'!v§.init();
                  while(_loc2_)
                  {
                     § !g§.§;!'§.§2!M§();
                     if(_loc2_ || _loc2_)
                     {
                        continue loop1;
                     }
                  }
               }
            }
            while(_loc1_);
            
         }
         while(_loc1_);
         
      }
      
      protected function §,!i§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(§2!@§.§'!S§);
         if(_loc4_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         §§push(_loc1_);
         if(!_loc3_)
         {
            §§push(§§pop().slice(_loc1_.search("Server:"),_loc1_.length));
         }
         var _loc2_:* = §§pop();
         if(!_loc3_)
         {
            §§push(_loc1_);
            if(_loc4_)
            {
               §§push(§§pop().slice(0,_loc1_.search("Server:")));
            }
            _loc1_ = §§pop();
            while(true)
            {
               §8!A§.setText(_loc1_,"TextField_Version_Number");
               loop1:
               while(_loc4_)
               {
                  while(true)
                  {
                     §8!A§.setText(_loc2_,"TextField_Version_Number_Server");
                     if(_loc4_ || this)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr71);
      }
      
      private function §;M§(param1:MouseEvent) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            if(§8!A§.stage.mouseX < §8!A§.stage.width - 180)
            {
               if(!_loc2_)
               {
                  addr45:
                  §§push(true);
                  if(!(_loc2_ && this))
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr64:
                  return false;
               }
               return §§pop();
            }
            §§goto(addr64);
         }
         §§goto(addr45);
      }
      
      private function §?!J§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§+H§);
            if(_loc3_)
            {
               if(§§pop())
               {
                  loop0:
                  while(true)
                  {
                     §§push(this.§;M§(param1));
                     addr162:
                     loop1:
                     for(; §§pop(); continue loop0)
                     {
                        loop2:
                        while(true)
                        {
                           §§push(this.§8!8§);
                           loop3:
                           while(true)
                           {
                              §§push(§§pop() - §8!A§.stage.mouseY);
                              loop4:
                              while(true)
                              {
                                 §§push(0);
                                 while(§§pop() <= §§pop())
                                 {
                                    §§push(this.§8!8§);
                                    if(!(_loc2_ && _loc2_))
                                    {
                                       if(_loc2_)
                                       {
                                          continue loop3;
                                       }
                                       §§push(§§pop() - §8!A§.stage.mouseY);
                                    }
                                    if(_loc2_)
                                    {
                                       continue loop4;
                                    }
                                    §§push(0);
                                    if(!_loc3_)
                                    {
                                       continue;
                                    }
                                    if(§§pop() < §§pop())
                                    {
                                       if(_loc3_ || _loc3_)
                                       {
                                          if(_loc3_)
                                          {
                                             §§push(this);
                                             §§push(this.§8!8§);
                                             if(!(_loc2_ && this))
                                             {
                                                §§push(§§pop() - §8!A§.stage.mouseY);
                                             }
                                             §§pop().§5_§ = §§pop();
                                             this.§8!8§ = §8!A§.stage.mouseY;
                                             §§goto(addr93);
                                          }
                                          §§goto(addr100);
                                       }
                                       addr93:
                                       if(_loc2_)
                                       {
                                          §§goto(addr93);
                                       }
                                       if(!_loc2_)
                                       {
                                          §§goto(addr20);
                                       }
                                       addr129:
                                       if(_loc3_ || _loc2_)
                                       {
                                          this.§8!8§ = §8!A§.stage.mouseY;
                                          addr100:
                                          if(!(_loc3_ || _loc3_))
                                          {
                                             break;
                                          }
                                          if(!_loc3_)
                                          {
                                             break loop1;
                                          }
                                          §§goto(addr20);
                                       }
                                       if(_loc2_)
                                       {
                                          return;
                                       }
                                       addr166:
                                       if(_loc3_)
                                       {
                                          continue loop2;
                                       }
                                       continue loop1;
                                    }
                                    §§goto(addr20);
                                 }
                                 §§push(this);
                                 §§push(this.§8!8§);
                                 if(!_loc2_)
                                 {
                                    §§push(§§pop() - §8!A§.stage.mouseY);
                                 }
                                 §§pop().§5_§ = §§pop();
                                 §§goto(addr129);
                              }
                           }
                        }
                     }
                     this.§+H§ = false;
                     §§goto(addr166);
                  }
               }
               addr20:
               return;
            }
            §§goto(addr162);
         }
         §§goto(addr109);
      }
      
      private function §4!E§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            §§push(this.§;M§(param1));
            if(_loc3_)
            {
               if(§§pop())
               {
                  loop0:
                  while(true)
                  {
                     §§push(§9q§.isPaused);
                     addr73:
                     while(!§§pop())
                     {
                        continue loop0;
                     }
                  }
               }
               return;
            }
            §§goto(addr73);
         }
         §§goto(addr54);
      }
      
      private function §9v§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§+H§ = false;
         }
      }
      
      private function §]!Y§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§+H§ = false;
         }
      }
      
      private function onMouseWheel(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(this.§;M§(param1))
            {
               while(param1.delta >= 0)
               {
                  if(param1.delta > 0)
                  {
                     if(_loc3_ || _loc3_)
                     {
                        if(_loc3_)
                        {
                           if(_loc3_)
                           {
                              this.§return§ = -16;
                              addr55:
                              if(_loc3_)
                              {
                                 addr20:
                                 return;
                                 addr57:
                              }
                              break;
                           }
                           continue;
                        }
                        §§goto(addr20);
                        addr79:
                     }
                     §§goto(addr55);
                  }
                  §§goto(addr20);
               }
               this.§return§ = 16;
               §§goto(addr79);
            }
            §§goto(addr20);
         }
         §§goto(addr57);
      }
      
      override protected function update(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            super.update(param1);
            loop0:
            for(; !§9q§.isPaused; while(_loc3_ || this)
            {
               (§8!A§.getItemByName("Container_Credits") as § ",§).y = Math.floor(-this.§'!!§);
               do
               {
                  this.§0`§(param1);
               }
               while(!(_loc3_ || this));
               
               if(_loc2_ && this)
               {
                  continue;
               }
               if(!_loc2_)
               {
                  break loop0;
               }
               §§goto(addr87);
            })
            {
               if(_loc3_ || _loc3_)
               {
                  while(true)
                  {
                     §9q§.§&!$§.update(param1);
                  }
                  addr116:
               }
               while(true)
               {
                  (§8!A§.getItemByName("Container_Credits") as § ",§).setVisibility(true);
                  addr87:
                  while(!(_loc2_ && this))
                  {
                     this.§47§();
                     continue loop0;
                  }
               }
            }
            return;
         }
         §§goto(addr116);
      }
      
      protected function §47§() : void
      {
      }
      
      private function §0`§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            §§push(this);
            §§push(this.§'!!§);
            if(!(_loc3_ && _loc2_))
            {
               §§push(§§pop() + this.§5_§);
            }
            §§pop().§'!!§ = §§pop();
            while(true)
            {
               §§push(this);
               §§push(this.§'!!§);
               if(_loc2_ || _loc3_)
               {
                  §§push(§§pop() + this.§return§);
               }
               §§pop().§'!!§ = §§pop();
               loop1:
               while(true)
               {
                  §§push(this.§+H§);
                  if(!_loc3_)
                  {
                     §§push(!§§pop());
                  }
                  loop2:
                  while(true)
                  {
                     if(§§pop())
                     {
                        loop3:
                        while(true)
                        {
                           §§pop();
                           addr212:
                           while(true)
                           {
                              §§push(Math.abs(this.§return§) < param1 / 15);
                              addr181:
                              while(_loc2_ || _loc2_)
                              {
                              }
                              continue loop3;
                           }
                        }
                     }
                     while(true)
                     {
                        if(§§pop())
                        {
                           loop7:
                           while(true)
                           {
                              §§push(this);
                              §§push(this.§'!!§);
                              if(!_loc3_)
                              {
                                 §§push(param1);
                                 if(_loc2_)
                                 {
                                    §§push(§§pop() / 15);
                                 }
                                 §§push(§§pop() + §§pop());
                              }
                              §§pop().§'!!§ = §§pop();
                              addr202:
                              addr149:
                              loop8:
                              while(true)
                              {
                                 addr162:
                                 while(true)
                                 {
                                    if(!(_loc3_ && _loc3_))
                                    {
                                       if(!_loc3_)
                                       {
                                          while(true)
                                          {
                                             §§push(this.§+H§);
                                             if(_loc2_)
                                             {
                                                continue loop2;
                                             }
                                             §§goto(addr181);
                                          }
                                          continue loop8;
                                          addr45:
                                       }
                                       continue loop1;
                                    }
                                    continue loop8;
                                 }
                              }
                              addr149:
                              while(true)
                              {
                                 if(_loc3_ && this)
                                 {
                                    continue loop7;
                                 }
                                 if(_loc2_)
                                 {
                                    this.§'!!§ = this.§2N§;
                                    §§goto(addr162);
                                 }
                                 §§goto(addr212);
                              }
                           }
                        }
                        while(true)
                        {
                           §§push(this.§'!!§);
                           loop10:
                           while(true)
                           {
                              §§push(-§ !g§.screenHeight);
                              if(_loc2_)
                              {
                                 §§push(§§pop() * §9q§.§+w§);
                              }
                              addr148:
                              while(§§pop() >= §§pop())
                              {
                                 continue loop10;
                              }
                              §§goto(addr149);
                           }
                           §§goto(addr202);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr136);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §8!A§.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.§?!J§);
            while(true)
            {
               §8!A§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§4!E§);
            }
            addr131:
         }
         loop1:
         do
         {
            §8!A§.stage.removeEventListener(MouseEvent.MOUSE_UP,this.§9v§);
            loop2:
            while(true)
            {
               §8!A§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
               do
               {
                  §8!A§.stage.removeEventListener(Event.MOUSE_LEAVE,this.§]!Y§);
                  loop4:
                  do
                  {
                     (§8!A§.getItemByName("Container_Credits") as § ",§).visible = false;
                     for(; _loc1_; super.deActivate(),if(_loc1_ || _loc1_)
                     {
                        continue loop4;
                     })
                     {
                        if(_loc1_)
                        {
                           continue;
                        }
                        §§goto(addr131);
                     }
                     continue loop2;
                  }
                  while(_loc2_);
                  
               }
               while(_loc2_ && _loc2_);
               
               continue loop1;
            }
         }
         while(_loc2_ && this);
         
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
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§+!#§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = param2;
         if(_loc5_ || param1)
         {
            if("CREDITS_CLOSE_BUTTON" !== _loc4_)
            {
               if("FULLSCREEN_BUTTON" === _loc4_)
               {
                  §§goto(addr75);
               }
               else
               {
                  §§push(2);
               }
               addr93:
               switch(§§pop())
               {
                  case 0:
                     §8!^§(§0!q§.STATE_NAME);
                     if(_loc5_ || param1)
                     {
                        break;
                     }
                     addr51:
                     break;
                  case 1:
                     § !g§.§;!'§.§%!N§();
                     if(_loc5_ || param2)
                     {
                        §§goto(addr51);
                     }
               }
               return;
            }
            if(!_loc6_)
            {
               addr68:
               §§push(0);
               if(!_loc5_)
               {
                  addr88:
               }
            }
            else
            {
               addr75:
               §§push(1);
               if(_loc5_)
               {
                  §§goto(addr88);
               }
            }
            §§goto(addr93);
            §§goto(addr75);
         }
         §§goto(addr68);
      }
   }
}
