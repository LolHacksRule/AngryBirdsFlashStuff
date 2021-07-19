package §`!G§
{
   import §'!6§.§ "E§;
   import §'!6§.Sprite;
   import §-f§.§+"R§;
   import §4!<§.§'!S§;
   import §4!<§.§^t§;
   import §6!^§.b2Vec2;
   import §<5§.Texture;
   import §<T§.§4!N§;
   import §<T§.§^!Y§;
   import §<T§.§^"5§;
   import flash.filters.GlowFilter;
   
   public class §+T§
   {
      
      public static const §<!t§:Number = 1000;
      
      public static const §4!V§:Number = 500;
      
      private static var §;"2§:Array = null;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && §+T§))
         {
            §<!t§ = 1000;
            while(true)
            {
               §4!V§ = 500;
               §§goto(addr72);
            }
         }
         addr72:
         while(true)
         {
            §;"2§ = null;
            if(_loc2_ || _loc1_)
            {
               if(!(_loc1_ && §+T§))
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      private var §9!!§:§[!8§;
      
      public var §@!s§:int;
      
      public var mW:Number;
      
      public var mH:Number;
      
      public var §="V§:Number;
      
      public var §+!m§:Number;
      
      public var §"!3§:int = -1;
      
      private var §#_§:String;
      
      private var §4",§:§4!N§;
      
      private var §]^§:§4!N§;
      
      private var §8!U§:§ "E§;
      
      private var §`w§:Number = 0;
      
      private var §6"#§:Number = 0;
      
      public var §5D§:int = -1;
      
      private var §>!#§:int = -1;
      
      private var §5!B§:int = 0;
      
      public var mTryToSpecial:Boolean = false;
      
      public var mIsSpecial:Boolean = false;
      
      public var §%+§:String = "special";
      
      public var mTryToFly:Boolean = false;
      
      public var mIsFlying:Boolean = false;
      
      public var §<!O§:Boolean = false;
      
      public var mTryToScream:Number = 0;
      
      public var §8]§:String = "yell";
      
      public var mIsScreaming:Boolean = false;
      
      public var mTryToBlink:Number = 0;
      
      public var §`-§:String = "blink";
      
      public var mIsBlinking:Boolean = false;
      
      public var §>"Q§:String = "fly";
      
      public var §?U§:String = "fly_yell";
      
      public var §`!D§:GlowFilter;
      
      private var §`"B§:Vector.<§^t§>;
      
      private var §3"E§:§4!N§;
      
      private var §?!T§:Sprite = null;
      
      private var mLevelMain:§'!S§;
      
      public function §+T§(param1:§[!8§, param2:Sprite, param3:§'!S§)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            super();
         }
         loop0:
         while(true)
         {
            this.mLevelMain = param3;
            loop1:
            while(true)
            {
               this.§9!!§ = param1;
               while(true)
               {
                  this.§#_§ = this.§9!!§.§@x§;
                  while(!_loc4_)
                  {
                     if(_loc5_)
                     {
                        this.§`"B§ = new Vector.<§^t§>();
                        while(!_loc4_)
                        {
                           continue loop1;
                           this.§?!T§ = param2;
                           if(_loc5_ || param3)
                           {
                              return;
                           }
                        }
                        continue;
                     }
                     continue loop0;
                  }
               }
            }
         }
      }
      
      public function dispose() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§^t§ = null;
         if(!(_loc3_ && _loc2_))
         {
            this.§;",§();
            if(!_loc3_)
            {
               if(this.§`"B§)
               {
                  addr53:
                  while(this.§`"B§.length > 0)
                  {
                     _loc1_ = this.§`"B§.pop();
                     if(!_loc3_)
                     {
                        _loc1_.dispose();
                     }
                  }
                  if(!_loc3_)
                  {
                     this.§`"B§ = null;
                  }
               }
               return;
            }
         }
         §§goto(addr53);
      }
      
      public function §=9§(param1:int, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            this.mW = param3;
            loop0:
            while(true)
            {
               this.mH = param4;
               addr80:
               while(true)
               {
                  this.§"!3§ = param1;
               }
               while(true)
               {
                  if(!(_loc5_ && param3))
                  {
                     continue;
                  }
                  continue loop0;
               }
               §§goto(addr80);
            }
         }
         §§goto(addr75);
      }
      
      public function §%c§(param1:Boolean) : void
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
                  if(!_loc2_)
                  {
                     §§push(§§pop() / this.mH);
                  }
                  §§pop().§="V§ = §§pop();
                  loop1:
                  while(true)
                  {
                     if(this.§="V§ < 1)
                     {
                        while(true)
                        {
                           if(_loc2_ && this)
                           {
                              break loop0;
                           }
                           while(true)
                           {
                              this.§="V§ = 1 / this.§="V§;
                              continue loop1;
                           }
                        }
                     }
                     while(true)
                     {
                        this.§="V§ = Math.min(11,this.§="V§);
                        if(_loc2_ && this)
                        {
                           continue loop1;
                        }
                        if(_loc3_)
                        {
                           if(_loc3_ || _loc3_)
                           {
                              return;
                           }
                           continue loop0;
                        }
                        addr96:
                     }
                     §§goto(addr116);
                  }
               }
            }
            this.§="V§ = 1;
            addr116:
            continue loop1;
            return;
         }
         §§goto(addr71);
      }
      
      public function §2"0§(param1:§^!Y§) : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§^"5§ = null;
         var _loc3_:Texture = null;
         if(!(_loc6_ && this))
         {
            §§push(this.§9!!§.isGround());
            if(!_loc6_)
            {
               if(!§§pop())
               {
                  loop0:
                  while(true)
                  {
                     this.§3"E§ = param1.getAnimation("SPARKLES");
                     loop1:
                     while(!_loc6_)
                     {
                        while(true)
                        {
                           loop3:
                           do
                           {
                              this.§4",§ = param1.getAnimation(this.§#_§);
                              while(!_loc6_)
                              {
                                 this.§]^§ = this.§4",§;
                                 if(!(_loc6_ && param1))
                                 {
                                    if(_loc5_)
                                    {
                                       continue loop3;
                                    }
                                    continue loop0;
                                 }
                              }
                              continue loop1;
                           }
                           while(false);
                           
                           var _loc4_:* = Number(1);
                           if(!_loc6_)
                           {
                              §§push(this.§]^§);
                              if(!_loc6_)
                              {
                                 if(§§pop())
                                 {
                                    addr86:
                                    _loc2_ = this.§]^§.getFrame(0);
                                    addr84:
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
                                    if(!_loc6_)
                                    {
                                       addr111:
                                       this.§8!U§ = new § "E§(_loc3_);
                                       if(_loc5_ || this)
                                       {
                                          if(!_loc2_)
                                          {
                                             §§push(this.§8!U§);
                                             while(true)
                                             {
                                                §§push(this.§8!U§);
                                                loop6:
                                                while(true)
                                                {
                                                   §§push(-§§pop().width);
                                                   loop7:
                                                   while(true)
                                                   {
                                                      §§push(2);
                                                      loop8:
                                                      while(true)
                                                      {
                                                         §§push(§§pop() / §§pop());
                                                         loop9:
                                                         while(true)
                                                         {
                                                            if(!_loc6_)
                                                            {
                                                               §§pop().x = §§pop();
                                                               loop10:
                                                               while(true)
                                                               {
                                                                  §§push(this.§8!U§);
                                                                  addr270:
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§8!U§);
                                                                     if(_loc6_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     §§push(-§§pop().height);
                                                                     if(_loc5_ || _loc3_)
                                                                     {
                                                                        §§push(2);
                                                                        if(!_loc5_)
                                                                        {
                                                                           continue loop8;
                                                                        }
                                                                        §§push(§§pop() / §§pop());
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§pop().y = §§pop();
                                                                        addr288:
                                                                        while(true)
                                                                        {
                                                                           addr231:
                                                                           while(true)
                                                                           {
                                                                              §§push(this.§8!U§);
                                                                              addr234:
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc4_);
                                                                                 addr235:
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc5_)
                                                                                    {
                                                                                       if(_loc5_ || _loc3_)
                                                                                       {
                                                                                          if(!(_loc5_ || _loc3_))
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          §§pop().scaleX = §§pop();
                                                                                          continue loop10;
                                                                                       }
                                                                                       continue loop7;
                                                                                    }
                                                                                    continue loop9;
                                                                                 }
                                                                                 loop22:
                                                                                 while(true)
                                                                                 {
                                                                                    §§pop().x = §§pop();
                                                                                    addr334:
                                                                                    loop23:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(this.§8!U§);
                                                                                       addr317:
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc5_)
                                                                                          {
                                                                                             §§push(_loc2_.pivotY);
                                                                                             if(_loc5_)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc2_.pivotX);
                                                                                             }
                                                                                             addr330:
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             continue loop22;
                                                                                          }
                                                                                          continue loop23;
                                                                                       }
                                                                                       §§push(-§§pop());
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  continue loop6;
                                                               }
                                                            }
                                                            while(true)
                                                            {
                                                               §§pop().y = §§pop();
                                                               §§goto(addr325);
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                                if(!(_loc5_ || _loc3_))
                                                {
                                                   continue;
                                                }
                                                if(_loc5_)
                                                {
                                                   §§push(_loc4_);
                                                   if(!(_loc6_ && param1))
                                                   {
                                                      if(_loc5_)
                                                      {
                                                         §§pop().scaleY = §§pop();
                                                         §§goto(addr228);
                                                      }
                                                      §§goto(addr287);
                                                   }
                                                   §§goto(addr235);
                                                }
                                                §§goto(addr317);
                                             }
                                          }
                                          §§goto(addr328);
                                       }
                                       §§goto(addr165);
                                    }
                                    §§goto(addr325);
                                 }
                                 else
                                 {
                                    _loc3_ = this.mLevelMain.textureManager.§]i§();
                                 }
                                 §§goto(addr111);
                              }
                              §§goto(addr86);
                           }
                           §§goto(addr84);
                        }
                     }
                  }
               }
               return false;
            }
         }
         §§goto(addr64);
      }
      
      public function §#a§(param1:§+"R§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:Array = null;
         var _loc3_:b2Vec2 = null;
         §§push(param1.§]!k§);
         if(_loc6_)
         {
            var _loc4_:* = §§pop();
            if(!_loc5_)
            {
               §§push(§+"R§.§"c§);
               if(_loc6_ || _loc2_)
               {
                  §§push(_loc4_);
                  if(!(_loc5_ && param1))
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc6_ || this)
                        {
                           §§push(0);
                           if(!_loc6_)
                           {
                           }
                        }
                        else
                        {
                           addr135:
                           §§push(1);
                           if(_loc6_)
                           {
                              addr138:
                           }
                        }
                        addr144:
                        switch(§§pop())
                        {
                           case 0:
                              _loc2_ = param1.§3V§();
                              _loc3_ = _loc2_[0];
                              if(!_loc5_)
                              {
                                 §§push(this);
                                 §§push(_loc3_.x);
                                 if(_loc6_ || param1)
                                 {
                                    §§push(§§pop() / §'!S§.§2"<§);
                                 }
                                 §§pop().§`w§ = §§pop();
                                 if(!_loc5_)
                                 {
                                    §§push(this);
                                    §§push(_loc3_.y);
                                    if(_loc6_)
                                    {
                                       §§push(§§pop() / §'!S§.§2"<§);
                                    }
                                    §§pop().§6"#§ = §§pop();
                                    if(!(_loc5_ && this))
                                    {
                                       addr145:
                                       this.§!!,§();
                                       break;
                                    }
                                    break;
                                 }
                                 break;
                              }
                              break;
                           case 1:
                              §§goto(addr145);
                           default:
                              §§goto(addr145);
                        }
                        return;
                        addr143:
                     }
                     else
                     {
                        §§push(§+"R§.§[!>§);
                        if(_loc6_)
                        {
                           addr134:
                           if(§§pop() === _loc4_)
                           {
                              §§goto(addr135);
                           }
                           else
                           {
                              §§push(2);
                           }
                           §§goto(addr143);
                        }
                     }
                     §§goto(addr138);
                  }
               }
               §§goto(addr134);
            }
            §§goto(addr135);
         }
         §§goto(addr144);
      }
      
      public function §'"7§() : Array
      {
         return §1"J§.§'"7§(null,this.§9!!§.§]H§());
      }
      
      public function §>Y§() : Array
      {
         return §1"J§.§>Y§(null,this.§9!!§.§]H§());
      }
      
      public function §#!r§() : Array
      {
         return §1"J§.§#!r§(null);
      }
      
      public function §8!6§() : void
      {
      }
      
      public function setScale(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.§?!T§.scaleX = this.§?!T§.scaleY = param1;
         }
      }
      
      public function §!!,§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§^"5§ = null;
         if(_loc4_ || _loc2_)
         {
            §§push(this.§4",§);
            if(!_loc5_)
            {
               if(!§§pop())
               {
                  if(!_loc5_)
                  {
                     return;
                  }
                  loop0:
                  while(true)
                  {
                     this.§]^§ = this.§4",§.getSubAnimation(this.§>"Q§);
                     if(!(_loc5_ && _loc3_))
                     {
                        loop1:
                        while(true)
                        {
                           if(_loc4_ || this)
                           {
                              if(!_loc5_)
                              {
                                 while(true)
                                 {
                                    loop2:
                                    while(true)
                                    {
                                       this.mIsFlying = true;
                                       if(!(_loc5_ && _loc2_))
                                       {
                                          if(!(_loc4_ || this))
                                          {
                                             loop3:
                                             while(true)
                                             {
                                                if(_loc4_)
                                                {
                                                   §§push(this.§4",§);
                                                   loop4:
                                                   while(true)
                                                   {
                                                      if(_loc4_)
                                                      {
                                                         if(_loc4_)
                                                         {
                                                            §§push(this.§`-§);
                                                            while(true)
                                                            {
                                                               if(!(_loc5_ && _loc1_))
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop().getSubAnimation(§§pop()));
                                                                     while(true)
                                                                     {
                                                                        if(_loc4_ || this)
                                                                        {
                                                                           §§push(Boolean(§§pop()));
                                                                           loop7:
                                                                           while(true)
                                                                           {
                                                                              if(!(_loc5_ && _loc3_))
                                                                              {
                                                                                 loop8:
                                                                                 while(true)
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       if(!_loc5_)
                                                                                       {
                                                                                          this.§]^§ = this.§4",§.getSubAnimation(this.§`-§);
                                                                                          if(!(_loc5_ && this))
                                                                                          {
                                                                                             if(!_loc5_)
                                                                                             {
                                                                                                this.mIsBlinking = true;
                                                                                                while(true)
                                                                                                {
                                                                                                   if(_loc4_ || _loc1_)
                                                                                                   {
                                                                                                      addr709:
                                                                                                      §§push(this.§]^§);
                                                                                                      if(_loc4_ || _loc2_)
                                                                                                      {
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            addr721:
                                                                                                            _loc1_ = this.§]^§.getFrame(this.§5!B§);
                                                                                                            if(_loc4_)
                                                                                                            {
                                                                                                               §§push(this.§8!U§);
                                                                                                               loop56:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(Boolean(§§pop()));
                                                                                                                  loop57:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(§§pop())
                                                                                                                     {
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§pop();
                                                                                                                           addr883:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(Boolean(_loc1_));
                                                                                                                              if(!_loc4_)
                                                                                                                              {
                                                                                                                                 continue;
                                                                                                                              }
                                                                                                                              if(_loc5_)
                                                                                                                              {
                                                                                                                                 continue loop57;
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     loop59:
                                                                                                                     while(§§pop())
                                                                                                                     {
                                                                                                                        loop60:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(this.§8!U§);
                                                                                                                           loop61:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§pop().texture = _loc1_.texture;
                                                                                                                              loop62:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(this.§8!U§);
                                                                                                                                 while(_loc4_)
                                                                                                                                 {
                                                                                                                                    continue loop56;
                                                                                                                                    loop72:
                                                                                                                                    while(!(_loc5_ && _loc1_))
                                                                                                                                    {
                                                                                                                                       §§push(_loc1_.scale);
                                                                                                                                       loop73:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§pop().scaleX = §§pop();
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(!(_loc5_ && this))
                                                                                                                                             {
                                                                                                                                                if(_loc5_ && _loc3_)
                                                                                                                                                {
                                                                                                                                                   break;
                                                                                                                                                }
                                                                                                                                                §§push(this.§8!U§);
                                                                                                                                                if(_loc5_)
                                                                                                                                                {
                                                                                                                                                   continue loop72;
                                                                                                                                                }
                                                                                                                                                if(_loc4_)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc1_.scale);
                                                                                                                                                   if(!_loc4_)
                                                                                                                                                   {
                                                                                                                                                      continue loop73;
                                                                                                                                                   }
                                                                                                                                                   if(!_loc5_)
                                                                                                                                                   {
                                                                                                                                                      §§pop().scaleY = §§pop();
                                                                                                                                                      if(_loc5_ && _loc1_)
                                                                                                                                                      {
                                                                                                                                                         continue;
                                                                                                                                                      }
                                                                                                                                                      if(true)
                                                                                                                                                      {
                                                                                                                                                         break loop59;
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      loop69:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§pop().y = §§pop();
                                                                                                                                                         addr813:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(!_loc5_)
                                                                                                                                                            {
                                                                                                                                                               if(_loc5_ && _loc3_)
                                                                                                                                                               {
                                                                                                                                                                  break;
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                               loop67:
                                                                                                                                                               while(!(_loc5_ && _loc2_))
                                                                                                                                                               {
                                                                                                                                                                  §§push(this.§8!U§);
                                                                                                                                                                  loop68:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc1_.pivotY);
                                                                                                                                                                     if(!(_loc5_ && this))
                                                                                                                                                                     {
                                                                                                                                                                        §§push(-§§pop());
                                                                                                                                                                        if(!(_loc5_ && this))
                                                                                                                                                                        {
                                                                                                                                                                           if(!(_loc5_ && _loc2_))
                                                                                                                                                                           {
                                                                                                                                                                              §§push(this.§6"#§);
                                                                                                                                                                              if(_loc4_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() - §§pop());
                                                                                                                                                                                 continue loop69;
                                                                                                                                                                              }
                                                                                                                                                                              addr842:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() - §§pop());
                                                                                                                                                                                 break loop68;
                                                                                                                                                                              }
                                                                                                                                                                              addr842:
                                                                                                                                                                           }
                                                                                                                                                                           break;
                                                                                                                                                                        }
                                                                                                                                                                        continue loop69;
                                                                                                                                                                     }
                                                                                                                                                                     addr837:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(-§§pop());
                                                                                                                                                                        if(!_loc5_)
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr842);
                                                                                                                                                                           §§push(this.§`w§);
                                                                                                                                                                        }
                                                                                                                                                                        break loop68;
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr842);
                                                                                                                                                                  }
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§pop().x = §§pop();
                                                                                                                                                                     continue loop67;
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr883);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         continue loop62;
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      continue loop72;
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr783);
                                                                                                                                             }
                                                                                                                                             §§goto(addr813);
                                                                                                                                          }
                                                                                                                                          continue loop60;
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 continue loop61;
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr884);
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr883);
                                                                                                         }
                                                                                                         addr884:
                                                                                                         return;
                                                                                                      }
                                                                                                      §§goto(addr721);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      loop34:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(this.§4",§);
                                                                                                         addr619:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(this.§?U§);
                                                                                                            addr621:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop().getSubAnimation(§§pop()));
                                                                                                               loop42:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(_loc4_ || _loc1_)
                                                                                                                  {
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(Boolean(§§pop()));
                                                                                                                        loop40:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(_loc5_)
                                                                                                                           {
                                                                                                                              loop85:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(Boolean(§§pop()));
                                                                                                                                 addr705:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop());
                                                                                                                                    loop10:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(§§pop())
                                                                                                                                       {
                                                                                                                                          loop11:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§pop();
                                                                                                                                             loop12:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(this.§4",§);
                                                                                                                                                loop13:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(this.§%+§);
                                                                                                                                                   addr689:
                                                                                                                                                   addr522:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop().getSubAnimation(§§pop()));
                                                                                                                                                      addr690:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(Boolean(§§pop()));
                                                                                                                                                         continue loop42;
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   loop44:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(_loc5_ && _loc2_)
                                                                                                                                                      {
                                                                                                                                                         continue loop13;
                                                                                                                                                      }
                                                                                                                                                      §§push(this.§8]§);
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop().getSubAnimation(§§pop()));
                                                                                                                                                         addr532:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(!(_loc4_ || _loc3_))
                                                                                                                                                            {
                                                                                                                                                               continue loop42;
                                                                                                                                                            }
                                                                                                                                                            §§push(Boolean(§§pop()));
                                                                                                                                                            loop36:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(_loc4_)
                                                                                                                                                               {
                                                                                                                                                                  if(!_loc5_)
                                                                                                                                                                  {
                                                                                                                                                                     loop27:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(§§pop())
                                                                                                                                                                        {
                                                                                                                                                                           while(_loc4_ || _loc1_)
                                                                                                                                                                           {
                                                                                                                                                                              this.§]^§ = this.§4",§.getSubAnimation(this.§8]§);
                                                                                                                                                                              break loop1;
                                                                                                                                                                           }
                                                                                                                                                                           break;
                                                                                                                                                                           addr546:
                                                                                                                                                                        }
                                                                                                                                                                        addr474:
                                                                                                                                                                        §§push(this.mTryToBlink);
                                                                                                                                                                        if(!(_loc5_ && _loc1_))
                                                                                                                                                                        {
                                                                                                                                                                           loop86:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(0);
                                                                                                                                                                              if(_loc4_ || _loc2_)
                                                                                                                                                                              {
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop() > §§pop());
                                                                                                                                                                                    addr493:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop());
                                                                                                                                                                                       addr494:
                                                                                                                                                                                       loop35:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!_loc5_)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr496:
                                                                                                                                                                                             if(_loc4_ || _loc2_)
                                                                                                                                                                                             {
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!§§pop())
                                                                                                                                                                                                   {
                                                                                                                                                                                                      break loop35;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc5_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         continue loop36;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      if(!_loc5_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         continue loop3;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr683:
                                                                                                                                                                                                      addr693:
                                                                                                                                                                                                      addr692:
                                                                                                                                                                                                      addr700:
                                                                                                                                                                                                      while(!§§pop())
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(this.mTryToScream);
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(0);
                                                                                                                                                                                                            addr667:
                                                                                                                                                                                                            addr566:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(§§pop() > §§pop());
                                                                                                                                                                                                               addr668:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(§§pop());
                                                                                                                                                                                                                  addr669:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(§§pop())
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§pop();
                                                                                                                                                                                                                           addr671:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(this.mTryToFly);
                                                                                                                                                                                                                              addr654:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(§§pop() > 0);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        addr670:
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     addr656:
                                                                                                                                                                                                                     addr578:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr657:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(§§pop());
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     addr578:
                                                                                                                                                                                                                     while(!(_loc5_ && _loc3_))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc5_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           continue loop10;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        if(!§§pop())
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           continue loop27;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(_loc5_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              continue loop40;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§pop();
                                                                                                                                                                                                                              if(!(_loc5_ && this))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(this.§4",§);
                                                                                                                                                                                                                                 continue loop44;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr721);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            while(!(_loc5_ && this))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(0);
                                                                                                                                                                                                               while(!_loc5_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(§§pop() > §§pop());
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§goto(addr578);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  continue loop86;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr667);
                                                                                                                                                                                                               §§goto(addr474);
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      this.§]^§ = this.§4",§.getSubAnimation(this.§%+§);
                                                                                                                                                                                                      do
                                                                                                                                                                                                      {
                                                                                                                                                                                                         this.mIsSpecial = true;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      while(!(_loc4_ || _loc3_));
                                                                                                                                                                                                      
                                                                                                                                                                                                      §§goto(addr709);
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                addr503:
                                                                                                                                                                                             }
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(§§pop())
                                                                                                                                                                                                {
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§pop();
                                                                                                                                                                                                      continue loop34;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr659:
                                                                                                                                                                                                }
                                                                                                                                                                                                else
                                                                                                                                                                                                {
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(§§pop())
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!(_loc5_ && _loc2_))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               this.§]^§ = this.§4",§.getSubAnimation(this.§?U§);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr641:
                                                                                                                                                                                                         }
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc4_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               this.mIsScreaming = true;
                                                                                                                                                                                                               addr608:
                                                                                                                                                                                                               if(_loc4_ || _loc2_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  this.mIsFlying = true;
                                                                                                                                                                                                                  addr603:
                                                                                                                                                                                                               }
                                                                                                                                                                                                               else
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§goto(addr676);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr709);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            else
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§goto(addr671);
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr648:
                                                                                                                                                                                                      }
                                                                                                                                                                                                      else
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§goto(addr566);
                                                                                                                                                                                                         §§push(this.mTryToScream);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr656);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr700);
                                                                                                                                                                                                   addr632:
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr496);
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr578);
                                                                                                                                                                                       }
                                                                                                                                                                                       continue loop8;
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 addr492:
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr574);
                                                                                                                                                                           }
                                                                                                                                                                           addr484:
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr566);
                                                                                                                                                                     }
                                                                                                                                                                     continue loop12;
                                                                                                                                                                  }
                                                                                                                                                                  continue loop11;
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr577);
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
                                                                                                                                          §§goto(addr692);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    continue loop85;
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              addr704:
                                                                                                                           }
                                                                                                                           §§goto(addr632);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     addr629:
                                                                                                                  }
                                                                                                                  §§goto(addr690);
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr721);
                                                                                                }
                                                                                                addr401:
                                                                                             }
                                                                                             §§goto(addr546);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr721);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§push(this.mTryToFly);
                                                                                       if(_loc4_)
                                                                                       {
                                                                                          if(_loc4_ || this)
                                                                                          {
                                                                                             if(_loc4_)
                                                                                             {
                                                                                                if(!(_loc5_ && this))
                                                                                                {
                                                                                                   addr372:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(Boolean(§§pop()));
                                                                                                      addr373:
                                                                                                      loop31:
                                                                                                      while(_loc4_ || _loc3_)
                                                                                                      {
                                                                                                         §§push(§§pop());
                                                                                                         if(_loc4_)
                                                                                                         {
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               while(!(_loc5_ && _loc3_))
                                                                                                               {
                                                                                                                  §§pop();
                                                                                                                  while(!_loc5_)
                                                                                                                  {
                                                                                                                     if(!_loc5_)
                                                                                                                     {
                                                                                                                        continue loop4;
                                                                                                                     }
                                                                                                                     §§goto(addr608);
                                                                                                                  }
                                                                                                                  §§goto(addr603);
                                                                                                                  §§push(Boolean(§§pop()));
                                                                                                                  if(_loc4_ || _loc2_)
                                                                                                                  {
                                                                                                                     if(!_loc5_)
                                                                                                                     {
                                                                                                                        continue loop7;
                                                                                                                     }
                                                                                                                     continue loop31;
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr668);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     if(_loc5_)
                                                                                                                     {
                                                                                                                        break loop8;
                                                                                                                     }
                                                                                                                     if(!_loc5_)
                                                                                                                     {
                                                                                                                        if(_loc4_)
                                                                                                                        {
                                                                                                                           continue loop0;
                                                                                                                        }
                                                                                                                        addr516:
                                                                                                                        if(_loc4_)
                                                                                                                        {
                                                                                                                           §§goto(addr709);
                                                                                                                           addr518:
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           §§goto(addr693);
                                                                                                                        }
                                                                                                                        §§goto(addr709);
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        §§goto(addr401);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     this.§]^§ = this.§4",§;
                                                                                                                     if(_loc4_)
                                                                                                                     {
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(false)
                                                                                                                           {
                                                                                                                              continue loop2;
                                                                                                                           }
                                                                                                                           §§goto(addr709);
                                                                                                                        }
                                                                                                                        addr232:
                                                                                                                     }
                                                                                                                     §§goto(addr721);
                                                                                                                  }
                                                                                                                  §§goto(addr721);
                                                                                                               }
                                                                                                               addr317:
                                                                                                            }
                                                                                                            §§goto(addr721);
                                                                                                         }
                                                                                                         §§goto(addr494);
                                                                                                      }
                                                                                                      §§goto(addr654);
                                                                                                   }
                                                                                                   addr372:
                                                                                                }
                                                                                                §§goto(addr705);
                                                                                             }
                                                                                             §§goto(addr670);
                                                                                          }
                                                                                          §§goto(addr659);
                                                                                       }
                                                                                       §§goto(addr373);
                                                                                    }
                                                                                 }
                                                                                 continue loop1;
                                                                              }
                                                                              §§goto(addr588);
                                                                           }
                                                                        }
                                                                        §§goto(addr532);
                                                                        addr281:
                                                                        §§push(§§pop().getSubAnimation(§§pop()));
                                                                        if(_loc5_ && _loc2_)
                                                                        {
                                                                           continue;
                                                                        }
                                                                        §§goto(addr289);
                                                                     }
                                                                  }
                                                                  addr435:
                                                               }
                                                               §§goto(addr531);
                                                               addr258:
                                                               §§push(this.§>"Q§);
                                                               if(_loc5_ && _loc1_)
                                                               {
                                                                  continue;
                                                               }
                                                               if(_loc4_ || _loc2_)
                                                               {
                                                                  if(!(_loc5_ && _loc2_))
                                                                  {
                                                                     §§goto(addr281);
                                                                  }
                                                                  §§goto(addr689);
                                                               }
                                                               §§goto(addr621);
                                                            }
                                                         }
                                                         §§goto(addr619);
                                                      }
                                                      §§goto(addr522);
                                                   }
                                                }
                                                §§goto(addr648);
                                             }
                                          }
                                          §§goto(addr709);
                                       }
                                       §§goto(addr721);
                                    }
                                 }
                                 addr348:
                              }
                              break;
                           }
                           §§goto(addr392);
                        }
                        this.mIsScreaming = true;
                        §§goto(addr516);
                        addr560:
                     }
                     §§goto(addr721);
                  }
                  addr325:
               }
               else
               {
                  addr146:
                  §§push(this.§<!O§);
                  if(!(_loc5_ && _loc1_))
                  {
                     if(§§pop())
                     {
                        if(!_loc5_)
                        {
                           this.§5!B§ = 1;
                           if(_loc4_)
                           {
                              §§goto(addr709);
                           }
                           else
                           {
                              §§goto(addr325);
                           }
                        }
                        §§goto(addr683);
                     }
                     else
                     {
                        §§push(this.§9!!§);
                        if(!_loc5_)
                        {
                           §§push(§§pop().getSpecialAnimationProgress());
                           if(!_loc5_)
                           {
                              §§push(0);
                              if(_loc4_ || _loc2_)
                              {
                                 §§push(§§pop() >= §§pop());
                                 if(_loc4_)
                                 {
                                    §§push(§§pop());
                                    if(_loc4_)
                                    {
                                       if(§§pop())
                                       {
                                          if(_loc4_ || this)
                                          {
                                             §§pop();
                                             if(!(_loc5_ && this))
                                             {
                                                §§push(this.§4",§);
                                                if(_loc4_)
                                                {
                                                   §§push(this.§%+§);
                                                   if(!_loc5_)
                                                   {
                                                      §§push(§§pop().getSubAnimation(§§pop()));
                                                      if(_loc4_)
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                         if(!_loc5_)
                                                         {
                                                            addr91:
                                                            if(§§pop())
                                                            {
                                                               if(_loc4_)
                                                               {
                                                                  this.§]^§ = this.§4",§.getSubAnimation(this.§%+§);
                                                                  if(_loc4_)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        this.§5!B§ = this.§]^§.getFrameCount() * this.§9!!§.getSpecialAnimationProgress();
                                                                        if(_loc4_ || this)
                                                                        {
                                                                           §§push(this.§5!B§ == this.§]^§.getFrameCount() - 1);
                                                                           if(_loc4_)
                                                                           {
                                                                              §§push(§§pop());
                                                                              if(_loc4_)
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    if(!(_loc5_ && _loc2_))
                                                                                    {
                                                                                       §§pop();
                                                                                       if(!(_loc5_ && _loc3_))
                                                                                       {
                                                                                          if(false)
                                                                                          {
                                                                                             continue;
                                                                                          }
                                                                                          addr183:
                                                                                          §§push(this.§9!!§.getSpecialAnimationTimeLeft());
                                                                                          if(!_loc5_)
                                                                                          {
                                                                                             §§push(100);
                                                                                             if(!_loc5_)
                                                                                             {
                                                                                                addr189:
                                                                                                §§push(§§pop() > §§pop());
                                                                                                if(!_loc5_)
                                                                                                {
                                                                                                   addr192:
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      if(!_loc5_)
                                                                                                      {
                                                                                                         var _loc2_:*;
                                                                                                         §§push((_loc2_ = this).§5!B§);
                                                                                                         if(_loc4_)
                                                                                                         {
                                                                                                            §§push(§§pop() - 1);
                                                                                                         }
                                                                                                         var _loc3_:* = §§pop();
                                                                                                         if(_loc4_ || this)
                                                                                                         {
                                                                                                            _loc2_.§5!B§ = _loc3_;
                                                                                                         }
                                                                                                         if(_loc5_ && _loc2_)
                                                                                                         {
                                                                                                            §§goto(addr641);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            addr701:
                                                                                                         }
                                                                                                         §§goto(addr709);
                                                                                                      }
                                                                                                      §§goto(addr348);
                                                                                                   }
                                                                                                   §§goto(addr701);
                                                                                                }
                                                                                                §§goto(addr372);
                                                                                             }
                                                                                             §§goto(addr492);
                                                                                          }
                                                                                          §§goto(addr666);
                                                                                       }
                                                                                       §§goto(addr518);
                                                                                    }
                                                                                    §§goto(addr493);
                                                                                 }
                                                                                 §§goto(addr192);
                                                                              }
                                                                              §§goto(addr503);
                                                                           }
                                                                           §§goto(addr590);
                                                                        }
                                                                        break;
                                                                     }
                                                                     §§goto(addr671);
                                                                  }
                                                                  §§goto(addr232);
                                                               }
                                                               §§goto(addr560);
                                                            }
                                                            else
                                                            {
                                                               §§push(this.mTryToSpecial);
                                                            }
                                                            §§goto(addr704);
                                                         }
                                                         §§goto(addr590);
                                                      }
                                                      §§goto(addr629);
                                                   }
                                                   §§goto(addr435);
                                                }
                                                §§goto(addr619);
                                             }
                                             §§goto(addr683);
                                          }
                                          §§goto(addr372);
                                       }
                                       §§goto(addr91);
                                    }
                                    §§goto(addr669);
                                 }
                                 §§goto(addr668);
                              }
                              §§goto(addr189);
                           }
                           §§goto(addr484);
                        }
                        §§goto(addr183);
                     }
                  }
               }
               §§goto(addr493);
            }
            §§goto(addr619);
         }
         §§goto(addr146);
      }
      
      public function §4,§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            this.§?!T§.visible = false;
         }
      }
      
      public function setDamagedFrame() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.§5D§);
            if(!_loc3_)
            {
               if(§§pop() < 0)
               {
                  if(_loc2_ || _loc2_)
                  {
                     addr31:
                     this.§%";§();
                  }
               }
               §§push(0);
            }
            var _loc1_:* = §§pop();
            if(!(_loc3_ && this))
            {
               §§push(1);
               if(_loc2_)
               {
                  §§push(this.§9!!§.§ d§);
                  if(_loc2_)
                  {
                     §§push(§§pop() / this.§9!!§.§^!2§);
                  }
                  §§push(§§pop() - §§pop());
                  if(!(_loc3_ && this))
                  {
                     §§push(§§pop() * this.§5D§);
                  }
                  §§push(int(§§pop()));
               }
               while(true)
               {
                  _loc1_ = §§pop();
                  loop1:
                  while(true)
                  {
                     §§push(_loc1_);
                     if(!(_loc3_ && _loc3_))
                     {
                        if(§§pop() != this.§>!#§)
                        {
                           loop2:
                           while(true)
                           {
                              this.§>!#§ = _loc1_;
                              loop3:
                              while(true)
                              {
                                 this.§5!B§ = this.§>!#§;
                                 while(true)
                                 {
                                    if(!_loc3_)
                                    {
                                       if(_loc3_)
                                       {
                                          break;
                                       }
                                       if(_loc2_)
                                       {
                                          continue;
                                       }
                                       continue loop1;
                                    }
                                    continue loop3;
                                 }
                                 continue loop2;
                              }
                           }
                           addr87:
                        }
                        return;
                     }
                     break;
                  }
               }
            }
            §§goto(addr87);
         }
         §§goto(addr31);
      }
      
      public function §%";§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            if(this.§4",§)
            {
               if(_loc1_)
               {
                  this.§5D§ = this.§4",§.getFrameCount();
               }
            }
         }
      }
      
      public function §#"R§(param1:uint = 16777215, param2:int = 4, param3:int = 4) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param1)
         {
            this.§`!D§ = new GlowFilter();
         }
         do
         {
            this.§`!D§.blurX = param2;
            do
            {
               this.§`!D§.blurY = param3;
               do
               {
                  this.§`!D§.color = param1;
               }
               while(!(_loc4_ || this));
               
            }
            while(_loc5_);
            
         }
         while(!_loc4_);
         
      }
      
      public function §;",§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            this.§`!D§ = null;
         }
      }
      
      public function §try §() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:int = Math.min(8,Math.max(this.§9!!§.§`!A§(false),1));
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= _loc1_)
            {
               if(!_loc4_)
               {
                  continue;
               }
               if(!_loc3_)
               {
                  break;
               }
            }
            else
            {
               this.§`!_§(_loc2_);
            }
            _loc2_++;
         }
      }
      
      public function §>!'§(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = this.§`"B§.length - 1;
         while(true)
         {
            §§push(_loc2_);
            if(_loc4_ || _loc2_)
            {
               if(!_loc3_)
               {
                  if(§§pop() < 0)
                  {
                     if(_loc4_)
                     {
                        break;
                     }
                     loop1:
                     while(true)
                     {
                        if(_loc4_)
                        {
                           if(_loc4_)
                           {
                              break;
                           }
                           loop2:
                           while(true)
                           {
                              this.§`!_§(_loc2_);
                              addr93:
                              while(true)
                              {
                                 if(this.§`"B§[_loc2_].lifeTime < 0)
                                 {
                                    continue loop2;
                                 }
                                 addr52:
                                 while(true)
                                 {
                                    §§push(_loc2_);
                                    addr64:
                                    while(true)
                                    {
                                       §§push(§§pop() - 1);
                                       continue loop1;
                                    }
                                 }
                              }
                           }
                        }
                        while(!_loc4_)
                        {
                        }
                        §§goto(addr52);
                     }
                     continue;
                  }
                  this.§`"B§[_loc2_].updateLifeTime(param1);
                  §§goto(addr93);
               }
               §§goto(addr64);
            }
            §§goto(addr65);
         }
      }
      
      private function §`!_§(param1:int) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_)
         {
            if(!this.§3"E§)
            {
               if(_loc6_ || param1)
               {
                  §§goto(addr28);
               }
            }
            var _loc2_:int = 0;
            if(_loc6_ || _loc2_)
            {
               if(Math.random() < 0.5)
               {
                  if(_loc6_ || this)
                  {
                     _loc2_ = 1;
                  }
               }
            }
            var _loc3_:§^"5§ = this.§3"E§.getFrame(_loc2_);
            §§push(100 + Math.random() * 100);
            if(_loc6_ || param1)
            {
               §§push(Number(§§pop()));
            }
            var _loc4_:* = §§pop();
            var _loc5_:§^t§ = null;
            if(!(_loc7_ && _loc2_))
            {
               if(param1 < this.§`"B§.length)
               {
                  addr87:
                  (_loc5_ = this.§`"B§[param1]).§9"0§(_loc4_);
                  if(_loc6_)
                  {
                     _loc5_.§0Y§(_loc3_.texture);
                     if(!(_loc7_ && _loc2_))
                     {
                        addr140:
                        §§push(_loc5_.image);
                        if(_loc6_)
                        {
                           §§push(_loc3_.pivotX);
                           if(_loc6_ || _loc2_)
                           {
                              §§push(-§§pop());
                              if(_loc6_)
                              {
                                 §§push(this.§8!U§);
                                 if(_loc6_)
                                 {
                                    §§push(§§pop().width / 2);
                                    if(_loc6_)
                                    {
                                       §§push(§§pop() - §§pop());
                                       if(!_loc7_)
                                       {
                                          addr168:
                                          §§push(Math.random() * this.§8!U§.width);
                                          if(!_loc7_)
                                          {
                                             §§push(§§pop() + §§pop());
                                             if(!(_loc7_ && _loc2_))
                                             {
                                                §§pop().x = §§pop();
                                                if(_loc6_)
                                                {
                                                   addr191:
                                                   addr189:
                                                   addr187:
                                                   §§push(_loc5_.image);
                                                   §§push(-_loc3_.pivotY);
                                                   if(!(_loc7_ && param1))
                                                   {
                                                      addr209:
                                                      §§push(this.§8!U§.height / 2);
                                                      if(!_loc7_)
                                                      {
                                                         addr216:
                                                         §§push(§§pop() - §§pop());
                                                         if(_loc6_ || this)
                                                         {
                                                            addr230:
                                                            §§push(§§pop() + Math.random() * this.§8!U§.height);
                                                         }
                                                      }
                                                      §§goto(addr230);
                                                   }
                                                   §§pop().y = §§pop();
                                                }
                                                return;
                                             }
                                             §§goto(addr209);
                                          }
                                          §§goto(addr230);
                                       }
                                       §§goto(addr209);
                                    }
                                    §§goto(addr216);
                                 }
                                 §§goto(addr209);
                              }
                              §§goto(addr168);
                           }
                           §§goto(addr191);
                        }
                        §§goto(addr189);
                        addr119:
                     }
                     §§goto(addr187);
                  }
                  §§goto(addr119);
               }
               else
               {
                  _loc5_ = new §^t§(_loc3_.texture,_loc4_);
                  if(_loc6_)
                  {
                     this.§`"B§.push(_loc5_);
                     if(_loc7_)
                     {
                     }
                     §§goto(addr140);
                  }
                  this.§?!T§.addChild(_loc5_.image);
               }
               §§goto(addr140);
            }
            §§goto(addr87);
         }
         addr28:
      }
      
      public function §`j§() : § "E§
      {
         return this.§8!U§;
      }
   }
}
