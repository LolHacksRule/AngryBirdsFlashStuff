package §%Q§
{
   import §'!9§.§?!U§;
   import §'!9§.Sprite;
   import §,!5§.§@8§;
   import §,!5§.§^g§;
   import §-w§.§+W§;
   import §-w§.§1!;§;
   import §-w§.§^!&§;
   import §<!1§.§2!W§;
   import §>H§.b2Vec2;
   import §^!+§.Texture;
   import flash.filters.GlowFilter;
   
   public class §'!%§
   {
      
      public static const §2<§:Number = 1000;
      
      public static const §?r§:Number = 500;
      
      private static var §!!9§:Array = null;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §2<§ = 1000;
            while(true)
            {
               §?r§ = 500;
               loop1:
               while(!_loc2_)
               {
                  while(true)
                  {
                     §!!9§ = null;
                     if(!(_loc2_ && _loc2_))
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr51);
      }
      
      private var §1!Q§:§`!<§;
      
      public var §%j§:int;
      
      public var mW:Number;
      
      public var mH:Number;
      
      public var §;!0§:Number;
      
      public var §%!v§:Number;
      
      public var §3!Y§:int = -1;
      
      private var §`!4§:String;
      
      private var §8x§:§1!;§;
      
      private var §;!B§:§1!;§;
      
      private var §^!?§:§?!U§;
      
      private var §8l§:Number = 0;
      
      private var §1n§:Number = 0;
      
      public var §4k§:int = -1;
      
      private var §0!h§:int = -1;
      
      private var §`D§:int = 0;
      
      public var mTryToSpecial:Boolean = false;
      
      public var mIsSpecial:Boolean = false;
      
      public var §8!b§:String = "special";
      
      public var mTryToFly:Boolean = false;
      
      public var mIsFlying:Boolean = false;
      
      public var §82§:Boolean = false;
      
      public var mTryToScream:Number = 0;
      
      public var §7!5§:String = "yell";
      
      public var mIsScreaming:Boolean = false;
      
      public var mTryToBlink:Number = 0;
      
      public var §<!<§:String = "blink";
      
      public var mIsBlinking:Boolean = false;
      
      public var §3@§:String = "fly";
      
      public var §;!T§:String = "fly_yell";
      
      public var §3!m§:GlowFilter;
      
      private var §@A§:Vector.<§@8§>;
      
      private var §,!M§:§1!;§;
      
      private var §8X§:Sprite = null;
      
      private var §?l§:§^g§;
      
      public function §'!%§(param1:§`!<§, param2:Sprite, param3:§^g§)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            super();
            while(true)
            {
               this.§?l§ = param3;
            }
            addr91:
         }
         loop1:
         do
         {
            this.§1!Q§ = param1;
            loop2:
            while(true)
            {
               this.§`!4§ = this.§1!Q§.§<!]§;
               loop3:
               while(!_loc4_)
               {
                  this.§@A§ = new Vector.<§@8§>();
                  while(!_loc4_)
                  {
                     this.§8X§ = param2;
                     if(_loc5_)
                     {
                        if(_loc5_)
                        {
                           continue loop1;
                        }
                        continue loop3;
                        continue loop3;
                     }
                  }
                  continue loop2;
               }
               §§goto(addr91);
            }
         }
         while(_loc4_ && param3);
         
      }
      
      public function dispose() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§@8§ = null;
         if(!(_loc3_ && _loc1_))
         {
            this.§6!D§();
            if(!_loc3_)
            {
               if(this.§@A§)
               {
                  addr53:
                  while(this.§@A§.length > 0)
                  {
                     _loc1_ = this.§@A§.pop();
                     if(_loc2_ || this)
                     {
                        _loc1_.dispose();
                     }
                  }
                  if(_loc2_)
                  {
                     this.§@A§ = null;
                  }
               }
               return;
            }
         }
         §§goto(addr53);
      }
      
      public function §=!>§(param1:int, param2:Number, param3:Number, param4:Number) : void
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
               while(true)
               {
                  this.§3!Y§ = param1;
                  continue loop0;
                  addr61:
                  if(_loc6_ || param1)
                  {
                     this.§[O§();
                     addr68:
                     if(_loc6_)
                     {
                        addr44:
                        return;
                        addr44:
                     }
                     while(!(_loc5_ && param2))
                     {
                        §§goto(addr61);
                        §§goto(addr68);
                     }
                     continue loop0;
                  }
               }
            }
         }
         while(true)
         {
            this.§%!v§ = param2;
            §§goto(addr44);
         }
      }
      
      public function §?!T§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            if(!param1)
            {
               loop0:
               while(true)
               {
                  §§push(this);
                  §§push(this.mW);
                  if(_loc2_ || this)
                  {
                     §§push(§§pop() / this.mH);
                  }
                  §§pop().§;!0§ = §§pop();
                  loop1:
                  while(true)
                  {
                     if(this.§;!0§ < 1)
                     {
                        while(true)
                        {
                           if(!_loc2_)
                           {
                              continue loop1;
                           }
                           if(!_loc2_)
                           {
                              break;
                           }
                           this.§;!0§ = 1 / this.§;!0§;
                           while(true)
                           {
                           }
                           addr38:
                           if(_loc2_)
                           {
                              if(_loc2_)
                              {
                                 return;
                              }
                              if(!_loc2_)
                              {
                                 this.§;!0§ = 1;
                                 break;
                              }
                              addr102:
                              continue loop0;
                           }
                        }
                        return;
                     }
                     while(true)
                     {
                        this.§;!0§ = Math.min(11,this.§;!0§);
                        if(!_loc2_)
                        {
                           continue;
                        }
                        §§goto(addr38);
                     }
                  }
               }
            }
         }
         §§goto(addr102);
      }
      
      public function §%!]§(param1:§^!&§) : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§+W§ = null;
         var _loc3_:Texture = null;
         if(_loc5_)
         {
            §§push(this.§1!Q§.isGround());
            if(!(_loc6_ && this))
            {
               if(!§§pop())
               {
                  loop0:
                  while(true)
                  {
                     this.§,!M§ = param1.getAnimation("SPARKLES");
                     while(true)
                     {
                        loop2:
                        while(true)
                        {
                           this.§8x§ = param1.getAnimation(this.§`!4§);
                           while(!(_loc6_ && _loc2_))
                           {
                              this.§;!B§ = this.§8x§;
                              if(!(_loc5_ || this))
                              {
                                 continue;
                              }
                              if(_loc6_ && _loc2_)
                              {
                                 break loop2;
                              }
                              if(!(_loc6_ && _loc3_))
                              {
                                 while(false)
                                 {
                                    continue loop2;
                                 }
                                 var _loc4_:* = Number(1);
                                 if(_loc5_)
                                 {
                                    §§push(this.§;!B§);
                                    if(!_loc6_)
                                    {
                                       if(§§pop())
                                       {
                                          addr101:
                                          _loc2_ = this.§;!B§.getFrame(0);
                                          addr99:
                                          if(!(_loc6_ && _loc2_))
                                          {
                                             §§push(_loc2_.scale);
                                             if(_loc5_ || _loc3_)
                                             {
                                                §§push(Number(§§pop()));
                                             }
                                             _loc4_ = §§pop();
                                          }
                                          _loc3_ = _loc2_.texture;
                                          if(!_loc6_)
                                          {
                                             addr136:
                                             this.§^!?§ = new §?!U§(_loc3_);
                                             if(_loc5_ || this)
                                             {
                                                if(_loc2_)
                                                {
                                                   if(!(_loc6_ && this))
                                                   {
                                                      §§push(this.§^!?§);
                                                      while(true)
                                                      {
                                                         §§push(_loc2_.pivotX);
                                                         addr372:
                                                         while(true)
                                                         {
                                                            §§push(-§§pop());
                                                            addr373:
                                                            while(true)
                                                            {
                                                               §§pop().x = §§pop();
                                                            }
                                                         }
                                                      }
                                                      addr370:
                                                   }
                                                   loop8:
                                                   while(true)
                                                   {
                                                      §§push(this.§^!?§);
                                                      addr352:
                                                      loop9:
                                                      while(true)
                                                      {
                                                         §§push(_loc2_.pivotY);
                                                         if(_loc5_)
                                                         {
                                                            §§push(-§§pop());
                                                            loop10:
                                                            while(true)
                                                            {
                                                               §§pop().y = §§pop();
                                                               while(true)
                                                               {
                                                                  loop12:
                                                                  do
                                                                  {
                                                                     §§push(this.§^!?§);
                                                                     loop13:
                                                                     while(!(_loc6_ && this))
                                                                     {
                                                                        if(!_loc6_)
                                                                        {
                                                                           §§push(_loc4_);
                                                                           loop14:
                                                                           while(_loc5_ || _loc3_)
                                                                           {
                                                                              §§pop().scaleX = §§pop();
                                                                              loop15:
                                                                              while(!(_loc6_ && _loc2_))
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(this.§^!?§);
                                                                                    if(!_loc5_)
                                                                                    {
                                                                                       continue loop13;
                                                                                    }
                                                                                    §§push(_loc4_);
                                                                                    if(_loc6_)
                                                                                    {
                                                                                       continue loop14;
                                                                                    }
                                                                                    if(!_loc6_)
                                                                                    {
                                                                                       §§pop().scaleY = §§pop();
                                                                                       loop16:
                                                                                       while(true)
                                                                                       {
                                                                                          this.mW = this.§^!?§.width / 2;
                                                                                          while(!_loc6_)
                                                                                          {
                                                                                             if(!(_loc6_ && this))
                                                                                             {
                                                                                                if(_loc5_ || _loc2_)
                                                                                                {
                                                                                                   this.mH = this.§^!?§.height / 2;
                                                                                                   loop18:
                                                                                                   while(_loc5_)
                                                                                                   {
                                                                                                      continue loop16;
                                                                                                      while(true)
                                                                                                      {
                                                                                                         this.§8X§.addChild(this.§^!?§);
                                                                                                         if(!(_loc6_ && param1))
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         continue loop18;
                                                                                                      }
                                                                                                      return true;
                                                                                                   }
                                                                                                   continue;
                                                                                                }
                                                                                                continue loop8;
                                                                                             }
                                                                                             continue loop12;
                                                                                          }
                                                                                          continue loop15;
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          §§pop().x = §§pop();
                                                                                          break loop15;
                                                                                       }
                                                                                       addr347:
                                                                                    }
                                                                                 }
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§push(this.§^!?§);
                                                                                 break loop13;
                                                                              }
                                                                           }
                                                                           addr310:
                                                                           §§pop().y = §§pop();
                                                                           continue loop12;
                                                                        }
                                                                        §§goto(addr370);
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        if(!(_loc5_ || _loc3_))
                                                                        {
                                                                           continue loop9;
                                                                        }
                                                                        §§push(this.§^!?§);
                                                                        if(!(_loc6_ && this))
                                                                        {
                                                                           §§push(-§§pop().height);
                                                                           if(_loc5_ || param1)
                                                                           {
                                                                              if(_loc5_ || this)
                                                                              {
                                                                                 if(!_loc5_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    §§push(2);
                                                                                    if(!(_loc6_ && param1))
                                                                                    {
                                                                                       §§goto(addr310);
                                                                                       §§push(§§pop() / §§pop());
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr373);
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(2);
                                                                                 }
                                                                                 addr345:
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§goto(addr347);
                                                                              }
                                                                           }
                                                                           §§goto(addr310);
                                                                        }
                                                                        else
                                                                        {
                                                                           while(true)
                                                                           {
                                                                           }
                                                                           addr333:
                                                                        }
                                                                        §§goto(addr345);
                                                                        §§goto(addr348);
                                                                     }
                                                                     continue loop10;
                                                                  }
                                                                  while(_loc5_ || _loc3_);
                                                                  
                                                               }
                                                            }
                                                         }
                                                         break;
                                                      }
                                                      §§goto(addr372);
                                                   }
                                                }
                                                else
                                                {
                                                   §§push(this.§^!?§);
                                                }
                                                while(true)
                                                {
                                                   if(!(_loc6_ && _loc2_))
                                                   {
                                                      §§goto(addr333);
                                                      §§push(this.§^!?§);
                                                   }
                                                   §§goto(addr352);
                                                }
                                             }
                                             §§goto(addr195);
                                          }
                                          §§goto(addr261);
                                       }
                                       else
                                       {
                                          _loc3_ = this.§?l§.textureManager.§0y§();
                                       }
                                       §§goto(addr136);
                                    }
                                    §§goto(addr101);
                                 }
                                 §§goto(addr99);
                                 addr51:
                              }
                           }
                           continue loop0;
                        }
                     }
                  }
               }
               return false;
            }
         }
         §§goto(addr51);
      }
      
      public function §9x§(param1:§2!W§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:Array = null;
         var _loc3_:b2Vec2 = null;
         §§push(param1.§6r§);
         if(_loc5_)
         {
            var _loc4_:* = §§pop();
            if(!_loc6_)
            {
               §§push(§2!W§.§=!i§);
               if(_loc5_ || _loc2_)
               {
                  §§push(_loc4_);
                  if(_loc5_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc5_ || _loc2_)
                        {
                           addr104:
                           §§push(0);
                           if(!(_loc6_ && _loc3_))
                           {
                              addr143:
                              switch(§§pop())
                              {
                                 case 0:
                                    _loc2_ = param1.§!M§();
                                    _loc3_ = _loc2_[0];
                                    if(_loc5_)
                                    {
                                       §§push(this);
                                       §§push(_loc3_.x);
                                       if(!_loc6_)
                                       {
                                          §§push(§§pop() / §^g§.§^!S§);
                                       }
                                       §§pop().§8l§ = §§pop();
                                       if(!(_loc6_ && _loc3_))
                                       {
                                          §§push(this);
                                          §§push(_loc3_.y);
                                          if(_loc5_)
                                          {
                                             §§push(§§pop() / §^g§.§^!S§);
                                          }
                                          §§pop().§1n§ = §§pop();
                                          if(!_loc5_)
                                          {
                                          }
                                          break;
                                       }
                                       addr144:
                                       this.§true §();
                                       break;
                                    }
                                    break;
                                 case 1:
                                    §§goto(addr144);
                                 default:
                                    §§goto(addr144);
                              }
                              return;
                              addr142:
                           }
                           else
                           {
                              addr137:
                              §§goto(addr142);
                           }
                        }
                        else
                        {
                           addr134:
                           §§push(1);
                           if(_loc5_)
                           {
                              §§goto(addr137);
                           }
                        }
                     }
                     else
                     {
                        §§push(§2!W§.§"d§);
                        if(!(_loc6_ && _loc3_))
                        {
                           §§push(_loc4_);
                        }
                     }
                     §§goto(addr142);
                  }
                  if(§§pop() === §§pop())
                  {
                     §§goto(addr134);
                  }
                  else
                  {
                     §§push(2);
                  }
               }
               §§goto(addr142);
            }
            §§goto(addr104);
         }
         §§goto(addr143);
      }
      
      public function §-C§() : Array
      {
         return §4!%§.§-C§(null,this.§1!Q§.§=]§());
      }
      
      public function §2!T§() : Array
      {
         return §4!%§.§2!T§(null,this.§1!Q§.§=]§());
      }
      
      public function §,!n§() : Array
      {
         return §4!%§.§,!n§(null);
      }
      
      public function §[O§() : void
      {
      }
      
      public function §<!K§(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.§8X§.scaleX = this.§8X§.scaleY = param1;
         }
      }
      
      public function §true §() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§+W§ = null;
         if(_loc4_)
         {
            §§push(this.§8x§);
            if(_loc4_)
            {
               if(§§pop())
               {
                  §§push(this.§82§);
                  if(_loc4_)
                  {
                     if(§§pop())
                     {
                        if(_loc4_)
                        {
                           this.§`D§ = 1;
                           if(!(_loc4_ || _loc1_))
                           {
                              addr681:
                           }
                        }
                        else
                        {
                           addr540:
                           this.§;!B§ = this.§8x§.getSubAnimation(this.§7!5§);
                           this.mIsScreaming = true;
                           addr512:
                           addr547:
                        }
                        addr709:
                        §§push(this.§;!B§);
                        if(_loc4_)
                        {
                           if(§§pop())
                           {
                              addr716:
                              _loc1_ = this.§;!B§.getFrame(this.§`D§);
                              if(!(_loc5_ && _loc2_))
                              {
                                 §§push(this.§^!?§);
                                 loop44:
                                 while(true)
                                 {
                                    §§push(Boolean(§§pop()));
                                    if(!_loc5_)
                                    {
                                       if(§§pop())
                                       {
                                          while(true)
                                          {
                                             §§pop();
                                             addr883:
                                             loop62:
                                             while(true)
                                             {
                                                §§push(Boolean(_loc1_));
                                                if(_loc5_ && this)
                                                {
                                                   continue;
                                                }
                                                while(true)
                                                {
                                                   if(§§pop())
                                                   {
                                                      loop46:
                                                      while(true)
                                                      {
                                                         §§push(this.§^!?§);
                                                         loop47:
                                                         while(true)
                                                         {
                                                            §§pop().texture = _loc1_.texture;
                                                            loop48:
                                                            while(true)
                                                            {
                                                               §§push(this.§^!?§);
                                                               loop49:
                                                               for(; _loc4_ || _loc1_; if(!(_loc4_ || _loc3_))
                                                               {
                                                                  continue;
                                                               },§§goto(addr748))
                                                               {
                                                                  §§push(_loc1_.pivotX);
                                                                  loop50:
                                                                  while(true)
                                                                  {
                                                                     §§push(-§§pop());
                                                                     if(!_loc5_)
                                                                     {
                                                                        §§push(this.§8l§);
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() - §§pop());
                                                                        }
                                                                        addr854:
                                                                     }
                                                                     loop52:
                                                                     while(true)
                                                                     {
                                                                        §§pop().x = §§pop();
                                                                        loop53:
                                                                        while(true)
                                                                        {
                                                                           §§push(this.§^!?§);
                                                                           loop54:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc1_.pivotY);
                                                                              if(!_loc4_)
                                                                              {
                                                                                 continue loop50;
                                                                              }
                                                                              §§push(-§§pop());
                                                                              if(!_loc5_)
                                                                              {
                                                                                 if(_loc5_ && _loc2_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 §§push(this.§1n§);
                                                                                 if(_loc4_)
                                                                                 {
                                                                                    §§push(§§pop() - §§pop());
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr854);
                                                                                 }
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§pop().y = §§pop();
                                                                                 addr822:
                                                                                 while(true)
                                                                                 {
                                                                                    if(!_loc5_)
                                                                                    {
                                                                                       if(!_loc5_)
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(this.§^!?§);
                                                                                             continue loop44;
                                                                                          }
                                                                                          continue loop48;
                                                                                          addr776:
                                                                                       }
                                                                                       continue loop62;
                                                                                    }
                                                                                    continue loop53;
                                                                                 }
                                                                                 addr788:
                                                                                 continue loop62;
                                                                                 while(_loc4_ || _loc2_)
                                                                                 {
                                                                                    §§pop().scaleX = §§pop();
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc4_)
                                                                                       {
                                                                                          §§push(this.§^!?§);
                                                                                          if(_loc4_)
                                                                                          {
                                                                                             continue loop54;
                                                                                          }
                                                                                          continue loop44;
                                                                                       }
                                                                                       §§goto(addr822);
                                                                                       addr757:
                                                                                       §§pop().scaleY = §§pop();
                                                                                       if(_loc5_ && _loc3_)
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                       if(!(_loc4_ || this))
                                                                                       {
                                                                                          continue loop48;
                                                                                       }
                                                                                       if(_loc5_)
                                                                                       {
                                                                                          continue loop46;
                                                                                       }
                                                                                       if(true)
                                                                                       {
                                                                                          §§goto(addr884);
                                                                                       }
                                                                                       §§goto(addr776);
                                                                                    }
                                                                                    §§push(_loc1_.scale);
                                                                                    continue loop49;
                                                                                    if(_loc5_ && _loc1_)
                                                                                    {
                                                                                       continue;
                                                                                    }
                                                                                    §§goto(addr757);
                                                                                 }
                                                                              }
                                                                           }
                                                                           continue loop52;
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               continue loop47;
                                                            }
                                                         }
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr884);
                                                   }
                                                   continue loop62;
                                                }
                                             }
                                          }
                                          addr882:
                                       }
                                       §§goto(addr867);
                                    }
                                    §§goto(addr882);
                                 }
                              }
                              §§goto(addr883);
                           }
                           addr884:
                           return;
                        }
                        §§goto(addr716);
                     }
                     else
                     {
                        §§push(this.§1!Q§);
                        if(!_loc5_)
                        {
                           §§push(§§pop().getSpecialAnimationProgress());
                           if(_loc4_ || _loc2_)
                           {
                              §§push(0);
                              if(_loc4_)
                              {
                                 §§push(§§pop() >= §§pop());
                                 if(_loc4_)
                                 {
                                    §§push(§§pop());
                                    if(_loc4_ || this)
                                    {
                                       if(§§pop())
                                       {
                                          if(_loc4_ || this)
                                          {
                                             §§pop();
                                             if(!(_loc5_ && _loc3_))
                                             {
                                                if(!(_loc5_ && this))
                                                {
                                                   §§push(this.§8x§);
                                                   if(!_loc5_)
                                                   {
                                                      §§push(this.§8!b§);
                                                      if(_loc4_)
                                                      {
                                                         §§push(§§pop().getSubAnimation(§§pop()));
                                                         if(!(_loc5_ && _loc3_))
                                                         {
                                                            §§push(Boolean(§§pop()));
                                                            if(_loc4_ || _loc2_)
                                                            {
                                                               addr93:
                                                               if(§§pop())
                                                               {
                                                                  if(!(_loc5_ && _loc1_))
                                                                  {
                                                                     this.§;!B§ = this.§8x§.getSubAnimation(this.§8!b§);
                                                                     addr109:
                                                                     loop76:
                                                                     while(true)
                                                                     {
                                                                        loop77:
                                                                        while(true)
                                                                        {
                                                                           this.§`D§ = this.§;!B§.getFrameCount() * this.§1!Q§.getSpecialAnimationProgress();
                                                                           if(_loc4_)
                                                                           {
                                                                              if(!_loc4_)
                                                                              {
                                                                                 continue loop76;
                                                                              }
                                                                              §§push(this.§`D§ == this.§;!B§.getFrameCount() - 1);
                                                                              if(_loc4_)
                                                                              {
                                                                                 §§push(§§pop());
                                                                                 if(_loc4_ || _loc3_)
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       if(!(_loc5_ && _loc3_))
                                                                                       {
                                                                                          §§pop();
                                                                                          if(!_loc5_)
                                                                                          {
                                                                                             if(false)
                                                                                             {
                                                                                                continue;
                                                                                             }
                                                                                             addr198:
                                                                                             §§push(this.§1!Q§.getSpecialAnimationTimeLeft());
                                                                                             if(!_loc5_)
                                                                                             {
                                                                                                §§push(100);
                                                                                                if(_loc4_ || _loc1_)
                                                                                                {
                                                                                                   §§push(§§pop() > §§pop());
                                                                                                   if(!_loc5_)
                                                                                                   {
                                                                                                      addr212:
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         if(!_loc5_)
                                                                                                         {
                                                                                                            var _loc2_:*;
                                                                                                            §§push((_loc2_ = this).§`D§);
                                                                                                            if(!(_loc5_ && _loc1_))
                                                                                                            {
                                                                                                               §§push(§§pop() - 1);
                                                                                                            }
                                                                                                            var _loc3_:* = §§pop();
                                                                                                            if(_loc4_)
                                                                                                            {
                                                                                                               _loc2_.§`D§ = _loc3_;
                                                                                                            }
                                                                                                            if(!_loc5_)
                                                                                                            {
                                                                                                               addr701:
                                                                                                               §§goto(addr709);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               loop11:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(this.mTryToFly);
                                                                                                                  loop40:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(!_loc5_)
                                                                                                                     {
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop() > 0);
                                                                                                                           loop12:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              addr644:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§pop());
                                                                                                                                 addr645:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(_loc4_ || _loc3_)
                                                                                                                                    {
                                                                                                                                       if(§§pop())
                                                                                                                                       {
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(_loc4_)
                                                                                                                                             {
                                                                                                                                                if(!_loc5_)
                                                                                                                                                {
                                                                                                                                                   §§pop();
                                                                                                                                                   break loop77;
                                                                                                                                                }
                                                                                                                                                addr704:
                                                                                                                                                addr704:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(Boolean(§§pop()));
                                                                                                                                                   addr705:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop());
                                                                                                                                                      addr706:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(§§pop())
                                                                                                                                                         {
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§pop();
                                                                                                                                                               addr708:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(this.§8x§);
                                                                                                                                                                  addr685:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(this.§8!b§);
                                                                                                                                                                     addr687:
                                                                                                                                                                     loop15:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop().getSubAnimation(§§pop()));
                                                                                                                                                                        addr688:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(Boolean(§§pop()));
                                                                                                                                                                           continue loop15;
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            addr707:
                                                                                                                                                         }
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             while(!§§pop())
                                                                                                                                             {
                                                                                                                                                §§push(this.mTryToScream);
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(0);
                                                                                                                                                   addr665:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() > §§pop());
                                                                                                                                                      addr666:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(!(_loc5_ && _loc1_))
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop());
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(§§pop())
                                                                                                                                                               {
                                                                                                                                                                  continue loop11;
                                                                                                                                                               }
                                                                                                                                                               continue loop12;
                                                                                                                                                            }
                                                                                                                                                            addr674:
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr705);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             addr691:
                                                                                                                                             this.§;!B§ = this.§8x§.getSubAnimation(this.§8!b§);
                                                                                                                                             if(_loc4_)
                                                                                                                                             {
                                                                                                                                                this.mIsSpecial = true;
                                                                                                                                                §§goto(addr681);
                                                                                                                                             }
                                                                                                                                             §§goto(addr716);
                                                                                                                                          }
                                                                                                                                          addr653:
                                                                                                                                       }
                                                                                                                                       break loop12;
                                                                                                                                    }
                                                                                                                                    §§goto(addr674);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           loop25:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              loop8:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(!§§pop())
                                                                                                                                 {
                                                                                                                                    §§push(this.mTryToScream);
                                                                                                                                    loop9:
                                                                                                                                    while(!_loc5_)
                                                                                                                                    {
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(0);
                                                                                                                                          loop35:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(!_loc5_)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() > §§pop());
                                                                                                                                                if(!(_loc5_ && _loc1_))
                                                                                                                                                {
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop());
                                                                                                                                                      loop31:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(_loc4_)
                                                                                                                                                         {
                                                                                                                                                            addr569:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(§§pop())
                                                                                                                                                               {
                                                                                                                                                                  loop38:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§pop();
                                                                                                                                                                     loop39:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(this.§8x§);
                                                                                                                                                                        loop42:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc4_)
                                                                                                                                                                           {
                                                                                                                                                                              if(!(_loc5_ && _loc2_))
                                                                                                                                                                              {
                                                                                                                                                                                 addr525:
                                                                                                                                                                                 §§push(this.§7!5§);
                                                                                                                                                                                 loop26:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop().getSubAnimation(§§pop()));
                                                                                                                                                                                    loop74:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc4_ || this)
                                                                                                                                                                                       {
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(Boolean(§§pop()));
                                                                                                                                                                                             loop33:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc4_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!§§pop())
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(this.mTryToBlink);
                                                                                                                                                                                                         if(_loc5_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            continue loop9;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§push(0);
                                                                                                                                                                                                         if(!(_loc4_ || this))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            continue loop35;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§push(§§pop() > §§pop());
                                                                                                                                                                                                         while(_loc5_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§goto(addr666);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         loop0:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(§§pop());
                                                                                                                                                                                                            while(!_loc5_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(§§pop())
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  loop2:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§pop();
                                                                                                                                                                                                                     if(_loc5_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        break;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     if(_loc4_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(this.§8x§);
                                                                                                                                                                                                                        loop3:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(!(_loc5_ && this))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(this.§<!<§);
                                                                                                                                                                                                                              loop4:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(_loc5_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    continue loop26;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(§§pop().getSubAnimation(§§pop()));
                                                                                                                                                                                                                                    addr462:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                       continue loop2;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 addr284:
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(this.§3@§);
                                                                                                                                                                                                                                    if(!(_loc4_ || this))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       continue loop4;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    if(!(_loc5_ && this))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(§§pop().getSubAnimation(§§pop()));
                                                                                                                                                                                                                                       if(_loc4_ || _loc2_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(_loc5_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             continue loop74;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                          if(_loc5_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             addr398:
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(_loc5_ && this)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   continue loop33;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                if(!(_loc5_ && _loc2_))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(!_loc5_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§pop();
                                                                                                                                                                                                                                                      if(_loc4_ || _loc1_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(_loc4_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(_loc5_ && _loc3_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               break loop77;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            continue loop3;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         loop21:
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(_loc4_ || _loc3_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(_loc4_ || this)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  this.mIsFlying = true;
                                                                                                                                                                                                                                                                  §§goto(addr576);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               else
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§goto(addr708);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            else
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  this.§;!B§ = this.§8x§.getSubAnimation(this.§;!T§);
                                                                                                                                                                                                                                                                  if(_loc5_ && _loc2_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     break loop2;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     this.mIsScreaming = true;
                                                                                                                                                                                                                                                                     continue loop21;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               addr621:
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      break loop2;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   continue loop40;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr653);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             continue loop33;
                                                                                                                                                                                                                                             addr398:
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(§§pop())
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(!_loc5_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(!_loc5_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      this.§;!B§ = this.§8x§.getSubAnimation(this.§3@§);
                                                                                                                                                                                                                                                      if(!(_loc5_ && _loc2_))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(!(_loc5_ && _loc1_))
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(!(_loc5_ && _loc3_))
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(_loc4_ || _loc3_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(!_loc5_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     addr272:
                                                                                                                                                                                                                                                                     this.mIsFlying = true;
                                                                                                                                                                                                                                                                     break loop0;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr691);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               else
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§goto(addr540);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr512);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         else
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            addr472:
                                                                                                                                                                                                                                                            this.§;!B§ = this.§8x§.getSubAnimation(this.§<!<§);
                                                                                                                                                                                                                                                            this.mIsBlinking = true;
                                                                                                                                                                                                                                                            addr446:
                                                                                                                                                                                                                                                            addr479:
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      break loop2;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   addr576:
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(!(_loc4_ || this))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         continue loop11;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr709);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                break loop2;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             this.§;!B§ = this.§8x§;
                                                                                                                                                                                                                                             if(!_loc5_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(!(_loc5_ && _loc2_))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(_loc4_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(!(_loc5_ && _loc2_))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(_loc4_ || _loc3_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(false)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§goto(addr272);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         else
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§goto(addr681);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§goto(addr547);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr709);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr446);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                break loop0;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             break loop2;
                                                                                                                                                                                                                                             §§goto(addr446);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr691);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§goto(addr462);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(!_loc5_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(§§pop().getSubAnimation(§§pop()));
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(!(_loc5_ && this))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                continue loop25;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr688);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          addr611:
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr687);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              continue loop26;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           continue loop42;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        continue loop42;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     continue loop39;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr716);
                                                                                                                                                                                                                  addr502:
                                                                                                                                                                                                               }
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!§§pop())
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(this.mTryToFly);
                                                                                                                                                                                                                     if(!(_loc5_ && _loc3_))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc5_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           continue loop38;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        if(!_loc4_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           continue loop11;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§push(Boolean(§§pop()));
                                                                                                                                                                                                                        if(!_loc5_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(_loc5_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              continue;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           if(!(_loc5_ && this))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(_loc5_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 continue loop8;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§push(§§pop());
                                                                                                                                                                                                                              if(!(_loc4_ || _loc1_))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 break;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              if(!_loc4_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 continue loop31;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              if(§§pop())
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§goto(addr398);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr313);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           else
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§goto(addr496);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr398);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr472);
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr645);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr496:
                                                                                                                                                                                                         if(_loc5_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§goto(addr479);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr709);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr540);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr538:
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr644);
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          addr535:
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr611);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr685);
                                                                                                                                                                           }
                                                                                                                                                                           addr606:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr608);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  addr570:
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr538);
                                                                                                                                                            }
                                                                                                                                                            addr569:
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr706);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   addr566:
                                                                                                                                                }
                                                                                                                                                §§goto(addr570);
                                                                                                                                             }
                                                                                                                                             §§goto(addr665);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr664);
                                                                                                                                 }
                                                                                                                                 §§goto(addr621);
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        addr641:
                                                                                                                     }
                                                                                                                     §§goto(addr707);
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr716);
                                                                                                         }
                                                                                                         §§goto(addr708);
                                                                                                      }
                                                                                                      §§goto(addr701);
                                                                                                   }
                                                                                                   §§goto(addr502);
                                                                                                }
                                                                                                §§goto(addr665);
                                                                                             }
                                                                                             §§goto(addr664);
                                                                                          }
                                                                                          §§goto(addr635);
                                                                                       }
                                                                                       §§goto(addr641);
                                                                                    }
                                                                                    §§goto(addr212);
                                                                                 }
                                                                                 §§goto(addr569);
                                                                              }
                                                                              §§goto(addr704);
                                                                           }
                                                                           break;
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§goto(addr606);
                                                                        }
                                                                     }
                                                                     addr109:
                                                                  }
                                                                  §§goto(addr109);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr704);
                                                                  §§push(this.mTryToSpecial);
                                                               }
                                                               §§goto(addr704);
                                                            }
                                                            §§goto(addr498);
                                                         }
                                                         §§goto(addr535);
                                                      }
                                                      §§goto(addr461);
                                                   }
                                                   §§goto(addr685);
                                                }
                                                else
                                                {
                                                   §§goto(addr187);
                                                }
                                             }
                                             §§goto(addr472);
                                          }
                                          §§goto(addr566);
                                       }
                                       §§goto(addr93);
                                    }
                                    §§goto(addr569);
                                 }
                                 §§goto(addr212);
                              }
                              §§goto(addr665);
                           }
                           §§goto(addr555);
                        }
                        §§goto(addr198);
                     }
                  }
                  §§goto(addr704);
               }
               addr187:
               return;
            }
            §§goto(addr284);
         }
         §§goto(addr109);
      }
      
      public function §0!V§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            this.§8X§.visible = false;
         }
      }
      
      public function setDamagedFrame() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc1_))
         {
            §§push(this.§4k§);
            if(!_loc3_)
            {
               if(§§pop() < 0)
               {
                  if(_loc2_)
                  {
                     addr31:
                     this.§ !N§();
                  }
               }
               §§push(0);
            }
            var _loc1_:* = §§pop();
            if(_loc2_)
            {
               §§push(1);
               loop0:
               while(true)
               {
                  §§push(this.§1!Q§.§%!R§);
                  if(!_loc3_)
                  {
                     §§push(§§pop() / this.§1!Q§.§-!!§);
                  }
                  §§push(§§pop() - §§pop());
                  if(!(_loc3_ && _loc2_))
                  {
                     §§push(§§pop() * this.§4k§);
                  }
                  §§push(int(§§pop()));
                  while(true)
                  {
                     _loc1_ = §§pop();
                     loop2:
                     while(true)
                     {
                        §§push(_loc1_);
                        if(!_loc2_)
                        {
                           break;
                        }
                        if(!_loc3_)
                        {
                           if(§§pop() != this.§0!h§)
                           {
                              while(true)
                              {
                                 this.§0!h§ = _loc1_;
                                 addr102:
                                 while(true)
                                 {
                                    this.§`D§ = this.§0!h§;
                                    while(true)
                                    {
                                       if(_loc2_ || _loc2_)
                                       {
                                          continue;
                                       }
                                       continue loop2;
                                    }
                                 }
                              }
                           }
                           return;
                        }
                        continue loop0;
                     }
                  }
               }
            }
            §§goto(addr102);
         }
         §§goto(addr31);
      }
      
      public function § !N§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(this.§8x§)
            {
               if(!_loc2_)
               {
                  this.§4k§ = this.§8x§.getFrameCount();
               }
            }
         }
      }
      
      public function §?1§(param1:uint = 16777215, param2:int = 4, param3:int = 4) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            this.§3!m§ = new GlowFilter();
            while(true)
            {
               this.§3!m§.blurX = param2;
               while(true)
               {
                  this.§3!m§.blurY = param3;
                  §§goto(addr76);
               }
            }
         }
         addr76:
         while(true)
         {
            this.§3!m§.color = param1;
            if(!(_loc4_ && param1))
            {
               if(!(_loc4_ && this))
               {
                  continue loop0;
               }
               continue loop1;
            }
         }
         addr70:
      }
      
      public function §6!D§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            this.§3!m§ = null;
         }
      }
      
      public function §]w§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:int = Math.min(8,Math.max(this.§1!Q§.§#!g§(false),1));
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= _loc1_)
            {
               if(_loc3_)
               {
                  continue;
               }
               if(_loc4_)
               {
                  break;
               }
            }
            else
            {
               this.§!!S§(_loc2_);
            }
            _loc2_++;
         }
      }
      
      public function §+!B§(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = int(this.§@A§.length - 1);
         loop0:
         while(true)
         {
            §§push(_loc2_);
            if(_loc3_ || param1)
            {
               if(§§pop() < 0)
               {
                  if(!_loc4_)
                  {
                     if(_loc3_ || this)
                     {
                        if(_loc3_)
                        {
                           break;
                        }
                        loop1:
                        while(true)
                        {
                           this.§!!S§(_loc2_);
                           addr97:
                           loop5:
                           while(true)
                           {
                              if(this.§@A§[_loc2_].lifeTime < 0)
                              {
                                 continue loop1;
                              }
                              addr68:
                              while(true)
                              {
                                 §§push(_loc2_);
                                 if(!_loc4_)
                                 {
                                    §§push(§§pop() - 1);
                                 }
                                 addr73:
                                 while(true)
                                 {
                                    _loc2_ = §§pop();
                                    addr74:
                                    while(!_loc3_)
                                    {
                                       continue loop5;
                                    }
                                    continue loop0;
                                 }
                                 continue loop5;
                              }
                           }
                        }
                        addr85:
                     }
                     while(true)
                     {
                        §§goto(addr68);
                        §§goto(addr85);
                     }
                  }
                  §§goto(addr74);
               }
               else
               {
                  this.§@A§[_loc2_].updateLifeTime(param1);
               }
               §§goto(addr97);
            }
            §§goto(addr73);
         }
      }
      
      private function §!!S§(param1:int) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_)
         {
            if(!this.§,!M§)
            {
               if(!(_loc6_ && _loc2_))
               {
                  return;
               }
            }
         }
         var _loc2_:int = 0;
         if(_loc7_)
         {
            if(Math.random() < 0.5)
            {
               if(_loc7_)
               {
                  _loc2_ = 1;
               }
            }
         }
         var _loc3_:§+W§ = this.§,!M§.getFrame(_loc2_);
         §§push(100 + Math.random() * 100);
         if(_loc7_)
         {
            §§push(Number(§§pop()));
         }
         var _loc4_:* = §§pop();
         var _loc5_:§@8§ = null;
         if(!(_loc6_ && param1))
         {
            if(param1 < this.§@A§.length)
            {
               addr73:
               (_loc5_ = this.§@A§[param1]).§8N§(_loc4_);
               if(!(_loc6_ && _loc2_))
               {
                  _loc5_.§ !]§(_loc3_.texture);
                  if(!_loc6_)
                  {
                     addr131:
                     §§push(_loc5_.image);
                     if(!_loc6_)
                     {
                        §§push(_loc3_.pivotX);
                        if(!_loc6_)
                        {
                           §§push(-§§pop());
                           if(!(_loc6_ && _loc2_))
                           {
                              §§push(this.§^!?§);
                              if(!(_loc6_ && param1))
                              {
                                 §§push(§§pop().width / 2);
                                 if(_loc7_)
                                 {
                                    §§push(§§pop() - §§pop());
                                    if(!_loc6_)
                                    {
                                       addr164:
                                       §§push(Math.random() * this.§^!?§.width);
                                       if(!(_loc6_ && _loc2_))
                                       {
                                          §§push(§§pop() + §§pop());
                                          if(!(_loc6_ && param1))
                                          {
                                             §§pop().x = §§pop();
                                             if(_loc7_ || param1)
                                             {
                                                addr207:
                                                addr205:
                                                addr193:
                                                §§push(_loc5_.image);
                                                §§push(-_loc3_.pivotY);
                                                if(_loc6_)
                                                {
                                                }
                                                addr232:
                                                §§pop().y = §§pop();
                                                §§goto(addr233);
                                             }
                                             addr233:
                                             return;
                                          }
                                          addr212:
                                          §§push(this.§^!?§.height / 2);
                                          if(_loc7_ || _loc3_)
                                          {
                                             addr222:
                                             §§push(§§pop() - §§pop());
                                             if(!_loc6_)
                                             {
                                                §§push(Math.random() * this.§^!?§.height);
                                             }
                                             §§goto(addr232);
                                          }
                                          §§push(§§pop() + §§pop());
                                       }
                                       §§goto(addr222);
                                    }
                                    §§goto(addr232);
                                 }
                                 §§goto(addr222);
                              }
                              §§goto(addr212);
                           }
                           §§goto(addr164);
                        }
                        §§goto(addr207);
                     }
                     §§goto(addr205);
                  }
                  §§goto(addr193);
               }
               §§goto(addr207);
            }
            else
            {
               _loc5_ = new §@8§(_loc3_.texture,_loc4_);
               if(_loc7_ || _loc2_)
               {
                  this.§@A§.push(_loc5_);
                  if(!_loc7_)
                  {
                  }
                  §§goto(addr131);
               }
               this.§8X§.addChild(_loc5_.image);
            }
            §§goto(addr131);
         }
         §§goto(addr73);
      }
      
      public function §1!k§() : §?!U§
      {
         return this.§^!?§;
      }
   }
}
