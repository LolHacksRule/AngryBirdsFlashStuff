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
         if(!_loc2_)
         {
            §2<§ = 1000;
            while(true)
            {
               §?r§ = 500;
               while(!_loc2_)
               {
                  §!!9§ = null;
                  if(_loc1_)
                  {
                     return;
                     addr39:
                  }
               }
            }
         }
         §§goto(addr39);
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
         if(!_loc4_)
         {
            super();
            loop0:
            while(true)
            {
               this.§?l§ = param3;
               while(true)
               {
                  this.§1!Q§ = param1;
                  addr88:
                  while(true)
                  {
                     this.§`!4§ = this.§1!Q§.§<!]§;
                     continue loop0;
                  }
                  addr52:
                  if(!(_loc5_ || param1))
                  {
                     continue;
                  }
                  this.§8X§ = param2;
                  addr69:
                  if(!_loc5_)
                  {
                     while(_loc5_)
                     {
                        §§goto(addr52);
                        §§goto(addr69);
                     }
                     continue loop0;
                     addr50:
                  }
                  if(!_loc4_)
                  {
                     return;
                     addr32:
                  }
                  §§goto(addr88);
               }
            }
         }
         while(true)
         {
            this.§@A§ = new Vector.<§@8§>();
            §§goto(addr50);
         }
         §§goto(addr32);
      }
      
      public function dispose() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§@8§ = null;
         if(!(_loc2_ && _loc3_))
         {
            this.§6!D§();
            if(!_loc2_)
            {
               §§goto(addr41);
            }
            §§goto(addr44);
         }
         addr41:
         if(this.§@A§)
         {
            addr44:
            while(this.§@A§.length > 0)
            {
               _loc1_ = this.§@A§.pop();
               if(_loc3_ || _loc2_)
               {
                  _loc1_.dispose();
               }
            }
            if(!(_loc2_ && _loc3_))
            {
               this.§@A§ = null;
            }
         }
      }
      
      public function §=!>§(param1:int, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && param2))
         {
            this.mW = param3;
            while(true)
            {
               this.mH = param4;
               while(!(_loc5_ && param2))
               {
                  this.§3!Y§ = param1;
                  loop2:
                  while(!(_loc5_ && param1))
                  {
                     while(true)
                     {
                        this.§%!v§ = param2;
                        while(!_loc5_)
                        {
                           this.§[O§();
                           if(!(_loc5_ && param3))
                           {
                              return;
                           }
                        }
                        continue loop2;
                     }
                  }
               }
            }
         }
         §§goto(addr78);
      }
      
      public function §?!T§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            if(!param1)
            {
               loop0:
               while(true)
               {
                  §§push(this);
                  §§push(this.mW);
                  if(_loc2_ || _loc3_)
                  {
                     §§push(§§pop() / this.mH);
                  }
                  §§pop().§;!0§ = §§pop();
                  while(!(_loc3_ && this))
                  {
                     if(!(_loc2_ || _loc2_))
                     {
                        this.§;!0§ = 1;
                        break;
                     }
                     addr117:
                     if(this.§;!0§ < 1)
                     {
                        if(_loc2_)
                        {
                           if(_loc3_)
                           {
                              continue loop0;
                           }
                           this.§;!0§ = 1 / this.§;!0§;
                           addr71:
                           while(true)
                           {
                           }
                           addr71:
                        }
                        §§goto(addr71);
                     }
                     while(true)
                     {
                        this.§;!0§ = Math.min(11,this.§;!0§);
                        if(_loc2_)
                        {
                           break;
                        }
                        §§goto(addr71);
                     }
                     if(_loc2_ || _loc2_)
                     {
                        return;
                     }
                  }
                  return;
               }
            }
            §§goto(addr117);
         }
         §§goto(addr71);
      }
      
      public function §%!]§(param1:§^!&§) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§+W§ = null;
         var _loc3_:Texture = null;
         if(!_loc5_)
         {
            §§push(this.§1!Q§.isGround());
            if(_loc6_)
            {
               if(!§§pop())
               {
                  loop0:
                  while(true)
                  {
                     this.§,!M§ = param1.getAnimation("SPARKLES");
                     loop1:
                     while(!(_loc5_ && param1))
                     {
                        loop2:
                        do
                        {
                           this.§8x§ = param1.getAnimation(this.§`!4§);
                           while(_loc6_ || _loc3_)
                           {
                              if(_loc6_ || this)
                              {
                                 this.§;!B§ = this.§8x§;
                                 if(_loc6_)
                                 {
                                    continue loop2;
                                 }
                                 continue;
                              }
                              continue loop0;
                           }
                           continue loop1;
                        }
                        while(false);
                        
                        var _loc4_:* = Number(1);
                        if(!(_loc5_ && param1))
                        {
                           §§push(this.§;!B§);
                           if(_loc6_)
                           {
                              if(§§pop())
                              {
                                 addr97:
                                 _loc2_ = this.§;!B§.getFrame(0);
                                 addr95:
                                 if(!_loc5_)
                                 {
                                    §§push(_loc2_.scale);
                                    if(_loc6_ || param1)
                                    {
                                       §§push(Number(§§pop()));
                                    }
                                    _loc4_ = §§pop();
                                 }
                                 _loc3_ = _loc2_.texture;
                                 if(!(_loc5_ && param1))
                                 {
                                    addr132:
                                    this.§^!?§ = new §?!U§(_loc3_);
                                    if(!(_loc5_ && param1))
                                    {
                                       if(!_loc2_)
                                       {
                                          §§push(this.§^!?§);
                                          while(true)
                                          {
                                             if(_loc6_ || _loc3_)
                                             {
                                                §§push(this.§^!?§);
                                                loop5:
                                                while(true)
                                                {
                                                   §§push(-§§pop().width);
                                                   addr334:
                                                   while(true)
                                                   {
                                                      §§push(2);
                                                      addr335:
                                                      while(true)
                                                      {
                                                         §§push(§§pop() / §§pop());
                                                         addr336:
                                                         while(true)
                                                         {
                                                            §§pop().x = §§pop();
                                                            loop9:
                                                            while(true)
                                                            {
                                                               if(!_loc5_)
                                                               {
                                                                  §§push(this.§^!?§);
                                                                  loop10:
                                                                  while(true)
                                                                  {
                                                                     if(_loc6_ || _loc2_)
                                                                     {
                                                                        continue loop5;
                                                                     }
                                                                     loop12:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc2_.pivotY);
                                                                        if(!_loc5_)
                                                                        {
                                                                           §§push(-§§pop());
                                                                           loop13:
                                                                           while(_loc6_)
                                                                           {
                                                                              §§pop().y = §§pop();
                                                                              while(true)
                                                                              {
                                                                                 loop15:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(this.§^!?§);
                                                                                    loop16:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc4_);
                                                                                       addr265:
                                                                                       addr306:
                                                                                       while(!(_loc5_ && _loc2_))
                                                                                       {
                                                                                          §§pop().scaleX = §§pop();
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(this.§^!?§);
                                                                                             if(_loc6_ || this)
                                                                                             {
                                                                                                continue loop10;
                                                                                             }
                                                                                             continue loop16;
                                                                                          }
                                                                                          continue loop12;
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §§pop().y = §§pop();
                                                                                          continue loop15;
                                                                                          §§goto(addr265);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                              if(_loc5_ && _loc3_)
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              §§pop().scaleY = §§pop();
                                                                              loop19:
                                                                              do
                                                                              {
                                                                                 this.mW = this.§^!?§.width / 2;
                                                                                 loop20:
                                                                                 while(!_loc5_)
                                                                                 {
                                                                                    this.mH = this.§^!?§.height / 2;
                                                                                    while(!_loc5_)
                                                                                    {
                                                                                       this.§8X§.addChild(this.§^!?§);
                                                                                       if(!_loc5_)
                                                                                       {
                                                                                          if(_loc6_)
                                                                                          {
                                                                                             continue loop19;
                                                                                          }
                                                                                          continue loop20;
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr273);
                                                                                 }
                                                                                 §§goto(addr307);
                                                                              }
                                                                              while(_loc5_);
                                                                              
                                                                              if(!(_loc6_ || param1))
                                                                              {
                                                                                 continue loop9;
                                                                              }
                                                                              if(!_loc6_)
                                                                              {
                                                                                 continue loop12;
                                                                              }
                                                                              if(_loc6_ || _loc3_)
                                                                              {
                                                                                 return true;
                                                                              }
                                                                              addr354:
                                                                              while(true)
                                                                              {
                                                                                 §§push(this.§^!?§);
                                                                                 addr356:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc2_.pivotX);
                                                                                    addr358:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(-§§pop());
                                                                                       break loop13;
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr358);
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§pop().x = §§pop();
                                                                           continue loop12;
                                                                        }
                                                                     }
                                                                  }
                                                                  continue loop5;
                                                               }
                                                               §§goto(addr351);
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             else
                                             {
                                                §§goto(addr356);
                                             }
                                             §§goto(addr358);
                                             if(!(_loc6_ || _loc2_))
                                             {
                                                continue;
                                             }
                                             §§push(_loc4_);
                                             if(!(_loc5_ && _loc2_))
                                             {
                                                if(_loc6_ || _loc2_)
                                                {
                                                   if(!_loc5_)
                                                   {
                                                      §§goto(addr252);
                                                   }
                                                   §§goto(addr334);
                                                }
                                                §§goto(addr336);
                                             }
                                             §§goto(addr265);
                                          }
                                       }
                                       §§goto(addr354);
                                    }
                                    §§goto(addr307);
                                 }
                                 §§goto(addr351);
                              }
                              else
                              {
                                 _loc3_ = this.§?l§.textureManager.§0y§();
                              }
                              §§goto(addr132);
                           }
                           §§goto(addr97);
                        }
                        §§goto(addr95);
                     }
                  }
               }
               return false;
            }
         }
         §§goto(addr79);
      }
      
      public function §9x§(param1:§2!W§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:Array = null;
         var _loc3_:b2Vec2 = null;
         §§push(param1.§6r§);
         if(!_loc6_)
         {
            var _loc4_:* = §§pop();
            if(_loc5_)
            {
               §§push(§2!W§.§=!i§);
               if(!(_loc6_ && _loc2_))
               {
                  §§push(_loc4_);
                  if(_loc5_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!_loc6_)
                        {
                           §§push(0);
                           if(!(_loc5_ || _loc3_))
                           {
                              addr127:
                              if(§§pop() === _loc4_)
                              {
                                 addr129:
                                 §§push(1);
                                 if(_loc5_)
                                 {
                                    addr132:
                                 }
                              }
                              else
                              {
                                 §§push(2);
                              }
                           }
                           else
                           {
                              addr117:
                           }
                           §§goto(addr138);
                        }
                        §§goto(addr129);
                     }
                     else
                     {
                        §§push(§2!W§.§"d§);
                        if(!(_loc6_ && this))
                        {
                           §§goto(addr127);
                        }
                     }
                     §§goto(addr132);
                  }
                  §§goto(addr127);
               }
               §§goto(addr117);
            }
            §§goto(addr129);
         }
         addr138:
         switch(§§pop())
         {
            case 0:
               _loc2_ = param1.§!M§();
               _loc3_ = _loc2_[0];
               if(!(_loc6_ && this))
               {
                  §§push(this);
                  §§push(_loc3_.x);
                  if(!_loc6_)
                  {
                     §§push(§§pop() / §^g§.§^!S§);
                  }
                  §§pop().§8l§ = §§pop();
                  if(!_loc6_)
                  {
                     §§push(this);
                     §§push(_loc3_.y);
                     if(!_loc6_)
                     {
                        §§push(§§pop() / §^g§.§^!S§);
                     }
                     §§pop().§1n§ = §§pop();
                     if(_loc6_)
                     {
                     }
                     break;
                  }
                  addr139:
                  this.§true §();
                  break;
               }
               break;
            case 1:
               §§goto(addr139);
            default:
               §§goto(addr139);
         }
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
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.§8X§.scaleX = this.§8X§.scaleY = param1;
         }
      }
      
      public function §true §() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§+W§ = null;
         if(!_loc4_)
         {
            §§push(this.§8x§);
            if(!(_loc4_ && this))
            {
               if(!§§pop())
               {
                  if(!_loc4_)
                  {
                     return;
                  }
                  addr221:
                  var _loc2_:*;
                  §§push((_loc2_ = this).§`D§);
                  if(_loc5_)
                  {
                     §§push(§§pop() - 1);
                  }
                  var _loc3_:* = §§pop();
                  if(_loc5_)
                  {
                     _loc2_.§`D§ = _loc3_;
                  }
                  if(!_loc4_)
                  {
                     addr687:
                     addr238:
                  }
                  else
                  {
                     addr272:
                  }
               }
               else
               {
                  §§push(this.§82§);
                  if(!_loc4_)
                  {
                     if(§§pop())
                     {
                        if(!(_loc4_ && _loc1_))
                        {
                           this.§`D§ = 1;
                           if(!(_loc4_ && _loc3_))
                           {
                              addr695:
                              §§push(this.§;!B§);
                              if(_loc5_)
                              {
                                 if(§§pop())
                                 {
                                    addr702:
                                    _loc1_ = this.§;!B§.getFrame(this.§`D§);
                                    if(_loc5_)
                                    {
                                       §§push(this.§^!?§);
                                       loop58:
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
                                                   loop68:
                                                   while(true)
                                                   {
                                                      §§push(Boolean(_loc1_));
                                                      if(!(_loc4_ && this))
                                                      {
                                                         loop59:
                                                         while(§§pop())
                                                         {
                                                            if(!(_loc4_ && this))
                                                            {
                                                               §§push(this.§^!?§);
                                                               while(true)
                                                               {
                                                                  §§pop().texture = _loc1_.texture;
                                                                  addr720:
                                                                  if(_loc4_ && _loc3_)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  addr727:
                                                                  §§push(_loc1_.scale);
                                                                  if(_loc5_ || _loc1_)
                                                                  {
                                                                     if(_loc5_ || this)
                                                                     {
                                                                        §§pop().scaleY = §§pop();
                                                                        if(!_loc5_)
                                                                        {
                                                                           addr875:
                                                                           loop76:
                                                                           while(true)
                                                                           {
                                                                              if(!(_loc4_ && _loc3_))
                                                                              {
                                                                                 addr833:
                                                                                 §§push(this.§^!?§);
                                                                                 if(_loc5_ || this)
                                                                                 {
                                                                                    §§goto(addr720);
                                                                                 }
                                                                                 while(_loc5_)
                                                                                 {
                                                                                    continue loop58;
                                                                                 }
                                                                                 loop70:
                                                                                 while(_loc5_ || _loc1_)
                                                                                 {
                                                                                    §§push(_loc1_.pivotY);
                                                                                    if(_loc5_ || _loc3_)
                                                                                    {
                                                                                       §§push(-§§pop());
                                                                                       if(_loc5_)
                                                                                       {
                                                                                          if(!(_loc4_ && this))
                                                                                          {
                                                                                             §§push(this.§1n§);
                                                                                             if(!_loc4_)
                                                                                             {
                                                                                                §§push(§§pop() - §§pop());
                                                                                                while(true)
                                                                                                {
                                                                                                   §§pop().y = §§pop();
                                                                                                   addr820:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!_loc4_)
                                                                                                      {
                                                                                                         if(_loc4_ && this)
                                                                                                         {
                                                                                                            break;
                                                                                                            addr755:
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§goto(addr758);
                                                                                                         }
                                                                                                         continue loop58;
                                                                                                      }
                                                                                                   }
                                                                                                   addr769:
                                                                                                   continue loop68;
                                                                                                   while(!(_loc4_ && _loc2_))
                                                                                                   {
                                                                                                      §§pop().scaleX = §§pop();
                                                                                                      continue loop76;
                                                                                                      §§goto(addr727);
                                                                                                   }
                                                                                                }
                                                                                                addr819:
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop() - §§pop());
                                                                                                   addr839:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§pop().x = §§pop();
                                                                                                   }
                                                                                                }
                                                                                                addr838:
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                continue loop70;
                                                                                             }
                                                                                             addr840:
                                                                                          }
                                                                                          §§goto(addr839);
                                                                                       }
                                                                                       §§goto(addr819);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(-§§pop());
                                                                                          addr836:
                                                                                          while(true)
                                                                                          {
                                                                                          }
                                                                                       }
                                                                                       addr835:
                                                                                    }
                                                                                    §§goto(addr838);
                                                                                 }
                                                                                 addr758:
                                                                                 while(true)
                                                                                 {
                                                                                    §§goto(addr835);
                                                                                    §§goto(addr788);
                                                                                 }
                                                                                 addr788:
                                                                                 addr833:
                                                                              }
                                                                              §§goto(addr820);
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§goto(addr833);
                                                                           }
                                                                           addr875:
                                                                        }
                                                                        if(!(_loc4_ && _loc3_))
                                                                        {
                                                                           if(true)
                                                                           {
                                                                              break loop59;
                                                                           }
                                                                           §§goto(addr755);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr875);
                                                                        }
                                                                     }
                                                                     §§goto(addr836);
                                                                  }
                                                                  §§goto(addr769);
                                                               }
                                                            }
                                                            §§goto(addr875);
                                                            continue loop68;
                                                         }
                                                         addr885:
                                                         return;
                                                         addr861:
                                                      }
                                                      break;
                                                   }
                                                }
                                                addr883:
                                             }
                                             §§goto(addr861);
                                          }
                                          §§goto(addr883);
                                       }
                                    }
                                    §§goto(addr840);
                                 }
                                 §§goto(addr885);
                              }
                              §§goto(addr702);
                           }
                           else
                           {
                              this.mIsScreaming = true;
                              this.mIsFlying = true;
                              addr606:
                              §§goto(addr695);
                              addr606:
                              addr625:
                              addr601:
                           }
                           §§goto(addr695);
                        }
                        §§goto(addr702);
                     }
                     else
                     {
                        §§push(this.§1!Q§);
                        if(_loc5_ || this)
                        {
                           §§push(§§pop().getSpecialAnimationProgress());
                           if(_loc5_ || _loc2_)
                           {
                              §§push(0);
                              if(_loc5_ || _loc1_)
                              {
                                 §§push(§§pop() >= §§pop());
                                 if(!(_loc4_ && _loc3_))
                                 {
                                    §§push(§§pop());
                                    if(_loc5_)
                                    {
                                       if(§§pop())
                                       {
                                          if(_loc5_ || _loc2_)
                                          {
                                             §§pop();
                                             loop0:
                                             while(true)
                                             {
                                                §§push(this.§8x§);
                                                if(_loc5_ || _loc3_)
                                                {
                                                   §§push(this.§8!b§);
                                                   if(_loc5_ || _loc2_)
                                                   {
                                                      §§push(§§pop().getSubAnimation(§§pop()));
                                                      if(!_loc4_)
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                         if(_loc5_ || _loc3_)
                                                         {
                                                            loop25:
                                                            while(true)
                                                            {
                                                               if(!§§pop())
                                                               {
                                                                  §§push(this.mTryToSpecial);
                                                                  break;
                                                               }
                                                               if(_loc5_)
                                                               {
                                                                  if(!_loc5_)
                                                                  {
                                                                     continue loop0;
                                                                  }
                                                                  this.§;!B§ = this.§8x§.getSubAnimation(this.§8!b§);
                                                                  if(_loc5_)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        this.§`D§ = this.§;!B§.getFrameCount() * this.§1!Q§.getSpecialAnimationProgress();
                                                                        if(!_loc4_)
                                                                        {
                                                                           §§push(this.§`D§ == this.§;!B§.getFrameCount() - 1);
                                                                           if(_loc5_)
                                                                           {
                                                                              §§push(§§pop());
                                                                              if(!(_loc4_ && this))
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    if(_loc5_ || _loc1_)
                                                                                    {
                                                                                       §§pop();
                                                                                       if(_loc5_ || _loc3_)
                                                                                       {
                                                                                          if(false)
                                                                                          {
                                                                                             continue;
                                                                                          }
                                                                                          addr209:
                                                                                          §§push(this.§1!Q§.getSpecialAnimationTimeLeft());
                                                                                          if(_loc5_)
                                                                                          {
                                                                                             §§push(100);
                                                                                             if(!_loc4_)
                                                                                             {
                                                                                                §§push(§§pop() > §§pop());
                                                                                                if(_loc5_)
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                addr691:
                                                                                                loop17:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop());
                                                                                                   addr692:
                                                                                                   loop33:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§pop();
                                                                                                            addr694:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(this.§8x§);
                                                                                                               break loop0;
                                                                                                            }
                                                                                                         }
                                                                                                         addr693:
                                                                                                      }
                                                                                                      loop6:
                                                                                                      while(!§§pop())
                                                                                                      {
                                                                                                         §§push(this.mTryToScream);
                                                                                                         loop57:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(0);
                                                                                                            addr651:
                                                                                                            loop55:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop() > §§pop());
                                                                                                               loop56:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop());
                                                                                                                  loop21:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(§§pop())
                                                                                                                     {
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(_loc4_ && _loc1_)
                                                                                                                           {
                                                                                                                              continue loop17;
                                                                                                                           }
                                                                                                                           addr661:
                                                                                                                           §§pop();
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(this.mTryToFly);
                                                                                                                              addr629:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() > 0);
                                                                                                                              }
                                                                                                                              §§goto(addr661);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        addr654:
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        addr632:
                                                                                                                        loop54:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop());
                                                                                                                           loop16:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(§§pop())
                                                                                                                              {
                                                                                                                                 loop52:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(_loc5_ || _loc2_)
                                                                                                                                    {
                                                                                                                                       if(_loc4_)
                                                                                                                                       {
                                                                                                                                          break loop25;
                                                                                                                                       }
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§pop();
                                                                                                                                          loop28:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(this.§8x§);
                                                                                                                                             loop29:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(this.§;!T§);
                                                                                                                                                loop30:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop().getSubAnimation(§§pop()));
                                                                                                                                                   loop31:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(_loc5_)
                                                                                                                                                      {
                                                                                                                                                         §§push(Boolean(§§pop()));
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            loop19:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(!§§pop())
                                                                                                                                                               {
                                                                                                                                                                  §§push(this.mTryToScream);
                                                                                                                                                                  loop23:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     if(!_loc5_)
                                                                                                                                                                     {
                                                                                                                                                                        continue loop57;
                                                                                                                                                                     }
                                                                                                                                                                     §§push(0);
                                                                                                                                                                     loop22:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() > §§pop());
                                                                                                                                                                        addr570:
                                                                                                                                                                        loop77:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop());
                                                                                                                                                                           addr571:
                                                                                                                                                                           loop20:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              if(!(_loc4_ && _loc1_))
                                                                                                                                                                              {
                                                                                                                                                                                 if(§§pop())
                                                                                                                                                                                 {
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc4_)
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop19;
                                                                                                                                                                                       }
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§pop();
                                                                                                                                                                                          addr582:
                                                                                                                                                                                          while(!(_loc4_ && _loc3_))
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!(_loc4_ && _loc2_))
                                                                                                                                                                                             {
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(this.§8x§);
                                                                                                                                                                                                   addr524:
                                                                                                                                                                                                   while(!(_loc4_ && _loc3_))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(this.§7!5§);
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!_loc4_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr536:
                                                                                                                                                                                                            §§push(§§pop().getSubAnimation(§§pop()));
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(Boolean(§§pop()));
                                                                                                                                                                                                               break loop20;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr536:
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr673:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(§§pop().getSubAnimation(§§pop()));
                                                                                                                                                                                                            addr674:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(Boolean(§§pop()));
                                                                                                                                                                                                               addr675:
                                                                                                                                                                                                               while(_loc5_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  continue loop6;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr693);
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   break loop0;
                                                                                                                                                                                                }
                                                                                                                                                                                                addr596:
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr662);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr606);
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    addr579:
                                                                                                                                                                                 }
                                                                                                                                                                                 break;
                                                                                                                                                                              }
                                                                                                                                                                              continue loop21;
                                                                                                                                                                           }
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              addr538:
                                                                                                                                                                              loop13:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!§§pop())
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(this.mTryToBlink);
                                                                                                                                                                                    if(_loc4_)
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop23;
                                                                                                                                                                                    }
                                                                                                                                                                                    §§push(0);
                                                                                                                                                                                    if(!(_loc5_ || _loc2_))
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop22;
                                                                                                                                                                                    }
                                                                                                                                                                                    if(!_loc5_)
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop55;
                                                                                                                                                                                    }
                                                                                                                                                                                    §§push(§§pop() > §§pop());
                                                                                                                                                                                    loop14:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!_loc4_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!_loc4_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop());
                                                                                                                                                                                             loop15:
                                                                                                                                                                                             while(!(_loc4_ && this))
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!_loc5_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue loop16;
                                                                                                                                                                                                }
                                                                                                                                                                                                loop35:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(§§pop())
                                                                                                                                                                                                   {
                                                                                                                                                                                                      loop36:
                                                                                                                                                                                                      for(; !_loc4_; while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc4_ && this)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            continue loop36;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         if(_loc4_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            break;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr371);
                                                                                                                                                                                                      },continue loop14)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§pop();
                                                                                                                                                                                                         loop37:
                                                                                                                                                                                                         while(_loc5_ || _loc3_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!(_loc4_ && _loc3_))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(this.§8x§);
                                                                                                                                                                                                               while(!_loc4_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(_loc5_ || _loc2_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(this.§<!<§);
                                                                                                                                                                                                                     while(_loc5_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(§§pop().getSubAnimation(§§pop()));
                                                                                                                                                                                                                        while(!_loc4_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(_loc5_ || _loc3_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(Boolean(§§pop()));
                                                                                                                                                                                                                              continue loop36;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           continue loop31;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr536);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     continue loop30;
                                                                                                                                                                                                                     addr417:
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  continue loop29;
                                                                                                                                                                                                                  addr388:
                                                                                                                                                                                                                  §§push(this.§8x§);
                                                                                                                                                                                                                  if(!_loc5_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     continue;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(this.§3@§);
                                                                                                                                                                                                                     if(_loc5_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(!(_loc4_ && _loc3_))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(§§pop().getSubAnimation(§§pop()));
                                                                                                                                                                                                                           if(_loc5_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(Boolean(§§pop()));
                                                                                                                                                                                                                              if(_loc5_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr295:
                                                                                                                                                                                                                                 if(!(_loc5_ || _loc3_))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(!(_loc5_ || _loc2_))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          continue loop52;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       if(!_loc5_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          continue loop54;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§push(§§pop());
                                                                                                                                                                                                                                       if(_loc4_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          continue loop15;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       if(!_loc5_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          continue loop33;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       if(§§pop())
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          addr371:
                                                                                                                                                                                                                                          while(!(_loc4_ && _loc2_))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(_loc5_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§pop();
                                                                                                                                                                                                                                                addr381:
                                                                                                                                                                                                                                                while(!(_loc4_ && _loc1_))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§goto(addr388);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr582);
                                                                                                                                                                                                                                                addr381:
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             else
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§goto(addr654);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr661);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          continue loop36;
                                                                                                                                                                                                                                          addr371:
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          addr309:
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(!§§pop())
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             this.§;!B§ = this.§8x§;
                                                                                                                                                                                                                                             if(!(_loc4_ && _loc3_))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(!_loc4_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(_loc5_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(false)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§goto(addr259);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      break loop19;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   continue loop28;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr259);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             break;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          if(!(_loc4_ && this))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(_loc5_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(_loc5_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(_loc5_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(!(_loc4_ && _loc1_))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         this.§;!B§ = this.§8x§.getSubAnimation(this.§3@§);
                                                                                                                                                                                                                                                         if(_loc5_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            addr259:
                                                                                                                                                                                                                                                            this.mIsFlying = true;
                                                                                                                                                                                                                                                            if(!_loc4_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               addr265:
                                                                                                                                                                                                                                                               if(_loc4_ && _loc3_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  this.mIsSpecial = true;
                                                                                                                                                                                                                                                                  addr686:
                                                                                                                                                                                                                                                                  break loop13;
                                                                                                                                                                                                                                                                  addr686:
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr272);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            else
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               addr451:
                                                                                                                                                                                                                                                               if(_loc4_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  continue loop37;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               if(!_loc5_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  break loop6;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               this.§;!B§ = this.§8x§.getSubAnimation(this.§<!<§);
                                                                                                                                                                                                                                                               this.mIsBlinking = true;
                                                                                                                                                                                                                                                               addr393:
                                                                                                                                                                                                                                                               if(_loc5_ || _loc1_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  break loop35;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               addr518:
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(!_loc4_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     break loop19;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr694);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               addr462:
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            addr340:
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         break;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      addr539:
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(!(_loc4_ && this))
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            this.§;!B§ = this.§8x§.getSubAnimation(this.§7!5§);
                                                                                                                                                                                                                                                            break loop37;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         addr618:
                                                                                                                                                                                                                                                         this.§;!B§ = this.§8x§.getSubAnimation(this.§;!T§);
                                                                                                                                                                                                                                                         §§goto(addr625);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr462);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr393);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             else
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§goto(addr381);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr340);
                                                                                                                                                                                                                                          §§goto(addr259);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr702);
                                                                                                                                                                                                                                       §§goto(addr381);
                                                                                                                                                                                                                                       §§goto(addr295);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    continue loop52;
                                                                                                                                                                                                                                    addr356:
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 if(!(_loc5_ || _loc2_))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    continue loop56;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr309);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr371);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           else
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§goto(addr420);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr533);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     else
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§goto(addr417);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr524);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            else
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§goto(addr601);
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!(_loc5_ || _loc3_))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               break loop13;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            this.mIsScreaming = true;
                                                                                                                                                                                                            §§goto(addr518);
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr579);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!§§pop())
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(this.mTryToFly);
                                                                                                                                                                                                         if(!_loc4_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!(_loc5_ || this))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue loop77;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§push(Boolean(§§pop()));
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr356);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr451);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr265);
                                                                                                                                                                                                }
                                                                                                                                                                                                if(!_loc4_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   break loop19;
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr606);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr571);
                                                                                                                                                                                          }
                                                                                                                                                                                          break;
                                                                                                                                                                                       }
                                                                                                                                                                                       continue loop13;
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr629);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr539);
                                                                                                                                                                              }
                                                                                                                                                                              break loop19;
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr618);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr695);
                                                                                                                                                         }
                                                                                                                                                         addr616:
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr674);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr675);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr616);
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      this.§;!B§ = this.§8x§.getSubAnimation(this.§8!b§);
                                                                                                      §§goto(addr686);
                                                                                                   }
                                                                                                }
                                                                                                addr691:
                                                                                             }
                                                                                             §§goto(addr651);
                                                                                          }
                                                                                          §§goto(addr650);
                                                                                       }
                                                                                       §§goto(addr221);
                                                                                    }
                                                                                    §§goto(addr643);
                                                                                 }
                                                                                 break;
                                                                              }
                                                                              §§goto(addr692);
                                                                           }
                                                                           §§goto(addr691);
                                                                        }
                                                                        §§goto(addr686);
                                                                     }
                                                                     if(§§pop())
                                                                     {
                                                                        if(_loc5_)
                                                                        {
                                                                           §§goto(addr221);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr606);
                                                                        }
                                                                     }
                                                                     §§goto(addr687);
                                                                  }
                                                                  §§goto(addr238);
                                                               }
                                                               §§goto(addr272);
                                                            }
                                                            while(true)
                                                            {
                                                               §§goto(addr691);
                                                            }
                                                            addr102:
                                                         }
                                                         §§goto(addr581);
                                                      }
                                                      §§goto(addr536);
                                                   }
                                                   §§goto(addr673);
                                                }
                                                break;
                                             }
                                             while(true)
                                             {
                                                §§goto(addr673);
                                             }
                                          }
                                          §§goto(addr538);
                                       }
                                       §§goto(addr102);
                                    }
                                    §§goto(addr495);
                                 }
                                 §§goto(addr632);
                              }
                              §§goto(addr651);
                           }
                           §§goto(addr650);
                        }
                        §§goto(addr209);
                     }
                  }
                  §§goto(addr570);
               }
               §§goto(addr695);
            }
            §§goto(addr278);
         }
         §§goto(addr596);
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
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.§4k§);
            if(!_loc2_)
            {
               if(§§pop() < 0)
               {
                  if(_loc3_)
                  {
                     this.§ !N§();
                     addr29:
                     §§push(0);
                  }
               }
               §§goto(addr29);
            }
            var _loc1_:* = §§pop();
            if(_loc3_ || _loc3_)
            {
               §§push(1);
               loop0:
               while(true)
               {
                  §§push(this.§1!Q§.§%!R§);
                  if(_loc3_)
                  {
                     §§push(§§pop() / this.§1!Q§.§-!!§);
                  }
                  §§push(§§pop() - §§pop());
                  if(!(_loc2_ && _loc3_))
                  {
                     §§push(§§pop() * this.§4k§);
                  }
                  §§push(int(§§pop()));
                  loop1:
                  while(true)
                  {
                     _loc1_ = §§pop();
                     addr127:
                     addr39:
                     while(true)
                     {
                        §§push(_loc1_);
                        if(_loc3_ || _loc3_)
                        {
                           continue loop0;
                        }
                        continue loop1;
                     }
                     return;
                  }
               }
            }
            §§goto(addr60);
         }
         §§goto(addr29);
      }
      
      public function § !N§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            if(this.§8x§)
            {
               if(!_loc1_)
               {
                  this.§4k§ = this.§8x§.getFrameCount();
               }
            }
         }
      }
      
      public function §?1§(param1:uint = 16777215, param2:int = 4, param3:int = 4) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            this.§3!m§ = new GlowFilter();
         }
         loop0:
         do
         {
            this.§3!m§.blurX = param2;
            while(true)
            {
               this.§3!m§.blurY = param3;
               while(!_loc5_)
               {
                  this.§3!m§.color = param1;
                  if(!_loc5_)
                  {
                     continue loop0;
                  }
               }
            }
         }
         while(!(_loc4_ || this));
         
      }
      
      public function §6!D§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
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
               if(_loc4_ || _loc1_)
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
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = int(this.§@A§.length - 1);
         while(true)
         {
            §§push(_loc2_);
            if(!_loc3_)
            {
               if(_loc4_)
               {
                  if(§§pop() < 0)
                  {
                     if(!_loc3_)
                     {
                        break;
                     }
                     loop1:
                     for(; !(_loc4_ || param1); while(true)
                     {
                        _loc2_ = §§pop();
                        continue loop1;
                     })
                     {
                        while(!(_loc4_ || param1))
                        {
                        }
                        while(true)
                        {
                           §§push(_loc2_);
                           addr49:
                           while(true)
                           {
                              §§push(§§pop() - 1);
                              continue loop1;
                           }
                        }
                     }
                     continue;
                  }
                  this.§@A§[_loc2_].updateLifeTime(param1);
                  while(true)
                  {
                     if(this.§@A§[_loc2_].lifeTime < 0)
                     {
                        if(!(_loc3_ && param1))
                        {
                           this.§!!S§(_loc2_);
                        }
                        §§goto(addr87);
                     }
                     §§goto(addr47);
                  }
               }
               §§goto(addr49);
            }
            §§goto(addr50);
         }
      }
      
      private function §!!S§(param1:int) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!(_loc6_ && _loc2_))
         {
            if(!this.§,!M§)
            {
               if(_loc7_)
               {
                  return;
               }
            }
         }
         var _loc2_:int = 0;
         if(!_loc6_)
         {
            if(Math.random() < 0.5)
            {
               if(!_loc6_)
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
         if(!_loc6_)
         {
            if(param1 < this.§@A§.length)
            {
               addr68:
               (_loc5_ = this.§@A§[param1]).§8N§(_loc4_);
               if(_loc7_)
               {
                  _loc5_.§ !]§(_loc3_.texture);
                  if(_loc7_ || _loc2_)
                  {
                     addr126:
                     §§push(_loc5_.image);
                     if(_loc7_ || _loc3_)
                     {
                        §§push(_loc3_.pivotX);
                        if(!(_loc6_ && this))
                        {
                           §§push(-§§pop());
                           if(!(_loc6_ && param1))
                           {
                              §§push(this.§^!?§);
                              if(_loc7_ || param1)
                              {
                                 §§push(§§pop().width / 2);
                                 if(!(_loc6_ && this))
                                 {
                                    §§push(§§pop() - §§pop());
                                    if(_loc7_ || _loc2_)
                                    {
                                       §§push(Math.random() * this.§^!?§.width);
                                       if(_loc7_)
                                       {
                                          §§push(§§pop() + §§pop());
                                          if(_loc7_)
                                          {
                                             §§pop().x = §§pop();
                                             if(_loc7_ || this)
                                             {
                                                addr202:
                                                §§push(_loc5_.image);
                                                §§push(-_loc3_.pivotY);
                                                if(!(_loc6_ && param1))
                                                {
                                                   addr222:
                                                   addr220:
                                                   §§push(this.§^!?§.height / 2);
                                                   if(_loc7_)
                                                   {
                                                      §§push(§§pop() - §§pop());
                                                      if(_loc7_ || _loc2_)
                                                      {
                                                      }
                                                      §§goto(addr242);
                                                   }
                                                   addr241:
                                                   addr242:
                                                   §§pop().y = §§pop();
                                                   return;
                                                   §§push(§§pop() + §§pop());
                                                }
                                             }
                                             §§goto(addr242);
                                          }
                                          §§goto(addr241);
                                          §§push(Math.random() * this.§^!?§.height);
                                       }
                                       §§goto(addr241);
                                    }
                                    §§goto(addr242);
                                 }
                                 §§goto(addr241);
                              }
                              §§goto(addr222);
                           }
                           §§goto(addr220);
                        }
                     }
                     §§goto(addr202);
                  }
                  §§goto(addr242);
               }
               §§goto(addr202);
            }
            else
            {
               _loc5_ = new §@8§(_loc3_.texture,_loc4_);
               if(_loc7_)
               {
                  this.§@A§.push(_loc5_);
                  if(_loc6_ && param1)
                  {
                  }
                  §§goto(addr126);
               }
               this.§8X§.addChild(_loc5_.image);
            }
            §§goto(addr126);
         }
         §§goto(addr68);
      }
      
      public function §1!k§() : §?!U§
      {
         return this.§^!?§;
      }
   }
}
