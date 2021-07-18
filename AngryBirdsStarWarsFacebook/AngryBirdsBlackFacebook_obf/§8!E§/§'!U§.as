package §8!E§
{
   import §"O§.§^#]§;
   import §+D§.§ #^§;
   import §+D§.§^"m§;
   import §6"G§.§-#C§;
   import §6"G§.§[#R§;
   import §<w§.§6#'§;
   import flash.display.MovieClip;
   import flash.text.TextField;
   
   public class §'!U§
   {
      
      private static const §`">§:Number = 20;
      
      public static const §0"E§:int = 6000;
      
      private static var §5!M§:§^"m§;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §`">§ = 20;
         }
         do
         {
            §0"E§ = 6000;
         }
         while(!(_loc1_ || §'!U§));
         
      }
      
      protected var §=#=§:§ #^§;
      
      protected var §[!Q§:§"#X§;
      
      protected var §%"P§:TextField;
      
      protected var §4q§:MovieClip;
      
      protected var §""Z§:MovieClip;
      
      private var §+!t§:§^"m§;
      
      protected var §`!J§:MovieClip;
      
      protected var §try§:§^#]§;
      
      protected var §8S§:§[#R§;
      
      protected var §@1§:Number = -1;
      
      protected var §3#S§:Number = 0.0;
      
      protected var §"#Q§:Number = 0.0;
      
      protected var §'#a§:§[#R§;
      
      protected var §"!A§:Boolean;
      
      protected var §8#_§:Number;
      
      protected var §6"B§:String;
      
      public function §'!U§(param1:§ #^§, param2:§^#]§)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param1))
         {
            super();
            while(true)
            {
               this.§try§ = param2;
               §§goto(addr72);
            }
         }
         addr72:
         while(true)
         {
            this.init(param1);
            if(_loc4_ || this)
            {
               if(!(_loc3_ && param1))
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public static function §2!U§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || §'!U§)
         {
            §5!M§.setVisibility(false);
         }
      }
      
      public function get §@"N§() : §"#X§
      {
         return this.§[!Q§;
      }
      
      public function get isVisible() : Boolean
      {
         return this.§"!A§;
      }
      
      public function get §6"J§() : Number
      {
         return this.§8#_§;
      }
      
      public function set §6"J§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§8#_§ = param1;
         }
      }
      
      public function set isEnabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§[!Q§.enabled = param1;
         }
      }
      
      public function get isEnabled() : Boolean
      {
         return this.§[!Q§.enabled;
      }
      
      protected function init(param1:§ #^§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§=#=§ = param1;
            while(true)
            {
               this.§4q§ = this.§=#=§.getItemByName("Container_ExtraBirdContent").mClip;
               loop1:
               while(true)
               {
                  this.§""Z§ = this.§=#=§.getItemByName("Container_AnimateIn").mClip;
                  loop2:
                  while(true)
                  {
                     this.§`!J§ = this.§=#=§.getItemByName("MovieClip_Blocker").mClip;
                     loop3:
                     while(true)
                     {
                        this.§[!Q§ = new §"#X§(§ #^§(this.§=#=§.getItemByName("Container_ExtraBirdButton")),this.§try§);
                        loop4:
                        while(true)
                        {
                           this.§[!Q§.enabled = true;
                           while(true)
                           {
                              this.§+!t§ = §^"m§(this.§=#=§.getItemByName("Button_Use_Clone_Bird"));
                              while(_loc3_ || this)
                              {
                                 if(_loc2_)
                                 {
                                    continue loop4;
                                 }
                                 this.§+!t§.addEventListener(§6#'§.§+!>§,this.§[!Q§.onUIInteraction);
                                 while(true)
                                 {
                                    §5!M§ = §^"m§(this.§=#=§.getItemByName("Button_Skip_Extra_Bird"));
                                    addr150:
                                    while(true)
                                    {
                                       §§push(§5!M§);
                                       loop9:
                                       while(true)
                                       {
                                          §§pop().addEventListener(§6#'§.§+!>§,this.onUIInteraction);
                                          addr138:
                                          while(true)
                                          {
                                             if(_loc3_)
                                             {
                                                continue loop9;
                                             }
                                             continue loop3;
                                          }
                                       }
                                    }
                                    if(!_loc2_)
                                    {
                                       if(!_loc2_)
                                       {
                                          continue loop1;
                                       }
                                       continue loop2;
                                    }
                                 }
                                 if(_loc3_ || this)
                                 {
                                    return;
                                    addr46:
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            this.§=#=§.mClip.visible = false;
            §§goto(addr53);
         }
         §§goto(addr46);
      }
      
      private function onUIInteraction(param1:§6#'§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            if(param1.§=!k§.toUpperCase() == "NEXT_LEVEL")
            {
               if(_loc2_)
               {
                  addr50:
                  this.§8#_§ = 0;
               }
            }
            return;
         }
         §§goto(addr50);
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            §§push(this.§8S§);
            if(!_loc1_)
            {
               if(§§pop())
               {
                  loop0:
                  while(true)
                  {
                     §§push(this.§8S§);
                     addr148:
                     while(true)
                     {
                        §§pop().stop();
                        addr149:
                        while(true)
                        {
                           this.§8S§ = null;
                           addr130:
                           while(true)
                           {
                           }
                        }
                     }
                     loop12:
                     while(true)
                     {
                        if(_loc1_ && _loc2_)
                        {
                           continue loop0;
                        }
                        addr110:
                        loop3:
                        while(true)
                        {
                           this.hide();
                           loop4:
                           while(!(_loc1_ && _loc1_))
                           {
                              if(_loc1_ && this)
                              {
                                 break loop3;
                              }
                              this.§[!Q§.dispose();
                              while(true)
                              {
                                 if(!_loc2_)
                                 {
                                    continue loop4;
                                 }
                                 if(!_loc1_)
                                 {
                                    this.§[!Q§ = null;
                                    while(true)
                                    {
                                       if(!(_loc1_ && _loc2_))
                                       {
                                          continue;
                                       }
                                       continue loop12;
                                    }
                                    §§goto(addr130);
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                       §§push(this.§'#a§);
                                    }
                                    addr122:
                                 }
                                 while(true)
                                 {
                                    §§pop().stop();
                                    break loop4;
                                 }
                                 if(!(_loc1_ && this))
                                 {
                                    if(!_loc2_)
                                    {
                                       §§goto(addr130);
                                    }
                                    return;
                                    addr49:
                                 }
                              }
                              continue loop12;
                           }
                           addr125:
                           while(true)
                           {
                              this.§'#a§ = null;
                              continue loop12;
                           }
                           §§goto(addr110);
                        }
                        §§goto(addr149);
                     }
                  }
               }
               while(true)
               {
                  §§push(this.§'#a§);
                  if(_loc2_ || _loc2_)
                  {
                     if(§§pop())
                     {
                        §§goto(addr122);
                     }
                     §§goto(addr81);
                  }
                  §§goto(addr124);
                  §§goto(addr130);
               }
               §§goto(addr49);
            }
            §§goto(addr148);
         }
         §§goto(addr125);
      }
      
      public function show() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§%"P§.text = "";
            if(!(_loc3_ && _loc1_))
            {
               while(true)
               {
                  this.§=#=§.mClip.visible = true;
                  if(_loc2_ || this)
                  {
                     this.§""Z§.alpha = 0;
                     if(!_loc3_)
                     {
                        if(false)
                        {
                           continue;
                        }
                        addr216:
                        this.§""Z§.x = this.§""Z§.y = 0;
                        if(_loc2_)
                        {
                           break;
                        }
                        while(true)
                        {
                           §§push(this.§8S§);
                           addr180:
                           while(true)
                           {
                              §§pop().onComplete = this.§9#]§;
                           }
                        }
                        addr216:
                     }
                     loop1:
                     while(true)
                     {
                        §§push(this.§8S§);
                        loop2:
                        while(_loc2_)
                        {
                           §§pop().delay = 0.3;
                           loop11:
                           while(true)
                           {
                              §§push(this.§8S§);
                              if(_loc3_)
                              {
                                 continue loop2;
                              }
                              addr165:
                              §§pop().play();
                              loop8:
                              while(true)
                              {
                                 if(!_loc3_)
                                 {
                                    this.§'#a§ = §-#C§.§%!E§.§^!H§(this.§`!J§,{"alpha":1},{"alpha":0},0.3);
                                    while(true)
                                    {
                                       if(_loc2_)
                                       {
                                          break loop8;
                                       }
                                       continue loop11;
                                    }
                                    addr157:
                                 }
                                 else
                                 {
                                    §§goto(addr216);
                                 }
                                 §§goto(addr165);
                              }
                              this.§'#a§.play();
                              loop6:
                              while(true)
                              {
                                 this.§"!A§ = true;
                                 loop7:
                                 while(true)
                                 {
                                    if(!_loc3_)
                                    {
                                       this.§8#_§ = §0"E§;
                                       while(_loc3_ && _loc1_)
                                       {
                                       }
                                       while(true)
                                       {
                                          this.§[!Q§.§##3§(§0"E§ / 1000);
                                          if(!(_loc3_ && _loc3_))
                                          {
                                             if(!(_loc3_ && _loc1_))
                                             {
                                                if(_loc2_ || _loc3_)
                                                {
                                                   if(!_loc3_)
                                                   {
                                                      break;
                                                   }
                                                   continue loop1;
                                                }
                                                continue loop6;
                                             }
                                             continue loop7;
                                          }
                                          §§goto(addr122);
                                       }
                                       addr122:
                                       return;
                                       addr129:
                                    }
                                    §§goto(addr166);
                                    §§goto(addr157);
                                 }
                              }
                              addr166:
                              addr159:
                           }
                        }
                        §§goto(addr180);
                     }
                  }
                  break;
               }
               this.§8S§ = §-#C§.§%!E§.§^!H§(this.§""Z§,{
                  "scaleX":1,
                  "scaleY":1,
                  "alpha":1
               },{
                  "scaleX":7,
                  "scaleY":7,
                  "alpha":1
               },0.1);
               §§goto(addr216);
            }
            §§goto(addr129);
         }
         §§goto(addr176);
      }
      
      public function hide() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            §§push(this.§8S§);
            if(!(_loc2_ && this))
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.§8S§);
                     addr133:
                     while(true)
                     {
                        §§pop().stop();
                        addr134:
                        while(true)
                        {
                           this.§8S§ = null;
                           addr110:
                           while(true)
                           {
                           }
                        }
                     }
                     addr69:
                     if(_loc2_ && _loc1_)
                     {
                        continue;
                     }
                     this.§=#=§.mClip.visible = false;
                     do
                     {
                        this.§"!A§ = false;
                     }
                     while(!_loc1_);
                     
                     if(!_loc2_)
                     {
                        if(!_loc1_)
                        {
                           while(!(_loc2_ && _loc1_))
                           {
                              §§push(this.§'#a§);
                              while(true)
                              {
                                 §§pop().stop();
                                 loop8:
                                 while(true)
                                 {
                                    this.§'#a§ = null;
                                    addr81:
                                    addr88:
                                    while(!(_loc1_ || _loc1_))
                                    {
                                       continue loop8;
                                    }
                                    loop12:
                                    while(true)
                                    {
                                       addr46:
                                       while(true)
                                       {
                                          this.§[!Q§.§>z§();
                                          addr50:
                                          while(true)
                                          {
                                             if(_loc1_ || _loc2_)
                                             {
                                                if(!_loc1_)
                                                {
                                                   break;
                                                }
                                                §§goto(addr69);
                                             }
                                             else
                                             {
                                                §§goto(addr81);
                                             }
                                          }
                                          §§goto(addr134);
                                          continue loop12;
                                       }
                                       §§goto(addr38);
                                    }
                                 }
                              }
                           }
                           §§goto(addr110);
                           addr95:
                        }
                        addr38:
                        return;
                     }
                     §§goto(addr50);
                  }
               }
               while(true)
               {
                  §§push(this.§'#a§);
                  if(_loc1_)
                  {
                     if(§§pop())
                     {
                        §§goto(addr95);
                     }
                     §§goto(addr46);
                  }
                  §§goto(addr104);
                  §§goto(addr110);
               }
            }
            §§goto(addr133);
         }
         §§goto(addr88);
      }
      
      protected function §9#]§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.§[!?§();
         }
      }
      
      protected function §[!?§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            this.§3#S§ = 0;
            while(true)
            {
               this.§"#Q§ = 0;
               loop1:
               while(!_loc1_)
               {
                  while(true)
                  {
                     this.§@1§ = §`">§;
                     if(_loc2_ || this)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr67);
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            §§push(this.§"!A§);
            if(_loc3_ || _loc2_)
            {
               if(!§§pop())
               {
                  if(!(_loc4_ && this))
                  {
                     §§goto(addr40);
                  }
                  else
                  {
                     addr68:
                     addr72:
                     if(this.§8#_§ < 0)
                     {
                        addr90:
                        §§push("0");
                     }
                     else
                     {
                        §§push(Math.ceil(this.§8#_§ / 1000).toString());
                        if(_loc3_ || _loc2_)
                        {
                           §§goto(addr90);
                        }
                     }
                     var _loc2_:* = §§pop();
                     if(_loc3_ || _loc2_)
                     {
                        this.§%"P§.text = this.§6"B§.replace("[duration]",_loc2_);
                        loop0:
                        while(true)
                        {
                           §§push(this.§8#_§);
                           loop1:
                           while(true)
                           {
                              §§push(0);
                              loop2:
                              while(true)
                              {
                                 §§push(§§pop() < §§pop());
                                 loop3:
                                 while(true)
                                 {
                                    if(!§§pop())
                                    {
                                       loop4:
                                       while(true)
                                       {
                                          §§pop();
                                          loop5:
                                          while(true)
                                          {
                                             §§push(this.§@1§);
                                             loop6:
                                             while(true)
                                             {
                                                if(!_loc3_)
                                                {
                                                   break;
                                                   addr321:
                                                }
                                                §§push(0);
                                                while(!_loc4_)
                                                {
                                                   §§push(§§pop() < §§pop());
                                                   if(_loc4_)
                                                   {
                                                      continue loop4;
                                                   }
                                                   if(!_loc3_)
                                                   {
                                                      continue loop3;
                                                   }
                                                }
                                                continue loop2;
                                                addr296:
                                                §§push(this.§@1§);
                                                if(!_loc3_)
                                                {
                                                   continue;
                                                }
                                                §§push(0);
                                                if(!_loc4_)
                                                {
                                                   if(§§pop() > §§pop())
                                                   {
                                                      loop19:
                                                      while(!(_loc4_ && this))
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(this);
                                                            §§push(Math.random() - 0.5);
                                                            if(!(_loc4_ && param1))
                                                            {
                                                               §§push(this.§@1§);
                                                               if(!(_loc4_ && this))
                                                               {
                                                                  §§push(§§pop() / §`">§);
                                                               }
                                                               §§push(§§pop() * §§pop());
                                                               if(_loc3_)
                                                               {
                                                                  §§push(§§pop() * 20);
                                                               }
                                                            }
                                                            §§pop().§3#S§ = §§pop();
                                                            loop15:
                                                            while(true)
                                                            {
                                                               §§push(this);
                                                               §§push(Math.random() - 0.5);
                                                               if(!(_loc4_ && param1))
                                                               {
                                                                  §§push(this.§@1§);
                                                                  if(_loc3_)
                                                                  {
                                                                     §§push(§§pop() / §`">§);
                                                                  }
                                                                  §§push(§§pop() * §§pop());
                                                                  if(!_loc4_)
                                                                  {
                                                                     §§push(§§pop() * 20);
                                                                  }
                                                               }
                                                               §§pop().§"#Q§ = §§pop();
                                                               loop16:
                                                               while(true)
                                                               {
                                                                  this.§""Z§.x += this.§3#S§;
                                                                  loop14:
                                                                  while(true)
                                                                  {
                                                                     this.§""Z§.y += this.§"#Q§;
                                                                     loop17:
                                                                     while(true)
                                                                     {
                                                                        if(_loc4_ && _loc3_)
                                                                        {
                                                                           continue loop14;
                                                                        }
                                                                        loop18:
                                                                        while(true)
                                                                        {
                                                                           §§push(this);
                                                                           §§push(this.§@1§);
                                                                           if(!(_loc4_ && _loc3_))
                                                                           {
                                                                              §§push(param1);
                                                                              if(_loc3_)
                                                                              {
                                                                                 §§push(§§pop() / 10);
                                                                              }
                                                                              §§push(§§pop() - §§pop());
                                                                           }
                                                                           §§pop().§@1§ = §§pop();
                                                                           if(!_loc3_)
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    if(_loc3_)
                                                                                    {
                                                                                       continue loop18;
                                                                                    }
                                                                                    continue loop19;
                                                                                 }
                                                                                 continue loop16;
                                                                              }
                                                                              addr143:
                                                                           }
                                                                           addr124:
                                                                           addr154:
                                                                           if(_loc3_ || _loc2_)
                                                                           {
                                                                              addr131:
                                                                              if(_loc3_ || _loc2_)
                                                                              {
                                                                                 return;
                                                                              }
                                                                              loop11:
                                                                              while(true)
                                                                              {
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    §§goto(addr296);
                                                                                 }
                                                                                 addr307:
                                                                                 addr331:
                                                                                 while(!(_loc4_ && _loc2_))
                                                                                 {
                                                                                    this.§""Z§.y -= this.§"#Q§;
                                                                                    continue loop11;
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    this.§""Z§.x -= this.§3#S§;
                                                                                    §§goto(addr307);
                                                                                    §§goto(addr331);
                                                                                 }
                                                                              }
                                                                              continue loop6;
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              if(!_loc4_)
                                                                              {
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    if(_loc3_ || param1)
                                                                                    {
                                                                                       continue loop0;
                                                                                    }
                                                                                    continue loop5;
                                                                                 }
                                                                                 continue loop15;
                                                                              }
                                                                              continue loop17;
                                                                              §§goto(addr124);
                                                                           }
                                                                           §§goto(addr131);
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr330);
                                                   }
                                                   this.§3#S§ = 0;
                                                   §§goto(addr154);
                                                }
                                                §§goto(addr321);
                                             }
                                             continue loop1;
                                          }
                                       }
                                    }
                                    while(true)
                                    {
                                       if(!§§pop())
                                       {
                                          §§goto(addr331);
                                       }
                                       addr330:
                                       return;
                                    }
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr254);
                  }
               }
               else
               {
                  §§push(this);
                  §§push(this.§8#_§);
                  if(_loc3_ || this)
                  {
                     §§push(§§pop() - param1);
                  }
                  §§pop().§8#_§ = §§pop();
                  if(!(_loc4_ && _loc3_))
                  {
                     §§goto(addr68);
                  }
               }
               §§goto(addr90);
            }
            §§goto(addr72);
         }
         addr40:
      }
   }
}
