package §&!8§
{
   import §!r§.§2k§;
   import §,§.§ p§;
   import §,§.§]!,§;
   import §6!H§.b2Vec2;
   import §9t§.§"h§;
   import §9t§.§&!W§;
   import §9t§.§35§;
   import §]!a§.Texture;
   import §^a§.§6p§;
   import §^a§.Sprite;
   import flash.filters.GlowFilter;
   
   public class §%$§
   {
      
      public static const §&!D§:Number = 1000;
      
      public static const §7I§:Number = 500;
      
      private static var §`!4§:Array = null;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && §%$§))
         {
            §&!D§ = 1000;
            while(true)
            {
               §7I§ = 500;
               loop1:
               while(_loc2_)
               {
                  while(true)
                  {
                     §`!4§ = null;
                     if(_loc2_ || §%$§)
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
      
      private var §1S§:§[g§;
      
      public var §0"§:int;
      
      public var mW:Number;
      
      public var mH:Number;
      
      public var §6j§:Number;
      
      public var §^!0§:Number;
      
      public var §%!G§:int = -1;
      
      private var §7r§:String;
      
      private var §,!2§:§"h§;
      
      private var §<r§:§"h§;
      
      private var §#P§:§6p§;
      
      private var §&!_§:Number = 0;
      
      private var §6!S§:Number = 0;
      
      public var §`!D§:int = -1;
      
      private var §[C§:int = -1;
      
      private var §=!-§:int = 0;
      
      public var mTryToSpecial:Boolean = false;
      
      public var mIsSpecial:Boolean = false;
      
      public var §>!@§:String = "special";
      
      public var mTryToFly:Boolean = false;
      
      public var mIsFlying:Boolean = false;
      
      public var §!!C§:Boolean = false;
      
      public var mTryToScream:Number = 0;
      
      public var §<!6§:String = "yell";
      
      public var mIsScreaming:Boolean = false;
      
      public var mTryToBlink:Number = 0;
      
      public var §5!=§:String = "blink";
      
      public var mIsBlinking:Boolean = false;
      
      public var §?@§:String = "fly";
      
      public var §2o§:String = "fly_yell";
      
      public var §9!'§:GlowFilter;
      
      private var §0+§:Vector.<§]!,§>;
      
      private var §=7§:§"h§;
      
      private var §8!2§:Sprite = null;
      
      private var §^!I§:§ p§;
      
      public function §%$§(param1:§[g§, param2:Sprite, param3:§ p§)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            super();
         }
         loop0:
         while(true)
         {
            this.§^!I§ = param3;
            while(true)
            {
               this.§1S§ = param1;
               while(_loc4_)
               {
                  continue loop0;
                  this.§7r§ = this.§1S§.§>p§;
                  do
                  {
                     this.§0+§ = new Vector.<§]!,§>();
                     do
                     {
                        this.§8!2§ = param2;
                     }
                     while(_loc5_ && param2);
                     
                  }
                  while(!(_loc4_ || this));
                  
                  if(_loc4_ || param2)
                  {
                     return;
                  }
               }
            }
         }
      }
      
      public function dispose() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§]!,§ = null;
         if(!(_loc3_ && _loc3_))
         {
            this.§#y§();
            if(_loc2_)
            {
               §§goto(addr40);
            }
            §§goto(addr43);
         }
         addr40:
         if(this.§0+§)
         {
            addr43:
            while(this.§0+§.length > 0)
            {
               _loc1_ = this.§0+§.pop();
               if(_loc2_)
               {
                  _loc1_.dispose();
               }
            }
            if(_loc2_ || _loc1_)
            {
               this.§0+§ = null;
            }
         }
      }
      
      public function §19§(param1:int, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            this.mW = param3;
            loop0:
            while(true)
            {
               this.mH = param4;
               addr85:
               while(true)
               {
                  this.§%!G§ = param1;
                  addr46:
                  if(!(_loc5_ && param3))
                  {
                     return;
                     addr53:
                  }
               }
               while(true)
               {
                  if(_loc6_ || param2)
                  {
                     continue;
                  }
                  continue loop0;
               }
               §§goto(addr85);
            }
         }
         §§goto(addr80);
      }
      
      public function §[T§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            if(!param1)
            {
               loop0:
               while(true)
               {
                  §§push(this);
                  §§push(this.mW);
                  if(!_loc2_)
                  {
                     §§push(§§pop() / this.mH);
                  }
                  §§pop().§6j§ = §§pop();
                  while(true)
                  {
                     if(_loc3_ || _loc3_)
                     {
                        if(this.§6j§ < 1)
                        {
                           if(_loc3_)
                           {
                              if(!_loc3_)
                              {
                                 break;
                              }
                              this.§6j§ = 1 / this.§6j§;
                           }
                           while(true)
                           {
                           }
                           addr74:
                        }
                        while(true)
                        {
                           this.§6j§ = Math.min(11,this.§6j§);
                           if(_loc3_)
                           {
                              break;
                           }
                           §§goto(addr74);
                        }
                        if(!_loc2_)
                        {
                           if(!(_loc2_ && _loc3_))
                           {
                              return;
                           }
                           continue loop0;
                        }
                        continue;
                     }
                  }
                  §§goto(addr111);
               }
            }
            this.§6j§ = 1;
         }
         addr111:
      }
      
      public function §+!3§(param1:§&!W§) : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§35§ = null;
         var _loc3_:Texture = null;
         if(_loc5_ || _loc3_)
         {
            §§push(this.§1S§.isGround());
            if(_loc5_)
            {
               if(!§§pop())
               {
                  loop0:
                  while(true)
                  {
                     this.§=7§ = param1.§;5§("SPARKLES");
                     addr64:
                     loop1:
                     while(true)
                     {
                        loop2:
                        while(true)
                        {
                           this.§,!2§ = param1.§;5§(this.§7r§);
                           while(_loc5_ || param1)
                           {
                              if(!_loc6_)
                              {
                                 this.§<r§ = this.§,!2§;
                                 if(_loc5_)
                                 {
                                    if(_loc5_)
                                    {
                                       if(true)
                                       {
                                          break loop2;
                                       }
                                       continue loop2;
                                    }
                                    continue loop0;
                                 }
                                 continue;
                              }
                           }
                           continue loop1;
                        }
                        var _loc4_:* = Number(1);
                        if(_loc5_)
                        {
                           §§push(this.§<r§);
                           if(!(_loc6_ && param1))
                           {
                              if(§§pop())
                              {
                                 addr91:
                                 _loc2_ = this.§<r§.getFrame(0);
                                 addr89:
                                 if(!_loc6_)
                                 {
                                    §§push(_loc2_.scale);
                                    if(_loc5_ || _loc3_)
                                    {
                                       §§push(Number(§§pop()));
                                    }
                                    _loc4_ = §§pop();
                                 }
                                 _loc3_ = _loc2_.texture;
                                 if(!(_loc6_ && param1))
                                 {
                                    addr126:
                                    this.§#P§ = new §6p§(_loc3_);
                                    if(_loc5_)
                                    {
                                       if(!_loc2_)
                                       {
                                          §§push(this.§#P§);
                                          loop4:
                                          while(true)
                                          {
                                             §§push(this.§#P§);
                                             loop5:
                                             while(true)
                                             {
                                                §§push(-§§pop().width);
                                                loop6:
                                                while(true)
                                                {
                                                   §§push(2);
                                                   loop7:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() / §§pop());
                                                      loop8:
                                                      while(true)
                                                      {
                                                         §§pop().x = §§pop();
                                                         loop9:
                                                         while(true)
                                                         {
                                                            §§push(this.§#P§);
                                                            loop10:
                                                            while(true)
                                                            {
                                                               if(_loc5_ || this)
                                                               {
                                                                  if(!_loc6_)
                                                                  {
                                                                     §§push(this.§#P§);
                                                                     if(_loc6_ && param1)
                                                                     {
                                                                        break;
                                                                     }
                                                                     §§push(-§§pop().height);
                                                                     if(!_loc6_)
                                                                     {
                                                                        if(!(_loc5_ || this))
                                                                        {
                                                                           continue loop6;
                                                                        }
                                                                        §§push(2);
                                                                        if(_loc6_)
                                                                        {
                                                                           continue loop7;
                                                                        }
                                                                        §§push(§§pop() / §§pop());
                                                                     }
                                                                     loop11:
                                                                     while(true)
                                                                     {
                                                                        §§pop().y = §§pop();
                                                                        loop12:
                                                                        while(true)
                                                                        {
                                                                           if(!_loc6_)
                                                                           {
                                                                              loop13:
                                                                              while(true)
                                                                              {
                                                                                 §§push(this.§#P§);
                                                                                 loop14:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc4_);
                                                                                    loop15:
                                                                                    while(_loc5_ || this)
                                                                                    {
                                                                                       §§pop().scaleX = §§pop();
                                                                                       loop16:
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc5_ || param1)
                                                                                          {
                                                                                             if(_loc5_ || param1)
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(this.§#P§);
                                                                                                   if(_loc6_)
                                                                                                   {
                                                                                                      continue loop14;
                                                                                                   }
                                                                                                   if(!_loc5_)
                                                                                                   {
                                                                                                      continue loop10;
                                                                                                   }
                                                                                                   if(_loc6_)
                                                                                                   {
                                                                                                      continue loop4;
                                                                                                   }
                                                                                                   §§push(_loc4_);
                                                                                                   if(_loc6_)
                                                                                                   {
                                                                                                      continue loop15;
                                                                                                   }
                                                                                                   if(_loc6_)
                                                                                                   {
                                                                                                      continue loop11;
                                                                                                   }
                                                                                                   if(!(_loc6_ && this))
                                                                                                   {
                                                                                                      if(!(_loc6_ && this))
                                                                                                      {
                                                                                                         §§pop().scaleY = §§pop();
                                                                                                         loop26:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!_loc6_)
                                                                                                            {
                                                                                                               this.mW = this.§#P§.width / 2;
                                                                                                               loop27:
                                                                                                               do
                                                                                                               {
                                                                                                                  this.mH = this.§#P§.height / 2;
                                                                                                                  while(!_loc6_)
                                                                                                                  {
                                                                                                                     this.§8!2§.addChild(this.§#P§);
                                                                                                                     if(!(_loc6_ && _loc2_))
                                                                                                                     {
                                                                                                                        continue loop27;
                                                                                                                     }
                                                                                                                  }
                                                                                                                  continue loop26;
                                                                                                               }
                                                                                                               while(!(_loc5_ || _loc3_));
                                                                                                               
                                                                                                               continue loop16;
                                                                                                               addr198:
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               addr333:
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(this.§#P§);
                                                                                                               break loop26;
                                                                                                            }
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc2_.pivotX);
                                                                                                            addr337:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(-§§pop());
                                                                                                            }
                                                                                                         }
                                                                                                         addr335:
                                                                                                      }
                                                                                                      loop20:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§pop().x = §§pop();
                                                                                                         addr339:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(this.§#P§);
                                                                                                            addr314:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc2_.pivotY);
                                                                                                               if(!_loc5_)
                                                                                                               {
                                                                                                                  continue loop20;
                                                                                                               }
                                                                                                               §§push(-§§pop());
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§pop().y = §§pop();
                                                                                                      continue loop13;
                                                                                                   }
                                                                                                }
                                                                                                return true;
                                                                                                addr178:
                                                                                                addr257:
                                                                                             }
                                                                                             break;
                                                                                          }
                                                                                          continue loop12;
                                                                                       }
                                                                                       continue loop9;
                                                                                    }
                                                                                    continue loop8;
                                                                                 }
                                                                              }
                                                                              addr231:
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§goto(addr231);
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr335);
                                                               }
                                                               §§goto(addr314);
                                                            }
                                                            continue loop5;
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       §§goto(addr333);
                                    }
                                    §§goto(addr257);
                                 }
                                 §§goto(addr198);
                              }
                              else
                              {
                                 _loc3_ = this.§^!I§.§],§.§93§();
                              }
                              §§goto(addr126);
                           }
                           §§goto(addr91);
                        }
                        §§goto(addr89);
                     }
                  }
               }
               return false;
            }
         }
         §§goto(addr64);
      }
      
      public function §+!,§(param1:§2k§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:Array = null;
         var _loc3_:b2Vec2 = null;
         §§push(param1.§4`§);
         if(_loc5_ || _loc2_)
         {
            var _loc4_:* = §§pop();
            if(_loc5_ || param1)
            {
               §§push(§2k§.§#N§);
               if(_loc5_)
               {
                  §§push(_loc4_);
                  if(_loc5_ || this)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!(_loc6_ && _loc2_))
                        {
                           §§goto(addr119);
                        }
                        §§goto(addr134);
                     }
                     else
                     {
                        §§push(§2k§.§<!"§);
                        if(_loc5_ || this)
                        {
                           §§goto(addr132);
                        }
                        §§goto(addr137);
                     }
                  }
                  §§goto(addr132);
               }
               §§goto(addr137);
            }
            addr119:
            §§push(0);
            if(_loc6_)
            {
               addr132:
               if(§§pop() === _loc4_)
               {
                  addr134:
                  §§push(1);
                  if(!_loc6_)
                  {
                     addr137:
                  }
               }
               else
               {
                  §§push(2);
               }
            }
            §§goto(addr153);
         }
         addr153:
         switch(§§pop())
         {
            case 0:
               _loc2_ = param1.§&!B§();
               _loc3_ = _loc2_[0];
               if(!(_loc6_ && _loc3_))
               {
                  §§push(this);
                  §§push(_loc3_.x);
                  if(!(_loc6_ && _loc3_))
                  {
                     §§push(§§pop() / § p§.§]!E§);
                  }
                  §§pop().§&!_§ = §§pop();
                  if(_loc5_)
                  {
                     §§push(this);
                     §§push(_loc3_.y);
                     if(_loc5_)
                     {
                        §§push(§§pop() / § p§.§]!E§);
                     }
                     §§pop().§6!S§ = §§pop();
                     if(!_loc5_)
                     {
                     }
                     break;
                  }
                  addr154:
                  this.§8P§();
                  break;
               }
               break;
            case 1:
               §§goto(addr154);
            default:
               §§goto(addr154);
         }
      }
      
      public function §>s§() : Array
      {
         return §,!D§.§>s§(null,this.§1S§.§[n§());
      }
      
      public function §"g§() : Array
      {
         return §,!D§.§"g§(null,this.§1S§.§[n§());
      }
      
      public function §?L§() : Array
      {
         return §,!D§.§?L§(null);
      }
      
      public function §1Y§() : void
      {
      }
      
      public function setScale(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.§8!2§.scaleX = this.§8!2§.scaleY = param1;
         }
      }
      
      public function §8P§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§35§ = null;
         if(_loc5_ || _loc1_)
         {
            §§push(this.§,!2§);
            if(!(_loc4_ && _loc1_))
            {
               if(!§§pop())
               {
                  if(_loc5_)
                  {
                     §§goto(addr198);
                  }
                  else
                  {
                     addr710:
                     §§push(this.§<r§);
                     if(!(_loc4_ && _loc2_))
                     {
                        if(§§pop())
                        {
                           addr722:
                           _loc1_ = this.§<r§.getFrame(this.§=!-§);
                           if(!_loc4_)
                           {
                              §§push(this.§#P§);
                              loop62:
                              while(true)
                              {
                                 §§push(Boolean(§§pop()));
                                 if(_loc5_)
                                 {
                                    if(§§pop())
                                    {
                                       while(true)
                                       {
                                          §§pop();
                                          loop78:
                                          while(true)
                                          {
                                             §§push(Boolean(_loc1_));
                                             if(_loc5_ || _loc1_)
                                             {
                                                while(§§pop())
                                                {
                                                   loop64:
                                                   while(true)
                                                   {
                                                      §§push(this.§#P§);
                                                      loop65:
                                                      while(true)
                                                      {
                                                         §§pop().texture = _loc1_.texture;
                                                         while(true)
                                                         {
                                                            §§push(this.§#P§);
                                                            while(!_loc4_)
                                                            {
                                                               §§push(_loc1_.pivotX);
                                                               loop68:
                                                               while(true)
                                                               {
                                                                  §§push(-§§pop());
                                                                  loop69:
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§&!_§);
                                                                     loop70:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop() - §§pop());
                                                                        loop71:
                                                                        while(true)
                                                                        {
                                                                           §§pop().x = §§pop();
                                                                           loop72:
                                                                           while(true)
                                                                           {
                                                                              §§push(this.§#P§);
                                                                              loop73:
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc1_.pivotY);
                                                                                 if(!_loc5_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 §§push(-§§pop());
                                                                                 while(!_loc4_)
                                                                                 {
                                                                                    if(!(_loc5_ || this))
                                                                                    {
                                                                                       continue loop69;
                                                                                    }
                                                                                    §§push(this.§6!S§);
                                                                                    if(!_loc5_)
                                                                                    {
                                                                                       continue loop70;
                                                                                    }
                                                                                    §§push(§§pop() - §§pop());
                                                                                    loop75:
                                                                                    while(true)
                                                                                    {
                                                                                       §§pop().y = §§pop();
                                                                                       addr817:
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc4_ && this)
                                                                                          {
                                                                                             continue loop78;
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             addr781:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(this.§#P§);
                                                                                                loop81:
                                                                                                while(_loc5_)
                                                                                                {
                                                                                                   §§push(_loc1_.scale);
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§pop().scaleX = §§pop();
                                                                                                      addr789:
                                                                                                      while(_loc5_)
                                                                                                      {
                                                                                                         if(!_loc4_)
                                                                                                         {
                                                                                                            §§push(this.§#P§);
                                                                                                            if(_loc5_)
                                                                                                            {
                                                                                                               continue loop73;
                                                                                                            }
                                                                                                            continue loop81;
                                                                                                         }
                                                                                                         continue loop64;
                                                                                                      }
                                                                                                      addr744:
                                                                                                      §§push(_loc1_.scale);
                                                                                                      continue loop72;
                                                                                                      if(!(_loc4_ && this))
                                                                                                      {
                                                                                                         continue loop75;
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                continue loop65;
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       continue loop78;
                                                                                    }
                                                                                 }
                                                                                 continue loop71;
                                                                              }
                                                                              continue loop68;
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            continue loop62;
                                                         }
                                                      }
                                                   }
                                                }
                                                addr875:
                                                return;
                                                addr848:
                                             }
                                             break;
                                          }
                                       }
                                       addr873:
                                    }
                                    §§goto(addr848);
                                 }
                                 §§goto(addr873);
                              }
                           }
                           §§goto(addr824);
                        }
                        §§goto(addr875);
                     }
                     §§goto(addr722);
                     addr248:
                     addr702:
                  }
               }
               else
               {
                  §§push(this.§!!C§);
                  if(!(_loc4_ && _loc2_))
                  {
                     if(§§pop())
                     {
                        if(!_loc4_)
                        {
                           this.§=!-§ = 1;
                           if(_loc4_)
                           {
                              this.mIsFlying = true;
                              addr621:
                              addr616:
                           }
                        }
                        §§goto(addr722);
                     }
                     else
                     {
                        §§push(this.§1S§);
                        if(_loc5_)
                        {
                           §§push(§§pop().getSpecialAnimationProgress());
                           if(_loc5_ || _loc1_)
                           {
                              §§push(0);
                              if(!(_loc4_ && this))
                              {
                                 §§push(§§pop() >= §§pop());
                                 if(!_loc4_)
                                 {
                                    §§push(§§pop());
                                    if(!_loc4_)
                                    {
                                       if(§§pop())
                                       {
                                          if(_loc5_ || this)
                                          {
                                             §§pop();
                                             if(_loc5_)
                                             {
                                                §§push(this.§,!2§);
                                                if(!(_loc4_ && _loc3_))
                                                {
                                                   §§push(this.§>!@§);
                                                   if(!(_loc4_ && _loc2_))
                                                   {
                                                      §§push(§§pop().getSubAnimation(§§pop()));
                                                      if(_loc5_)
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                         if(!(_loc4_ && _loc1_))
                                                         {
                                                            addr107:
                                                            if(§§pop())
                                                            {
                                                               if(!_loc4_)
                                                               {
                                                                  this.§<r§ = this.§,!2§.getSubAnimation(this.§>!@§);
                                                                  if(_loc5_ || _loc2_)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        this.§=!-§ = this.§<r§.getFrameCount() * this.§1S§.getSpecialAnimationProgress();
                                                                        if(!_loc4_)
                                                                        {
                                                                           §§push(this.§=!-§ == this.§<r§.getFrameCount() - 1);
                                                                           if(_loc5_ || _loc1_)
                                                                           {
                                                                              §§push(§§pop());
                                                                              if(_loc5_ || this)
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    if(_loc5_ || _loc3_)
                                                                                    {
                                                                                       §§pop();
                                                                                       if(_loc5_)
                                                                                       {
                                                                                          if(false)
                                                                                          {
                                                                                             continue;
                                                                                          }
                                                                                          addr209:
                                                                                          §§push(this.§1S§.getSpecialAnimationTimeLeft());
                                                                                          if(!_loc4_)
                                                                                          {
                                                                                             addr212:
                                                                                             §§push(100);
                                                                                             if(_loc5_)
                                                                                             {
                                                                                                §§push(§§pop() > §§pop());
                                                                                                if(!(_loc4_ && _loc2_))
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                addr706:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop());
                                                                                                   addr707:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§pop();
                                                                                                            addr709:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(this.§,!2§);
                                                                                                               addr688:
                                                                                                               loop28:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(this.§>!@§);
                                                                                                                  addr690:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop().getSubAnimation(§§pop()));
                                                                                                                     addr691:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(Boolean(§§pop()));
                                                                                                                     }
                                                                                                                     continue loop28;
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         addr708:
                                                                                                      }
                                                                                                      addr692:
                                                                                                      addr694:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         addr693:
                                                                                                         while(!§§pop())
                                                                                                         {
                                                                                                            §§push(this.mTryToScream);
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(0);
                                                                                                            }
                                                                                                         }
                                                                                                         break;
                                                                                                      }
                                                                                                      addr694:
                                                                                                      addr684:
                                                                                                      this.§<r§ = this.§,!2§.getSubAnimation(this.§>!@§);
                                                                                                      this.mIsSpecial = true;
                                                                                                      §§goto(addr710);
                                                                                                   }
                                                                                                }
                                                                                                addr706:
                                                                                             }
                                                                                             loop61:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop() > §§pop());
                                                                                                loop43:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop());
                                                                                                   addr677:
                                                                                                   loop14:
                                                                                                   while(§§pop())
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§pop();
                                                                                                         addr679:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(this.mTryToFly);
                                                                                                            addr658:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop() > 0);
                                                                                                               addr660:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(!_loc4_)
                                                                                                                  {
                                                                                                                     break loop14;
                                                                                                                  }
                                                                                                                  §§goto(addr706);
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   loop48:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop());
                                                                                                      addr664:
                                                                                                      addr594:
                                                                                                      loop9:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!_loc4_)
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(§§pop())
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§pop();
                                                                                                                     addr668:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(this.§,!2§);
                                                                                                                        addr625:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(this.§2o§);
                                                                                                                           addr627:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(_loc5_ || _loc1_)
                                                                                                                              {
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop().getSubAnimation(§§pop()));
                                                                                                                                    addr635:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(!_loc4_)
                                                                                                                                       {
                                                                                                                                          §§push(Boolean(§§pop()));
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             addr639:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(!§§pop())
                                                                                                                                                {
                                                                                                                                                   §§push(this.mTryToScream);
                                                                                                                                                   while(_loc5_)
                                                                                                                                                   {
                                                                                                                                                      §§push(0);
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() > §§pop());
                                                                                                                                                         addr592:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(!_loc4_)
                                                                                                                                                            {
                                                                                                                                                               break loop9;
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr708);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr674);
                                                                                                                                                   addr588:
                                                                                                                                                }
                                                                                                                                                addr640:
                                                                                                                                                if(_loc5_ || _loc1_)
                                                                                                                                                {
                                                                                                                                                   this.§<r§ = this.§,!2§.getSubAnimation(this.§2o§);
                                                                                                                                                   this.mIsScreaming = true;
                                                                                                                                                   addr654:
                                                                                                                                                   §§goto(addr621);
                                                                                                                                                   addr654:
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   §§goto(addr694);
                                                                                                                                                }
                                                                                                                                                §§goto(addr710);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          addr638:
                                                                                                                                       }
                                                                                                                                       §§goto(addr691);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 addr634:
                                                                                                                              }
                                                                                                                              §§goto(addr690);
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  addr667:
                                                                                                               }
                                                                                                               §§goto(addr638);
                                                                                                            }
                                                                                                            addr666:
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§goto(addr677);
                                                                                                         }
                                                                                                         §§goto(addr692);
                                                                                                         continue loop48;
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop());
                                                                                                         loop1:
                                                                                                         while(_loc5_ || this)
                                                                                                         {
                                                                                                            if(!(_loc4_ && _loc1_))
                                                                                                            {
                                                                                                               if(§§pop())
                                                                                                               {
                                                                                                                  loop2:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§pop();
                                                                                                                     loop3:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(this.§,!2§);
                                                                                                                        loop4:
                                                                                                                        while(!_loc4_)
                                                                                                                        {
                                                                                                                           §§push(this.§<!6§);
                                                                                                                           loop5:
                                                                                                                           for(; !(_loc4_ && this); if(!(_loc5_ || this))
                                                                                                                           {
                                                                                                                              continue;
                                                                                                                           },§§push(§§pop().getSubAnimation(§§pop())),if(!(_loc4_ && _loc3_))
                                                                                                                           {
                                                                                                                              addr334:
                                                                                                                              §§push(Boolean(§§pop()));
                                                                                                                              if(_loc4_ && _loc1_)
                                                                                                                              {
                                                                                                                                 continue loop2;
                                                                                                                              }
                                                                                                                              if(_loc5_)
                                                                                                                              {
                                                                                                                                 if(_loc5_)
                                                                                                                                 {
                                                                                                                                    if(_loc5_ || _loc1_)
                                                                                                                                    {
                                                                                                                                       if(!_loc4_)
                                                                                                                                       {
                                                                                                                                          addr705:
                                                                                                                                          if(_loc5_ || _loc3_)
                                                                                                                                          {
                                                                                                                                             §§goto(addr362);
                                                                                                                                          }
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§goto(addr706);
                                                                                                                                          }
                                                                                                                                          addr705:
                                                                                                                                       }
                                                                                                                                       §§goto(addr678);
                                                                                                                                    }
                                                                                                                                    §§goto(addr592);
                                                                                                                                 }
                                                                                                                                 §§goto(addr392);
                                                                                                                              }
                                                                                                                              §§goto(addr393);
                                                                                                                           },§§goto(addr474))
                                                                                                                           {
                                                                                                                              §§push(§§pop().getSubAnimation(§§pop()));
                                                                                                                              loop6:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(Boolean(§§pop()));
                                                                                                                                 loop7:
                                                                                                                                 while(_loc5_)
                                                                                                                                 {
                                                                                                                                    if(_loc5_)
                                                                                                                                    {
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(!§§pop())
                                                                                                                                          {
                                                                                                                                             §§push(this.mTryToBlink);
                                                                                                                                             if(!(_loc4_ && _loc2_))
                                                                                                                                             {
                                                                                                                                                §§push(0);
                                                                                                                                                if(!_loc4_)
                                                                                                                                                {
                                                                                                                                                   if(_loc4_)
                                                                                                                                                   {
                                                                                                                                                      continue loop61;
                                                                                                                                                   }
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() > §§pop());
                                                                                                                                                      loop39:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop());
                                                                                                                                                         addr545:
                                                                                                                                                         loop59:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(§§pop())
                                                                                                                                                            {
                                                                                                                                                               loop50:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§pop();
                                                                                                                                                                  loop42:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(this.§,!2§);
                                                                                                                                                                     loop29:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc5_)
                                                                                                                                                                        {
                                                                                                                                                                           continue loop4;
                                                                                                                                                                        }
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(this.§5!=§);
                                                                                                                                                                           addr473:
                                                                                                                                                                           addr478:
                                                                                                                                                                           loop31:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop().getSubAnimation(§§pop()));
                                                                                                                                                                              addr474:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!_loc5_)
                                                                                                                                                                                 {
                                                                                                                                                                                    continue loop6;
                                                                                                                                                                                 }
                                                                                                                                                                                 if(_loc5_)
                                                                                                                                                                                 {
                                                                                                                                                                                    break loop31;
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr635);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(Boolean(§§pop()));
                                                                                                                                                                              loop16:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!_loc5_)
                                                                                                                                                                                 {
                                                                                                                                                                                    continue loop7;
                                                                                                                                                                                 }
                                                                                                                                                                                 if(!(_loc4_ && _loc1_))
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc5_ || _loc2_)
                                                                                                                                                                                    {
                                                                                                                                                                                       loop17:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!§§pop())
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(this.mTryToFly);
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(Boolean(§§pop()));
                                                                                                                                                                                                addr393:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc4_ && _loc1_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue loop16;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   if(_loc4_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue loop50;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   if(_loc4_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue loop39;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   if(_loc4_ && _loc2_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue loop43;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§push(§§pop());
                                                                                                                                                                                                   if(_loc4_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue loop59;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   if(!_loc5_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue loop1;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   if(§§pop())
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue loop2;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr362:
                                                                                                                                                                                                   loop22:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(§§pop())
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!(_loc4_ && _loc1_))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!_loc4_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               this.§<r§ = this.§,!2§.getSubAnimation(this.§?@§);
                                                                                                                                                                                                               if(!_loc4_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(_loc5_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!_loc4_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           this.mIsFlying = true;
                                                                                                                                                                                                                           addr294:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(!_loc4_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(!_loc4_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(!(_loc4_ && _loc1_))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(!_loc4_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§goto(addr710);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§goto(addr668);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr654);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr621);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              else
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(!(_loc5_ || _loc2_))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       continue loop3;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    if(_loc5_ || _loc1_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       this.§<r§ = this.§,!2§.getSubAnimation(this.§5!=§);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§goto(addr616);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr710);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 addr497:
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr621);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        addr290:
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     else
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        this.mIsScreaming = true;
                                                                                                                                                                                                                        break loop17;
                                                                                                                                                                                                                        addr582:
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!(_loc4_ && _loc1_))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        this.mIsBlinking = true;
                                                                                                                                                                                                                        if(!(_loc4_ && _loc1_))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(_loc4_ && _loc1_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              break loop17;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr710);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        break loop22;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr709);
                                                                                                                                                                                                                     §§goto(addr710);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               break;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr640);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         break;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      this.§<r§ = this.§,!2§;
                                                                                                                                                                                                      if(!(_loc4_ && this))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc5_ || _loc1_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr270:
                                                                                                                                                                                                            if(_loc4_ && _loc3_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(_loc4_ && _loc3_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     continue loop42;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  if(!_loc4_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(this.§,!2§);
                                                                                                                                                                                                                     if(!_loc5_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        continue loop29;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     if(_loc5_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(this.§?@§);
                                                                                                                                                                                                                        if(!_loc4_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           continue loop5;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr473);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  else
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr575:
                                                                                                                                                                                                                     this.§<r§ = this.§,!2§.getSubAnimation(this.§<!6§);
                                                                                                                                                                                                                     §§goto(addr582);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr270);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               continue loop42;
                                                                                                                                                                                                               addr437:
                                                                                                                                                                                                            }
                                                                                                                                                                                                            if(_loc5_ || _loc2_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(_loc5_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(_loc5_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(false)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§goto(addr290);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr710);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     addr288:
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr694);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr684);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            else
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§goto(addr679);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr688);
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      break;
                                                                                                                                                                                                      §§goto(addr294);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr722);
                                                                                                                                                                                                }
                                                                                                                                                                                                continue loop50;
                                                                                                                                                                                             }
                                                                                                                                                                                             addr392:
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr497);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr710);
                                                                                                                                                                                       addr495:
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr693);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr658);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               addr546:
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr495);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr591);
                                                                                                                                             }
                                                                                                                                             break;
                                                                                                                                          }
                                                                                                                                          §§goto(addr575);
                                                                                                                                       }
                                                                                                                                       §§goto(addr588);
                                                                                                                                       addr573:
                                                                                                                                    }
                                                                                                                                    §§goto(addr660);
                                                                                                                                 }
                                                                                                                                 §§goto(addr667);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr627);
                                                                                                                        }
                                                                                                                        §§goto(addr625);
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr573);
                                                                                                            }
                                                                                                            §§goto(addr707);
                                                                                                         }
                                                                                                         §§goto(addr664);
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr674);
                                                                                       }
                                                                                       §§goto(addr621);
                                                                                    }
                                                                                    §§goto(addr706);
                                                                                 }
                                                                                 break;
                                                                              }
                                                                              §§goto(addr666);
                                                                           }
                                                                           §§goto(addr658);
                                                                        }
                                                                        §§goto(addr654);
                                                                     }
                                                                     addr223:
                                                                     if(§§pop())
                                                                     {
                                                                        if(_loc5_ || _loc2_)
                                                                        {
                                                                           var _loc2_:*;
                                                                           §§push((_loc2_ = this).§=!-§);
                                                                           if(_loc5_)
                                                                           {
                                                                              §§push(§§pop() - 1);
                                                                           }
                                                                           var _loc3_:* = §§pop();
                                                                           if(_loc5_)
                                                                           {
                                                                              _loc2_.§=!-§ = _loc3_;
                                                                           }
                                                                           if(_loc4_)
                                                                           {
                                                                              §§goto(addr465);
                                                                           }
                                                                           §§goto(addr710);
                                                                        }
                                                                        §§goto(addr248);
                                                                     }
                                                                     §§goto(addr702);
                                                                  }
                                                               }
                                                               §§goto(addr288);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr705);
                                                               §§push(this.mTryToSpecial);
                                                            }
                                                            §§goto(addr705);
                                                         }
                                                         §§goto(addr594);
                                                      }
                                                      §§goto(addr478);
                                                   }
                                                   §§goto(addr634);
                                                }
                                                §§goto(addr471);
                                             }
                                             §§goto(addr694);
                                          }
                                          §§goto(addr546);
                                       }
                                       §§goto(addr107);
                                    }
                                    §§goto(addr545);
                                 }
                                 §§goto(addr223);
                              }
                              §§goto(addr543);
                           }
                           §§goto(addr212);
                        }
                        §§goto(addr209);
                     }
                  }
                  §§goto(addr705);
               }
               §§goto(addr722);
            }
            §§goto(addr471);
         }
         addr198:
      }
      
      public function §[l§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            this.§8!2§.visible = false;
         }
      }
      
      public function setDamagedFrame() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc1_))
         {
            §§push(this.§`!D§);
            if(_loc3_ || this)
            {
               if(§§pop() < 0)
               {
                  if(!_loc2_)
                  {
                     this.§0!#§();
                     addr39:
                     §§push(0);
                  }
               }
               §§goto(addr39);
            }
            var _loc1_:* = §§pop();
            if(_loc3_)
            {
               §§push(1);
               if(!_loc2_)
               {
                  §§push(this.§1S§.§+_§);
                  if(_loc3_ || _loc1_)
                  {
                     §§push(§§pop() / this.§1S§.§ !G§);
                  }
                  §§push(§§pop() - §§pop());
                  if(_loc3_ || _loc2_)
                  {
                     §§push(§§pop() * this.§`!D§);
                  }
                  §§push(int(§§pop()));
               }
               while(true)
               {
                  _loc1_ = §§pop();
                  while(true)
                  {
                     §§push(_loc1_);
                     if(_loc2_)
                     {
                        break;
                     }
                     if(§§pop() == this.§[C§)
                     {
                        return;
                     }
                     loop2:
                     while(_loc3_)
                     {
                        this.§[C§ = _loc1_;
                        while(true)
                        {
                           this.§=!-§ = this.§[C§;
                           loop4:
                           while(!_loc2_)
                           {
                              if(!_loc2_)
                              {
                                 while(true)
                                 {
                                    this.§8P§();
                                    if(!_loc3_)
                                    {
                                       continue loop4;
                                    }
                                 }
                                 continue;
                              }
                              continue loop2;
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr73);
         }
         §§goto(addr39);
      }
      
      public function §0!#§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(this.§,!2§)
            {
               if(!(_loc2_ && _loc2_))
               {
                  this.§`!D§ = this.§,!2§.getFrameCount();
               }
            }
         }
      }
      
      public function §-§(param1:uint = 16777215, param2:int = 4, param3:int = 4) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param2)
         {
            this.§9!'§ = new GlowFilter();
            loop0:
            while(true)
            {
               this.§9!'§.blurX = param2;
               while(true)
               {
                  this.§9!'§.blurY = param3;
                  loop2:
                  while(!_loc5_)
                  {
                     while(true)
                     {
                        this.§9!'§.color = param1;
                        if(_loc4_)
                        {
                           continue loop0;
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr60);
      }
      
      public function §#y§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            this.§9!'§ = null;
         }
      }
      
      public function § !T§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:int = Math.min(8,Math.max(this.§1S§.§>!+§(false),1));
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= _loc1_)
            {
               if(_loc3_)
               {
                  break;
               }
            }
            else
            {
               this.§%<§(_loc2_);
               while(true)
               {
                  _loc2_++;
               }
               addr70:
            }
            while(!_loc3_)
            {
               §§goto(addr70);
            }
         }
      }
      
      public function §;t§(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = int(this.§0+§.length - 1);
         while(true)
         {
            §§push(_loc2_);
            if(!_loc4_)
            {
               if(§§pop() < 0)
               {
                  if(!_loc4_)
                  {
                     if(!_loc4_)
                     {
                        break;
                     }
                     while(true)
                     {
                        addr36:
                        while(true)
                        {
                           §§push(_loc2_);
                           if(!(_loc4_ && this))
                           {
                              addr56:
                              §§push(§§pop() - 1);
                              while(true)
                              {
                                 _loc2_ = §§pop();
                              }
                              addr56:
                           }
                           §§goto(addr56);
                        }
                        addr80:
                        this.§%<§(_loc2_);
                     }
                  }
                  while(!(_loc3_ || _loc2_))
                  {
                     while(true)
                     {
                        if(_loc4_ && _loc2_)
                        {
                           continue;
                        }
                        §§goto(addr80);
                     }
                     §§goto(addr36);
                  }
                  continue;
               }
               this.§0+§[_loc2_].updateLifeTime(param1);
               while(true)
               {
                  if(this.§0+§[_loc2_].lifeTime < 0)
                  {
                     §§goto(addr73);
                  }
                  §§goto(addr36);
               }
            }
            §§goto(addr56);
         }
      }
      
      private function §%<§(param1:int) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!_loc6_)
         {
            if(!this.§=7§)
            {
               if(_loc7_ || this)
               {
                  §§goto(addr29);
               }
            }
            var _loc2_:int = 0;
            if(_loc7_)
            {
               if(Math.random() < 0.5)
               {
                  if(!_loc6_)
                  {
                     addr40:
                     _loc2_ = 1;
                  }
               }
               var _loc3_:§35§ = this.§=7§.getFrame(_loc2_);
               §§push(100 + Math.random() * 100);
               if(_loc7_ || _loc3_)
               {
                  §§push(Number(§§pop()));
               }
               var _loc4_:* = §§pop();
               var _loc5_:§]!,§ = null;
               if(_loc7_)
               {
                  if(param1 < this.§0+§.length)
                  {
                     addr73:
                     (_loc5_ = this.§0+§[param1]).§,!h§(_loc4_);
                     if(!(_loc6_ && _loc2_))
                     {
                        _loc5_.§#!0§(_loc3_.texture);
                        if(!(_loc6_ && this))
                        {
                           addr131:
                           §§push(_loc5_.image);
                           if(_loc7_ || this)
                           {
                              §§push(_loc3_.pivotX);
                              if(!(_loc6_ && _loc3_))
                              {
                                 §§push(-§§pop());
                                 if(_loc7_ || _loc3_)
                                 {
                                    §§push(this.§#P§);
                                    if(_loc7_)
                                    {
                                       §§push(§§pop().width / 2);
                                       if(!_loc6_)
                                       {
                                          §§push(§§pop() - §§pop());
                                          if(!_loc6_)
                                          {
                                             §§push(Math.random() * this.§#P§.width);
                                             if(!_loc6_)
                                             {
                                                §§push(§§pop() + §§pop());
                                                if(_loc7_)
                                                {
                                                   §§goto(addr180);
                                                }
                                                §§goto(addr222);
                                             }
                                             §§goto(addr202);
                                          }
                                          addr180:
                                          §§pop().x = §§pop();
                                          if(!(_loc6_ && param1))
                                          {
                                             addr192:
                                             §§push(_loc5_.image);
                                             §§push(-_loc3_.pivotY);
                                             if(_loc7_)
                                             {
                                                addr197:
                                                §§push(this.§#P§.height / 2);
                                                if(!_loc6_)
                                                {
                                                   addr222:
                                                   addr202:
                                                   §§push(§§pop() - §§pop());
                                                   if(!_loc6_)
                                                   {
                                                      addr215:
                                                      §§push(Math.random() * this.§#P§.height);
                                                   }
                                                   §§pop().y = §§pop();
                                                   §§goto(addr223);
                                                }
                                                §§push(§§pop() + §§pop());
                                             }
                                          }
                                          addr223:
                                          return;
                                       }
                                       §§goto(addr222);
                                    }
                                    §§goto(addr197);
                                 }
                                 §§goto(addr215);
                              }
                           }
                           §§goto(addr192);
                           addr100:
                        }
                        §§goto(addr222);
                     }
                     §§goto(addr100);
                  }
                  else
                  {
                     _loc5_ = new §]!,§(_loc3_.texture,_loc4_);
                     if(!_loc6_)
                     {
                        this.§0+§.push(_loc5_);
                        if(!_loc7_)
                        {
                        }
                        §§goto(addr131);
                     }
                     this.§8!2§.addChild(_loc5_.image);
                  }
                  §§goto(addr131);
               }
               §§goto(addr73);
            }
            §§goto(addr40);
         }
         addr29:
      }
      
      public function §?7§() : §6p§
      {
         return this.§#P§;
      }
   }
}
