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
         if(!(_loc1_ && _loc2_))
         {
            §<!c§ = 1000;
         }
         while(true)
         {
            §=2§ = 500;
            while(!(_loc1_ && §7!r§))
            {
               §?j§ = null;
               if(!_loc1_)
               {
                  return;
               }
            }
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
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param1)
         {
            super();
            while(true)
            {
               this.§#!U§ = param3;
               loop1:
               while(true)
               {
                  this.each = param1;
                  addr92:
                  while(true)
                  {
                     this.§'" § = this.each.§-!>§;
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr73);
      }
      
      public function dispose() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§"e§ = null;
         if(_loc2_ || _loc3_)
         {
            this.§#!&§();
            if(!_loc3_)
            {
               §§goto(addr50);
            }
            §§goto(addr53);
         }
         addr50:
         if(this.§1!S§)
         {
            addr53:
            while(this.§1!S§.length > 0)
            {
               _loc1_ = this.§1!S§.pop();
               if(_loc2_)
               {
                  _loc1_.dispose();
               }
            }
            if(!_loc3_)
            {
               this.§1!S§ = null;
            }
         }
      }
      
      public function §3![§(param1:int, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            this.mW = param3;
         }
         loop0:
         while(true)
         {
            this.mH = param4;
            while(true)
            {
               this.§0!W§ = param1;
               while(!(_loc5_ && param3))
               {
                  continue loop0;
                  this.§4t§ = param2;
                  do
                  {
                     this.§3!s§();
                  }
                  while(_loc5_);
                  
                  if(_loc6_ || param2)
                  {
                     return;
                  }
               }
            }
         }
      }
      
      public function §^!o§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(!param1)
            {
               loop0:
               while(true)
               {
                  §§push(this);
                  §§push(this.mW);
                  if(!_loc3_)
                  {
                     §§push(§§pop() / this.mH);
                  }
                  §§pop().§-!+§ = §§pop();
                  while(true)
                  {
                     if(!(_loc3_ && _loc3_))
                     {
                        if(_loc3_)
                        {
                           break;
                        }
                        if(this.§-!+§ < 1)
                        {
                           while(_loc2_ || param1)
                           {
                              this.§-!+§ = 1 / this.§-!+§;
                              while(true)
                              {
                              }
                           }
                           addr107:
                           this.§-!+§ = 1;
                           break;
                           addr58:
                        }
                        while(true)
                        {
                           this.§-!+§ = Math.min(11,this.§-!+§);
                           if(!_loc2_)
                           {
                              continue;
                           }
                           if(!_loc3_)
                           {
                              break;
                           }
                           §§goto(addr58);
                        }
                        continue;
                     }
                     continue loop0;
                  }
                  return;
               }
            }
            §§goto(addr107);
         }
         §§goto(addr104);
      }
      
      public function §]J§(param1:§7!V§) : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§#`§ = null;
         var _loc3_:Texture = null;
         if(_loc5_)
         {
            §§push(this.each.isGround());
            if(!(_loc6_ && _loc2_))
            {
               if(§§pop())
               {
                  if(!(_loc6_ && param1))
                  {
                     §§goto(addr77);
                  }
                  else
                  {
                     while(true)
                     {
                     }
                     addr78:
                  }
               }
               while(true)
               {
                  this.§1"§ = param1.getAnimation("SPARKLES");
                  loop2:
                  for(; !_loc6_; while(true)
                  {
                     if(!(_loc6_ && this))
                     {
                        this.§^" § = this.§0"$§;
                        if(_loc5_)
                        {
                           break;
                        }
                        continue;
                     }
                     continue loop2;
                  },while(false)
                  {
                     §§goto(addr34);
                  },var _loc4_:* = Number(1),if(_loc5_ || _loc3_)
                  {
                     §§push(this.§^" §);
                     if(!_loc6_)
                     {
                        if(§§pop())
                        {
                           addr96:
                           _loc2_ = this.§^" §.getFrame(0);
                           addr94:
                           if(_loc5_)
                           {
                              §§push(_loc2_.scale);
                              if(_loc5_ || _loc3_)
                              {
                                 §§push(Number(§§pop()));
                              }
                              _loc4_ = §§pop();
                           }
                           _loc3_ = _loc2_.texture;
                           if(_loc5_ || _loc2_)
                           {
                              addr131:
                              this.§?!F§ = new §"<§(_loc3_);
                              if(!_loc6_)
                              {
                                 if(!_loc2_)
                                 {
                                    §§push(this.§?!F§);
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
                                                            §§push(this.§?!F§);
                                                            if(_loc6_)
                                                            {
                                                               break;
                                                            }
                                                            §§push(-§§pop().height);
                                                            loop13:
                                                            while(true)
                                                            {
                                                               §§push(2);
                                                               if(!(_loc5_ || this))
                                                               {
                                                                  break;
                                                               }
                                                               §§push(§§pop() / §§pop());
                                                               loop14:
                                                               for(; !(_loc6_ && this); if(_loc6_ && this)
                                                               {
                                                                  continue;
                                                               },if(_loc6_)
                                                               {
                                                                  continue loop13;
                                                               },§§pop().scaleY = §§pop(),§§goto(addr236))
                                                               {
                                                                  §§pop().y = §§pop();
                                                                  while(true)
                                                                  {
                                                                     addr244:
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§?!F§);
                                                                        continue loop12;
                                                                     }
                                                                     addr194:
                                                                     if(!(_loc5_ || _loc3_))
                                                                     {
                                                                        continue;
                                                                     }
                                                                     if(_loc5_ || _loc2_)
                                                                     {
                                                                        this.§]2§.addChild(this.§?!F§);
                                                                        addr208:
                                                                        if(!(_loc6_ && this))
                                                                        {
                                                                           if(_loc6_)
                                                                           {
                                                                              addr236:
                                                                              while(!(_loc6_ && _loc3_))
                                                                              {
                                                                                 this.mW = this.§?!F§.width / 2;
                                                                                 loop21:
                                                                                 while(true)
                                                                                 {
                                                                                    this.mH = this.§?!F§.height / 2;
                                                                                    addr187:
                                                                                    addr353:
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc6_ && _loc2_)
                                                                                       {
                                                                                          continue loop21;
                                                                                       }
                                                                                       §§goto(addr194);
                                                                                       §§goto(addr208);
                                                                                    }
                                                                                    addr353:
                                                                                    if(_loc6_)
                                                                                    {
                                                                                       addr358:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(this.§?!F§);
                                                                                          addr360:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc2_.pivotX);
                                                                                             loop27:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(-§§pop());
                                                                                                addr363:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§pop().x = §§pop();
                                                                                                   addr364:
                                                                                                   loop28:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(this.§?!F§);
                                                                                                      addr342:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc2_.pivotY);
                                                                                                         if(!(_loc5_ || _loc2_))
                                                                                                         {
                                                                                                            continue loop27;
                                                                                                         }
                                                                                                         §§pop().y = -§§pop();
                                                                                                         §§goto(addr353);
                                                                                                         continue loop28;
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       addr358:
                                                                                    }
                                                                                    §§goto(addr244);
                                                                                 }
                                                                              }
                                                                              loop19:
                                                                              while(true)
                                                                              {
                                                                                 §§push(this.§?!F§);
                                                                                 if(_loc6_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 §§push(_loc4_);
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    continue loop14;
                                                                                 }
                                                                                 addr266:
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc5_ || _loc3_)
                                                                                    {
                                                                                       if(_loc6_ && _loc2_)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       §§pop().scaleX = §§pop();
                                                                                       continue loop19;
                                                                                    }
                                                                                    continue loop10;
                                                                                 }
                                                                                 §§goto(addr352);
                                                                              }
                                                                              addr236:
                                                                              continue loop12;
                                                                           }
                                                                           if(_loc6_)
                                                                           {
                                                                              continue loop11;
                                                                           }
                                                                           if(!(_loc6_ && this))
                                                                           {
                                                                              return true;
                                                                           }
                                                                           §§goto(addr364);
                                                                        }
                                                                        §§goto(addr187);
                                                                     }
                                                                     §§goto(addr353);
                                                                  }
                                                               }
                                                               continue loop8;
                                                            }
                                                            continue loop9;
                                                         }
                                                         continue loop7;
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr363);
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       if(!(_loc5_ || _loc2_))
                                       {
                                          continue;
                                       }
                                       if(_loc5_)
                                       {
                                          if(!_loc6_)
                                          {
                                             §§goto(addr266);
                                             §§push(_loc4_);
                                          }
                                          §§goto(addr360);
                                       }
                                       §§goto(addr342);
                                    }
                                 }
                                 §§goto(addr358);
                              }
                              §§goto(addr364);
                           }
                           §§goto(addr358);
                        }
                        else
                        {
                           _loc3_ = this.§#!U§.textureManager.§9Y§();
                        }
                        §§goto(addr131);
                     }
                     §§goto(addr96);
                  },§§goto(addr94))
                  {
                     while(true)
                     {
                        this.§0"$§ = param1.getAnimation(this.§'" §);
                        continue loop2;
                     }
                  }
                  §§goto(addr78);
               }
            }
            addr77:
            return false;
         }
         §§goto(addr32);
      }
      
      public function §8c§(param1:§6R§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:Array = null;
         var _loc3_:b2Vec2 = null;
         §§push(param1.§0>§);
         if(_loc6_ || this)
         {
            var _loc4_:* = §§pop();
            if(_loc6_)
            {
               §§push(§6R§.§9!Z§);
               if(_loc6_)
               {
                  §§push(_loc4_);
                  if(_loc6_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!_loc5_)
                        {
                           §§goto(addr115);
                        }
                        §§goto(addr130);
                     }
                     else
                     {
                        §§push(§6R§.§#""§);
                        if(_loc6_)
                        {
                           §§goto(addr128);
                        }
                        §§goto(addr133);
                     }
                  }
                  §§goto(addr128);
               }
               §§goto(addr133);
            }
            addr115:
            §§push(0);
            if(_loc5_ && _loc3_)
            {
               addr128:
               if(§§pop() === _loc4_)
               {
                  addr130:
                  §§push(1);
                  if(!_loc5_)
                  {
                     addr133:
                  }
               }
               else
               {
                  §§push(2);
               }
            }
            §§goto(addr139);
         }
         addr139:
         switch(§§pop())
         {
            case 0:
               _loc2_ = param1.§!!>§();
               _loc3_ = _loc2_[0];
               if(_loc6_ || _loc3_)
               {
                  §§push(this);
                  §§push(_loc3_.x);
                  if(!_loc5_)
                  {
                     §§push(§§pop() / §5G§.§6+§);
                  }
                  §§pop().§=!V§ = §§pop();
                  if(!_loc5_)
                  {
                     §§push(this);
                     §§push(_loc3_.y);
                     if(!_loc5_)
                     {
                        §§push(§§pop() / §5G§.§6+§);
                     }
                     §§pop().§2P§ = §§pop();
                     if(_loc6_ || this)
                     {
                     }
                     break;
                  }
                  break;
               }
               addr140:
               this.§=!2§();
               break;
            case 1:
               §§goto(addr140);
            default:
               §§goto(addr140);
         }
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
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.§]2§.scaleX = this.§]2§.scaleY = param1;
         }
      }
      
      public function §=!2§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§#`§ = null;
         if(_loc5_)
         {
            §§push(this.§0"$§);
            if(_loc5_ || _loc3_)
            {
               if(!§§pop())
               {
                  if(_loc5_)
                  {
                     return;
                  }
                  addr720:
                  §§push(this.§^" §);
                  if(!(_loc4_ && _loc3_))
                  {
                     if(§§pop())
                     {
                        addr732:
                        _loc1_ = this.§^" §.getFrame(this.§ if§);
                        if(!(_loc4_ && _loc2_))
                        {
                           §§push(this.§?!F§);
                           loop43:
                           while(true)
                           {
                              §§push(Boolean(§§pop()));
                              loop44:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    loop45:
                                    while(true)
                                    {
                                       §§pop();
                                       addr889:
                                       do
                                       {
                                          §§push(Boolean(_loc1_));
                                          if(_loc4_)
                                          {
                                             continue loop45;
                                          }
                                       }
                                       while(!_loc4_);
                                       
                                       continue loop44;
                                    }
                                 }
                                 while(§§pop())
                                 {
                                    loop48:
                                    while(true)
                                    {
                                       §§push(this.§?!F§);
                                       addr879:
                                       while(true)
                                       {
                                          §§pop().texture = _loc1_.texture;
                                          addr882:
                                          while(true)
                                          {
                                             §§push(this.§?!F§);
                                             addr843:
                                             while(true)
                                             {
                                                §§push(_loc1_.pivotX);
                                                addr845:
                                                while(true)
                                                {
                                                   §§push(-§§pop());
                                                   addr846:
                                                   while(true)
                                                   {
                                                      §§push(this.§=!V§);
                                                      addr848:
                                                      while(true)
                                                      {
                                                         §§push(§§pop() - §§pop());
                                                         addr849:
                                                         while(true)
                                                         {
                                                            §§pop().x = §§pop();
                                                            continue loop48;
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr890);
                              }
                              while(true)
                              {
                                 if(_loc4_ && this)
                                 {
                                    continue loop43;
                                 }
                                 §§goto(addr789);
                                 §§push(_loc1_.scale);
                              }
                              §§goto(addr775);
                           }
                        }
                        while(true)
                        {
                           §§goto(addr777);
                        }
                     }
                     addr890:
                     return;
                  }
                  §§goto(addr732);
                  addr277:
               }
               else
               {
                  §§push(this.§ ^§);
                  if(!_loc4_)
                  {
                     if(§§pop())
                     {
                        if(_loc5_)
                        {
                           this.§ if§ = 1;
                           if(_loc5_ || _loc3_)
                           {
                              addr185:
                           }
                           else
                           {
                              addr687:
                           }
                           §§goto(addr720);
                        }
                        §§goto(addr185);
                     }
                     else
                     {
                        §§push(this.each);
                        if(_loc5_ || _loc3_)
                        {
                           §§push(§§pop().getSpecialAnimationProgress());
                           if(!_loc4_)
                           {
                              §§push(0);
                              if(!_loc4_)
                              {
                                 §§push(§§pop() >= §§pop());
                                 loop0:
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    if(!(_loc4_ && _loc3_))
                                    {
                                       if(§§pop())
                                       {
                                          if(!_loc4_)
                                          {
                                             §§pop();
                                             if(_loc5_)
                                             {
                                                §§push(this.§0"$§);
                                                if(!(_loc4_ && _loc2_))
                                                {
                                                   §§push(this.§`!A§);
                                                   if(_loc5_ || this)
                                                   {
                                                      §§push(§§pop().getSubAnimation(§§pop()));
                                                      if(_loc5_ || _loc1_)
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                         if(!(_loc4_ && _loc1_))
                                                         {
                                                            addr114:
                                                            if(§§pop())
                                                            {
                                                               if(_loc5_ || _loc1_)
                                                               {
                                                                  this.§^" § = this.§0"$§.getSubAnimation(this.§`!A§);
                                                                  if(_loc5_)
                                                                  {
                                                                     addr132:
                                                                     loop1:
                                                                     while(true)
                                                                     {
                                                                        this.§ if§ = this.§^" §.getFrameCount() * this.each.getSpecialAnimationProgress();
                                                                        if(!_loc4_)
                                                                        {
                                                                           §§push(this.§ if§ == this.§^" §.getFrameCount() - 1);
                                                                           if(_loc5_ || _loc3_)
                                                                           {
                                                                              §§push(§§pop());
                                                                              if(_loc5_ || this)
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    if(!(_loc4_ && _loc2_))
                                                                                    {
                                                                                       if(!_loc5_)
                                                                                       {
                                                                                          continue loop0;
                                                                                       }
                                                                                       §§pop();
                                                                                       if(!(_loc4_ && _loc3_))
                                                                                       {
                                                                                          if(false)
                                                                                          {
                                                                                             continue;
                                                                                          }
                                                                                          addr204:
                                                                                          §§push(this.each.getSpecialAnimationTimeLeft());
                                                                                          if(!_loc4_)
                                                                                          {
                                                                                             §§push(100);
                                                                                             if(!_loc4_)
                                                                                             {
                                                                                                §§push(§§pop() > §§pop());
                                                                                                if(!_loc4_)
                                                                                                {
                                                                                                   addr213:
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      if(!(_loc4_ && _loc1_))
                                                                                                      {
                                                                                                         var _loc2_:*;
                                                                                                         §§push((_loc2_ = this).§ if§);
                                                                                                         if(!_loc4_)
                                                                                                         {
                                                                                                            §§push(§§pop() - 1);
                                                                                                         }
                                                                                                         var _loc3_:* = §§pop();
                                                                                                         if(_loc5_ || _loc2_)
                                                                                                         {
                                                                                                            _loc2_.§ if§ = _loc3_;
                                                                                                         }
                                                                                                         if(!(_loc4_ && _loc2_))
                                                                                                         {
                                                                                                            break loop0;
                                                                                                         }
                                                                                                         loop40:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(this.mTryToFly);
                                                                                                            loop29:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop() > 0);
                                                                                                               loop30:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  addr652:
                                                                                                                  loop10:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop());
                                                                                                                     addr653:
                                                                                                                     loop11:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(§§pop())
                                                                                                                        {
                                                                                                                           loop12:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§pop();
                                                                                                                              loop13:
                                                                                                                              while(!_loc4_)
                                                                                                                              {
                                                                                                                                 §§push(this.§0"$§);
                                                                                                                                 loop14:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(this.§?Y§);
                                                                                                                                    addr632:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop().getSubAnimation(§§pop()));
                                                                                                                                       addr633:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(Boolean(§§pop()));
                                                                                                                                          addr634:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             addr635:
                                                                                                                                             addr636:
                                                                                                                                             loop18:
                                                                                                                                             for(; !§§pop(); for(; !(_loc4_ && _loc2_); if(_loc4_ && this)
                                                                                                                                             {
                                                                                                                                                continue;
                                                                                                                                             },§§goto(addr321))
                                                                                                                                             {
                                                                                                                                                if(_loc5_)
                                                                                                                                                {
                                                                                                                                                   §§push(Boolean(§§pop()));
                                                                                                                                                   if(_loc5_)
                                                                                                                                                   {
                                                                                                                                                      if(!_loc4_)
                                                                                                                                                      {
                                                                                                                                                         if(_loc5_)
                                                                                                                                                         {
                                                                                                                                                            if(_loc4_)
                                                                                                                                                            {
                                                                                                                                                               continue loop12;
                                                                                                                                                            }
                                                                                                                                                            §§push(§§pop());
                                                                                                                                                            if(_loc5_ || _loc2_)
                                                                                                                                                            {
                                                                                                                                                               if(!(_loc4_ && _loc3_))
                                                                                                                                                               {
                                                                                                                                                                  if(_loc5_ || _loc3_)
                                                                                                                                                                  {
                                                                                                                                                                     addr388:
                                                                                                                                                                     if(!§§pop())
                                                                                                                                                                     {
                                                                                                                                                                        loop23:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           if(!§§pop())
                                                                                                                                                                           {
                                                                                                                                                                              this.§^" § = this.§0"$§;
                                                                                                                                                                              if(_loc5_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc5_ || _loc3_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(false)
                                                                                                                                                                                    {
                                                                                                                                                                                       loop24:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          this.mIsFlying = true;
                                                                                                                                                                                          if(_loc5_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc5_)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!_loc4_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§goto(addr277);
                                                                                                                                                                                                }
                                                                                                                                                                                                else
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§goto(addr543);
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             else
                                                                                                                                                                                             {
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!(_loc5_ || _loc3_))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!_loc4_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!(_loc4_ && _loc1_))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               break loop1;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr612);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr414);
                                                                                                                                                                                                         addr399:
                                                                                                                                                                                                         §§pop();
                                                                                                                                                                                                      }
                                                                                                                                                                                                      continue loop23;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   if(!_loc4_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      this.§^" § = this.§0"$§.getSubAnimation(this.§ !_§);
                                                                                                                                                                                                      if(_loc4_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         break loop24;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      continue loop24;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr580);
                                                                                                                                                                                                }
                                                                                                                                                                                                addr323:
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          break;
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr732);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr720);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr491);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr732);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr323);
                                                                                                                                                                        }
                                                                                                                                                                        continue;
                                                                                                                                                                        addr321:
                                                                                                                                                                     }
                                                                                                                                                                     while(_loc5_)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc4_)
                                                                                                                                                                        {
                                                                                                                                                                           continue loop10;
                                                                                                                                                                        }
                                                                                                                                                                        if(!(_loc4_ && this))
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr399);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr665);
                                                                                                                                                                     }
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc5_)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc4_ && this)
                                                                                                                                                                           {
                                                                                                                                                                              continue loop29;
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr569);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr592);
                                                                                                                                                                     }
                                                                                                                                                                     addr388:
                                                                                                                                                                     addr560:
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr717);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr673);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr525);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr590);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr462);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr388);
                                                                                                                                                }
                                                                                                                                                §§goto(addr674);
                                                                                                                                             })
                                                                                                                                             {
                                                                                                                                                §§push(this.mTryToScream);
                                                                                                                                                loop81:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(0);
                                                                                                                                                   loop37:
                                                                                                                                                   while(!_loc5_)
                                                                                                                                                   {
                                                                                                                                                      loop77:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() > §§pop());
                                                                                                                                                         addr665:
                                                                                                                                                         addr696:
                                                                                                                                                         loop78:
                                                                                                                                                         while(!(_loc4_ && this))
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop());
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(!§§pop())
                                                                                                                                                               {
                                                                                                                                                                  continue loop30;
                                                                                                                                                               }
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§pop();
                                                                                                                                                                  addr675:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     if(!(_loc4_ && _loc3_))
                                                                                                                                                                     {
                                                                                                                                                                        continue loop40;
                                                                                                                                                                     }
                                                                                                                                                                     addr719:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(this.§0"$§);
                                                                                                                                                                        addr691:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(this.§`!A§);
                                                                                                                                                                           addr693:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop().getSubAnimation(§§pop()));
                                                                                                                                                                              addr694:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(Boolean(§§pop()));
                                                                                                                                                                                 addr695:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    break loop78;
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         loop8:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(§§pop())
                                                                                                                                                            {
                                                                                                                                                               if(!(_loc4_ && _loc3_))
                                                                                                                                                               {
                                                                                                                                                                  this.§^" § = this.§0"$§.getSubAnimation(this.§`!A§);
                                                                                                                                                                  break;
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr732);
                                                                                                                                                            }
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                               §§push(this.mTryToScream);
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  continue loop77;
                                                                                                                                                                  addr506:
                                                                                                                                                                  §§push(0);
                                                                                                                                                                  if(_loc4_ && _loc3_)
                                                                                                                                                                  {
                                                                                                                                                                     continue;
                                                                                                                                                                  }
                                                                                                                                                                  §§push(0);
                                                                                                                                                                  if(_loc4_ && this)
                                                                                                                                                                  {
                                                                                                                                                                     continue loop37;
                                                                                                                                                                  }
                                                                                                                                                                  addr521:
                                                                                                                                                                  §§push(§§pop() > §§pop());
                                                                                                                                                                  loop31:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     if(!_loc4_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop());
                                                                                                                                                                        while(!_loc4_)
                                                                                                                                                                        {
                                                                                                                                                                           if(!_loc5_)
                                                                                                                                                                           {
                                                                                                                                                                              continue loop11;
                                                                                                                                                                           }
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              if(§§pop())
                                                                                                                                                                              {
                                                                                                                                                                                 loop82:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§pop();
                                                                                                                                                                                    if(_loc5_ || _loc1_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(this.§0"$§);
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc4_ && _loc1_)
                                                                                                                                                                                          {
                                                                                                                                                                                             continue loop14;
                                                                                                                                                                                          }
                                                                                                                                                                                          if(!_loc4_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(this.§=!k§);
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc5_ || this)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop().getSubAnimation(§§pop()));
                                                                                                                                                                                                   loop70:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!(_loc4_ && _loc2_))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(Boolean(§§pop()));
                                                                                                                                                                                                            addr462:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!_loc5_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  continue loop82;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               if(!(_loc5_ || this))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  continue loop31;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               if(!(_loc4_ && _loc1_))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(_loc5_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(!§§pop())
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(this.mTryToFly);
                                                                                                                                                                                                                           continue loop18;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        if(_loc5_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           this.§^" § = this.§0"$§.getSubAnimation(this.§=!k§);
                                                                                                                                                                                                                           addr491:
                                                                                                                                                                                                                           if(!(_loc4_ && this))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              this.mIsBlinking = true;
                                                                                                                                                                                                                              addr414:
                                                                                                                                                                                                                              if(!(_loc5_ || _loc3_))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 break loop8;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr720);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           else
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§goto(addr675);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr732);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     addr480:
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  else
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr716:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(§§pop());
                                                                                                                                                                                                                        addr717:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(§§pop())
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§pop();
                                                                                                                                                                                                                                 §§goto(addr719);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              addr718:
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     addr716:
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr695);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr718);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            continue loop70;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr461:
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr694);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr454:
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr693);
                                                                                                                                                                                             }
                                                                                                                                                                                             addr446:
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr691);
                                                                                                                                                                                       }
                                                                                                                                                                                       addr425:
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr732);
                                                                                                                                                                                 }
                                                                                                                                                                                 addr530:
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr480);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           if(§§pop())
                                                                                                                                                                           {
                                                                                                                                                                              addr592:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§pop();
                                                                                                                                                                                 if(!(_loc4_ && _loc2_))
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!(_loc4_ && _loc2_))
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(this.§0"$§);
                                                                                                                                                                                       continue loop14;
                                                                                                                                                                                    }
                                                                                                                                                                                    addr643:
                                                                                                                                                                                    loop35:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc4_)
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop13;
                                                                                                                                                                                       }
                                                                                                                                                                                       this.mIsScreaming = true;
                                                                                                                                                                                       loop36:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!_loc5_)
                                                                                                                                                                                          {
                                                                                                                                                                                             continue loop35;
                                                                                                                                                                                          }
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             this.mIsFlying = true;
                                                                                                                                                                                             continue loop36;
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr720);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              addr592:
                                                                                                                                                                           }
                                                                                                                                                                           else
                                                                                                                                                                           {
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 if(§§pop())
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc5_)
                                                                                                                                                                                    {
                                                                                                                                                                                       this.§^" § = this.§0"$§.getSubAnimation(this.§^E§);
                                                                                                                                                                                       this.mIsScreaming = true;
                                                                                                                                                                                       §§goto(addr720);
                                                                                                                                                                                       addr543:
                                                                                                                                                                                       addr580:
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 else
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(this.mTryToBlink);
                                                                                                                                                                                    if(_loc4_)
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop81;
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr506);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              addr569:
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr732);
                                                                                                                                                                           addr590:
                                                                                                                                                                        }
                                                                                                                                                                        continue;
                                                                                                                                                                        addr525:
                                                                                                                                                                     }
                                                                                                                                                                     else
                                                                                                                                                                     {
                                                                                                                                                                        addr715:
                                                                                                                                                                     }
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr716);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         this.mIsSpecial = true;
                                                                                                                                                         break loop13;
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr590);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                this.§^" § = this.§0"$§.getSubAnimation(this.§?Y§);
                                                                                                                                                §§goto(addr643);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr687);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr634);
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr626);
                                                                                                   }
                                                                                                   §§goto(addr720);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr664);
                                                                                          }
                                                                                          §§goto(addr586);
                                                                                       }
                                                                                       §§goto(addr636);
                                                                                    }
                                                                                    §§goto(addr652);
                                                                                 }
                                                                                 §§goto(addr213);
                                                                              }
                                                                              §§goto(addr653);
                                                                           }
                                                                           §§goto(addr716);
                                                                        }
                                                                        break;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§0"$§);
                                                                        if(!_loc4_)
                                                                        {
                                                                           §§push(this.§ !_§);
                                                                           if(_loc5_ || _loc1_)
                                                                           {
                                                                              if(_loc5_ || _loc2_)
                                                                              {
                                                                                 §§push(§§pop().getSubAnimation(§§pop()));
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    if(_loc5_)
                                                                                    {
                                                                                       if(_loc5_)
                                                                                       {
                                                                                          §§push(Boolean(§§pop()));
                                                                                          if(_loc5_ || _loc2_)
                                                                                          {
                                                                                             §§goto(addr314);
                                                                                          }
                                                                                          §§goto(addr388);
                                                                                       }
                                                                                       §§goto(addr633);
                                                                                    }
                                                                                    §§goto(addr559);
                                                                                 }
                                                                                 §§goto(addr454);
                                                                              }
                                                                              §§goto(addr556);
                                                                           }
                                                                           §§goto(addr446);
                                                                        }
                                                                        §§goto(addr425);
                                                                     }
                                                                  }
                                                                  break;
                                                               }
                                                               §§goto(addr132);
                                                            }
                                                            else
                                                            {
                                                               §§push(this.mTryToSpecial);
                                                            }
                                                            §§goto(addr715);
                                                         }
                                                         §§goto(addr592);
                                                      }
                                                      §§goto(addr461);
                                                   }
                                                   §§goto(addr632);
                                                }
                                                §§goto(addr630);
                                             }
                                             §§goto(addr341);
                                          }
                                          §§goto(addr696);
                                       }
                                       §§goto(addr114);
                                    }
                                    §§goto(addr529);
                                 }
                                 §§goto(addr213);
                              }
                              §§goto(addr664);
                           }
                           §§goto(addr586);
                        }
                        §§goto(addr204);
                     }
                  }
                  §§goto(addr530);
               }
               §§goto(addr732);
            }
            §§goto(addr691);
         }
         §§goto(addr636);
      }
      
      public function §^!$§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§]2§.visible = false;
         }
      }
      
      public function setDamagedFrame() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.§;`§);
            if(!(_loc3_ && _loc3_))
            {
               if(§§pop() < 0)
               {
                  if(_loc2_ || _loc3_)
                  {
                     this.§5!^§();
                     addr38:
                     §§push(0);
                  }
               }
               §§goto(addr38);
            }
            var _loc1_:* = §§pop();
            if(_loc2_)
            {
               §§push(1);
               loop0:
               while(true)
               {
                  §§push(this.each.§0M§);
                  if(_loc2_ || _loc1_)
                  {
                     §§push(§§pop() / this.each.§]!3§);
                  }
                  §§push(§§pop() - §§pop());
                  if(!_loc3_)
                  {
                     §§push(§§pop() * this.§;`§);
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
                        if(!_loc3_)
                        {
                           if(_loc2_)
                           {
                              if(§§pop() != this.§-!'§)
                              {
                                 loop3:
                                 do
                                 {
                                    if(!(_loc2_ || _loc3_))
                                    {
                                       continue loop2;
                                    }
                                    this.§-!'§ = _loc1_;
                                    while(true)
                                    {
                                       this.§ if§ = this.§-!'§;
                                       while(!(_loc3_ && this))
                                       {
                                          this.§=!2§();
                                          if(_loc2_)
                                          {
                                             continue loop3;
                                          }
                                       }
                                    }
                                 }
                                 while(!_loc2_);
                                 
                                 addr64:
                                 break;
                              }
                              break;
                           }
                           continue loop0;
                        }
                        continue loop1;
                     }
                     return;
                  }
               }
            }
            §§goto(addr64);
         }
         §§goto(addr38);
      }
      
      public function §5!^§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            if(this.§0"$§)
            {
               if(_loc1_ || _loc2_)
               {
                  addr43:
                  this.§;`§ = this.§0"$§.getFrameCount();
               }
            }
            return;
         }
         §§goto(addr43);
      }
      
      public function §[5§(param1:uint = 16777215, param2:int = 4, param3:int = 4) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            this.§2!G§ = new GlowFilter();
            while(true)
            {
               this.§2!G§.blurX = param2;
               loop1:
               while(!_loc4_)
               {
                  this.§2!G§.blurY = param3;
                  while(true)
                  {
                     this.§2!G§.color = param1;
                     if(_loc5_)
                     {
                        if(_loc5_)
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
         §§goto(addr49);
      }
      
      public function §#!&§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§2!G§ = null;
         }
      }
      
      public function §=!v§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:int = Math.min(8,Math.max(this.each.§^!e§(false),1));
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= _loc1_)
            {
               if(_loc4_ && _loc1_)
               {
                  continue;
               }
               if(_loc3_ || _loc3_)
               {
                  break;
               }
            }
            else
            {
               this.§6!Q§(_loc2_);
            }
            _loc2_++;
         }
      }
      
      public function §=7§(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = int(this.§1!S§.length - 1);
         while(true)
         {
            §§push(_loc2_);
            if(_loc3_ || _loc2_)
            {
               if(§§pop() < 0)
               {
                  if(!_loc4_)
                  {
                     if(_loc3_)
                     {
                        break;
                     }
                     if(this.§1!S§[_loc2_].lifeTime < 0)
                     {
                        while(true)
                        {
                           this.§6!Q§(_loc2_);
                           addr83:
                           while(true)
                           {
                           }
                        }
                        addr80:
                     }
                     while(true)
                     {
                        §§push(_loc2_);
                        if(!_loc4_)
                        {
                           addr66:
                           §§push(§§pop() - 1);
                           while(true)
                           {
                              _loc2_ = §§pop();
                           }
                           addr66:
                        }
                        §§goto(addr66);
                     }
                     addr92:
                  }
                  while(true)
                  {
                     if(_loc3_)
                     {
                        if(_loc3_)
                        {
                           break;
                        }
                        §§goto(addr80);
                     }
                     §§goto(addr83);
                     §§goto(addr66);
                  }
                  continue;
               }
               this.§1!S§[_loc2_].updateLifeTime(param1);
               §§goto(addr92);
            }
            §§goto(addr66);
         }
      }
      
      private function §6!Q§(param1:int) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_)
         {
            if(!this.§1"§)
            {
               if(!(_loc7_ && _loc3_))
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
                  _loc2_ = 1;
               }
            }
         }
         var _loc3_:§#`§ = this.§1"§.getFrame(_loc2_);
         §§push(100 + Math.random() * 100);
         if(!(_loc7_ && this))
         {
            §§push(Number(§§pop()));
         }
         var _loc4_:* = §§pop();
         var _loc5_:§"e§ = null;
         if(_loc6_ || this)
         {
            if(param1 < this.§1!S§.length)
            {
               addr77:
               (_loc5_ = this.§1!S§[param1]).§8#§(_loc4_);
               if(_loc6_)
               {
                  _loc5_.§]o§(_loc3_.texture);
                  if(_loc6_)
                  {
                     addr130:
                     §§push(_loc5_.image);
                     if(!_loc7_)
                     {
                        §§push(_loc3_.pivotX);
                        if(!_loc7_)
                        {
                           §§push(-§§pop());
                           if(!(_loc7_ && this))
                           {
                              §§push(this.§?!F§);
                              if(!_loc7_)
                              {
                                 §§push(§§pop().width / 2);
                                 if(_loc6_ || _loc3_)
                                 {
                                    §§push(§§pop() - §§pop());
                                    if(_loc6_ || this)
                                    {
                                       §§push(Math.random() * this.§?!F§.width);
                                       if(_loc6_ || _loc3_)
                                       {
                                          addr181:
                                          §§push(§§pop() + §§pop());
                                          if(_loc6_)
                                          {
                                             §§pop().x = §§pop();
                                             if(!(_loc7_ && _loc3_))
                                             {
                                                addr196:
                                                addr194:
                                                addr192:
                                                §§push(_loc5_.image);
                                                §§push(-_loc3_.pivotY);
                                                if(_loc7_ && _loc2_)
                                                {
                                                }
                                                addr241:
                                                §§pop().y = §§pop() + Math.random() * this.§?!F§.height;
                                                addr242:
                                                return;
                                                addr234:
                                                addr240:
                                             }
                                             §§goto(addr242);
                                          }
                                          §§push(this.§?!F§.height / 2);
                                          if(!(_loc7_ && _loc3_))
                                          {
                                             §§push(§§pop() - §§pop());
                                             if(!(_loc7_ && _loc3_))
                                             {
                                                §§goto(addr234);
                                             }
                                             §§goto(addr241);
                                          }
                                       }
                                       §§goto(addr240);
                                    }
                                    §§goto(addr241);
                                 }
                              }
                              §§goto(addr181);
                           }
                           §§goto(addr241);
                        }
                        §§goto(addr196);
                     }
                     §§goto(addr194);
                  }
                  §§goto(addr196);
               }
               §§goto(addr192);
            }
            else
            {
               _loc5_ = new §"e§(_loc3_.texture,_loc4_);
               if(_loc6_ || _loc3_)
               {
                  this.§1!S§.push(_loc5_);
                  if(!_loc7_)
                  {
                     this.§]2§.addChild(_loc5_.image);
                  }
               }
            }
            §§goto(addr130);
         }
         §§goto(addr77);
      }
      
      public function §-F§() : §"<§
      {
         return this.§?!F§;
      }
   }
}
