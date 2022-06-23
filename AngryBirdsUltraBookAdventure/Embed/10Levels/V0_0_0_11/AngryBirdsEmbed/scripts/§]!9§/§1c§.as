package §]!9§
{
   import §%x§.§#;§;
   import §%x§.§9!9§;
   import §-!0§.§4b§;
   import §-!0§.§9X§;
   import §-!0§.§`Q§;
   import §?^§.§8!?§;
   import §?^§.Sprite;
   import §`K§.§2z§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import each.Texture;
   import flash.filters.GlowFilter;
   
   public class §1c§
   {
      
      public static const §1!6§:Number = 1000;
      
      public static const §&!'§:Number = 500;
      
      private static var §=R§:Array = null;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §1!6§ = 1000;
            if(_loc1_)
            {
               §&!'§ = 500;
               if(_loc2_ && _loc2_)
               {
               }
               §§goto(addr46);
            }
            §=R§ = null;
         }
         addr46:
      }
      
      private var §'9§:§>2§;
      
      public var §%!5§:int;
      
      public var mW:Number;
      
      public var mH:Number;
      
      public var §6r§:Number;
      
      public var §#!A§:Number;
      
      public var §%!C§:int = -1;
      
      private var §5Z§:String;
      
      private var §=!'§:§4b§;
      
      private var §8!#§:§4b§;
      
      private var §;!G§:§8!?§;
      
      private var §2i§:Number = 0;
      
      private var §[g§:Number = 0;
      
      public var §9w§:int = -1;
      
      private var §73§:int = -1;
      
      private var §8V§:int = 0;
      
      public var mTryToSpecial:Boolean = false;
      
      public var mIsSpecial:Boolean = false;
      
      public var §?4§:String = "special";
      
      public var mTryToFly:Boolean = false;
      
      public var mIsFlying:Boolean = false;
      
      public var §"@§:Boolean = false;
      
      public var mTryToScream:Number = 0;
      
      public var §9W§:String = "yell";
      
      public var mIsScreaming:Boolean = false;
      
      public var mTryToBlink:Number = 0;
      
      public var §[_§:String = "blink";
      
      public var mIsBlinking:Boolean = false;
      
      public var §76§:String = "fly";
      
      public var §!!7§:String = "fly_yell";
      
      public var §>!D§:GlowFilter;
      
      private var §`!$§:Vector.<§9!9§>;
      
      private var §;_§:§4b§;
      
      private var §0W§:Sprite = null;
      
      private var §7C§:§#;§;
      
      public function §1c§(param1:§>2§, param2:Sprite, param3:§#;§)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         super();
         if(!(_loc4_ && this))
         {
            this.§7C§ = param3;
            if(_loc5_ || this)
            {
               addr56:
               this.§'9§ = param1;
               if(_loc5_ || param3)
               {
                  this.§5Z§ = this.§'9§.§'!,§;
                  if(_loc4_)
                  {
                  }
                  §§goto(addr81);
               }
               this.§`!$§ = new Vector.<§9!9§>();
               if(!_loc5_)
               {
               }
               §§goto(addr81);
            }
            addr81:
            this.§0W§ = param2;
            return;
         }
         §§goto(addr56);
      }
      
      public function dispose() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§9!9§ = null;
         if(_loc3_)
         {
            this.§&&§();
            if(_loc3_ || _loc2_)
            {
               §§goto(addr41);
            }
            §§goto(addr44);
         }
         addr41:
         if(this.§`!$§)
         {
            addr44:
            while(this.§`!$§.length > 0)
            {
               _loc1_ = this.§`!$§.pop();
               if(_loc3_ || _loc3_)
               {
                  _loc1_.dispose();
               }
            }
            if(!(_loc2_ && _loc3_))
            {
               this.§`!$§ = null;
            }
         }
      }
      
      public function §#G§(param1:int, param2:Number, param3:Number, param4:Number) : void
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
                  this.§%!C§ = param1;
                  if(_loc6_ || param3)
                  {
                     this.§#!A§ = param2;
                     if(_loc6_ || param2)
                     {
                        addr69:
                        this.§ else§();
                     }
                  }
               }
               return;
            }
            §§goto(addr49);
         }
         §§goto(addr69);
      }
      
      public function §@0§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(param1)
         {
            this.§6r§ = 1;
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
         §§pop().§6r§ = §§pop();
         if(!(_loc3_ && param1))
         {
            if(this.§6r§ < 1)
            {
               if(!(_loc3_ && this))
               {
                  §§goto(addr81);
               }
            }
            §§goto(addr94);
         }
         addr81:
         this.§6r§ = 1 / this.§6r§;
         if(!(_loc3_ && this))
         {
            addr94:
            this.§6r§ = Math.min(11,this.§6r§);
         }
      }
      
      public function §5y§(param1:§`Q§) : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§9X§ = null;
         var _loc3_:Texture = null;
         if(_loc5_)
         {
            §§push(this.§'9§.isGround());
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
                  this.§;_§ = param1.§,V§("SPARKLES");
                  if(!_loc6_)
                  {
                     this.§=!'§ = param1.§,V§(this.§5Z§);
                     if(!(_loc6_ && _loc2_))
                     {
                        addr61:
                        this.§8!#§ = this.§=!'§;
                     }
                     var _loc4_:* = Number(1);
                     if(!_loc6_)
                     {
                        §§push(this.§8!#§);
                        if(_loc5_)
                        {
                           if(§§pop())
                           {
                              addr77:
                              _loc2_ = this.§8!#§.getFrame(0);
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
                                 this.§;!G§ = new §8!?§(_loc3_);
                                 if(!(_loc6_ && _loc2_))
                                 {
                                    if(_loc2_)
                                    {
                                       §§push(this.§;!G§);
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
                                                   §§push(this.§;!G§);
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
                                                            §§push(this.§;!G§);
                                                            if(!(_loc6_ && param1))
                                                            {
                                                               addr238:
                                                               §§pop().scaleX = _loc4_;
                                                               addr237:
                                                               if(_loc5_ || _loc3_)
                                                               {
                                                                  addr259:
                                                                  this.§;!G§.scaleY = _loc4_;
                                                                  addr258:
                                                               }
                                                               §§goto(addr274);
                                                            }
                                                            §§goto(addr258);
                                                         }
                                                         this.mW = this.§;!G§.width / 2;
                                                         this.mH = this.§;!G§.height / 2;
                                                         §§goto(addr274);
                                                      }
                                                   }
                                                   §§goto(addr259);
                                                }
                                                addr274:
                                                this.§0W§.addChild(this.§;!G§);
                                                return true;
                                             }
                                             §§goto(addr238);
                                          }
                                       }
                                       §§goto(addr176);
                                    }
                                    else
                                    {
                                       §§push(this.§;!G§);
                                       if(!(_loc6_ && param1))
                                       {
                                          §§push(this.§;!G§);
                                          if(_loc5_)
                                          {
                                             §§push(-§§pop().width);
                                             §§push(2);
                                             if(_loc5_ || this)
                                             {
                                                §§pop().x = §§pop() / §§pop();
                                                if(_loc5_)
                                                {
                                                   §§push(this.§;!G§);
                                                   if(_loc5_)
                                                   {
                                                      addr224:
                                                      §§push(-this.§;!G§.height / 2);
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
                              _loc3_ = this.§7C§.textureManager.§?K§();
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
      
      public function §8c§(param1:§2z§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:Array = null;
         var _loc3_:b2Vec2 = null;
         §§push(param1.§;!3§);
         if(_loc6_)
         {
            var _loc4_:* = §§pop();
            if(!_loc5_)
            {
               §§push(§2z§.§,j§);
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
                              _loc2_ = param1.§!!H§();
                              _loc3_ = _loc2_[0];
                              if(_loc6_ || this)
                              {
                                 §§push(this);
                                 §§push(_loc3_.x);
                                 if(!_loc5_)
                                 {
                                    §§push(§§pop() / §#;§.§`!2§);
                                 }
                                 §§pop().§2i§ = §§pop();
                                 if(!_loc6_)
                                 {
                                 }
                                 break;
                              }
                              §§push(this);
                              §§push(_loc3_.y);
                              if(_loc6_ || _loc3_)
                              {
                                 §§push(§§pop() / §#;§.§`!2§);
                              }
                              §§pop().§[g§ = §§pop();
                              if(!(_loc5_ && this))
                              {
                                 addr155:
                                 this.§1i§();
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
                        §§push(§2z§.§#!B§);
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
      
      public function §7&§() : Array
      {
         return §in§.§7&§(null,this.§'9§.§=H§());
      }
      
      public function § q§() : Array
      {
         return §in§.§ q§(null,this.§'9§.§=H§());
      }
      
      public function §8z§() : Array
      {
         return §in§.§8z§(null);
      }
      
      public function § else§() : void
      {
      }
      
      public function §&w§(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            this.§0W§.scaleX = this.§0W§.scaleY = param1;
         }
      }
      
      public function §1i§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§9X§ = null;
         §§push(this.§=!'§);
         if(!_loc5_)
         {
            if(!§§pop())
            {
               return;
            }
            if(this.§"@§)
            {
               this.§8V§ = 1;
               addr505:
               §§push(this.§8!#§);
               if(_loc4_)
               {
                  if(§§pop())
                  {
                     addr512:
                     _loc1_ = this.§8!#§.getFrame(this.§8V§);
                     if(!_loc5_)
                     {
                        §§push(this.§;!G§);
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
                              §§push(this.§;!G§);
                              if(_loc4_ || _loc1_)
                              {
                                 §§pop().texture = _loc1_.texture;
                                 if(_loc4_ || _loc2_)
                                 {
                                    §§push(this.§;!G§);
                                    if(_loc4_)
                                    {
                                       §§push(_loc1_.pivotX);
                                       if(_loc4_)
                                       {
                                          §§push(-§§pop());
                                          if(!_loc5_)
                                          {
                                             §§push(this.§2i§);
                                             if(!(_loc5_ && _loc3_))
                                             {
                                                §§push(§§pop() - §§pop());
                                                if(_loc4_)
                                                {
                                                   §§pop().x = §§pop();
                                                   if(!_loc5_)
                                                   {
                                                      §§push(this.§;!G§);
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
                                             §§push(§§pop() - this.§[g§);
                                             if(!(_loc5_ && _loc3_))
                                             {
                                                addr618:
                                                §§pop().y = §§pop();
                                                if(_loc4_ || _loc2_)
                                                {
                                                   §§push(this.§;!G§);
                                                   if(_loc4_ || _loc3_)
                                                   {
                                                      §§push(_loc1_.scale);
                                                      if(!_loc5_)
                                                      {
                                                         addr639:
                                                         §§pop().scaleX = §§pop();
                                                         addr642:
                                                         §§push(this.§;!G§);
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
               §§push(this.§'9§);
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
                                 §§push(this.§=!'§);
                                 §§push(this.§?4§);
                                 if(_loc4_)
                                 {
                                    §§push(§§pop().getSubAnimation(§§pop()));
                                    if(_loc4_ || _loc1_)
                                    {
                                       addr82:
                                       if(§§pop())
                                       {
                                          this.§8!#§ = this.§=!'§.getSubAnimation(this.§?4§);
                                          this.§8V§ = this.§8!#§.getFrameCount() * this.§'9§.getSpecialAnimationProgress();
                                          if(_loc4_ || this)
                                          {
                                             §§push(this.§8V§ == this.§8!#§.getFrameCount() - 1);
                                             §§push(this.§8V§ == this.§8!#§.getFrameCount() - 1);
                                             if(!_loc5_)
                                             {
                                                if(§§pop())
                                                {
                                                   if(_loc4_)
                                                   {
                                                      §§pop();
                                                      addr122:
                                                      §§push(this.§'9§.getSpecialAnimationTimeLeft());
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
                                                                     §§push((_loc2_ = this).§8V§);
                                                                     if(!(_loc5_ && this))
                                                                     {
                                                                        §§push(§§pop() - 1);
                                                                     }
                                                                     var _loc3_:* = §§pop();
                                                                     if(!(_loc5_ && _loc2_))
                                                                     {
                                                                        _loc2_.§8V§ = _loc3_;
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
                                                                  §§push(this.§=!'§);
                                                                  §§push(this.§!!7§);
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
                                                                           this.§8!#§ = this.§=!'§.getSubAnimation(this.§!!7§);
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
                                                                              this.§8!#§ = this.§=!'§.getSubAnimation(this.§76§);
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
                                                                                       §§push(this.§=!'§);
                                                                                       §§push(this.§9W§);
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
                                                                                                this.§8!#§ = this.§=!'§.getSubAnimation(this.§[_§);
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
                                                                                                         this.§8!#§ = this.§=!'§;
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
                                                                                                      §§push(Boolean(this.§=!'§.getSubAnimation(this.§76§)));
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
                                                                                       this.§8!#§ = this.§=!'§.getSubAnimation(this.§9W§);
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
                                                                                                   §§push(this.§=!'§);
                                                                                                   if(_loc4_ || _loc2_)
                                                                                                   {
                                                                                                      §§push(this.§[_§);
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
                                                      §§push(this.§=!'§);
                                                      if(!_loc5_)
                                                      {
                                                         §§push(this.§?4§);
                                                         if(_loc4_ || _loc2_)
                                                         {
                                                            §§push(§§pop().getSubAnimation(§§pop()));
                                                            if(_loc4_ || _loc3_)
                                                            {
                                                               addr221:
                                                               if(§§pop())
                                                               {
                                                                  this.§8!#§ = this.§=!'§.getSubAnimation(this.§?4§);
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
      
      public function §3!$§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§0W§.visible = false;
         }
      }
      
      public function setDamagedFrame() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.§9w§);
            if(!(_loc3_ && _loc1_))
            {
               if(§§pop() < 0)
               {
                  if(_loc2_)
                  {
                     this.§1P§();
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
                  §§push(this.§'9§.§4!;§);
                  if(!(_loc3_ && this))
                  {
                     §§push(§§pop() / this.§'9§.§8!,§);
                  }
                  §§push(§§pop() - §§pop());
                  if(!_loc3_)
                  {
                     §§push(§§pop() * this.§9w§);
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
                  if(_loc1_ != this.§73§)
                  {
                     if(!_loc3_)
                     {
                        this.§73§ = _loc1_;
                        if(_loc2_)
                        {
                           addr117:
                           this.§8V§ = this.§73§;
                           if(_loc2_)
                           {
                              addr123:
                              this.§1i§();
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
      
      public function §1P§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            if(this.§=!'§)
            {
               if(_loc2_)
               {
                  this.§9w§ = this.§=!'§.getFrameCount();
               }
            }
         }
      }
      
      public function § +§(param1:uint = 16777215, param2:int = 4, param3:int = 4) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            this.§>!D§ = new GlowFilter();
            if(!(_loc4_ && param1))
            {
               this.§>!D§.blurX = param2;
               if(_loc5_)
               {
                  addr46:
                  this.§>!D§.blurY = param3;
                  if(_loc5_)
                  {
                     addr52:
                     this.§>!D§.color = param1;
                  }
               }
               return;
            }
            §§goto(addr46);
         }
         §§goto(addr52);
      }
      
      public function §&&§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§>!D§ = null;
         }
      }
      
      public function §-#§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:int = Math.min(8,Math.max(this.§'9§.§3v§(false),1));
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            this.§;!E§(_loc2_);
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
      
      public function §5g§(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = int(this.§`!$§.length - 1);
         loop0:
         while(true)
         {
            §§push(_loc2_);
            while(§§pop() >= 0)
            {
               this.§`!$§[_loc2_].updateLifeTime(param1);
               if(!(_loc3_ && _loc3_))
               {
                  if(this.§`!$§[_loc2_].lifeTime < 0)
                  {
                     if(!_loc3_)
                     {
                        this.§;!E§(_loc2_);
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
      
      private function §;!E§(param1:int) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!(_loc7_ && this))
         {
            if(!this.§;_§)
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
            var _loc3_:§9X§ = this.§;_§.getFrame(_loc2_);
            §§push(100 + Math.random() * 100);
            if(_loc6_ || _loc3_)
            {
               §§push(Number(§§pop()));
            }
            var _loc4_:* = §§pop();
            var _loc5_:§9!9§ = null;
            if(_loc6_ || this)
            {
               if(param1 < this.§`!$§.length)
               {
                  addr87:
                  (_loc5_ = this.§`!$§[param1]).§!!-§(_loc4_);
                  if(_loc6_)
                  {
                     _loc5_.§[<§(_loc3_.texture);
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
                                 §§push(this.§;!G§);
                                 if(!_loc7_)
                                 {
                                    §§push(§§pop().width / 2);
                                    if(!(_loc7_ && _loc3_))
                                    {
                                       §§push(§§pop() - §§pop());
                                       if(_loc6_ || _loc2_)
                                       {
                                          §§push(Math.random() * this.§;!G§.width);
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
                                                      §§push(this.§;!G§.height / 2);
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
                                                   §§push(Math.random() * this.§;!G§.height);
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
                  _loc5_ = new §9!9§(_loc3_.texture,_loc4_);
                  if(!(_loc7_ && param1))
                  {
                     this.§`!$§.push(_loc5_);
                     if(_loc6_ || this)
                     {
                        this.§0W§.addChild(_loc5_.image);
                     }
                  }
               }
               §§goto(addr150);
            }
            §§goto(addr87);
         }
         §§goto(addr49);
      }
      
      public function §&3§() : §8!?§
      {
         return this.§;!G§;
      }
   }
}
