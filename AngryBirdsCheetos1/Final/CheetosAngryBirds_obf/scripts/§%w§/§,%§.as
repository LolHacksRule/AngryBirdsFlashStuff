package §%w§
{
   import § !G§.§ #§;
   import §%!,§.§26§;
   import §,j§.§1-§;
   import §-H§.§&c§;
   import §0F§.§'j§;
   import §0F§.§0p§;
   import §1§.§'n§;
   import §?m§.§7?§;
   import §`C§.§9!'§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class §,%§ extends §&c§
   {
      
      public static const §9!P§:String = "CreditsState";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §9!P§ = "CreditsState";
         }
      }
      
      private var §6-§:§26§ = null;
      
      private var §'4§:Boolean;
      
      private var §`!P§:Number;
      
      private var §1!N§:Number;
      
      private var §"0§:Number;
      
      private var §>a§:Number;
      
      private var §,A§:Number;
      
      public function §,%§(param1:Boolean = false, param2:String = "CreditsState")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param1))
         {
            super(param1,param2);
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            super.init();
            do
            {
               §3t§ = new §'j§(this);
               do
               {
                  §3t§.init(§0p§.§'! §.Views.View_Credits[0]);
                  do
                  {
                     this.§6-§ = new §26§(§7?§.§4!H§,"BACKGROUND_CHEETOS_1");
                  }
                  while(!_loc1_);
                  
               }
               while(!(_loc1_ || _loc1_));
               
            }
            while(_loc2_);
            
         }
      }
      
      override public function activate() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            super.activate();
            loop0:
            while(true)
            {
               §§push(§9!'§.§7!Z§);
               if(_loc3_ || _loc1_)
               {
                  if(§§pop())
                  {
                     if(!(_loc3_ || _loc2_))
                     {
                        continue;
                     }
                     §§push(§9!'§.§7!Z§);
                  }
                  else
                  {
                     while(true)
                     {
                        §7?§.§4!H§.§'![§(true);
                        loop3:
                        while(true)
                        {
                           §7?§.§-!P§(this.§6-§);
                           addr66:
                           loop4:
                           while(true)
                           {
                              this.§6-§.init();
                              continue loop3;
                              addr39:
                              if(!(_loc3_ || _loc1_))
                              {
                                 continue;
                              }
                              if(!_loc3_)
                              {
                                 continue loop0;
                              }
                              §9!'§.§`!@§.isPaused = false;
                              if(_loc3_)
                              {
                                 addr32:
                                 if(false)
                                 {
                                    while(true)
                                    {
                                       §#x§.§`! §();
                                       addr37:
                                       while(true)
                                       {
                                          if(_loc2_)
                                          {
                                             continue loop3;
                                          }
                                          §§goto(addr39);
                                       }
                                       continue loop4;
                                       §§goto(addr32);
                                    }
                                    addr34:
                                 }
                                 var _loc1_:§1-§ = §3t§.container.getItemByName("Container_Credits") as §1-§;
                                 if(!(_loc2_ && _loc3_))
                                 {
                                    §3t§.addEventListener(MouseEvent.MOUSE_MOVE,this.§;!R§);
                                    loop8:
                                    while(true)
                                    {
                                       §3t§.addEventListener(MouseEvent.MOUSE_DOWN,this.§?d§);
                                       loop9:
                                       while(true)
                                       {
                                          §3t§.addEventListener(MouseEvent.MOUSE_UP,this.§`!§);
                                          loop10:
                                          while(true)
                                          {
                                             §3t§.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
                                             while(true)
                                             {
                                                §3t§.stage.addEventListener(Event.MOUSE_LEAVE,this.§'h§);
                                                while(!(_loc2_ && _loc3_))
                                                {
                                                   this.§>a§ = 0;
                                                   while(!_loc2_)
                                                   {
                                                      continue loop9;
                                                      if(_loc3_ || _loc2_)
                                                      {
                                                         return;
                                                      }
                                                   }
                                                   continue loop10;
                                                   addr175:
                                                   if(_loc2_ && _loc3_)
                                                   {
                                                      continue;
                                                   }
                                                   §3t§.setText(§ #§.§[!N§,"TextField_Version_Number");
                                                   addr182:
                                                   if(!_loc3_)
                                                   {
                                                      while(true)
                                                      {
                                                         if(!(_loc3_ || _loc3_))
                                                         {
                                                            continue loop8;
                                                         }
                                                         if(_loc3_)
                                                         {
                                                            if(_loc3_)
                                                            {
                                                               §§goto(addr175);
                                                            }
                                                            else
                                                            {
                                                               while(true)
                                                               {
                                                                  this.§1!N§ = 0;
                                                               }
                                                               addr211:
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            this.§,A§ = _loc1_.height + §7?§.§0h§ * §7?§.§1H§;
                                                            continue loop8;
                                                         }
                                                         §§goto(addr182);
                                                      }
                                                      continue;
                                                      addr164:
                                                   }
                                                   §§goto(addr143);
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr211);
                              }
                              §§goto(addr37);
                           }
                        }
                     }
                     addr67:
                  }
               }
               §§pop().start();
            }
         }
         §§goto(addr66);
      }
      
      private function §;!R§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            if(this.§'4§)
            {
               loop0:
               while(true)
               {
                  §§push(this.§"0§);
                  loop1:
                  while(true)
                  {
                     §§push(§§pop() - §3t§.mouseY);
                     loop2:
                     while(true)
                     {
                        §§push(0);
                        while(§§pop() <= §§pop())
                        {
                           §§push(this.§"0§);
                           if(_loc2_)
                           {
                              §§push(§§pop() - §3t§.mouseY);
                           }
                           if(!_loc2_)
                           {
                              continue loop2;
                           }
                           if(_loc3_)
                           {
                              continue loop1;
                           }
                           §§push(0);
                           if(_loc3_)
                           {
                              continue;
                           }
                           if(§§pop() < §§pop())
                           {
                              if(_loc2_ || this)
                              {
                                 if(_loc2_)
                                 {
                                    continue loop0;
                                 }
                                 addr144:
                                 addr144:
                                 this.§"0§ = §3t§.mouseY;
                              }
                              else
                              {
                                 addr96:
                                 if(!(_loc3_ && _loc2_))
                                 {
                                    this.§"0§ = §3t§.mouseY;
                                    if(_loc3_)
                                    {
                                       §§goto(addr96);
                                    }
                                    if(_loc2_ || this)
                                    {
                                       §§goto(addr24);
                                    }
                                    break;
                                 }
                              }
                           }
                           §§goto(addr24);
                        }
                        §§push(this);
                        §§push(this.§"0§);
                        if(_loc2_ || _loc3_)
                        {
                           §§push(§§pop() - §3t§.mouseY);
                        }
                        §§pop().§`!P§ = §§pop();
                        §§goto(addr144);
                     }
                  }
               }
            }
            addr24:
            return;
         }
         §§goto(addr144);
      }
      
      private function §?d§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§'4§ = true;
            do
            {
               this.§"0§ = §3t§.mouseY;
            }
            while(_loc2_);
            
         }
      }
      
      private function §`!§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§'4§ = false;
         }
      }
      
      private function §'h§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§'4§ = false;
         }
      }
      
      private function onMouseWheel(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            if(param1.delta < 0)
            {
               addr78:
               while(true)
               {
                  this.§1!N§ = 16;
                  addr81:
                  while(true)
                  {
                  }
               }
               addr78:
            }
            for(; param1.delta > 0; §§goto(addr81))
            {
               if(_loc3_ || this)
               {
                  if(_loc2_)
                  {
                     continue;
                  }
                  this.§1!N§ = -16;
               }
               if(_loc3_ || this)
               {
                  break;
               }
               §§goto(addr78);
            }
            return;
         }
         §§goto(addr78);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(super.run(param1));
         if(!(_loc3_ && _loc3_))
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc4_)
         {
            §§push(_loc2_);
            if(_loc4_ || this)
            {
               if(§§pop() == §&c§.STATE_STATUS_RUNNING)
               {
                  while(true)
                  {
                     §7?§.§75§.update(param1);
                     §§goto(addr128);
                  }
               }
            }
            §§goto(addr150);
         }
         addr128:
         loop1:
         while(true)
         {
            (§3t§.getItemByName("Container_Credits") as §1-§).y = Math.floor(-this.§>a§);
            while(true)
            {
               this.§41§(param1);
               loop3:
               while(_loc4_ || this)
               {
                  if(!(_loc4_ || param1))
                  {
                     return _loc2_;
                  }
                  addr150:
                  (§3t§.getItemByName("Container_Credits") as §1-§).setVisibility(true);
                  while(!_loc3_)
                  {
                     if(mNextState.length <= 0)
                     {
                        return §&c§.STATE_STATUS_RUNNING;
                     }
                     addr32:
                     if(!(_loc3_ && this))
                     {
                        if(_loc4_)
                        {
                           break loop1;
                        }
                        continue loop0;
                     }
                     if(!(_loc3_ && _loc3_))
                     {
                        if(!(_loc4_ || _loc3_))
                        {
                           continue loop3;
                        }
                        §§goto(addr32);
                        continue loop3;
                     }
                  }
                  continue loop1;
               }
            }
         }
         return §&c§.STATE_STATUS_COMPLETED;
      }
      
      private function §41§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            §§push(this);
            §§push(this.§>a§);
            if(_loc2_)
            {
               §§push(§§pop() + this.§`!P§);
            }
            §§pop().§>a§ = §§pop();
            while(true)
            {
               §§push(this);
               §§push(this.§>a§);
               if(!(_loc3_ && _loc3_))
               {
                  §§push(§§pop() + this.§1!N§);
               }
               §§pop().§>a§ = §§pop();
               loop1:
               while(!(_loc3_ && _loc2_))
               {
                  §§push(this.§'4§);
                  if(_loc2_)
                  {
                     §§push(!§§pop());
                  }
                  loop2:
                  while(true)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           §§pop();
                           addr235:
                           while(true)
                           {
                              §§push(Math.abs(this.§1!N§) < param1 / 15);
                           }
                        }
                        addr234:
                     }
                     while(true)
                     {
                        loop6:
                        while(true)
                        {
                           if(§§pop())
                           {
                              loop7:
                              while(true)
                              {
                                 §§push(this);
                                 §§push(this.§>a§);
                                 if(_loc2_)
                                 {
                                    §§push(param1);
                                    if(_loc2_ || _loc3_)
                                    {
                                       §§push(§§pop() / 15);
                                    }
                                    §§push(§§pop() + §§pop());
                                 }
                                 §§pop().§>a§ = §§pop();
                                 while(_loc2_)
                                 {
                                    addr150:
                                    if(_loc2_ || param1)
                                    {
                                       if(!(_loc3_ && this))
                                       {
                                          addr164:
                                          §§push(this);
                                          §§push(-§#x§.§0h§);
                                          if(!(_loc3_ && _loc2_))
                                          {
                                             §§push(§§pop() * §7?§.§1H§);
                                          }
                                          §§pop().§>a§ = §§pop();
                                          loop15:
                                          while(true)
                                          {
                                             §§push(this.§'4§);
                                             if(!_loc2_)
                                             {
                                                continue loop6;
                                             }
                                             if(!(_loc3_ && this))
                                             {
                                                if(!_loc3_)
                                                {
                                                   if(§§pop())
                                                   {
                                                      break;
                                                   }
                                                   if(_loc2_ || this)
                                                   {
                                                      if(_loc2_ || param1)
                                                      {
                                                         §§push(this);
                                                         §§push(this.§`!P§);
                                                         if(_loc2_ || param1)
                                                         {
                                                            §§push(§§pop() * 0.9);
                                                         }
                                                         §§pop().§`!P§ = §§pop();
                                                      }
                                                      else
                                                      {
                                                         loop16:
                                                         while(true)
                                                         {
                                                            if(!(_loc3_ && _loc2_))
                                                            {
                                                               §§goto(addr150);
                                                            }
                                                            else
                                                            {
                                                               addr190:
                                                               while(true)
                                                               {
                                                                  this.§>a§ = this.§,A§;
                                                                  addr194:
                                                                  while(true)
                                                                  {
                                                                     continue loop15;
                                                                  }
                                                                  continue loop16;
                                                               }
                                                               addr190:
                                                            }
                                                         }
                                                         §§goto(addr164);
                                                         addr143:
                                                      }
                                                   }
                                                   while(!_loc3_)
                                                   {
                                                      §§push(this);
                                                      §§push(this.§1!N§);
                                                      if(_loc2_ || param1)
                                                      {
                                                         §§push(§§pop() * 0.9);
                                                      }
                                                      §§pop().§1!N§ = §§pop();
                                                      if(!(_loc2_ || _loc2_))
                                                      {
                                                         continue;
                                                      }
                                                      if(!(_loc3_ && this))
                                                      {
                                                         if(_loc2_)
                                                         {
                                                            break loop15;
                                                         }
                                                         §§goto(addr235);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr194);
                                                      }
                                                   }
                                                   continue;
                                                }
                                                continue loop2;
                                             }
                                             §§goto(addr234);
                                          }
                                          return;
                                          addr59:
                                       }
                                       continue loop7;
                                    }
                                 }
                                 continue loop1;
                              }
                           }
                           while(true)
                           {
                              §§push(this.§>a§);
                              loop10:
                              while(true)
                              {
                                 §§push(-§#x§.§0h§);
                                 addr186:
                                 while(true)
                                 {
                                    §§push(§§pop() * §7?§.§1H§);
                                    addr189:
                                    while(§§pop() >= §§pop())
                                    {
                                       continue loop10;
                                    }
                                    §§goto(addr190);
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr190);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §3t§.removeEventListener(MouseEvent.MOUSE_MOVE,this.§;!R§);
            loop0:
            while(true)
            {
               §3t§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§?d§);
               while(true)
               {
                  §3t§.removeEventListener(MouseEvent.MOUSE_UP,this.§`!§);
                  do
                  {
                     §3t§.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
                     continue loop0;
                  }
                  while(_loc1_ && this);
                  
                  addr78:
                  while(_loc2_ || this)
                  {
                     (§3t§.getItemByName("Container_Credits") as §1-§).setVisibility(false);
                     do
                     {
                        super.deActivate();
                     }
                     while(_loc1_);
                     
                     if(_loc1_)
                     {
                        continue;
                     }
                     if(!(_loc2_ || _loc2_))
                     {
                        continue loop0;
                     }
                     §§goto(addr43);
                  }
               }
            }
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
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§'n§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = param2;
         if(!_loc6_)
         {
            if("CREDITS_CLOSE_BUTTON" !== _loc4_)
            {
               if("PRIVACY_BUTTON" === _loc4_)
               {
                  if(_loc5_)
                  {
                     §§push(1);
                     if(!_loc6_)
                     {
                        §§goto(addr117);
                     }
                     §§goto(addr153);
                  }
                  else
                  {
                     §§goto(addr123);
                  }
               }
               else
               {
                  if("EULA_BUTTON" === _loc4_)
                  {
                     if(_loc5_)
                     {
                        addr123:
                        §§push(2);
                        if(_loc6_)
                        {
                        }
                        §§goto(addr153);
                     }
                     else
                     {
                        §§goto(addr130);
                     }
                  }
                  else if("FAQ_BUTTON" === _loc4_)
                  {
                     §§goto(addr130);
                  }
                  else
                  {
                     §§push(4);
                  }
                  §§goto(addr130);
               }
               addr153:
               switch(§§pop())
               {
                  case 0:
                     mNextState = §`L§.§9!P§;
                     break;
                     addr87:
                  case 1:
                     navigateToURL(new URLRequest("http://www.rovio.com/Privacy"),"_blank");
                     addr49:
                     break;
                     addr80:
                  case 2:
                     navigateToURL(new URLRequest("http://www.rovio.com/eula/"),"_blank");
                     addr58:
                     if(!_loc6_)
                     {
                        break;
                     }
                     §§goto(addr80);
                     break;
                  case 3:
                     navigateToURL(new URLRequest("http://www.rovio.com/en/our-work/games/view/1/angry-birds/faq/"),"_blank");
                     if(!(_loc6_ && this))
                     {
                        if(_loc5_ || param3)
                        {
                           if(!(_loc6_ && param3))
                           {
                              if(true)
                              {
                                 break;
                              }
                           }
                           else
                           {
                              §§goto(addr87);
                           }
                        }
                        else
                        {
                           §§goto(addr58);
                        }
                        §§goto(addr49);
                     }
               }
               return;
            }
            if(!_loc6_)
            {
               addr100:
               §§push(0);
               if(!(_loc5_ || param2))
               {
                  addr117:
               }
            }
            else
            {
               addr130:
               §§push(3);
               if(!(_loc6_ && param2))
               {
                  addr148:
               }
            }
            §§goto(addr153);
            §§goto(addr130);
         }
         §§goto(addr100);
      }
   }
}
