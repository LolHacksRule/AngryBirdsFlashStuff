package §6!!§
{
   import §#!,§.§0!b§;
   import §#!,§.Sprite;
   import §,!7§.§ H§;
   import §,!7§.Animation;
   import §,!7§.AnimationManager;
   import §6!J§.Texture;
   import §>!8§.b2Vec2;
   import §]!@§.LevelMain;
   import §]!@§.§^x§;
   import flash.filters.GlowFilter;
   import §package§.LevelItemShape;
   
   public class LevelObjectRenderer
   {
      
      public static const §9I§:Number = 1000;
      
      public static const §;B§:Number = 500;
      
      private static var §&!Z§:Array = null;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §9I§ = 1000;
            while(true)
            {
               §;B§ = 500;
               loop1:
               while(!_loc2_)
               {
                  while(true)
                  {
                     §&!Z§ = null;
                     if(!(_loc2_ && LevelObjectRenderer))
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr56);
      }
      
      private var §-!_§:LevelObject;
      
      public var §3[§:int;
      
      public var mW:Number;
      
      public var mH:Number;
      
      public var § !S§:Number;
      
      public var §>!M§:Number;
      
      public var §"i§:int = -1;
      
      private var § !!§:String;
      
      private var §;]§:Animation;
      
      private var §2!;§:Animation;
      
      private var §'!Q§:§0!b§;
      
      private var §8!D§:Number = 0;
      
      private var §8!1§:Number = 0;
      
      public var §!a§:int = -1;
      
      private var §7!G§:int = -1;
      
      private var §>!§:int = 0;
      
      public var mTryToSpecial:Boolean = false;
      
      public var mIsSpecial:Boolean = false;
      
      public var §=7§:String = "special";
      
      public var mTryToFly:Boolean = false;
      
      public var mIsFlying:Boolean = false;
      
      public var §&[§:Boolean = false;
      
      public var mTryToScream:Number = 0;
      
      public var §#!3§:String = "yell";
      
      public var mIsScreaming:Boolean = false;
      
      public var mTryToBlink:Number = 0;
      
      public var §^!4§:String = "blink";
      
      public var mIsBlinking:Boolean = false;
      
      public var §;!i§:String = "fly";
      
      public var § p§:String = "fly_yell";
      
      public var §+Q§:GlowFilter;
      
      private var §&!H§:Vector.<§^x§>;
      
      private var §3!W§:Animation;
      
      private var §"!,§:Sprite = null;
      
      private var §`s§:LevelMain;
      
      public function LevelObjectRenderer(param1:LevelObject, param2:Sprite, param3:LevelMain)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            super();
            while(true)
            {
               this.§`s§ = param3;
               while(!(_loc5_ && param3))
               {
                  this.§-!_§ = param1;
                  while(_loc4_)
                  {
                     this.§ !!§ = this.§-!_§.§ I§;
                     loop3:
                     while(!_loc5_)
                     {
                        this.§&!H§ = new Vector.<§^x§>();
                        do
                        {
                           if(_loc4_)
                           {
                              continue;
                           }
                           continue loop3;
                        }
                        while(this.§"!,§ = param2, !(_loc4_ || param1));
                        
                        return;
                     }
                  }
               }
            }
         }
         §§goto(addr44);
      }
      
      public function dispose() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§^x§ = null;
         if(!(_loc3_ && _loc2_))
         {
            this.§1O§();
            if(_loc2_)
            {
               §§goto(addr41);
            }
            §§goto(addr45);
         }
         addr41:
         if(this.§&!H§)
         {
            addr45:
            while(this.§&!H§.length > 0)
            {
               _loc1_ = this.§&!H§.pop();
               if(_loc2_ || this)
               {
                  _loc1_.dispose();
               }
            }
            if(_loc2_ || this)
            {
               this.§&!H§ = null;
            }
         }
      }
      
      public function §]!P§(param1:int, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && param1))
         {
            this.mW = param3;
            loop0:
            while(true)
            {
               this.mH = param4;
               loop1:
               while(true)
               {
                  this.§"i§ = param1;
                  while(true)
                  {
                     this.§>!M§ = param2;
                     loop3:
                     while(!_loc5_)
                     {
                        while(true)
                        {
                           this.§8!H§();
                           if(_loc6_ || param3)
                           {
                              if(!_loc5_)
                              {
                                 if(_loc6_)
                                 {
                                    break;
                                 }
                                 continue loop0;
                              }
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
         §§goto(addr71);
      }
      
      public function §%v§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(param1)
            {
               if(_loc2_)
               {
                  addr113:
                  this.§ !S§ = 1;
               }
            }
            else
            {
               loop0:
               while(true)
               {
                  §§push(this);
                  §§push(this.mW);
                  if(!(_loc3_ && this))
                  {
                     §§push(§§pop() / this.mH);
                  }
                  §§pop().§ !S§ = §§pop();
                  loop1:
                  while(this.§ !S§ < 1)
                  {
                     if(!(_loc2_ || this))
                     {
                        while(true)
                        {
                           break loop1;
                        }
                        return;
                     }
                     addr89:
                     addr39:
                     if(!(_loc2_ || _loc2_))
                     {
                        continue;
                     }
                     if(!_loc2_)
                     {
                        continue loop0;
                     }
                     if(!_loc2_)
                     {
                        return;
                        addr116:
                     }
                     this.§ !S§ = 1 / this.§ !S§;
                     §§goto(addr89);
                  }
                  while(true)
                  {
                     this.§ !S§ = Math.min(11,this.§ !S§);
                     if(!(_loc2_ || _loc3_))
                     {
                        continue;
                     }
                     §§goto(addr39);
                  }
               }
            }
            §§goto(addr116);
         }
         §§goto(addr113);
      }
      
      public function §&`§(param1:AnimationManager) : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§ H§ = null;
         var _loc3_:Texture = null;
         if(_loc5_ || param1)
         {
            §§push(this.§-!_§.isGround());
            if(_loc5_ || _loc2_)
            {
               if(§§pop())
               {
                  if(!(_loc6_ && _loc3_))
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
               while(true)
               {
                  this.§3!W§ = param1.getAnimation("SPARKLES");
                  loop2:
                  for(; _loc5_; while(!(_loc6_ && param1))
                  {
                     this.§2!;§ = this.§;]§;
                     if(!_loc5_)
                     {
                        continue;
                     }
                     §§goto(addr37);
                  })
                  {
                     while(true)
                     {
                        do
                        {
                           this.§;]§ = param1.getAnimation(this.§ !!§);
                           continue loop2;
                        }
                        while(false);
                        
                        var _loc4_:* = Number(1);
                        if(_loc5_ || _loc2_)
                        {
                           §§push(this.§2!;§);
                           if(!(_loc6_ && this))
                           {
                              if(§§pop())
                              {
                                 addr107:
                                 _loc2_ = this.§2!;§.getFrame(0);
                                 addr105:
                                 if(!(_loc6_ && param1))
                                 {
                                    §§push(_loc2_.scale);
                                    if(!_loc6_)
                                    {
                                       §§push(Number(§§pop()));
                                    }
                                    _loc4_ = §§pop();
                                 }
                                 _loc3_ = _loc2_.texture;
                                 if(!_loc6_)
                                 {
                                    addr137:
                                    this.§'!Q§ = new §0!b§(_loc3_);
                                    if(!(_loc6_ && param1))
                                    {
                                       §§push(Boolean(_loc2_));
                                       loop6:
                                       while(true)
                                       {
                                          if(!§§pop())
                                          {
                                             §§push(this.§'!Q§);
                                             loop7:
                                             while(true)
                                             {
                                                §§push(this.§'!Q§);
                                                addr313:
                                                while(true)
                                                {
                                                   §§push(-§§pop().width);
                                                   addr315:
                                                   loop9:
                                                   while(true)
                                                   {
                                                      §§push(2);
                                                      addr316:
                                                      while(true)
                                                      {
                                                         §§push(§§pop() / §§pop());
                                                         loop11:
                                                         while(true)
                                                         {
                                                            if(!_loc6_)
                                                            {
                                                               §§pop().x = §§pop();
                                                               loop12:
                                                               while(true)
                                                               {
                                                                  if(_loc5_ || param1)
                                                                  {
                                                                     §§push(this.§'!Q§);
                                                                     continue loop7;
                                                                  }
                                                                  loop26:
                                                                  while(true)
                                                                  {
                                                                     addr251:
                                                                     loop16:
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§'!Q§);
                                                                        loop17:
                                                                        while(_loc5_)
                                                                        {
                                                                           §§push(_loc4_);
                                                                           loop18:
                                                                           while(true)
                                                                           {
                                                                              if(_loc5_)
                                                                              {
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    §§pop().scaleX = §§pop();
                                                                                    loop19:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(this.§'!Q§);
                                                                                       if(!_loc6_)
                                                                                       {
                                                                                          if(!_loc6_)
                                                                                          {
                                                                                             §§push(_loc4_);
                                                                                             if(!_loc5_)
                                                                                             {
                                                                                                continue loop18;
                                                                                             }
                                                                                             if(!_loc5_)
                                                                                             {
                                                                                                continue loop11;
                                                                                             }
                                                                                             §§pop().scaleY = §§pop();
                                                                                             loop20:
                                                                                             while(true)
                                                                                             {
                                                                                                if(!_loc5_)
                                                                                                {
                                                                                                   continue loop12;
                                                                                                }
                                                                                                if(!(_loc6_ && this))
                                                                                                {
                                                                                                   this.mW = this.§'!Q§.width / 2;
                                                                                                   continue;
                                                                                                }
                                                                                                addr353:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(this.§'!Q§);
                                                                                                   break loop20;
                                                                                                }
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc2_.pivotX);
                                                                                                addr357:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(-§§pop());
                                                                                                   addr358:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§pop().x = §§pop();
                                                                                                      addr359:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(this.§'!Q§);
                                                                                                         break loop19;
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          break;
                                                                                       }
                                                                                       continue loop17;
                                                                                       while(_loc5_ || _loc2_)
                                                                                       {
                                                                                          this.§"!,§.addChild(this.§'!Q§);
                                                                                          if(!(_loc5_ || this))
                                                                                          {
                                                                                             continue;
                                                                                          }
                                                                                          if(!_loc6_)
                                                                                          {
                                                                                             if(_loc5_ || _loc2_)
                                                                                             {
                                                                                                break loop16;
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr220);
                                                                                          }
                                                                                          §§goto(addr359);
                                                                                       }
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       if(!_loc6_)
                                                                                       {
                                                                                          §§push(_loc2_.pivotY);
                                                                                          if(_loc5_)
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr355);
                                                                                       }
                                                                                       §§goto(addr357);
                                                                                    }
                                                                                    §§push(-§§pop());
                                                                                    break;
                                                                                 }
                                                                                 break;
                                                                              }
                                                                              addr290:
                                                                              while(_loc5_ || param1)
                                                                              {
                                                                                 §§pop().y = §§pop();
                                                                                 continue loop12;
                                                                              }
                                                                              continue loop9;
                                                                           }
                                                                           §§pop().y = §§pop();
                                                                           continue loop26;
                                                                        }
                                                                        continue loop7;
                                                                     }
                                                                     continue loop6;
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr358);
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          §§goto(addr353);
                                       }
                                    }
                                    §§goto(addr359);
                                 }
                                 §§goto(addr305);
                              }
                              else
                              {
                                 _loc3_ = this.§`s§.textureManager.§&R§();
                              }
                              §§goto(addr137);
                           }
                           §§goto(addr107);
                        }
                        §§goto(addr105);
                     }
                  }
                  §§goto(addr83);
               }
            }
            addr82:
            return false;
         }
         §§goto(addr62);
      }
      
      public function §`!I§(param1:LevelItemShape) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:Array = null;
         var _loc3_:b2Vec2 = null;
         §§push(param1.§&! §);
         if(!_loc6_)
         {
            var _loc4_:* = §§pop();
            if(_loc5_ || param1)
            {
               §§push(LevelItemShape.§1<§);
               if(_loc5_ || this)
               {
                  §§push(_loc4_);
                  if(_loc5_ || _loc3_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc5_)
                        {
                           §§push(0);
                           if(_loc6_ && param1)
                           {
                              addr136:
                              if(§§pop() === _loc4_)
                              {
                                 if(_loc5_)
                                 {
                                    addr150:
                                    §§push(1);
                                    if(!(_loc5_ || param1))
                                    {
                                       addr169:
                                    }
                                 }
                                 else
                                 {
                                    addr161:
                                    §§push(2);
                                    if(_loc5_ || _loc3_)
                                    {
                                       §§goto(addr169);
                                    }
                                 }
                              }
                              else if(false)
                              {
                                 §§goto(addr161);
                              }
                              else
                              {
                                 §§push(2);
                              }
                              §§goto(addr161);
                           }
                           §§goto(addr172);
                        }
                        §§goto(addr150);
                     }
                     else
                     {
                        §§push(LevelItemShape.§!!&§);
                        if(!(_loc6_ && this))
                        {
                           §§goto(addr136);
                        }
                     }
                     §§goto(addr169);
                  }
               }
               §§goto(addr136);
            }
            §§goto(addr161);
         }
         addr172:
         switch(§§pop())
         {
            case 0:
               _loc2_ = param1.§?!0§();
               _loc3_ = _loc2_[0];
               if(_loc5_)
               {
                  §§push(this);
                  §§push(_loc3_.x);
                  if(!_loc6_)
                  {
                     §§push(§§pop() / LevelMain.§@!d§);
                  }
                  §§pop().§8!D§ = §§pop();
                  if(_loc5_ || _loc3_)
                  {
                     addr52:
                     §§push(this);
                     §§push(_loc3_.y);
                     if(!(_loc6_ && _loc2_))
                     {
                        §§push(§§pop() / LevelMain.§@!d§);
                     }
                     §§pop().§8!1§ = §§pop();
                     if(_loc6_)
                     {
                     }
                     break;
                  }
                  addr173:
                  this.§@!2§();
                  break;
               }
               §§goto(addr52);
            case 1:
               §§goto(addr173);
            default:
               §§goto(addr173);
         }
      }
      
      public function §=!P§() : Array
      {
         return LevelObjectMovieClipHelper.§=!P§(null,this.§-!_§.§9s§());
      }
      
      public function §+!Y§() : Array
      {
         return LevelObjectMovieClipHelper.§+!Y§(null,this.§-!_§.§9s§());
      }
      
      public function §86§() : Array
      {
         return LevelObjectMovieClipHelper.§86§(null);
      }
      
      public function §8!H§() : void
      {
      }
      
      public function §<,§(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.§"!,§.scaleX = this.§"!,§.scaleY = param1;
         }
      }
      
      public function §@!2§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§ H§ = null;
         if(_loc4_ || _loc3_)
         {
            §§push(this.§;]§);
            if(!_loc5_)
            {
               §§push(!§§pop());
               if(_loc4_)
               {
                  if(§§pop())
                  {
                     if(_loc4_ || this)
                     {
                        return;
                     }
                     addr820:
                     §§push(this.§2!;§);
                     if(!(_loc5_ && _loc1_))
                     {
                        addr830:
                        if(§§pop())
                        {
                           addr833:
                           _loc1_ = this.§2!;§.getFrame(this.§>!§);
                           if(!_loc5_)
                           {
                              §§push(this.§'!Q§);
                              loop16:
                              while(true)
                              {
                                 §§push(Boolean(§§pop()));
                                 loop17:
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    if(!_loc5_)
                                    {
                                       §§push(Boolean(§§pop()));
                                    }
                                    if(§§pop())
                                    {
                                       loop18:
                                       while(true)
                                       {
                                          §§pop();
                                          loop19:
                                          while(true)
                                          {
                                             §§push(Boolean(_loc1_));
                                             if(!_loc5_)
                                             {
                                                if(_loc4_)
                                                {
                                                   loop20:
                                                   while(§§pop())
                                                   {
                                                      loop21:
                                                      while(true)
                                                      {
                                                         §§push(this.§'!Q§);
                                                         loop22:
                                                         while(true)
                                                         {
                                                            §§pop().texture = _loc1_.texture;
                                                            loop23:
                                                            while(_loc4_)
                                                            {
                                                               §§push(this.§'!Q§);
                                                               loop24:
                                                               for(; _loc4_; while(!(_loc5_ && this))
                                                               {
                                                                  if(_loc5_)
                                                                  {
                                                                     continue loop22;
                                                                  }
                                                                  §§goto(addr904);
                                                                  loop33:
                                                                  while(!(_loc5_ && _loc2_))
                                                                  {
                                                                     §§push(_loc1_.scale);
                                                                     loop34:
                                                                     while(true)
                                                                     {
                                                                        §§pop().scaleX = §§pop();
                                                                        while(true)
                                                                        {
                                                                           if(_loc4_ || this)
                                                                           {
                                                                              §§push(this.§'!Q§);
                                                                              if(_loc5_)
                                                                              {
                                                                                 continue loop33;
                                                                              }
                                                                              §§push(_loc1_.scale);
                                                                              if(!_loc4_)
                                                                              {
                                                                                 continue loop34;
                                                                              }
                                                                              if(_loc4_)
                                                                              {
                                                                                 if(!(_loc4_ || this))
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 §§pop().scaleY = §§pop();
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 if(_loc4_ || _loc1_)
                                                                                 {
                                                                                    if(true)
                                                                                    {
                                                                                       break loop20;
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       continue loop33;
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr966);
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr921);
                                                                              }
                                                                           }
                                                                           §§goto(addr922);
                                                                        }
                                                                        §§goto(addr965);
                                                                     }
                                                                  }
                                                               })
                                                               {
                                                                  §§push(_loc1_.pivotX);
                                                                  while(true)
                                                                  {
                                                                     §§push(-§§pop());
                                                                     if(_loc4_ || _loc3_)
                                                                     {
                                                                        §§push(this.§8!D§);
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() - §§pop());
                                                                        }
                                                                        addr964:
                                                                     }
                                                                     addr965:
                                                                     while(true)
                                                                     {
                                                                        §§pop().x = §§pop();
                                                                        addr966:
                                                                        while(true)
                                                                        {
                                                                           §§push(this.§'!Q§);
                                                                           continue loop24;
                                                                        }
                                                                     }
                                                                     addr904:
                                                                     §§push(_loc1_.pivotY);
                                                                     if(!(_loc4_ || _loc2_))
                                                                     {
                                                                        continue;
                                                                     }
                                                                     §§push(-§§pop());
                                                                     if(_loc4_)
                                                                     {
                                                                        §§push(this.§8!1§);
                                                                        if(!_loc5_)
                                                                        {
                                                                           §§push(§§pop() - §§pop());
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr964);
                                                                        }
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§pop().y = §§pop();
                                                                        addr922:
                                                                        while(!(_loc5_ && _loc1_))
                                                                        {
                                                                           continue loop21;
                                                                        }
                                                                        continue loop23;
                                                                     }
                                                                  }
                                                               }
                                                               continue loop16;
                                                            }
                                                            continue loop19;
                                                         }
                                                      }
                                                   }
                                                   addr994:
                                                   return;
                                                   addr974:
                                                }
                                                break;
                                             }
                                             continue loop18;
                                          }
                                          continue loop17;
                                       }
                                    }
                                    §§goto(addr974);
                                 }
                              }
                           }
                           §§goto(addr966);
                        }
                        §§goto(addr994);
                     }
                     §§goto(addr833);
                     addr344:
                  }
                  else
                  {
                     §§push(this.§&[§);
                     if(!(_loc5_ && this))
                     {
                        if(§§pop())
                        {
                           if(!(_loc5_ && _loc2_))
                           {
                              this.§>!§ = 1;
                              if(!(_loc4_ || this))
                              {
                                 addr387:
                                 this.§2!;§ = this.§;]§.getSubAnimation(this.§;!i§);
                                 do
                                 {
                                    this.mIsFlying = true;
                                 }
                                 while(_loc5_ && _loc2_);
                                 
                                 if(!(_loc5_ && _loc1_))
                                 {
                                    if(_loc4_ || _loc3_)
                                    {
                                       §§goto(addr344);
                                    }
                                    else
                                    {
                                       addr791:
                                    }
                                 }
                                 else
                                 {
                                    addr492:
                                 }
                                 addr394:
                              }
                              §§goto(addr820);
                           }
                           else
                           {
                              loop88:
                              while(true)
                              {
                                 §§push(this.§;]§);
                                 while(true)
                                 {
                                    §§push(this.§#!3§);
                                    while(true)
                                    {
                                       if(!(_loc5_ && _loc3_))
                                       {
                                          §§push(§§pop().getSubAnimation(§§pop()));
                                          while(true)
                                          {
                                             §§push(Boolean(§§pop()));
                                             loop60:
                                             while(true)
                                             {
                                                if(!_loc5_)
                                                {
                                                   loop61:
                                                   while(true)
                                                   {
                                                      addr654:
                                                      while(true)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            addr655:
                                                            if(_loc4_ || this)
                                                            {
                                                               break loop61;
                                                            }
                                                            loop69:
                                                            while(true)
                                                            {
                                                               if(!(_loc5_ && _loc3_))
                                                               {
                                                                  §§push(this.§;]§);
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§ p§);
                                                                     addr741:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop().getSubAnimation(§§pop()));
                                                                        addr742:
                                                                        while(true)
                                                                        {
                                                                           §§push(Boolean(§§pop()));
                                                                           loop3:
                                                                           while(true)
                                                                           {
                                                                              addr744:
                                                                              addr745:
                                                                              loop82:
                                                                              while(!§§pop())
                                                                              {
                                                                                 §§push(this.mTryToScream);
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(0);
                                                                                    addr676:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop() > §§pop());
                                                                                       addr677:
                                                                                       loop66:
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc4_)
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(Boolean(§§pop()));
                                                                                                if(_loc4_ || this)
                                                                                                {
                                                                                                   if(!(_loc5_ && _loc2_))
                                                                                                   {
                                                                                                      if(_loc4_ || _loc2_)
                                                                                                      {
                                                                                                         §§push(§§pop());
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(Boolean(§§pop()));
                                                                                                            addr703:
                                                                                                            loop87:
                                                                                                            while(!_loc5_)
                                                                                                            {
                                                                                                               if(!§§pop())
                                                                                                               {
                                                                                                                  break loop66;
                                                                                                               }
                                                                                                               while(_loc5_ && _loc1_)
                                                                                                               {
                                                                                                                  loop40:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§pop();
                                                                                                                     addr819:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(this.§;]§);
                                                                                                                        addr795:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(this.§=7§);
                                                                                                                           addr797:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop().getSubAnimation(§§pop()));
                                                                                                                              addr798:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(Boolean(§§pop()));
                                                                                                                                 addr799:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(_loc5_)
                                                                                                                                    {
                                                                                                                                       loop36:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(Boolean(§§pop()));
                                                                                                                                          addr815:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop());
                                                                                                                                             addr816:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(Boolean(§§pop()));
                                                                                                                                                addr817:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(§§pop())
                                                                                                                                                   {
                                                                                                                                                      continue loop40;
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             continue loop36;
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       addr814:
                                                                                                                                    }
                                                                                                                                    while(!§§pop())
                                                                                                                                    {
                                                                                                                                       §§push(this.mTryToScream);
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(0);
                                                                                                                                          addr780:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() > §§pop());
                                                                                                                                             addr781:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(Boolean(§§pop()));
                                                                                                                                                addr782:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop());
                                                                                                                                                   addr783:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(Boolean(§§pop()));
                                                                                                                                                      addr784:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(§§pop())
                                                                                                                                                         {
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§pop();
                                                                                                                                                               addr786:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(this.mTryToFly);
                                                                                                                                                                  if(_loc4_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() > 0);
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(Boolean(§§pop()));
                                                                                                                                                                        addr761:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     addr760:
                                                                                                                                                                  }
                                                                                                                                                                  addr762:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop());
                                                                                                                                                                     addr763:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(Boolean(§§pop()));
                                                                                                                                                                        break loop87;
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            addr785:
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr761);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    addr803:
                                                                                                                                    addr810:
                                                                                                                                    this.§2!;§ = this.§;]§.getSubAnimation(this.§=7§);
                                                                                                                                    this.mIsSpecial = true;
                                                                                                                                    §§goto(addr791);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               addr713:
                                                                                                               §§pop();
                                                                                                               loop56:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(!_loc5_)
                                                                                                                  {
                                                                                                                     if(!_loc5_)
                                                                                                                     {
                                                                                                                        continue loop88;
                                                                                                                     }
                                                                                                                     addr752:
                                                                                                                     addr752:
                                                                                                                     addr752:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        this.mIsScreaming = true;
                                                                                                                        break loop56;
                                                                                                                     }
                                                                                                                  }
                                                                                                                  break;
                                                                                                                  §§goto(addr713);
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  this.mIsFlying = true;
                                                                                                                  addr723:
                                                                                                                  if(_loc4_ || this)
                                                                                                                  {
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  break loop82;
                                                                                                               }
                                                                                                               §§goto(addr820);
                                                                                                            }
                                                                                                            while(§§pop())
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§pop();
                                                                                                                  continue loop69;
                                                                                                               }
                                                                                                            }
                                                                                                            continue loop3;
                                                                                                         }
                                                                                                         addr702:
                                                                                                      }
                                                                                                      §§goto(addr815);
                                                                                                   }
                                                                                                   §§goto(addr785);
                                                                                                }
                                                                                                §§goto(addr830);
                                                                                             }
                                                                                             addr679:
                                                                                          }
                                                                                          §§goto(addr781);
                                                                                       }
                                                                                       continue loop61;
                                                                                    }
                                                                                 }
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 this.§2!;§ = this.§;]§.getSubAnimation(this.§ p§);
                                                                                 §§goto(addr752);
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  addr739:
                                                               }
                                                               §§goto(addr786);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§push(this.mTryToBlink);
                                                            if(!(_loc5_ && _loc3_))
                                                            {
                                                               if(!(_loc5_ && this))
                                                               {
                                                                  §§push(0);
                                                                  if(!_loc5_)
                                                                  {
                                                                     if(_loc4_ || _loc1_)
                                                                     {
                                                                        §§push(§§pop() > §§pop());
                                                                        continue loop60;
                                                                     }
                                                                     §§goto(addr780);
                                                                  }
                                                                  §§goto(addr676);
                                                               }
                                                               §§goto(addr779);
                                                            }
                                                            §§goto(addr675);
                                                         }
                                                         §§goto(addr675);
                                                      }
                                                   }
                                                   addr662:
                                                   this.§2!;§ = this.§;]§.getSubAnimation(this.§#!3§);
                                                   while(true)
                                                   {
                                                      this.mIsScreaming = true;
                                                      addr632:
                                                      while(true)
                                                      {
                                                         if(!_loc5_)
                                                         {
                                                            if(_loc4_)
                                                            {
                                                               §§goto(addr820);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr819);
                                                            }
                                                         }
                                                         §§goto(addr714);
                                                      }
                                                      §§goto(addr662);
                                                   }
                                                   addr669:
                                                }
                                                §§goto(addr760);
                                             }
                                          }
                                       }
                                       §§goto(addr741);
                                    }
                                 }
                              }
                           }
                           §§goto(addr830);
                        }
                        else
                        {
                           §§push(this.§-!_§);
                           if(_loc4_)
                           {
                              §§push(§§pop().getSpecialAnimationProgress());
                              if(!_loc5_)
                              {
                                 §§push(0);
                                 if(_loc4_ || _loc1_)
                                 {
                                    §§push(§§pop() >= §§pop());
                                    if(!(_loc5_ && this))
                                    {
                                       §§push(Boolean(§§pop()));
                                       if(_loc4_ || _loc3_)
                                       {
                                          §§push(§§pop());
                                          if(!(_loc5_ && this))
                                          {
                                             §§push(Boolean(§§pop()));
                                             if(!_loc5_)
                                             {
                                                if(§§pop())
                                                {
                                                   if(!(_loc5_ && this))
                                                   {
                                                      §§pop();
                                                      loop0:
                                                      while(true)
                                                      {
                                                         §§push(this.§;]§);
                                                         if(!(_loc5_ && _loc2_))
                                                         {
                                                            §§push(this.§=7§);
                                                            if(!_loc5_)
                                                            {
                                                               §§push(§§pop().getSubAnimation(§§pop()));
                                                               if(!(_loc5_ && _loc2_))
                                                               {
                                                                  §§push(Boolean(§§pop()));
                                                                  if(_loc4_)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        if(!§§pop())
                                                                        {
                                                                           §§push(this.mTryToSpecial);
                                                                           break;
                                                                        }
                                                                        if(!_loc5_)
                                                                        {
                                                                           if(_loc5_)
                                                                           {
                                                                              continue loop0;
                                                                           }
                                                                           this.§2!;§ = this.§;]§.getSubAnimation(this.§=7§);
                                                                           if(!_loc5_)
                                                                           {
                                                                              loop51:
                                                                              while(true)
                                                                              {
                                                                                 this.§>!§ = this.§2!;§.getFrameCount() * this.§-!_§.getSpecialAnimationProgress();
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(this.§>!§ == this.§2!;§.getFrameCount() - 1);
                                                                                    if(!_loc5_)
                                                                                    {
                                                                                       §§push(Boolean(§§pop()));
                                                                                       if(_loc4_)
                                                                                       {
                                                                                          §§push(§§pop());
                                                                                          if(!(_loc5_ && _loc1_))
                                                                                          {
                                                                                             §§push(Boolean(§§pop()));
                                                                                             if(!_loc5_)
                                                                                             {
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   if(_loc4_ || _loc3_)
                                                                                                   {
                                                                                                      §§pop();
                                                                                                      if(!_loc5_)
                                                                                                      {
                                                                                                         if(_loc5_ && _loc2_)
                                                                                                         {
                                                                                                            continue;
                                                                                                         }
                                                                                                         if(false)
                                                                                                         {
                                                                                                            continue loop51;
                                                                                                         }
                                                                                                         addr234:
                                                                                                         §§push(this.§-!_§.getSpecialAnimationTimeLeft());
                                                                                                         if(_loc4_)
                                                                                                         {
                                                                                                            §§push(100);
                                                                                                            if(!_loc5_)
                                                                                                            {
                                                                                                               §§push(§§pop() > §§pop());
                                                                                                               if(!_loc5_)
                                                                                                               {
                                                                                                                  §§push(Boolean(§§pop()));
                                                                                                                  if(_loc4_ || _loc2_)
                                                                                                                  {
                                                                                                                     addr251:
                                                                                                                     if(§§pop())
                                                                                                                     {
                                                                                                                        if(!(_loc5_ && _loc1_))
                                                                                                                        {
                                                                                                                           var _loc2_:*;
                                                                                                                           §§push((_loc2_ = this).§>!§);
                                                                                                                           if(!(_loc5_ && _loc1_))
                                                                                                                           {
                                                                                                                              §§push(§§pop() - 1);
                                                                                                                           }
                                                                                                                           var _loc3_:* = §§pop();
                                                                                                                           if(!(_loc5_ && _loc3_))
                                                                                                                           {
                                                                                                                              _loc2_.§>!§ = _loc3_;
                                                                                                                           }
                                                                                                                           if(!_loc4_)
                                                                                                                           {
                                                                                                                              §§goto(addr752);
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              addr811:
                                                                                                                           }
                                                                                                                           §§goto(addr820);
                                                                                                                        }
                                                                                                                        §§goto(addr735);
                                                                                                                     }
                                                                                                                     §§goto(addr811);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§goto(addr597);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr679);
                                                                                                            }
                                                                                                            §§goto(addr676);
                                                                                                         }
                                                                                                         §§goto(addr675);
                                                                                                      }
                                                                                                      §§goto(addr791);
                                                                                                   }
                                                                                                   §§goto(addr654);
                                                                                                }
                                                                                                §§goto(addr251);
                                                                                             }
                                                                                             §§goto(addr605);
                                                                                          }
                                                                                          §§goto(addr783);
                                                                                       }
                                                                                       §§goto(addr379);
                                                                                    }
                                                                                    break;
                                                                                 }
                                                                                 §§goto(addr815);
                                                                              }
                                                                           }
                                                                           §§goto(addr735);
                                                                        }
                                                                        §§goto(addr791);
                                                                     }
                                                                     §§goto(addr814);
                                                                     addr108:
                                                                  }
                                                                  §§goto(addr409);
                                                               }
                                                               §§goto(addr742);
                                                            }
                                                            §§goto(addr741);
                                                         }
                                                         break;
                                                      }
                                                      §§goto(addr359);
                                                   }
                                                   §§goto(addr597);
                                                }
                                                §§goto(addr108);
                                             }
                                             §§goto(addr763);
                                          }
                                          §§goto(addr784);
                                       }
                                       §§goto(addr744);
                                    }
                                    §§goto(addr523);
                                 }
                                 §§goto(addr676);
                              }
                              §§goto(addr675);
                           }
                           §§goto(addr234);
                        }
                     }
                     §§goto(addr523);
                  }
                  §§goto(addr830);
               }
               §§goto(addr409);
            }
            §§goto(addr359);
         }
         §§goto(addr730);
      }
      
      public function §9!Q§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§"!,§.visible = false;
         }
      }
      
      public function setDamagedFrame() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc1_)
         {
            §§push(this.§!a§);
            if(_loc2_ || this)
            {
               if(§§pop() < 0)
               {
                  if(_loc2_)
                  {
                     addr36:
                     this.§8!i§();
                  }
               }
               §§push(0);
               if(!(_loc3_ && _loc2_))
               {
                  addr47:
                  §§push(int(§§pop()));
               }
               var _loc1_:* = §§pop();
               if(!_loc3_)
               {
                  §§push(1);
                  if(_loc2_)
                  {
                     §§push(this.§-!_§.§3W§);
                     if(!(_loc3_ && _loc3_))
                     {
                        §§push(§§pop() / this.§-!_§.§>!"§);
                     }
                     §§push(§§pop() - §§pop());
                     if(!(_loc3_ && _loc3_))
                     {
                        §§push(§§pop() * this.§!a§);
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
                        if(_loc2_)
                        {
                           if(§§pop() != this.§7!G§)
                           {
                              loop2:
                              while(true)
                              {
                                 this.§7!G§ = _loc1_;
                                 while(true)
                                 {
                                    if(!_loc2_)
                                    {
                                       continue loop1;
                                    }
                                    this.§>!§ = this.§7!G§;
                                    do
                                    {
                                       this.§@!2§();
                                    }
                                    while(!_loc2_);
                                    
                                    if(_loc3_ && this)
                                    {
                                       continue;
                                    }
                                    if(!_loc2_)
                                    {
                                       continue loop2;
                                    }
                                 }
                              }
                              addr95:
                           }
                           return;
                        }
                        break;
                     }
                  }
               }
               §§goto(addr95);
            }
            §§goto(addr47);
         }
         §§goto(addr36);
      }
      
      public function §8!i§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(this.§;]§)
            {
               if(_loc1_)
               {
                  addr24:
                  this.§!a§ = this.§;]§.getFrameCount();
               }
            }
            return;
         }
         §§goto(addr24);
      }
      
      public function §4!W§(param1:uint = 16777215, param2:int = 4, param3:int = 4) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            this.§+Q§ = new GlowFilter();
            while(true)
            {
               this.§+Q§.blurX = param2;
               §§goto(addr76);
            }
         }
         addr76:
         while(true)
         {
            this.§+Q§.blurY = param3;
            do
            {
               this.§+Q§.color = param1;
            }
            while(_loc5_ && param1);
            
            if(!_loc5_)
            {
               if(_loc4_ || this)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function §1O§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            this.§+Q§ = null;
         }
      }
      
      public function §%H§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:int = Math.min(8,Math.max(this.§-!_§.§0!"§(false),1));
         §§push(0);
         if(!_loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         while(true)
         {
            §§push(_loc2_);
            if(_loc4_ || _loc2_)
            {
               if(§§pop() >= _loc1_)
               {
                  if(_loc3_ && _loc1_)
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
                  this.§6!j§(_loc2_);
               }
               §§push(_loc2_);
               if(!_loc3_)
               {
                  §§push(§§pop() + 1);
                  if(!(_loc3_ && _loc2_))
                  {
                     §§push(int(§§pop()));
                  }
               }
            }
            _loc2_ = §§pop();
         }
      }
      
      public function §;q§(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = int(this.§&!H§.length - 1);
         while(true)
         {
            §§push(_loc2_);
            if(_loc3_ || param1)
            {
               if(_loc3_)
               {
                  if(_loc3_ || _loc2_)
                  {
                     if(§§pop() < 0)
                     {
                        if(!(_loc4_ && this))
                        {
                           if(!_loc4_)
                           {
                              break;
                           }
                           loop1:
                           while(true)
                           {
                              this.§6!j§(_loc2_);
                              addr96:
                              while(true)
                              {
                                 if(!(_loc3_ || param1))
                                 {
                                    continue loop1;
                                 }
                                 while(true)
                                 {
                                    §§push(_loc2_);
                                    addr68:
                                    while(true)
                                    {
                                       §§push(§§pop() - 1);
                                       addr69:
                                       while(true)
                                       {
                                          §§push(int(§§pop()));
                                          addr70:
                                          while(true)
                                          {
                                             _loc2_ = §§pop();
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        while(_loc4_)
                        {
                           §§goto(addr96);
                        }
                        continue;
                     }
                     this.§&!H§[_loc2_].updateLifeTime(param1);
                     §§goto(addr113);
                  }
                  §§goto(addr68);
               }
               §§goto(addr69);
            }
            §§goto(addr70);
         }
      }
      
      private function §6!j§(param1:int) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!(_loc6_ && param1))
         {
            if(!this.§3!W§)
            {
               if(_loc7_ || _loc2_)
               {
                  §§goto(addr35);
               }
            }
            §§push(0);
            if(_loc7_)
            {
               §§push(int(§§pop()));
            }
            var _loc2_:* = §§pop();
            if(_loc7_)
            {
               if(Math.random() < 0.5)
               {
                  if(!_loc6_)
                  {
                     §§push(1);
                     if(_loc7_ || _loc2_)
                     {
                        §§push(int(§§pop()));
                     }
                     _loc2_ = §§pop();
                  }
               }
            }
            var _loc3_:§ H§ = this.§3!W§.getFrame(_loc2_);
            §§push(100 + Math.random() * 100);
            if(!(_loc6_ && _loc2_))
            {
               §§push(Number(§§pop()));
            }
            var _loc4_:* = §§pop();
            var _loc5_:§^x§ = null;
            if(_loc7_ || param1)
            {
               if(param1 < this.§&!H§.length)
               {
                  §§goto(addr97);
               }
               else
               {
                  _loc5_ = new §^x§(_loc3_.texture,_loc4_);
                  if(_loc7_ || _loc2_)
                  {
                     this.§&!H§.push(_loc5_);
                     if(_loc6_ && _loc2_)
                     {
                     }
                     §§goto(addr171);
                  }
                  this.§"!,§.addChild(_loc5_.image);
               }
               §§goto(addr171);
            }
            addr97:
            _loc5_ = this.§&!H§[param1];
            if(!(_loc6_ && this))
            {
               _loc5_.§+! §(_loc4_);
               if(_loc7_ || this)
               {
                  _loc5_.§^Y§(_loc3_.texture);
                  if(_loc7_)
                  {
                     addr171:
                     §§push(_loc5_.image);
                     if(_loc7_ || _loc2_)
                     {
                        §§push(_loc3_.pivotX);
                        if(!_loc6_)
                        {
                           §§push(-§§pop());
                           if(!(_loc6_ && _loc3_))
                           {
                              §§push(this.§'!Q§);
                              if(_loc7_)
                              {
                                 §§push(§§pop().width / 2);
                                 if(_loc7_)
                                 {
                                    §§push(§§pop() - §§pop());
                                    if(_loc7_)
                                    {
                                       §§push(Math.random() * this.§'!Q§.width);
                                       if(!_loc6_)
                                       {
                                          §§push(§§pop() + §§pop());
                                          if(!_loc6_)
                                          {
                                             §§pop().x = §§pop();
                                             if(_loc7_ || _loc2_)
                                             {
                                                addr228:
                                                §§push(_loc5_.image);
                                                §§push(-_loc3_.pivotY);
                                                if(_loc7_ || this)
                                                {
                                                   addr248:
                                                   §§push(this.§'!Q§.height / 2);
                                                   if(_loc7_)
                                                   {
                                                      §§push(§§pop() - §§pop());
                                                      if(!(_loc6_ && _loc3_))
                                                      {
                                                         addr268:
                                                         §§push(§§pop() + Math.random() * this.§'!Q§.height);
                                                      }
                                                   }
                                                }
                                                §§goto(addr268);
                                             }
                                             §§goto(addr270);
                                          }
                                          §§pop().y = §§pop();
                                          §§goto(addr270);
                                       }
                                    }
                                 }
                                 §§goto(addr268);
                              }
                           }
                           §§goto(addr248);
                        }
                     }
                  }
                  §§goto(addr228);
               }
            }
            addr270:
            return;
         }
         addr35:
      }
      
      public function §>!a§() : §0!b§
      {
         return this.§'!Q§;
      }
   }
}
