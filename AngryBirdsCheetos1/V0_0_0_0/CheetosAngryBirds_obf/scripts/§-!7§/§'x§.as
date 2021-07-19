package §-!7§
{
   import §2!-§.Texture;
   import §4W§.§2f§;
   import §4W§.§3!@§;
   import §4W§.§>c§;
   import §9"§.b2Vec2;
   import §9N§.§9!%§;
   import §9N§.§>!%§;
   import §?7§.§!S§;
   import §`a§.§>?§;
   import §`a§.Sprite;
   import flash.filters.GlowFilter;
   
   public class §'x§
   {
      
      public static const § H§:Number = 1000;
      
      public static const §@x§:Number = 500;
      
      private static var §`q§:Array = null;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            § H§ = 1000;
            do
            {
               §@x§ = 500;
               do
               {
                  §`q§ = null;
               }
               while(!_loc2_);
               
            }
            while(_loc1_ && §'x§);
            
         }
      }
      
      private var § 7§:§@m§;
      
      public var §2!E§:int;
      
      public var mW:Number;
      
      public var mH:Number;
      
      public var §#i§:Number;
      
      public var §^0§:Number;
      
      public var §5$§:int = -1;
      
      private var §5!K§:String;
      
      private var §]3§:§2f§;
      
      private var §`!Q§:§2f§;
      
      private var §<^§:§>?§;
      
      private var §]e§:Number = 0;
      
      private var §0h§:Number = 0;
      
      public var §+!1§:int = -1;
      
      private var §^Q§:int = -1;
      
      private var §=W§:int = 0;
      
      public var mTryToSpecial:Boolean = false;
      
      public var mIsSpecial:Boolean = false;
      
      public var §6!S§:String = "special";
      
      public var mTryToFly:Boolean = false;
      
      public var mIsFlying:Boolean = false;
      
      public var §+l§:Boolean = false;
      
      public var mTryToScream:Number = 0;
      
      public var §&!8§:String = "yell";
      
      public var mIsScreaming:Boolean = false;
      
      public var mTryToBlink:Number = 0;
      
      public var §^!"§:String = "blink";
      
      public var mIsBlinking:Boolean = false;
      
      public var §7y§:String = "fly";
      
      public var §<5§:String = "fly_yell";
      
      public var §6?§:GlowFilter;
      
      private var §^i§:Vector.<§>!%§>;
      
      private var §"e§:§2f§;
      
      private var §9!A§:Sprite = null;
      
      private var §8@§:§9!%§;
      
      public function §'x§(param1:§@m§, param2:Sprite, param3:§9!%§)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            super();
         }
         loop0:
         while(true)
         {
            this.§8@§ = param3;
            addr92:
            while(true)
            {
               this.§ 7§ = param1;
               continue loop0;
            }
         }
      }
      
      public function dispose() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§>!%§ = null;
         if(!_loc2_)
         {
            this.§!!S§();
            if(_loc3_ || _loc1_)
            {
               if(this.§^i§)
               {
                  addr44:
                  while(this.§^i§.length > 0)
                  {
                     _loc1_ = this.§^i§.pop();
                     if(_loc3_ || _loc2_)
                     {
                        _loc1_.dispose();
                     }
                  }
                  if(!(_loc2_ && this))
                  {
                     this.§^i§ = null;
                  }
               }
               return;
            }
         }
         §§goto(addr44);
      }
      
      public function §?!7§(param1:int, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && param2))
         {
            this.mW = param3;
            loop0:
            while(true)
            {
               this.mH = param4;
               loop1:
               while(true)
               {
                  this.§5$§ = param1;
                  while(true)
                  {
                     this.§^0§ = param2;
                     loop3:
                     while(!(_loc6_ && param2))
                     {
                        continue loop0;
                        while(true)
                        {
                           this.§]!&§();
                           if(!_loc6_)
                           {
                              continue loop1;
                           }
                           continue loop3;
                        }
                        return;
                     }
                  }
               }
            }
         }
         §§goto(addr69);
      }
      
      public function §;D§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
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
                  §§pop().§#i§ = §§pop();
                  loop1:
                  while(true)
                  {
                     if(this.§#i§ < 1)
                     {
                        while(true)
                        {
                           if(!_loc2_)
                           {
                              this.§#i§ = 1 / this.§#i§;
                              while(true)
                              {
                                 if(!_loc3_)
                                 {
                                    addr108:
                                    this.§#i§ = 1;
                                    break;
                                 }
                              }
                              return;
                              addr79:
                              addr111:
                           }
                           break;
                           addr34:
                           if(!(_loc2_ && this))
                           {
                              continue loop1;
                           }
                        }
                        continue loop0;
                     }
                     while(true)
                     {
                        this.§#i§ = Math.min(11,this.§#i§);
                        if(_loc3_)
                        {
                           §§goto(addr34);
                        }
                        §§goto(addr79);
                     }
                  }
               }
            }
            §§goto(addr108);
         }
         §§goto(addr105);
      }
      
      public function §#?§(param1:§3!@§) : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§>c§ = null;
         var _loc3_:Texture = null;
         if(!_loc6_)
         {
            §§push(this.§ 7§.isGround());
            if(_loc5_ || this)
            {
               if(!§§pop())
               {
                  while(true)
                  {
                     this.§"e§ = param1.§2!'§("SPARKLES");
                     loop1:
                     while(_loc5_)
                     {
                        while(true)
                        {
                           loop3:
                           do
                           {
                              this.§]3§ = param1.§2!'§(this.§5!K§);
                              while(_loc5_ || _loc3_)
                              {
                                 if(_loc5_ || _loc2_)
                                 {
                                    this.§`!Q§ = this.§]3§;
                                    if(_loc5_ || this)
                                    {
                                       continue loop3;
                                    }
                                    continue;
                                 }
                              }
                              continue loop1;
                           }
                           while(false);
                           
                           var _loc4_:* = Number(1);
                           if(!_loc6_)
                           {
                              §§push(this.§`!Q§);
                              if(_loc5_ || _loc2_)
                              {
                                 if(§§pop())
                                 {
                                    addr101:
                                    _loc2_ = this.§`!Q§.getFrame(0);
                                    addr99:
                                    if(!_loc6_)
                                    {
                                       §§push(_loc2_.scale);
                                       if(_loc5_)
                                       {
                                          §§push(Number(§§pop()));
                                       }
                                       _loc4_ = §§pop();
                                    }
                                    _loc3_ = _loc2_.texture;
                                    if(!(_loc6_ && this))
                                    {
                                       addr131:
                                       this.§<^§ = new §>?§(_loc3_);
                                       if(!(_loc6_ && this))
                                       {
                                          if(_loc2_)
                                          {
                                             if(_loc5_ || _loc3_)
                                             {
                                                §§push(this.§<^§);
                                                while(true)
                                                {
                                                   §§push(_loc2_.pivotX);
                                                   addr377:
                                                   while(true)
                                                   {
                                                      §§push(-§§pop());
                                                      addr378:
                                                      while(true)
                                                      {
                                                         §§pop().x = §§pop();
                                                      }
                                                   }
                                                }
                                                addr375:
                                             }
                                             loop8:
                                             while(true)
                                             {
                                                §§push(this.§<^§);
                                                loop9:
                                                while(true)
                                                {
                                                   §§push(_loc2_.pivotY);
                                                   if(_loc5_ || param1)
                                                   {
                                                      §§push(-§§pop());
                                                      loop10:
                                                      while(true)
                                                      {
                                                         §§pop().y = §§pop();
                                                         while(true)
                                                         {
                                                            loop12:
                                                            while(true)
                                                            {
                                                               §§push(this.§<^§);
                                                               loop13:
                                                               while(_loc5_ || _loc3_)
                                                               {
                                                                  if(!(_loc6_ && _loc2_))
                                                                  {
                                                                     §§push(_loc4_);
                                                                     loop14:
                                                                     while(true)
                                                                     {
                                                                        if(_loc5_)
                                                                        {
                                                                           if(!_loc6_)
                                                                           {
                                                                              if(_loc6_ && this)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              §§pop().scaleX = §§pop();
                                                                              loop15:
                                                                              while(_loc5_ || _loc3_)
                                                                              {
                                                                                 §§push(this.§<^§);
                                                                                 if(_loc6_ && _loc3_)
                                                                                 {
                                                                                    continue loop13;
                                                                                 }
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    §§push(_loc4_);
                                                                                    if(!_loc5_)
                                                                                    {
                                                                                       continue loop14;
                                                                                    }
                                                                                    §§pop().scaleY = §§pop();
                                                                                    loop16:
                                                                                    while(true)
                                                                                    {
                                                                                       this.mW = this.§<^§.width / 2;
                                                                                       while(true)
                                                                                       {
                                                                                          if(!(_loc6_ && _loc2_))
                                                                                          {
                                                                                             if(!_loc6_)
                                                                                             {
                                                                                                if(_loc5_ || _loc2_)
                                                                                                {
                                                                                                   if(_loc5_ || param1)
                                                                                                   {
                                                                                                      this.mH = this.§<^§.height / 2;
                                                                                                      continue;
                                                                                                   }
                                                                                                   addr338:
                                                                                                   addr338:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(this.§<^§);
                                                                                                      break loop13;
                                                                                                   }
                                                                                                }
                                                                                                break;
                                                                                             }
                                                                                             continue loop15;
                                                                                          }
                                                                                          continue loop16;
                                                                                       }
                                                                                       addr309:
                                                                                       if(!(_loc5_ || _loc2_))
                                                                                       {
                                                                                          break loop12;
                                                                                       }
                                                                                       continue loop12;
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr375);
                                                                                 }
                                                                              }
                                                                              continue loop8;
                                                                           }
                                                                           continue loop10;
                                                                        }
                                                                        addr308:
                                                                        §§pop().y = §§pop();
                                                                        §§goto(addr309);
                                                                     }
                                                                     §§goto(addr378);
                                                                  }
                                                                  else
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        if(_loc6_)
                                                                        {
                                                                           continue loop9;
                                                                        }
                                                                        §§push(this.§<^§);
                                                                        while(true)
                                                                        {
                                                                           §§push(-§§pop().width);
                                                                           if(_loc5_ || _loc2_)
                                                                           {
                                                                              §§push(2);
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop() / §§pop());
                                                                              }
                                                                              addr336:
                                                                           }
                                                                           addr337:
                                                                           while(true)
                                                                           {
                                                                              §§pop().x = §§pop();
                                                                           }
                                                                        }
                                                                     }
                                                                     addr322:
                                                                  }
                                                                  §§goto(addr338);
                                                               }
                                                               while(true)
                                                               {
                                                                  §§push(this.§<^§);
                                                                  if(!(_loc6_ && _loc2_))
                                                                  {
                                                                     §§push(-§§pop().height);
                                                                     if(!(_loc6_ && this))
                                                                     {
                                                                        if(_loc5_ || param1)
                                                                        {
                                                                           §§push(2);
                                                                           if(_loc5_ || param1)
                                                                           {
                                                                              §§push(§§pop() / §§pop());
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr336);
                                                                           }
                                                                        }
                                                                        §§goto(addr337);
                                                                     }
                                                                     §§goto(addr308);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr326);
                                                                  }
                                                                  §§goto(addr338);
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                   break;
                                                }
                                                §§goto(addr377);
                                             }
                                          }
                                          else
                                          {
                                             §§push(this.§<^§);
                                          }
                                          §§goto(addr322);
                                       }
                                       §§goto(addr316);
                                    }
                                    §§goto(addr173);
                                 }
                                 else
                                 {
                                    _loc3_ = this.§8@§.§#G§.§83§();
                                 }
                                 §§goto(addr131);
                              }
                              §§goto(addr101);
                           }
                           §§goto(addr99);
                        }
                     }
                  }
               }
               return false;
            }
         }
         §§goto(addr69);
      }
      
      public function §%!W§(param1:§!S§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:Array = null;
         var _loc3_:b2Vec2 = null;
         §§push(param1.§>!B§);
         if(!_loc6_)
         {
            var _loc4_:* = §§pop();
            if(_loc5_ || _loc3_)
            {
               §§push(§!S§.§=§);
               if(_loc5_ || param1)
               {
                  §§push(_loc4_);
                  if(_loc5_ || _loc3_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc5_)
                        {
                           addr109:
                           §§push(0);
                           if(!(_loc6_ && this))
                           {
                              addr117:
                           }
                           else
                           {
                              addr127:
                           }
                        }
                        else
                        {
                           addr124:
                           §§push(1);
                           if(_loc5_)
                           {
                              §§goto(addr127);
                           }
                        }
                     }
                     else
                     {
                        §§push(§!S§.§1F§);
                        if(_loc5_)
                        {
                           addr123:
                           if(§§pop() === _loc4_)
                           {
                              §§goto(addr124);
                           }
                           else
                           {
                              §§push(2);
                           }
                        }
                     }
                     §§goto(addr143);
                  }
                  §§goto(addr123);
               }
               §§goto(addr117);
            }
            §§goto(addr109);
         }
         addr143:
         switch(§§pop())
         {
            case 0:
               _loc2_ = param1.§-w§();
               _loc3_ = _loc2_[0];
               if(!_loc6_)
               {
                  §§push(this);
                  §§push(_loc3_.x);
                  if(!_loc6_)
                  {
                     §§push(§§pop() / §9!%§.§catch§);
                  }
                  §§pop().§]e§ = §§pop();
                  if(_loc5_ || this)
                  {
                     addr51:
                     §§push(this);
                     §§push(_loc3_.y);
                     if(_loc5_)
                     {
                        §§push(§§pop() / §9!%§.§catch§);
                     }
                     §§pop().§0h§ = §§pop();
                     if(_loc6_)
                     {
                     }
                     break;
                  }
                  addr144:
                  this.§3f§();
                  break;
               }
               §§goto(addr51);
            case 1:
               §§goto(addr144);
            default:
               §§goto(addr144);
         }
      }
      
      public function §53§() : Array
      {
         return §@w§.§53§(null,this.§ 7§.§?!<§());
      }
      
      public function §1!K§() : Array
      {
         return §@w§.§1!K§(null,this.§ 7§.§?!<§());
      }
      
      public function §#C§() : Array
      {
         return §@w§.§#C§(null);
      }
      
      public function §]!&§() : void
      {
      }
      
      public function §;!Q§(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param1)
         {
            this.§9!A§.scaleX = this.§9!A§.scaleY = param1;
         }
      }
      
      public function §3f§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§>c§ = null;
         if(_loc4_)
         {
            §§push(this.§]3§);
            if(!_loc5_)
            {
               if(!§§pop())
               {
                  if(!(_loc5_ && _loc1_))
                  {
                     return;
                  }
                  addr254:
               }
               else
               {
                  §§push(this.§+l§);
                  if(!_loc5_)
                  {
                     if(§§pop())
                     {
                        if(!(_loc5_ && _loc2_))
                        {
                           this.§=W§ = 1;
                           addr699:
                           §§push(this.§`!Q§);
                           if(!(_loc5_ && this))
                           {
                              if(§§pop())
                              {
                                 addr711:
                                 _loc1_ = this.§`!Q§.getFrame(this.§=W§);
                                 if(_loc4_ || _loc3_)
                                 {
                                    §§push(this.§<^§);
                                    loop60:
                                    while(true)
                                    {
                                       §§push(Boolean(§§pop()));
                                       loop61:
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             while(true)
                                             {
                                                §§pop();
                                                addr873:
                                                while(true)
                                                {
                                                   §§push(Boolean(_loc1_));
                                                   if(!(_loc4_ || this))
                                                   {
                                                      continue;
                                                   }
                                                   if(_loc5_ && this)
                                                   {
                                                      continue loop61;
                                                   }
                                                }
                                             }
                                          }
                                          while(true)
                                          {
                                             if(!§§pop())
                                             {
                                                §§goto(addr874);
                                             }
                                             while(true)
                                             {
                                                §§push(this.§<^§);
                                                loop65:
                                                while(true)
                                                {
                                                   §§pop().texture = _loc1_.texture;
                                                   addr866:
                                                   while(true)
                                                   {
                                                      §§push(this.§<^§);
                                                      addr822:
                                                      while(_loc4_)
                                                      {
                                                         §§push(_loc1_.pivotX);
                                                         while(true)
                                                         {
                                                            §§push(-§§pop());
                                                            addr827:
                                                            while(true)
                                                            {
                                                               §§push(this.§]e§);
                                                               addr829:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() - §§pop());
                                                                  addr830:
                                                                  while(true)
                                                                  {
                                                                     §§pop().x = §§pop();
                                                                     addr831:
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§<^§);
                                                                        continue loop60;
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                      continue loop65;
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr873);
                              }
                              addr874:
                              return;
                           }
                           §§goto(addr711);
                           addr164:
                        }
                        else
                        {
                           loop89:
                           while(true)
                           {
                              this.§`!Q§ = this.§]3§.getSubAnimation(this.§7y§);
                              if(!_loc5_)
                              {
                                 if(_loc4_ || this)
                                 {
                                    if(!_loc5_)
                                    {
                                       addr250:
                                       this.mIsFlying = true;
                                       §§goto(addr254);
                                    }
                                    else
                                    {
                                       loop58:
                                       while(true)
                                       {
                                          if(!(_loc5_ && _loc2_))
                                          {
                                             §§push(this.§]3§);
                                             loop20:
                                             while(true)
                                             {
                                                §§push(this.§&!8§);
                                                loop87:
                                                while(true)
                                                {
                                                   §§push(§§pop().getSubAnimation(§§pop()));
                                                   loop21:
                                                   while(_loc4_)
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                         loop22:
                                                         while(true)
                                                         {
                                                            loop84:
                                                            while(!§§pop())
                                                            {
                                                               addr463:
                                                               §§push(this.mTryToBlink);
                                                               if(_loc4_ || this)
                                                               {
                                                                  if(_loc4_ || this)
                                                                  {
                                                                     §§push(0);
                                                                     if(_loc4_ || this)
                                                                     {
                                                                        if(_loc4_ || _loc2_)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop() > §§pop());
                                                                              loop54:
                                                                              while(!_loc5_)
                                                                              {
                                                                                 addr498:
                                                                                 if(!(_loc5_ && _loc1_))
                                                                                 {
                                                                                    §§push(§§pop());
                                                                                    loop52:
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc4_ || _loc1_)
                                                                                       {
                                                                                          if(!_loc5_)
                                                                                          {
                                                                                             if(!_loc5_)
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!§§pop())
                                                                                                   {
                                                                                                      loop30:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         addr441:
                                                                                                         addr357:
                                                                                                         loop8:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               if(!_loc5_)
                                                                                                               {
                                                                                                                  if(_loc4_)
                                                                                                                  {
                                                                                                                     if(_loc4_ || this)
                                                                                                                     {
                                                                                                                        this.§`!Q§ = this.§]3§.getSubAnimation(this.§^!"§);
                                                                                                                        this.mIsBlinking = true;
                                                                                                                        addr460:
                                                                                                                        if(_loc5_ && _loc2_)
                                                                                                                        {
                                                                                                                           §§goto(addr460);
                                                                                                                        }
                                                                                                                        §§goto(addr699);
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        this.mIsSpecial = true;
                                                                                                                        addr671:
                                                                                                                        §§goto(addr699);
                                                                                                                        addr690:
                                                                                                                        addr671:
                                                                                                                     }
                                                                                                                     §§goto(addr699);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     loop23:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(!(_loc5_ && _loc1_))
                                                                                                                        {
                                                                                                                           §§goto(addr699);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           loop10:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(this.§]3§);
                                                                                                                              addr614:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(this.§<5§);
                                                                                                                                 addr616:
                                                                                                                                 loop11:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop().getSubAnimation(§§pop()));
                                                                                                                                    addr617:
                                                                                                                                    addr422:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(Boolean(§§pop()));
                                                                                                                                       loop13:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          addr619:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(§§pop())
                                                                                                                                             {
                                                                                                                                                addr634:
                                                                                                                                                if(_loc4_ || _loc2_)
                                                                                                                                                {
                                                                                                                                                   addr627:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      this.§`!Q§ = this.§]3§.getSubAnimation(this.§<5§);
                                                                                                                                                   }
                                                                                                                                                   addr627:
                                                                                                                                                }
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   this.mIsScreaming = true;
                                                                                                                                                   addr608:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(_loc4_)
                                                                                                                                                      {
                                                                                                                                                         this.mIsFlying = true;
                                                                                                                                                         continue loop23;
                                                                                                                                                      }
                                                                                                                                                      addr649:
                                                                                                                                                      loop16:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(!_loc5_)
                                                                                                                                                         {
                                                                                                                                                            §§push(this.mTryToFly);
                                                                                                                                                            break loop54;
                                                                                                                                                         }
                                                                                                                                                         addr663:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§pop();
                                                                                                                                                            continue loop16;
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop());
                                                                                                                                                         addr651:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(§§pop())
                                                                                                                                                            {
                                                                                                                                                               break loop13;
                                                                                                                                                            }
                                                                                                                                                            continue loop13;
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                addr634:
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                §§push(this.mTryToScream);
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(0);
                                                                                                                                                   addr566:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() > §§pop());
                                                                                                                                                      addr567:
                                                                                                                                                      loop17:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(!(_loc5_ && _loc3_))
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop());
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(!§§pop())
                                                                                                                                                               {
                                                                                                                                                                  continue loop22;
                                                                                                                                                               }
                                                                                                                                                               while(_loc4_ || _loc1_)
                                                                                                                                                               {
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§pop();
                                                                                                                                                                     continue loop58;
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc5_)
                                                                                                                                                                  {
                                                                                                                                                                     addr661:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop());
                                                                                                                                                                        addr662:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           if(§§pop())
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr663);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr651);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     addr661:
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr649);
                                                                                                                                                               }
                                                                                                                                                               continue loop52;
                                                                                                                                                            }
                                                                                                                                                            addr575:
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            addr697:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§pop();
                                                                                                                                                               continue loop17;
                                                                                                                                                            }
                                                                                                                                                            addr697:
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr463);
                                                                                                                                                }
                                                                                                                                                addr565:
                                                                                                                                             }
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(this.§]3§);
                                                                                                                                                addr675:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(this.§6!S§);
                                                                                                                                                   addr677:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop().getSubAnimation(§§pop()));
                                                                                                                                                      break loop21;
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       addr652:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§pop();
                                                                                                                                          continue loop10;
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(_loc5_)
                                                                                                                                       {
                                                                                                                                          continue loop11;
                                                                                                                                       }
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop().getSubAnimation(§§pop()));
                                                                                                                                          addr435:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(_loc5_)
                                                                                                                                             {
                                                                                                                                                continue loop21;
                                                                                                                                             }
                                                                                                                                             if(!_loc5_)
                                                                                                                                             {
                                                                                                                                                §§push(Boolean(§§pop()));
                                                                                                                                                continue loop30;
                                                                                                                                             }
                                                                                                                                             §§goto(addr617);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           addr653:
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr699);
                                                                                                               }
                                                                                                               §§goto(addr711);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§push(this.mTryToFly);
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(!_loc5_)
                                                                                                                  {
                                                                                                                     if(_loc4_)
                                                                                                                     {
                                                                                                                        addr350:
                                                                                                                        if(_loc4_ || _loc2_)
                                                                                                                        {
                                                                                                                           break loop8;
                                                                                                                        }
                                                                                                                        §§goto(addr652);
                                                                                                                     }
                                                                                                                     §§goto(addr567);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(!(_loc5_ && _loc1_))
                                                                                                                        {
                                                                                                                           §§pop();
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(!(_loc4_ || _loc2_))
                                                                                                                              {
                                                                                                                                 break loop22;
                                                                                                                              }
                                                                                                                              §§push(this.§]3§);
                                                                                                                              continue loop20;
                                                                                                                           }
                                                                                                                           addr526:
                                                                                                                        }
                                                                                                                     }
                                                                                                                     addr518:
                                                                                                                  }
                                                                                                               }
                                                                                                               addr346:
                                                                                                            }
                                                                                                            §§goto(addr576);
                                                                                                            continue loop30;
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(Boolean(§§pop()));
                                                                                                            loop1:
                                                                                                            while(!_loc5_)
                                                                                                            {
                                                                                                               if(_loc4_)
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop());
                                                                                                                     if(!(_loc4_ || _loc1_))
                                                                                                                     {
                                                                                                                        continue loop52;
                                                                                                                     }
                                                                                                                     if(!_loc5_)
                                                                                                                     {
                                                                                                                        if(§§pop())
                                                                                                                        {
                                                                                                                           loop42:
                                                                                                                           for(; _loc4_ || _loc1_; §§push(Boolean(§§pop())),if(!(_loc4_ || this))
                                                                                                                           {
                                                                                                                              continue;
                                                                                                                           },if(_loc5_)
                                                                                                                           {
                                                                                                                              continue loop1;
                                                                                                                           },if(!(_loc5_ && this))
                                                                                                                           {
                                                                                                                              if(_loc5_ && _loc2_)
                                                                                                                              {
                                                                                                                                 continue loop54;
                                                                                                                              }
                                                                                                                              if(_loc5_)
                                                                                                                              {
                                                                                                                                 continue loop84;
                                                                                                                              }
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(§§pop())
                                                                                                                                 {
                                                                                                                                    if(!_loc5_)
                                                                                                                                    {
                                                                                                                                       if(!(_loc5_ && this))
                                                                                                                                       {
                                                                                                                                          continue loop89;
                                                                                                                                       }
                                                                                                                                       §§goto(addr634);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    this.§`!Q§ = this.§]3§;
                                                                                                                                    if(_loc4_ || _loc2_)
                                                                                                                                    {
                                                                                                                                       if(_loc4_)
                                                                                                                                       {
                                                                                                                                          if(!_loc5_)
                                                                                                                                          {
                                                                                                                                             if(_loc4_)
                                                                                                                                             {
                                                                                                                                                if(false)
                                                                                                                                                {
                                                                                                                                                   §§goto(addr250);
                                                                                                                                                }
                                                                                                                                                §§goto(addr699);
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                §§goto(addr460);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             §§goto(addr388);
                                                                                                                                          }
                                                                                                                                          §§goto(addr699);
                                                                                                                                       }
                                                                                                                                       §§goto(addr254);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr711);
                                                                                                                              }
                                                                                                                              addr311:
                                                                                                                           },§§goto(addr346))
                                                                                                                           {
                                                                                                                              if(!(_loc5_ && _loc2_))
                                                                                                                              {
                                                                                                                                 §§pop();
                                                                                                                                 while(_loc4_)
                                                                                                                                 {
                                                                                                                                    if(_loc4_ || this)
                                                                                                                                    {
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(this.§]3§);
                                                                                                                                          if(!_loc4_)
                                                                                                                                          {
                                                                                                                                             continue loop20;
                                                                                                                                          }
                                                                                                                                          if(_loc4_ || _loc3_)
                                                                                                                                          {
                                                                                                                                             if(_loc4_)
                                                                                                                                             {
                                                                                                                                                addr269:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(this.§7y§);
                                                                                                                                                   if(!_loc5_)
                                                                                                                                                   {
                                                                                                                                                      if(!_loc4_)
                                                                                                                                                      {
                                                                                                                                                         continue loop87;
                                                                                                                                                      }
                                                                                                                                                      if(!_loc5_)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop().getSubAnimation(§§pop()));
                                                                                                                                                         if(!(_loc5_ && _loc3_))
                                                                                                                                                         {
                                                                                                                                                            continue loop42;
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr435);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr677);
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr422);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                addr269:
                                                                                                                                             }
                                                                                                                                             §§goto(addr675);
                                                                                                                                          }
                                                                                                                                          §§goto(addr614);
                                                                                                                                       }
                                                                                                                                       addr397:
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(!_loc5_)
                                                                                                                                          {
                                                                                                                                             §§goto(addr699);
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             §§goto(addr608);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       addr538:
                                                                                                                                    }
                                                                                                                                    §§goto(addr675);
                                                                                                                                 }
                                                                                                                                 §§goto(addr526);
                                                                                                                                 addr388:
                                                                                                                              }
                                                                                                                              §§goto(addr663);
                                                                                                                           }
                                                                                                                           §§goto(addr619);
                                                                                                                        }
                                                                                                                        §§goto(addr311);
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(§§pop())
                                                                                                                           {
                                                                                                                              §§goto(addr697);
                                                                                                                           }
                                                                                                                           addr679:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              addr680:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(§§pop())
                                                                                                                                 {
                                                                                                                                    if(_loc4_)
                                                                                                                                    {
                                                                                                                                       this.§`!Q§ = this.§]3§.getSubAnimation(this.§6!S§);
                                                                                                                                       §§goto(addr690);
                                                                                                                                    }
                                                                                                                                    break;
                                                                                                                                 }
                                                                                                                                 addr659:
                                                                                                                                 addr659:
                                                                                                                                 §§push(this.mTryToScream);
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(0);
                                                                                                                                    addr660:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§goto(addr661);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr699);
                                                                                                                                 break loop54;
                                                                                                                              }
                                                                                                                              §§goto(addr711);
                                                                                                                              break loop21;
                                                                                                                           }
                                                                                                                        }
                                                                                                                        addr696:
                                                                                                                     }
                                                                                                                     §§goto(addr697);
                                                                                                                  }
                                                                                                                  addr362:
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(Boolean(§§pop()));
                                                                                                                     addr695:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§goto(addr498);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  addr694:
                                                                                                               }
                                                                                                               §§goto(addr696);
                                                                                                            }
                                                                                                            §§goto(addr441);
                                                                                                            §§goto(addr350);
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr518);
                                                                                                }
                                                                                                addr517:
                                                                                             }
                                                                                             §§goto(addr662);
                                                                                          }
                                                                                          §§goto(addr651);
                                                                                       }
                                                                                       §§goto(addr575);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr695);
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 if(_loc4_ || this)
                                                                                 {
                                                                                    §§goto(addr647);
                                                                                    §§push(§§pop() > 0);
                                                                                 }
                                                                                 §§goto(addr680);
                                                                              }
                                                                           }
                                                                           addr495:
                                                                        }
                                                                        §§goto(addr660);
                                                                     }
                                                                     §§goto(addr566);
                                                                  }
                                                                  §§goto(addr659);
                                                               }
                                                               §§goto(addr565);
                                                            }
                                                            break;
                                                         }
                                                         addr552:
                                                         while(true)
                                                         {
                                                            this.§`!Q§ = this.§]3§.getSubAnimation(this.§&!8§);
                                                            addr559:
                                                            while(true)
                                                            {
                                                               this.mIsScreaming = true;
                                                               §§goto(addr538);
                                                            }
                                                         }
                                                         §§goto(addr699);
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      §§goto(addr679);
                                                   }
                                                }
                                             }
                                          }
                                          §§goto(addr671);
                                       }
                                    }
                                    §§goto(addr699);
                                 }
                                 §§goto(addr559);
                              }
                           }
                           addr322:
                        }
                        §§goto(addr711);
                     }
                     else
                     {
                        §§push(this.§ 7§);
                        if(_loc4_ || this)
                        {
                           §§push(§§pop().getSpecialAnimationProgress());
                           if(_loc4_)
                           {
                              §§push(0);
                              if(_loc4_ || this)
                              {
                                 §§push(§§pop() >= §§pop());
                                 if(!(_loc5_ && _loc2_))
                                 {
                                    §§push(§§pop());
                                    if(_loc4_ || _loc3_)
                                    {
                                       if(§§pop())
                                       {
                                          if(!_loc5_)
                                          {
                                             §§pop();
                                             if(!_loc5_)
                                             {
                                                §§push(this.§]3§);
                                                if(_loc4_ || this)
                                                {
                                                   §§push(this.§6!S§);
                                                   if(!_loc5_)
                                                   {
                                                      §§push(§§pop().getSubAnimation(§§pop()));
                                                      if(_loc4_ || this)
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                         if(_loc4_)
                                                         {
                                                            addr86:
                                                            if(§§pop())
                                                            {
                                                               if(!_loc5_)
                                                               {
                                                                  this.§`!Q§ = this.§]3§.getSubAnimation(this.§6!S§);
                                                                  if(!_loc5_)
                                                                  {
                                                                     if(_loc4_)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           this.§=W§ = this.§`!Q§.getFrameCount() * this.§ 7§.getSpecialAnimationProgress();
                                                                           if(_loc4_)
                                                                           {
                                                                              §§push(this.§=W§ == this.§`!Q§.getFrameCount() - 1);
                                                                              if(_loc4_)
                                                                              {
                                                                                 §§push(§§pop());
                                                                                 if(!(_loc5_ && _loc2_))
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       if(_loc4_)
                                                                                       {
                                                                                          §§pop();
                                                                                          if(!_loc5_)
                                                                                          {
                                                                                             if(false)
                                                                                             {
                                                                                                continue;
                                                                                             }
                                                                                             addr183:
                                                                                             §§push(this.§ 7§.getSpecialAnimationTimeLeft());
                                                                                             if(_loc4_)
                                                                                             {
                                                                                                addr186:
                                                                                                §§push(100);
                                                                                                if(_loc4_)
                                                                                                {
                                                                                                   §§push(§§pop() > §§pop());
                                                                                                   if(_loc4_)
                                                                                                   {
                                                                                                      addr192:
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         if(_loc4_ || _loc2_)
                                                                                                         {
                                                                                                            var _loc2_:*;
                                                                                                            §§push((_loc2_ = this).§=W§);
                                                                                                            if(!_loc5_)
                                                                                                            {
                                                                                                               §§push(§§pop() - 1);
                                                                                                            }
                                                                                                            var _loc3_:* = §§pop();
                                                                                                            if(!(_loc5_ && _loc2_))
                                                                                                            {
                                                                                                               _loc2_.§=W§ = _loc3_;
                                                                                                            }
                                                                                                            if(!(_loc5_ && this))
                                                                                                            {
                                                                                                               addr691:
                                                                                                               §§goto(addr699);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§goto(addr397);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr653);
                                                                                                      }
                                                                                                      §§goto(addr691);
                                                                                                   }
                                                                                                   §§goto(addr583);
                                                                                                }
                                                                                                §§goto(addr660);
                                                                                             }
                                                                                             §§goto(addr659);
                                                                                          }
                                                                                          §§goto(addr552);
                                                                                       }
                                                                                       §§goto(addr357);
                                                                                    }
                                                                                    §§goto(addr192);
                                                                                 }
                                                                                 §§goto(addr651);
                                                                              }
                                                                              §§goto(addr661);
                                                                           }
                                                                           §§goto(addr671);
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr164);
                                                                     }
                                                                     §§goto(addr699);
                                                                  }
                                                                  §§goto(addr627);
                                                               }
                                                               §§goto(addr634);
                                                            }
                                                            else
                                                            {
                                                               §§push(this.mTryToSpecial);
                                                            }
                                                            §§goto(addr694);
                                                         }
                                                         §§goto(addr357);
                                                      }
                                                      §§goto(addr549);
                                                   }
                                                   §§goto(addr434);
                                                }
                                                §§goto(addr269);
                                             }
                                             §§goto(addr627);
                                          }
                                          §§goto(addr192);
                                       }
                                       §§goto(addr86);
                                    }
                                    §§goto(addr517);
                                 }
                                 §§goto(addr362);
                              }
                              §§goto(addr495);
                           }
                           §§goto(addr186);
                        }
                        §§goto(addr183);
                     }
                  }
                  §§goto(addr192);
               }
               §§goto(addr699);
            }
            §§goto(addr269);
         }
         §§goto(addr322);
      }
      
      public function §>s§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            this.§9!A§.visible = false;
         }
      }
      
      public function setDamagedFrame() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.§+!1§);
            if(_loc3_)
            {
               if(§§pop() < 0)
               {
                  if(!(_loc2_ && this))
                  {
                     addr32:
                     this.§9;§();
                  }
               }
               §§push(0);
            }
            var _loc1_:* = §§pop();
            if(_loc3_)
            {
               §§push(1);
               loop0:
               while(true)
               {
                  §§push(this.§ 7§.§4^§);
                  if(!(_loc2_ && this))
                  {
                     §§push(§§pop() / this.§ 7§.§,>§);
                  }
                  §§push(§§pop() - §§pop());
                  if(!_loc2_)
                  {
                     §§push(§§pop() * this.§+!1§);
                  }
                  §§push(int(§§pop()));
                  loop1:
                  while(true)
                  {
                     _loc1_ = §§pop();
                     loop2:
                     while(true)
                     {
                        §§push(_loc1_);
                        if(!(_loc2_ && _loc2_))
                        {
                           if(!_loc2_)
                           {
                              if(§§pop() != this.§^Q§)
                              {
                                 loop3:
                                 while(true)
                                 {
                                    this.§^Q§ = _loc1_;
                                    while(true)
                                    {
                                       this.§=W§ = this.§^Q§;
                                       while(!(_loc2_ && this))
                                       {
                                          if(_loc3_)
                                          {
                                             this.§3f§();
                                             if(!_loc3_)
                                             {
                                                continue;
                                             }
                                             if(!(_loc3_ || this))
                                             {
                                                continue loop2;
                                             }
                                             addr55:
                                             continue;
                                          }
                                          continue loop3;
                                       }
                                    }
                                 }
                              }
                              return;
                           }
                           break;
                        }
                        continue loop1;
                     }
                     continue loop0;
                  }
               }
            }
            §§goto(addr55);
         }
         §§goto(addr32);
      }
      
      public function §9;§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            if(this.§]3§)
            {
               if(!(_loc2_ && this))
               {
                  addr53:
                  this.§+!1§ = this.§]3§.getFrameCount();
               }
            }
            return;
         }
         §§goto(addr53);
      }
      
      public function §7f§(param1:uint = 16777215, param2:int = 4, param3:int = 4) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param2))
         {
            this.§6?§ = new GlowFilter();
            while(true)
            {
               this.§6?§.blurX = param2;
               loop1:
               while(_loc5_)
               {
                  this.§6?§.blurY = param3;
                  while(true)
                  {
                     this.§6?§.color = param1;
                     if(!_loc4_)
                     {
                        if(_loc5_ || param1)
                        {
                           break;
                        }
                        continue loop1;
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr59);
      }
      
      public function §!!S§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.§6?§ = null;
         }
      }
      
      public function §6!F§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:int = Math.min(8,Math.max(this.§ 7§.§>!&§(false),1));
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= _loc1_)
            {
               if(!_loc3_)
               {
                  break;
               }
            }
            else
            {
               this.§1!&§(_loc2_);
               while(true)
               {
                  _loc2_++;
               }
               addr71:
            }
            while(_loc3_)
            {
               §§goto(addr71);
            }
         }
      }
      
      public function §1-§(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = int(this.§^i§.length - 1);
         loop0:
         while(true)
         {
            §§push(_loc2_);
            if(!(_loc3_ && param1))
            {
               if(§§pop() < 0)
               {
                  if(_loc4_)
                  {
                     if(_loc4_)
                     {
                        if(_loc4_ || this)
                        {
                           break;
                        }
                        if(this.§^i§[_loc2_].lifeTime < 0)
                        {
                           loop3:
                           while(true)
                           {
                              this.§1!&§(_loc2_);
                              addr79:
                              while(true)
                              {
                                 continue loop3;
                              }
                           }
                           addr76:
                        }
                        while(true)
                        {
                           §§push(_loc2_);
                           if(_loc4_)
                           {
                              addr64:
                              §§push(§§pop() - 1);
                              while(true)
                              {
                                 _loc2_ = §§pop();
                                 addr65:
                                 while(_loc3_)
                                 {
                                    §§goto(addr76);
                                 }
                                 continue loop0;
                              }
                              addr64:
                           }
                           §§goto(addr64);
                        }
                        addr98:
                     }
                     §§goto(addr79);
                  }
                  §§goto(addr65);
               }
               else
               {
                  this.§^i§[_loc2_].updateLifeTime(param1);
               }
               §§goto(addr98);
            }
            §§goto(addr64);
         }
      }
      
      private function §1!&§(param1:int) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_ || _loc2_)
         {
            if(!this.§"e§)
            {
               if(_loc6_ || this)
               {
                  §§goto(addr33);
               }
            }
            var _loc2_:int = 0;
            if(_loc6_)
            {
               if(Math.random() < 0.5)
               {
                  if(_loc6_)
                  {
                     addr44:
                     _loc2_ = 1;
                  }
               }
               var _loc3_:§>c§ = this.§"e§.getFrame(_loc2_);
               §§push(100 + Math.random() * 100);
               if(_loc6_ || param1)
               {
                  §§push(Number(§§pop()));
               }
               var _loc4_:* = §§pop();
               var _loc5_:§>!%§ = null;
               if(!_loc7_)
               {
                  if(param1 < this.§^i§.length)
                  {
                     addr77:
                     (_loc5_ = this.§^i§[param1]).§[!J§(_loc4_);
                     if(_loc6_ || param1)
                     {
                        _loc5_.§1Z§(_loc3_.texture);
                        if(!_loc7_)
                        {
                           addr135:
                           §§push(_loc5_.image);
                           if(_loc6_ || param1)
                           {
                              §§push(_loc3_.pivotX);
                              if(_loc6_)
                              {
                                 §§push(-§§pop());
                                 if(_loc6_)
                                 {
                                    §§push(this.§<^§);
                                    if(_loc6_)
                                    {
                                       §§push(§§pop().width / 2);
                                       if(_loc6_)
                                       {
                                          §§push(§§pop() - §§pop());
                                          if(!_loc7_)
                                          {
                                             addr163:
                                             §§push(Math.random() * this.§<^§.width);
                                             if(_loc6_)
                                             {
                                                §§push(§§pop() + §§pop());
                                                if(!_loc7_)
                                                {
                                                   §§pop().x = §§pop();
                                                   if(!(_loc7_ && param1))
                                                   {
                                                      addr186:
                                                      §§push(_loc5_.image);
                                                      §§push(-_loc3_.pivotY);
                                                      if(!_loc7_)
                                                      {
                                                         addr191:
                                                         §§push(this.§<^§.height / 2);
                                                         if(!_loc7_)
                                                         {
                                                            §§goto(addr216);
                                                         }
                                                      }
                                                   }
                                                }
                                                §§goto(addr216);
                                             }
                                             §§push(§§pop() + §§pop());
                                          }
                                          addr216:
                                          §§goto(addr196);
                                       }
                                       addr196:
                                       §§push(§§pop() - §§pop());
                                       if(!_loc7_)
                                       {
                                          §§push(Math.random() * this.§<^§.height);
                                       }
                                       §§pop().y = §§pop();
                                       return;
                                    }
                                    §§goto(addr191);
                                 }
                                 §§goto(addr163);
                              }
                           }
                        }
                        §§goto(addr186);
                     }
                     §§goto(addr216);
                  }
                  else
                  {
                     _loc5_ = new §>!%§(_loc3_.texture,_loc4_);
                     if(!_loc7_)
                     {
                        this.§^i§.push(_loc5_);
                        if(_loc6_ || _loc2_)
                        {
                           this.§9!A§.addChild(_loc5_.image);
                        }
                     }
                  }
                  §§goto(addr135);
               }
               §§goto(addr77);
            }
            §§goto(addr44);
         }
         addr33:
      }
      
      public function §7`§() : §>?§
      {
         return this.§<^§;
      }
   }
}
