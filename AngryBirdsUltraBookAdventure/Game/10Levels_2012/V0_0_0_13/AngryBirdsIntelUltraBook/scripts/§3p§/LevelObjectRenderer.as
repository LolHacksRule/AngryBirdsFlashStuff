package §3p§
{
   import §&L§.b2Vec2;
   import §,!_§.§;K§;
   import §,!_§.Animation;
   import §,!_§.AnimationManager;
   import §2!H§.§?Y§;
   import §2!H§.LevelMain;
   import §6!7§.§-m§;
   import §6!7§.Sprite;
   import §7i§.Texture;
   import §;T§.LevelItemShape;
   import flash.filters.GlowFilter;
   
   public class LevelObjectRenderer
   {
      
      public static const §9!g§:Number = 1000;
      
      public static const §[W§:Number = 500;
      
      private static var §6H§:Array = null;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §9!g§ = 1000;
            do
            {
               §[W§ = 500;
               do
               {
                  §6H§ = null;
               }
               while(_loc2_ && _loc1_);
               
            }
            while(_loc2_ && _loc1_);
            
         }
      }
      
      private var §,,§:LevelObject;
      
      public var §^!;§:int;
      
      public var mW:Number;
      
      public var mH:Number;
      
      public var §]N§:Number;
      
      public var §1!T§:Number;
      
      public var §,R§:int = -1;
      
      private var §[!9§:String;
      
      private var §=n§:Animation;
      
      private var §';§:Animation;
      
      private var §"!P§:§-m§;
      
      private var §;!@§:Number = 0;
      
      private var §3C§:Number = 0;
      
      public var §0!;§:int = -1;
      
      private var §,d§:int = -1;
      
      private var §%!H§:int = 0;
      
      public var mTryToSpecial:Boolean = false;
      
      public var mIsSpecial:Boolean = false;
      
      public var §>!&§:String = "special";
      
      public var mTryToFly:Boolean = false;
      
      public var mIsFlying:Boolean = false;
      
      public var §1L§:Boolean = false;
      
      public var mTryToScream:Number = 0;
      
      public var §=m§:String = "yell";
      
      public var mIsScreaming:Boolean = false;
      
      public var mTryToBlink:Number = 0;
      
      public var § !Z§:String = "blink";
      
      public var mIsBlinking:Boolean = false;
      
      public var §0!?§:String = "fly";
      
      public var §'R§:String = "fly_yell";
      
      public var §'Y§:GlowFilter;
      
      private var §9h§:Vector.<§?Y§>;
      
      private var §5D§:Animation;
      
      private var §'6§:Sprite = null;
      
      private var §"!>§:LevelMain;
      
      public function LevelObjectRenderer(param1:LevelObject, param2:Sprite, param3:LevelMain)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param3)
         {
            super();
         }
         loop0:
         while(true)
         {
            this.§"!>§ = param3;
            loop1:
            while(true)
            {
               this.§,,§ = param1;
               while(!_loc5_)
               {
                  this.§[!9§ = this.§,,§.§#>§;
                  loop3:
                  while(!_loc5_)
                  {
                     this.§9h§ = new Vector.<§?Y§>();
                     while(_loc4_)
                     {
                        this.§'6§ = param2;
                        if(_loc4_ || param2)
                        {
                           if(!_loc5_)
                           {
                              return;
                           }
                           continue loop3;
                        }
                     }
                     continue loop1;
                  }
               }
               continue loop0;
            }
         }
      }
      
      public function dispose() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§?Y§ = null;
         if(!_loc2_)
         {
            this.§1!&§();
            if(_loc3_ || _loc3_)
            {
               §§goto(addr52);
            }
            §§goto(addr56);
         }
         addr52:
         if(this.§9h§)
         {
            addr56:
            while(this.§9h§.length > 0)
            {
               _loc1_ = this.§9h§.pop();
               if(!_loc2_)
               {
                  _loc1_.dispose();
               }
            }
            if(_loc3_)
            {
               this.§9h§ = null;
            }
         }
      }
      
      public function §,!=§(param1:int, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && param3))
         {
            this.mW = param3;
            loop0:
            while(true)
            {
               this.mH = param4;
               while(true)
               {
                  this.§,R§ = param1;
                  addr78:
                  while(!_loc6_)
                  {
                  }
                  continue loop0;
                  addr59:
                  if(!(_loc6_ && param2))
                  {
                     return;
                     addr66:
                  }
               }
            }
         }
         while(true)
         {
            this.§1!T§ = param2;
            while(!_loc6_)
            {
               this.§=u§();
               if(_loc6_ && param2)
               {
                  continue;
               }
               §§goto(addr59);
            }
            §§goto(addr78);
         }
         §§goto(addr66);
      }
      
      public function §1!?§(param1:Boolean) : void
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
                  if(!(_loc2_ && this))
                  {
                     §§push(§§pop() / this.mH);
                  }
                  §§pop().§]N§ = §§pop();
                  loop1:
                  for(; this.§]N§ < 1; if(_loc2_ && _loc2_)
                  {
                     continue;
                  },if(_loc2_)
                  {
                     continue loop0;
                  },this.§]N§ = 1 / this.§]N§,§§goto(addr80))
                  {
                     if(!_loc2_)
                     {
                        continue;
                     }
                     addr80:
                     while(true)
                     {
                        if(!(_loc2_ && _loc3_))
                        {
                           break loop1;
                        }
                        §§goto(addr122);
                     }
                  }
                  while(true)
                  {
                     this.§]N§ = Math.min(11,this.§]N§);
                     if(_loc2_ && _loc2_)
                     {
                        continue;
                     }
                     if(!(_loc2_ && param1))
                     {
                        return;
                     }
                  }
                  §§goto(addr122);
               }
            }
            this.§]N§ = 1;
            addr122:
            return;
         }
         §§goto(addr74);
      }
      
      public function §?E§(param1:AnimationManager) : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§;K§ = null;
         var _loc3_:Texture = null;
         if(_loc5_)
         {
            §§push(this.§,,§.isGround());
            if(!_loc6_)
            {
               if(!§§pop())
               {
                  loop0:
                  while(true)
                  {
                     this.§5D§ = param1.getAnimation("SPARKLES");
                     loop1:
                     while(true)
                     {
                        loop2:
                        while(true)
                        {
                           this.§=n§ = param1.getAnimation(this.§[!9§);
                           loop3:
                           while(_loc5_ || _loc2_)
                           {
                              if(!_loc6_)
                              {
                                 while(true)
                                 {
                                    this.§';§ = this.§=n§;
                                    if(_loc5_ || this)
                                    {
                                       if(!(_loc6_ && param1))
                                       {
                                          if(true)
                                          {
                                             break;
                                          }
                                          continue loop2;
                                       }
                                       continue loop1;
                                    }
                                    continue loop3;
                                 }
                                 var _loc4_:* = Number(1);
                                 if(_loc5_)
                                 {
                                    §§push(this.§';§);
                                    if(_loc5_)
                                    {
                                       if(§§pop())
                                       {
                                          addr92:
                                          _loc2_ = this.§';§.getFrame(0);
                                          addr90:
                                          if(_loc5_ || _loc2_)
                                          {
                                             §§push(_loc2_.scale);
                                             if(!(_loc6_ && _loc3_))
                                             {
                                                §§push(Number(§§pop()));
                                             }
                                             _loc4_ = §§pop();
                                          }
                                          _loc3_ = _loc2_.texture;
                                          if(!_loc6_)
                                          {
                                             addr127:
                                             this.§"!P§ = new §-m§(_loc3_);
                                             if(!_loc6_)
                                             {
                                                §§push(Boolean(_loc2_));
                                                loop5:
                                                while(true)
                                                {
                                                   if(!§§pop())
                                                   {
                                                      §§push(this.§"!P§);
                                                      while(true)
                                                      {
                                                         if(!_loc6_)
                                                         {
                                                            §§push(this.§"!P§);
                                                            loop7:
                                                            while(true)
                                                            {
                                                               §§push(-§§pop().width);
                                                               addr314:
                                                               while(true)
                                                               {
                                                                  §§push(2);
                                                                  addr315:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() / §§pop());
                                                                     addr316:
                                                                     while(true)
                                                                     {
                                                                        §§pop().x = §§pop();
                                                                        addr317:
                                                                        while(true)
                                                                        {
                                                                           if(_loc5_ || _loc2_)
                                                                           {
                                                                              §§push(this.§"!P§);
                                                                              loop12:
                                                                              while(true)
                                                                              {
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    continue loop7;
                                                                                 }
                                                                                 addr338:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc2_.pivotY);
                                                                                    if(!(_loc6_ && _loc2_))
                                                                                    {
                                                                                       §§push(-§§pop());
                                                                                       while(true)
                                                                                       {
                                                                                          §§pop().y = §§pop();
                                                                                          addr349:
                                                                                          while(true)
                                                                                          {
                                                                                             addr241:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(this.§"!P§);
                                                                                                continue loop12;
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       addr348:
                                                                                    }
                                                                                 }
                                                                              }
                                                                              continue loop7;
                                                                           }
                                                                           addr353:
                                                                           while(true)
                                                                           {
                                                                              §§push(this.§"!P§);
                                                                              addr355:
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc2_.pivotX);
                                                                              }
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§push(-§§pop());
                                                                              addr358:
                                                                              loop24:
                                                                              while(true)
                                                                              {
                                                                                 §§pop().x = §§pop();
                                                                                 addr359:
                                                                                 while(true)
                                                                                 {
                                                                                    §§goto(addr338);
                                                                                    continue loop24;
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr355);
                                                         if(!(_loc5_ || _loc2_))
                                                         {
                                                            continue;
                                                         }
                                                         §§push(_loc4_);
                                                         loop18:
                                                         while(true)
                                                         {
                                                            if(_loc5_)
                                                            {
                                                               if(_loc5_)
                                                               {
                                                                  if(_loc5_)
                                                                  {
                                                                     §§pop().scaleX = §§pop();
                                                                     loop19:
                                                                     while(true)
                                                                     {
                                                                        if(_loc5_ || _loc3_)
                                                                        {
                                                                           §§push(this.§"!P§);
                                                                           if(_loc5_ || this)
                                                                           {
                                                                              §§push(_loc4_);
                                                                              if(!_loc5_)
                                                                              {
                                                                                 continue loop18;
                                                                              }
                                                                              if(_loc5_ || _loc2_)
                                                                              {
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    §§pop().scaleY = §§pop();
                                                                                    while(_loc5_ || _loc2_)
                                                                                    {
                                                                                       this.mW = this.§"!P§.width / 2;
                                                                                       loop21:
                                                                                       for(; _loc5_ || this; loop22:
                                                                                       while(true)
                                                                                       {
                                                                                          if(!(_loc5_ || this))
                                                                                          {
                                                                                             continue loop21;
                                                                                             while(true)
                                                                                             {
                                                                                                this.§'6§.addChild(this.§"!P§);
                                                                                                if(_loc5_)
                                                                                                {
                                                                                                   break loop22;
                                                                                                }
                                                                                                continue loop22;
                                                                                             }
                                                                                          }
                                                                                          continue loop19;
                                                                                          §§goto(addr186);
                                                                                       },continue loop5)
                                                                                       {
                                                                                          if(_loc5_ || _loc2_)
                                                                                          {
                                                                                             this.mH = this.§"!P§.height / 2;
                                                                                             continue;
                                                                                          }
                                                                                          §§goto(addr302);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr349);
                                                                                 }
                                                                                 §§goto(addr358);
                                                                              }
                                                                              §§goto(addr348);
                                                                           }
                                                                           §§goto(addr244);
                                                                        }
                                                                        break;
                                                                        if(_loc6_ && param1)
                                                                        {
                                                                           continue;
                                                                        }
                                                                        if(!_loc6_)
                                                                        {
                                                                           addr186:
                                                                           §§goto(addr139);
                                                                        }
                                                                        §§goto(addr317);
                                                                     }
                                                                     §§goto(addr359);
                                                                  }
                                                                  §§goto(addr314);
                                                               }
                                                               break;
                                                            }
                                                            §§goto(addr301);
                                                         }
                                                         §§goto(addr290);
                                                      }
                                                   }
                                                   §§goto(addr353);
                                                   §§push(true);
                                                   if(!_loc6_)
                                                   {
                                                      addr139:
                                                      return §§pop();
                                                   }
                                                }
                                             }
                                             §§goto(addr349);
                                          }
                                          §§goto(addr186);
                                       }
                                       else
                                       {
                                          _loc3_ = this.§"!>§.textureManager.§;?§();
                                       }
                                       §§goto(addr127);
                                    }
                                    §§goto(addr92);
                                 }
                                 §§goto(addr90);
                                 addr62:
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
         §§goto(addr62);
      }
      
      public function §#R§(param1:LevelItemShape) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:Array = null;
         var _loc3_:b2Vec2 = null;
         §§push(param1.§"!5§);
         if(!(_loc5_ && param1))
         {
            var _loc4_:* = §§pop();
            if(!(_loc5_ && param1))
            {
               §§push(LevelItemShape.§,!4§);
               if(!_loc5_)
               {
                  §§push(_loc4_);
                  if(_loc6_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc6_)
                        {
                           §§push(0);
                           if(!_loc6_)
                           {
                              addr132:
                              addr133:
                              if(§§pop() === _loc4_)
                              {
                                 if(_loc6_ || _loc3_)
                                 {
                                    addr151:
                                    §§push(1);
                                    if(_loc6_ || _loc3_)
                                    {
                                       addr168:
                                       switch(§§pop())
                                       {
                                          case 0:
                                             _loc2_ = param1.§6!^§();
                                             _loc3_ = _loc2_[0];
                                             if(_loc6_)
                                             {
                                                §§push(this);
                                                §§push(_loc3_.x);
                                                if(_loc6_ || _loc2_)
                                                {
                                                   §§push(§§pop() / LevelMain.§8N§);
                                                }
                                                §§pop().§;!@§ = §§pop();
                                                if(_loc6_ || param1)
                                                {
                                                   §§push(this);
                                                   §§push(_loc3_.y);
                                                   if(_loc6_)
                                                   {
                                                      §§push(§§pop() / LevelMain.§8N§);
                                                   }
                                                   §§pop().§3C§ = §§pop();
                                                   if(_loc6_ || this)
                                                   {
                                                   }
                                                   break;
                                                }
                                                addr169:
                                                this.§<3§();
                                                break;
                                             }
                                             break;
                                          case 1:
                                             §§goto(addr169);
                                          default:
                                             §§goto(addr169);
                                       }
                                       return;
                                       addr167:
                                       addr159:
                                    }
                                 }
                              }
                              else if(true)
                              {
                                 §§goto(addr167);
                                 §§push(2);
                              }
                              §§goto(addr167);
                              if(!_loc6_)
                              {
                              }
                           }
                           else
                           {
                              addr121:
                           }
                           §§goto(addr167);
                        }
                        §§goto(addr151);
                     }
                     else
                     {
                        §§push(LevelItemShape.§ h§);
                        if(_loc6_ || param1)
                        {
                           §§goto(addr132);
                        }
                     }
                     §§goto(addr159);
                  }
                  §§goto(addr133);
               }
               §§goto(addr121);
            }
            §§goto(addr151);
         }
         §§goto(addr168);
      }
      
      public function §&!^§() : Array
      {
         return LevelObjectMovieClipHelper.§&!^§(null,this.§,,§.§9!&§());
      }
      
      public function §7I§() : Array
      {
         return LevelObjectMovieClipHelper.§7I§(null,this.§,,§.§9!&§());
      }
      
      public function §4N§() : Array
      {
         return LevelObjectMovieClipHelper.§4N§(null);
      }
      
      public function §=u§() : void
      {
      }
      
      public function §+!=§(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc2_)
         {
            this.§'6§.scaleX = this.§'6§.scaleY = param1;
         }
      }
      
      public function §<3§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§;K§ = null;
         if(!_loc4_)
         {
            §§push(this.§=n§);
            if(!_loc4_)
            {
               §§push(!§§pop());
               loop0:
               while(true)
               {
                  if(!§§pop())
                  {
                     §§push(this.§1L§);
                     if(_loc5_ || _loc3_)
                     {
                        if(§§pop())
                        {
                           if(!_loc4_)
                           {
                              this.§%!H§ = 1;
                              if(!(_loc4_ && _loc1_))
                              {
                                 §§goto(addr821);
                              }
                              §§goto(addr834);
                           }
                           else
                           {
                              §§goto(addr771);
                           }
                        }
                        else
                        {
                           §§push(this.§,,§);
                           if(_loc5_)
                           {
                              §§push(§§pop().getSpecialAnimationProgress());
                              if(_loc5_)
                              {
                                 §§push(0);
                                 if(_loc5_)
                                 {
                                    §§push(§§pop() >= §§pop());
                                    if(!_loc4_)
                                    {
                                       §§push(Boolean(§§pop()));
                                       loop1:
                                       while(true)
                                       {
                                          if(!_loc4_)
                                          {
                                             §§push(§§pop());
                                             if(_loc5_ || _loc3_)
                                             {
                                                §§push(Boolean(§§pop()));
                                                if(!(_loc4_ && this))
                                                {
                                                   if(§§pop())
                                                   {
                                                      if(_loc5_ || this)
                                                      {
                                                         §§pop();
                                                         if(_loc5_ || _loc2_)
                                                         {
                                                            §§push(this.§=n§);
                                                            if(!(_loc4_ && _loc2_))
                                                            {
                                                               §§push(this.§>!&§);
                                                               if(_loc5_)
                                                               {
                                                                  §§push(§§pop().getSubAnimation(§§pop()));
                                                                  if(!_loc4_)
                                                                  {
                                                                     §§push(Boolean(§§pop()));
                                                                     if(_loc5_)
                                                                     {
                                                                        addr106:
                                                                        if(§§pop())
                                                                        {
                                                                           if(!(_loc4_ && this))
                                                                           {
                                                                              this.§';§ = this.§=n§.getSubAnimation(this.§>!&§);
                                                                              if(_loc5_ || _loc3_)
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    this.§%!H§ = this.§';§.getFrameCount() * this.§,,§.getSpecialAnimationProgress();
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       §§push(this.§%!H§ == this.§';§.getFrameCount() - 1);
                                                                                       if(!(_loc4_ && _loc1_))
                                                                                       {
                                                                                          §§push(Boolean(§§pop()));
                                                                                          if(!_loc4_)
                                                                                          {
                                                                                             §§push(§§pop());
                                                                                             if(!(_loc4_ && this))
                                                                                             {
                                                                                                §§push(Boolean(§§pop()));
                                                                                                if(_loc5_)
                                                                                                {
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      if(_loc5_)
                                                                                                      {
                                                                                                         continue loop1;
                                                                                                      }
                                                                                                      §§goto(addr668);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      addr247:
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         if(_loc5_ || _loc1_)
                                                                                                         {
                                                                                                            var _loc2_:*;
                                                                                                            §§push((_loc2_ = this).§%!H§);
                                                                                                            if(_loc5_ || _loc1_)
                                                                                                            {
                                                                                                               §§push(§§pop() - 1);
                                                                                                            }
                                                                                                            var _loc3_:* = §§pop();
                                                                                                            if(!_loc4_)
                                                                                                            {
                                                                                                               _loc2_.§%!H§ = _loc3_;
                                                                                                            }
                                                                                                            if(_loc5_ || _loc3_)
                                                                                                            {
                                                                                                               addr812:
                                                                                                               §§goto(addr821);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§goto(addr683);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr608);
                                                                                                      }
                                                                                                      §§goto(addr812);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr474);
                                                                                          }
                                                                                          §§goto(addr636);
                                                                                       }
                                                                                       §§goto(addr594);
                                                                                    }
                                                                                    break;
                                                                                 }
                                                                                 §§goto(addr321);
                                                                                 addr73:
                                                                              }
                                                                              §§goto(addr804);
                                                                           }
                                                                           §§goto(addr655);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push(this.mTryToSpecial);
                                                                        }
                                                                        §§goto(addr815);
                                                                     }
                                                                     §§goto(addr595);
                                                                  }
                                                                  §§goto(addr790);
                                                               }
                                                               §§goto(addr532);
                                                            }
                                                            §§goto(addr530);
                                                         }
                                                         §§goto(addr820);
                                                      }
                                                      §§goto(addr739);
                                                   }
                                                   §§goto(addr106);
                                                }
                                                §§goto(addr482);
                                             }
                                             break;
                                          }
                                          continue loop0;
                                       }
                                       §§goto(addr679);
                                    }
                                    break;
                                 }
                                 §§goto(addr584);
                              }
                              §§goto(addr661);
                           }
                           §§goto(addr230);
                        }
                        §§goto(addr576);
                     }
                     break;
                  }
                  if(!(_loc4_ && this))
                  {
                     return;
                  }
                  loop9:
                  while(true)
                  {
                     §§push(this.§=n§);
                     loop10:
                     while(true)
                     {
                        if(!(_loc4_ && this))
                        {
                           if(_loc5_)
                           {
                              addr530:
                              while(true)
                              {
                                 §§push(this.§ !Z§);
                                 addr532:
                                 while(true)
                                 {
                                    §§push(§§pop().getSubAnimation(§§pop()));
                                    addr533:
                                    while(true)
                                    {
                                       §§push(Boolean(§§pop()));
                                       addr534:
                                       while(true)
                                       {
                                          if(_loc5_)
                                          {
                                             loop11:
                                             while(!§§pop())
                                             {
                                                §§push(this.mTryToFly);
                                                loop12:
                                                while(true)
                                                {
                                                   if(_loc5_ || _loc2_)
                                                   {
                                                      if(_loc5_ || _loc3_)
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                         if(_loc5_)
                                                         {
                                                            addr437:
                                                            if(!(_loc4_ && _loc1_))
                                                            {
                                                               if(!_loc4_)
                                                               {
                                                                  if(_loc5_)
                                                                  {
                                                                     if(_loc5_ || _loc2_)
                                                                     {
                                                                        §§push(§§pop());
                                                                        if(!(_loc4_ && this))
                                                                        {
                                                                           if(!_loc4_)
                                                                           {
                                                                              if(_loc5_)
                                                                              {
                                                                                 if(_loc5_ || this)
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(Boolean(§§pop()));
                                                                                       addr475:
                                                                                       loop68:
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc5_ || _loc1_)
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   if(_loc5_)
                                                                                                   {
                                                                                                      if(!(_loc4_ && _loc3_))
                                                                                                      {
                                                                                                         if(_loc5_)
                                                                                                         {
                                                                                                            break loop0;
                                                                                                         }
                                                                                                         loop73:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop());
                                                                                                            loop24:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               addr769:
                                                                                                               if(§§pop())
                                                                                                               {
                                                                                                                  loop16:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§pop();
                                                                                                                     addr771:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(this.mTryToFly);
                                                                                                                        addr730:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop() > 0);
                                                                                                                           loop17:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(_loc5_ || _loc1_)
                                                                                                                              {
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(Boolean(§§pop()));
                                                                                                                                    loop31:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(!(_loc4_ && _loc3_))
                                                                                                                                       {
                                                                                                                                          loop18:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop());
                                                                                                                                             loop32:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(!_loc5_)
                                                                                                                                                {
                                                                                                                                                   continue loop24;
                                                                                                                                                }
                                                                                                                                                if(_loc5_)
                                                                                                                                                {
                                                                                                                                                   addr754:
                                                                                                                                                   if(!§§pop())
                                                                                                                                                   {
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(§§pop())
                                                                                                                                                         {
                                                                                                                                                            if(!(_loc4_ && _loc3_))
                                                                                                                                                            {
                                                                                                                                                               addr719:
                                                                                                                                                               this.§';§ = this.§=n§.getSubAnimation(this.§'R§);
                                                                                                                                                               this.mIsScreaming = true;
                                                                                                                                                               this.mIsFlying = true;
                                                                                                                                                               addr821:
                                                                                                                                                               §§push(this.§';§);
                                                                                                                                                               if(_loc5_ || this)
                                                                                                                                                               {
                                                                                                                                                                  addr831:
                                                                                                                                                                  if(§§pop())
                                                                                                                                                                  {
                                                                                                                                                                     addr834:
                                                                                                                                                                     _loc1_ = this.§';§.getFrame(this.§%!H§);
                                                                                                                                                                     if(_loc5_ || _loc1_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(this.§"!P§);
                                                                                                                                                                        loop35:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(Boolean(§§pop()));
                                                                                                                                                                           loop36:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop());
                                                                                                                                                                              if(!(_loc4_ && _loc2_))
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(Boolean(§§pop()));
                                                                                                                                                                              }
                                                                                                                                                                              if(§§pop())
                                                                                                                                                                              {
                                                                                                                                                                                 loop37:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§pop();
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(Boolean(_loc1_));
                                                                                                                                                                                       if(_loc5_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!(_loc4_ && this))
                                                                                                                                                                                          {
                                                                                                                                                                                             while(§§pop())
                                                                                                                                                                                             {
                                                                                                                                                                                                loop40:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(this.§"!P§);
                                                                                                                                                                                                   addr991:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§pop().texture = _loc1_.texture;
                                                                                                                                                                                                      addr994:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(this.§"!P§);
                                                                                                                                                                                                         addr948:
                                                                                                                                                                                                         while(_loc5_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(_loc1_.pivotX);
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(-§§pop());
                                                                                                                                                                                                               addr953:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(this.§;!@§);
                                                                                                                                                                                                                  addr955:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(§§pop() - §§pop());
                                                                                                                                                                                                                     addr956:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§pop().x = §§pop();
                                                                                                                                                                                                                        continue loop40;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         continue loop35;
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             addr1010:
                                                                                                                                                                                             return;
                                                                                                                                                                                             addr987:
                                                                                                                                                                                          }
                                                                                                                                                                                          break;
                                                                                                                                                                                       }
                                                                                                                                                                                       continue loop37;
                                                                                                                                                                                    }
                                                                                                                                                                                    continue loop36;
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr987);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr910);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1010);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr834);
                                                                                                                                                               addr688:
                                                                                                                                                               addr726:
                                                                                                                                                               addr693:
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr834);
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            §§push(this.mTryToScream);
                                                                                                                                                            loop27:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(0);
                                                                                                                                                               loop15:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc5_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() > §§pop());
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc5_)
                                                                                                                                                                        {
                                                                                                                                                                           continue loop16;
                                                                                                                                                                        }
                                                                                                                                                                        §§push(Boolean(§§pop()));
                                                                                                                                                                        loop28:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           addr669:
                                                                                                                                                                           §§push(§§pop());
                                                                                                                                                                           if(_loc5_)
                                                                                                                                                                           {
                                                                                                                                                                              addr672:
                                                                                                                                                                              §§push(Boolean(§§pop()));
                                                                                                                                                                              if(!(_loc5_ || _loc3_))
                                                                                                                                                                              {
                                                                                                                                                                                 continue loop32;
                                                                                                                                                                              }
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 if(§§pop())
                                                                                                                                                                                 {
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!_loc5_)
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop31;
                                                                                                                                                                                       }
                                                                                                                                                                                       §§pop();
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(this.§=n§);
                                                                                                                                                                                          break loop10;
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    addr680:
                                                                                                                                                                                 }
                                                                                                                                                                                 addr635:
                                                                                                                                                                                 addr584:
                                                                                                                                                                                 loop14:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr636:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(§§pop())
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc5_)
                                                                                                                                                                                          {
                                                                                                                                                                                             this.§';§ = this.§=n§.getSubAnimation(this.§=m§);
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc5_ || _loc3_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc5_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      this.mIsScreaming = true;
                                                                                                                                                                                                      addr613:
                                                                                                                                                                                                      addr655:
                                                                                                                                                                                                   }
                                                                                                                                                                                                   else
                                                                                                                                                                                                   {
                                                                                                                                                                                                      loop26:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(this.§=n§);
                                                                                                                                                                                                         addr787:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(this.§>!&§);
                                                                                                                                                                                                            addr789:
                                                                                                                                                                                                            loop71:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(§§pop().getSubAnimation(§§pop()));
                                                                                                                                                                                                               addr790:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(Boolean(§§pop()));
                                                                                                                                                                                                                  if(!_loc4_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!(_loc5_ || _loc1_))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(Boolean(§§pop()));
                                                                                                                                                                                                                           addr816:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(§§pop());
                                                                                                                                                                                                                              addr817:
                                                                                                                                                                                                                              loop20:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                 addr818:
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(!§§pop())
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       break loop20;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§pop();
                                                                                                                                                                                                                                       continue loop26;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        addr815:
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(§§pop())
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           break loop18;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        addr764:
                                                                                                                                                                                                                        §§push(this.mTryToScream);
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(0);
                                                                                                                                                                                                                           addr765:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr766:
                                                                                                                                                                                                                              continue loop73;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr831);
                                                                                                                                                                                                                  continue loop71;
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr820:
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr831);
                                                                                                                                                                                                }
                                                                                                                                                                                                else
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§goto(addr688);
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             addr646:
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr834);
                                                                                                                                                                                       }
                                                                                                                                                                                       else
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(this.mTryToBlink);
                                                                                                                                                                                          if(!(_loc5_ || this))
                                                                                                                                                                                          {
                                                                                                                                                                                             continue loop27;
                                                                                                                                                                                          }
                                                                                                                                                                                          if(_loc5_ || this)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr576:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(0);
                                                                                                                                                                                                if(!(_loc4_ && _loc3_))
                                                                                                                                                                                                {
                                                                                                                                                                                                   break loop14;
                                                                                                                                                                                                }
                                                                                                                                                                                                continue loop15;
                                                                                                                                                                                             }
                                                                                                                                                                                             addr576:
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr764);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop() > §§pop());
                                                                                                                                                                                    addr585:
                                                                                                                                                                                    while(!(_loc4_ && _loc1_))
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!_loc4_)
                                                                                                                                                                                       {
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(Boolean(§§pop()));
                                                                                                                                                                                             addr595:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop());
                                                                                                                                                                                                addr596:
                                                                                                                                                                                                while(!_loc4_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!(_loc4_ && _loc2_))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(Boolean(§§pop()));
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!§§pop())
                                                                                                                                                                                                         {
                                                                                                                                                                                                            continue loop11;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§pop();
                                                                                                                                                                                                            break loop12;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         continue loop68;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr606:
                                                                                                                                                                                                   }
                                                                                                                                                                                                   else
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§goto(addr769);
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr672);
                                                                                                                                                                                                §§goto(addr437);
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          addr594:
                                                                                                                                                                                       }
                                                                                                                                                                                       else
                                                                                                                                                                                       {
                                                                                                                                                                                          addr755:
                                                                                                                                                                                          §§pop();
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!_loc4_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(this.§=n§);
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(this.§'R§);
                                                                                                                                                                                                   addr699:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§pop().getSubAnimation(§§pop()));
                                                                                                                                                                                                      addr700:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc5_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(Boolean(§§pop()));
                                                                                                                                                                                                            continue loop17;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr790);
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                addr697:
                                                                                                                                                                                             }
                                                                                                                                                                                             addr776:
                                                                                                                                                                                             if(_loc4_ && _loc1_)
                                                                                                                                                                                             {
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   this.mIsSpecial = true;
                                                                                                                                                                                                   §§goto(addr776);
                                                                                                                                                                                                }
                                                                                                                                                                                                addr811:
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr821);
                                                                                                                                                                                          }
                                                                                                                                                                                          addr756:
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    loop13:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc4_ && _loc1_)
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop28;
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr635);
                                                                                                                                                                                       addr627:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop13;
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr576);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr818);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr627);
                                                                                                                                                                        §§push(§§pop().getSubAnimation(§§pop()));
                                                                                                                                                                     }
                                                                                                                                                                     addr665:
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr765);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            addr661:
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr831);
                                                                                                                                                      }
                                                                                                                                                      addr710:
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr755);
                                                                                                                                                }
                                                                                                                                                §§goto(addr817);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          if(!_loc4_)
                                                                                                                                          {
                                                                                                                                             addr804:
                                                                                                                                             this.§';§ = this.§=n§.getSubAnimation(this.§>!&§);
                                                                                                                                             §§goto(addr811);
                                                                                                                                          }
                                                                                                                                          §§goto(addr834);
                                                                                                                                          addr747:
                                                                                                                                       }
                                                                                                                                       §§goto(addr819);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 addr739:
                                                                                                                              }
                                                                                                                              §§goto(addr816);
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr747);
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr665);
                                                                                                   }
                                                                                                   §§goto(addr831);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      addr377:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            if(!(_loc4_ && _loc3_))
                                                                                                            {
                                                                                                               if(_loc4_)
                                                                                                               {
                                                                                                                  break loop11;
                                                                                                               }
                                                                                                               if(_loc4_)
                                                                                                               {
                                                                                                                  break loop12;
                                                                                                               }
                                                                                                               if(!(_loc4_ && this))
                                                                                                               {
                                                                                                                  this.§';§ = this.§=n§.getSubAnimation(this.§0!?§);
                                                                                                                  loop82:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(_loc5_)
                                                                                                                     {
                                                                                                                        if(!(_loc4_ && _loc2_))
                                                                                                                        {
                                                                                                                           if(!_loc4_)
                                                                                                                           {
                                                                                                                              addr414:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 this.mIsFlying = true;
                                                                                                                                 if(!_loc4_)
                                                                                                                                 {
                                                                                                                                    if(_loc4_)
                                                                                                                                    {
                                                                                                                                       continue loop82;
                                                                                                                                    }
                                                                                                                                    if(!(_loc4_ && _loc1_))
                                                                                                                                    {
                                                                                                                                       §§goto(addr821);
                                                                                                                                       addr321:
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       §§goto(addr613);
                                                                                                                                    }
                                                                                                                                    §§goto(addr821);
                                                                                                                                 }
                                                                                                                                 §§goto(addr834);
                                                                                                                                 §§goto(addr414);
                                                                                                                              }
                                                                                                                              addr306:
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              §§goto(addr726);
                                                                                                                           }
                                                                                                                           §§goto(addr821);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           §§goto(addr646);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        addr517:
                                                                                                                     }
                                                                                                                     §§goto(addr821);
                                                                                                                  }
                                                                                                                  addr403:
                                                                                                               }
                                                                                                               §§goto(addr756);
                                                                                                            }
                                                                                                            §§goto(addr403);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            this.§';§ = this.§=n§;
                                                                                                            if(!(_loc4_ && _loc1_))
                                                                                                            {
                                                                                                               if(!(_loc4_ && _loc2_))
                                                                                                               {
                                                                                                                  if(false)
                                                                                                                  {
                                                                                                                     §§goto(addr306);
                                                                                                                  }
                                                                                                                  §§goto(addr821);
                                                                                                               }
                                                                                                               §§goto(addr771);
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   addr376:
                                                                                                }
                                                                                                §§goto(addr834);
                                                                                             }
                                                                                             addr482:
                                                                                          }
                                                                                          §§goto(addr606);
                                                                                       }
                                                                                    }
                                                                                    addr474:
                                                                                 }
                                                                                 §§goto(addr754);
                                                                              }
                                                                              §§goto(addr669);
                                                                           }
                                                                           §§goto(addr596);
                                                                        }
                                                                        §§goto(addr475);
                                                                     }
                                                                     §§goto(addr730);
                                                                  }
                                                                  §§goto(addr703);
                                                               }
                                                               §§goto(addr585);
                                                            }
                                                            §§goto(addr595);
                                                         }
                                                         §§goto(addr831);
                                                      }
                                                      §§goto(addr766);
                                                   }
                                                   §§goto(addr607);
                                                }
                                                continue loop9;
                                             }
                                             while(true)
                                             {
                                                if(_loc5_)
                                                {
                                                   this.§';§ = this.§=n§.getSubAnimation(this.§ !Z§);
                                                   if(_loc5_)
                                                   {
                                                      if(!(_loc4_ && _loc1_))
                                                      {
                                                         this.mIsBlinking = true;
                                                         §§goto(addr517);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr693);
                                                      }
                                                   }
                                                   §§goto(addr834);
                                                }
                                                else
                                                {
                                                   §§goto(addr683);
                                                }
                                             }
                                          }
                                          §§goto(addr680);
                                       }
                                    }
                                 }
                              }
                              addr530:
                           }
                           §§goto(addr697);
                        }
                        §§push(this.§=n§);
                        addr512:
                        break;
                        if(!_loc5_)
                        {
                           continue;
                        }
                        if(_loc5_ || this)
                        {
                           §§push(this.§0!?§);
                           if(_loc5_ || _loc3_)
                           {
                              if(_loc5_)
                              {
                                 if(!_loc4_)
                                 {
                                    §§push(§§pop().getSubAnimation(§§pop()));
                                    if(!_loc4_)
                                    {
                                       if(!(_loc4_ && this))
                                       {
                                          if(_loc5_)
                                          {
                                             §§push(Boolean(§§pop()));
                                             if(_loc5_ || _loc2_)
                                             {
                                                if(_loc5_)
                                                {
                                                   if(!(_loc4_ && this))
                                                   {
                                                      §§goto(addr376);
                                                   }
                                                   §§goto(addr534);
                                                }
                                                §§goto(addr420);
                                             }
                                             §§goto(addr831);
                                          }
                                          §§goto(addr700);
                                       }
                                       §§goto(addr627);
                                    }
                                    §§goto(addr533);
                                 }
                                 §§goto(addr789);
                              }
                              while(true)
                              {
                                 if(_loc5_ || _loc2_)
                                 {
                                    §§goto(addr626);
                                 }
                                 §§goto(addr699);
                              }
                              addr619:
                           }
                           §§goto(addr532);
                        }
                        §§goto(addr787);
                     }
                     while(true)
                     {
                        §§goto(addr619);
                     }
                  }
                  addr608:
                  §§goto(addr576);
               }
               while(true)
               {
                  §§pop();
                  if(!(_loc4_ && this))
                  {
                     §§goto(addr512);
                  }
                  §§goto(addr834);
               }
            }
            §§goto(addr530);
         }
         §§goto(addr719);
      }
      
      public function §9! §() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§'6§.visible = false;
         }
      }
      
      public function setDamagedFrame() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            §§push(this.§0!;§);
            if(!_loc3_)
            {
               if(§§pop() < 0)
               {
                  if(_loc2_)
                  {
                     this.§1]§();
                     addr34:
                     §§push(0);
                     if(_loc2_ || this)
                     {
                        §§push(int(§§pop()));
                     }
                  }
               }
               §§goto(addr34);
            }
            var _loc1_:* = §§pop();
            if(_loc2_ || this)
            {
               §§push(1);
               if(_loc2_)
               {
                  §§push(this.§,,§.§0o§);
                  if(_loc2_ || _loc1_)
                  {
                     §§push(§§pop() / this.§,,§.§]!3§);
                  }
                  §§push(§§pop() - §§pop());
                  if(!(_loc3_ && _loc2_))
                  {
                     §§push(§§pop() * this.§0!;§);
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
                     if(!(_loc3_ && this))
                     {
                        if(§§pop() != this.§,d§)
                        {
                           if(_loc2_ || this)
                           {
                              this.§,d§ = _loc1_;
                           }
                           while(true)
                           {
                              this.§%!H§ = this.§,d§;
                              do
                              {
                                 this.§<3§();
                              }
                              while(!(_loc2_ || _loc3_));
                              
                              if(_loc3_ && _loc2_)
                              {
                                 continue;
                              }
                              if(_loc3_)
                              {
                                 continue loop1;
                              }
                           }
                           addr115:
                        }
                        return;
                     }
                     break;
                  }
               }
            }
            §§goto(addr115);
         }
         §§goto(addr34);
      }
      
      public function §1]§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(this.§=n§)
            {
               if(!(_loc1_ && _loc1_))
               {
                  addr40:
                  this.§0!;§ = this.§=n§.getFrameCount();
               }
            }
            return;
         }
         §§goto(addr40);
      }
      
      public function §;!!§(param1:uint = 16777215, param2:int = 4, param3:int = 4) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param2))
         {
            this.§'Y§ = new GlowFilter();
         }
         loop0:
         while(true)
         {
            this.§'Y§.blurX = param2;
            loop1:
            do
            {
               this.§'Y§.blurY = param3;
               while(_loc4_)
               {
                  this.§'Y§.color = param1;
                  if(!(_loc5_ && param1))
                  {
                     continue loop1;
                  }
               }
               continue loop0;
            }
            while(_loc5_ && param3);
            
            return;
         }
      }
      
      public function §1!&§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            this.§'Y§ = null;
         }
      }
      
      public function §&!L§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:int = Math.min(8,Math.max(this.§,,§.§%W§(false),1));
         §§push(0);
         if(!(_loc4_ && this))
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         while(true)
         {
            §§push(_loc2_);
            if(!_loc4_)
            {
               if(_loc3_ || _loc1_)
               {
                  if(§§pop() >= _loc1_)
                  {
                     if(_loc3_ || _loc1_)
                     {
                        break;
                     }
                     loop1:
                     while(_loc4_ && _loc3_)
                     {
                        while(true)
                        {
                           _loc2_ = §§pop();
                           continue loop1;
                        }
                     }
                     continue;
                  }
                  this.§<!H§(_loc2_);
                  while(true)
                  {
                     §§push(_loc2_);
                     if(!_loc4_)
                     {
                        §§push(§§pop() + 1);
                     }
                     §§goto(addr90);
                  }
               }
               while(true)
               {
               }
            }
            §§goto(addr90);
         }
      }
      
      public function §,!<§(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = this.§9h§.length - 1;
         while(true)
         {
            §§push(_loc2_);
            if(_loc3_)
            {
               if(!(_loc4_ && _loc3_))
               {
                  if(§§pop() < 0)
                  {
                     if(!_loc4_)
                     {
                        break;
                     }
                     loop1:
                     while(true)
                     {
                        if(!_loc4_)
                        {
                           if(!_loc4_)
                           {
                              if(!(_loc4_ && this))
                              {
                                 break;
                              }
                              addr108:
                              while(true)
                              {
                                 if(this.§9h§[_loc2_].lifeTime < 0)
                                 {
                                    while(true)
                                    {
                                       this.§<!H§(_loc2_);
                                       addr98:
                                       while(true)
                                       {
                                       }
                                    }
                                    addr94:
                                 }
                                 while(true)
                                 {
                                    §§push(_loc2_);
                                    if(!(_loc3_ || param1))
                                    {
                                       continue loop1;
                                    }
                                    §§push(§§pop() - 1);
                                    while(true)
                                    {
                                       §§push(int(§§pop()));
                                       continue loop1;
                                    }
                                 }
                              }
                           }
                           §§goto(addr94);
                        }
                        §§goto(addr98);
                     }
                     continue;
                  }
                  this.§9h§[_loc2_].updateLifeTime(param1);
                  §§goto(addr108);
               }
               §§goto(addr62);
            }
            §§goto(addr63);
         }
      }
      
      private function §<!H§(param1:int) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_)
         {
            if(!this.§5D§)
            {
               if(_loc7_)
               {
                  §§goto(addr25);
               }
            }
            §§push(0);
            if(!(_loc6_ && this))
            {
               §§push(int(§§pop()));
            }
            var _loc2_:* = §§pop();
            if(!_loc6_)
            {
               if(Math.random() < 0.5)
               {
                  if(_loc7_)
                  {
                     §§push(1);
                     if(_loc7_)
                     {
                        §§push(int(§§pop()));
                     }
                     _loc2_ = §§pop();
                  }
               }
            }
            var _loc3_:§;K§ = this.§5D§.getFrame(_loc2_);
            §§push(100 + Math.random() * 100);
            if(_loc7_)
            {
               §§push(Number(§§pop()));
            }
            var _loc4_:* = §§pop();
            var _loc5_:§?Y§ = null;
            if(_loc7_)
            {
               if(param1 < this.§9h§.length)
               {
                  addr77:
                  _loc5_ = this.§9h§[param1];
                  if(_loc7_)
                  {
                     _loc5_.§6X§(_loc4_);
                     if(!(_loc6_ && param1))
                     {
                        _loc5_.§[B§(_loc3_.texture);
                        if(_loc7_)
                        {
                           addr136:
                           §§push(_loc5_.image);
                           if(_loc7_ || _loc3_)
                           {
                              §§push(_loc3_.pivotX);
                              if(_loc7_ || _loc2_)
                              {
                                 §§push(-§§pop());
                                 if(_loc7_)
                                 {
                                    §§push(this.§"!P§);
                                    if(!(_loc6_ && param1))
                                    {
                                       §§push(§§pop().width / 2);
                                       if(_loc7_ || param1)
                                       {
                                          §§push(§§pop() - §§pop());
                                          if(_loc7_ || _loc2_)
                                          {
                                             addr184:
                                             §§push(Math.random() * this.§"!P§.width);
                                             if(_loc7_ || _loc3_)
                                             {
                                                §§push(§§pop() + §§pop());
                                                if(_loc7_ || param1)
                                                {
                                                   §§pop().x = §§pop();
                                                   if(_loc7_ || param1)
                                                   {
                                                      addr228:
                                                      §§push(_loc5_.image);
                                                      §§push(-_loc3_.pivotY);
                                                      if(_loc7_)
                                                      {
                                                         addr233:
                                                         §§push(this.§"!P§.height / 2);
                                                         if(_loc7_ || param1)
                                                         {
                                                            addr254:
                                                            addr243:
                                                            §§push(§§pop() - §§pop());
                                                            if(!_loc6_)
                                                            {
                                                               addr246:
                                                               §§push(Math.random() * this.§"!P§.height);
                                                            }
                                                            §§pop().y = §§pop();
                                                            §§goto(addr255);
                                                         }
                                                         §§push(§§pop() + §§pop());
                                                      }
                                                   }
                                                   addr255:
                                                   return;
                                                }
                                                §§goto(addr254);
                                             }
                                             §§goto(addr243);
                                          }
                                          §§goto(addr246);
                                       }
                                       §§goto(addr254);
                                    }
                                    §§goto(addr233);
                                 }
                                 §§goto(addr184);
                              }
                           }
                           §§goto(addr228);
                           addr103:
                        }
                        §§goto(addr254);
                     }
                     §§goto(addr103);
                  }
                  §§goto(addr228);
               }
               else
               {
                  _loc5_ = new §?Y§(_loc3_.texture,_loc4_);
                  if(_loc7_)
                  {
                     this.§9h§.push(_loc5_);
                     if(!_loc6_)
                     {
                        this.§'6§.addChild(_loc5_.image);
                     }
                  }
               }
               §§goto(addr136);
            }
            §§goto(addr77);
         }
         addr25:
      }
      
      public function § !d§() : §-m§
      {
         return this.§"!P§;
      }
   }
}
