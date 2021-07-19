package §;!§
{
   import §,L§.§6!W§;
   import §0"$§.§"!a§;
   import §7!§.§#"0§;
   import §7!§.§2W§;
   import §8!K§.§5!Y§;
   import §;0§.§6h§;
   import §^!3§.§9R§;
   import com.angrybirds.§&!"§;
   import each.§!!'§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §&4§ extends §;" §
   {
      
      public static const §-!q§:String = "CreditsState";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §-!q§ = "CreditsState";
         }
      }
      
      protected var §#!7§:§9R§ = null;
      
      private var §@!2§:Boolean;
      
      private var §@a§:Number;
      
      private var §4!0§:Number;
      
      private var §,!M§:Number;
      
      private var §6i§:Number;
      
      private var §>!=§:Number;
      
      public function §&4§(param1:§5!Y§, param2:§6h§, param3:Boolean = false, param4:String = "CreditsState")
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || this)
         {
            super(param1,param3,param4,param2);
         }
      }
      
      override protected function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super.init();
            loop0:
            do
            {
               §?P§ = new §2W§(this);
               while(true)
               {
                  §?P§.init(§#"0§.§+#§.Views.View_Credits[0]);
                  while(_loc1_ || _loc2_)
                  {
                     this.§#!7§ = new §9R§(§&!"§.§1!D§,null);
                     if(!(_loc2_ && _loc2_))
                     {
                        continue loop0;
                     }
                  }
               }
            }
            while(!_loc1_);
            
         }
      }
      
      override public function activate(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            super.activate(param1);
         }
         loop0:
         while(true)
         {
            this.§@!2§ = false;
            loop1:
            while(true)
            {
               this.§>!=§ = (§?P§.getItemByName("Container_Credits") as §"!a§).height + §&!"§.§'+§ * §&!"§.§3H§;
               while(true)
               {
                  §§push(this);
                  §§push(this.§>!=§);
                  if(_loc3_ || _loc2_)
                  {
                     §§push(-§§pop());
                  }
                  §§pop().§6i§ = §§pop();
                  loop3:
                  while(true)
                  {
                     this.activateLevelEngine();
                     addr155:
                     while(true)
                     {
                        §?P§.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§&!u§);
                        continue loop3;
                     }
                  }
                  if(!(_loc3_ || _loc3_))
                  {
                     continue;
                  }
                  §?P§.stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§>!M§);
                  while(true)
                  {
                     §?P§.stage.addEventListener(MouseEvent.MOUSE_UP,this.§84§);
                     §§goto(addr112);
                     addr75:
                     loop9:
                     while(!(_loc2_ && _loc2_))
                     {
                        this.§@a§ = 0;
                        loop10:
                        while(true)
                        {
                           if(!_loc3_)
                           {
                              continue loop9;
                           }
                           if(_loc2_ && _loc3_)
                           {
                              continue loop1;
                           }
                           if(_loc3_)
                           {
                              if(_loc2_)
                              {
                                 break;
                              }
                              this.§4!0§ = 0;
                              while(_loc3_)
                              {
                                 this.setVersion();
                                 if(_loc3_ || _loc3_)
                                 {
                                    if(!_loc2_)
                                    {
                                       return;
                                    }
                                    continue loop10;
                                 }
                              }
                              continue loop0;
                           }
                           §§goto(addr112);
                        }
                        §§goto(addr155);
                     }
                  }
               }
            }
         }
      }
      
      protected function activateLevelEngine() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §&!"§.§1!D§.§"!Q§(true);
            while(true)
            {
               §&!"§.resume();
            }
            addr85:
         }
         loop1:
         while(true)
         {
            §&!"§.setController(this.§#!7§);
            loop2:
            do
            {
               this.§#!7§.init();
               for(; _loc1_; §6!!§.singleton.§"!<§(),if(!(_loc2_ && _loc1_))
               {
                  continue loop2;
               })
               {
                  if(!_loc2_)
                  {
                     continue;
                  }
                  §§goto(addr85);
               }
               continue loop1;
            }
            while(!(_loc1_ || _loc2_));
            
            return;
         }
      }
      
      protected function setVersion() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(§!!'§.§^c§);
         if(_loc3_)
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
         if(_loc3_ || this)
         {
            §§push(_loc1_);
            if(_loc3_ || _loc2_)
            {
               §§push(§§pop().slice(0,_loc1_.search("Server:")));
            }
            _loc1_ = §§pop();
            do
            {
               §?P§.setText(_loc1_,"TextField_Version_Number");
               do
               {
                  §?P§.setText(_loc2_,"TextField_Version_Number_Server");
               }
               while(_loc4_);
               
            }
            while(!_loc3_);
            
         }
      }
      
      private function §6;§(param1:MouseEvent) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(§?P§.stage.mouseX < §?P§.stage.width - 180)
            {
               if(!(_loc2_ && this))
               {
                  addr45:
                  §§push(true);
                  if(_loc3_ || _loc2_)
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
      
      private function §&!u§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.§@!2§);
            if(!(_loc2_ && _loc3_))
            {
               if(§§pop())
               {
                  if(!(_loc2_ && _loc2_))
                  {
                     addr187:
                     if(this.§6;§(param1))
                     {
                        loop0:
                        while(true)
                        {
                           §§push(this.§,!M§);
                           loop1:
                           while(true)
                           {
                              §§push(§§pop() - §?P§.stage.mouseY);
                              loop2:
                              while(true)
                              {
                                 §§push(0);
                                 while(§§pop() <= §§pop())
                                 {
                                    §§push(this.§,!M§);
                                    if(!_loc2_)
                                    {
                                       if(!_loc3_)
                                       {
                                          continue loop1;
                                       }
                                       §§push(§§pop() - §?P§.stage.mouseY);
                                    }
                                    if(_loc2_ && param1)
                                    {
                                       continue loop2;
                                    }
                                    §§push(0);
                                    if(!_loc3_)
                                    {
                                       continue;
                                    }
                                    if(§§pop() < §§pop())
                                    {
                                       addr69:
                                       if(_loc3_ || _loc2_)
                                       {
                                          §§push(this);
                                          §§push(this.§,!M§);
                                          if(_loc3_)
                                          {
                                             §§push(§§pop() - §?P§.stage.mouseY);
                                          }
                                          §§pop().§@a§ = §§pop();
                                          addr86:
                                          if(!(_loc2_ && this))
                                          {
                                             if(!(_loc2_ && _loc2_))
                                             {
                                                if(_loc3_)
                                                {
                                                   this.§,!M§ = §?P§.stage.mouseY;
                                                   if(_loc3_ || _loc2_)
                                                   {
                                                      if(_loc2_ && _loc3_)
                                                      {
                                                         §§goto(addr69);
                                                      }
                                                      §§goto(addr20);
                                                   }
                                                   §§goto(addr86);
                                                }
                                                return;
                                                addr191:
                                             }
                                             continue loop0;
                                          }
                                          while(true)
                                          {
                                             this.§,!M§ = §?P§.stage.mouseY;
                                             addr143:
                                             §§push(this);
                                             §§push(this.§,!M§);
                                             if(_loc3_)
                                             {
                                                §§push(§§pop() - §?P§.stage.mouseY);
                                             }
                                             §§pop().§@a§ = §§pop();
                                          }
                                          addr20:
                                          return;
                                          addr126:
                                          addr153:
                                       }
                                       if(!(_loc3_ || this))
                                       {
                                          break;
                                       }
                                       §§goto(addr126);
                                    }
                                    §§goto(addr20);
                                 }
                                 if(_loc3_ || this)
                                 {
                                    §§goto(addr143);
                                 }
                              }
                           }
                        }
                     }
                     this.§@!2§ = false;
                  }
                  §§goto(addr191);
               }
               §§goto(addr20);
            }
            §§goto(addr187);
         }
         §§goto(addr153);
      }
      
      private function §>!M§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.§6;§(param1));
            if(_loc2_)
            {
               if(§§pop())
               {
                  if(_loc2_ || this)
                  {
                     addr67:
                     if(!§&!"§.isPaused)
                     {
                        if(!_loc2_)
                        {
                        }
                        do
                        {
                           this.§,!M§ = §?P§.stage.mouseY;
                        }
                        while(!_loc2_);
                        
                        addr19:
                        return;
                        addr73:
                     }
                     §§goto(addr19);
                  }
                  this.§@!2§ = true;
                  §§goto(addr73);
               }
               §§goto(addr19);
            }
            §§goto(addr67);
         }
         §§goto(addr19);
      }
      
      private function §84§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§@!2§ = false;
         }
      }
      
      private function §`""§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§@!2§ = false;
         }
      }
      
      private function onMouseWheel(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(this.§6;§(param1))
            {
               if(_loc3_ || _loc3_)
               {
                  if(param1.delta < 0)
                  {
                     if(_loc2_ && this)
                     {
                     }
                     addr20:
                     return;
                     addr94:
                  }
                  else
                  {
                     if(param1.delta > 0)
                     {
                        if(_loc3_ || param1)
                        {
                           if(_loc3_ || _loc3_)
                           {
                              this.§4!0§ = -16;
                           }
                           else
                           {
                              §§goto(addr94);
                           }
                        }
                     }
                     §§goto(addr20);
                  }
                  §§goto(addr20);
               }
               this.§4!0§ = 16;
            }
         }
         §§goto(addr20);
      }
      
      override protected function update(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            super.update(param1);
         }
         loop0:
         for(; !§&!"§.isPaused; if(!(_loc3_ || param1))
         {
            continue;
         },this.§ 6§(),§§goto(addr81))
         {
            loop1:
            while(true)
            {
               §&!"§.controller.update(param1);
               loop2:
               while(true)
               {
                  (§?P§.getItemByName("Container_Credits") as §"!a§).setVisibility(true);
                  while(true)
                  {
                     if(_loc3_ || this)
                     {
                        continue loop0;
                     }
                     continue loop2;
                     addr70:
                     if(_loc3_ || _loc2_)
                     {
                        this.§2M§(param1);
                        addr77:
                        if(!(_loc2_ && this))
                        {
                           break loop0;
                        }
                        loop5:
                        while(true)
                        {
                           if(!(_loc3_ || _loc3_))
                           {
                              while(_loc3_)
                              {
                                 (§?P§.getItemByName("Container_Credits") as §"!a§).y = Math.floor(-this.§6i§);
                                 continue loop5;
                              }
                              continue loop1;
                              addr81:
                           }
                           §§goto(addr70);
                        }
                     }
                  }
                  continue loop0;
               }
            }
         }
      }
      
      protected function § 6§() : void
      {
      }
      
      private function §2M§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this);
            §§push(this.§6i§);
            if(_loc3_)
            {
               §§push(§§pop() + this.§@a§);
            }
            §§pop().§6i§ = §§pop();
            loop0:
            while(true)
            {
               §§push(this);
               §§push(this.§6i§);
               if(_loc3_)
               {
                  §§push(§§pop() + this.§4!0§);
               }
               §§pop().§6i§ = §§pop();
               while(true)
               {
                  §§push(this.§@!2§);
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
                              addr233:
                              while(true)
                              {
                                 §§push(Math.abs(this.§4!0§) < param1 / 15);
                                 addr197:
                                 while(!_loc2_)
                                 {
                                    if(_loc2_)
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
                              loop8:
                              while(true)
                              {
                                 §§push(this);
                                 §§push(this.§6i§);
                                 if(!(_loc2_ && this))
                                 {
                                    §§push(param1);
                                    if(!(_loc2_ && _loc3_))
                                    {
                                       §§push(§§pop() / 15);
                                    }
                                    §§push(§§pop() + §§pop());
                                 }
                                 §§pop().§6i§ = §§pop();
                                 addr225:
                                 addr172:
                                 while(true)
                                 {
                                 }
                                 loop17:
                                 while(true)
                                 {
                                    if(_loc2_ && this)
                                    {
                                       continue loop8;
                                    }
                                    this.§6i§ = this.§>!=§;
                                    while(true)
                                    {
                                       if(_loc3_)
                                       {
                                          if(_loc3_)
                                          {
                                             addr55:
                                             while(true)
                                             {
                                                §§push(this.§@!2§);
                                                if(_loc3_)
                                                {
                                                   continue loop2;
                                                }
                                                §§goto(addr197);
                                             }
                                             §§goto(addr225);
                                             addr55:
                                          }
                                          §§goto(addr233);
                                       }
                                       else
                                       {
                                          §§goto(addr225);
                                       }
                                       while(true)
                                       {
                                          §§push(this.§6i§);
                                          loop11:
                                          while(true)
                                          {
                                             §§push(-§6!!§.§=!?§);
                                             if(_loc3_)
                                             {
                                                §§push(§§pop() * §&!"§.§3H§);
                                             }
                                             addr171:
                                             while(true)
                                             {
                                                if(§§pop() < §§pop())
                                                {
                                                   continue loop17;
                                                }
                                                continue loop11;
                                             }
                                             continue loop17;
                                          }
                                          §§goto(addr225);
                                       }
                                    }
                                 }
                              }
                           }
                           §§goto(addr160);
                        }
                     }
                  }
                  while(!(_loc2_ && param1))
                  {
                     §§push(this);
                     §§push(this.§@a§);
                     if(!(_loc2_ && _loc2_))
                     {
                        §§push(§§pop() * 0.9);
                     }
                     §§pop().§@a§ = §§pop();
                     while(true)
                     {
                        if(_loc2_ && this)
                        {
                           continue loop0;
                        }
                        if(_loc3_)
                        {
                           if(_loc3_ || param1)
                           {
                              continue;
                           }
                           §§goto(addr172);
                        }
                        §§goto(addr183);
                     }
                     while(true)
                     {
                        §§goto(addr55);
                     }
                     if(_loc2_ && param1)
                     {
                        continue;
                     }
                     if(!(_loc3_ || param1))
                     {
                        §§goto(addr159);
                     }
                     §§goto(addr20);
                  }
               }
            }
         }
         while(true)
         {
            §§push(this);
            §§push(-§6!!§.§=!?§);
            if(_loc3_ || _loc3_)
            {
               §§push(§§pop() * §&!"§.§3H§);
            }
            §§pop().§6i§ = §§pop();
            §§goto(addr159);
         }
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §?P§.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.§&!u§);
            loop0:
            while(true)
            {
               §?P§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§>!M§);
               while(true)
               {
                  §?P§.stage.removeEventListener(MouseEvent.MOUSE_UP,this.§84§);
                  while(_loc2_ || _loc2_)
                  {
                     §?P§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
                     while(_loc2_)
                     {
                        §?P§.stage.removeEventListener(Event.MOUSE_LEAVE,this.§`""§);
                        continue loop0;
                        addr50:
                        if(_loc2_ || _loc2_)
                        {
                           loop6:
                           while(true)
                           {
                              super.deActivate();
                              if(_loc2_ || this)
                              {
                                 break;
                              }
                              addr43:
                              while(_loc2_ || _loc1_)
                              {
                                 §§goto(addr50);
                                 continue loop6;
                              }
                              continue loop0;
                           }
                           return;
                           addr57:
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr57);
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            super.cleanup();
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§6!W§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = param2;
         if(!(_loc5_ && param2))
         {
            if("CREDITS_CLOSE_BUTTON" !== _loc4_)
            {
               if("FULLSCREEN_BUTTON" === _loc4_)
               {
                  §§goto(addr81);
               }
               else
               {
                  §§push(2);
               }
               addr99:
               switch(§§pop())
               {
                  case 0:
                     §<f§(§8^§.§-!q§);
                     if(_loc6_ || param3)
                     {
                        break;
                     }
                     break;
                  case 1:
                     §6!!§.singleton.§%!O§();
                     if(!_loc5_)
                     {
                        break;
                     }
               }
               return;
            }
            if(!(_loc5_ && param3))
            {
               §§push(0);
               if(!(_loc6_ || this))
               {
                  addr94:
               }
            }
            else
            {
               addr81:
               §§push(1);
               if(!_loc5_)
               {
                  §§goto(addr94);
               }
            }
            §§goto(addr99);
         }
         §§goto(addr81);
      }
   }
}
