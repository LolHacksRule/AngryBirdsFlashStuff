package §^!A§
{
   import §&o§.§?T§;
   import §&o§.Sprite;
   import §0! §.Texture;
   import §6A§.§ !§;
   import §6A§.§3;§;
   import §9K§.§!?§;
   import §9K§.§"!?§;
   import §9K§.§,z§;
   import §^!L§.§"c§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import flash.filters.GlowFilter;
   
   public class §[!J§
   {
      
      public static const §`"§:Number = 1000;
      
      public static const §4!-§:Number = 500;
      
      private static var §3!$§:Array = null;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §`"§ = 1000;
            if(_loc2_)
            {
               addr34:
               §4!-§ = 500;
               if(_loc2_ || _loc2_)
               {
                  §3!$§ = null;
               }
            }
            return;
         }
         §§goto(addr34);
      }
      
      private var § ?§:§;!%§;
      
      public var §%s§:int;
      
      public var mW:Number;
      
      public var mH:Number;
      
      public var §=4§:Number;
      
      public var §2!;§:Number;
      
      public var §>c§:int = -1;
      
      private var §?Y§:String;
      
      private var §>!%§:§!?§;
      
      private var §5F§:§!?§;
      
      private var §+J§:§?T§;
      
      private var §;!N§:Number = 0;
      
      private var § T§:Number = 0;
      
      public var §>P§:int = -1;
      
      private var §2e§:int = -1;
      
      private var §8!4§:int = 0;
      
      public var mTryToSpecial:Boolean = false;
      
      public var mIsSpecial:Boolean = false;
      
      public var §@M§:String = "special";
      
      public var mTryToFly:Boolean = false;
      
      public var mIsFlying:Boolean = false;
      
      public var §`4§:Boolean = false;
      
      public var mTryToScream:Number = 0;
      
      public var §<r§:String = "yell";
      
      public var mIsScreaming:Boolean = false;
      
      public var mTryToBlink:Number = 0;
      
      public var §[B§:String = "blink";
      
      public var mIsBlinking:Boolean = false;
      
      public var §!!8§:String = "fly";
      
      public var §!"§:String = "fly_yell";
      
      public var §1=§:GlowFilter;
      
      private var §+!;§:Vector.<§3;§>;
      
      private var §^!E§:§!?§;
      
      private var §,!7§:Sprite = null;
      
      private var §?V§:§ !§;
      
      public function §[!J§(param1:§;!%§, param2:Sprite, param3:§ !§)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && this))
         {
            super();
         }
         this.§?V§ = param3;
         if(!_loc4_)
         {
            this.§ ?§ = param1;
            if(_loc5_)
            {
               this.§?Y§ = this.§ ?§.§1>§;
               this.§+!;§ = new Vector.<§3;§>();
               this.§,!7§ = param2;
            }
         }
      }
      
      public function dispose() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§3;§ = null;
         if(_loc2_ || _loc3_)
         {
            this.§ !9§();
            if(_loc2_)
            {
               §§goto(addr40);
            }
            §§goto(addr43);
         }
         addr40:
         if(this.§+!;§)
         {
            addr43:
            while(this.§+!;§.length > 0)
            {
               _loc1_ = this.§+!;§.pop();
               if(_loc2_ || this)
               {
                  _loc1_.dispose();
               }
            }
            if(!(_loc3_ && _loc2_))
            {
               this.§+!;§ = null;
            }
         }
      }
      
      public function §-L§(param1:int, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            this.mW = param3;
            if(!(_loc6_ && param2))
            {
               this.mH = param4;
               if(!_loc6_)
               {
                  addr53:
                  this.§>c§ = param1;
                  if(_loc5_ || param1)
                  {
                     §§goto(addr63);
                  }
               }
               §§goto(addr73);
            }
            §§goto(addr53);
         }
         addr63:
         this.§2!;§ = param2;
         if(_loc5_ || param3)
         {
            addr73:
            this.§>j§();
         }
      }
      
      public function §@"§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(param1)
         {
            this.§=4§ = 1;
            return;
         }
         §§push(this);
         §§push(this.mW);
         if(_loc3_)
         {
            §§push(§§pop() / this.mH);
         }
         §§pop().§=4§ = §§pop();
         if(this.§=4§ < 1)
         {
            this.§=4§ = 1 / this.§=4§;
         }
         this.§=4§ = Math.min(11,this.§=4§);
      }
      
      public function §1R§(param1:§"!?§) : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§,z§ = null;
         var _loc3_:Texture = null;
         if(_loc5_ || param1)
         {
            §§push(this.§ ?§.isGround());
            if(!(_loc6_ && this))
            {
               if(§§pop())
               {
                  if(_loc5_)
                  {
                     §§goto(addr43);
                  }
                  else
                  {
                     addr58:
                     this.§>!%§ = param1.§8!0§(this.§?Y§);
                     if(_loc5_)
                     {
                        this.§5F§ = this.§>!%§;
                     }
                  }
               }
               else
               {
                  this.§^!E§ = param1.§8!0§("SPARKLES");
                  if(!_loc6_)
                  {
                     §§goto(addr58);
                  }
               }
               var _loc4_:* = Number(1);
               if(_loc5_ || param1)
               {
                  §§push(this.§5F§);
                  if(_loc5_ || this)
                  {
                     if(§§pop())
                     {
                        addr92:
                        _loc2_ = this.§5F§.getFrame(0);
                        addr90:
                        if(!(_loc6_ && _loc2_))
                        {
                           §§push(_loc2_.scale);
                           if(_loc5_)
                           {
                              §§push(Number(§§pop()));
                           }
                           _loc4_ = §§pop();
                        }
                        _loc3_ = _loc2_.texture;
                     }
                     else
                     {
                        _loc3_ = this.§?V§.textureManager.§=^§();
                     }
                     this.§+J§ = new §?T§(_loc3_);
                     if(!_loc6_)
                     {
                        if(_loc2_)
                        {
                           if(_loc5_)
                           {
                              §§push(this.§+J§);
                              if(!(_loc6_ && _loc2_))
                              {
                                 §§push(_loc2_.pivotX);
                                 if(_loc5_ || _loc3_)
                                 {
                                    §§push(-§§pop());
                                    if(!_loc6_)
                                    {
                                       §§pop().x = §§pop();
                                       if(!_loc6_)
                                       {
                                          §§push(this.§+J§);
                                          if(!_loc6_)
                                          {
                                             addr171:
                                             §§pop().y = -_loc2_.pivotY;
                                             if(!_loc6_)
                                             {
                                                addr221:
                                                §§push(this.§+J§);
                                                if(!_loc6_)
                                                {
                                                   addr225:
                                                   §§push(_loc4_);
                                                   if(_loc5_)
                                                   {
                                                      addr228:
                                                      §§pop().scaleX = §§pop();
                                                      addr231:
                                                      §§push(this.§+J§);
                                                      §§push(_loc4_);
                                                   }
                                                   §§pop().scaleY = §§pop();
                                                   if(!(_loc6_ && this))
                                                   {
                                                      this.mW = this.§+J§.width / 2;
                                                      if(!_loc6_)
                                                      {
                                                         addr259:
                                                         this.mH = this.§+J§.height / 2;
                                                         if(_loc5_ || _loc3_)
                                                         {
                                                            addr273:
                                                            this.§,!7§.addChild(this.§+J§);
                                                         }
                                                      }
                                                      return true;
                                                   }
                                                   §§goto(addr259);
                                                }
                                             }
                                             else
                                             {
                                                addr203:
                                                §§push(this.§+J§);
                                                if(_loc5_)
                                                {
                                                   §§push(this.§+J§);
                                                }
                                             }
                                             §§goto(addr231);
                                          }
                                          else
                                          {
                                             addr180:
                                             §§push(this.§+J§);
                                             if(_loc5_ || _loc2_)
                                             {
                                                §§push(-§§pop().width);
                                                §§push(2);
                                                if(_loc5_)
                                                {
                                                   §§pop().x = §§pop() / §§pop();
                                                   if(_loc5_ || param1)
                                                   {
                                                      §§goto(addr203);
                                                   }
                                                   §§goto(addr231);
                                                }
                                                addr212:
                                                §§pop().y = §§pop() / §§pop();
                                                if(_loc5_ || _loc3_)
                                                {
                                                   §§goto(addr221);
                                                }
                                                §§goto(addr259);
                                             }
                                          }
                                          §§goto(addr212);
                                          §§push(-§§pop().height);
                                          §§push(2);
                                       }
                                       §§goto(addr273);
                                    }
                                    §§goto(addr228);
                                 }
                                 §§goto(addr171);
                              }
                              §§goto(addr228);
                           }
                           §§goto(addr221);
                        }
                        else
                        {
                           §§push(this.§+J§);
                           if(_loc5_)
                           {
                              §§goto(addr180);
                           }
                        }
                        §§goto(addr225);
                     }
                     §§goto(addr203);
                  }
                  §§goto(addr92);
               }
               §§goto(addr90);
            }
            §§goto(addr43);
         }
         addr43:
         return false;
      }
      
      public function §+!'§(param1:§"c§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:Array = null;
         var _loc3_:b2Vec2 = null;
         §§push(param1.§3<§);
         if(_loc6_ || _loc3_)
         {
            var _loc4_:* = §§pop();
            if(_loc6_)
            {
               §§push(§"c§.§,p§);
               if(!_loc5_)
               {
                  §§push(_loc4_);
                  if(!_loc5_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!(_loc5_ && this))
                        {
                           §§push(0);
                           if(!(_loc5_ && _loc3_))
                           {
                              addr159:
                              switch(§§pop())
                              {
                                 case 0:
                                    _loc2_ = param1.§&v§();
                                    _loc3_ = _loc2_[0];
                                    if(_loc6_ || param1)
                                    {
                                       §§push(this);
                                       §§push(_loc3_.x);
                                       if(_loc6_ || this)
                                       {
                                          §§push(§§pop() / § !§.§`J§);
                                       }
                                       §§pop().§;!N§ = §§pop();
                                       if(!(_loc5_ && _loc3_))
                                       {
                                          §§push(this);
                                          §§push(_loc3_.y);
                                          if(!(_loc5_ && this))
                                          {
                                             §§push(§§pop() / § !§.§`J§);
                                          }
                                          §§pop().§ T§ = §§pop();
                                          if(_loc6_)
                                          {
                                             addr160:
                                             this.§;?§();
                                             break;
                                          }
                                          break;
                                       }
                                       break;
                                    }
                                    break;
                                 case 1:
                                    §§goto(addr160);
                                 default:
                                    §§goto(addr160);
                              }
                              return;
                              addr158:
                           }
                        }
                        else
                        {
                           addr145:
                           §§push(1);
                           if(_loc5_ && this)
                           {
                           }
                        }
                        §§goto(addr158);
                     }
                     else
                     {
                        §§push(§"c§.§"!K§);
                        if(_loc6_)
                        {
                           addr144:
                           if(§§pop() === _loc4_)
                           {
                              §§goto(addr145);
                           }
                           else
                           {
                              §§goto(addr158);
                              §§push(2);
                           }
                           §§goto(addr158);
                        }
                     }
                     §§goto(addr158);
                  }
                  §§goto(addr144);
               }
               §§goto(addr158);
            }
            §§goto(addr145);
         }
         §§goto(addr159);
      }
      
      public function §2!7§() : Array
      {
         return §5c§.§2!7§(null,this.§ ?§.§-A§());
      }
      
      public function §!J§() : Array
      {
         return §5c§.§!J§(null,this.§ ?§.§-A§());
      }
      
      public function §[T§() : Array
      {
         return §5c§.§[T§(null);
      }
      
      public function §>j§() : void
      {
      }
      
      public function setScale(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            this.§,!7§.scaleX = this.§,!7§.scaleY = param1;
         }
      }
      
      public function §;?§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§,z§ = null;
         §§push(this.§>!%§);
         if(_loc5_ || this)
         {
            if(!§§pop())
            {
               return;
            }
            if(this.§`4§)
            {
               if(!(_loc4_ && this))
               {
                  this.§8!4§ = 1;
               }
               else
               {
                  addr133:
                  §§push(this.§8!4§ == this.§5F§.getFrameCount() - 1);
                  §§push(this.§8!4§ == this.§5F§.getFrameCount() - 1);
                  if(!_loc4_)
                  {
                     if(§§pop())
                     {
                        §§pop();
                        if(_loc5_ || _loc3_)
                        {
                           addr154:
                           §§push(this.§ ?§.getSpecialAnimationTimeLeft());
                           if(_loc5_ || this)
                           {
                              §§push(100);
                              if(!(_loc4_ && _loc2_))
                              {
                                 §§push(§§pop() > §§pop());
                                 if(!_loc4_)
                                 {
                                    addr173:
                                    if(§§pop())
                                    {
                                       var _loc2_:*;
                                       §§push((_loc2_ = this).§8!4§);
                                       if(_loc5_ || _loc1_)
                                       {
                                          §§push(§§pop() - 1);
                                       }
                                       var _loc3_:* = §§pop();
                                       if(_loc5_ || this)
                                       {
                                          _loc2_.§8!4§ = _loc3_;
                                       }
                                       if(!(_loc5_ || _loc2_))
                                       {
                                          addr423:
                                          this.§5F§ = this.§>!%§.getSubAnimation(this.§[B§);
                                          this.mIsBlinking = true;
                                          if(_loc5_ || _loc2_)
                                          {
                                             addr492:
                                             §§push(this.§5F§);
                                             if(_loc5_)
                                             {
                                                if(§§pop())
                                                {
                                                   addr499:
                                                   _loc1_ = this.§5F§.getFrame(this.§8!4§);
                                                   if(!_loc4_)
                                                   {
                                                      §§push(this.§+J§);
                                                      if(!_loc4_)
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                         if(_loc5_)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               if(_loc5_ || _loc2_)
                                                               {
                                                                  §§pop();
                                                                  §§push(Boolean(_loc1_));
                                                               }
                                                            }
                                                         }
                                                         if(§§pop())
                                                         {
                                                            §§push(this.§+J§);
                                                            if(_loc5_ || _loc3_)
                                                            {
                                                               §§pop().texture = _loc1_.texture;
                                                               if(!_loc4_)
                                                               {
                                                                  addr540:
                                                                  §§push(this.§+J§);
                                                                  if(_loc5_)
                                                                  {
                                                                     §§push(_loc1_.pivotX);
                                                                     if(_loc5_ || _loc3_)
                                                                     {
                                                                        §§push(-§§pop());
                                                                        if(!(_loc4_ && _loc2_))
                                                                        {
                                                                           §§push(this.§;!N§);
                                                                           if(_loc5_ || _loc3_)
                                                                           {
                                                                              §§push(§§pop() - §§pop());
                                                                              if(!_loc4_)
                                                                              {
                                                                                 §§pop().x = §§pop();
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    §§push(this.§+J§);
                                                                                    if(!(_loc4_ && _loc2_))
                                                                                    {
                                                                                       addr587:
                                                                                       §§push(-_loc1_.pivotY);
                                                                                       if(!_loc4_)
                                                                                       {
                                                                                          addr590:
                                                                                          §§push(§§pop() - this.§ T§);
                                                                                          if(_loc5_ || _loc2_)
                                                                                          {
                                                                                             addr610:
                                                                                             §§pop().y = §§pop();
                                                                                             if(!(_loc4_ && _loc3_))
                                                                                             {
                                                                                                addr618:
                                                                                                §§push(this.§+J§);
                                                                                                if(_loc5_)
                                                                                                {
                                                                                                   §§push(_loc1_.scale);
                                                                                                   if(!_loc4_)
                                                                                                   {
                                                                                                      addr626:
                                                                                                      §§pop().scaleX = §§pop();
                                                                                                   }
                                                                                                   §§goto(addr631);
                                                                                                }
                                                                                                addr629:
                                                                                                addr631:
                                                                                                §§pop().scaleY = §§pop();
                                                                                                return;
                                                                                                §§push(_loc1_.scale);
                                                                                             }
                                                                                             §§goto(addr629);
                                                                                             §§push(this.§+J§);
                                                                                          }
                                                                                          §§goto(addr626);
                                                                                       }
                                                                                       §§goto(addr610);
                                                                                    }
                                                                                    §§goto(addr629);
                                                                                 }
                                                                                 §§goto(addr618);
                                                                              }
                                                                           }
                                                                           §§goto(addr590);
                                                                        }
                                                                        §§goto(addr631);
                                                                     }
                                                                     §§goto(addr587);
                                                                  }
                                                               }
                                                               §§goto(addr631);
                                                            }
                                                            §§goto(addr587);
                                                         }
                                                         §§goto(addr631);
                                                      }
                                                      §§goto(addr618);
                                                   }
                                                   §§goto(addr540);
                                                }
                                                §§goto(addr631);
                                             }
                                             §§goto(addr499);
                                          }
                                          else
                                          {
                                             addr463:
                                             if(this.§>!%§.getSubAnimation(this.§!!8§))
                                             {
                                                this.§5F§ = this.§>!%§.getSubAnimation(this.§!!8§);
                                                if(_loc5_ || _loc2_)
                                                {
                                                   addr484:
                                                   this.mIsFlying = true;
                                                   §§goto(addr492);
                                                }
                                                §§goto(addr499);
                                             }
                                             else
                                             {
                                                this.§5F§ = this.§>!%§;
                                                §§goto(addr492);
                                             }
                                          }
                                       }
                                    }
                                 }
                                 else
                                 {
                                    addr314:
                                    if(§§pop())
                                    {
                                       this.§5F§ = this.§>!%§.getSubAnimation(this.§!"§);
                                       this.mIsScreaming = true;
                                       this.mIsFlying = true;
                                       if(_loc5_)
                                       {
                                          §§goto(addr492);
                                       }
                                       else
                                       {
                                          §§goto(addr484);
                                       }
                                    }
                                    else
                                    {
                                       §§push(this.mTryToScream);
                                       if(_loc5_ || _loc2_)
                                       {
                                          addr340:
                                          §§push(0);
                                          if(!_loc4_)
                                          {
                                             §§push(§§pop() > §§pop());
                                             if(!(_loc4_ && this))
                                             {
                                                addr351:
                                                §§push(§§pop());
                                                if(_loc5_)
                                                {
                                                   if(§§pop())
                                                   {
                                                      §§pop();
                                                      if(_loc5_ || this)
                                                      {
                                                         addr363:
                                                         §§push(this.§>!%§);
                                                         if(!_loc4_)
                                                         {
                                                            §§push(this.§<r§);
                                                            if(_loc5_)
                                                            {
                                                               addr371:
                                                               §§push(§§pop().getSubAnimation(§§pop()));
                                                               if(!_loc4_)
                                                               {
                                                                  §§push(Boolean(§§pop()));
                                                                  if(_loc5_ || this)
                                                                  {
                                                                     addr382:
                                                                     if(§§pop())
                                                                     {
                                                                        if(!_loc4_)
                                                                        {
                                                                           this.§5F§ = this.§>!%§.getSubAnimation(this.§<r§);
                                                                           this.mIsScreaming = true;
                                                                           §§goto(addr492);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr463);
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        addr399:
                                                                        §§push(this.mTryToBlink > 0);
                                                                        if(!_loc4_)
                                                                        {
                                                                           addr402:
                                                                           if(§§pop())
                                                                           {
                                                                              §§pop();
                                                                              if(_loc5_ || _loc3_)
                                                                              {
                                                                                 addr414:
                                                                                 §§push(this.§>!%§);
                                                                                 §§push(this.§[B§);
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    §§push(§§pop().getSubAnimation(§§pop()));
                                                                                    if(_loc5_)
                                                                                    {
                                                                                       addr422:
                                                                                       if(§§pop())
                                                                                       {
                                                                                          §§goto(addr423);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          addr447:
                                                                                          §§push(this.mTryToFly);
                                                                                          if(!_loc4_)
                                                                                          {
                                                                                             §§push(Boolean(§§pop()));
                                                                                          }
                                                                                          if(§§pop())
                                                                                          {
                                                                                             if(_loc5_ || _loc2_)
                                                                                             {
                                                                                                §§pop();
                                                                                                if(_loc5_ || this)
                                                                                                {
                                                                                                   §§goto(addr463);
                                                                                                }
                                                                                                §§goto(addr499);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr463);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr463);
                                                                              }
                                                                              §§goto(addr484);
                                                                           }
                                                                        }
                                                                        §§goto(addr422);
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr463);
                                                         }
                                                         §§goto(addr414);
                                                      }
                                                      §§goto(addr484);
                                                   }
                                                   §§goto(addr382);
                                                }
                                                §§goto(addr447);
                                             }
                                             §§goto(addr422);
                                          }
                                       }
                                       §§goto(addr399);
                                    }
                                 }
                                 §§goto(addr492);
                              }
                              §§goto(addr399);
                           }
                           §§goto(addr340);
                        }
                        else
                        {
                           addr233:
                           this.§5F§ = this.§>!%§.getSubAnimation(this.§@M§);
                           this.mIsSpecial = true;
                           §§goto(addr492);
                        }
                     }
                     §§goto(addr173);
                  }
                  else
                  {
                     addr274:
                     if(§§pop())
                     {
                        if(!_loc4_)
                        {
                           §§pop();
                           if(!_loc4_)
                           {
                              §§push(this.§>!%§);
                              if(_loc5_ || _loc2_)
                              {
                                 §§push(this.§!"§);
                                 if(_loc5_)
                                 {
                                    addr293:
                                    §§push(§§pop().getSubAnimation(§§pop()));
                                    if(!_loc4_)
                                    {
                                       addr296:
                                       §§push(Boolean(§§pop()));
                                       if(!(_loc4_ && _loc1_))
                                       {
                                          §§goto(addr314);
                                       }
                                       §§goto(addr351);
                                    }
                                 }
                              }
                              §§goto(addr463);
                           }
                           §§goto(addr499);
                        }
                        §§goto(addr463);
                     }
                  }
                  §§goto(addr314);
               }
               §§goto(addr492);
            }
            else
            {
               §§push(this.§ ?§);
               if(!(_loc4_ && this))
               {
                  §§push(§§pop().getSpecialAnimationProgress());
                  if(!(_loc4_ && this))
                  {
                     §§push(0);
                     if(_loc5_)
                     {
                        §§push(§§pop() >= §§pop());
                        if(_loc5_ || this)
                        {
                           if(§§pop())
                           {
                              if(_loc5_ || this)
                              {
                                 §§pop();
                                 if(_loc5_)
                                 {
                                    addr87:
                                    §§push(this.§>!%§);
                                    §§push(this.§@M§);
                                    if(_loc5_ || _loc1_)
                                    {
                                       §§push(§§pop().getSubAnimation(§§pop()));
                                       if(!(_loc4_ && this))
                                       {
                                          addr105:
                                          if(§§pop())
                                          {
                                             if(_loc5_)
                                             {
                                                this.§5F§ = this.§>!%§.getSubAnimation(this.§@M§);
                                                if(!_loc4_)
                                                {
                                                   this.§8!4§ = this.§5F§.getFrameCount() * this.§ ?§.getSpecialAnimationProgress();
                                                   if(!(_loc4_ && _loc2_))
                                                   {
                                                      §§goto(addr133);
                                                   }
                                                   §§goto(addr363);
                                                }
                                                §§goto(addr492);
                                             }
                                             §§goto(addr133);
                                          }
                                          else
                                          {
                                             §§push(Boolean(this.mTryToSpecial));
                                             if(Boolean(this.mTryToSpecial))
                                             {
                                                if(!(_loc4_ && _loc1_))
                                                {
                                                   §§pop();
                                                   §§push(this.§>!%§);
                                                   §§push(this.§@M§);
                                                   if(_loc5_)
                                                   {
                                                      §§push(§§pop().getSubAnimation(§§pop()));
                                                      if(_loc5_)
                                                      {
                                                         addr230:
                                                         if(§§pop())
                                                         {
                                                            if(_loc5_)
                                                            {
                                                               §§goto(addr233);
                                                            }
                                                            else
                                                            {
                                                               addr269:
                                                               §§goto(addr274);
                                                               §§push(this.mTryToFly > 0);
                                                               §§push(this.mTryToFly > 0);
                                                            }
                                                            §§goto(addr492);
                                                         }
                                                         else
                                                         {
                                                            §§push(this.mTryToScream);
                                                            if(!(_loc4_ && _loc3_))
                                                            {
                                                               §§push(0);
                                                               if(!_loc4_)
                                                               {
                                                                  addr256:
                                                                  §§push(§§pop() > §§pop());
                                                                  if(!_loc4_)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        §§pop();
                                                                        if(!(_loc4_ && _loc2_))
                                                                        {
                                                                           §§goto(addr269);
                                                                        }
                                                                        §§goto(addr423);
                                                                     }
                                                                     §§goto(addr269);
                                                                  }
                                                                  §§goto(addr463);
                                                               }
                                                            }
                                                            §§goto(addr399);
                                                         }
                                                      }
                                                      §§goto(addr296);
                                                   }
                                                   §§goto(addr371);
                                                }
                                                §§goto(addr402);
                                             }
                                             §§goto(addr230);
                                          }
                                       }
                                       §§goto(addr230);
                                    }
                                    §§goto(addr293);
                                 }
                                 §§goto(addr133);
                              }
                              §§goto(addr314);
                           }
                           §§goto(addr105);
                        }
                        §§goto(addr269);
                     }
                     §§goto(addr256);
                  }
                  §§goto(addr340);
               }
            }
            §§goto(addr154);
         }
         §§goto(addr87);
      }
      
      public function §]!1§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§,!7§.visible = false;
         }
      }
      
      public function setDamagedFrame() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            §§push(this.§>P§);
            if(_loc3_)
            {
               if(§§pop() < 0)
               {
                  if(!_loc2_)
                  {
                     this.§+!=§();
                     addr34:
                     §§push(0);
                  }
               }
               §§goto(addr34);
            }
            var _loc1_:* = §§pop();
            if(!(_loc2_ && this))
            {
               §§push(1);
               if(_loc3_ || _loc2_)
               {
                  §§push(this.§ ?§.§`Y§);
                  if(_loc3_)
                  {
                     §§push(§§pop() / this.§ ?§.§@!§);
                  }
                  §§push(§§pop() - §§pop());
                  if(!(_loc2_ && _loc2_))
                  {
                     §§push(§§pop() * this.§>P§);
                  }
                  §§push(int(§§pop()));
                  if(!_loc2_)
                  {
                     addr84:
                     _loc1_ = §§pop();
                     §§goto(addr136);
                  }
                  if(§§pop() != this.§2e§)
                  {
                     if(_loc3_ || _loc1_)
                     {
                        this.§2e§ = _loc1_;
                        if(!(_loc2_ && this))
                        {
                           this.§8!4§ = this.§2e§;
                           if(_loc3_ || _loc3_)
                           {
                              this.§;?§();
                           }
                        }
                     }
                     §§goto(addr136);
                  }
                  addr136:
                  if(!(_loc2_ && this))
                  {
                     §§push(_loc1_);
                  }
                  return;
               }
            }
            §§goto(addr84);
         }
         §§goto(addr34);
      }
      
      public function §+!=§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            if(this.§>!%§)
            {
               if(!_loc1_)
               {
                  this.§>P§ = this.§>!%§.getFrameCount();
               }
            }
         }
      }
      
      public function §%w§(param1:uint = 16777215, param2:int = 4, param3:int = 4) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            this.§1=§ = new GlowFilter();
            if(!(_loc4_ && param2))
            {
               addr40:
               this.§1=§.blurX = param2;
               if(!_loc4_)
               {
                  §§goto(addr46);
               }
               §§goto(addr52);
            }
            addr46:
            this.§1=§.blurY = param3;
            if(!_loc4_)
            {
               addr52:
               this.§1=§.color = param1;
            }
            return;
         }
         §§goto(addr40);
      }
      
      public function § !9§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.§1=§ = null;
         }
      }
      
      public function §#! §() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:int = Math.min(8,Math.max(this.§ ?§.§1!=§(false),1));
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            this.§4!L§(_loc2_);
            if(!(_loc4_ || _loc2_))
            {
               break;
            }
            _loc2_++;
            if(!_loc4_)
            {
               break;
            }
         }
      }
      
      public function §&&§(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = this.§+!;§.length - 1;
         loop0:
         while(true)
         {
            §§push(_loc2_);
            while(§§pop() >= 0)
            {
               this.§+!;§[_loc2_].updateLifeTime(param1);
               if(!(_loc4_ && this))
               {
                  if(this.§+!;§[_loc2_].lifeTime < 0)
                  {
                     if(!_loc4_)
                     {
                        addr66:
                        this.§4!L§(_loc2_);
                        if(!_loc3_)
                        {
                           break;
                        }
                     }
                     break;
                  }
                  §§push(_loc2_);
                  if(_loc3_)
                  {
                     §§push(§§pop() - 1);
                     if(_loc3_)
                     {
                        continue loop0;
                     }
                     continue;
                  }
                  continue loop0;
               }
               §§goto(addr66);
            }
            addr88:
            return;
         }
      }
      
      private function §4!L§(param1:int) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!_loc6_)
         {
            if(!this.§^!E§)
            {
               if(_loc7_ || param1)
               {
                  §§goto(addr29);
               }
            }
            var _loc2_:int = 0;
            if(!_loc6_)
            {
               if(Math.random() < 0.5)
               {
                  if(_loc7_)
                  {
                     _loc2_ = 1;
                  }
               }
            }
            var _loc3_:§,z§ = this.§^!E§.getFrame(_loc2_);
            §§push(100 + Math.random() * 100);
            if(!_loc6_)
            {
               §§push(Number(§§pop()));
            }
            var _loc4_:* = §§pop();
            var _loc5_:§3;§ = null;
            if(!(_loc6_ && this))
            {
               if(param1 < this.§+!;§.length)
               {
                  addr73:
                  (_loc5_ = this.§+!;§[param1]).§,!L§(_loc4_);
                  if(_loc7_)
                  {
                     _loc5_.§5!E§(_loc3_.texture);
                     if(_loc7_)
                     {
                        addr126:
                        §§push(_loc5_.image);
                        if(!_loc6_)
                        {
                           §§push(_loc3_.pivotX);
                           if(_loc7_ || this)
                           {
                              §§push(-§§pop());
                              if(!_loc6_)
                              {
                                 §§push(this.§+J§);
                                 if(_loc7_ || this)
                                 {
                                    §§push(§§pop().width / 2);
                                    if(!_loc6_)
                                    {
                                       §§push(§§pop() - §§pop());
                                       if(!(_loc6_ && _loc3_))
                                       {
                                          §§push(Math.random() * this.§+J§.width);
                                          if(_loc7_ || this)
                                          {
                                             §§push(§§pop() + §§pop());
                                             if(_loc7_)
                                             {
                                                addr180:
                                                §§pop().x = §§pop();
                                                if(!_loc6_)
                                                {
                                                   addr197:
                                                   §§push(_loc5_.image);
                                                   §§push(-_loc3_.pivotY);
                                                   if(!_loc6_)
                                                   {
                                                      addr202:
                                                      §§push(this.§+J§.height / 2);
                                                      if(!(_loc6_ && param1))
                                                      {
                                                         addr212:
                                                         §§push(§§pop() - §§pop());
                                                         if(!_loc6_)
                                                         {
                                                            addr221:
                                                            §§push(§§pop() + Math.random() * this.§+J§.height);
                                                         }
                                                      }
                                                      §§goto(addr221);
                                                   }
                                                }
                                                §§goto(addr223);
                                             }
                                             §§pop().y = §§pop();
                                             addr223:
                                             return;
                                          }
                                          §§goto(addr212);
                                       }
                                       §§goto(addr180);
                                    }
                                    §§goto(addr221);
                                 }
                                 §§goto(addr202);
                              }
                              §§goto(addr221);
                           }
                        }
                        §§goto(addr197);
                        addr90:
                     }
                     §§goto(addr180);
                  }
                  §§goto(addr90);
               }
               else
               {
                  _loc5_ = new §3;§(_loc3_.texture,_loc4_);
                  if(_loc7_)
                  {
                     this.§+!;§.push(_loc5_);
                     if(_loc7_ || _loc2_)
                     {
                        this.§,!7§.addChild(_loc5_.image);
                     }
                  }
               }
               §§goto(addr126);
            }
            §§goto(addr73);
         }
         addr29:
      }
      
      public function §'!4§() : §?T§
      {
         return this.§+J§;
      }
   }
}
