package §9"%§
{
   import §#]§.b2Vec2;
   import §%Q§.§@d§;
   import §0!R§.Texture;
   import §1!$§.§0!N§;
   import §1!$§.Sprite;
   import §6!D§.§"A§;
   import §6!D§.§3!K§;
   import §6!D§.§[t§;
   import §9"!§.§9"3§;
   import §9"!§.§<m§;
   import flash.filters.GlowFilter;
   
   public class §#!D§
   {
      
      public static const §%"$§:Number = 1000;
      
      public static const § !'§:Number = 500;
      
      private static var §=!^§:Array = null;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §%"$§ = 1000;
            while(true)
            {
               § !'§ = 500;
               §§goto(addr56);
            }
         }
         addr56:
         while(true)
         {
            §=!^§ = null;
            if(!_loc2_)
            {
               if(!(_loc2_ && _loc1_))
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      private var §7!B§:§&!r§;
      
      public var §@6§:int;
      
      public var mW:Number;
      
      public var mH:Number;
      
      public var §%`§:Number;
      
      public var §%!6§:Number;
      
      public var §9!§:int = -1;
      
      private var §7"2§:String;
      
      private var §,s§:§"A§;
      
      private var §%">§:§"A§;
      
      private var §#!5§:§0!N§;
      
      private var § "5§:Number = 0;
      
      private var §]!h§:Number = 0;
      
      public var §0!A§:int = -1;
      
      private var §>!3§:int = -1;
      
      private var §!"'§:int = 0;
      
      public var mTryToSpecial:Boolean = false;
      
      public var mIsSpecial:Boolean = false;
      
      public var §["0§:String = "special";
      
      public var mTryToFly:Boolean = false;
      
      public var mIsFlying:Boolean = false;
      
      public var §&!u§:Boolean = false;
      
      public var mTryToScream:Number = 0;
      
      public var §]&§:String = "yell";
      
      public var mIsScreaming:Boolean = false;
      
      public var mTryToBlink:Number = 0;
      
      public var §>!>§:String = "blink";
      
      public var mIsBlinking:Boolean = false;
      
      public var §'&§:String = "fly";
      
      public var §'!I§:String = "fly_yell";
      
      public var §[y§:GlowFilter;
      
      private var §9!4§:Vector.<§<m§>;
      
      private var §`R§:§"A§;
      
      private var §3^§:Sprite = null;
      
      private var §@O§:§9"3§;
      
      public function §#!D§(param1:§&!r§, param2:Sprite, param3:§9"3§)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            super();
            while(true)
            {
               this.§@O§ = param3;
               loop2:
               while(_loc4_ || param1)
               {
                  this.§7"2§ = this.§7!B§.§2!>§;
                  while(true)
                  {
                     this.§9!4§ = new Vector.<§<m§>();
                     while(!(_loc5_ && this))
                     {
                        this.§3^§ = param2;
                        if(_loc5_ && param2)
                        {
                           continue;
                        }
                        if(_loc5_)
                        {
                           continue loop2;
                        }
                        addr36:
                        if(!(_loc5_ && param2))
                        {
                           return;
                        }
                        addr102:
                        while(true)
                        {
                           this.§7!B§ = param1;
                           continue loop2;
                           §§goto(addr36);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr102);
      }
      
      public function dispose() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§<m§ = null;
         if(_loc2_)
         {
            this.§@"%§();
            if(!_loc3_)
            {
               if(this.§9!4§)
               {
                  addr48:
                  while(this.§9!4§.length > 0)
                  {
                     _loc1_ = this.§9!4§.pop();
                     if(_loc2_)
                     {
                        _loc1_.dispose();
                     }
                  }
                  if(!(_loc3_ && this))
                  {
                     this.§9!4§ = null;
                  }
               }
               return;
            }
         }
         §§goto(addr48);
      }
      
      public function §@w§(param1:int, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && param3))
         {
            this.mW = param3;
            while(true)
            {
               this.mH = param4;
               loop1:
               while(true)
               {
                  this.§9!§ = param1;
                  while(true)
                  {
                     this.§%!6§ = param2;
                     loop3:
                     while(!_loc5_)
                     {
                        while(true)
                        {
                           this.§"O§();
                           if(_loc6_ || this)
                           {
                              continue loop1;
                           }
                           continue loop3;
                        }
                        return;
                     }
                  }
               }
               if(!(_loc6_ || param1))
               {
                  continue;
               }
               §§goto(addr73);
            }
         }
         §§goto(addr80);
      }
      
      public function §5!-§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            if(param1)
            {
               if(!(_loc2_ && _loc2_))
               {
                  this.§%`§ = 1;
               }
            }
            else
            {
               loop0:
               while(true)
               {
                  §§push(this);
                  §§push(this.mW);
                  if(!(_loc2_ && _loc3_))
                  {
                     §§push(§§pop() / this.mH);
                  }
                  §§pop().§%`§ = §§pop();
                  loop1:
                  for(; !_loc2_; if(_loc3_ || _loc2_)
                  {
                     return;
                  })
                  {
                     if(this.§%`§ < 1)
                     {
                        loop2:
                        for(; !(_loc2_ && this); if(!(_loc2_ && param1))
                        {
                           continue loop1;
                        })
                        {
                           this.§%`§ = 1 / this.§%`§;
                           loop3:
                           while(true)
                           {
                              addr29:
                              while(true)
                              {
                                 this.§%`§ = Math.min(11,this.§%`§);
                                 if(!(_loc2_ && this))
                                 {
                                    continue loop2;
                                 }
                                 continue loop3;
                              }
                              continue loop1;
                           }
                        }
                        continue loop0;
                     }
                     §§goto(addr29);
                  }
               }
            }
            return;
         }
         §§goto(addr118);
      }
      
      public function §4§(param1:§[t§) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§3!K§ = null;
         var _loc3_:Texture = null;
         if(!_loc5_)
         {
            §§push(this.§7!B§.isGround());
            if(!_loc5_)
            {
               if(!§§pop())
               {
                  loop0:
                  while(true)
                  {
                     this.§`R§ = param1.getAnimation("SPARKLES");
                     loop1:
                     while(true)
                     {
                        while(true)
                        {
                           this.§,s§ = param1.getAnimation(this.§7"2§);
                           do
                           {
                              this.§%">§ = this.§,s§;
                           }
                           while(!(_loc6_ || param1));
                           
                           if(_loc5_ && param1)
                           {
                              continue loop1;
                           }
                           if(!(_loc6_ || this))
                           {
                              continue loop0;
                           }
                           if(_loc5_ && _loc2_)
                           {
                              break;
                           }
                           if(false)
                           {
                              continue;
                           }
                           var _loc4_:* = Number(1);
                           if(!_loc5_)
                           {
                              §§push(this.§%">§);
                              if(!(_loc5_ && param1))
                              {
                                 if(§§pop())
                                 {
                                    addr102:
                                    _loc2_ = this.§%">§.getFrame(0);
                                    addr100:
                                    if(!(_loc5_ && param1))
                                    {
                                       §§push(_loc2_.scale);
                                       if(!(_loc5_ && param1))
                                       {
                                          §§push(Number(§§pop()));
                                       }
                                       _loc4_ = §§pop();
                                    }
                                    _loc3_ = _loc2_.texture;
                                    if(_loc6_ || param1)
                                    {
                                       addr142:
                                       this.§#!5§ = new §0!N§(_loc3_);
                                       if(_loc6_ || _loc3_)
                                       {
                                          if(!_loc2_)
                                          {
                                             addr335:
                                             this.§#!5§.x = -this.§#!5§.width / 2;
                                             addr319:
                                             addr336:
                                             addr334:
                                             addr333:
                                             addr331:
                                             §§push(this.§#!5§);
                                             if(!_loc5_)
                                             {
                                                §§push(this.§#!5§);
                                                if(!(_loc5_ && param1))
                                                {
                                                   §§push(-§§pop().height);
                                                   if(_loc6_)
                                                   {
                                                      if(!_loc5_)
                                                      {
                                                         §§push(2);
                                                         if(!_loc5_)
                                                         {
                                                            addr303:
                                                            §§push(§§pop() / §§pop());
                                                            if(!(_loc5_ && this))
                                                            {
                                                               §§pop().y = §§pop();
                                                               addr311:
                                                               if(_loc6_)
                                                               {
                                                                  addr264:
                                                                  §§push(this.§#!5§);
                                                                  §§push(_loc4_);
                                                                  if(_loc6_ || this)
                                                                  {
                                                                     §§pop().scaleX = §§pop();
                                                                     addr276:
                                                                     if(!_loc5_)
                                                                     {
                                                                        §§push(this.§#!5§);
                                                                        if(_loc6_)
                                                                        {
                                                                           if(!(_loc5_ && _loc2_))
                                                                           {
                                                                              if(_loc6_)
                                                                              {
                                                                                 if(_loc6_ || _loc3_)
                                                                                 {
                                                                                    §§push(_loc4_);
                                                                                    if(_loc6_ || _loc3_)
                                                                                    {
                                                                                       if(_loc6_)
                                                                                       {
                                                                                          if(!_loc5_)
                                                                                          {
                                                                                             §§pop().scaleY = §§pop();
                                                                                             addr259:
                                                                                             if(!_loc5_)
                                                                                             {
                                                                                                if(_loc6_)
                                                                                                {
                                                                                                   this.mW = this.§#!5§.width / 2;
                                                                                                   addr217:
                                                                                                   if(_loc6_ || _loc3_)
                                                                                                   {
                                                                                                      this.mH = this.§#!5§.height / 2;
                                                                                                      addr194:
                                                                                                      if(_loc6_ || param1)
                                                                                                      {
                                                                                                         if(_loc6_ || this)
                                                                                                         {
                                                                                                            this.§3^§.addChild(this.§#!5§);
                                                                                                            if(!_loc5_)
                                                                                                            {
                                                                                                               if(!(_loc6_ || param1))
                                                                                                               {
                                                                                                                  addr359:
                                                                                                                  this.§#!5§.x = -_loc2_.pivotX;
                                                                                                                  §§push(this.§#!5§);
                                                                                                                  §§push(_loc2_.pivotY);
                                                                                                                  if(_loc6_ || param1)
                                                                                                                  {
                                                                                                                     addr350:
                                                                                                                     §§pop().y = -§§pop();
                                                                                                                     §§goto(addr264);
                                                                                                                     addr351:
                                                                                                                  }
                                                                                                                  addr358:
                                                                                                                  §§goto(addr358);
                                                                                                                  addr360:
                                                                                                                  addr356:
                                                                                                                  addr354:
                                                                                                               }
                                                                                                               return true;
                                                                                                            }
                                                                                                            §§goto(addr194);
                                                                                                         }
                                                                                                         §§goto(addr259);
                                                                                                      }
                                                                                                      §§goto(addr217);
                                                                                                   }
                                                                                                   §§goto(addr311);
                                                                                                }
                                                                                                §§goto(addr360);
                                                                                             }
                                                                                             §§goto(addr276);
                                                                                          }
                                                                                          §§goto(addr359);
                                                                                       }
                                                                                       §§goto(addr303);
                                                                                    }
                                                                                    §§goto(addr264);
                                                                                 }
                                                                                 §§goto(addr356);
                                                                              }
                                                                           }
                                                                           §§goto(addr319);
                                                                        }
                                                                        §§goto(addr264);
                                                                     }
                                                                     §§goto(addr351);
                                                                  }
                                                                  §§goto(addr350);
                                                               }
                                                               §§goto(addr336);
                                                            }
                                                            §§goto(addr335);
                                                         }
                                                         §§goto(addr334);
                                                      }
                                                      §§goto(addr333);
                                                   }
                                                   §§goto(addr303);
                                                }
                                                §§goto(addr331);
                                             }
                                             §§goto(addr359);
                                          }
                                       }
                                       §§goto(addr354);
                                    }
                                    §§goto(addr359);
                                 }
                                 else
                                 {
                                    _loc3_ = this.§@O§.textureManager.§2M§();
                                 }
                                 §§goto(addr142);
                              }
                              §§goto(addr102);
                           }
                           §§goto(addr100);
                        }
                        addr82:
                     }
                  }
               }
               §§goto(addr82);
            }
            return §§pop();
         }
         §§goto(addr82);
      }
      
      public function §^!'§(param1:§@d§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:Array = null;
         var _loc3_:b2Vec2 = null;
         §§push(param1.§&1§);
         if(!_loc5_)
         {
            var _loc4_:* = §§pop();
            if(_loc6_)
            {
               §§push(§@d§.§88§);
               if(_loc6_ || _loc3_)
               {
                  §§push(_loc4_);
                  if(_loc6_ || param1)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!_loc5_)
                        {
                           §§push(0);
                           if(_loc5_ && param1)
                           {
                              addr143:
                              if(§§pop() === _loc4_)
                              {
                                 addr145:
                                 §§push(1);
                                 if(_loc6_ || _loc3_)
                                 {
                                 }
                              }
                              else
                              {
                                 §§push(2);
                              }
                           }
                        }
                        §§goto(addr145);
                     }
                     else
                     {
                        §§push(§@d§.§4"B§);
                        if(!(_loc5_ && _loc2_))
                        {
                           §§goto(addr143);
                        }
                     }
                     §§goto(addr159);
                  }
               }
               §§goto(addr143);
            }
            §§goto(addr145);
         }
         addr159:
         switch(§§pop())
         {
            case 0:
               _loc2_ = param1.§'!;§();
               _loc3_ = _loc2_[0];
               if(!(_loc5_ && this))
               {
                  §§push(this);
                  §§push(_loc3_.x);
                  if(_loc6_)
                  {
                     §§push(§§pop() / §9"3§.§'"F§);
                  }
                  §§pop().§ "5§ = §§pop();
                  if(!(_loc5_ && param1))
                  {
                     §§push(this);
                     §§push(_loc3_.y);
                     if(!_loc5_)
                     {
                        §§push(§§pop() / §9"3§.§'"F§);
                     }
                     §§pop().§]!h§ = §§pop();
                     if(_loc6_ || this)
                     {
                        addr160:
                        this.§[!k§();
                        break;
                     }
                     break;
                  }
                  break;
               }
               break;
            case 1:
               §§goto(addr160);
            default:
               §§goto(addr160);
         }
      }
      
      public function §4![§() : Array
      {
         return §#n§.§4![§(null,this.§7!B§.§<!r§());
      }
      
      public function §4!T§() : Array
      {
         return §#n§.§4!T§(null,this.§7!B§.§<!r§());
      }
      
      public function §>r§() : Array
      {
         return §#n§.§>r§(null);
      }
      
      public function §"O§() : void
      {
      }
      
      public function setScale(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc3_)
         {
            this.§3^§.scaleX = this.§3^§.scaleY = param1;
         }
      }
      
      public function §[!k§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§3!K§ = null;
         if(_loc5_ || _loc2_)
         {
            §§push(this.§,s§);
            if(!_loc4_)
            {
               if(!§§pop())
               {
                  if(!(_loc4_ && _loc1_))
                  {
                     return;
                  }
                  addr241:
                  var _loc2_:*;
                  §§push((_loc2_ = this).§!"'§);
                  if(_loc5_ || _loc3_)
                  {
                     §§push(§§pop() - 1);
                  }
                  var _loc3_:* = §§pop();
                  if(_loc5_ || _loc1_)
                  {
                     _loc2_.§!"'§ = _loc3_;
                  }
                  if(_loc4_)
                  {
                     addr606:
                     this.§%">§ = this.§,s§.getSubAnimation(this.§]&§);
                     if(_loc5_ || _loc3_)
                     {
                        this.mIsScreaming = true;
                        addr566:
                     }
                     else
                     {
                        addr654:
                     }
                  }
                  else
                  {
                     addr268:
                  }
                  addr750:
                  §§push(this.§%">§);
                  if(_loc5_)
                  {
                     if(§§pop())
                     {
                        addr757:
                        _loc1_ = this.§%">§.getFrame(this.§!"'§);
                        if(!_loc4_)
                        {
                           §§push(this.§#!5§);
                           loop53:
                           while(true)
                           {
                              §§push(Boolean(§§pop()));
                              if(!_loc4_)
                              {
                                 if(§§pop())
                                 {
                                    while(true)
                                    {
                                       §§pop();
                                       loop71:
                                       while(true)
                                       {
                                          §§push(Boolean(_loc1_));
                                          if(_loc5_)
                                          {
                                             loop54:
                                             while(§§pop())
                                             {
                                                loop55:
                                                while(true)
                                                {
                                                   §§push(this.§#!5§);
                                                   while(true)
                                                   {
                                                      §§pop().texture = _loc1_.texture;
                                                      loop57:
                                                      while(true)
                                                      {
                                                         §§push(this.§#!5§);
                                                         loop58:
                                                         while(true)
                                                         {
                                                            §§push(_loc1_.pivotX);
                                                            loop59:
                                                            while(true)
                                                            {
                                                               §§push(-§§pop());
                                                               if(!(_loc4_ && this))
                                                               {
                                                                  §§push(this.§ "5§);
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() - §§pop());
                                                                     addr854:
                                                                     §§push(this.§]!h§);
                                                                     if(!(_loc5_ || _loc1_))
                                                                     {
                                                                        continue;
                                                                     }
                                                                     §§push(§§pop() - §§pop());
                                                                     loop64:
                                                                     while(true)
                                                                     {
                                                                        §§pop().y = §§pop();
                                                                        addr865:
                                                                        while(_loc5_ || _loc3_)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              §§push(this.§#!5§);
                                                                              continue loop58;
                                                                           }
                                                                        }
                                                                        addr783:
                                                                        continue loop57;
                                                                        if(_loc4_ && _loc2_)
                                                                        {
                                                                           continue;
                                                                        }
                                                                        §§pop().scaleY = §§pop();
                                                                        if(_loc4_)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              if(_loc5_)
                                                                              {
                                                                                 if(!(_loc5_ || _loc1_))
                                                                                 {
                                                                                    continue loop55;
                                                                                 }
                                                                                 §§push(this.§#!5§);
                                                                                 if(!_loc5_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    continue loop53;
                                                                                 }
                                                                                 §§goto(addr835);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr865);
                                                                              }
                                                                           }
                                                                           continue loop58;
                                                                           addr822:
                                                                        }
                                                                        if(!(_loc5_ || _loc1_))
                                                                        {
                                                                           loop62:
                                                                           while(true)
                                                                           {
                                                                              if(!_loc5_)
                                                                              {
                                                                                 continue loop71;
                                                                              }
                                                                              §§push(this.§#!5§);
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc1_.pivotY);
                                                                                 if(!(_loc5_ || this))
                                                                                 {
                                                                                    continue loop59;
                                                                                 }
                                                                                 §§push(-§§pop());
                                                                                 if(!(_loc5_ || _loc3_))
                                                                                 {
                                                                                    continue loop64;
                                                                                 }
                                                                                 if(_loc4_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 §§goto(addr854);
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§pop().x = §§pop();
                                                                                 continue loop62;
                                                                              }
                                                                           }
                                                                           continue loop71;
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           if(true)
                                                                           {
                                                                              break loop54;
                                                                           }
                                                                        }
                                                                        §§goto(addr802);
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr899);
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                                continue loop71;
                                             }
                                             addr925:
                                             return;
                                             addr908:
                                          }
                                          break;
                                       }
                                    }
                                    addr923:
                                 }
                                 §§goto(addr908);
                              }
                              §§goto(addr923);
                           }
                        }
                        §§goto(addr800);
                     }
                     §§goto(addr925);
                  }
                  §§goto(addr757);
               }
               else
               {
                  §§push(this.§&!u§);
                  if(!(_loc4_ && this))
                  {
                     if(§§pop())
                     {
                        if(_loc5_)
                        {
                           this.§!"'§ = 1;
                           if(_loc4_ && this)
                           {
                              addr461:
                           }
                           §§goto(addr750);
                        }
                        else
                        {
                           loop78:
                           while(true)
                           {
                              this.§%">§ = this.§,s§.getSubAnimation(this.§'&§);
                              if(!_loc4_)
                              {
                                 if(_loc5_)
                                 {
                                    if(!(_loc4_ && _loc1_))
                                    {
                                       addr387:
                                       loop34:
                                       while(true)
                                       {
                                          this.mIsFlying = true;
                                          if(_loc5_)
                                          {
                                             if(!_loc5_)
                                             {
                                                loop38:
                                                while(true)
                                                {
                                                   if(!_loc4_)
                                                   {
                                                      if(_loc5_)
                                                      {
                                                         continue loop78;
                                                      }
                                                      loop39:
                                                      while(true)
                                                      {
                                                         §§push(this.§,s§);
                                                         addr663:
                                                         loop49:
                                                         while(true)
                                                         {
                                                            §§push(this.§'!I§);
                                                            loop17:
                                                            while(true)
                                                            {
                                                               if(!_loc4_)
                                                               {
                                                                  §§push(§§pop().getSubAnimation(§§pop()));
                                                                  loop44:
                                                                  while(true)
                                                                  {
                                                                     §§push(Boolean(§§pop()));
                                                                     loop24:
                                                                     while(true)
                                                                     {
                                                                        loop25:
                                                                        while(true)
                                                                        {
                                                                           if(!§§pop())
                                                                           {
                                                                              addr703:
                                                                              §§push(this.mTryToScream);
                                                                              loop26:
                                                                              while(!(_loc4_ && this))
                                                                              {
                                                                                 §§push(0);
                                                                                 loop76:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop() > §§pop());
                                                                                    loop8:
                                                                                    while(true)
                                                                                    {
                                                                                       if(!_loc4_)
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop());
                                                                                             while(true)
                                                                                             {
                                                                                                if(!_loc4_)
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         loop42:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§pop();
                                                                                                            loop43:
                                                                                                            while(_loc5_ || this)
                                                                                                            {
                                                                                                               §§push(this.§,s§);
                                                                                                               loop51:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(!(_loc5_ || _loc3_))
                                                                                                                  {
                                                                                                                     continue loop49;
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(this.§]&§);
                                                                                                                     loop16:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(_loc4_ && this)
                                                                                                                        {
                                                                                                                           continue loop17;
                                                                                                                        }
                                                                                                                        §§push(§§pop().getSubAnimation(§§pop()));
                                                                                                                        loop14:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(_loc5_ || _loc1_)
                                                                                                                           {
                                                                                                                              §§push(Boolean(§§pop()));
                                                                                                                              loop27:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(_loc5_ || this)
                                                                                                                                 {
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(!§§pop())
                                                                                                                                       {
                                                                                                                                          §§push(this.mTryToBlink);
                                                                                                                                          if(_loc4_)
                                                                                                                                          {
                                                                                                                                             continue loop26;
                                                                                                                                          }
                                                                                                                                          §§push(0);
                                                                                                                                          if(_loc4_ && _loc3_)
                                                                                                                                          {
                                                                                                                                             continue loop76;
                                                                                                                                          }
                                                                                                                                          if(!(_loc4_ && _loc2_))
                                                                                                                                          {
                                                                                                                                             break;
                                                                                                                                          }
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() > §§pop());
                                                                                                                                             addr705:
                                                                                                                                             loop48:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(!(_loc4_ && _loc1_))
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop());
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(_loc5_)
                                                                                                                                                      {
                                                                                                                                                         if(§§pop())
                                                                                                                                                         {
                                                                                                                                                            loop75:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§pop();
                                                                                                                                                               addr717:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(this.mTryToFly);
                                                                                                                                                                  addr689:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     if(!_loc5_)
                                                                                                                                                                     {
                                                                                                                                                                        continue loop75;
                                                                                                                                                                     }
                                                                                                                                                                     §§push(§§pop() > 0);
                                                                                                                                                                  }
                                                                                                                                                                  continue loop75;
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            addr716:
                                                                                                                                                         }
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            addr694:
                                                                                                                                                            loop21:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop());
                                                                                                                                                               addr695:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(!§§pop())
                                                                                                                                                                  {
                                                                                                                                                                     continue loop24;
                                                                                                                                                                  }
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§pop();
                                                                                                                                                                     continue loop39;
                                                                                                                                                                  }
                                                                                                                                                                  continue loop21;
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         loop20:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(§§pop())
                                                                                                                                                            {
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§pop();
                                                                                                                                                                  addr749:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(this.§,s§);
                                                                                                                                                                     addr726:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(this.§["0§);
                                                                                                                                                                        addr728:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop().getSubAnimation(§§pop()));
                                                                                                                                                                           addr729:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(Boolean(§§pop()));
                                                                                                                                                                              addr730:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!_loc5_)
                                                                                                                                                                                 {
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(Boolean(§§pop()));
                                                                                                                                                                                       addr746:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop20;
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    addr745:
                                                                                                                                                                                 }
                                                                                                                                                                                 continue loop48;
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               addr748:
                                                                                                                                                            }
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               addr733:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(§§pop())
                                                                                                                                                                  {
                                                                                                                                                                     addr734:
                                                                                                                                                                     this.§%">§ = this.§,s§.getSubAnimation(this.§["0§);
                                                                                                                                                                     break loop42;
                                                                                                                                                                  }
                                                                                                                                                                  §§push(this.mTryToScream);
                                                                                                                                                                  break loop26;
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         addr747:
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   addr713:
                                                                                                                                                }
                                                                                                                                                §§goto(addr730);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       addr604:
                                                                                                                                       if(!_loc4_)
                                                                                                                                       {
                                                                                                                                          §§goto(addr606);
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          this.mIsScreaming = true;
                                                                                                                                          this.mIsFlying = true;
                                                                                                                                          addr685:
                                                                                                                                          addr659:
                                                                                                                                       }
                                                                                                                                       §§goto(addr654);
                                                                                                                                    }
                                                                                                                                    addr537:
                                                                                                                                    §§push(§§pop() > §§pop());
                                                                                                                                    if(_loc5_ || this)
                                                                                                                                    {
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop());
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(§§pop())
                                                                                                                                             {
                                                                                                                                                loop2:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(!_loc5_)
                                                                                                                                                   {
                                                                                                                                                      continue loop27;
                                                                                                                                                   }
                                                                                                                                                   if(!_loc5_)
                                                                                                                                                   {
                                                                                                                                                      continue loop25;
                                                                                                                                                   }
                                                                                                                                                   if(!_loc4_)
                                                                                                                                                   {
                                                                                                                                                      if(!(_loc4_ && _loc1_))
                                                                                                                                                      {
                                                                                                                                                         §§pop();
                                                                                                                                                         loop3:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(this.§,s§);
                                                                                                                                                            loop4:
                                                                                                                                                            while(!(_loc4_ && _loc3_))
                                                                                                                                                            {
                                                                                                                                                               §§push(this.§>!>§);
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc5_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop().getSubAnimation(§§pop()));
                                                                                                                                                                     loop6:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc5_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(Boolean(§§pop()));
                                                                                                                                                                           loop7:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              if(!(_loc5_ || _loc3_))
                                                                                                                                                                              {
                                                                                                                                                                                 continue loop8;
                                                                                                                                                                              }
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!§§pop())
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(this.mTryToFly);
                                                                                                                                                                                    loop31:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc5_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(Boolean(§§pop()));
                                                                                                                                                                                          if(!_loc4_)
                                                                                                                                                                                          {
                                                                                                                                                                                             continue loop7;
                                                                                                                                                                                          }
                                                                                                                                                                                          addr423:
                                                                                                                                                                                          while(!_loc4_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc5_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§pop();
                                                                                                                                                                                                if(!(_loc4_ && _loc3_))
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc5_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(this.§,s§);
                                                                                                                                                                                                         if(_loc4_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            continue loop4;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         if(!(_loc5_ || _loc3_))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            continue loop51;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr322);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      continue loop4;
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                break loop34;
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr689);
                                                                                                                                                                                             §§push(Boolean(§§pop()));
                                                                                                                                                                                             if(!(_loc5_ || _loc2_))
                                                                                                                                                                                             {
                                                                                                                                                                                                continue;
                                                                                                                                                                                             }
                                                                                                                                                                                             if(_loc4_)
                                                                                                                                                                                             {
                                                                                                                                                                                                continue loop31;
                                                                                                                                                                                             }
                                                                                                                                                                                             if(_loc5_ || _loc1_)
                                                                                                                                                                                             {
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!§§pop())
                                                                                                                                                                                                   {
                                                                                                                                                                                                      this.§%">§ = this.§,s§;
                                                                                                                                                                                                      if(_loc5_ || _loc2_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc4_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            continue loop3;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         if(_loc5_ || _loc2_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!(_loc4_ && _loc1_))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  break loop25;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               continue loop34;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr717);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         else
                                                                                                                                                                                                         {
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(_loc5_ || _loc2_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  this.§%">§ = this.§,s§.getSubAnimation(this.§'!I§);
                                                                                                                                                                                                                  break;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr749);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr685);
                                                                                                                                                                                                            addr671:
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   continue loop38;
                                                                                                                                                                                                }
                                                                                                                                                                                                addr363:
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr705);
                                                                                                                                                                                          }
                                                                                                                                                                                          continue loop2;
                                                                                                                                                                                       }
                                                                                                                                                                                       continue loop42;
                                                                                                                                                                                    }
                                                                                                                                                                                    continue loop42;
                                                                                                                                                                                 }
                                                                                                                                                                                 if(_loc5_)
                                                                                                                                                                                 {
                                                                                                                                                                                    this.§%">§ = this.§,s§.getSubAnimation(this.§>!>§);
                                                                                                                                                                                    if(_loc5_ || _loc1_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc5_ || this)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!_loc4_)
                                                                                                                                                                                          {
                                                                                                                                                                                             this.mIsBlinking = true;
                                                                                                                                                                                             continue loop3;
                                                                                                                                                                                          }
                                                                                                                                                                                          continue loop43;
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr606);
                                                                                                                                                                                    }
                                                                                                                                                                                    break loop34;
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr604);
                                                                                                                                                                                 §§goto(addr654);
                                                                                                                                                                                 §§goto(addr566);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           continue loop8;
                                                                                                                                                                        }
                                                                                                                                                                        continue loop14;
                                                                                                                                                                        addr331:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop().getSubAnimation(§§pop()));
                                                                                                                                                                           if(_loc4_ && _loc3_)
                                                                                                                                                                           {
                                                                                                                                                                              continue loop6;
                                                                                                                                                                           }
                                                                                                                                                                           if(_loc4_ && this)
                                                                                                                                                                           {
                                                                                                                                                                              continue loop44;
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr346);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     continue loop14;
                                                                                                                                                                  }
                                                                                                                                                                  §§push(this.§'&§);
                                                                                                                                                                  addr322:
                                                                                                                                                                  continue loop16;
                                                                                                                                                                  if(_loc4_ && _loc3_)
                                                                                                                                                                  {
                                                                                                                                                                     continue;
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr331);
                                                                                                                                                               }
                                                                                                                                                               continue loop16;
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr726);
                                                                                                                                                         }
                                                                                                                                                         addr561:
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr746);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr694);
                                                                                                                                                }
                                                                                                                                                addr547:
                                                                                                                                             }
                                                                                                                                             §§goto(addr487);
                                                                                                                                          }
                                                                                                                                          §§goto(addr537);
                                                                                                                                       }
                                                                                                                                       addr545:
                                                                                                                                    }
                                                                                                                                    §§goto(addr547);
                                                                                                                                    addr602:
                                                                                                                                 }
                                                                                                                                 §§goto(addr696);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr729);
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            break;
                                                                                                         }
                                                                                                         this.mIsSpecial = true;
                                                                                                         break loop25;
                                                                                                         addr722:
                                                                                                      }
                                                                                                      §§goto(addr602);
                                                                                                   }
                                                                                                   addr640:
                                                                                                }
                                                                                                §§goto(addr695);
                                                                                             }
                                                                                          }
                                                                                          addr637:
                                                                                       }
                                                                                       §§goto(addr748);
                                                                                    }
                                                                                 }
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§goto(addr704);
                                                                              }
                                                                              addr703:
                                                                           }
                                                                           §§goto(addr671);
                                                                        }
                                                                        §§goto(addr750);
                                                                     }
                                                                  }
                                                                  addr668:
                                                               }
                                                               §§goto(addr728);
                                                            }
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr489);
                                                }
                                             }
                                             §§goto(addr750);
                                          }
                                          break;
                                       }
                                       §§goto(addr757);
                                    }
                                    §§goto(addr734);
                                 }
                                 §§goto(addr722);
                              }
                              §§goto(addr757);
                           }
                        }
                        §§goto(addr757);
                     }
                     else
                     {
                        §§push(this.§7!B§);
                        if(!(_loc4_ && _loc3_))
                        {
                           §§push(§§pop().getSpecialAnimationProgress());
                           if(!_loc4_)
                           {
                              §§push(0);
                              if(!(_loc4_ && _loc3_))
                              {
                                 §§push(§§pop() >= §§pop());
                                 if(!(_loc4_ && this))
                                 {
                                    §§push(§§pop());
                                    if(_loc5_ || _loc3_)
                                    {
                                       if(§§pop())
                                       {
                                          if(!_loc4_)
                                          {
                                             §§pop();
                                             if(!(_loc4_ && _loc2_))
                                             {
                                                §§push(this.§,s§);
                                                if(_loc5_ || _loc2_)
                                                {
                                                   §§push(this.§["0§);
                                                   if(!(_loc4_ && _loc2_))
                                                   {
                                                      §§push(§§pop().getSubAnimation(§§pop()));
                                                      if(!_loc4_)
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                         if(!(_loc4_ && _loc2_))
                                                         {
                                                            addr102:
                                                            if(§§pop())
                                                            {
                                                               if(_loc5_ || _loc1_)
                                                               {
                                                                  addr111:
                                                                  this.§%">§ = this.§,s§.getSubAnimation(this.§["0§);
                                                                  if(_loc5_ || _loc2_)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        this.§!"'§ = this.§%">§.getFrameCount() * this.§7!B§.getSpecialAnimationProgress();
                                                                        if(_loc5_ || this)
                                                                        {
                                                                           §§push(this.§!"'§ == this.§%">§.getFrameCount() - 1);
                                                                           if(!_loc4_)
                                                                           {
                                                                              §§push(§§pop());
                                                                              if(_loc5_)
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       addr44:
                                                                                       §§pop();
                                                                                       if(_loc5_ || _loc1_)
                                                                                       {
                                                                                          if(false)
                                                                                          {
                                                                                             continue;
                                                                                          }
                                                                                          addr219:
                                                                                          §§push(this.§7!B§.getSpecialAnimationTimeLeft());
                                                                                          if(_loc5_ || this)
                                                                                          {
                                                                                             addr227:
                                                                                             §§push(100);
                                                                                             if(!(_loc4_ && _loc2_))
                                                                                             {
                                                                                                §§push(§§pop() > §§pop());
                                                                                                if(_loc5_)
                                                                                                {
                                                                                                   addr238:
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      if(_loc5_)
                                                                                                      {
                                                                                                         §§goto(addr241);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr268);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr405);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr704);
                                                                                          }
                                                                                          §§goto(addr703);
                                                                                       }
                                                                                       §§goto(addr561);
                                                                                    }
                                                                                    §§goto(addr746);
                                                                                 }
                                                                                 §§goto(addr238);
                                                                              }
                                                                              §§goto(addr747);
                                                                           }
                                                                           §§goto(addr44);
                                                                        }
                                                                        §§goto(addr685);
                                                                     }
                                                                  }
                                                                  §§goto(addr654);
                                                               }
                                                               §§goto(addr461);
                                                            }
                                                            else
                                                            {
                                                               §§push(this.mTryToSpecial);
                                                            }
                                                            §§goto(addr745);
                                                         }
                                                         §§goto(addr545);
                                                      }
                                                      §§goto(addr668);
                                                   }
                                                   §§goto(addr331);
                                                }
                                                §§goto(addr663);
                                             }
                                             §§goto(addr437);
                                          }
                                          §§goto(addr637);
                                       }
                                       §§goto(addr102);
                                    }
                                    §§goto(addr640);
                                 }
                                 §§goto(addr716);
                              }
                              §§goto(addr634);
                           }
                           §§goto(addr227);
                        }
                        §§goto(addr219);
                     }
                  }
                  §§goto(addr733);
               }
               §§goto(addr757);
            }
            §§goto(addr577);
         }
         §§goto(addr111);
      }
      
      public function §=!P§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§3^§.visible = false;
         }
      }
      
      public function setDamagedFrame() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.§0!A§);
            if(!_loc3_)
            {
               if(§§pop() < 0)
               {
                  if(!(_loc3_ && _loc2_))
                  {
                     this.§7"!§();
                     addr33:
                     §§push(0);
                  }
               }
               §§goto(addr33);
            }
            var _loc1_:* = §§pop();
            if(!(_loc3_ && _loc2_))
            {
               §§push(1);
               loop0:
               while(true)
               {
                  §§push(this.§7!B§.§[" §);
                  if(_loc2_)
                  {
                     §§push(§§pop() / this.§7!B§.§@!h§);
                  }
                  §§push(§§pop() - §§pop());
                  if(_loc2_)
                  {
                     §§push(§§pop() * this.§0!A§);
                  }
                  §§push(int(§§pop()));
                  loop1:
                  while(true)
                  {
                     _loc1_ = §§pop();
                     addr131:
                     while(true)
                     {
                        §§push(_loc1_);
                        if(!_loc3_)
                        {
                           continue loop0;
                        }
                        continue loop1;
                     }
                     continue loop0;
                  }
               }
            }
            §§goto(addr62);
         }
         §§goto(addr33);
      }
      
      public function §7"!§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            if(this.§,s§)
            {
               if(!(_loc2_ && _loc2_))
               {
                  this.§0!A§ = this.§,s§.getFrameCount();
               }
            }
         }
      }
      
      public function §!!&§(param1:uint = 16777215, param2:int = 4, param3:int = 4) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param3))
         {
            this.§[y§ = new GlowFilter();
            while(true)
            {
               this.§[y§.blurX = param2;
            }
            addr86:
         }
         while(true)
         {
            this.§[y§.blurY = param3;
            for(; !(_loc5_ && param1); this.§[y§.color = param1,if(_loc4_ || param3)
            {
               return;
            })
            {
               if(!_loc5_)
               {
                  continue;
               }
               §§goto(addr86);
            }
         }
      }
      
      public function §@"%§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            this.§[y§ = null;
         }
      }
      
      public function §8!C§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:int = Math.min(8,Math.max(this.§7!B§.§;!"§(false),1));
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= _loc1_)
            {
               if(_loc3_ || _loc1_)
               {
                  break;
               }
            }
            else
            {
               this.§&"C§(_loc2_);
               while(true)
               {
                  _loc2_++;
               }
               addr75:
            }
            while(_loc4_)
            {
               §§goto(addr75);
            }
         }
      }
      
      public function §#"E§(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = this.§9!4§.length - 1;
         while(true)
         {
            §§push(_loc2_);
            if(!_loc4_)
            {
               if(§§pop() < 0)
               {
                  if(_loc3_ || this)
                  {
                     break;
                  }
                  loop1:
                  while(true)
                  {
                     if(_loc3_)
                     {
                        if(!(_loc4_ && _loc2_))
                        {
                           if(_loc3_ || _loc2_)
                           {
                              break;
                           }
                           addr102:
                           while(true)
                           {
                              if(this.§9!4§[_loc2_].lifeTime < 0)
                              {
                                 while(true)
                                 {
                                    this.§&"C§(_loc2_);
                                    addr93:
                                    while(true)
                                    {
                                    }
                                 }
                                 addr90:
                              }
                              while(true)
                              {
                                 §§push(_loc2_);
                                 if(_loc3_)
                                 {
                                    §§push(§§pop() - 1);
                                 }
                                 continue loop1;
                              }
                           }
                        }
                        §§goto(addr90);
                     }
                     §§goto(addr93);
                  }
                  continue;
               }
               this.§9!4§[_loc2_].updateLifeTime(param1);
               §§goto(addr102);
            }
            §§goto(addr54);
         }
      }
      
      private function §&"C§(param1:int) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!_loc7_)
         {
            if(!this.§`R§)
            {
               if(!_loc7_)
               {
                  return;
               }
            }
         }
         var _loc2_:int = 0;
         if(!(_loc7_ && this))
         {
            if(Math.random() < 0.5)
            {
               if(!(_loc7_ && param1))
               {
                  addr44:
                  _loc2_ = 1;
               }
            }
            var _loc3_:§3!K§ = this.§`R§.getFrame(_loc2_);
            §§push(100 + Math.random() * 100);
            if(!_loc7_)
            {
               §§push(Number(§§pop()));
            }
            var _loc4_:* = §§pop();
            var _loc5_:§<m§ = null;
            if(_loc6_ || _loc2_)
            {
               if(param1 < this.§9!4§.length)
               {
                  addr77:
                  (_loc5_ = this.§9!4§[param1]).§<!?§(_loc4_);
                  if(_loc6_)
                  {
                     _loc5_.§ !C§(_loc3_.texture);
                     if(!(_loc7_ && this))
                     {
                        addr135:
                        §§push(_loc5_.image);
                        if(_loc6_)
                        {
                           §§push(_loc3_.pivotX);
                           if(_loc6_)
                           {
                              §§push(-§§pop());
                              if(!(_loc7_ && this))
                              {
                                 §§push(this.§#!5§);
                                 if(_loc6_)
                                 {
                                    §§push(§§pop().width / 2);
                                    if(_loc6_ || _loc2_)
                                    {
                                       §§push(§§pop() - §§pop());
                                       if(_loc6_ || _loc2_)
                                       {
                                          §§push(Math.random() * this.§#!5§.width);
                                          if(!(_loc7_ && param1))
                                          {
                                             addr186:
                                             §§push(§§pop() + §§pop());
                                             if(_loc6_ || _loc2_)
                                             {
                                                §§goto(addr194);
                                             }
                                             §§goto(addr219);
                                          }
                                          §§goto(addr226);
                                       }
                                       §§goto(addr219);
                                    }
                                    §§goto(addr186);
                                 }
                                 §§goto(addr219);
                              }
                              addr194:
                              §§pop().x = §§pop();
                              if(!_loc7_)
                              {
                                 addr201:
                                 §§push(_loc5_.image);
                                 §§push(-_loc3_.pivotY);
                                 if(_loc6_ || this)
                                 {
                                    addr219:
                                    §§push(this.§#!5§.height / 2);
                                    if(_loc6_)
                                    {
                                       addr226:
                                       §§push(§§pop() - §§pop());
                                       if(!(_loc7_ && param1))
                                       {
                                          addr240:
                                          §§push(§§pop() + Math.random() * this.§#!5§.height);
                                       }
                                       §§pop().y = §§pop();
                                       §§goto(addr242);
                                    }
                                 }
                                 §§goto(addr240);
                              }
                              addr242:
                              return;
                           }
                        }
                     }
                     §§goto(addr201);
                  }
                  §§goto(addr226);
               }
               else
               {
                  _loc5_ = new §<m§(_loc3_.texture,_loc4_);
                  if(!(_loc7_ && _loc3_))
                  {
                     this.§9!4§.push(_loc5_);
                     if(!_loc7_)
                     {
                        this.§3^§.addChild(_loc5_.image);
                     }
                  }
               }
               §§goto(addr135);
            }
            §§goto(addr77);
         }
         §§goto(addr44);
      }
      
      public function §]"'§() : §0!N§
      {
         return this.§#!5§;
      }
   }
}
