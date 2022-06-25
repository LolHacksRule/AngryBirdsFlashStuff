package § var§
{
   import §&H§.b2Vec2;
   import §0S§.§6R§;
   import §40§.§"e§;
   import §40§.§5G§;
   import §=`§.§#`§;
   import §=`§.§%!L§;
   import §=`§.§7!V§;
   import §?]§.Texture;
   import §`g§.§"<§;
   import §`g§.Sprite;
   import flash.filters.GlowFilter;
   
   public class §7!r§
   {
      
      public static const §<!c§:Number = 1000;
      
      public static const §=2§:Number = 500;
      
      private static var §?j§:Array = null;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || §7!r§)
         {
            §<!c§ = 1000;
            do
            {
               §=2§ = 500;
               do
               {
                  §?j§ = null;
               }
               while(_loc1_);
               
            }
            while(!(_loc2_ || _loc2_));
            
         }
      }
      
      private var each:§!u§;
      
      public var §'![§:int;
      
      public var mW:Number;
      
      public var mH:Number;
      
      public var §-!+§:Number;
      
      public var §4t§:Number;
      
      public var §0!W§:int = -1;
      
      private var §'" §:String;
      
      private var §0"$§:§%!L§;
      
      private var §^" §:§%!L§;
      
      private var §?!F§:§"<§;
      
      private var §=!V§:Number = 0;
      
      private var §2P§:Number = 0;
      
      public var §;`§:int = -1;
      
      private var §-!'§:int = -1;
      
      private var § if§:int = 0;
      
      public var mTryToSpecial:Boolean = false;
      
      public var mIsSpecial:Boolean = false;
      
      public var §`!A§:String = "special";
      
      public var mTryToFly:Boolean = false;
      
      public var mIsFlying:Boolean = false;
      
      public var § ^§:Boolean = false;
      
      public var mTryToScream:Number = 0;
      
      public var §^E§:String = "yell";
      
      public var mIsScreaming:Boolean = false;
      
      public var mTryToBlink:Number = 0;
      
      public var §=!k§:String = "blink";
      
      public var mIsBlinking:Boolean = false;
      
      public var § !_§:String = "fly";
      
      public var §?Y§:String = "fly_yell";
      
      public var §2!G§:GlowFilter;
      
      private var §1!S§:Vector.<§"e§>;
      
      private var §1"§:§%!L§;
      
      private var §]2§:Sprite = null;
      
      private var §#!U§:§5G§;
      
      public function §7!r§(param1:§!u§, param2:Sprite, param3:§5G§)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param3)
         {
            super();
            loop0:
            while(true)
            {
               this.§#!U§ = param3;
               while(true)
               {
                  this.each = param1;
                  while(true)
                  {
                     if(_loc5_ || param1)
                     {
                        this.§'" § = this.each.§-!>§;
                        loop3:
                        while(true)
                        {
                           this.§1!S§ = new Vector.<§"e§>();
                           while(true)
                           {
                              if(_loc5_)
                              {
                                 if(_loc5_)
                                 {
                                    continue;
                                 }
                                 continue loop0;
                              }
                              continue loop3;
                           }
                        }
                        return;
                        addr57:
                        addr86:
                     }
                     break;
                     if(_loc4_ && this)
                     {
                        continue;
                     }
                     §§goto(addr57);
                  }
               }
            }
         }
         §§goto(addr86);
      }
      
      public function dispose() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§"e§ = null;
         if(_loc2_ || _loc1_)
         {
            this.§#!&§();
            if(_loc2_ || _loc3_)
            {
               §§goto(addr45);
            }
            §§goto(addr58);
         }
         addr45:
         if(this.§1!S§)
         {
            addr58:
            while(this.§1!S§.length > 0)
            {
               _loc1_ = this.§1!S§.pop();
               if(!(_loc3_ && _loc2_))
               {
                  _loc1_.dispose();
               }
            }
            if(_loc2_)
            {
               this.§1!S§ = null;
            }
         }
      }
      
      public function §3![§(param1:int, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || param1)
         {
            this.mW = param3;
         }
         do
         {
            this.mH = param4;
            loop1:
            do
            {
               this.§0!W§ = param1;
               while(true)
               {
                  this.§4t§ = param2;
                  while(!_loc6_)
                  {
                     this.§3!s§();
                     if(_loc5_)
                     {
                        continue loop1;
                     }
                  }
               }
            }
            while(!_loc5_);
            
         }
         while(_loc6_);
         
      }
      
      public function §^!o§(param1:Boolean) : void
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
                  if(!(_loc2_ && this))
                  {
                     §§push(§§pop() / this.mH);
                  }
                  §§pop().§-!+§ = §§pop();
                  loop1:
                  while(this.§-!+§ < 1)
                  {
                     if(!_loc2_)
                     {
                        if(_loc2_)
                        {
                           continue;
                        }
                        if(_loc2_)
                        {
                           if(_loc2_ && param1)
                           {
                              this.§-!+§ = 1;
                              return;
                           }
                           addr108:
                           addr111:
                           continue loop0;
                        }
                        this.§-!+§ = 1 / this.§-!+§;
                        while(true)
                        {
                           break loop1;
                        }
                        addr69:
                     }
                     §§goto(addr69);
                  }
                  while(true)
                  {
                     this.§-!+§ = Math.min(11,this.§-!+§);
                     if(_loc3_)
                     {
                        break;
                     }
                     §§goto(addr69);
                  }
                  if(!_loc2_)
                  {
                     return;
                  }
                  §§goto(addr111);
               }
            }
            §§goto(addr108);
         }
         §§goto(addr69);
      }
      
      public function §]J§(param1:§7!V§) : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§#`§ = null;
         var _loc3_:Texture = null;
         if(!(_loc6_ && _loc2_))
         {
            §§push(this.each.isGround());
            if(!(_loc6_ && _loc3_))
            {
               if(§§pop())
               {
                  if(_loc5_ || _loc3_)
                  {
                     §§goto(addr82);
                  }
                  else
                  {
                     while(true)
                     {
                     }
                     addr83:
                  }
               }
               loop1:
               while(true)
               {
                  this.§1"§ = param1.getAnimation("SPARKLES");
                  loop2:
                  while(true)
                  {
                     loop3:
                     while(true)
                     {
                        this.§0"$§ = param1.getAnimation(this.§'" §);
                        while(_loc5_)
                        {
                           this.§^" § = this.§0"$§;
                           if(!(_loc5_ || _loc3_))
                           {
                              continue;
                           }
                           if(_loc6_)
                           {
                              break loop3;
                           }
                           while(false)
                           {
                              continue loop3;
                           }
                           var _loc4_:* = Number(1);
                           if(_loc5_)
                           {
                              §§push(this.§^" §);
                              if(_loc5_)
                              {
                                 if(§§pop())
                                 {
                                    addr96:
                                    _loc2_ = this.§^" §.getFrame(0);
                                    addr94:
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
                                    if(_loc5_ || _loc3_)
                                    {
                                       addr131:
                                       this.§?!F§ = new §"<§(_loc3_);
                                       if(!(_loc6_ && this))
                                       {
                                          if(!_loc2_)
                                          {
                                             §§push(this.§?!F§);
                                             loop6:
                                             while(true)
                                             {
                                                §§push(this.§?!F§);
                                                loop7:
                                                while(true)
                                                {
                                                   §§push(-§§pop().width);
                                                   loop8:
                                                   while(true)
                                                   {
                                                      if(_loc5_ || this)
                                                      {
                                                         §§push(2);
                                                         loop9:
                                                         while(true)
                                                         {
                                                            §§push(§§pop() / §§pop());
                                                            loop10:
                                                            while(true)
                                                            {
                                                               if(!(_loc6_ && this))
                                                               {
                                                                  §§pop().x = §§pop();
                                                                  loop11:
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§?!F§);
                                                                     loop12:
                                                                     while(true)
                                                                     {
                                                                        if(!(_loc6_ && this))
                                                                        {
                                                                           §§push(this.§?!F§);
                                                                           if(!_loc5_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           §§push(-§§pop().height);
                                                                           loop13:
                                                                           while(!(_loc6_ && _loc2_))
                                                                           {
                                                                              §§push(2);
                                                                              if(!_loc5_)
                                                                              {
                                                                                 continue loop9;
                                                                              }
                                                                              §§push(§§pop() / §§pop());
                                                                              while(true)
                                                                              {
                                                                                 §§pop().y = §§pop();
                                                                                 addr301:
                                                                                 addr222:
                                                                                 while(true)
                                                                                 {
                                                                                    addr256:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(this.§?!F§);
                                                                                       addr259:
                                                                                       addr365:
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc5_)
                                                                                          {
                                                                                             continue loop6;
                                                                                          }
                                                                                          continue loop12;
                                                                                       }
                                                                                       addr365:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc2_.pivotX);
                                                                                          addr367:
                                                                                          loop23:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(-§§pop());
                                                                                             addr368:
                                                                                             while(true)
                                                                                             {
                                                                                                §§pop().x = §§pop();
                                                                                                addr369:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(this.§?!F§);
                                                                                                   continue loop23;
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 if(!(_loc5_ || _loc3_))
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 if(_loc6_)
                                                                                 {
                                                                                    continue loop13;
                                                                                 }
                                                                                 if(_loc6_)
                                                                                 {
                                                                                    continue loop8;
                                                                                 }
                                                                                 §§pop().scaleY = §§pop();
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc5_ || _loc2_)
                                                                                    {
                                                                                       if(!(_loc6_ && this))
                                                                                       {
                                                                                          if(_loc5_ || _loc3_)
                                                                                          {
                                                                                             this.mW = this.§?!F§.width / 2;
                                                                                             continue loop11;
                                                                                          }
                                                                                          addr363:
                                                                                          while(true)
                                                                                          {
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr301);
                                                                                       }
                                                                                       §§goto(addr365);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       loop19:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(this.§?!F§);
                                                                                          if(_loc6_)
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          addr214:
                                                                                          §§push(_loc4_);
                                                                                          if(!(_loc6_ && this))
                                                                                          {
                                                                                             §§goto(addr222);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                §§pop().scaleX = §§pop();
                                                                                                continue loop19;
                                                                                                §§goto(addr214);
                                                                                             }
                                                                                             addr271:
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr259);
                                                                                    addr183:
                                                                                    while(_loc5_ || _loc2_)
                                                                                    {
                                                                                       this.§]2§.addChild(this.§?!F§);
                                                                                       if(_loc5_ || param1)
                                                                                       {
                                                                                          if(!_loc6_)
                                                                                          {
                                                                                             return true;
                                                                                          }
                                                                                          continue loop11;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr367);
                                                                              }
                                                                           }
                                                                           continue loop10;
                                                                        }
                                                                        §§goto(addr342);
                                                                        if(§§pop())
                                                                        {
                                                                           §§push(-§§pop());
                                                                           while(true)
                                                                           {
                                                                              §§pop().y = §§pop();
                                                                              addr353:
                                                                              while(!(_loc6_ && _loc3_))
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    §§goto(addr256);
                                                                                 }
                                                                              }
                                                                              §§goto(addr369);
                                                                           }
                                                                           addr352:
                                                                        }
                                                                        §§goto(addr367);
                                                                     }
                                                                     continue loop7;
                                                                  }
                                                               }
                                                               §§goto(addr352);
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr368);
                                                   }
                                                }
                                             }
                                          }
                                          §§goto(addr363);
                                       }
                                       §§goto(addr369);
                                    }
                                    §§goto(addr360);
                                 }
                                 else
                                 {
                                    _loc3_ = this.§#!U§.textureManager.§9Y§();
                                 }
                                 §§goto(addr131);
                              }
                              §§goto(addr96);
                           }
                           §§goto(addr94);
                        }
                        continue loop2;
                     }
                     continue loop1;
                  }
               }
            }
            addr82:
            return false;
         }
         §§goto(addr44);
      }
      
      public function §8c§(param1:§6R§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:Array = null;
         var _loc3_:b2Vec2 = null;
         §§push(param1.§0>§);
         if(!_loc6_)
         {
            var _loc4_:* = §§pop();
            if(_loc5_)
            {
               §§push(§6R§.§9!Z§);
               if(!(_loc6_ && this))
               {
                  §§push(_loc4_);
                  if(!(_loc6_ && this))
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!_loc6_)
                        {
                           addr114:
                           §§push(0);
                           if(_loc5_)
                           {
                              addr133:
                              switch(§§pop())
                              {
                                 case 0:
                                    _loc2_ = param1.§!!>§();
                                    _loc3_ = _loc2_[0];
                                    if(_loc5_)
                                    {
                                       §§push(this);
                                       §§push(_loc3_.x);
                                       if(!_loc6_)
                                       {
                                          §§push(§§pop() / §5G§.§6+§);
                                       }
                                       §§pop().§=!V§ = §§pop();
                                       if(!_loc6_)
                                       {
                                          §§push(this);
                                          §§push(_loc3_.y);
                                          if(_loc5_ || _loc3_)
                                          {
                                             §§push(§§pop() / §5G§.§6+§);
                                          }
                                          §§pop().§2P§ = §§pop();
                                          if(!_loc5_)
                                          {
                                          }
                                          break;
                                       }
                                       addr134:
                                       this.§=!2§();
                                       break;
                                    }
                                    break;
                                 case 1:
                                    §§goto(addr134);
                                 default:
                                    §§goto(addr134);
                              }
                              return;
                              addr132:
                           }
                           else
                           {
                              addr122:
                              if(§§pop() !== _loc4_)
                              {
                                 §§goto(addr132);
                                 §§push(2);
                              }
                              §§goto(addr132);
                           }
                           §§goto(addr132);
                        }
                        §§push(1);
                        if(_loc6_)
                        {
                        }
                        §§goto(addr132);
                     }
                     else
                     {
                        §§push(§6R§.§#""§);
                        if(_loc5_)
                        {
                           §§goto(addr122);
                        }
                     }
                     §§goto(addr132);
                  }
                  §§goto(addr122);
               }
               §§goto(addr132);
            }
            §§goto(addr114);
         }
         §§goto(addr133);
      }
      
      public function §[T§() : Array
      {
         return §7c§.§[T§(null,this.each.§,!y§());
      }
      
      public function §]x§() : Array
      {
         return §7c§.§]x§(null,this.each.§,!y§());
      }
      
      public function §=!"§() : Array
      {
         return §7c§.§=!"§(null);
      }
      
      public function §3!s§() : void
      {
      }
      
      public function setScale(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.§]2§.scaleX = this.§]2§.scaleY = param1;
         }
      }
      
      public function §=!2§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§#`§ = null;
         if(!(_loc4_ && _loc2_))
         {
            §§push(this.§0"$§);
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
                     addr258:
                  }
               }
               else
               {
                  §§push(this.§ ^§);
                  if(_loc5_ || _loc3_)
                  {
                     if(§§pop())
                     {
                        if(_loc5_)
                        {
                           this.§ if§ = 1;
                           if(!_loc4_)
                           {
                              addr735:
                              §§push(this.§^" §);
                              if(_loc5_)
                              {
                                 if(§§pop())
                                 {
                                    addr742:
                                    _loc1_ = this.§^" §.getFrame(this.§ if§);
                                    if(!_loc4_)
                                    {
                                       §§push(this.§?!F§);
                                       loop60:
                                       while(true)
                                       {
                                          §§push(Boolean(§§pop()));
                                          if(!(_loc4_ && _loc3_))
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
                                                      if(!_loc4_)
                                                      {
                                                         while(§§pop())
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(this.§?!F§);
                                                               loop63:
                                                               while(true)
                                                               {
                                                                  §§pop().texture = _loc1_.texture;
                                                                  addr905:
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§?!F§);
                                                                     loop67:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc1_.pivotX);
                                                                        loop68:
                                                                        while(true)
                                                                        {
                                                                           §§push(-§§pop());
                                                                           loop69:
                                                                           while(true)
                                                                           {
                                                                              §§push(this.§=!V§);
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
                                                                                       §§push(this.§?!F§);
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc1_.pivotY);
                                                                                          if(!_loc5_)
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          §§push(-§§pop());
                                                                                          loop74:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(this.§2P§);
                                                                                             if(_loc4_ && _loc3_)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             §§push(§§pop() - §§pop());
                                                                                             loop75:
                                                                                             while(_loc5_ || _loc1_)
                                                                                             {
                                                                                                §§pop().y = §§pop();
                                                                                                while(true)
                                                                                                {
                                                                                                   addr792:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(this.§?!F§);
                                                                                                      addr795:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(_loc5_)
                                                                                                         {
                                                                                                            if(_loc4_ && this)
                                                                                                            {
                                                                                                               break;
                                                                                                            }
                                                                                                            continue loop60;
                                                                                                         }
                                                                                                         continue loop67;
                                                                                                      }
                                                                                                      continue loop63;
                                                                                                   }
                                                                                                   continue loop72;
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   if(_loc5_ || _loc3_)
                                                                                                   {
                                                                                                      continue loop74;
                                                                                                   }
                                                                                                   continue loop75;
                                                                                                }
                                                                                                continue loop69;
                                                                                             }
                                                                                             continue loop71;
                                                                                          }
                                                                                          continue loop70;
                                                                                          if(!(_loc5_ || _loc3_))
                                                                                          {
                                                                                             continue;
                                                                                          }
                                                                                          §§push(_loc1_.scale);
                                                                                          if(!_loc4_)
                                                                                          {
                                                                                             §§goto(addr771);
                                                                                          }
                                                                                          §§goto(addr813);
                                                                                       }
                                                                                       continue loop68;
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            continue loop65;
                                                         }
                                                         addr920:
                                                         return;
                                                         addr898:
                                                      }
                                                      break;
                                                   }
                                                }
                                                addr918:
                                             }
                                             §§goto(addr898);
                                          }
                                          §§goto(addr918);
                                       }
                                    }
                                    §§goto(addr905);
                                 }
                                 §§goto(addr920);
                              }
                              §§goto(addr742);
                              addr185:
                           }
                           else
                           {
                              loop14:
                              while(true)
                              {
                                 §§push(this.mTryToFly);
                                 loop15:
                                 while(true)
                                 {
                                    if(_loc5_)
                                    {
                                       §§push(§§pop() > 0);
                                       loop16:
                                       while(true)
                                       {
                                          addr663:
                                          loop57:
                                          while(true)
                                          {
                                             §§push(§§pop());
                                             loop36:
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
                                                            if(!(_loc4_ && this))
                                                            {
                                                               addr674:
                                                               loop29:
                                                               for(; _loc5_; §§goto(addr674))
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§0"$§);
                                                                     addr639:
                                                                     loop90:
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§?Y§);
                                                                        loop39:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop().getSubAnimation(§§pop()));
                                                                           loop43:
                                                                           while(true)
                                                                           {
                                                                              §§push(Boolean(§§pop()));
                                                                              loop40:
                                                                              while(true)
                                                                              {
                                                                                 if(!_loc5_)
                                                                                 {
                                                                                    continue loop42;
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    if(!§§pop())
                                                                                    {
                                                                                       §§push(this.mTryToScream);
                                                                                       loop12:
                                                                                       while(true)
                                                                                       {
                                                                                          if(!(_loc4_ && _loc3_))
                                                                                          {
                                                                                             addr590:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(0);
                                                                                                addr591:
                                                                                                loop11:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop() > §§pop());
                                                                                                   loop6:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!_loc5_)
                                                                                                      {
                                                                                                         continue loop57;
                                                                                                      }
                                                                                                      if(!(_loc4_ && _loc2_))
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop());
                                                                                                            loop35:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(_loc4_ && _loc3_)
                                                                                                               {
                                                                                                                  continue loop36;
                                                                                                               }
                                                                                                               if(§§pop())
                                                                                                               {
                                                                                                                  loop54:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(!(_loc5_ || this))
                                                                                                                     {
                                                                                                                        continue loop40;
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§pop();
                                                                                                                        loop47:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(this.§0"$§);
                                                                                                                           loop38:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(!_loc5_)
                                                                                                                              {
                                                                                                                                 continue loop90;
                                                                                                                              }
                                                                                                                              if(!_loc4_)
                                                                                                                              {
                                                                                                                                 §§push(this.§^E§);
                                                                                                                                 loop49:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop().getSubAnimation(§§pop()));
                                                                                                                                    loop26:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(_loc5_ || _loc2_)
                                                                                                                                       {
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(Boolean(§§pop()));
                                                                                                                                             loop3:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(!_loc5_)
                                                                                                                                                {
                                                                                                                                                   continue loop15;
                                                                                                                                                }
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(!§§pop())
                                                                                                                                                   {
                                                                                                                                                      §§push(this.mTryToBlink);
                                                                                                                                                      if(_loc4_ && _loc3_)
                                                                                                                                                      {
                                                                                                                                                         continue loop12;
                                                                                                                                                      }
                                                                                                                                                      §§push(0);
                                                                                                                                                      if(_loc4_)
                                                                                                                                                      {
                                                                                                                                                         continue loop11;
                                                                                                                                                      }
                                                                                                                                                      if(!(_loc4_ && _loc3_))
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() > §§pop());
                                                                                                                                                         loop5:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(!_loc5_)
                                                                                                                                                            {
                                                                                                                                                               continue loop6;
                                                                                                                                                            }
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop());
                                                                                                                                                               addr529:
                                                                                                                                                               loop33:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(!_loc4_)
                                                                                                                                                                  {
                                                                                                                                                                     if(§§pop())
                                                                                                                                                                     {
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§pop();
                                                                                                                                                                           addr533:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(this.§0"$§);
                                                                                                                                                                              addr456:
                                                                                                                                                                              addr465:
                                                                                                                                                                              loop30:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(this.§=!k§);
                                                                                                                                                                                 addr458:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!(_loc4_ && _loc2_))
                                                                                                                                                                                    {
                                                                                                                                                                                       break loop30;
                                                                                                                                                                                    }
                                                                                                                                                                                    addr708:
                                                                                                                                                                                    loop31:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop().getSubAnimation(§§pop()));
                                                                                                                                                                                       addr709:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(Boolean(§§pop()));
                                                                                                                                                                                          loop10:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr711:
                                                                                                                                                                                             loop0:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(§§pop())
                                                                                                                                                                                                {
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!(_loc4_ && this))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         break loop0;
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr712:
                                                                                                                                                                                                }
                                                                                                                                                                                                else
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(this.mTryToScream);
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(0);
                                                                                                                                                                                                      addr684:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop() > §§pop());
                                                                                                                                                                                                         addr685:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!_loc4_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(§§pop());
                                                                                                                                                                                                               while(§§pop())
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!(_loc4_ && this))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§pop();
                                                                                                                                                                                                                        continue loop14;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     addr730:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(Boolean(§§pop()));
                                                                                                                                                                                                                        addr731:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(§§pop());
                                                                                                                                                                                                                           addr732:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(!§§pop())
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 continue loop10;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§pop();
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               continue loop16;
                                                                                                                                                                                                               addr688:
                                                                                                                                                                                                            }
                                                                                                                                                                                                            continue loop0;
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      continue loop12;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr683:
                                                                                                                                                                                                }
                                                                                                                                                                                                addr734:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(this.§0"$§);
                                                                                                                                                                                                   addr706:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue loop31;
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             this.§^" § = this.§0"$§.getSubAnimation(this.§`!A§);
                                                                                                                                                                                             break loop29;
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop().getSubAnimation(§§pop()));
                                                                                                                                                                                 addr466:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(Boolean(§§pop()));
                                                                                                                                                                                    addr467:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc4_)
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop54;
                                                                                                                                                                                       }
                                                                                                                                                                                       if(!_loc4_)
                                                                                                                                                                                       {
                                                                                                                                                                                          break loop33;
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr685);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr458);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        addr532:
                                                                                                                                                                     }
                                                                                                                                                                     break;
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr732);
                                                                                                                                                               }
                                                                                                                                                               loop22:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(!§§pop())
                                                                                                                                                                  {
                                                                                                                                                                     §§push(this.mTryToFly);
                                                                                                                                                                     loop23:
                                                                                                                                                                     while(!(_loc4_ && this))
                                                                                                                                                                     {
                                                                                                                                                                        §§push(Boolean(§§pop()));
                                                                                                                                                                        loop24:
                                                                                                                                                                        for(; _loc5_ || _loc2_; if(!(_loc4_ && _loc2_))
                                                                                                                                                                        {
                                                                                                                                                                           continue loop23;
                                                                                                                                                                        })
                                                                                                                                                                        {
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop());
                                                                                                                                                                              if(_loc5_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!(_loc5_ || _loc2_))
                                                                                                                                                                                 {
                                                                                                                                                                                    continue loop35;
                                                                                                                                                                                 }
                                                                                                                                                                                 if(§§pop())
                                                                                                                                                                                 {
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc5_ || _loc3_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!_loc5_)
                                                                                                                                                                                          {
                                                                                                                                                                                             break;
                                                                                                                                                                                          }
                                                                                                                                                                                          §§pop();
                                                                                                                                                                                          if(_loc5_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc5_)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!_loc5_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr473:
                                                                                                                                                                                                   if(!_loc4_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!_loc4_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!(_loc4_ && _loc2_))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            this.§^" § = this.§0"$§.getSubAnimation(this.§=!k§);
                                                                                                                                                                                                            if(!_loc4_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!_loc4_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(_loc5_ || _loc3_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     this.mIsBlinking = true;
                                                                                                                                                                                                                     §§goto(addr735);
                                                                                                                                                                                                                     addr452:
                                                                                                                                                                                                                     addr502:
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  else
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     loop50:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc4_ && _loc3_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           continue loop14;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        this.mIsScreaming = true;
                                                                                                                                                                                                                        addr563:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           this.§^" § = this.§0"$§.getSubAnimation(this.§^E§);
                                                                                                                                                                                                                           continue loop50;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr735);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr735);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(_loc5_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§goto(addr735);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  else
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§goto(addr563);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr742);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         else
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§goto(addr735);
                                                                                                                                                                                                            addr702:
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr735);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      else
                                                                                                                                                                                                      {
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!(_loc4_ && _loc1_))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               this.mIsFlying = true;
                                                                                                                                                                                                               break loop22;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            continue loop29;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr628:
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   break loop22;
                                                                                                                                                                                                }
                                                                                                                                                                                                if(!(_loc4_ && _loc2_))
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(this.§0"$§);
                                                                                                                                                                                                   if(!(_loc4_ && _loc1_))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc4_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         continue loop38;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§push(this.§ !_§);
                                                                                                                                                                                                      if(!_loc4_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!_loc5_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            continue loop49;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         if(!_loc5_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            continue loop39;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§push(§§pop().getSubAnimation(§§pop()));
                                                                                                                                                                                                         if(!(_loc4_ && this))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!(_loc4_ && _loc3_))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!(_loc4_ && _loc3_))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(Boolean(§§pop()));
                                                                                                                                                                                                                  if(_loc5_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     continue loop24;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  continue;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               continue loop43;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            continue loop26;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr466);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      else
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§goto(addr458);
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   else
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§goto(addr456);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr458);
                                                                                                                                                                                                }
                                                                                                                                                                                                else
                                                                                                                                                                                                {
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      this.§^" § = this.§0"$§.getSubAnimation(this.§?Y§);
                                                                                                                                                                                                      addr654:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         this.mIsScreaming = true;
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr647:
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr628);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr452);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr742);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr467);
                                                                                                                                                                                    }
                                                                                                                                                                                    continue loop5;
                                                                                                                                                                                 }
                                                                                                                                                                                 addr357:
                                                                                                                                                                                 if(!§§pop())
                                                                                                                                                                                 {
                                                                                                                                                                                    this.§^" § = this.§0"$§;
                                                                                                                                                                                    if(_loc5_ || _loc2_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(false)
                                                                                                                                                                                       {
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             this.mIsFlying = true;
                                                                                                                                                                                             if(!_loc4_)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc5_ || _loc3_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!(_loc5_ || _loc1_))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue loop47;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   if(_loc5_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§goto(addr735);
                                                                                                                                                                                                      addr297:
                                                                                                                                                                                                   }
                                                                                                                                                                                                   else
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§goto(addr654);
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr742);
                                                                                                                                                                                             addr382:
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr735);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr742);
                                                                                                                                                                                 }
                                                                                                                                                                                 while(!_loc4_)
                                                                                                                                                                                 {
                                                                                                                                                                                    this.§^" § = this.§0"$§.getSubAnimation(this.§ !_§);
                                                                                                                                                                                    if(!(_loc4_ && _loc2_))
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc5_ || _loc3_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§goto(addr382);
                                                                                                                                                                                       }
                                                                                                                                                                                       else
                                                                                                                                                                                       {
                                                                                                                                                                                          §§goto(addr533);
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr742);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr712);
                                                                                                                                                                                 §§goto(addr742);
                                                                                                                                                                              }
                                                                                                                                                                              else
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr529);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr532);
                                                                                                                                                                        if(!(_loc5_ || _loc1_))
                                                                                                                                                                        {
                                                                                                                                                                           continue;
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr357);
                                                                                                                                                                     }
                                                                                                                                                                     continue loop3;
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr473);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr735);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         continue loop6;
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr684);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr563);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             continue loop26;
                                                                                                                                          }
                                                                                                                                          addr558:
                                                                                                                                       }
                                                                                                                                       §§goto(addr709);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr706);
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr561);
                                                                                                            }
                                                                                                         }
                                                                                                         addr601:
                                                                                                      }
                                                                                                      §§goto(addr689);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             addr590:
                                                                                          }
                                                                                          §§goto(addr683);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr647);
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               §§pop();
                                                               this.mIsSpecial = true;
                                                               §§goto(addr702);
                                                            }
                                                            §§goto(addr733);
                                                         }
                                                      }
                                                      §§goto(addr645);
                                                   }
                                                   addr666:
                                                }
                                                §§goto(addr688);
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr731);
                                 }
                              }
                           }
                           §§goto(addr742);
                        }
                        §§goto(addr185);
                     }
                     else
                     {
                        §§push(this.each);
                        if(_loc5_)
                        {
                           §§push(§§pop().getSpecialAnimationProgress());
                           if(_loc5_)
                           {
                              §§push(0);
                              if(_loc5_ || this)
                              {
                                 §§push(§§pop() >= §§pop());
                                 if(!(_loc4_ && _loc2_))
                                 {
                                    §§push(§§pop());
                                    if(_loc5_ || _loc2_)
                                    {
                                       if(§§pop())
                                       {
                                          if(!_loc4_)
                                          {
                                             §§pop();
                                             if(!(_loc4_ && _loc3_))
                                             {
                                                §§push(this.§0"$§);
                                                if(!_loc4_)
                                                {
                                                   §§push(this.§`!A§);
                                                   if(_loc5_ || _loc1_)
                                                   {
                                                      §§push(§§pop().getSubAnimation(§§pop()));
                                                      if(!_loc4_)
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                         if(!_loc4_)
                                                         {
                                                            addr104:
                                                            if(§§pop())
                                                            {
                                                               loop58:
                                                               while(true)
                                                               {
                                                                  this.§^" § = this.§0"$§.getSubAnimation(this.§`!A§);
                                                                  if(!(_loc4_ && _loc2_))
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        this.§ if§ = this.§^" §.getFrameCount() * this.each.getSpecialAnimationProgress();
                                                                        if(!(_loc4_ && _loc3_))
                                                                        {
                                                                           §§push(this.§ if§ == this.§^" §.getFrameCount() - 1);
                                                                           if(_loc5_)
                                                                           {
                                                                              §§push(§§pop());
                                                                              if(_loc5_)
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    if(!(_loc4_ && _loc1_))
                                                                                    {
                                                                                       §§pop();
                                                                                       if(!(_loc4_ && _loc3_))
                                                                                       {
                                                                                          continue loop58;
                                                                                       }
                                                                                       §§goto(addr677);
                                                                                    }
                                                                                    §§goto(addr711);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr223:
                                                                                    if(§§pop())
                                                                                    {
                                                                                       if(_loc5_ || _loc3_)
                                                                                       {
                                                                                          var _loc2_:*;
                                                                                          §§push((_loc2_ = this).§ if§);
                                                                                          if(!(_loc4_ && _loc1_))
                                                                                          {
                                                                                             §§push(§§pop() - 1);
                                                                                          }
                                                                                          var _loc3_:* = §§pop();
                                                                                          if(!(_loc4_ && _loc1_))
                                                                                          {
                                                                                             _loc2_.§ if§ = _loc3_;
                                                                                          }
                                                                                          if(!_loc4_)
                                                                                          {
                                                                                             §§goto(addr258);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr297);
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr734);
                                                                                       }
                                                                                       §§goto(addr742);
                                                                                    }
                                                                                    §§goto(addr258);
                                                                                 }
                                                                              }
                                                                              §§goto(addr732);
                                                                           }
                                                                           §§goto(addr403);
                                                                        }
                                                                        break;
                                                                     }
                                                                     §§goto(addr563);
                                                                     addr66:
                                                                  }
                                                                  §§goto(addr502);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§push(this.mTryToSpecial);
                                                            }
                                                            §§goto(addr730);
                                                         }
                                                         §§goto(addr711);
                                                      }
                                                      §§goto(addr558);
                                                   }
                                                   §§goto(addr465);
                                                }
                                                §§goto(addr706);
                                             }
                                             §§goto(addr533);
                                          }
                                          §§goto(addr663);
                                       }
                                       §§goto(addr104);
                                    }
                                    §§goto(addr666);
                                 }
                                 §§goto(addr601);
                              }
                              §§goto(addr684);
                           }
                           §§goto(addr207);
                        }
                        §§goto(addr204);
                     }
                  }
                  §§goto(addr528);
               }
               §§goto(addr735);
            }
            §§goto(addr639);
         }
         addr198:
      }
      
      public function §^!$§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§]2§.visible = false;
         }
      }
      
      public function setDamagedFrame() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            §§push(this.§;`§);
            if(!_loc3_)
            {
               if(§§pop() < 0)
               {
                  if(!(_loc3_ && this))
                  {
                     addr36:
                     this.§5!^§();
                  }
               }
               §§push(0);
            }
            var _loc1_:* = §§pop();
            if(_loc2_ || _loc1_)
            {
               §§push(1);
               if(_loc2_ || _loc1_)
               {
                  §§push(this.each.§0M§);
                  if(!_loc3_)
                  {
                     §§push(§§pop() / this.each.§]!3§);
                  }
                  §§push(§§pop() - §§pop());
                  if(!_loc3_)
                  {
                     §§push(§§pop() * this.§;`§);
                  }
                  §§push(int(§§pop()));
               }
               while(true)
               {
                  _loc1_ = §§pop();
                  while(true)
                  {
                     §§push(_loc1_);
                     if(!(_loc3_ && _loc1_))
                     {
                        if(§§pop() != this.§-!'§)
                        {
                           loop2:
                           while(true)
                           {
                              this.§-!'§ = _loc1_;
                              loop3:
                              while(true)
                              {
                                 this.§ if§ = this.§-!'§;
                                 while(!_loc3_)
                                 {
                                    this.§=!2§();
                                    if(_loc2_ || _loc1_)
                                    {
                                       continue loop3;
                                    }
                                 }
                                 continue loop2;
                              }
                           }
                           addr102:
                        }
                        return;
                     }
                     break;
                  }
               }
            }
            §§goto(addr102);
         }
         §§goto(addr36);
      }
      
      public function §5!^§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            if(this.§0"$§)
            {
               if(_loc1_)
               {
                  this.§;`§ = this.§0"$§.getFrameCount();
               }
            }
         }
      }
      
      public function §[5§(param1:uint = 16777215, param2:int = 4, param3:int = 4) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param3)
         {
            this.§2!G§ = new GlowFilter();
            while(true)
            {
               this.§2!G§.blurX = param2;
               §§goto(addr77);
            }
         }
         addr77:
         while(true)
         {
            this.§2!G§.blurY = param3;
            do
            {
               this.§2!G§.color = param1;
            }
            while(!(_loc5_ || this));
            
            if(_loc5_)
            {
               if(_loc5_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function §#!&§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.§2!G§ = null;
         }
      }
      
      public function §=!v§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:int = Math.min(8,Math.max(this.each.§^!e§(false),1));
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= _loc1_)
            {
               if(_loc4_)
               {
                  break;
               }
               loop1:
               while(_loc3_ && _loc2_)
               {
                  while(true)
                  {
                     _loc2_++;
                     continue loop1;
                  }
               }
               continue;
            }
            this.§6!Q§(_loc2_);
            §§goto(addr76);
         }
      }
      
      public function §=7§(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = int(this.§1!S§.length - 1);
         while(true)
         {
            §§push(_loc2_);
            if(!_loc3_)
            {
               if(!_loc3_)
               {
                  if(§§pop() < 0)
                  {
                     if(!(_loc3_ && this))
                     {
                        if(_loc4_ || this)
                        {
                           break;
                        }
                        while(true)
                        {
                           addr59:
                           while(true)
                           {
                              §§push(_loc2_);
                              addr61:
                              while(true)
                              {
                                 §§push(§§pop() - 1);
                                 addr62:
                                 while(true)
                                 {
                                    _loc2_ = §§pop();
                                 }
                              }
                           }
                           addr91:
                           this.§6!Q§(_loc2_);
                        }
                     }
                     while(!_loc4_)
                     {
                        while(true)
                        {
                           if(_loc3_ && this)
                           {
                              continue;
                           }
                           §§goto(addr91);
                        }
                        §§goto(addr59);
                     }
                     continue;
                  }
                  this.§1!S§[_loc2_].updateLifeTime(param1);
                  while(true)
                  {
                     if(this.§1!S§[_loc2_].lifeTime < 0)
                     {
                        §§goto(addr84);
                     }
                     §§goto(addr59);
                  }
               }
               §§goto(addr61);
            }
            §§goto(addr62);
         }
      }
      
      private function §6!Q§(param1:int) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!(_loc7_ && _loc2_))
         {
            if(!this.§1"§)
            {
               if(_loc6_ || this)
               {
                  return;
               }
            }
         }
         var _loc2_:int = 0;
         if(!_loc7_)
         {
            if(Math.random() < 0.5)
            {
               if(!_loc7_)
               {
                  addr44:
                  _loc2_ = 1;
               }
            }
            var _loc3_:§#`§ = this.§1"§.getFrame(_loc2_);
            §§push(100 + Math.random() * 100);
            if(_loc6_)
            {
               §§push(Number(§§pop()));
            }
            var _loc4_:* = §§pop();
            var _loc5_:§"e§ = null;
            if(!_loc7_)
            {
               if(param1 < this.§1!S§.length)
               {
                  addr72:
                  (_loc5_ = this.§1!S§[param1]).§8#§(_loc4_);
                  if(_loc6_ || this)
                  {
                     _loc5_.§]o§(_loc3_.texture);
                     if(_loc6_)
                     {
                        addr130:
                        §§push(_loc5_.image);
                        if(_loc6_ || _loc3_)
                        {
                           §§push(_loc3_.pivotX);
                           if(_loc6_ || _loc3_)
                           {
                              §§push(-§§pop());
                              if(!(_loc7_ && _loc3_))
                              {
                                 §§push(this.§?!F§);
                                 if(!(_loc7_ && _loc2_))
                                 {
                                    §§push(§§pop().width / 2);
                                    if(_loc6_ || param1)
                                    {
                                       §§push(§§pop() - §§pop());
                                       if(_loc6_)
                                       {
                                          addr178:
                                          §§push(Math.random() * this.§?!F§.width);
                                          if(!(_loc7_ && _loc3_))
                                          {
                                             addr191:
                                             §§push(§§pop() + §§pop());
                                             if(_loc6_)
                                             {
                                                §§pop().x = §§pop();
                                                if(!(_loc7_ && _loc2_))
                                                {
                                                   addr216:
                                                   §§push(_loc5_.image);
                                                   §§push(-_loc3_.pivotY);
                                                   if(!(_loc7_ && _loc2_))
                                                   {
                                                      addr224:
                                                      §§push(this.§?!F§.height / 2);
                                                      if(_loc6_)
                                                      {
                                                         addr231:
                                                         §§push(§§pop() - §§pop());
                                                         if(!_loc7_)
                                                         {
                                                            addr240:
                                                            §§push(§§pop() + Math.random() * this.§?!F§.height);
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
                                             §§goto(addr240);
                                          }
                                          §§goto(addr231);
                                       }
                                       §§goto(addr224);
                                    }
                                    §§goto(addr191);
                                 }
                                 §§goto(addr224);
                              }
                              §§goto(addr178);
                           }
                        }
                        §§goto(addr216);
                        addr94:
                     }
                     §§goto(addr216);
                  }
                  §§goto(addr94);
               }
               else
               {
                  _loc5_ = new §"e§(_loc3_.texture,_loc4_);
                  if(!(_loc7_ && _loc3_))
                  {
                     this.§1!S§.push(_loc5_);
                     if(_loc7_)
                     {
                     }
                     §§goto(addr130);
                  }
                  this.§]2§.addChild(_loc5_.image);
               }
               §§goto(addr130);
            }
            §§goto(addr72);
         }
         §§goto(addr44);
      }
      
      public function §-F§() : §"<§
      {
         return this.§?!F§;
      }
   }
}
