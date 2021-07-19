package §<"c§
{
   import §+!c§.§9"1§;
   import §+D§.§ #^§;
   import §5t§.Log;
   import §7!$§.§&$§;
   import §7!$§.§]#[§;
   import §;"Y§.§&#X§;
   import §="2§.§?!r§;
   import §>@§.§5"H§;
   import §?m§.§+"2§;
   import §[#+§.§<k§;
   import com.angrybirds.§,!q§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.PerspectiveProjection;
   import flash.geom.Point;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.utils.Dictionary;
   
   public class §0!A§ extends §]"_§
   {
      
      public static const §^!7§:String = "CreditsState";
      
      private static const § #Y§:int = -350;
      
      private static const §81§:int = 400;
      
      private static const §%g§:int = 180;
      
      private static const §]"x§:String = "Container_Part";
      
      private static const §!<§:int = 50;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §^!7§ = "CreditsState";
            while(true)
            {
               § #Y§ = -350;
               loop1:
               while(!(_loc1_ && _loc1_))
               {
                  §81§ = 400;
                  while(true)
                  {
                     §%g§ = 180;
                     while(_loc2_)
                     {
                        §]"x§ = "Container_Part";
                        do
                        {
                           §!<§ = 50;
                        }
                        while(!(_loc2_ || _loc2_));
                        
                        if(_loc2_ || _loc2_)
                        {
                           if(!_loc1_)
                           {
                              return;
                              addr54:
                           }
                           continue loop1;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr54);
      }
      
      private var §&!8§:Boolean;
      
      private var §<u§:Number;
      
      private var §^#L§:Number;
      
      private var §@"t§:Number;
      
      private var §[s§:Number;
      
      private var §&Y§:Number;
      
      private var §"!§:§9"1§;
      
      private var §@!0§:§ #^§;
      
      private var §]#>§:§ #^§;
      
      private var §6#6§:§ #^§;
      
      private var §++§:MovieClip;
      
      public function §0!A§(param1:§+"2§, param2:§5"H§, param3:Boolean = false, param4:String = "CreditsState")
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || param2)
         {
            super(param1,param3,param4,param2);
         }
      }
      
      override protected function init() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            §@;§ = new §]#[§(this);
            loop0:
            while(true)
            {
               §@;§.init(§&$§.§@8§.Views.View_Credits[0]);
               addr110:
               while(true)
               {
                  this.§@!0§ = § #^§(§@;§.getItemByName("Container_Credits"));
                  continue loop0;
               }
            }
         }
         §§goto(addr84);
      }
      
      private function §]!V§() : void
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         var _loc2_:DisplayObject = null;
         var _loc5_:* = 0;
         var _loc1_:MovieClip = this.§@!0§.mClip;
         var _loc3_:* = int(int.MAX_VALUE);
         var _loc4_:int = 0;
         var _loc6_:Dictionary = new Dictionary();
         var _loc7_:* = 0;
         loop0:
         while(true)
         {
            §§push(_loc7_);
            if(_loc12_ || _loc1_)
            {
               if(§§pop() >= _loc1_.numChildren)
               {
                  break;
               }
               _loc2_ = _loc1_.getChildAt(_loc7_);
               if(!(_loc11_ && _loc2_))
               {
                  if(_loc2_.name.indexOf(§]"x§) == 0)
                  {
                     loop1:
                     while(true)
                     {
                        _loc6_[_loc2_.name] = _loc2_;
                        loop2:
                        while(true)
                        {
                           §§push(int(parseInt(_loc2_.name.substr(§]"x§.length))));
                           loop3:
                           while(true)
                           {
                              §§push(§§pop());
                              if(_loc12_ || _loc2_)
                              {
                                 _loc5_ = §§pop();
                                 while(true)
                                 {
                                    §§push(_loc3_);
                                 }
                                 addr135:
                              }
                              loop5:
                              while(true)
                              {
                                 if(§§pop() < §§pop())
                                 {
                                    while(true)
                                    {
                                       §§push(_loc5_);
                                       addr138:
                                       while(true)
                                       {
                                          §§push(int(§§pop()));
                                          addr139:
                                          while(true)
                                          {
                                             _loc3_ = §§pop();
                                             addr140:
                                             while(true)
                                             {
                                             }
                                          }
                                       }
                                    }
                                    addr137:
                                 }
                                 addr74:
                                 while(true)
                                 {
                                    §§push(_loc5_);
                                    if(_loc12_ || _loc1_)
                                    {
                                       if(_loc12_ || _loc2_)
                                       {
                                          if(!_loc11_)
                                          {
                                             §§push(_loc4_);
                                             if(_loc11_)
                                             {
                                                continue loop5;
                                             }
                                             if(§§pop() > §§pop())
                                             {
                                                if(!_loc11_)
                                                {
                                                   if(_loc11_)
                                                   {
                                                      continue loop2;
                                                   }
                                                   §§push(_loc5_);
                                                   if(!_loc11_)
                                                   {
                                                      addr103:
                                                      §§push(int(§§pop()));
                                                   }
                                                   if(!_loc11_)
                                                   {
                                                      continue loop3;
                                                   }
                                                   §§goto(addr139);
                                                }
                                                else
                                                {
                                                   loop11:
                                                   while(_loc12_)
                                                   {
                                                      while(true)
                                                      {
                                                         addr54:
                                                         while(true)
                                                         {
                                                            _loc7_++;
                                                            if(_loc11_)
                                                            {
                                                               continue loop11;
                                                            }
                                                            if(_loc12_ || _loc3_)
                                                            {
                                                               continue loop1;
                                                            }
                                                            §§goto(addr137);
                                                         }
                                                         continue loop0;
                                                      }
                                                   }
                                                   addr114:
                                                }
                                                §§goto(addr140);
                                             }
                                             §§goto(addr54);
                                          }
                                          else
                                          {
                                             §§goto(addr135);
                                          }
                                       }
                                       §§goto(addr138);
                                    }
                                    §§goto(addr103);
                                 }
                                 continue loop3;
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr54);
               }
               §§goto(addr116);
            }
            break;
         }
         var _loc8_:* = §§pop();
         _loc2_ = DisplayObject(_loc6_[§]"x§ + _loc3_]);
         if(_loc12_)
         {
            _loc2_.y = 0;
            if(!_loc11_)
            {
               addr192:
               _loc2_.x = _loc8_;
            }
            var _loc9_:int = _loc7_ = int(_loc2_.y + _loc2_.height + §!<§);
            if(!_loc11_)
            {
               §§push(_loc3_);
               if(_loc12_)
               {
                  §§push(int(§§pop()));
                  if(!_loc11_)
                  {
                     _loc7_ = §§pop();
                     if(!(_loc11_ && _loc1_))
                     {
                        addr306:
                        while(true)
                        {
                           §§push(_loc7_);
                        }
                        addr306:
                     }
                     §§goto(addr306);
                  }
               }
               while(true)
               {
                  §§push(_loc4_);
                  while(true)
                  {
                     if(§§pop() <= §§pop())
                     {
                        §§push(_loc7_);
                        if(_loc11_)
                        {
                           break;
                        }
                        §§push(_loc3_);
                        if(!_loc12_)
                        {
                           continue;
                        }
                        if(§§pop() != §§pop())
                        {
                           if(!_loc11_)
                           {
                              _loc2_ = DisplayObject(_loc6_[§]"x§ + _loc7_]);
                              if(_loc12_)
                              {
                                 if(_loc2_)
                                 {
                                    loop16:
                                    while(true)
                                    {
                                       _loc2_.y = _loc9_;
                                       loop17:
                                       while(true)
                                       {
                                          addr268:
                                          while(true)
                                          {
                                             _loc2_.x = _loc8_;
                                             addr272:
                                             while(true)
                                             {
                                                if(_loc12_)
                                                {
                                                   continue loop16;
                                                }
                                                continue loop17;
                                             }
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr288);
                              }
                              §§goto(addr266);
                           }
                           §§goto(addr309);
                        }
                        §§goto(addr288);
                     }
                     §§goto(addr309);
                  }
               }
            }
            §§goto(addr306);
         }
         §§goto(addr192);
      }
      
      override public function activate(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            super.activate(param1);
            while(true)
            {
               this.§&Y§ = this.§@!0§.height + §,!q§.§[">§();
               loop1:
               while(true)
               {
                  §§push(this);
                  §§push(-§4#;§.screenHeight);
                  if(!(_loc2_ && this))
                  {
                     §§push(§§pop() * §,!q§.§!"N§);
                  }
                  §§pop().§[s§ = §§pop();
                  loop2:
                  while(true)
                  {
                     §§push(this.§@!0§);
                     while(true)
                     {
                        §§pop().y = Math.floor(-this.§[s§);
                        while(true)
                        {
                           this.playThemeMusic();
                           loop5:
                           while(true)
                           {
                              §@;§.movieClip.addEventListener(MouseEvent.MOUSE_MOVE,this.§[#8§);
                              while(_loc3_)
                              {
                                 §@;§.movieClip.addEventListener(MouseEvent.MOUSE_DOWN,this.§[!&§);
                                 while(true)
                                 {
                                    §@;§.stage.addEventListener(MouseEvent.MOUSE_UP,this.§@#H§);
                                    addr134:
                                    while(_loc3_)
                                    {
                                    }
                                    continue loop2;
                                 }
                                 while(_loc3_ || this)
                                 {
                                    this.§^#L§ = 0;
                                    continue loop5;
                                 }
                              }
                              continue loop1;
                           }
                        }
                        while(true)
                        {
                           §§push(this.§@!0§);
                           if(!(_loc3_ || _loc2_))
                           {
                              break;
                           }
                           §§pop().setVisibility(true);
                           if(!(_loc3_ || this))
                           {
                              continue;
                           }
                           §§goto(addr48);
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            §@;§.movieClip.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
            §§goto(addr123);
         }
         §§goto(addr65);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §?!r§.§2R§("Channel_Theme").§0"#§();
            while(true)
            {
               §@;§.movieClip.removeEventListener(MouseEvent.MOUSE_MOVE,this.§[#8§);
            }
            addr126:
         }
         loop1:
         while(true)
         {
            §@;§.movieClip.removeEventListener(MouseEvent.MOUSE_DOWN,this.§[!&§);
            while(!_loc2_)
            {
               §@;§.stage.removeEventListener(MouseEvent.MOUSE_UP,this.§@#H§);
               continue loop1;
               loop6:
               while(_loc1_ || _loc1_)
               {
                  super.deActivate();
                  if(!_loc1_)
                  {
                     continue;
                  }
                  if(!_loc2_)
                  {
                     if(!_loc2_)
                     {
                        return;
                     }
                     continue loop1;
                  }
                  addr75:
                  while(!_loc2_)
                  {
                     this.§@!0§.visible = false;
                     continue loop6;
                  }
                  while(true)
                  {
                     §@;§.movieClip.removeEventListener(Event.MOUSE_LEAVE,this.§[u§);
                     §§goto(addr64);
                  }
                  addr64:
               }
            }
            §§goto(addr126);
         }
      }
      
      protected function §1-§(param1:String, param2:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param2))
         {
            §@;§.setText(param1,"TextField_Version_Number");
         }
         do
         {
            §@;§.setText("","TextField_Version_Number_Server");
         }
         while(_loc4_ && param1);
         
      }
      
      protected function playThemeMusic() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(§?!r§.§2R§("Channel_Theme"));
            loop0:
            while(true)
            {
               §§push(§§pop().§<"M§());
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§push(§?!r§.§2R§("Channel_Theme"));
                        addr129:
                        while(true)
                        {
                           §§pop().§0"#§();
                           addr130:
                           while(true)
                           {
                           }
                        }
                     }
                     addr126:
                  }
                  while(true)
                  {
                     §§push(§?!r§.§2R§("Channel_Theme"));
                     loop6:
                     for(; _loc1_; while(true)
                     {
                        §§push(§?!r§.§2R§("Channel_Theme"));
                        if(_loc2_)
                        {
                           continue loop6;
                        }
                        if(_loc1_)
                        {
                           §§push(§§pop().§<"M§());
                           if(_loc1_ || _loc2_)
                           {
                              if(!(_loc2_ && _loc2_))
                              {
                                 §§goto(addr46);
                              }
                              §§goto(addr102);
                           }
                           §§goto(addr55);
                        }
                        else
                        {
                           §§goto(addr129);
                        }
                        §§goto(addr68);
                     },addr19:,return)
                     {
                        §§push(§§pop() == null);
                        while(true)
                        {
                           if(!§§pop())
                           {
                              while(_loc1_ || _loc1_)
                              {
                                 §§pop();
                                 continue loop6;
                              }
                              continue loop1;
                              addr102:
                           }
                           addr54:
                           addr46:
                           while(true)
                           {
                              addr55:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    if(_loc1_)
                                    {
                                       addr68:
                                       if(_loc2_ && _loc2_)
                                       {
                                          continue loop6;
                                       }
                                       if(_loc1_ || _loc2_)
                                       {
                                          while(true)
                                          {
                                             §?!r§.§"#_§(§<k§.§5"<§,"Channel_Theme",int.MAX_VALUE);
                                             addr89:
                                             while(true)
                                             {
                                                if(_loc1_)
                                                {
                                                   §§goto(addr19);
                                                }
                                             }
                                          }
                                          addr82:
                                       }
                                       else
                                       {
                                          §§goto(addr126);
                                       }
                                       §§goto(addr130);
                                    }
                                    §§goto(addr89);
                                 }
                                 §§goto(addr19);
                              }
                           }
                           if(_loc2_ && this)
                           {
                              continue;
                           }
                           §§goto(addr54);
                           §§push(!§§pop());
                        }
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr82);
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§&#X§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = param2;
         if(_loc5_ || param1)
         {
            if("CREDITS_CLOSE_BUTTON" !== _loc4_)
            {
               if("APP_ENGINE_BUTTON" === _loc4_)
               {
                  §§goto(addr105);
               }
               else
               {
                  §§push(2);
               }
               addr123:
               loop3:
               switch(§§pop())
               {
                  case 0:
                     §?!r§.§"#_§("misc_menubuttonback_1");
                     if(!(_loc6_ && param3))
                     {
                        § g§(§"C§.§^!7§);
                        addr30:
                        break;
                        addr52:
                     }
                     break;
                  case 1:
                     §§push(§4#;§.singleton);
                     if(_loc5_)
                     {
                        if(§§pop().§>!Z§())
                        {
                           loop0:
                           while(true)
                           {
                              §§push(§4#;§.singleton);
                              addr41:
                              while(true)
                              {
                                 §§pop().§5"q§();
                                 if(!_loc6_)
                                 {
                                    if(!_loc6_)
                                    {
                                       while(true)
                                       {
                                          navigateToURL(new URLRequest("https://developers.google.com/appengine/"),"_blank");
                                          if(_loc5_)
                                          {
                                             if(_loc6_)
                                             {
                                                continue loop0;
                                             }
                                             if(true)
                                             {
                                                break loop3;
                                             }
                                          }
                                          break loop3;
                                       }
                                       break loop3;
                                       addr17:
                                    }
                                    §§goto(addr52);
                                    §§goto(addr30);
                                 }
                                 break loop3;
                              }
                           }
                        }
                        §§goto(addr17);
                     }
                     §§goto(addr41);
               }
               return;
            }
            if(_loc5_ || param2)
            {
               addr98:
               §§push(0);
               if(!_loc5_)
               {
                  addr118:
               }
            }
            else
            {
               addr105:
               §§push(1);
               if(_loc5_)
               {
                  §§goto(addr118);
               }
            }
            §§goto(addr123);
            §§goto(addr105);
         }
         §§goto(addr98);
      }
      
      protected function §&!K§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(Log.§,#1§);
         if(_loc3_ || this)
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
         if(!(_loc4_ && _loc3_))
         {
            §§push(_loc1_);
            if(!(_loc4_ && this))
            {
               §§push(§§pop().slice(0,_loc1_.search("Server:")));
            }
            _loc1_ = §§pop();
         }
         do
         {
            §@;§.setText(_loc1_,"TextField_Version_Number");
            do
            {
               §@;§.setText(_loc2_,"TextField_Version_Number_Server");
            }
            while(_loc4_);
            
         }
         while(!_loc3_);
         
      }
      
      private function §># §(param1:MouseEvent) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            if(§@;§.stage.mouseX < §@;§.stage.width - §%g§)
            {
               if(!_loc3_)
               {
                  addr54:
                  §§push(true);
                  if(!_loc3_)
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
            §§goto(addr58);
         }
         §§goto(addr54);
      }
      
      private function §[#8§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.§&!8§);
            if(!(_loc3_ && this))
            {
               if(§§pop())
               {
                  if(!_loc3_)
                  {
                     addr181:
                     if(this.§># §(param1))
                     {
                        loop0:
                        while(true)
                        {
                           §§push(this.§@"t§);
                           loop1:
                           while(true)
                           {
                              §§push(§§pop() - §@;§.stage.mouseY);
                              loop2:
                              while(true)
                              {
                                 §§push(0);
                                 while(§§pop() <= §§pop())
                                 {
                                    §§push(this.§@"t§);
                                    if(!(_loc3_ && _loc3_))
                                    {
                                       §§push(§§pop() - §@;§.stage.mouseY);
                                    }
                                    if(_loc3_ && this)
                                    {
                                       continue loop2;
                                    }
                                    if(!(_loc2_ || _loc2_))
                                    {
                                       continue loop1;
                                    }
                                    §§push(0);
                                    if(!_loc2_)
                                    {
                                       continue;
                                    }
                                    if(§§pop() < §§pop())
                                    {
                                       addr75:
                                       §§push(this);
                                       §§push(this.§@"t§);
                                       if(_loc2_ || _loc2_)
                                       {
                                          §§push(§§pop() - §@;§.stage.mouseY);
                                       }
                                       §§pop().§<u§ = §§pop();
                                       if(!_loc3_)
                                       {
                                          if(_loc2_ || _loc2_)
                                          {
                                             if(_loc2_)
                                             {
                                                this.§@"t§ = §@;§.stage.mouseY;
                                                if(!(_loc3_ && param1))
                                                {
                                                   if(!_loc2_)
                                                   {
                                                      §§goto(addr75);
                                                   }
                                                   if(!_loc3_)
                                                   {
                                                      §§goto(addr19);
                                                   }
                                                   else
                                                   {
                                                      addr182:
                                                   }
                                                   this.§&!8§ = false;
                                                   return;
                                                   addr185:
                                                }
                                                §§goto(addr75);
                                             }
                                             §§goto(addr185);
                                          }
                                          break;
                                       }
                                       addr118:
                                       if(_loc3_ && param1)
                                       {
                                          this.§@"t§ = §@;§.stage.mouseY;
                                          §§goto(addr118);
                                          addr152:
                                       }
                                       if(!_loc2_)
                                       {
                                          continue loop0;
                                       }
                                    }
                                    §§goto(addr19);
                                 }
                                 §§push(this);
                                 §§push(this.§@"t§);
                                 if(_loc2_ || param1)
                                 {
                                    §§push(§§pop() - §@;§.stage.mouseY);
                                 }
                                 §§pop().§<u§ = §§pop();
                                 §§goto(addr152);
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr182);
               }
               addr19:
               return;
            }
            §§goto(addr181);
         }
         §§goto(addr182);
      }
      
      private function §[!&§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            if(this.§># §(param1))
            {
               do
               {
                  this.§&!8§ = true;
                  do
                  {
                     this.§@"t§ = §@;§.stage.mouseY;
                  }
                  while(_loc3_ && _loc3_);
                  
               }
               while(!_loc2_);
               
               addr63:
            }
            return;
         }
         §§goto(addr63);
      }
      
      private function §@#H§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§&!8§ = false;
         }
      }
      
      private function §[u§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§&!8§ = false;
         }
      }
      
      private function onMouseWheel(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            if(this.§># §(param1))
            {
               for(; param1.delta >= 0; if(_loc3_ && _loc2_)
               {
                  continue;
               },this.§^#L§ = -16,§§goto(addr64))
               {
                  if(param1.delta > 0)
                  {
                     if(!(_loc3_ && param1))
                     {
                        if(_loc3_)
                        {
                           addr24:
                        }
                        else
                        {
                           addr93:
                        }
                        continue;
                        return;
                     }
                     addr64:
                     if(!(_loc2_ || _loc3_))
                     {
                        break;
                     }
                     §§goto(addr24);
                  }
                  §§goto(addr24);
               }
               this.§^#L§ = 16;
            }
         }
         §§goto(addr93);
      }
      
      override protected function update(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            super.update(param1);
            while(true)
            {
               this.§@!0§.y = Math.floor(-this.§[s§);
               while(!(_loc2_ && _loc3_))
               {
                  this.§4!x§(param1);
                  if(!_loc3_)
                  {
                     continue;
                  }
                  return;
                  addr45:
               }
            }
         }
         §§goto(addr45);
      }
      
      private function §4!x§(param1:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            §§push(this);
            §§push(this.§[s§);
            if(_loc4_)
            {
               §§push(§§pop() + this.§<u§);
            }
            §§pop().§[s§ = §§pop();
            loop0:
            while(true)
            {
               §§push(this);
               §§push(this.§[s§);
               if(_loc4_ || this)
               {
                  §§push(§§pop() + this.§^#L§);
               }
               §§pop().§[s§ = §§pop();
               loop1:
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     §§push(this.§&!8§);
                     loop3:
                     while(true)
                     {
                        §§push(!§§pop());
                        if(_loc4_ || _loc3_)
                        {
                           if(§§pop())
                           {
                              loop6:
                              while(true)
                              {
                                 §§pop();
                                 addr83:
                                 while(_loc4_)
                                 {
                                    while(true)
                                    {
                                       §§push(Math.abs(this.§^#L§) < param1 / 15);
                                       if(_loc5_ && this)
                                       {
                                          continue loop6;
                                       }
                                       if(_loc5_ && _loc3_)
                                       {
                                          continue loop3;
                                       }
                                    }
                                    continue loop6;
                                 }
                                 continue loop1;
                              }
                              addr82:
                           }
                           while(true)
                           {
                              if(§§pop())
                              {
                                 if(!_loc4_)
                                 {
                                    addr67:
                                    if(true)
                                    {
                                       break;
                                    }
                                    continue loop2;
                                 }
                                 if(!_loc5_)
                                 {
                                    continue loop0;
                                 }
                                 §§goto(addr83);
                              }
                              break;
                              §§goto(addr35);
                           }
                           §§push(this.§&Y§);
                           if(!_loc5_)
                           {
                              §§push(§§pop() + §81§);
                              if(!_loc5_)
                              {
                                 addr130:
                                 §§push(Number(§§pop()));
                              }
                              var _loc2_:* = §§pop();
                              var _loc3_:Number = § #Y§;
                              if(_loc4_ || _loc3_)
                              {
                                 addr250:
                                 if(this.§[s§ >= _loc3_)
                                 {
                                    §§push(this.§[s§);
                                    if(_loc4_ || this)
                                    {
                                       §§push(_loc2_);
                                       if(!(_loc4_ || _loc3_))
                                       {
                                          §§goto(addr250);
                                       }
                                       if(§§pop() > §§pop())
                                       {
                                          addr233:
                                          this.§[s§ = _loc3_;
                                       }
                                       addr192:
                                       if(!this.§&!8§)
                                       {
                                          if(!_loc5_)
                                          {
                                             addr198:
                                             §§push(this);
                                             §§push(this.§<u§);
                                             if(!(_loc5_ && _loc2_))
                                             {
                                                §§push(§§pop() * 0.9);
                                             }
                                             §§pop().§<u§ = §§pop();
                                          }
                                          §§push(this);
                                          §§push(this.§^#L§);
                                          if(_loc4_ || _loc2_)
                                          {
                                             §§push(§§pop() * 0.9);
                                          }
                                          §§pop().§^#L§ = §§pop();
                                          if(_loc4_ || param1)
                                          {
                                             if(_loc4_ || param1)
                                             {
                                                if(!(_loc5_ && this))
                                                {
                                                   if(_loc4_ || _loc2_)
                                                   {
                                                      if(_loc5_)
                                                      {
                                                         addr251:
                                                         this.§[s§ = _loc2_;
                                                         §§goto(addr192);
                                                         addr254:
                                                      }
                                                      §§goto(addr143);
                                                   }
                                                   §§goto(addr254);
                                                }
                                             }
                                             §§goto(addr233);
                                          }
                                          addr211:
                                          §§goto(addr211);
                                       }
                                       addr143:
                                       return;
                                    }
                                    §§goto(addr250);
                                 }
                                 §§goto(addr251);
                              }
                              §§goto(addr198);
                           }
                           §§goto(addr130);
                        }
                        §§goto(addr82);
                     }
                  }
               }
            }
         }
         §§goto(addr85);
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc3_)
         {
            super.setViewSize(param1,param2);
         }
         do
         {
            this.§"!§.setSize(param1,param2);
         }
         while(!(_loc4_ || this));
         
      }
   }
}
