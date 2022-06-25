package §<x§
{
   import §!!K§.§else§;
   import §"x§.§-8§;
   import §,!!§.§#!Y§;
   import §3!G§.§ y§;
   import §5!c§.§9'§;
   import §5!c§.§try§;
   import §7!B§.§;R§;
   import §7!B§.DisplayObject;
   import §7!B§.Sprite;
   import §@^§.§"i§;
   import §@^§.§#<§;
   import §@^§.§<!T§;
   import §^!Y§.§'R§;
   
   public class §-^§
   {
      
      public static const §+a§:Boolean = true;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §+a§ = true;
         }
      }
      
      private var §+]§:§'R§;
      
      private var §#!!§:§#<§;
      
      private var §,!T§:Vector.<§#Q§>;
      
      private var §@!^§:Sprite;
      
      private var §!3§:Sprite;
      
      private var §&P§:Sprite;
      
      private var §'G§:Number;
      
      private var §2!?§:Number;
      
      private var §5^§:Number;
      
      private var §2!-§:Boolean = true;
      
      private var §1!M§:Boolean = true;
      
      private var §[!L§:§try§;
      
      private var §!!-§:Number;
      
      public function §-^§(param1:String, param2:Number, param3:§'R§, param4:Number)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && param3))
         {
            this.§,!T§ = new Vector.<§#Q§>();
            loop0:
            while(true)
            {
               super();
               while(true)
               {
                  this.§+]§ = param3;
                  loop2:
                  while(_loc6_ || param3)
                  {
                     this.§2!?§ = 0;
                     while(!_loc5_)
                     {
                        this.§5^§ = 0;
                        loop4:
                        while(true)
                        {
                           this.§'G§ = param2;
                           loop5:
                           while(true)
                           {
                              this.§@!^§ = new Sprite();
                              while(_loc6_)
                              {
                                 this.§!3§ = new Sprite();
                                 loop7:
                                 while(!(_loc5_ && param1))
                                 {
                                    if(!_loc5_)
                                    {
                                       this.§&P§ = new Sprite();
                                       do
                                       {
                                          this.§!!-§ = param4;
                                          while(true)
                                          {
                                             if(!(_loc5_ && param1))
                                             {
                                                continue loop4;
                                             }
                                             continue loop7;
                                             addr79:
                                             this.§]a§(param1,param4);
                                             if(_loc5_ && this)
                                             {
                                                continue;
                                             }
                                             §§goto(addr41);
                                          }
                                          continue loop4;
                                       }
                                       while(_loc5_ && param1);
                                       
                                       return;
                                    }
                                    continue loop5;
                                 }
                              }
                              continue loop2;
                           }
                        }
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr128);
      }
      
      public function get §6!t§() : Boolean
      {
         return this.§2!-§;
      }
      
      public function get §5!0§() : Sprite
      {
         return this.§&P§;
      }
      
      public function get §'<§() : Sprite
      {
         return this.§@!^§;
      }
      
      public function get §%o§() : Sprite
      {
         return this.§!3§;
      }
      
      protected function get textureManager() : §'R§
      {
         return this.§+]§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§7!i§();
            loop0:
            while(true)
            {
               §§push(this.§@!^§);
               if(_loc2_)
               {
                  if(§§pop())
                  {
                     loop1:
                     while(true)
                     {
                        §§push(this.§@!^§);
                        addr135:
                        while(true)
                        {
                           §§pop().dispose();
                           addr136:
                           while(true)
                           {
                              this.§@!^§ = null;
                              addr124:
                              while(true)
                              {
                                 if(_loc1_)
                                 {
                                    continue loop0;
                                 }
                                 addr126:
                              }
                           }
                        }
                        loop9:
                        while(true)
                        {
                           if(_loc1_ && _loc2_)
                           {
                              continue loop1;
                           }
                           this.§!3§ = null;
                           loop10:
                           while(true)
                           {
                              addr38:
                              while(true)
                              {
                                 §§push(this.§&P§);
                                 if(!_loc1_)
                                 {
                                    if(§§pop())
                                    {
                                       while(true)
                                       {
                                          §§push(this.§&P§);
                                          addr46:
                                          while(true)
                                          {
                                             §§pop().dispose();
                                             while(true)
                                             {
                                                if(_loc1_ && this)
                                                {
                                                   continue loop10;
                                                }
                                                if(!(_loc2_ || _loc1_))
                                                {
                                                   continue loop9;
                                                }
                                                addr71:
                                                if(_loc2_ || _loc1_)
                                                {
                                                   if(!_loc1_)
                                                   {
                                                      if(_loc2_)
                                                      {
                                                         continue;
                                                      }
                                                      §§goto(addr136);
                                                   }
                                                   §§goto(addr124);
                                                }
                                                while(true)
                                                {
                                                   §§push(this.§!3§);
                                                   addr111:
                                                   while(true)
                                                   {
                                                      §§pop().dispose();
                                                      continue loop9;
                                                   }
                                                   §§goto(addr71);
                                                }
                                             }
                                             continue loop10;
                                          }
                                       }
                                    }
                                    return;
                                 }
                                 §§goto(addr46);
                                 continue loop10;
                              }
                              continue loop1;
                           }
                        }
                        §§goto(addr135);
                     }
                  }
                  while(true)
                  {
                     §§push(this.§!3§);
                     if(_loc2_ || _loc2_)
                     {
                        if(§§pop())
                        {
                           §§goto(addr109);
                        }
                        §§goto(addr38);
                     }
                     §§goto(addr111);
                     §§goto(addr126);
                  }
               }
               §§goto(addr135);
            }
         }
         §§goto(addr136);
      }
      
      public function §04§() : Boolean
      {
         return this.§1!M§;
      }
      
      public function §@!v§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.§1!M§);
            loop0:
            while(§§pop() != param1)
            {
               while(true)
               {
                  this.§1!M§ = param1;
                  while(true)
                  {
                     §§push(param1);
                     if(_loc2_)
                     {
                        continue loop0;
                     }
                     if(!§§pop())
                     {
                        if(!(_loc2_ && param1))
                        {
                           this.§7!i§();
                           break;
                        }
                        break;
                     }
                     this.§]a§(this.§#!!§.mName,this.§!!-§);
                     if(!_loc3_)
                     {
                        break;
                     }
                     if(_loc2_ && _loc3_)
                     {
                        continue;
                     }
                     if(!_loc3_)
                     {
                        break loop0;
                     }
                     §§goto(addr25);
                  }
                  if(_loc2_ && this)
                  {
                     §§goto(addr93);
                  }
                  §§goto(addr92);
                  continue loop0;
               }
               return;
            }
         }
      }
      
      public function § 1§() : String
      {
         return this.§#!!§.§>A§;
      }
      
      private function §7!i§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         loop0:
         while(true)
         {
            §§push(this.§!3§);
            if(!_loc2_)
            {
               if(§§pop().numChildren <= 0)
               {
                  loop1:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(this.§@!^§);
                        if(!_loc2_)
                        {
                           if(§§pop().numChildren <= 0)
                           {
                              loop3:
                              while(_loc1_)
                              {
                                 do
                                 {
                                    if(this.§,!T§.length <= 0)
                                    {
                                       if(_loc1_)
                                       {
                                          if(_loc1_ || _loc2_)
                                          {
                                             return;
                                          }
                                          continue loop3;
                                          continue loop3;
                                       }
                                    }
                                    else
                                    {
                                       this.§,!T§.pop().dispose();
                                    }
                                    if(!(_loc2_ && _loc2_))
                                    {
                                       continue;
                                    }
                                 }
                                 while(_loc1_);
                                 
                                 continue loop1;
                              }
                              continue loop0;
                           }
                           addr93:
                           this.§@!^§.removeChildAt(0,true);
                           continue;
                        }
                        §§goto(addr93);
                     }
                  }
               }
               else
               {
                  §§push(this.§!3§);
               }
            }
            §§pop().removeChildAt(0,true);
         }
      }
      
      private function §]a§(param1:String, param2:Number) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc4_:§<!T§ = null;
         var _loc5_:Sprite = null;
         var _loc6_:§#Q§ = null;
         if(!(_loc8_ && this))
         {
            this.§#!!§ = §"i§.§<!F§(param1);
            loop0:
            while(true)
            {
               if(this.§#!!§ == null)
               {
                  loop1:
                  while(true)
                  {
                     §§push(§-8§);
                     §§push("UNKNOWN LEVEL THEME! ");
                     if(!_loc8_)
                     {
                        §§push(§§pop() + param1);
                     }
                     §§pop().log(§§pop());
                     addr117:
                     while(true)
                     {
                        §§push(§ y§.§!n§);
                        if(!_loc8_)
                        {
                           §§push(§§pop());
                        }
                        param1 = §§pop();
                        addr102:
                        while(!_loc7_)
                        {
                           continue loop1;
                        }
                        addr94:
                        this.§#!!§ = §"i§.§<!F§(param1);
                     }
                  }
               }
               loop2:
               while(true)
               {
                  this.§@!^§.y = this.§'G§;
                  addr85:
                  while(!_loc8_)
                  {
                     this.§!3§.y = this.§'G§;
                     loop4:
                     for(; !_loc8_; while(_loc7_ || param2)
                     {
                        continue loop0;
                     })
                     {
                        while(true)
                        {
                           this.§&P§.y = this.§'G§;
                           continue loop4;
                           addr40:
                           if(_loc7_ || param1)
                           {
                              if(true)
                              {
                                 var _loc3_:int = 0;
                                 addr280:
                                 if(_loc3_ < this.§#!!§.§,!T§.length)
                                 {
                                    _loc4_ = this.§#!!§.§,!T§[_loc3_];
                                    if(_loc7_)
                                    {
                                       §§push(§else§.§@g§);
                                       if(!_loc8_)
                                       {
                                          §§push(!§§pop());
                                          if(_loc7_ || this)
                                          {
                                             addr159:
                                             if(!§§pop())
                                             {
                                                if(!(_loc8_ && param1))
                                                {
                                                   §§pop();
                                                   if(!_loc8_)
                                                   {
                                                      §§push(_loc4_.§;f§);
                                                      if(!(_loc8_ && _loc3_))
                                                      {
                                                         addr181:
                                                         addr180:
                                                         if(!§§pop())
                                                         {
                                                            if(_loc7_)
                                                            {
                                                               addr184:
                                                               _loc5_ = new Sprite();
                                                               _loc6_ = new §#Q§(_loc4_,_loc5_,this.§+]§,param2);
                                                               if(!_loc8_)
                                                               {
                                                                  this.§,!T§.push(_loc6_);
                                                                  addr260:
                                                                  if(_loc6_.§-!b§)
                                                                  {
                                                                     if(!(_loc8_ && param2))
                                                                     {
                                                                        this.§!3§.addChild(_loc5_);
                                                                        if(!(_loc8_ && this))
                                                                        {
                                                                           if(_loc7_ || param2)
                                                                           {
                                                                              addr279:
                                                                              _loc3_++;
                                                                              §§goto(addr280);
                                                                              addr261:
                                                                              addr245:
                                                                           }
                                                                           §§goto(addr260);
                                                                        }
                                                                     }
                                                                     §§goto(addr280);
                                                                  }
                                                                  this.§@!^§.addChild(_loc5_);
                                                                  if(_loc7_ || param1)
                                                                  {
                                                                     if(false)
                                                                     {
                                                                        §§goto(addr260);
                                                                     }
                                                                     §§goto(addr261);
                                                                  }
                                                                  §§goto(addr280);
                                                               }
                                                               §§goto(addr245);
                                                            }
                                                            §§goto(addr279);
                                                         }
                                                         if(_loc4_.§[z§)
                                                         {
                                                            if(_loc7_ || param2)
                                                            {
                                                               addr272:
                                                               this.§7!v§(parseInt(_loc4_.§[z§,16));
                                                            }
                                                         }
                                                         §§goto(addr279);
                                                      }
                                                      §§goto(addr181);
                                                   }
                                                   §§goto(addr272);
                                                }
                                             }
                                             §§goto(addr181);
                                          }
                                          §§goto(addr180);
                                       }
                                       §§goto(addr159);
                                    }
                                    §§goto(addr184);
                                 }
                              }
                              continue;
                              return;
                           }
                           break;
                        }
                        §§goto(addr102);
                     }
                     continue loop2;
                  }
               }
               if(_loc8_ && _loc3_)
               {
                  continue;
               }
               this.§7L§();
               if(_loc7_)
               {
                  if(_loc7_)
                  {
                     §§goto(addr40);
                  }
                  §§goto(addr85);
               }
               §§goto(addr55);
            }
         }
         §§goto(addr117);
      }
      
      private function §7L§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§;R§ = null;
         if(!(_loc3_ && _loc1_))
         {
            §§push(this.§#!!§);
            if(_loc2_)
            {
               §§push(§§pop().§"7§);
               if(!_loc3_)
               {
                  if(§§pop())
                  {
                     if(!_loc3_)
                     {
                        this.§7!v§(this.§#!!§.§"7§);
                        if(_loc2_ || this)
                        {
                        }
                        addr62:
                        §§push(this);
                        if(_loc2_)
                        {
                           §§push(uint(0));
                           if(_loc2_ || _loc3_)
                           {
                              if(!§§pop())
                              {
                                 if(_loc2_)
                                 {
                                    addr88:
                                    §§pop();
                                    §§push(uint(this.§#!!§.§`!w§));
                                 }
                              }
                              _loc1_ = §§pop().createGroundQuad(§§pop());
                              if(!_loc3_)
                              {
                                 _loc1_.y = 0;
                                 if(_loc2_)
                                 {
                                    this.§&P§.addChild(_loc1_);
                                 }
                              }
                              §§goto(addr107);
                           }
                        }
                        §§goto(addr88);
                     }
                  }
                  addr60:
                  §§push(this.§#!!§.§`!w§);
               }
               if(§§pop())
               {
                  §§goto(addr62);
               }
               addr107:
               return;
            }
            §§goto(addr60);
         }
         §§goto(addr62);
      }
      
      protected function createGroundQuad(param1:uint) : §;R§
      {
         return new §;R§(4096,4096,param1);
      }
      
      private function §7!v§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            §§push(§else§.§^!A§);
            if(_loc2_ || _loc2_)
            {
               if(!§§pop())
               {
               }
               §§goto(addr49);
            }
            §§pop().color = param1;
         }
         addr49:
         if(!_loc3_)
         {
            §§push(§else§.§^!A§);
         }
      }
      
      public function §"!j§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§7!i§();
            while(true)
            {
               §§push(§-8§);
               §§push("Switch background! NEW BACKGROUND NAME = ");
               if(_loc3_)
               {
                  §§push(§§pop() + param1);
               }
               §§pop().log(§§pop());
               §§goto(addr73);
            }
         }
         addr73:
         while(true)
         {
            this.§]a§(param1,this.§!!-§);
            if(_loc3_ || _loc3_)
            {
               if(!(_loc2_ && param1))
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function §9!p§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:§#Q§ = null;
         if(!(_loc7_ && _loc3_))
         {
            if(param1 == this.§2!-§)
            {
               if(_loc6_)
               {
                  §§goto(addr42);
               }
            }
            this.§2!-§ = param1;
            for each(_loc3_ in this.§,!T§)
            {
               if(_loc6_)
               {
                  _loc3_.§9!p§(param1);
               }
            }
            return;
         }
         addr42:
      }
      
      public function §0!j§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §§push(§9'§.§<!5§("CHANNEL_AMBIENT"));
            loop0:
            while(true)
            {
               §§push(§§pop() == null);
               addr106:
               while(true)
               {
                  if(§§pop())
                  {
                     while(§§pop())
                     {
                        if(!(_loc2_ && _loc1_))
                        {
                           §9'§.playSound(this.§#!!§.§8%§,"CHANNEL_AMBIENT",999);
                        }
                        if(!(_loc2_ && _loc1_))
                        {
                           addr100:
                           break;
                        }
                        continue loop0;
                     }
                     return;
                     addr67:
                  }
                  while(true)
                  {
                     §§pop();
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr100);
      }
      
      public function §5!e§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §9'§.§7!,§("CHANNEL_AMBIENT");
         }
      }
      
      public function §@!S§(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:DisplayObject = null;
         if(_loc3_ || _loc2_)
         {
            §§push(param1);
            if(_loc3_)
            {
               §§push(this.§@!^§);
               if(!(_loc4_ && _loc3_))
               {
                  if(§§pop() < §§pop().numChildren)
                  {
                     if(_loc3_)
                     {
                        _loc2_ = this.§@!^§.getChildAt(param1);
                        if(_loc3_)
                        {
                           addr104:
                           if(_loc2_)
                           {
                              if(!_loc4_)
                              {
                                 §§push(_loc2_);
                                 §§push(_loc2_.visible);
                                 if(!(_loc4_ && this))
                                 {
                                    §§push(!§§pop());
                                 }
                                 §§pop().visible = §§pop();
                              }
                           }
                        }
                        return;
                     }
                     addr77:
                     §§push(this.§!3§);
                     §§push(param1);
                     if(_loc3_ || this)
                     {
                        §§push(§§pop() - this.§@!^§.numChildren);
                     }
                     _loc2_ = §§pop().getChildAt(§§pop());
                  }
                  else
                  {
                     §§push(param1);
                     if(!(_loc4_ && this))
                     {
                        addr73:
                        if(§§pop() - this.§@!^§.numChildren < this.§!3§.numChildren)
                        {
                           §§goto(addr77);
                        }
                     }
                     §§goto(addr73);
                  }
                  §§goto(addr104);
               }
            }
            §§goto(addr73);
         }
         §§goto(addr77);
      }
      
      public function §7!P§(param1:Number, param2:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:int = 0;
         if(_loc6_)
         {
            this.§2!?§ = param1;
            while(true)
            {
               this.§5^§ = param2;
            }
            addr70:
         }
         loop1:
         while(this.§,!T§ != null)
         {
            if(!(_loc5_ && param2))
            {
               if(_loc5_)
               {
                  continue;
               }
               _loc3_ = 0;
            }
            if(_loc6_)
            {
               loop2:
               while(true)
               {
                  loop3:
                  while(true)
                  {
                     if(_loc3_ < this.§,!T§.length)
                     {
                        this.§,!T§[_loc3_].setSideScroll(this.§2!?§,this.§5^§);
                        if(_loc6_)
                        {
                           _loc3_++;
                           if(_loc6_)
                           {
                              if(false)
                              {
                                 continue loop2;
                              }
                              continue;
                           }
                           addr101:
                           §§push(this.§&P§);
                           if(_loc6_ || this)
                           {
                              §§push(this.§&P§.scaleY = 1 / §#!Y§.§0!_§);
                              if(_loc6_ || this)
                              {
                                 §§pop().scaleX = §§pop();
                                 if(!(_loc5_ && this))
                                 {
                                    §§goto(addr136);
                                 }
                                 break;
                              }
                              §§goto(addr205);
                           }
                           while(true)
                           {
                              §§push(this.§'G§);
                              if(_loc6_)
                              {
                                 if(!_loc5_)
                                 {
                                    §§push(this.§5^§);
                                    if(!_loc5_)
                                    {
                                       addr162:
                                       §§push(§§pop() - §§pop());
                                       if(!(_loc5_ && param1))
                                       {
                                          if(_loc6_ || param2)
                                          {
                                             §§pop().y = §§pop();
                                             if(!(_loc5_ && param1))
                                             {
                                                break loop3;
                                             }
                                             §§goto(addr206);
                                          }
                                          §§goto(addr199);
                                       }
                                       §§goto(addr200);
                                    }
                                    §§goto(addr204);
                                 }
                                 §§goto(addr205);
                              }
                              §§goto(addr162);
                           }
                           addr151:
                        }
                        break;
                     }
                     if(_loc6_)
                     {
                        break loop1;
                     }
                     §§push(this.§&P§);
                     loop10:
                     while(true)
                     {
                        §§push(§#!Y§.§%!H§);
                        addr199:
                        while(true)
                        {
                           §§push(-§§pop());
                           addr200:
                           while(true)
                           {
                              §§push(1 / §#!Y§.§0!_§);
                              addr204:
                              while(true)
                              {
                                 §§push(§§pop() * §§pop());
                                 addr205:
                                 while(true)
                                 {
                                    §§pop().x = §§pop();
                                    addr206:
                                    while(true)
                                    {
                                       §§push(this.§&P§);
                                       if(_loc5_ && this)
                                       {
                                          continue loop10;
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                     addr136:
                     §§goto(addr151);
                  }
                  §§goto(addr138);
               }
            }
            else
            {
               §§goto(addr70);
            }
         }
         §§push(this.§&P§);
         if(_loc6_)
         {
            if(§§pop() != null)
            {
               if(_loc6_ || this)
               {
                  §§goto(addr101);
               }
               §§goto(addr206);
            }
            addr138:
            return;
         }
         §§goto(addr101);
      }
      
      public function §"c§() : String
      {
         return this.§#!!§.mName;
      }
      
      public function update(param1:Number) : void
      {
      }
   }
}
