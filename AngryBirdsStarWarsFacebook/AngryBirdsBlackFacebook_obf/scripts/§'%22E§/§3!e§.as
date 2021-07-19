package §'"E§
{
   import §!!U§.§#"t§;
   import §"a§.§6#!§;
   import §+!c§.PowerupFlash;
   import §,"N§.§6"w§;
   import §3y§.§9!Z§;
   import §6!H§.§,#E§;
   import §6"G§.§-#C§;
   import §6"G§.§[#R§;
   import §="2§.§?!r§;
   import §^#>§.§#_§;
   import §^#>§.§'"3§;
   import §^#>§.§;x§;
   import §^#>§.§>f§;
   import com.angrybirds.§,!q§;
   import flash.geom.Point;
   
   public class §3!e§ extends §^"`§
   {
      
      private static const §^"i§:Number = 2000;
      
      private static const §6#V§:Number = 1300;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §^"i§ = 2000;
            do
            {
               §6#V§ = 1300;
            }
            while(!_loc1_);
            
         }
      }
      
      private var §5#_§:§[#R§ = null;
      
      private var §8"y§:§>f§;
      
      private var § "w§:§'"3§;
      
      private var §2!p§:§#"t§;
      
      private var §,#&§:Point;
      
      private var §2M§:Number;
      
      private var §=z§:Number;
      
      private var § "]§:Number;
      
      private var §8U§:Number;
      
      private var §'>§:§'"3§;
      
      private var §catch§:PowerupFlash;
      
      private var §,5§:Boolean;
      
      private var §#"j§:Boolean;
      
      private var §5"v§:Number = 0;
      
      public function §3!e§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super(§6"w§.§1!m§,§,#E§.§&X§);
         }
      }
      
      override public function execute() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §?!r§.§"#_§("clone_bird_enter");
            loop0:
            while(true)
            {
               §,#4§ = false;
               loop1:
               while(true)
               {
                  this.§8"y§ = §>f§(§,!q§.§9!,§.slingshot);
                  continue loop0;
                  addr284:
                  if(_loc1_ && this)
                  {
                     continue;
                  }
                  loop11:
                  while(true)
                  {
                     this.§#"j§ = this.§ "w§.§!#?§;
                     loop12:
                     while(!(_loc1_ && _loc1_))
                     {
                        this.§,5§ = this.§ "w§.§[g§;
                        loop13:
                        for(; !(_loc1_ && _loc2_); if(_loc1_ && _loc1_)
                        {
                           continue;
                        },§§push(this.§ "w§),if(_loc2_)
                        {
                           if(_loc2_ || this)
                           {
                              §§pop().§^w§();
                              §§goto(addr243);
                           }
                           §§goto(addr322);
                        },§§goto(addr317))
                        {
                           §§push(this.§8"y§);
                           loop14:
                           while(true)
                           {
                              if(!_loc1_)
                              {
                                 if(§§pop().§,!?§.length > 0)
                                 {
                                    if(_loc2_)
                                    {
                                       continue loop13;
                                    }
                                    addr243:
                                    while(true)
                                    {
                                    }
                                    addr243:
                                 }
                                 while(true)
                                 {
                                    §§push(this.§8"y§);
                                    loop17:
                                    while(true)
                                    {
                                       §§pop().§8"F§(§;x§.§@"m§);
                                       loop18:
                                       while(!(_loc1_ && _loc1_))
                                       {
                                          this.§2!p§ = §,!q§.§9!,§.textureManager.getTexture("CLONE_BIRD").§ "P§(true);
                                          loop19:
                                          while(true)
                                          {
                                             if(!(_loc1_ && this))
                                             {
                                                continue loop17;
                                             }
                                             addr282:
                                             while(true)
                                             {
                                                if(_loc2_)
                                                {
                                                   §§goto(addr284);
                                                }
                                                else
                                                {
                                                   while(true)
                                                   {
                                                      this.§ "w§ = §'"3§(this.§8"y§.§,!?§[this.§8"y§.§72§]);
                                                      addr383:
                                                      while(true)
                                                      {
                                                         §§push(this.§8"y§);
                                                         addr343:
                                                         while(true)
                                                         {
                                                            §§push(§§pop().§,!?§.length <= 1);
                                                            if(_loc2_ || _loc2_)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  addr356:
                                                                  loop37:
                                                                  while(true)
                                                                  {
                                                                     §§pop();
                                                                     addr357:
                                                                     loop38:
                                                                     for(; _loc2_ || _loc2_; continue loop37)
                                                                     {
                                                                        §§push(this.§ "w§);
                                                                        while(true)
                                                                        {
                                                                           §§push(Boolean(§§pop()));
                                                                           if(!_loc2_)
                                                                           {
                                                                              continue loop38;
                                                                           }
                                                                        }
                                                                     }
                                                                     continue loop0;
                                                                  }
                                                                  addr356:
                                                               }
                                                               while(true)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     break loop18;
                                                                  }
                                                                  §§push(this.§ "w§);
                                                                  if(_loc2_)
                                                                  {
                                                                     if(!§§pop())
                                                                     {
                                                                        continue loop11;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§ "w§);
                                                                        break loop14;
                                                                     }
                                                                  }
                                                                  break loop14;
                                                               }
                                                            }
                                                            §§goto(addr356);
                                                         }
                                                      }
                                                   }
                                                   addr372:
                                                }
                                                continue loop19;
                                             }
                                             continue loop1;
                                          }
                                          continue loop17;
                                       }
                                       while(true)
                                       {
                                          this.§5#_§ = this.§ "w§.§1V§(this.§ "w§.§,r§,this.§ "w§.§for §,false);
                                          break loop12;
                                       }
                                    }
                                    §§goto(addr243);
                                 }
                              }
                              addr368:
                              while(true)
                              {
                                 if(§§pop().§,!?§.length <= 0)
                                 {
                                    this.§ "w§ = §'"3§(this.§8"y§.§6!8§);
                                    §§goto(addr282);
                                 }
                                 §§goto(addr372);
                              }
                              if(_loc1_ && this)
                              {
                                 continue;
                              }
                              if(_loc2_ || _loc2_)
                              {
                                 if(_loc2_)
                                 {
                                    §§pop().sprite.addChild(this.§2!p§);
                                    §§goto(addr163);
                                 }
                                 §§goto(addr387);
                              }
                              §§goto(addr343);
                           }
                           while(true)
                           {
                              §§pop().fallFromSlingshot();
                              §§goto(addr318);
                           }
                        }
                        while(true)
                        {
                           §§goto(addr368);
                        }
                     }
                     while(true)
                     {
                        continue loop11;
                     }
                  }
               }
            }
         }
         §§goto(addr79);
      }
      
      override public function updateTimeStep(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            if(!§0!3§)
            {
               loop0:
               while(true)
               {
                  §§push(this);
                  §§push(this.§5"v§);
                  if(_loc2_)
                  {
                     §§push(§§pop() + param1);
                  }
                  §§pop().§5"v§ = §§pop();
                  loop1:
                  while(true)
                  {
                     §§push(this.§5"v§);
                     loop2:
                     while(true)
                     {
                        §§push(§^"i§);
                        loop3:
                        while(true)
                        {
                           if(§§pop() > §§pop())
                           {
                              while(_loc2_)
                              {
                                 this.§5"v§ = §^"i§;
                                 while(true)
                                 {
                                 }
                              }
                              continue loop1;
                              addr274:
                           }
                           while(true)
                           {
                              this.§'!%§(param1);
                              loop6:
                              while(true)
                              {
                                 §§push(this.§'>§);
                                 loop7:
                                 while(true)
                                 {
                                    §§push(!§§pop());
                                    loop8:
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          loop9:
                                          while(true)
                                          {
                                             §§pop();
                                             addr263:
                                             while(true)
                                             {
                                                §§push(this.§5"v§);
                                                addr233:
                                                while(true)
                                                {
                                                   §§push(§6#V§);
                                                   addr234:
                                                   do
                                                   {
                                                      if(!_loc2_)
                                                      {
                                                         continue loop3;
                                                      }
                                                      §§push(§§pop() > §§pop());
                                                      if(!(_loc2_ || _loc2_))
                                                      {
                                                         continue loop9;
                                                      }
                                                   }
                                                   while(!(_loc3_ && _loc3_));
                                                   
                                                   continue loop8;
                                                }
                                             }
                                          }
                                       }
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             loop14:
                                             while(true)
                                             {
                                                this.§0f§();
                                                addr255:
                                                while(true)
                                                {
                                                }
                                                loop22:
                                                while(true)
                                                {
                                                   if(!(_loc2_ || _loc3_))
                                                   {
                                                      continue loop14;
                                                   }
                                                   if(_loc3_ && this)
                                                   {
                                                      break;
                                                   }
                                                   §§push(this.§2!p§);
                                                   loop24:
                                                   while(true)
                                                   {
                                                      if(!(_loc3_ && param1))
                                                      {
                                                         addr122:
                                                         §§pop().x = this.§,#&§.x;
                                                         loop20:
                                                         while(true)
                                                         {
                                                            if(!_loc2_)
                                                            {
                                                               continue loop22;
                                                            }
                                                            if(!_loc3_)
                                                            {
                                                               if(!(_loc2_ || _loc3_))
                                                               {
                                                                  continue loop0;
                                                               }
                                                               §§push(this.§2!p§);
                                                               while(true)
                                                               {
                                                                  §§pop().y = this.§,#&§.y;
                                                                  addr111:
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§2!p§);
                                                                     if(!(_loc2_ || param1))
                                                                     {
                                                                        continue;
                                                                     }
                                                                     if(!(_loc2_ || this))
                                                                     {
                                                                        continue loop24;
                                                                     }
                                                                     §§pop().alpha = Math.min(this.§5"v§ / 300,1);
                                                                     if(_loc3_)
                                                                     {
                                                                        while(!_loc3_)
                                                                        {
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           if(_loc2_)
                                                                           {
                                                                              §§push(this.§'>§);
                                                                              if(_loc2_)
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    if(_loc2_ || param1)
                                                                                    {
                                                                                       addr205:
                                                                                       §§push(this.§'>§);
                                                                                       if(_loc3_)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       §§pop().setPosition(this.§,#&§.x * §#_§.§8]§,this.§,#&§.y * §#_§.§8]§);
                                                                                    }
                                                                                    §§goto(addr220);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§push(this.§2!p§);
                                                                                    while(true)
                                                                                    {
                                                                                       §§pop().rotation = Math.atan2(this.§,#&§.y - this.§2!p§.y,this.§,#&§.x - this.§2!p§.x) - Math.PI / 2;
                                                                                       continue loop22;
                                                                                    }
                                                                                    addr153:
                                                                                 }
                                                                              }
                                                                              §§goto(addr205);
                                                                           }
                                                                           §§goto(addr263);
                                                                        }
                                                                        addr220:
                                                                        continue loop7;
                                                                        addr227:
                                                                     }
                                                                     if(_loc3_)
                                                                     {
                                                                        break loop20;
                                                                     }
                                                                     addr103:
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§5"v§);
                                                                        if(_loc3_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        continue loop2;
                                                                        §§goto(addr103);
                                                                     }
                                                                     §§goto(addr233);
                                                                  }
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr274);
                                                            }
                                                            §§goto(addr122);
                                                         }
                                                         §§goto(addr279);
                                                         addr126:
                                                      }
                                                      §§goto(addr153);
                                                   }
                                                }
                                                continue loop6;
                                             }
                                          }
                                          while(true)
                                          {
                                             this.§8"h§(param1);
                                             §§goto(addr227);
                                             §§goto(addr255);
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr302);
         }
         §§goto(addr279);
      }
      
      private function §8"h§(param1:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:Number = Math.min(this.§5"v§ / 2000,1);
         var _loc3_:* = Number(Math.min(this.§5"v§ / 2000,1));
         if(!_loc4_)
         {
            §§push(§9!Z§.easeIn(_loc3_,0,1,1));
            if(_loc5_)
            {
               §§push(Number(§§pop()));
            }
            _loc3_ = §§pop();
            do
            {
               this.§,#&§.x = this.§2M§ + (this.§ "]§ - this.§2M§) * _loc2_;
               do
               {
                  this.§,#&§.y = this.§=z§ + (this.§8U§ - this.§=z§) * _loc3_;
               }
               while(!(_loc5_ || this));
               
            }
            while(!_loc5_);
            
         }
      }
      
      private function §0f§() : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc4_:§#"t§ = null;
         var _loc5_:* = NaN;
         if(!_loc8_)
         {
            this.§8"y§.sprite.removeChild(this.§2!p§);
            while(true)
            {
               this.§'>§ = §'"3§(§>f§(§,!q§.§9!,§.slingshot).§+#2§(this.§ "w§.levelItem.itemName,this.§,#&§.x * §#_§.§8]§,this.§,#&§.y * §#_§.§8]§));
               loop1:
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     §§push(this.§#"j§);
                     loop3:
                     while(true)
                     {
                        if(§§pop())
                        {
                           while(true)
                           {
                              §§push(this.§'>§);
                              addr68:
                              while(true)
                              {
                                 §§pop().§@#Y§();
                                 addr69:
                                 while(true)
                                 {
                                 }
                              }
                           }
                           addr66:
                        }
                        loop7:
                        while(true)
                        {
                           §§push(this.§,5§);
                           if(_loc7_ || _loc2_)
                           {
                              if(§§pop())
                              {
                                 if(!(_loc8_ && this))
                                 {
                                    if(!_loc8_)
                                    {
                                       continue loop1;
                                    }
                                    §§goto(addr66);
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                       if(_loc7_)
                                       {
                                          if(true)
                                          {
                                             break loop7;
                                          }
                                          continue loop2;
                                       }
                                    }
                                    addr58:
                                 }
                                 §§goto(addr69);
                              }
                              break;
                           }
                           continue loop3;
                        }
                        var _loc1_:Array = [0,0,0,0,0,0,0,0,0,0];
                        var _loc2_:Array = [135,45,-135,-45,90];
                        var _loc3_:int = 0;
                        addr300:
                        if(_loc3_ < 5)
                        {
                           _loc4_ = §,!q§.§9!,§.textureManager.getTexture("CLONE_BIRD_" + (_loc3_ + 1)).§ "P§(true);
                           if(!(_loc8_ && _loc3_))
                           {
                              this.§8"y§.sprite.addChild(_loc4_);
                              _loc4_.x = this.§,#&§.x + _loc1_[_loc3_ * 2];
                              _loc4_.y = this.§,#&§.y + _loc1_[_loc3_ * 2 + 1];
                              §§push(_loc2_[_loc3_] * (Math.PI / 180));
                              if(!(_loc8_ && this))
                              {
                                 §§push(Number(§§pop()));
                              }
                              _loc5_ = §§pop();
                              addr245:
                              §-#C§.§%!E§.§^!H§(_loc4_,{
                                 "x":_loc4_.x + Math.cos(_loc5_) * 300,
                                 "y":_loc4_.y + Math.sin(_loc5_) * 300,
                                 "rotation":5
                              },null,1,§9!Z§.easeOut).play();
                              addr189:
                              addr299:
                              addr265:
                              addr246:
                              addr293:
                              addr280:
                              §§push(§-#C§.§%!E§);
                              if(!_loc8_)
                              {
                                 §§push(§§pop().§^!H§(_loc4_,{"alpha":0},null,1,§9!Z§.easeIn));
                                 if(!(_loc8_ && _loc1_))
                                 {
                                    §§pop().play();
                                    addr210:
                                    if(!_loc8_)
                                    {
                                       if(_loc7_)
                                       {
                                          _loc3_++;
                                          if(!(_loc8_ && _loc2_))
                                          {
                                             if(_loc7_ || _loc1_)
                                             {
                                                if(_loc7_ || _loc1_)
                                                {
                                                   if(_loc7_)
                                                   {
                                                      addr176:
                                                      if(false)
                                                      {
                                                         §§goto(addr189);
                                                      }
                                                      §§goto(addr300);
                                                   }
                                                   §§goto(addr299);
                                                }
                                                §§goto(addr265);
                                             }
                                             §§goto(addr246);
                                          }
                                          §§goto(addr210);
                                       }
                                       §§goto(addr293);
                                    }
                                    §§goto(addr280);
                                 }
                                 §§goto(addr245);
                              }
                              addr218:
                              §§goto(addr218);
                           }
                           §§goto(addr176);
                        }
                        if(_loc7_)
                        {
                           this.§catch§ = new PowerupFlash();
                           if(!_loc8_)
                           {
                              this.§8"y§.sprite.addChild(this.§catch§);
                              addr335:
                              this.§catch§.x = this.§,#&§.x;
                              addr332:
                              addr355:
                              if(!_loc8_)
                              {
                                 if(!(_loc8_ && _loc2_))
                                 {
                                    §§push(this.§catch§);
                                    if(_loc7_)
                                    {
                                       if(!(_loc8_ && _loc1_))
                                       {
                                          §§pop().y = this.§,#&§.y;
                                          if(!_loc8_)
                                          {
                                             if(false)
                                             {
                                                §§goto(addr332);
                                             }
                                             this.§catch§.scaleX = this.§catch§.scaleY = 2;
                                             addr377:
                                             return;
                                             addr358:
                                          }
                                          §§goto(addr377);
                                       }
                                       §§goto(addr335);
                                    }
                                    §§goto(addr358);
                                 }
                                 §§goto(addr355);
                              }
                           }
                        }
                        §§goto(addr377);
                     }
                  }
               }
            }
         }
         while(true)
         {
            §§push(this.§'>§);
            if(!_loc8_)
            {
               §§pop().§#W§();
               §§goto(addr58);
            }
            §§goto(addr68);
         }
      }
      
      private function §]d§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §§push(this.§8"y§);
            loop0:
            while(true)
            {
               §§pop().isLocked = false;
               while(true)
               {
                  §6#!§(§,!q§.§>k§).§3x§();
                  while(!_loc1_)
                  {
                     continue loop0;
                     addr57:
                     if(!(_loc1_ && _loc2_))
                     {
                        §,#4§ = true;
                        addr64:
                        if(_loc1_)
                        {
                           while(!(_loc1_ && this))
                           {
                              §§goto(addr57);
                              §§goto(addr64);
                           }
                           while(true)
                           {
                              §0!3§ = true;
                              §§goto(addr50);
                           }
                           addr50:
                           addr73:
                        }
                        return;
                     }
                  }
               }
            }
         }
         §§goto(addr73);
      }
      
      private function §+!y§() : void
      {
      }
      
      private function §'!%§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.§catch§);
            if(_loc3_ || _loc2_)
            {
               if(§§pop())
               {
                  loop2:
                  while(true)
                  {
                     §§push(this.§catch§);
                     addr77:
                     while(true)
                     {
                        §§pop().update(param1);
                        while(true)
                        {
                           §§push(this.§catch§);
                           if(!_loc3_)
                           {
                              break;
                           }
                           if(!§§pop().§<"M§)
                           {
                              if(_loc3_)
                              {
                                 if(_loc2_)
                                 {
                                    continue;
                                 }
                                 if(_loc2_)
                                 {
                                    continue loop2;
                                 }
                                 this.§8"y§.sprite.removeChild(this.§catch§,true);
                              }
                           }
                        }
                     }
                  }
                  addr75:
               }
               return;
            }
            §§goto(addr77);
         }
         §§goto(addr75);
      }
   }
}
