package §_-CR§
{
   import §_-4g§.Texture;
   import §_-HU§.§_-Ju§;
   import §_-Ja§.b2Vec2;
   import §_-LP§.Sprite;
   import §_-LP§.§_-19§;
   import §_-OJ§.§_-Lo§;
   import §_-OJ§.§_-tL§;
   import §_-Ra§.§_-M7§;
   import §_-Ra§.§_-RO§;
   import §_-Ra§.§_-Vr§;
   import flash.filters.GlowFilter;
   
   public class §_-l9§
   {
      
      public static const §_-ey§:Number = 1000;
      
      public static const §_-L5§:Number = 500;
      
      private static var §_-Gl§:Array = null;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §_-ey§ = 1000;
            if(_loc2_)
            {
               §_-L5§ = 500;
               if(!(_loc1_ && _loc1_))
               {
                  §_-Gl§ = null;
               }
            }
         }
      }
      
      private var §_-PP§:§_-Dz§;
      
      public var §_-SJ§:int;
      
      public var mW:Number;
      
      public var mH:Number;
      
      public var §super§:Number;
      
      public var §_-T-§:Number;
      
      public var §_-k0§:int = -1;
      
      private var §_-Qe§:String;
      
      private var §_-jC§:§_-RO§;
      
      private var §_-b8§:§_-RO§;
      
      private var §_-v4§:§_-19§;
      
      private var §_-H3§:Number = 0;
      
      private var §_-b4§:Number = 0;
      
      public var §_-bg§:int = -1;
      
      private var §_-wx§:int = -1;
      
      private var §_-eW§:int = 0;
      
      public var mTryToSpecial:Boolean = false;
      
      public var mIsSpecial:Boolean = false;
      
      public var §_-zp§:String = "special";
      
      public var mTryToFly:Boolean = false;
      
      public var mIsFlying:Boolean = false;
      
      public var §_-I3§:Boolean = false;
      
      public var mTryToScream:Number = 0;
      
      public var §_-Zh§:String = "yell";
      
      public var mIsScreaming:Boolean = false;
      
      public var mTryToBlink:Number = 0;
      
      public var §_-TI§:String = "blink";
      
      public var mIsBlinking:Boolean = false;
      
      public var §_-Yn§:String = "fly";
      
      public var §_-5f§:String = "fly_yell";
      
      public var §_-U9§:GlowFilter;
      
      private var §_-uQ§:Vector.<§_-Lo§>;
      
      private var §_-Sy§:§_-RO§;
      
      private var §_-Cv§:Sprite = null;
      
      private var §_-Ag§:§_-tL§;
      
      public function §_-l9§(param1:§_-Dz§, param2:Sprite, param3:§_-tL§)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param3)
         {
            super();
            if(!_loc4_)
            {
               this.§_-Ag§ = param3;
               this.§_-PP§ = param1;
               this.§_-Qe§ = this.§_-PP§.§_-L1§;
               §§goto(addr25);
            }
            §§goto(addr63);
         }
         addr25:
         if(_loc5_ || param3)
         {
            this.§_-uQ§ = new Vector.<§_-Lo§>();
            addr63:
            this.§_-Cv§ = param2;
         }
      }
      
      public function dispose() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§_-Lo§ = null;
         if(_loc2_)
         {
            this.§_-ad§();
            if(!(_loc3_ && _loc1_))
            {
               if(this.§_-uQ§)
               {
                  addr37:
                  while(this.§_-uQ§.length > 0)
                  {
                     _loc1_ = this.§_-uQ§.pop();
                     if(!_loc3_)
                     {
                        _loc1_.dispose();
                     }
                  }
                  if(_loc2_ || this)
                  {
                     this.§_-uQ§ = null;
                  }
               }
               return;
            }
         }
         §§goto(addr37);
      }
      
      public function §_-hu§(param1:int, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            this.mW = param3;
            if(!_loc5_)
            {
               this.mH = param4;
               if(_loc6_)
               {
                  this.§_-k0§ = param1;
                  if(_loc6_)
                  {
                     this.§_-T-§ = param2;
                     if(!(_loc5_ && this))
                     {
                        addr55:
                        this.§_-Gm§();
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr55);
      }
      
      public function §_-Hl§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(param1)
         {
            if(_loc2_)
            {
               this.§super§ = 1;
               return;
            }
         }
         else
         {
            §§push(this);
            §§push(this.mW);
            if(!_loc3_)
            {
               §§push(§§pop() / this.mH);
            }
            §§pop().§super§ = §§pop();
            if(this.§super§ < 1)
            {
               this.§super§ = 1 / this.§super§;
            }
         }
         this.§super§ = Math.min(11,this.§super§);
      }
      
      public function §_-Yy§(param1:§_-M7§) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:§_-Vr§ = null;
         var _loc3_:Texture = null;
         §§push(this.§_-PP§.isGround());
         if(!_loc4_)
         {
            if(§§pop())
            {
               return false;
            }
            else
            {
               this.§_-Sy§ = param1.§_-S-§("SPARKLES");
               this.§_-jC§ = param1.§_-S-§(this.§_-Qe§);
               if(!(_loc4_ && param1))
               {
                  this.§_-b8§ = this.§_-jC§;
               }
               §§push(this.§_-b8§);
               if(_loc5_)
               {
                  if(§§pop())
                  {
                     addr59:
                     _loc2_ = this.§_-b8§.getFrame(0);
                     _loc3_ = _loc2_.texture;
                     if(!_loc4_)
                     {
                        addr76:
                        this.§_-v4§ = new §_-19§(_loc3_);
                     }
                     if(_loc2_)
                     {
                        if(!(_loc4_ && _loc2_))
                        {
                           §§push(this.§_-v4§);
                           if(!_loc4_)
                           {
                              §§push(_loc2_.pivotX);
                              if(!(_loc4_ && param1))
                              {
                                 §§push(-§§pop());
                                 if(_loc5_ || _loc3_)
                                 {
                                    §§pop().x = §§pop();
                                    if(_loc5_)
                                    {
                                       §§push(this.§_-v4§);
                                       if(_loc5_)
                                       {
                                          addr127:
                                          §§push(-_loc2_.pivotY);
                                          if(_loc5_)
                                          {
                                             addr130:
                                             §§pop().y = §§pop();
                                             §§goto(addr184);
                                          }
                                          else
                                          {
                                             addr179:
                                             §§push(§§pop() / 2);
                                          }
                                          §§goto(addr193);
                                       }
                                       else
                                       {
                                          addr168:
                                          §§push(-this.§_-v4§.height);
                                          if(!(_loc4_ && _loc3_))
                                          {
                                             §§goto(addr179);
                                          }
                                       }
                                       addr181:
                                       §§pop().y = §§pop();
                                       if(!_loc4_)
                                       {
                                          addr184:
                                          this.mW = this.§_-v4§.width / 2;
                                          if(_loc5_)
                                          {
                                             this.mH = this.§_-v4§.height / 2;
                                             this.§_-Cv§.addChild(this.§_-v4§);
                                             addr193:
                                          }
                                          return true;
                                       }
                                    }
                                    §§goto(addr193);
                                 }
                                 §§goto(addr130);
                              }
                              §§goto(addr127);
                           }
                           §§goto(addr168);
                        }
                        §§goto(addr130);
                     }
                     else
                     {
                        §§push(this.§_-v4§);
                        if(_loc5_ || _loc2_)
                        {
                           §§push(this.§_-v4§);
                           if(_loc5_)
                           {
                              §§push(-§§pop().width);
                              if(_loc5_)
                              {
                                 §§push(2);
                                 if(_loc5_ || _loc2_)
                                 {
                                    §§push(§§pop() / §§pop());
                                    if(_loc5_ || _loc3_)
                                    {
                                       addr165:
                                       §§pop().x = §§pop();
                                       §§goto(addr168);
                                       §§push(this.§_-v4§);
                                    }
                                    §§goto(addr181);
                                 }
                                 §§goto(addr179);
                              }
                              §§goto(addr165);
                           }
                           §§goto(addr168);
                        }
                     }
                     §§goto(addr168);
                  }
                  else
                  {
                     _loc3_ = this.§_-Ag§.§_-JG§.§_-Z0§();
                  }
                  §§goto(addr76);
               }
               §§goto(addr59);
            }
         }
         return §§pop();
      }
      
      public function §_-Py§(param1:§_-Ju§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:Array = null;
         var _loc3_:b2Vec2 = null;
         §§push(param1.§_-zU§);
         if(_loc5_)
         {
            var _loc4_:* = §§pop();
            if(_loc5_ || _loc2_)
            {
               §§push(§_-Ju§.§_-d9§);
               if(_loc5_ || param1)
               {
                  §§push(_loc4_);
                  if(!_loc6_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc5_)
                        {
                           addr103:
                           §§push(0);
                           if(!(_loc6_ && _loc3_))
                           {
                              addr111:
                           }
                           else
                           {
                              addr133:
                           }
                        }
                        else
                        {
                           addr118:
                           §§push(1);
                           if(_loc5_ || param1)
                           {
                              §§goto(addr133);
                           }
                        }
                        addr139:
                        switch(§§pop())
                        {
                           case 0:
                              _loc2_ = param1.§_-mW§();
                              _loc3_ = _loc2_[0];
                              if(_loc5_)
                              {
                                 §§push(this);
                                 §§push(_loc3_.x);
                                 if(!(_loc6_ && this))
                                 {
                                    §§push(§§pop() / §_-tL§.§_-7m§);
                                 }
                                 §§pop().§_-H3§ = §§pop();
                                 if(!_loc6_)
                                 {
                                    §§push(this);
                                    §§push(_loc3_.y);
                                    if(!_loc6_)
                                    {
                                       §§push(§§pop() / §_-tL§.§_-7m§);
                                    }
                                    §§pop().§_-b4§ = §§pop();
                                    if(!(_loc6_ && param1))
                                    {
                                       break;
                                    }
                                 }
                              }
                              §§goto(addr142);
                           case 1:
                        }
                        this.§_-nj§();
                        addr142:
                        return;
                        addr138:
                     }
                     else
                     {
                        §§push(§_-Ju§.§_-K9§);
                        if(_loc5_)
                        {
                           addr117:
                           if(§§pop() === _loc4_)
                           {
                              §§goto(addr118);
                           }
                           else
                           {
                              §§push(2);
                           }
                           §§goto(addr138);
                        }
                     }
                     §§goto(addr133);
                  }
                  §§goto(addr117);
               }
               §§goto(addr111);
            }
            §§goto(addr103);
         }
         §§goto(addr139);
      }
      
      public function §_-o5§() : Array
      {
         return §_-Bv§.§_-o5§(null,this.§_-PP§.§_-U7§());
      }
      
      public function §_-y2§() : Array
      {
         return §_-Bv§.§_-y2§(null,this.§_-PP§.§_-U7§());
      }
      
      public function §_-xT§() : Array
      {
         return §_-Bv§.§_-xT§(null);
      }
      
      public function §_-Gm§() : void
      {
      }
      
      public function §_-s7§(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc2_))
         {
            this.§_-Cv§.scaleX = this.§_-Cv§.scaleY = param1;
         }
      }
      
      public function §_-nj§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§_-Vr§ = null;
         if(!this.§_-jC§)
         {
            if(_loc5_ || _loc3_)
            {
               return;
            }
            addr433:
            §§push(this.§_-b8§);
            if(!_loc4_)
            {
               if(§§pop())
               {
                  addr440:
                  _loc1_ = this.§_-b8§.getFrame(this.§_-eW§);
                  if(_loc5_)
                  {
                     §§push(this.§_-v4§);
                     if(_loc5_)
                     {
                        §§push(Boolean(§§pop()));
                        if(!_loc4_)
                        {
                           if(§§pop())
                           {
                              if(_loc5_)
                              {
                                 addr458:
                                 §§pop();
                                 §§goto(addr534);
                              }
                           }
                           if(§§pop())
                           {
                              if(_loc5_)
                              {
                                 §§push(this.§_-v4§);
                                 if(!_loc4_)
                                 {
                                    §§pop().texture = _loc1_.texture;
                                    if(_loc5_ || _loc2_)
                                    {
                                       §§push(this.§_-v4§);
                                       if(_loc5_ || this)
                                       {
                                          §§push(_loc1_.pivotX);
                                          if(_loc5_)
                                          {
                                             §§push(-§§pop());
                                             if(!(_loc4_ && this))
                                             {
                                                §§push(this.§_-H3§);
                                                if(!_loc4_)
                                                {
                                                   §§push(§§pop() - §§pop());
                                                   if(_loc5_)
                                                   {
                                                      §§pop().x = §§pop();
                                                      if(!_loc4_)
                                                      {
                                                         addr527:
                                                         §§push(this.§_-v4§);
                                                         §§push(-_loc1_.pivotY);
                                                         if(!_loc4_)
                                                         {
                                                            addr530:
                                                            §§push(§§pop() - this.§_-b4§);
                                                         }
                                                         §§pop().y = §§pop();
                                                      }
                                                      §§goto(addr534);
                                                   }
                                                }
                                             }
                                             §§goto(addr530);
                                          }
                                       }
                                       §§goto(addr527);
                                    }
                                    §§goto(addr534);
                                 }
                                 §§goto(addr527);
                              }
                              §§goto(addr534);
                           }
                           addr534:
                           if(_loc5_ || _loc1_)
                           {
                              §§push(Boolean(_loc1_));
                           }
                           return;
                        }
                        §§goto(addr458);
                     }
                  }
                  §§goto(addr527);
               }
               §§goto(addr458);
            }
            §§goto(addr440);
         }
         else if(this.§_-I3§)
         {
            this.§_-eW§ = 1;
            §§goto(addr433);
         }
         else
         {
            §§push(this.§_-PP§);
            if(_loc5_ || this)
            {
               §§push(§§pop().getSpecialAnimationProgress());
               if(_loc5_)
               {
                  §§push(0);
                  if(_loc5_ || _loc3_)
                  {
                     §§push(§§pop() >= §§pop());
                     if(!_loc4_)
                     {
                        if(§§pop())
                        {
                           §§pop();
                           §§push(this.§_-jC§);
                           if(!_loc4_)
                           {
                              §§push(this.§_-zp§);
                              if(!(_loc4_ && _loc2_))
                              {
                                 §§push(§§pop().getSubAnimation(§§pop()));
                                 if(!_loc4_)
                                 {
                                    addr80:
                                    if(§§pop())
                                    {
                                       this.§_-b8§ = this.§_-jC§.getSubAnimation(this.§_-zp§);
                                       this.§_-eW§ = this.§_-b8§.getFrameCount() * this.§_-PP§.getSpecialAnimationProgress();
                                       §§push(this.§_-eW§ == this.§_-b8§.getFrameCount() - 1);
                                       if(!(_loc4_ && this))
                                       {
                                          if(§§pop())
                                          {
                                             if(!_loc4_)
                                             {
                                                §§pop();
                                                addr118:
                                                §§push(this.§_-PP§.getSpecialAnimationTimeLeft());
                                                if(_loc5_)
                                                {
                                                   addr121:
                                                   §§push(100);
                                                   if(!_loc4_)
                                                   {
                                                      addr125:
                                                      if(§§pop() > §§pop())
                                                      {
                                                         var _loc2_:*;
                                                         §§push((_loc2_ = this).§_-eW§);
                                                         if(!(_loc4_ && _loc3_))
                                                         {
                                                            §§push(§§pop() - 1);
                                                         }
                                                         var _loc3_:* = §§pop();
                                                         if(!_loc4_)
                                                         {
                                                            _loc2_.§_-eW§ = _loc3_;
                                                         }
                                                         if(!_loc4_)
                                                         {
                                                            addr148:
                                                         }
                                                         else
                                                         {
                                                            addr199:
                                                         }
                                                         §§goto(addr433);
                                                      }
                                                      §§goto(addr148);
                                                   }
                                                   else
                                                   {
                                                      addr217:
                                                      §§push(§§pop() > §§pop());
                                                      if(!(_loc4_ && _loc2_))
                                                      {
                                                         addr225:
                                                         §§push(§§pop() && this.mTryToFly > 0);
                                                         if(§§pop() && this.mTryToFly > 0)
                                                         {
                                                            if(!(_loc4_ && _loc3_))
                                                            {
                                                               §§pop();
                                                               §§push(this.§_-jC§);
                                                               §§push(this.§_-5f§);
                                                               if(_loc5_ || this)
                                                               {
                                                                  §§push(§§pop().getSubAnimation(§§pop()));
                                                                  if(!(_loc4_ && _loc1_))
                                                                  {
                                                                     addr269:
                                                                     if(§§pop())
                                                                     {
                                                                        this.§_-b8§ = this.§_-jC§.getSubAnimation(this.§_-5f§);
                                                                        this.mIsScreaming = true;
                                                                        if(!_loc4_)
                                                                        {
                                                                           this.mIsFlying = true;
                                                                        }
                                                                        else
                                                                        {
                                                                           addr318:
                                                                           this.§_-b8§ = this.§_-jC§.getSubAnimation(this.§_-Zh§);
                                                                           this.mIsScreaming = true;
                                                                           if(!_loc5_)
                                                                           {
                                                                              addr414:
                                                                              this.§_-b8§ = this.§_-jC§.getSubAnimation(this.§_-Yn§);
                                                                              if(_loc5_)
                                                                              {
                                                                                 addr423:
                                                                                 this.mIsFlying = true;
                                                                                 addr426:
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr433);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push(this.mTryToScream);
                                                                        if(_loc5_)
                                                                        {
                                                                           addr290:
                                                                           §§push(0);
                                                                           if(_loc5_ || _loc1_)
                                                                           {
                                                                              addr298:
                                                                              §§push(§§pop() > §§pop());
                                                                              if(§§pop() > §§pop())
                                                                              {
                                                                                 addr301:
                                                                                 §§pop();
                                                                                 §§push(this.§_-jC§);
                                                                                 §§push(this.§_-Zh§);
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    addr308:
                                                                                    §§push(§§pop().getSubAnimation(§§pop()));
                                                                                    if(!(_loc4_ && _loc2_))
                                                                                    {
                                                                                       addr317:
                                                                                       if(§§pop())
                                                                                       {
                                                                                          §§goto(addr318);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          addr334:
                                                                                          §§push(this.mTryToBlink > 0);
                                                                                          if(this.mTryToBlink > 0)
                                                                                          {
                                                                                             if(!(_loc4_ && _loc1_))
                                                                                             {
                                                                                                addr344:
                                                                                                §§pop();
                                                                                                if(!_loc4_)
                                                                                                {
                                                                                                   §§push(this.§_-jC§);
                                                                                                   §§push(this.§_-TI§);
                                                                                                   if(!_loc4_)
                                                                                                   {
                                                                                                      addr353:
                                                                                                      §§push(§§pop().getSubAnimation(§§pop()));
                                                                                                      if(!_loc4_)
                                                                                                      {
                                                                                                         addr356:
                                                                                                         §§push(Boolean(§§pop()));
                                                                                                         if(_loc5_)
                                                                                                         {
                                                                                                            addr359:
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               this.§_-b8§ = this.§_-jC§.getSubAnimation(this.§_-TI§);
                                                                                                               if(!(_loc4_ && _loc1_))
                                                                                                               {
                                                                                                                  this.mIsBlinking = true;
                                                                                                                  if(_loc5_ || this)
                                                                                                                  {
                                                                                                                     §§goto(addr433);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     addr407:
                                                                                                                     if(this.§_-jC§.getSubAnimation(this.§_-Yn§))
                                                                                                                     {
                                                                                                                        §§goto(addr414);
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        this.§_-b8§ = this.§_-jC§;
                                                                                                                        if(_loc5_)
                                                                                                                        {
                                                                                                                           §§goto(addr433);
                                                                                                                        }
                                                                                                                        §§goto(addr440);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr440);
                                                                                                               }
                                                                                                               §§goto(addr426);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§push(this.mTryToFly);
                                                                                                               if(!_loc4_)
                                                                                                               {
                                                                                                                  §§push(Boolean(§§pop()));
                                                                                                                  if(_loc5_ || _loc1_)
                                                                                                                  {
                                                                                                                  }
                                                                                                                  addr406:
                                                                                                                  §§pop();
                                                                                                                  §§goto(addr407);
                                                                                                               }
                                                                                                               if(§§pop())
                                                                                                               {
                                                                                                                  if(_loc5_ || this)
                                                                                                                  {
                                                                                                                     §§goto(addr406);
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr407);
                                                                                                }
                                                                                                §§goto(addr423);
                                                                                             }
                                                                                             §§goto(addr406);
                                                                                          }
                                                                                          §§goto(addr359);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr356);
                                                                                 }
                                                                                 §§goto(addr353);
                                                                              }
                                                                              §§goto(addr317);
                                                                           }
                                                                        }
                                                                        §§goto(addr334);
                                                                     }
                                                                  }
                                                                  §§goto(addr356);
                                                               }
                                                               §§goto(addr407);
                                                            }
                                                            §§goto(addr301);
                                                         }
                                                         §§goto(addr269);
                                                      }
                                                      §§goto(addr301);
                                                   }
                                                }
                                                §§goto(addr334);
                                             }
                                             §§goto(addr344);
                                          }
                                          §§goto(addr125);
                                       }
                                       §§goto(addr225);
                                    }
                                    else
                                    {
                                       §§push(Boolean(this.mTryToSpecial));
                                       if(!(_loc4_ && this))
                                       {
                                          if(§§pop())
                                          {
                                             if(_loc5_)
                                             {
                                                §§pop();
                                                §§push(this.§_-jC§);
                                                §§push(this.§_-zp§);
                                                if(!_loc4_)
                                                {
                                                   §§push(§§pop().getSubAnimation(§§pop()));
                                                   if(_loc5_)
                                                   {
                                                      §§push(Boolean(§§pop()));
                                                      if(_loc5_ || _loc3_)
                                                      {
                                                         addr181:
                                                         if(§§pop())
                                                         {
                                                            this.§_-b8§ = this.§_-jC§.getSubAnimation(this.§_-zp§);
                                                            if(!(_loc4_ && _loc1_))
                                                            {
                                                               this.mIsSpecial = true;
                                                               §§goto(addr199);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr318);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§push(this.mTryToScream);
                                                            if(!(_loc4_ && this))
                                                            {
                                                               §§push(0);
                                                               if(_loc5_ || _loc3_)
                                                               {
                                                                  §§goto(addr217);
                                                               }
                                                               §§goto(addr298);
                                                            }
                                                            §§goto(addr290);
                                                         }
                                                         §§goto(addr414);
                                                      }
                                                      §§goto(addr406);
                                                   }
                                                   §§goto(addr269);
                                                }
                                                §§goto(addr353);
                                             }
                                             §§goto(addr225);
                                          }
                                          §§goto(addr181);
                                       }
                                    }
                                    §§goto(addr298);
                                 }
                                 §§goto(addr356);
                              }
                              §§goto(addr308);
                           }
                           §§goto(addr407);
                        }
                     }
                     §§goto(addr80);
                  }
                  §§goto(addr298);
               }
               §§goto(addr121);
            }
            §§goto(addr118);
         }
         §§goto(addr440);
      }
      
      public function §_-NN§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§_-Cv§.visible = false;
         }
      }
      
      public function setDamagedFrame() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            §§push(this.§_-bg§);
            if(!_loc3_)
            {
               if(§§pop() < 0)
               {
                  if(!_loc3_)
                  {
                     addr28:
                     this.§_-J1§();
                  }
               }
               §§push(0);
            }
            var _loc1_:* = §§pop();
            if(_loc2_)
            {
               §§push(1);
               if(_loc2_ || _loc3_)
               {
                  §§push(this.§_-PP§.§_-Qm§);
                  if(!_loc3_)
                  {
                     §§push(§§pop() / this.§_-PP§.§_-FF§);
                  }
                  §§push(§§pop() - §§pop());
                  if(_loc2_ || this)
                  {
                     §§push(§§pop() * (this.§_-bg§ * 0.99));
                  }
                  §§push(int(§§pop()));
                  if(!_loc3_)
                  {
                     _loc1_ = §§pop();
                     if(_loc2_ || _loc1_)
                     {
                        addr83:
                        if(_loc1_ != this.§_-wx§)
                        {
                           if(!(_loc3_ && _loc3_))
                           {
                              this.§_-wx§ = _loc1_;
                              if(_loc2_)
                              {
                                 this.§_-eW§ = this.§_-wx§;
                                 if(!_loc2_)
                                 {
                                 }
                                 §§goto(addr113);
                              }
                           }
                        }
                        §§goto(addr113);
                     }
                     this.§_-nj§();
                     §§goto(addr113);
                  }
               }
               §§goto(addr83);
            }
            addr113:
            return;
         }
         §§goto(addr28);
      }
      
      public function §_-J1§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(this.§_-jC§)
            {
               if(_loc1_)
               {
                  this.§_-bg§ = this.§_-jC§.getFrameCount();
               }
            }
         }
      }
      
      public function §_-op§(param1:uint = 16777215, param2:int = 4, param3:int = 4) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            this.§_-U9§ = new GlowFilter();
            if(!(_loc4_ && param3))
            {
               this.§_-U9§.blurX = param2;
               if(_loc5_ || param2)
               {
                  addr45:
                  this.§_-U9§.blurY = param3;
                  if(_loc5_ || this)
                  {
                     addr63:
                     this.§_-U9§.color = param1;
                  }
               }
               return;
            }
            §§goto(addr63);
         }
         §§goto(addr45);
      }
      
      public function §_-ad§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§_-U9§ = null;
         }
      }
      
      public function §_-2w§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:int = Math.min(8,Math.max(this.§_-PP§.§_-jY§(false),1));
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            this.§_-JI§(_loc2_);
            if(_loc3_)
            {
               break;
            }
            _loc2_++;
            if(_loc3_)
            {
               break;
            }
         }
      }
      
      public function §_-b2§(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = int(this.§_-uQ§.length - 1);
         loop0:
         while(true)
         {
            §§push(_loc2_);
            while(§§pop() >= 0)
            {
               this.§_-uQ§[_loc2_].updateLifeTime(param1);
               if(!_loc4_)
               {
                  break;
               }
               if(this.§_-uQ§[_loc2_].lifeTime < 0)
               {
                  if(_loc4_)
                  {
                     this.§_-JI§(_loc2_);
                     if(_loc3_ && param1)
                     {
                        continue loop0;
                     }
                  }
                  break;
               }
               §§push(_loc2_);
               if(_loc4_)
               {
                  §§push(§§pop() - 1);
                  if(_loc3_)
                  {
                     continue;
                  }
               }
               _loc2_ = §§pop();
               if(!(_loc4_ || _loc3_))
               {
                  break;
               }
               continue loop0;
            }
            return;
         }
      }
      
      private function §_-JI§(param1:int) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!(_loc7_ && _loc2_))
         {
            if(!this.§_-Sy§)
            {
               if(!(_loc7_ && _loc3_))
               {
                  return;
               }
            }
         }
         var _loc2_:int = 0;
         if(_loc6_)
         {
            if(Math.random() < 0.5)
            {
               if(_loc6_)
               {
                  addr41:
                  _loc2_ = 1;
               }
            }
            var _loc3_:§_-Vr§ = this.§_-Sy§.getFrame(_loc2_);
            §§push(100 + Math.random() * 100);
            if(_loc6_ || param1)
            {
               §§push(Number(§§pop()));
            }
            var _loc4_:* = §§pop();
            var _loc5_:§_-Lo§ = null;
            if(_loc6_)
            {
               if(param1 < this.§_-uQ§.length)
               {
                  §§goto(addr74);
               }
               else
               {
                  _loc5_ = new §_-Lo§(_loc3_.texture,_loc4_);
                  if(_loc6_)
                  {
                     this.§_-uQ§.push(_loc5_);
                     if(_loc6_)
                     {
                        this.§_-Cv§.addChild(_loc5_.image);
                     }
                  }
               }
               §§goto(addr119);
            }
            addr74:
            (_loc5_ = this.§_-uQ§[param1]).§_-db§(_loc4_);
            if(!_loc7_)
            {
               _loc5_.§_-sb§(_loc3_.texture);
               if(!_loc7_)
               {
                  addr119:
                  §§push(_loc5_.image);
                  if(!_loc7_)
                  {
                     §§push(_loc3_.pivotX);
                     if(_loc6_ || this)
                     {
                        §§push(-§§pop());
                        if(_loc6_ || _loc2_)
                        {
                           §§push(this.§_-v4§);
                           if(!(_loc7_ && this))
                           {
                              §§push(§§pop().width / 2);
                              if(!(_loc7_ && param1))
                              {
                                 §§push(§§pop() - §§pop());
                                 if(_loc6_ || _loc2_)
                                 {
                                    §§push(Math.random() * this.§_-v4§.width);
                                    if(!(_loc7_ && _loc2_))
                                    {
                                       addr180:
                                       §§push(§§pop() + §§pop());
                                       if(_loc6_)
                                       {
                                          §§pop().x = §§pop();
                                          if(_loc6_)
                                          {
                                             addr190:
                                             §§push(_loc5_.image);
                                             §§push(-_loc3_.pivotY);
                                             if(!_loc7_)
                                             {
                                                addr195:
                                                §§push(this.§_-v4§.height / 2);
                                                if(_loc6_)
                                                {
                                                   §§push(§§pop() - §§pop());
                                                   if(_loc6_)
                                                   {
                                                      addr210:
                                                      §§push(§§pop() + Math.random() * this.§_-v4§.height);
                                                   }
                                                   §§pop().y = §§pop();
                                                   §§goto(addr218);
                                                }
                                             }
                                             §§goto(addr210);
                                          }
                                          §§goto(addr218);
                                       }
                                    }
                                 }
                                 §§goto(addr210);
                              }
                              §§goto(addr180);
                           }
                           §§goto(addr195);
                        }
                        §§goto(addr210);
                     }
                  }
                  §§goto(addr190);
               }
            }
            addr218:
            return;
         }
         §§goto(addr41);
      }
      
      public function §_-Ex§() : §_-19§
      {
         return this.§_-v4§;
      }
   }
}
