package §!+§
{
   import §'k§.§#k§;
   import §'k§.§2v§;
   import §'k§.§7x§;
   import §5!@§.Texture;
   import §7!0§.§<$§;
   import §9W§.§6!0§;
   import §9W§.Sprite;
   import §?b§.§7!,§;
   import §?b§.§;]§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import flash.filters.GlowFilter;
   
   public class override
   {
      
      public static const §`=§:Number = 1000;
      
      public static const §for §:Number = 500;
      
      private static var §2U§:Array = null;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §`=§ = 1000;
            if(_loc1_)
            {
               §for § = 500;
               if(_loc2_ && _loc2_)
               {
               }
               §§goto(addr46);
            }
            §2U§ = null;
         }
         addr46:
      }
      
      private var §?!5§:§>G§;
      
      public var §]0§:int;
      
      public var mW:Number;
      
      public var mH:Number;
      
      public var §79§:Number;
      
      public var §,X§:Number;
      
      public var §^!D§:int = -1;
      
      private var §+!3§:String;
      
      private var §;&§:§7x§;
      
      private var §"?§:§7x§;
      
      private var §15§:§6!0§;
      
      private var §%W§:Number = 0;
      
      private var §'S§:Number = 0;
      
      public var §%!-§:int = -1;
      
      private var §"+§:int = -1;
      
      private var §4!G§:int = 0;
      
      public var mTryToSpecial:Boolean = false;
      
      public var mIsSpecial:Boolean = false;
      
      public var §'X§:String = "special";
      
      public var mTryToFly:Boolean = false;
      
      public var mIsFlying:Boolean = false;
      
      public var §9+§:Boolean = false;
      
      public var mTryToScream:Number = 0;
      
      public var §3U§:String = "yell";
      
      public var mIsScreaming:Boolean = false;
      
      public var mTryToBlink:Number = 0;
      
      public var §?2§:String = "blink";
      
      public var mIsBlinking:Boolean = false;
      
      public var §8Q§:String = "fly";
      
      public var §6f§:String = "fly_yell";
      
      public var §>m§:GlowFilter;
      
      private var §8!'§:Vector.<§;]§>;
      
      private var §]$§:§7x§;
      
      private var §[0§:Sprite = null;
      
      private var §4!%§:§7!,§;
      
      public function override(param1:§>G§, param2:Sprite, param3:§7!,§)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         super();
         if(!(_loc4_ && this))
         {
            this.§4!%§ = param3;
            if(_loc5_ || this)
            {
               addr56:
               this.§?!5§ = param1;
               if(_loc5_ || param3)
               {
                  this.§+!3§ = this.§?!5§.§2Z§;
                  if(_loc4_)
                  {
                  }
                  §§goto(addr81);
               }
               this.§8!'§ = new Vector.<§;]§>();
               if(!_loc5_)
               {
               }
               §§goto(addr81);
            }
            addr81:
            this.§[0§ = param2;
            return;
         }
         §§goto(addr56);
      }
      
      public function dispose() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§;]§ = null;
         if(_loc3_)
         {
            this.§-c§();
            if(_loc3_ || _loc2_)
            {
               §§goto(addr41);
            }
            §§goto(addr44);
         }
         addr41:
         if(this.§8!'§)
         {
            addr44:
            while(this.§8!'§.length > 0)
            {
               _loc1_ = this.§8!'§.pop();
               if(_loc3_ || _loc3_)
               {
                  _loc1_.dispose();
               }
            }
            if(!(_loc2_ && _loc3_))
            {
               this.§8!'§ = null;
            }
         }
      }
      
      public function §1!!§(param1:int, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            this.mW = param3;
            if(!_loc5_)
            {
               this.mH = param4;
               if(!_loc5_)
               {
                  addr49:
                  this.§^!D§ = param1;
                  if(_loc6_ || param3)
                  {
                     this.§,X§ = param2;
                     if(_loc6_ || param2)
                     {
                        addr69:
                        this.§@!9§();
                     }
                  }
               }
               return;
            }
            §§goto(addr49);
         }
         §§goto(addr69);
      }
      
      public function §0d§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(param1)
         {
            this.§79§ = 1;
            if(!(_loc3_ && _loc2_))
            {
               return;
            }
         }
         §§push(this);
         §§push(this.mW);
         if(!(_loc3_ && _loc3_))
         {
            §§push(§§pop() / this.mH);
         }
         §§pop().§79§ = §§pop();
         if(!(_loc3_ && param1))
         {
            if(this.§79§ < 1)
            {
               if(!(_loc3_ && this))
               {
                  §§goto(addr81);
               }
            }
            §§goto(addr94);
         }
         addr81:
         this.§79§ = 1 / this.§79§;
         if(!(_loc3_ && this))
         {
            addr94:
            this.§79§ = Math.min(11,this.§79§);
         }
      }
      
      public function § B§(param1:§#k§) : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§2v§ = null;
         var _loc3_:Texture = null;
         if(_loc5_)
         {
            §§push(this.§?!5§.isGround());
            if(_loc5_)
            {
               if(§§pop())
               {
                  if(_loc5_ || this)
                  {
                     §§goto(addr38);
                  }
               }
               else
               {
                  addr41:
                  this.§]$§ = param1.§`l§("SPARKLES");
                  if(!_loc6_)
                  {
                     this.§;&§ = param1.§`l§(this.§+!3§);
                     if(!(_loc6_ && _loc2_))
                     {
                        addr61:
                        this.§"?§ = this.§;&§;
                     }
                     var _loc4_:* = Number(1);
                     if(!_loc6_)
                     {
                        §§push(this.§"?§);
                        if(_loc5_)
                        {
                           if(§§pop())
                           {
                              addr77:
                              _loc2_ = this.§"?§.getFrame(0);
                              addr75:
                              if(_loc5_ || _loc3_)
                              {
                                 §§push(_loc2_.scale);
                                 if(_loc5_ || param1)
                                 {
                                    §§push(Number(§§pop()));
                                 }
                                 _loc4_ = §§pop();
                              }
                              _loc3_ = _loc2_.texture;
                              if(_loc5_)
                              {
                                 addr112:
                                 this.§15§ = new §6!0§(_loc3_);
                                 if(!(_loc6_ && _loc2_))
                                 {
                                    if(_loc2_)
                                    {
                                       §§push(this.§15§);
                                       if(_loc5_ || _loc2_)
                                       {
                                          §§push(_loc2_.pivotX);
                                          if(_loc5_)
                                          {
                                             §§push(-§§pop());
                                             if(_loc5_ || param1)
                                             {
                                                §§pop().x = §§pop();
                                                if(_loc5_ || param1)
                                                {
                                                   addr165:
                                                   §§push(this.§15§);
                                                   if(!(_loc6_ && _loc2_))
                                                   {
                                                      addr176:
                                                      §§push(-_loc2_.pivotY);
                                                      if(!_loc6_)
                                                      {
                                                         §§pop().y = §§pop();
                                                         if(_loc5_ || param1)
                                                         {
                                                            addr228:
                                                            §§push(this.§15§);
                                                            if(!(_loc6_ && param1))
                                                            {
                                                               addr238:
                                                               §§pop().scaleX = _loc4_;
                                                               addr237:
                                                               if(_loc5_ || _loc3_)
                                                               {
                                                                  addr259:
                                                                  this.§15§.scaleY = _loc4_;
                                                                  addr258:
                                                               }
                                                               §§goto(addr274);
                                                            }
                                                            §§goto(addr258);
                                                         }
                                                         this.mW = this.§15§.width / 2;
                                                         this.mH = this.§15§.height / 2;
                                                         §§goto(addr274);
                                                      }
                                                   }
                                                   §§goto(addr259);
                                                }
                                                addr274:
                                                this.§[0§.addChild(this.§15§);
                                                return true;
                                             }
                                             §§goto(addr238);
                                          }
                                       }
                                       §§goto(addr176);
                                    }
                                    else
                                    {
                                       §§push(this.§15§);
                                       if(!(_loc6_ && param1))
                                       {
                                          §§push(this.§15§);
                                          if(_loc5_)
                                          {
                                             §§push(-§§pop().width);
                                             §§push(2);
                                             if(_loc5_ || this)
                                             {
                                                §§pop().x = §§pop() / §§pop();
                                                if(_loc5_)
                                                {
                                                   §§push(this.§15§);
                                                   if(_loc5_)
                                                   {
                                                      addr224:
                                                      §§push(-this.§15§.height / 2);
                                                      if(_loc5_)
                                                      {
                                                         §§pop().y = §§pop();
                                                         §§goto(addr228);
                                                      }
                                                   }
                                                }
                                                §§goto(addr259);
                                             }
                                          }
                                          §§goto(addr224);
                                       }
                                    }
                                    §§goto(addr237);
                                 }
                                 §§goto(addr259);
                              }
                              §§goto(addr165);
                           }
                           else
                           {
                              _loc3_ = this.§4!%§.textureManager.§"h§();
                           }
                           §§goto(addr112);
                        }
                        §§goto(addr77);
                     }
                     §§goto(addr75);
                  }
               }
               §§goto(addr61);
            }
            addr38:
            return false;
         }
         §§goto(addr41);
      }
      
      public function § 2§(param1:§<$§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:Array = null;
         var _loc3_:b2Vec2 = null;
         §§push(param1.§2! §);
         if(_loc6_)
         {
            var _loc4_:* = §§pop();
            if(!_loc5_)
            {
               §§push(§<$§.§]M§);
               if(!_loc5_)
               {
                  §§push(_loc4_);
                  if(!_loc5_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!(_loc5_ && _loc3_))
                        {
                           addr110:
                           §§push(0);
                           if(_loc5_ && param1)
                           {
                              addr148:
                           }
                        }
                        else
                        {
                           addr140:
                           §§push(1);
                           if(!(_loc5_ && param1))
                           {
                              §§goto(addr148);
                           }
                        }
                        addr154:
                        switch(§§pop())
                        {
                           case 0:
                              _loc2_ = param1.§]X§();
                              _loc3_ = _loc2_[0];
                              if(_loc6_ || this)
                              {
                                 §§push(this);
                                 §§push(_loc3_.x);
                                 if(!_loc5_)
                                 {
                                    §§push(§§pop() / §7!,§.§ '§);
                                 }
                                 §§pop().§%W§ = §§pop();
                                 if(!_loc6_)
                                 {
                                 }
                                 break;
                              }
                              §§push(this);
                              §§push(_loc3_.y);
                              if(_loc6_ || _loc3_)
                              {
                                 §§push(§§pop() / §7!,§.§ '§);
                              }
                              §§pop().§'S§ = §§pop();
                              if(!(_loc5_ && this))
                              {
                                 addr155:
                                 this.§@3§();
                                 break;
                              }
                              break;
                           case 1:
                              §§goto(addr155);
                           default:
                              §§goto(addr155);
                        }
                        return;
                        addr153:
                     }
                     else
                     {
                        §§push(§<$§.§[!"§);
                        if(!(_loc5_ && _loc2_))
                        {
                           addr139:
                           if(§§pop() === _loc4_)
                           {
                              §§goto(addr140);
                           }
                           else
                           {
                              §§push(2);
                           }
                           §§goto(addr153);
                        }
                     }
                     §§goto(addr148);
                  }
               }
               §§goto(addr139);
            }
            §§goto(addr110);
         }
         §§goto(addr154);
      }
      
      public function §4p§() : Array
      {
         return §'H§.§4p§(null,this.§?!5§.§]!+§());
      }
      
      public function §,y§() : Array
      {
         return §'H§.§,y§(null,this.§?!5§.§]!+§());
      }
      
      public function §4_§() : Array
      {
         return §'H§.§4_§(null);
      }
      
      public function §@!9§() : void
      {
      }
      
      public function §9X§(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            this.§[0§.scaleX = this.§[0§.scaleY = param1;
         }
      }
      
      public function §@3§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§2v§ = null;
         §§push(this.§;&§);
         if(!_loc5_)
         {
            if(!§§pop())
            {
               return;
            }
            if(this.§9+§)
            {
               this.§4!G§ = 1;
               addr505:
               §§push(this.§"?§);
               if(_loc4_)
               {
                  if(§§pop())
                  {
                     addr512:
                     _loc1_ = this.§"?§.getFrame(this.§4!G§);
                     if(!_loc5_)
                     {
                        §§push(this.§15§);
                        if(!(_loc5_ && _loc3_))
                        {
                           §§push(Boolean(§§pop()));
                           if(_loc4_)
                           {
                              if(§§pop())
                              {
                                 if(_loc4_ || _loc1_)
                                 {
                                    §§pop();
                                    §§push(Boolean(_loc1_));
                                 }
                              }
                           }
                           if(§§pop())
                           {
                              §§push(this.§15§);
                              if(_loc4_ || _loc1_)
                              {
                                 §§pop().texture = _loc1_.texture;
                                 if(_loc4_ || _loc2_)
                                 {
                                    §§push(this.§15§);
                                    if(_loc4_)
                                    {
                                       §§push(_loc1_.pivotX);
                                       if(_loc4_)
                                       {
                                          §§push(-§§pop());
                                          if(!_loc5_)
                                          {
                                             §§push(this.§%W§);
                                             if(!(_loc5_ && _loc3_))
                                             {
                                                §§push(§§pop() - §§pop());
                                                if(_loc4_)
                                                {
                                                   §§pop().x = §§pop();
                                                   if(!_loc5_)
                                                   {
                                                      §§push(this.§15§);
                                                      if(_loc4_)
                                                      {
                                                         addr595:
                                                         §§push(-_loc1_.pivotY);
                                                         if(_loc4_)
                                                         {
                                                            §§goto(addr600);
                                                         }
                                                         §§goto(addr618);
                                                      }
                                                      §§goto(addr642);
                                                   }
                                                }
                                                §§goto(addr618);
                                             }
                                             addr600:
                                             §§push(§§pop() - this.§'S§);
                                             if(!(_loc5_ && _loc3_))
                                             {
                                                addr618:
                                                §§pop().y = §§pop();
                                                if(_loc4_ || _loc2_)
                                                {
                                                   §§push(this.§15§);
                                                   if(_loc4_ || _loc3_)
                                                   {
                                                      §§push(_loc1_.scale);
                                                      if(!_loc5_)
                                                      {
                                                         addr639:
                                                         §§pop().scaleX = §§pop();
                                                         addr642:
                                                         §§push(this.§15§);
                                                         §§push(_loc1_.scale);
                                                      }
                                                   }
                                                   §§goto(addr642);
                                                }
                                                §§goto(addr645);
                                             }
                                             §§pop().scaleY = §§pop();
                                             addr645:
                                             return;
                                          }
                                          §§goto(addr639);
                                       }
                                       §§goto(addr595);
                                    }
                                 }
                                 §§goto(addr639);
                              }
                           }
                           §§goto(addr618);
                        }
                        §§goto(addr595);
                     }
                     §§goto(addr639);
                  }
                  §§goto(addr618);
               }
               §§goto(addr512);
            }
            else
            {
               §§push(this.§?!5§);
               if(!(_loc5_ && this))
               {
                  §§push(§§pop().getSpecialAnimationProgress());
                  if(!_loc5_)
                  {
                     §§push(0);
                     if(!_loc5_)
                     {
                        §§push(§§pop() >= §§pop());
                        if(§§pop() >= §§pop())
                        {
                           if(_loc4_ || this)
                           {
                              §§pop();
                              if(!(_loc5_ && this))
                              {
                                 §§push(this.§;&§);
                                 §§push(this.§'X§);
                                 if(_loc4_)
                                 {
                                    §§push(§§pop().getSubAnimation(§§pop()));
                                    if(_loc4_ || _loc1_)
                                    {
                                       addr82:
                                       if(§§pop())
                                       {
                                          this.§"?§ = this.§;&§.getSubAnimation(this.§'X§);
                                          this.§4!G§ = this.§"?§.getFrameCount() * this.§?!5§.getSpecialAnimationProgress();
                                          if(_loc4_ || this)
                                          {
                                             §§push(this.§4!G§ == this.§"?§.getFrameCount() - 1);
                                             §§push(this.§4!G§ == this.§"?§.getFrameCount() - 1);
                                             if(!_loc5_)
                                             {
                                                if(§§pop())
                                                {
                                                   if(_loc4_)
                                                   {
                                                      §§pop();
                                                      addr122:
                                                      §§push(this.§?!5§.getSpecialAnimationTimeLeft());
                                                      if(!(_loc5_ && _loc1_))
                                                      {
                                                         §§push(100);
                                                         if(_loc4_ || _loc3_)
                                                         {
                                                            §§push(§§pop() > §§pop());
                                                            if(!(_loc5_ && _loc1_))
                                                            {
                                                               addr146:
                                                               if(§§pop())
                                                               {
                                                                  if(_loc4_)
                                                                  {
                                                                     var _loc2_:*;
                                                                     §§push((_loc2_ = this).§4!G§);
                                                                     if(!(_loc5_ && this))
                                                                     {
                                                                        §§push(§§pop() - 1);
                                                                     }
                                                                     var _loc3_:* = §§pop();
                                                                     if(!(_loc5_ && _loc2_))
                                                                     {
                                                                        _loc2_.§4!G§ = _loc3_;
                                                                     }
                                                                     if(!_loc4_)
                                                                     {
                                                                        addr383:
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     addr456:
                                                                     this.mIsBlinking = true;
                                                                  }
                                                                  §§goto(addr505);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               addr266:
                                                               §§pop();
                                                               if(_loc4_ || this)
                                                               {
                                                                  addr274:
                                                                  §§push(this.§;&§);
                                                                  §§push(this.§6f§);
                                                                  if(!_loc5_)
                                                                  {
                                                                     addr280:
                                                                     §§push(§§pop().getSubAnimation(§§pop()));
                                                                     if(_loc4_ || _loc2_)
                                                                     {
                                                                        addr289:
                                                                        if(§§pop())
                                                                        {
                                                                           addr290:
                                                                           this.§"?§ = this.§;&§.getSubAnimation(this.§6f§);
                                                                           if(!_loc5_)
                                                                           {
                                                                              addr299:
                                                                              this.mIsScreaming = true;
                                                                              if(_loc4_ || _loc3_)
                                                                              {
                                                                                 this.mIsFlying = true;
                                                                                 if(!(_loc5_ && _loc3_))
                                                                                 {
                                                                                    §§goto(addr505);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr495:
                                                                                    this.mIsFlying = true;
                                                                                 }
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              addr486:
                                                                              this.§"?§ = this.§;&§.getSubAnimation(this.§8Q§);
                                                                              if(_loc4_)
                                                                              {
                                                                                 §§goto(addr495);
                                                                              }
                                                                           }
                                                                           §§goto(addr505);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push(this.mTryToScream);
                                                                           if(!(_loc5_ && this))
                                                                           {
                                                                              addr339:
                                                                              §§push(0);
                                                                              if(_loc4_ || _loc3_)
                                                                              {
                                                                                 §§push(§§pop() > §§pop());
                                                                                 §§push(§§pop() > §§pop());
                                                                                 if(!_loc5_)
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       addr352:
                                                                                       §§pop();
                                                                                       §§push(this.§;&§);
                                                                                       §§push(this.§3U§);
                                                                                       if(_loc4_)
                                                                                       {
                                                                                          §§push(§§pop().getSubAnimation(§§pop()));
                                                                                          if(!_loc5_)
                                                                                          {
                                                                                             addr362:
                                                                                             §§push(Boolean(§§pop()));
                                                                                             if(!_loc4_)
                                                                                             {
                                                                                             }
                                                                                             addr441:
                                                                                             if(§§pop())
                                                                                             {
                                                                                                this.§"?§ = this.§;&§.getSubAnimation(this.§?2§);
                                                                                                if(!(_loc5_ && _loc3_))
                                                                                                {
                                                                                                   §§goto(addr456);
                                                                                                }
                                                                                                §§goto(addr505);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§push(this.mTryToFly);
                                                                                                if(!_loc5_)
                                                                                                {
                                                                                                   §§push(Boolean(§§pop()));
                                                                                                   if(!_loc5_)
                                                                                                   {
                                                                                                      addr468:
                                                                                                      addr467:
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                      }
                                                                                                      addr483:
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         if(_loc4_)
                                                                                                         {
                                                                                                            §§goto(addr486);
                                                                                                         }
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         this.§"?§ = this.§;&§;
                                                                                                         if(!_loc5_)
                                                                                                         {
                                                                                                            §§goto(addr505);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr512);
                                                                                                   }
                                                                                                   §§pop();
                                                                                                   if(_loc4_ || _loc1_)
                                                                                                   {
                                                                                                      addr482:
                                                                                                      §§push(Boolean(this.§;&§.getSubAnimation(this.§8Q§)));
                                                                                                   }
                                                                                                   §§goto(addr512);
                                                                                                }
                                                                                                §§goto(addr483);
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr482);
                                                                                    }
                                                                                    addr365:
                                                                                    if(§§pop())
                                                                                    {
                                                                                       this.§"?§ = this.§;&§.getSubAnimation(this.§3U§);
                                                                                       this.mIsScreaming = true;
                                                                                       if(!(_loc5_ && _loc3_))
                                                                                       {
                                                                                          §§goto(addr383);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr486);
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr387:
                                                                                       §§push(this.mTryToBlink > 0);
                                                                                       if(!(_loc5_ && _loc2_))
                                                                                       {
                                                                                          §§push(§§pop());
                                                                                          if(_loc4_)
                                                                                          {
                                                                                             if(§§pop())
                                                                                             {
                                                                                                §§pop();
                                                                                                if(_loc4_ || _loc3_)
                                                                                                {
                                                                                                   §§push(this.§;&§);
                                                                                                   if(_loc4_ || _loc2_)
                                                                                                   {
                                                                                                      §§push(this.§?2§);
                                                                                                      if(_loc4_ || this)
                                                                                                      {
                                                                                                         §§push(§§pop().getSubAnimation(§§pop()));
                                                                                                         if(_loc4_ || _loc3_)
                                                                                                         {
                                                                                                            addr433:
                                                                                                            §§push(Boolean(§§pop()));
                                                                                                            if(_loc4_ || _loc2_)
                                                                                                            {
                                                                                                               §§goto(addr441);
                                                                                                            }
                                                                                                            §§goto(addr483);
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr482);
                                                                                             }
                                                                                             §§goto(addr441);
                                                                                          }
                                                                                          §§goto(addr468);
                                                                                       }
                                                                                       §§goto(addr467);
                                                                                    }
                                                                                    §§goto(addr512);
                                                                                 }
                                                                                 §§goto(addr468);
                                                                              }
                                                                           }
                                                                           §§goto(addr387);
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr482);
                                                               }
                                                               §§goto(addr299);
                                                            }
                                                            §§goto(addr505);
                                                         }
                                                         §§goto(addr387);
                                                      }
                                                      §§goto(addr339);
                                                   }
                                                   §§goto(addr352);
                                                }
                                                §§goto(addr146);
                                             }
                                             else
                                             {
                                                addr249:
                                                if(§§pop())
                                                {
                                                   if(!(_loc5_ && _loc2_))
                                                   {
                                                      §§pop();
                                                      §§push(this.mTryToFly);
                                                      if(!_loc4_)
                                                      {
                                                      }
                                                      addr264:
                                                      if(§§pop())
                                                      {
                                                         §§goto(addr266);
                                                      }
                                                      §§goto(addr289);
                                                   }
                                                   §§push(§§pop() > 0);
                                                }
                                                §§goto(addr264);
                                             }
                                          }
                                          §§goto(addr290);
                                       }
                                       else
                                       {
                                          §§push(this.mTryToSpecial);
                                          if(_loc4_)
                                          {
                                             §§push(Boolean(§§pop()));
                                             if(!(_loc5_ && _loc1_))
                                             {
                                                if(§§pop())
                                                {
                                                   if(!(_loc5_ && _loc3_))
                                                   {
                                                      §§pop();
                                                      §§push(this.§;&§);
                                                      if(!_loc5_)
                                                      {
                                                         §§push(this.§'X§);
                                                         if(_loc4_ || _loc2_)
                                                         {
                                                            §§push(§§pop().getSubAnimation(§§pop()));
                                                            if(_loc4_ || _loc3_)
                                                            {
                                                               addr221:
                                                               if(§§pop())
                                                               {
                                                                  this.§"?§ = this.§;&§.getSubAnimation(this.§'X§);
                                                                  if(!(_loc5_ && _loc3_))
                                                                  {
                                                                     this.mIsSpecial = true;
                                                                     §§goto(addr505);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr274);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§push(this.mTryToScream);
                                                                  if(!_loc5_)
                                                                  {
                                                                     §§push(0);
                                                                     if(!_loc5_)
                                                                     {
                                                                        addr247:
                                                                        §§goto(addr249);
                                                                        §§push(§§pop() > §§pop());
                                                                        §§push(§§pop() > §§pop());
                                                                     }
                                                                  }
                                                                  §§goto(addr387);
                                                               }
                                                               §§goto(addr387);
                                                            }
                                                            §§goto(addr433);
                                                         }
                                                         §§goto(addr280);
                                                      }
                                                      §§goto(addr352);
                                                   }
                                                   §§goto(addr365);
                                                }
                                                §§goto(addr221);
                                             }
                                             §§goto(addr365);
                                          }
                                       }
                                       §§goto(addr266);
                                    }
                                    §§goto(addr362);
                                 }
                                 §§goto(addr482);
                              }
                              §§goto(addr486);
                           }
                           §§goto(addr362);
                        }
                        §§goto(addr82);
                     }
                     §§goto(addr247);
                  }
                  §§goto(addr387);
               }
               §§goto(addr122);
            }
         }
         §§goto(addr274);
      }
      
      public function §#_§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§[0§.visible = false;
         }
      }
      
      public function setDamagedFrame() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.§%!-§);
            if(!(_loc3_ && _loc1_))
            {
               if(§§pop() < 0)
               {
                  if(_loc2_)
                  {
                     this.§^!7§();
                     addr33:
                     §§push(0);
                  }
               }
               §§goto(addr33);
            }
            var _loc1_:* = §§pop();
            if(_loc2_ || _loc3_)
            {
               §§push(1);
               if(_loc2_ || _loc2_)
               {
                  §§push(this.§?!5§.§`0§);
                  if(!(_loc3_ && this))
                  {
                     §§push(§§pop() / this.§?!5§.§ !,§);
                  }
                  §§push(§§pop() - §§pop());
                  if(!_loc3_)
                  {
                     §§push(§§pop() * this.§%!-§);
                  }
                  §§push(int(§§pop()));
                  if(_loc2_ || _loc1_)
                  {
                     addr98:
                     _loc1_ = §§pop();
                     if(!(_loc3_ && this))
                     {
                        §§goto(addr107);
                     }
                     §§goto(addr117);
                  }
                  addr107:
                  if(_loc1_ != this.§"+§)
                  {
                     if(!_loc3_)
                     {
                        this.§"+§ = _loc1_;
                        if(_loc2_)
                        {
                           addr117:
                           this.§4!G§ = this.§"+§;
                           if(_loc2_)
                           {
                              addr123:
                              this.§@3§();
                           }
                        }
                        §§goto(addr123);
                     }
                     §§goto(addr117);
                  }
                  return;
               }
               §§goto(addr98);
            }
            §§goto(addr123);
         }
         §§goto(addr33);
      }
      
      public function §^!7§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            if(this.§;&§)
            {
               if(_loc2_)
               {
                  this.§%!-§ = this.§;&§.getFrameCount();
               }
            }
         }
      }
      
      public function §7!$§(param1:uint = 16777215, param2:int = 4, param3:int = 4) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            this.§>m§ = new GlowFilter();
            if(!(_loc4_ && param1))
            {
               this.§>m§.blurX = param2;
               if(_loc5_)
               {
                  addr46:
                  this.§>m§.blurY = param3;
                  if(_loc5_)
                  {
                     addr52:
                     this.§>m§.color = param1;
                  }
               }
               return;
            }
            §§goto(addr46);
         }
         §§goto(addr52);
      }
      
      public function §-c§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§>m§ = null;
         }
      }
      
      public function §<!8§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:int = Math.min(8,Math.max(this.§?!5§.§[_§(false),1));
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            this.§%v§(_loc2_);
            if(!_loc4_)
            {
               _loc2_++;
               if(!_loc3_)
               {
                  break;
               }
            }
         }
      }
      
      public function §]i§(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = int(this.§8!'§.length - 1);
         loop0:
         while(true)
         {
            §§push(_loc2_);
            while(§§pop() >= 0)
            {
               this.§8!'§[_loc2_].updateLifeTime(param1);
               if(!(_loc3_ && _loc3_))
               {
                  if(this.§8!'§[_loc2_].lifeTime < 0)
                  {
                     if(!_loc3_)
                     {
                        this.§%v§(_loc2_);
                        if(_loc3_)
                        {
                        }
                        break;
                     }
                     break;
                  }
                  §§push(_loc2_);
                  if(_loc4_)
                  {
                     §§push(§§pop() - 1);
                     if(!(_loc4_ || param1))
                     {
                        continue;
                     }
                  }
                  _loc2_ = §§pop();
                  if(!_loc4_)
                  {
                     break;
                  }
               }
               continue loop0;
            }
            return;
         }
      }
      
      private function §%v§(param1:int) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!(_loc7_ && this))
         {
            if(!this.§]$§)
            {
               if(!_loc7_)
               {
                  return;
               }
            }
         }
         var _loc2_:int = 0;
         if(!(_loc7_ && param1))
         {
            if(Math.random() < 0.5)
            {
               if(!(_loc7_ && param1))
               {
                  addr49:
                  _loc2_ = 1;
               }
            }
            var _loc3_:§2v§ = this.§]$§.getFrame(_loc2_);
            §§push(100 + Math.random() * 100);
            if(_loc6_ || _loc3_)
            {
               §§push(Number(§§pop()));
            }
            var _loc4_:* = §§pop();
            var _loc5_:§;]§ = null;
            if(_loc6_ || this)
            {
               if(param1 < this.§8!'§.length)
               {
                  addr87:
                  (_loc5_ = this.§8!'§[param1]).§6!#§(_loc4_);
                  if(_loc6_)
                  {
                     _loc5_.§;a§(_loc3_.texture);
                     if(_loc6_ || _loc2_)
                     {
                        addr150:
                        §§push(_loc5_.image);
                        if(_loc6_)
                        {
                           §§push(_loc3_.pivotX);
                           if(!(_loc7_ && _loc2_))
                           {
                              §§push(-§§pop());
                              if(!_loc7_)
                              {
                                 §§push(this.§15§);
                                 if(!_loc7_)
                                 {
                                    §§push(§§pop().width / 2);
                                    if(!(_loc7_ && _loc3_))
                                    {
                                       §§push(§§pop() - §§pop());
                                       if(_loc6_ || _loc2_)
                                       {
                                          §§push(Math.random() * this.§15§.width);
                                          if(!_loc7_)
                                          {
                                             addr196:
                                             §§push(§§pop() + §§pop());
                                             if(!_loc7_)
                                             {
                                                §§pop().x = §§pop();
                                                if(_loc6_ || this)
                                                {
                                                   addr221:
                                                   §§push(_loc5_.image);
                                                   §§push(-_loc3_.pivotY);
                                                   if(_loc6_)
                                                   {
                                                      addr224:
                                                      addr226:
                                                      §§push(this.§15§.height / 2);
                                                      if(_loc6_ || _loc2_)
                                                      {
                                                         §§push(§§pop() - §§pop());
                                                         if(!_loc6_)
                                                         {
                                                         }
                                                         §§goto(addr246);
                                                      }
                                                      addr245:
                                                      addr246:
                                                      §§pop().y = §§pop();
                                                      return;
                                                      §§push(§§pop() + §§pop());
                                                   }
                                                   §§goto(addr245);
                                                   §§push(Math.random() * this.§15§.height);
                                                }
                                                §§goto(addr246);
                                             }
                                          }
                                          §§goto(addr224);
                                       }
                                       §§goto(addr246);
                                    }
                                    §§goto(addr196);
                                 }
                                 §§goto(addr226);
                              }
                              §§goto(addr246);
                           }
                        }
                        §§goto(addr221);
                     }
                     §§goto(addr246);
                  }
                  §§goto(addr221);
               }
               else
               {
                  _loc5_ = new §;]§(_loc3_.texture,_loc4_);
                  if(!(_loc7_ && param1))
                  {
                     this.§8!'§.push(_loc5_);
                     if(_loc6_ || this)
                     {
                        this.§[0§.addChild(_loc5_.image);
                     }
                  }
               }
               §§goto(addr150);
            }
            §§goto(addr87);
         }
         §§goto(addr49);
      }
      
      public function §'o§() : §6!0§
      {
         return this.§15§;
      }
   }
}
