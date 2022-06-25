package §=b§
{
   import §-d§.§7]§;
   import §2_§.§'u§;
   import §2_§.§[M§;
   import §4>§.Texture;
   import §7!B§.§-§;
   import §7!B§.Sprite;
   import §;%§.b2Vec2;
   import §^!Y§.§1C§;
   import §^!Y§.§4!f§;
   import §^!Y§.§else §;
   import flash.filters.GlowFilter;
   
   public class § 6§
   {
      
      public static const §8!3§:Number = 1000;
      
      public static const §;3§:Number = 500;
      
      private static var §#9§:Array = null;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && § 6§))
         {
            §8!3§ = 1000;
            while(true)
            {
               §;3§ = 500;
               while(_loc2_ || § 6§)
               {
                  §#9§ = null;
                  if(_loc1_)
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
      
      private var §2F§:§`!_§;
      
      public var §8!t§:int;
      
      public var mW:Number;
      
      public var mH:Number;
      
      public var §1!N§:Number;
      
      public var §>!§:Number;
      
      public var §[6§:int = -1;
      
      private var §+!!§:String;
      
      private var §'P§:§4!f§;
      
      private var §4b§:§4!f§;
      
      private var §7a§:§-§;
      
      private var §+!E§:Number = 0;
      
      private var §1Y§:Number = 0;
      
      public var § !w§:int = -1;
      
      private var §"!R§:int = -1;
      
      private var §@!m§:int = 0;
      
      public var mTryToSpecial:Boolean = false;
      
      public var mIsSpecial:Boolean = false;
      
      public var §'!t§:String = "special";
      
      public var mTryToFly:Boolean = false;
      
      public var mIsFlying:Boolean = false;
      
      public var §&X§:Boolean = false;
      
      public var mTryToScream:Number = 0;
      
      public var §`a§:String = "yell";
      
      public var mIsScreaming:Boolean = false;
      
      public var mTryToBlink:Number = 0;
      
      public var §9!A§:String = "blink";
      
      public var mIsBlinking:Boolean = false;
      
      public var § q§:String = "fly";
      
      public var §%!b§:String = "fly_yell";
      
      public var §1O§:GlowFilter;
      
      private var §?_§:Vector.<§[M§>;
      
      private var §59§:§4!f§;
      
      private var §2O§:Sprite = null;
      
      private var §#!3§:§'u§;
      
      public function § 6§(param1:§`!_§, param2:Sprite, param3:§'u§)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || this)
         {
            super();
            while(true)
            {
               this.§#!3§ = param3;
               while(_loc5_ || param1)
               {
                  this.§2F§ = param1;
                  while(true)
                  {
                     this.§+!!§ = this.§2F§.§^r§;
                     §§goto(addr76);
                  }
               }
            }
         }
         addr76:
         loop3:
         while(true)
         {
            this.§?_§ = new Vector.<§[M§>();
            while(true)
            {
               if(!_loc4_)
               {
                  if(_loc4_)
                  {
                     break;
                  }
                  continue;
               }
               continue loop3;
            }
            continue loop2;
         }
      }
      
      public function dispose() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§[M§ = null;
         if(_loc2_)
         {
            this.§?-§();
            if(!(_loc3_ && _loc3_))
            {
               if(this.§?_§)
               {
                  addr43:
                  while(this.§?_§.length > 0)
                  {
                     _loc1_ = this.§?_§.pop();
                     if(!(_loc3_ && _loc2_))
                     {
                        _loc1_.dispose();
                     }
                  }
                  if(!(_loc3_ && _loc2_))
                  {
                     this.§?_§ = null;
                  }
               }
               return;
            }
         }
         §§goto(addr43);
      }
      
      public function §9!F§(param1:int, param2:Number, param3:Number, param4:Number) : void
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
               while(true)
               {
                  this.§[6§ = param1;
                  while(!_loc5_)
                  {
                     this.§>!§ = param2;
                     while(_loc6_)
                     {
                        continue loop0;
                        this.§,!k§();
                        if(_loc6_ || param2)
                        {
                           return;
                           addr54:
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr54);
      }
      
      public function §^u§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(!param1)
            {
               loop0:
               while(true)
               {
                  §§push(this);
                  §§push(this.mW);
                  if(_loc3_)
                  {
                     §§push(§§pop() / this.mH);
                  }
                  §§pop().§1!N§ = §§pop();
                  while(true)
                  {
                     if(this.§1!N§ < 1)
                     {
                        loop2:
                        while(true)
                        {
                           this.§1!N§ = 1 / this.§1!N§;
                           loop3:
                           while(!_loc2_)
                           {
                              while(true)
                              {
                                 this.§1!N§ = Math.min(11,this.§1!N§);
                                 if(_loc3_ || _loc2_)
                                 {
                                    continue loop2;
                                 }
                                 continue loop3;
                              }
                           }
                           §§goto(addr116);
                        }
                     }
                     §§goto(addr24);
                     if(!(_loc2_ && _loc2_))
                     {
                        if(_loc3_)
                        {
                           return;
                           addr65:
                        }
                        if(_loc3_ || _loc2_)
                        {
                           continue loop0;
                        }
                        else
                        {
                           addr113:
                        }
                        this.§1!N§ = 1;
                     }
                     continue;
                     addr116:
                     return;
                  }
               }
            }
            §§goto(addr113);
         }
         §§goto(addr65);
      }
      
      public function §[9§(param1:§else §) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§1C§ = null;
         var _loc3_:Texture = null;
         if(_loc6_)
         {
            §§push(this.§2F§.isGround());
            if(!_loc5_)
            {
               if(!§§pop())
               {
                  loop0:
                  while(true)
                  {
                     this.§59§ = param1.getAnimation("SPARKLES");
                     while(true)
                     {
                        if(_loc6_)
                        {
                           if(!(_loc6_ || param1))
                           {
                              break;
                           }
                           while(true)
                           {
                              this.§'P§ = param1.getAnimation(this.§+!!§);
                              do
                              {
                                 this.§4b§ = this.§'P§;
                              }
                              while(!_loc6_);
                              
                              if(!_loc6_)
                              {
                                 break;
                              }
                              if(false)
                              {
                                 continue;
                              }
                              var _loc4_:* = Number(1);
                              if(_loc6_)
                              {
                                 §§push(this.§4b§);
                                 if(_loc6_ || _loc2_)
                                 {
                                    if(§§pop())
                                    {
                                       addr87:
                                       _loc2_ = this.§4b§.getFrame(0);
                                       addr85:
                                       if(!(_loc5_ && _loc3_))
                                       {
                                          §§push(_loc2_.scale);
                                          if(_loc6_ || this)
                                          {
                                             §§push(Number(§§pop()));
                                          }
                                          _loc4_ = §§pop();
                                       }
                                       _loc3_ = _loc2_.texture;
                                       if(_loc6_ || _loc3_)
                                       {
                                          addr127:
                                          this.§7a§ = new §-§(_loc3_);
                                          if(_loc6_)
                                          {
                                             if(!_loc2_)
                                             {
                                                §§push(this.§7a§);
                                                loop4:
                                                while(true)
                                                {
                                                   §§push(this.§7a§);
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
                                                                  §§push(this.§7a§);
                                                                  loop10:
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§7a§);
                                                                     if(!_loc6_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     §§push(-§§pop().height);
                                                                     loop11:
                                                                     while(true)
                                                                     {
                                                                        §§push(2);
                                                                        if(_loc5_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        §§push(§§pop() / §§pop());
                                                                        loop12:
                                                                        while(true)
                                                                        {
                                                                           if(!_loc5_)
                                                                           {
                                                                              §§pop().y = §§pop();
                                                                              loop13:
                                                                              for(; !(_loc5_ && param1); loop17:
                                                                              while(true)
                                                                              {
                                                                                 if(!(_loc5_ && _loc3_))
                                                                                 {
                                                                                    §§push(this.§7a§);
                                                                                    if(!_loc5_)
                                                                                    {
                                                                                       §§push(_loc4_);
                                                                                       if(!_loc5_)
                                                                                       {
                                                                                          if(!_loc6_)
                                                                                          {
                                                                                             continue loop12;
                                                                                          }
                                                                                          if(_loc5_ && param1)
                                                                                          {
                                                                                             continue loop8;
                                                                                          }
                                                                                          if(_loc5_)
                                                                                          {
                                                                                             continue loop6;
                                                                                          }
                                                                                          §§pop().scaleY = §§pop();
                                                                                          loop18:
                                                                                          while(true)
                                                                                          {
                                                                                             this.mW = this.§7a§.width / 2;
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc6_)
                                                                                                {
                                                                                                   if(!(_loc5_ && this))
                                                                                                   {
                                                                                                      this.mH = this.§7a§.height / 2;
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(_loc6_)
                                                                                                         {
                                                                                                            if(!_loc6_)
                                                                                                            {
                                                                                                               break;
                                                                                                            }
                                                                                                            continue;
                                                                                                         }
                                                                                                         continue loop18;
                                                                                                      }
                                                                                                      §§goto(addr304);
                                                                                                   }
                                                                                                   break;
                                                                                                }
                                                                                                continue loop17;
                                                                                             }
                                                                                             §§goto(addr320);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr230);
                                                                                    }
                                                                                    break;
                                                                                 }
                                                                                 continue loop13;
                                                                              },§§goto(addr216))
                                                                              {
                                                                                 loop14:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(this.§7a§);
                                                                                    addr216:
                                                                                    loop15:
                                                                                    while(true)
                                                                                    {
                                                                                       if(!_loc5_)
                                                                                       {
                                                                                          if(_loc6_)
                                                                                          {
                                                                                             if(!_loc5_)
                                                                                             {
                                                                                                if(_loc6_ || _loc3_)
                                                                                                {
                                                                                                   §§push(_loc4_);
                                                                                                   while(!_loc5_)
                                                                                                   {
                                                                                                      §§pop().scaleX = §§pop();
                                                                                                      continue loop13;
                                                                                                   }
                                                                                                   continue loop11;
                                                                                                   addr230:
                                                                                                }
                                                                                                addr316:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc2_.pivotX);
                                                                                                   addr318:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(-§§pop());
                                                                                                      addr319:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§pop().x = §§pop();
                                                                                                         addr320:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(this.§7a§);
                                                                                                            break loop15;
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             break;
                                                                                          }
                                                                                          continue loop4;
                                                                                       }
                                                                                       continue loop10;
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc2_.pivotY);
                                                                                       if(_loc6_)
                                                                                       {
                                                                                          §§push(-§§pop());
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc6_ || _loc2_)
                                                                                             {
                                                                                                §§pop().y = §§pop();
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!(_loc5_ && param1))
                                                                                                   {
                                                                                                      continue loop14;
                                                                                                   }
                                                                                                   addr314:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§goto(addr316);
                                                                                                   }
                                                                                                }
                                                                                                addr304:
                                                                                             }
                                                                                             §§goto(addr319);
                                                                                          }
                                                                                          addr296:
                                                                                       }
                                                                                       §§goto(addr318);
                                                                                       §§goto(addr320);
                                                                                    }
                                                                                 }
                                                                              }
                                                                              continue loop9;
                                                                           }
                                                                           §§goto(addr296);
                                                                        }
                                                                     }
                                                                     continue loop7;
                                                                  }
                                                                  continue loop5;
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             §§goto(addr314);
                                          }
                                          §§goto(addr320);
                                       }
                                       §§goto(addr311);
                                    }
                                    else
                                    {
                                       _loc3_ = this.§#!3§.textureManager.§,<§();
                                    }
                                    §§goto(addr127);
                                 }
                                 §§goto(addr87);
                              }
                              §§goto(addr85);
                           }
                           continue;
                        }
                        continue loop0;
                     }
                     addr67:
                  }
               }
               §§goto(addr67);
            }
            return §§pop();
         }
         §§goto(addr67);
      }
      
      public function §@!k§(param1:§7]§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:Array = null;
         var _loc3_:b2Vec2 = null;
         §§push(param1.§]n§);
         if(_loc6_ || param1)
         {
            var _loc4_:* = §§pop();
            if(_loc6_ || this)
            {
               §§push(§7]§.§"!D§);
               if(!_loc5_)
               {
                  §§push(_loc4_);
                  if(_loc6_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!(_loc5_ && param1))
                        {
                           §§push(0);
                           if(!_loc6_)
                           {
                              addr148:
                              if(§§pop() === _loc4_)
                              {
                                 addr150:
                                 §§push(1);
                                 if(_loc6_ || _loc2_)
                                 {
                                    addr158:
                                 }
                              }
                              else
                              {
                                 §§push(2);
                              }
                           }
                           §§goto(addr164);
                        }
                        §§goto(addr150);
                     }
                     else
                     {
                        §§push(§7]§.§&&§);
                        if(!(_loc5_ && this))
                        {
                           §§goto(addr148);
                        }
                     }
                     §§goto(addr158);
                  }
               }
               §§goto(addr148);
            }
            §§goto(addr150);
         }
         addr164:
         switch(§§pop())
         {
            case 0:
               _loc2_ = param1.§&o§();
               _loc3_ = _loc2_[0];
               if(_loc6_ || _loc3_)
               {
                  §§push(this);
                  §§push(_loc3_.x);
                  if(_loc6_)
                  {
                     §§push(§§pop() / §'u§.§18§);
                  }
                  §§pop().§+!E§ = §§pop();
                  if(_loc5_ && param1)
                  {
                  }
                  break;
               }
               §§push(this);
               §§push(_loc3_.y);
               if(_loc6_ || _loc2_)
               {
                  §§push(§§pop() / §'u§.§18§);
               }
               §§pop().§1Y§ = §§pop();
               if(!(_loc5_ && _loc3_))
               {
                  addr165:
                  this.§2!m§();
                  break;
               }
               break;
            case 1:
               §§goto(addr165);
            default:
               §§goto(addr165);
         }
      }
      
      public function §6!,§() : Array
      {
         return §"z§.§6!,§(null,this.§2F§.§-!F§());
      }
      
      public function §"!6§() : Array
      {
         return §"z§.§"!6§(null,this.§2F§.§-!F§());
      }
      
      public function §?!`§() : Array
      {
         return §"z§.§?!`§(null);
      }
      
      public function §,!k§() : void
      {
      }
      
      public function §+!s§(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.§2O§.scaleX = this.§2O§.scaleY = param1;
         }
      }
      
      public function §2!m§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§1C§ = null;
         if(_loc5_)
         {
            §§push(this.§'P§);
            if(_loc5_ || _loc1_)
            {
               if(!§§pop())
               {
                  if(_loc5_ || _loc2_)
                  {
                     return;
                  }
                  loop33:
                  while(true)
                  {
                     §§push(this.§'P§);
                     addr615:
                     loop87:
                     while(true)
                     {
                        §§push(this.§%!b§);
                        loop25:
                        while(true)
                        {
                           if(_loc5_)
                           {
                              §§push(§§pop().getSubAnimation(§§pop()));
                              loop51:
                              while(true)
                              {
                                 §§push(Boolean(§§pop()));
                                 loop31:
                                 while(true)
                                 {
                                    if(!_loc4_)
                                    {
                                       if(_loc5_ || _loc3_)
                                       {
                                          loop32:
                                          while(true)
                                          {
                                             if(!§§pop())
                                             {
                                                §§push(this.mTryToScream);
                                                while(true)
                                                {
                                                   if(!(_loc4_ && this))
                                                   {
                                                      break loop32;
                                                   }
                                                   addr673:
                                                   loop86:
                                                   while(true)
                                                   {
                                                      §§push(0);
                                                      addr674:
                                                      loop36:
                                                      while(true)
                                                      {
                                                         §§push(§§pop() > §§pop());
                                                         addr675:
                                                         while(true)
                                                         {
                                                            §§push(§§pop());
                                                            loop19:
                                                            while(!(_loc4_ && _loc3_))
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  loop20:
                                                                  for(; _loc5_; while(_loc5_ || _loc2_)
                                                                  {
                                                                     §§push(§§pop() > 0);
                                                                  })
                                                                  {
                                                                     §§pop();
                                                                     while(true)
                                                                     {
                                                                        §§push(this.mTryToFly);
                                                                        continue loop20;
                                                                     }
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop());
                                                                     break loop19;
                                                                  }
                                                                  addr721:
                                                               }
                                                               while(true)
                                                               {
                                                                  addr657:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop());
                                                                     addr658:
                                                                     while(true)
                                                                     {
                                                                        if(!(_loc5_ || this))
                                                                        {
                                                                           continue loop19;
                                                                        }
                                                                        if(!§§pop())
                                                                        {
                                                                           continue loop32;
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§pop();
                                                                           continue loop33;
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            addr722:
                                                            loop23:
                                                            while(§§pop())
                                                            {
                                                               loop34:
                                                               while(true)
                                                               {
                                                                  §§pop();
                                                                  addr724:
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§'P§);
                                                                     addr696:
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§'!t§);
                                                                        addr698:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop().getSubAnimation(§§pop()));
                                                                           addr699:
                                                                           while(true)
                                                                           {
                                                                              §§push(Boolean(§§pop()));
                                                                              addr700:
                                                                              while(true)
                                                                              {
                                                                                 if(_loc5_ || _loc2_)
                                                                                 {
                                                                                    break loop23;
                                                                                 }
                                                                                 addr720:
                                                                                 while(true)
                                                                                 {
                                                                                    §§goto(addr721);
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     continue loop34;
                                                                  }
                                                               }
                                                            }
                                                            while(true)
                                                            {
                                                               if(!§§pop())
                                                               {
                                                                  §§push(this.mTryToScream);
                                                                  continue loop86;
                                                               }
                                                               this.§4b§ = this.§'P§.getSubAnimation(this.§'!t§);
                                                               this.mIsSpecial = true;
                                                               §§push(this.§4b§);
                                                               if(_loc5_ || _loc2_)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     addr737:
                                                                     _loc1_ = this.§4b§.getFrame(this.§@!m§);
                                                                     if(!(_loc4_ && this))
                                                                     {
                                                                        §§push(this.§7a§);
                                                                        loop56:
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
                                                                                    loop65:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(Boolean(_loc1_));
                                                                                       if(_loc5_)
                                                                                       {
                                                                                          loop57:
                                                                                          while(§§pop())
                                                                                          {
                                                                                             if(!_loc4_)
                                                                                             {
                                                                                                §§push(this.§7a§);
                                                                                                while(true)
                                                                                                {
                                                                                                   §§pop().texture = _loc1_.texture;
                                                                                                }
                                                                                                addr902:
                                                                                             }
                                                                                             loop59:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(this.§7a§);
                                                                                                loop60:
                                                                                                for(; !_loc4_; while(_loc5_ || _loc1_)
                                                                                                {
                                                                                                   §§goto(addr830);
                                                                                                })
                                                                                                {
                                                                                                   §§push(_loc1_.pivotX);
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(-§§pop());
                                                                                                      if(_loc5_ || this)
                                                                                                      {
                                                                                                         §§push(this.§+!E§);
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop() - §§pop());
                                                                                                            addr847:
                                                                                                            §§push(this.§1Y§);
                                                                                                            if(_loc4_ && _loc1_)
                                                                                                            {
                                                                                                               continue;
                                                                                                            }
                                                                                                            §§push(§§pop() - §§pop());
                                                                                                            loop68:
                                                                                                            for(; _loc5_; if(!(_loc5_ || _loc3_))
                                                                                                            {
                                                                                                               continue;
                                                                                                            },§§pop().scaleY = §§pop(),if(_loc5_ || this)
                                                                                                            {
                                                                                                               if(_loc5_ || _loc1_)
                                                                                                               {
                                                                                                                  if(true)
                                                                                                                  {
                                                                                                                     break loop57;
                                                                                                                  }
                                                                                                                  §§goto(addr795);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  addr890:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(this.§7a§);
                                                                                                                     continue loop60;
                                                                                                                  }
                                                                                                                  addr890:
                                                                                                               }
                                                                                                            },§§goto(addr803))
                                                                                                            {
                                                                                                               §§pop().y = §§pop();
                                                                                                               loop69:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  addr795:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(this.§7a§);
                                                                                                                     loop71:
                                                                                                                     while(!_loc4_)
                                                                                                                     {
                                                                                                                        §§push(_loc1_.scale);
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§pop().scaleX = §§pop();
                                                                                                                           addr803:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(_loc5_)
                                                                                                                              {
                                                                                                                                 if(!(_loc5_ || _loc3_))
                                                                                                                                 {
                                                                                                                                    break;
                                                                                                                                 }
                                                                                                                                 if(!(_loc4_ && _loc3_))
                                                                                                                                 {
                                                                                                                                    §§push(this.§7a§);
                                                                                                                                    if(_loc5_)
                                                                                                                                    {
                                                                                                                                       continue loop56;
                                                                                                                                    }
                                                                                                                                    continue loop71;
                                                                                                                                 }
                                                                                                                                 continue loop65;
                                                                                                                              }
                                                                                                                              continue loop69;
                                                                                                                           }
                                                                                                                           addr762:
                                                                                                                           §§push(_loc1_.scale);
                                                                                                                           continue loop59;
                                                                                                                           if(!(_loc4_ && this))
                                                                                                                           {
                                                                                                                              continue loop68;
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     continue loop60;
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§pop().x = §§pop();
                                                                                                               §§goto(addr890);
                                                                                                            }
                                                                                                            addr889:
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr889);
                                                                                                      addr830:
                                                                                                      §§push(_loc1_.pivotY);
                                                                                                      if(!(_loc5_ || _loc2_))
                                                                                                      {
                                                                                                         continue;
                                                                                                      }
                                                                                                      §§push(-§§pop());
                                                                                                      if(!(_loc4_ && _loc1_))
                                                                                                      {
                                                                                                         §§goto(addr847);
                                                                                                      }
                                                                                                      §§goto(addr857);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr902);
                                                                                             }
                                                                                             continue loop65;
                                                                                          }
                                                                                          addr915:
                                                                                          return;
                                                                                          addr896:
                                                                                       }
                                                                                       break;
                                                                                    }
                                                                                 }
                                                                                 addr913:
                                                                              }
                                                                              §§goto(addr896);
                                                                           }
                                                                           §§goto(addr913);
                                                                        }
                                                                     }
                                                                     §§goto(addr890);
                                                                  }
                                                                  §§goto(addr915);
                                                               }
                                                               §§goto(addr737);
                                                            }
                                                            continue loop36;
                                                         }
                                                      }
                                                   }
                                                }
                                                addr578:
                                             }
                                             addr632:
                                             while(true)
                                             {
                                                if(!_loc5_)
                                                {
                                                   continue loop33;
                                                }
                                                this.§4b§ = this.§'P§.getSubAnimation(this.§%!b§);
                                                if(_loc5_)
                                                {
                                                   this.mIsScreaming = true;
                                                   this.mIsFlying = true;
                                                   addr611:
                                                   if(!_loc5_)
                                                   {
                                                      §§goto(addr611);
                                                   }
                                                }
                                                else
                                                {
                                                   §§goto(addr716);
                                                }
                                                §§goto(addr725);
                                             }
                                          }
                                          while(true)
                                          {
                                             §§push(0);
                                             loop78:
                                             while(true)
                                             {
                                                §§push(§§pop() > §§pop());
                                                loop26:
                                                while(true)
                                                {
                                                   if(_loc5_ || _loc1_)
                                                   {
                                                      §§push(§§pop());
                                                      loop40:
                                                      while(true)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            loop44:
                                                            while(true)
                                                            {
                                                               if(_loc5_)
                                                               {
                                                                  §§pop();
                                                                  loop45:
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§'P§);
                                                                     loop53:
                                                                     while(true)
                                                                     {
                                                                        if(!_loc4_)
                                                                        {
                                                                           §§push(this.§`a§);
                                                                           loop48:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop().getSubAnimation(§§pop()));
                                                                              loop52:
                                                                              while(true)
                                                                              {
                                                                                 §§push(Boolean(§§pop()));
                                                                                 loop47:
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc4_ && _loc1_)
                                                                                    {
                                                                                       continue loop31;
                                                                                    }
                                                                                    if(_loc5_)
                                                                                    {
                                                                                       loop30:
                                                                                       while(true)
                                                                                       {
                                                                                          addr557:
                                                                                          while(true)
                                                                                          {
                                                                                             if(!§§pop())
                                                                                             {
                                                                                                §§push(this.mTryToBlink);
                                                                                                if(_loc5_ || _loc3_)
                                                                                                {
                                                                                                   §§push(0);
                                                                                                   if(_loc4_ && _loc2_)
                                                                                                   {
                                                                                                      continue loop78;
                                                                                                   }
                                                                                                   if(_loc5_)
                                                                                                   {
                                                                                                      §§push(§§pop() > §§pop());
                                                                                                      loop46:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!(_loc5_ || _loc3_))
                                                                                                         {
                                                                                                            continue loop47;
                                                                                                         }
                                                                                                         addr518:
                                                                                                         loop17:
                                                                                                         for(; §§pop(); §§goto(addr518))
                                                                                                         {
                                                                                                            loop24:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(_loc5_)
                                                                                                               {
                                                                                                                  §§pop();
                                                                                                                  loop4:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(!_loc4_)
                                                                                                                     {
                                                                                                                        §§push(this.§'P§);
                                                                                                                        loop5:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(_loc4_)
                                                                                                                           {
                                                                                                                              continue loop53;
                                                                                                                           }
                                                                                                                           §§push(this.§9!A§);
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop().getSubAnimation(§§pop()));
                                                                                                                              addr452:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(!_loc5_)
                                                                                                                                 {
                                                                                                                                    continue loop52;
                                                                                                                                 }
                                                                                                                                 if(_loc4_)
                                                                                                                                 {
                                                                                                                                    continue loop51;
                                                                                                                                 }
                                                                                                                                 if(!(_loc4_ && _loc3_))
                                                                                                                                 {
                                                                                                                                    §§push(Boolean(§§pop()));
                                                                                                                                    break loop17;
                                                                                                                                 }
                                                                                                                                 §§goto(addr699);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           addr424:
                                                                                                                           loop84:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(this.§'P§);
                                                                                                                              if(!_loc5_)
                                                                                                                              {
                                                                                                                                 continue loop5;
                                                                                                                              }
                                                                                                                              if(!_loc5_)
                                                                                                                              {
                                                                                                                                 continue loop87;
                                                                                                                              }
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(this.§ q§);
                                                                                                                                 if(_loc5_)
                                                                                                                                 {
                                                                                                                                    if(!(_loc5_ || _loc3_))
                                                                                                                                    {
                                                                                                                                       continue loop48;
                                                                                                                                    }
                                                                                                                                    if(_loc4_ && _loc1_)
                                                                                                                                    {
                                                                                                                                       continue loop25;
                                                                                                                                    }
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop().getSubAnimation(§§pop()));
                                                                                                                                       if(_loc5_ || this)
                                                                                                                                       {
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(Boolean(§§pop()));
                                                                                                                                             if(!_loc4_)
                                                                                                                                             {
                                                                                                                                                addr328:
                                                                                                                                                if(!(_loc4_ && _loc3_))
                                                                                                                                                {
                                                                                                                                                   addr335:
                                                                                                                                                   if(!(_loc5_ || _loc3_))
                                                                                                                                                   {
                                                                                                                                                      loop10:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(!_loc4_)
                                                                                                                                                         {
                                                                                                                                                            if(!_loc4_)
                                                                                                                                                            {
                                                                                                                                                               §§push(Boolean(§§pop()));
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc4_ && _loc1_)
                                                                                                                                                                  {
                                                                                                                                                                     continue loop46;
                                                                                                                                                                  }
                                                                                                                                                                  §§push(§§pop());
                                                                                                                                                                  if(!_loc5_)
                                                                                                                                                                  {
                                                                                                                                                                     continue loop17;
                                                                                                                                                                  }
                                                                                                                                                                  if(_loc4_ && this)
                                                                                                                                                                  {
                                                                                                                                                                     continue loop40;
                                                                                                                                                                  }
                                                                                                                                                                  if(_loc5_)
                                                                                                                                                                  {
                                                                                                                                                                     if(§§pop())
                                                                                                                                                                     {
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           if(!(_loc5_ || _loc3_))
                                                                                                                                                                           {
                                                                                                                                                                              continue loop26;
                                                                                                                                                                           }
                                                                                                                                                                           §§pop();
                                                                                                                                                                           if(!(_loc4_ && _loc2_))
                                                                                                                                                                           {
                                                                                                                                                                              if(!_loc4_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc5_)
                                                                                                                                                                                 {
                                                                                                                                                                                    continue loop84;
                                                                                                                                                                                 }
                                                                                                                                                                                 continue loop45;
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr487);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        continue loop26;
                                                                                                                                                                        addr405:
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr349);
                                                                                                                                                                     §§goto(addr737);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr658);
                                                                                                                                                                  §§goto(addr328);
                                                                                                                                                               }
                                                                                                                                                               continue loop46;
                                                                                                                                                               addr385:
                                                                                                                                                            }
                                                                                                                                                            continue loop24;
                                                                                                                                                         }
                                                                                                                                                         addr465:
                                                                                                                                                         addr465:
                                                                                                                                                         while(!§§pop())
                                                                                                                                                         {
                                                                                                                                                            §§push(this.mTryToFly);
                                                                                                                                                            continue loop10;
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      continue loop24;
                                                                                                                                                   }
                                                                                                                                                   if(!(_loc5_ || _loc2_))
                                                                                                                                                   {
                                                                                                                                                      continue loop44;
                                                                                                                                                   }
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(§§pop())
                                                                                                                                                      {
                                                                                                                                                         if(!_loc4_)
                                                                                                                                                         {
                                                                                                                                                            if(!(_loc4_ && _loc1_))
                                                                                                                                                            {
                                                                                                                                                               addr360:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  this.§4b§ = this.§'P§.getSubAnimation(this.§ q§);
                                                                                                                                                                  addr367:
                                                                                                                                                                  loop75:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     if(!(_loc4_ && this))
                                                                                                                                                                     {
                                                                                                                                                                        addr374:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           addr283:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              this.mIsFlying = true;
                                                                                                                                                                              addr287:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc4_)
                                                                                                                                                                                 {
                                                                                                                                                                                    continue loop4;
                                                                                                                                                                                 }
                                                                                                                                                                                 if(_loc4_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§goto(addr611);
                                                                                                                                                                                 }
                                                                                                                                                                                 else
                                                                                                                                                                                 {
                                                                                                                                                                                    addr291:
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           continue loop75;
                                                                                                                                                                        }
                                                                                                                                                                        addr374:
                                                                                                                                                                     }
                                                                                                                                                                     else
                                                                                                                                                                     {
                                                                                                                                                                        loop41:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           if(!_loc4_)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc5_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr725);
                                                                                                                                                                              }
                                                                                                                                                                              else
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr724);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           else
                                                                                                                                                                           {
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc5_ || _loc2_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc5_ || _loc1_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr480:
                                                                                                                                                                                       this.§4b§ = this.§'P§.getSubAnimation(this.§9!A§);
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          this.mIsBlinking = true;
                                                                                                                                                                                          continue loop41;
                                                                                                                                                                                          §§goto(addr480);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr641);
                                                                                                                                                                                       addr487:
                                                                                                                                                                                    }
                                                                                                                                                                                    else
                                                                                                                                                                                    {
                                                                                                                                                                                       §§goto(addr709);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 else
                                                                                                                                                                                 {
                                                                                                                                                                                    §§goto(addr641);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr709);
                                                                                                                                                                              }
                                                                                                                                                                              addr466:
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr641);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr709);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               addr360:
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr687);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr367);
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         this.§4b§ = this.§'P§;
                                                                                                                                                         if(_loc5_)
                                                                                                                                                         {
                                                                                                                                                            if(_loc5_)
                                                                                                                                                            {
                                                                                                                                                               if(_loc5_ || _loc3_)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc5_ || this)
                                                                                                                                                                  {
                                                                                                                                                                     if(!_loc4_)
                                                                                                                                                                     {
                                                                                                                                                                        if(false)
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr283);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     else
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr692);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr709);
                                                                                                                                                                  }
                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                     loop42:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(!(_loc5_ || _loc2_))
                                                                                                                                                                        {
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              this.§4b§ = this.§'P§.getSubAnimation(this.§`a§);
                                                                                                                                                                              addr565:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc5_ || _loc2_)
                                                                                                                                                                                 {
                                                                                                                                                                                    this.mIsScreaming = true;
                                                                                                                                                                                    continue loop42;
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr632);
                                                                                                                                                                              }
                                                                                                                                                                              continue loop42;
                                                                                                                                                                           }
                                                                                                                                                                           addr558:
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr709);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr709);
                                                                                                                                                               }
                                                                                                                                                               else
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr367);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr287);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr737);
                                                                                                                                                   }
                                                                                                                                                   addr349:
                                                                                                                                                   §§goto(addr466);
                                                                                                                                                }
                                                                                                                                                §§goto(addr385);
                                                                                                                                             }
                                                                                                                                             §§goto(addr405);
                                                                                                                                          }
                                                                                                                                          addr325:
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          §§goto(addr452);
                                                                                                                                       }
                                                                                                                                       §§goto(addr699);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    §§goto(addr451);
                                                                                                                                 }
                                                                                                                                 §§goto(addr452);
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr565);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr675);
                                                                                                            }
                                                                                                         }
                                                                                                         §§push(§§pop());
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§goto(addr465);
                                                                                                         }
                                                                                                         §§goto(addr374);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr674);
                                                                                                }
                                                                                                break loop30;
                                                                                             }
                                                                                             §§goto(addr558);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr578);
                                                                                       addr556:
                                                                                    }
                                                                                    §§goto(addr657);
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr696);
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr700);
                                                            }
                                                         }
                                                         §§goto(addr556);
                                                      }
                                                   }
                                                   §§goto(addr666);
                                                }
                                             }
                                          }
                                          addr585:
                                       }
                                       §§goto(addr723);
                                    }
                                    §§goto(addr647);
                                 }
                              }
                           }
                           §§goto(addr698);
                        }
                     }
                  }
               }
               else
               {
                  §§push(this.§&X§);
                  while(true)
                  {
                     if(§§pop())
                     {
                        if(_loc5_ || _loc3_)
                        {
                           this.§@!m§ = 1;
                           if(_loc4_ && _loc3_)
                           {
                              break;
                           }
                        }
                        else
                        {
                           §§goto(addr291);
                        }
                     }
                     else
                     {
                        §§push(this.§2F§);
                        if(_loc5_)
                        {
                           §§push(§§pop().getSpecialAnimationProgress());
                           if(_loc5_ || this)
                           {
                              §§push(0);
                              if(_loc5_ || this)
                              {
                                 §§push(§§pop() >= §§pop());
                                 if(_loc5_ || _loc2_)
                                 {
                                    if(_loc4_)
                                    {
                                       continue;
                                    }
                                    §§push(§§pop());
                                    if(!_loc4_)
                                    {
                                       if(§§pop())
                                       {
                                          if(_loc5_)
                                          {
                                             §§pop();
                                             if(_loc5_ || _loc2_)
                                             {
                                                §§push(this.§'P§);
                                                if(_loc5_)
                                                {
                                                   §§push(this.§'!t§);
                                                   if(!_loc4_)
                                                   {
                                                      §§push(§§pop().getSubAnimation(§§pop()));
                                                      if(!(_loc4_ && _loc3_))
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                         if(_loc5_ || _loc1_)
                                                         {
                                                            addr97:
                                                            if(§§pop())
                                                            {
                                                               if(!_loc4_)
                                                               {
                                                                  this.§4b§ = this.§'P§.getSubAnimation(this.§'!t§);
                                                                  if(_loc5_)
                                                                  {
                                                                     addr110:
                                                                     while(true)
                                                                     {
                                                                        this.§@!m§ = this.§4b§.getFrameCount() * this.§2F§.getSpecialAnimationProgress();
                                                                        if(!_loc4_)
                                                                        {
                                                                           §§push(this.§@!m§ == this.§4b§.getFrameCount() - 1);
                                                                           if(_loc5_)
                                                                           {
                                                                              §§push(§§pop());
                                                                              if(_loc5_ || _loc1_)
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    if(_loc5_ || this)
                                                                                    {
                                                                                       §§pop();
                                                                                       if(!(_loc4_ && _loc3_))
                                                                                       {
                                                                                          if(false)
                                                                                          {
                                                                                             continue;
                                                                                          }
                                                                                          addr204:
                                                                                          §§push(this.§2F§.getSpecialAnimationTimeLeft());
                                                                                          if(_loc5_)
                                                                                          {
                                                                                             §§push(100);
                                                                                             if(!(_loc4_ && this))
                                                                                             {
                                                                                                addr215:
                                                                                                §§push(§§pop() > §§pop());
                                                                                                if(_loc5_ || this)
                                                                                                {
                                                                                                   addr223:
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      if(_loc5_ || _loc2_)
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                      §§goto(addr360);
                                                                                                   }
                                                                                                   §§goto(addr709);
                                                                                                }
                                                                                                §§goto(addr657);
                                                                                             }
                                                                                             §§goto(addr674);
                                                                                          }
                                                                                          §§goto(addr673);
                                                                                       }
                                                                                       §§goto(addr724);
                                                                                    }
                                                                                    §§goto(addr675);
                                                                                 }
                                                                                 §§goto(addr223);
                                                                              }
                                                                              §§goto(addr722);
                                                                           }
                                                                           §§goto(addr720);
                                                                        }
                                                                        break;
                                                                     }
                                                                     var _loc2_:*;
                                                                     §§push((_loc2_ = this).§@!m§);
                                                                     if(!_loc4_)
                                                                     {
                                                                        §§push(§§pop() - 1);
                                                                     }
                                                                     var _loc3_:* = §§pop();
                                                                     if(_loc5_)
                                                                     {
                                                                        _loc2_.§@!m§ = _loc3_;
                                                                     }
                                                                     if(_loc5_ || _loc3_)
                                                                     {
                                                                        §§goto(addr223);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr374);
                                                                     }
                                                                  }
                                                                  §§goto(addr360);
                                                               }
                                                               §§goto(addr424);
                                                            }
                                                            else
                                                            {
                                                               §§push(this.mTryToSpecial);
                                                            }
                                                            §§goto(addr720);
                                                         }
                                                         §§goto(addr723);
                                                      }
                                                      §§goto(addr325);
                                                   }
                                                   §§goto(addr317);
                                                }
                                                §§goto(addr299);
                                             }
                                             §§goto(addr709);
                                          }
                                          §§goto(addr465);
                                       }
                                       §§goto(addr97);
                                    }
                                    §§goto(addr519);
                                 }
                                 §§goto(addr557);
                              }
                              §§goto(addr215);
                           }
                           §§goto(addr585);
                        }
                        §§goto(addr204);
                     }
                     §§goto(addr709);
                  }
                  §§goto(addr709);
               }
               §§goto(addr673);
            }
            §§goto(addr615);
         }
         §§goto(addr110);
      }
      
      public function §51§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            this.§2O§.visible = false;
         }
      }
      
      public function setDamagedFrame() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§ !w§);
            if(_loc3_ || this)
            {
               if(§§pop() < 0)
               {
                  if(!_loc2_)
                  {
                     this.§`V§();
                     addr34:
                     §§push(0);
                  }
               }
               §§goto(addr34);
            }
            var _loc1_:* = §§pop();
            if(!_loc2_)
            {
               §§push(1);
               if(!(_loc2_ && _loc1_))
               {
                  §§push(this.§2F§.§&!>§);
                  if(_loc3_)
                  {
                     §§push(§§pop() / this.§2F§.§]l§);
                  }
                  §§push(§§pop() - §§pop());
                  if(_loc3_)
                  {
                     §§push(§§pop() * this.§ !w§);
                  }
                  §§push(int(§§pop()));
               }
               loop0:
               while(true)
               {
                  _loc1_ = §§pop();
                  loop1:
                  while(true)
                  {
                     §§push(_loc1_);
                     if(!(_loc2_ && _loc2_))
                     {
                        if(§§pop() != this.§"!R§)
                        {
                           loop2:
                           while(true)
                           {
                              this.§"!R§ = _loc1_;
                              while(true)
                              {
                                 this.§@!m§ = this.§"!R§;
                                 while(_loc3_)
                                 {
                                    if(_loc3_)
                                    {
                                       this.§2!m§();
                                       if(!(_loc2_ && _loc1_))
                                       {
                                          if(!(_loc2_ && this))
                                          {
                                             addr70:
                                             break loop1;
                                          }
                                          continue loop1;
                                       }
                                       continue;
                                       continue;
                                    }
                                    continue loop2;
                                 }
                              }
                           }
                        }
                        break;
                     }
                     continue loop0;
                  }
                  return;
               }
            }
            §§goto(addr70);
         }
         §§goto(addr34);
      }
      
      public function §`V§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            if(this.§'P§)
            {
               if(_loc1_ || _loc2_)
               {
                  addr43:
                  this.§ !w§ = this.§'P§.getFrameCount();
               }
            }
            return;
         }
         §§goto(addr43);
      }
      
      public function §1L§(param1:uint = 16777215, param2:int = 4, param3:int = 4) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            this.§1O§ = new GlowFilter();
            loop0:
            while(true)
            {
               this.§1O§.blurX = param2;
               while(true)
               {
                  this.§1O§.blurY = param3;
                  addr62:
                  while(!_loc4_)
                  {
                     if(_loc5_)
                     {
                        continue;
                     }
                     continue loop0;
                  }
               }
            }
         }
         while(true)
         {
            this.§1O§.color = param1;
            if(_loc5_ || this)
            {
               break;
            }
            §§goto(addr62);
         }
      }
      
      public function §?-§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            this.§1O§ = null;
         }
      }
      
      public function §7!c§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:int = Math.min(8,Math.max(this.§2F§.§;a§(false),1));
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= _loc1_)
            {
               if(!(_loc3_ && _loc3_))
               {
                  break;
               }
               loop1:
               while(!(_loc4_ || this))
               {
                  while(true)
                  {
                     _loc2_++;
                     continue loop1;
                  }
               }
               continue;
            }
            this.§?!I§(_loc2_);
            §§goto(addr81);
         }
      }
      
      public function §,!u§(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = int(this.§?_§.length - 1);
         while(true)
         {
            §§push(_loc2_);
            if(_loc3_ || _loc2_)
            {
               if(§§pop() < 0)
               {
                  if(!(_loc3_ || param1))
                  {
                     continue;
                  }
                  if(_loc3_)
                  {
                     break;
                  }
                  while(!(_loc3_ || param1))
                  {
                  }
                  addr56:
                  §§push(_loc2_);
                  if(!_loc4_)
                  {
                     addr61:
                     _loc2_ = §§pop() - 1;
                     continue;
                  }
                  §§goto(addr61);
                  addr86:
               }
               else
               {
                  this.§?_§[_loc2_].updateLifeTime(param1);
               }
               while(true)
               {
                  if(this.§?_§[_loc2_].lifeTime < 0)
                  {
                     if(_loc3_)
                     {
                        this.§?!I§(_loc2_);
                     }
                     §§goto(addr86);
                  }
                  §§goto(addr56);
               }
            }
            §§goto(addr61);
         }
      }
      
      private function §?!I§(param1:int) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!(_loc7_ && param1))
         {
            if(!this.§59§)
            {
               if(!(_loc7_ && param1))
               {
                  return;
               }
            }
         }
         var _loc2_:int = 0;
         if(_loc6_ || _loc2_)
         {
            if(Math.random() < 0.5)
            {
               if(_loc6_)
               {
                  addr49:
                  _loc2_ = 1;
               }
            }
            var _loc3_:§1C§ = this.§59§.getFrame(_loc2_);
            §§push(100 + Math.random() * 100);
            if(!(_loc7_ && this))
            {
               §§push(Number(§§pop()));
            }
            var _loc4_:* = §§pop();
            var _loc5_:§[M§ = null;
            if(_loc6_ || _loc3_)
            {
               if(param1 < this.§?_§.length)
               {
                  §§goto(addr87);
               }
               else
               {
                  _loc5_ = new §[M§(_loc3_.texture,_loc4_);
                  if(!_loc7_)
                  {
                     this.§?_§.push(_loc5_);
                     if(_loc7_ && this)
                     {
                     }
                     §§goto(addr145);
                  }
                  this.§2O§.addChild(_loc5_.image);
               }
               §§goto(addr145);
            }
            addr87:
            (_loc5_ = this.§?_§[param1]).§+q§(_loc4_);
            if(!_loc7_)
            {
               _loc5_.§@i§(_loc3_.texture);
               if(!(_loc7_ && this))
               {
                  addr145:
                  §§push(_loc5_.image);
                  if(!_loc7_)
                  {
                     §§push(_loc3_.pivotX);
                     if(_loc6_)
                     {
                        §§push(-§§pop());
                        if(_loc6_ || _loc3_)
                        {
                           §§push(this.§7a§);
                           if(!(_loc7_ && _loc3_))
                           {
                              §§push(§§pop().width / 2);
                              if(_loc6_)
                              {
                                 §§push(§§pop() - §§pop());
                                 if(!_loc7_)
                                 {
                                    addr178:
                                    §§push(Math.random() * this.§7a§.width);
                                    if(_loc6_)
                                    {
                                       §§push(§§pop() + §§pop());
                                       if(!_loc7_)
                                       {
                                          §§pop().x = §§pop();
                                          if(!(_loc7_ && this))
                                          {
                                             addr211:
                                             §§push(_loc5_.image);
                                             §§push(-_loc3_.pivotY);
                                             if(!_loc7_)
                                             {
                                                addr216:
                                                §§push(this.§7a§.height / 2);
                                                if(_loc6_)
                                                {
                                                   addr221:
                                                   §§push(§§pop() - §§pop());
                                                   if(_loc6_ || this)
                                                   {
                                                      addr235:
                                                      §§push(§§pop() + Math.random() * this.§7a§.height);
                                                   }
                                                }
                                                §§goto(addr235);
                                             }
                                          }
                                          §§goto(addr237);
                                       }
                                       §§pop().y = §§pop();
                                       §§goto(addr237);
                                    }
                                    §§goto(addr221);
                                 }
                              }
                              §§goto(addr235);
                           }
                           §§goto(addr216);
                        }
                        §§goto(addr178);
                     }
                  }
                  §§goto(addr211);
               }
            }
            addr237:
            return;
         }
         §§goto(addr49);
      }
      
      public function §"§() : §-§
      {
         return this.§7a§;
      }
   }
}
