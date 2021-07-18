package §_-OJ§
{
   import §_-CR§.§_-Dz§;
   import §_-Qx§.§_-7x§;
   import §_-Qx§.§_-Wv§;
   import §_-e3§.§_-54§;
   import §_-hU§.§_-MB§;
   
   public class §_-LW§
   {
      
      public static const §_-Fn§:Number = 1.25;
      
      public static const §_-KT§:Number = 0.15;
      
      public static const §_-Bh§:Number;
      
      public static const §_-iy§:Number;
      
      public static const §_-E3§:Number = 1;
      
      public static const §_-tc§:Number = 0.4;
      
      public static const §_-ks§:Number = 0.1;
      
      public static const §_-5T§:int = 1500;
      
      public static const §_-wS§:int = 10;
      
      public static const §_-CH§:int = 15;
      
      public static const §_-5C§:int = 300;
      
      public static const §_-9R§:int = 1000;
      
      public static const §_-K§:int = 10000;
      
      public static const §_-Fa§:int = 200.0;
      
      public static const §_-Mt§:int = 0;
      
      public static const §_-iB§:int = 1;
      
      public static const §_-rN§:int = 2;
      
      public static const §_-Z3§:int = 3;
      
      public static const §_-Xu§:int = 4;
      
      public static const §_-pF§:int = 5;
      
      public static const §_-w8§:int = 6;
      
      public static const §_-ZB§:String = "CASTLE";
      
      public static const §_-3Y§:String = "SLINGSHOT";
      
      public static var § use§:Number;
      
      public static var §_-wF§:Number;
      
      public static var §_-C4§:Number;
      
      public static const §_-pr§:Number = 2000;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §_-Fn§ = 1.25;
            §_-KT§ = 0.15;
            §_-Bh§ = §_-MB§.§_-1q§ * §_-tL§.§_-7m§;
            if(_loc2_)
            {
               §_-iy§ = §_-MB§.§_-SP§ * §_-tL§.§_-7m§;
               §_-E3§ = 1;
               if(!_loc1_)
               {
                  §_-tc§ = 0.4;
                  if(!_loc1_)
                  {
                     §_-ks§ = 0.1;
                     §_-5T§ = 1500;
                     §_-wS§ = 10;
                     §_-CH§ = 15;
                     addr60:
                     §_-5C§ = 300;
                     if(!(_loc1_ && _loc1_))
                     {
                        §_-9R§ = 1000;
                        if(!(_loc1_ && §_-LW§))
                        {
                           §_-K§ = 10000;
                           §_-Fa§ = §_-K§ / 50;
                           §_-Mt§ = 0;
                           if(_loc2_ || §_-LW§)
                           {
                              §§goto(addr105);
                           }
                           §§goto(addr123);
                        }
                        §§goto(addr136);
                     }
                     §§goto(addr141);
                  }
                  §§goto(addr118);
               }
               addr105:
               §_-iB§ = 1;
               §_-rN§ = 2;
               if(!(_loc1_ && §_-LW§))
               {
                  addr118:
                  §_-Z3§ = 3;
                  if(_loc2_)
                  {
                     addr123:
                     §_-Xu§ = 4;
                     if(_loc2_ || _loc2_)
                     {
                        §_-pF§ = 5;
                     }
                     §§goto(addr136);
                  }
                  §_-3Y§ = "SLINGSHOT";
                  if(_loc2_ || _loc1_)
                  {
                     addr136:
                     §_-w8§ = 6;
                     if(_loc2_)
                     {
                        addr141:
                        §_-ZB§ = "CASTLE";
                        if(_loc2_ || _loc2_)
                        {
                        }
                        §§goto(addr171);
                     }
                     §_-pr§ = 2000;
                     §§goto(addr171);
                  }
               }
               addr171:
               return;
            }
            §§goto(addr136);
         }
         §§goto(addr60);
      }
      
      public var mManualScale:Number;
      
      public var §_-Pm§:Number;
      
      public var §_-wo§:Number;
      
      public var §_-Xc§:Number;
      
      public var §_-id§:Number;
      
      public var §_-OV§:Number;
      
      public var §_-Ts§:Number;
      
      public var §_-Ag§:§_-tL§;
      
      public var §_-Ki§:Number;
      
      public var §_-Fy§:Number;
      
      public var §_-Jy§:Number;
      
      public var §in §:Number;
      
      public var §_-3w§:Number;
      
      public var §_-j8§:Number;
      
      public var §_-ss§:Number;
      
      public var §_-8b§:Number;
      
      public var §_-bM§:Number;
      
      public var §_-z§:Number;
      
      public var mDragging:Boolean = false;
      
      public var §_-46§:Number;
      
      public var §_-DB§:Number;
      
      public var §_-4Y§:Number;
      
      public var §catch§:Number;
      
      public var §_-Ns§:Number;
      
      public var §_-6d§:Boolean;
      
      public var §_-pU§:Number;
      
      public var §_-AN§:Number;
      
      public var §_-tq§:Number;
      
      public var §_-FV§:Number;
      
      public var §_-2M§:Number;
      
      public var §_-0i§:Number;
      
      public var §_-2c§:Number = 0;
      
      public var §_-H6§:Number = 0;
      
      public var §_-tC§:Number = 0;
      
      public var mCurrentCameraSliderLocation:int = 0;
      
      public var mCurrentAction:int = 0;
      
      public var §_-rE§:Number = 0;
      
      public var §_-Im§:Boolean = true;
      
      public var §_-UY§:Number = 0;
      
      public var §_-a6§:Number = 0;
      
      public var §_-CE§:Number = 0;
      
      public var §_-GU§:Number = 0;
      
      public var §_-Zs§:Number = 0;
      
      public var §_-ax§:Number = 0;
      
      public var §_-Ne§:Number = 0;
      
      public var §_-7n§:Number = 0;
      
      public var §_-Er§:Number = 0;
      
      public var §_-Tp§:Number = 0;
      
      public var §_-B6§:Number = 0;
      
      public var §_-CG§:Number = 0;
      
      public var mTempCameraAnimationScale2:Number = 0;
      
      private var §_-fq§:Number = 0;
      
      private var §_-IC§:Number = 0;
      
      public var §_-Qt§:Number = 0;
      
      public var §_-xA§:Number = 0;
      
      public var §_-bj§:Number = 0;
      
      public var §_-cF§:Number = 0;
      
      public var §_-qa§:Number;
      
      public var §_-zr§:Number;
      
      public var §_-Xm§:Number;
      
      private var §_-Mz§:Boolean = false;
      
      private var §_-oe§:§_-7x§ = null;
      
      private var §_-XJ§:§_-7x§ = null;
      
      public function §_-LW§(param1:§_-tL§, param2:§_-Wv§)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         super();
         this.§_-Pm§ = 0;
         if(!(_loc4_ && this))
         {
            this.§_-wo§ = 0;
            this.§_-Ag§ = param1;
            §_-LW§.§ use§ = 1;
            this.mManualScale = 1;
            if(_loc3_ || param1)
            {
               this.§_-jn§(param2.§_-Pg§);
               if(!(_loc4_ && param1))
               {
                  this.§_-9f§();
                  §§push(this);
                  §§push(this.§_-Jy§);
                  if(_loc3_ || _loc3_)
                  {
                     §§push(§§pop() - this.§_-j8§);
                  }
                  §§pop().§_-2c§ = §§pop();
                  if(!_loc4_)
                  {
                     §§push(this);
                     §§push(this.§in §);
                     if(_loc3_ || _loc3_)
                     {
                        §§push(§§pop() - this.§_-ss§);
                     }
                     §§pop().§_-H6§ = §§pop();
                     if(_loc3_ || param1)
                     {
                        §§goto(addr101);
                     }
                     §§goto(addr158);
                  }
               }
               §§goto(addr129);
            }
            §§goto(addr144);
         }
         addr101:
         §§push(this);
         §§push(this.§_-3w§);
         if(_loc3_)
         {
            §§push(§§pop() - this.§_-8b§);
         }
         §§pop().§_-tC§ = §§pop();
         if(!_loc4_)
         {
            this.§_-Pm§ = this.§_-Jy§;
            this.§_-wo§ = this.§in §;
            § use§ = this.§_-3w§;
            if(!_loc4_)
            {
               this.mCurrentCameraSliderLocation = §_-K§;
               addr129:
               this.§_-Im§ = true;
               this.§_-rE§ = §_-K§ / 500;
               if(!(_loc4_ && param1))
               {
                  addr144:
                  this.goToCastleView();
               }
            }
            §§goto(addr176);
         }
         this.§_-UY§ = 2000;
         if(!(_loc4_ && _loc3_))
         {
            this.§_-s5§();
            addr158:
            this.§_-Lp§();
            if(_loc3_ || _loc3_)
            {
            }
            §§goto(addr176);
         }
         this.§_-8d§();
         addr176:
      }
      
      public function initSlowScroll() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.mCurrentCameraSliderLocation = 0;
            this.§_-Pm§ = this.§_-j8§;
            this.§_-wo§ = this.§_-ss§;
            this.§_-Im§ = false;
            if(!_loc1_)
            {
               addr46:
               this.§_-rE§ = §_-K§ / 160000;
            }
            this.§_-dE§(§_-pF§);
            return;
         }
         §§goto(addr46);
      }
      
      public function §_-9f§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §§push(this);
            §§push(this.§_-j8§);
            if(_loc2_ || _loc1_)
            {
               §§push(§_-Bh§);
               if(!(_loc1_ && this))
               {
                  §§push(§§pop() / this.§_-8b§);
                  if(!_loc1_)
                  {
                     §§push(§§pop() / 2);
                  }
               }
               §§push(§§pop() - §§pop());
            }
            §§pop().§_-DB§ = §§pop();
            if(!_loc1_)
            {
               §§push(this);
               §§push(this.§_-Jy§);
               if(!(_loc1_ && _loc1_))
               {
                  §§push(§_-Bh§);
                  if(_loc2_ || this)
                  {
                     addr88:
                     §§push(§§pop() / this.§_-3w§);
                     if(_loc2_ || _loc2_)
                     {
                        addr85:
                        §§push(§§pop() / 2);
                     }
                     §§pop().§_-4Y§ = §§pop() + §§pop();
                     if(_loc2_ || this)
                     {
                        §§goto(addr96);
                     }
                     §§goto(addr131);
                  }
                  §§goto(addr85);
               }
               §§goto(addr88);
            }
            addr96:
            §§push(this);
            §§push(this.§_-Ag§.§_-N7§.§_-IL§);
            if(_loc2_ || _loc1_)
            {
               §§push(20 * §_-tL§.§_-zh§);
               if(!(_loc1_ && this))
               {
                  §§push(§§pop() * §_-tL§.§_-7m§);
               }
               §§push(§§pop() - §§pop());
            }
            §§pop().§catch§ = §§pop();
            if(!(_loc1_ && _loc1_))
            {
               addr131:
               §§push(this);
               §§push(this.§_-Ag§.§_-N7§.§_-IL§);
               if(_loc2_)
               {
                  §§push(§§pop() + 4);
               }
               §§pop().§_-Ns§ = §§pop();
            }
            return;
         }
         §§goto(addr131);
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§_-Ag§ = null;
         }
      }
      
      public function §_-jn§(param1:Vector.<§_-7x§>) : void
      {
         var _loc15_:Boolean = false;
         var _loc16_:Boolean = true;
         var _loc2_:§_-7x§ = null;
         var _loc3_:* = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:* = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:* = NaN;
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         var _loc12_:Number = NaN;
         for each(_loc2_ in param1)
         {
            if(_loc16_)
            {
               §§push(_loc2_.id);
               if(!_loc15_)
               {
                  §§push(§§pop());
                  if(!_loc15_)
                  {
                     _loc3_ = §§pop();
                     if(!_loc15_)
                     {
                        §§push(_loc3_);
                        if(!(_loc15_ && param1))
                        {
                           addr70:
                           §§push(§§pop().toUpperCase());
                           if(_loc16_ || this)
                           {
                              _loc3_ = §§pop();
                              §§push(_loc2_.scale.toString() != "");
                              §§push(_loc2_.scale.toString() != "");
                              if(!(_loc15_ && _loc2_))
                              {
                                 if(§§pop())
                                 {
                                    §§pop();
                                    §§push(_loc2_.scale);
                                    if(_loc16_ || _loc3_)
                                    {
                                       §§push(§§pop().toString() == "null");
                                       if(!_loc15_)
                                       {
                                          addr111:
                                          §§push(!§§pop());
                                          if(!§§pop())
                                          {
                                             if(!(_loc15_ && param1))
                                             {
                                                §§pop();
                                                §§push(_loc2_.scale);
                                                if(!_loc15_)
                                                {
                                                   addr128:
                                                   if(§§pop().toString() != "0")
                                                   {
                                                      this.§_-69§(_loc2_);
                                                      if(_loc16_ || _loc3_)
                                                      {
                                                         addr140:
                                                         _loc4_ = _loc2_.left;
                                                         if(_loc16_ || _loc3_)
                                                         {
                                                            addr151:
                                                            §§push(_loc2_.right);
                                                            if(_loc16_ || this)
                                                            {
                                                               _loc5_ = §§pop();
                                                               §§push(Number(_loc2_.top));
                                                               if(!(_loc15_ && _loc2_))
                                                               {
                                                                  _loc6_ = §§pop();
                                                                  addr200:
                                                                  §§push(_loc2_.bottom);
                                                                  if(!_loc15_)
                                                                  {
                                                                     _loc7_ = §§pop();
                                                                     _loc8_ = _loc2_.x;
                                                                     §§push(_loc2_.y);
                                                                  }
                                                                  _loc9_ = §§pop();
                                                                  if(_loc16_ || _loc2_)
                                                                  {
                                                                     §§push(§_-iy§);
                                                                     §§push(_loc7_);
                                                                     if(_loc16_ || param1)
                                                                     {
                                                                        §§push(_loc6_);
                                                                        if(_loc16_)
                                                                        {
                                                                           §§push(§§pop() - §§pop());
                                                                           if(!(_loc15_ && param1))
                                                                           {
                                                                              §§push(Number(§§pop() / §§pop()));
                                                                              if(_loc16_ || param1)
                                                                              {
                                                                                 _loc10_ = §§pop();
                                                                                 if(_loc16_ || this)
                                                                                 {
                                                                                    §§push(§_-Bh§);
                                                                                    if(_loc16_ || this)
                                                                                    {
                                                                                       §§push(_loc5_);
                                                                                       if(!(_loc15_ && param1))
                                                                                       {
                                                                                          addr262:
                                                                                          §§push(§§pop() - _loc4_);
                                                                                          if(_loc16_ || this)
                                                                                          {
                                                                                             §§push(Number(§§pop() / §§pop()));
                                                                                             if(_loc16_)
                                                                                             {
                                                                                                §§push(§§pop());
                                                                                                if(_loc15_ && _loc2_)
                                                                                                {
                                                                                                }
                                                                                                addr284:
                                                                                                if(§§pop() < §§pop())
                                                                                                {
                                                                                                   §§push(_loc11_);
                                                                                                   if(!(_loc15_ && _loc2_))
                                                                                                   {
                                                                                                      addr306:
                                                                                                      _loc12_ = Number(§§pop());
                                                                                                      §§push(_loc3_);
                                                                                                      if(_loc16_)
                                                                                                      {
                                                                                                         addr310:
                                                                                                         §§push(§_-3Y§);
                                                                                                         if(_loc16_)
                                                                                                         {
                                                                                                            if(§§pop() == §§pop())
                                                                                                            {
                                                                                                               if(_loc16_)
                                                                                                               {
                                                                                                                  this.§_-j8§ = _loc8_;
                                                                                                                  addr319:
                                                                                                                  this.§_-ss§ = _loc9_;
                                                                                                                  if(_loc16_)
                                                                                                                  {
                                                                                                                     this.§_-8b§ = _loc12_;
                                                                                                                     continue;
                                                                                                                  }
                                                                                                               }
                                                                                                               addr337:
                                                                                                               this.§_-3w§ = _loc12_;
                                                                                                               if(_loc16_)
                                                                                                               {
                                                                                                                  addr342:
                                                                                                               }
                                                                                                               continue;
                                                                                                            }
                                                                                                            addr330:
                                                                                                            if(_loc3_ != §_-ZB§)
                                                                                                            {
                                                                                                               §_-54§.log("WARNING: LevelCamera -> loadCameraInformation() wrong Camera information");
                                                                                                               continue;
                                                                                                            }
                                                                                                            this.§_-Jy§ = _loc8_;
                                                                                                            this.§in § = _loc9_;
                                                                                                            §§goto(addr337);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr330);
                                                                                                      addr305:
                                                                                                      addr294:
                                                                                                      addr295:
                                                                                                   }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§push(Number(_loc10_));
                                                                                                   if(!(_loc15_ && _loc3_))
                                                                                                   {
                                                                                                      §§goto(addr305);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr306);
                                                                                             }
                                                                                             §§goto(addr294);
                                                                                          }
                                                                                       }
                                                                                       _loc11_ = §§pop();
                                                                                    }
                                                                                    §§goto(addr284);
                                                                                    §§push(_loc10_);
                                                                                 }
                                                                                 §§goto(addr319);
                                                                              }
                                                                              §§goto(addr306);
                                                                           }
                                                                           §§goto(addr284);
                                                                        }
                                                                     }
                                                                     §§goto(addr262);
                                                                  }
                                                                  §§goto(addr337);
                                                               }
                                                               §§push(Number(§§pop()));
                                                               if(_loc16_ || _loc2_)
                                                               {
                                                                  §§goto(addr200);
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr306);
                                                      }
                                                      §§goto(addr342);
                                                   }
                                                   §§goto(addr140);
                                                }
                                                §§goto(addr200);
                                             }
                                          }
                                       }
                                       §§goto(addr128);
                                    }
                                    §§goto(addr295);
                                 }
                              }
                              §§goto(addr111);
                           }
                           §§goto(addr310);
                        }
                        §§goto(addr330);
                     }
                     §§goto(addr319);
                  }
                  §§goto(addr70);
               }
               §§goto(addr310);
            }
            §§goto(addr151);
         }
         if(_loc16_)
         {
            this.§_-6d§ = this.§_-Jy§ >= this.§_-j8§;
         }
      }
      
      public function §_-fU§(param1:§_-Wv§) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc2_:§_-7x§ = new §_-7x§();
         if(_loc8_)
         {
            _loc2_.id = §_-3Y§;
            if(_loc8_)
            {
               addr24:
               _loc2_.x = this.§_-j8§;
               if(_loc8_)
               {
                  addr30:
                  _loc2_.y = this.§_-ss§;
               }
               §§push(§_-Bh§);
               if(!(_loc9_ && this))
               {
                  §§push(§§pop() / this.§_-8b§);
                  if(_loc8_)
                  {
                     addr47:
                     §§push(§§pop() / 2);
                     if(!(_loc9_ && _loc3_))
                     {
                        addr56:
                        §§push(Number(§§pop()));
                     }
                     var _loc3_:* = §§pop();
                     §§push(§_-iy§);
                     if(!_loc9_)
                     {
                        §§push(§§pop() / this.§_-8b§);
                        if(_loc8_)
                        {
                           §§push(§§pop() / 2);
                           if(_loc8_ || _loc3_)
                           {
                              §§push(Number(§§pop()));
                           }
                        }
                     }
                     var _loc4_:* = §§pop();
                     if(_loc8_ || _loc2_)
                     {
                        §§push(_loc2_);
                        §§push(this.§_-j8§);
                        if(_loc8_ || this)
                        {
                           §§push(§§pop() - _loc3_);
                        }
                        §§pop().left = §§pop();
                        if(!(_loc9_ && param1))
                        {
                           §§push(_loc2_);
                           §§push(this.§_-j8§);
                           if(!_loc9_)
                           {
                              §§push(§§pop() + _loc3_);
                           }
                           §§pop().right = §§pop();
                           if(!_loc8_)
                           {
                           }
                           addr137:
                           var _loc5_:§_-7x§;
                           (_loc5_ = new §_-7x§()).id = §_-ZB§;
                           if(!_loc9_)
                           {
                              _loc5_.x = this.§_-Jy§;
                              if(!(_loc9_ && param1))
                              {
                                 addr164:
                                 _loc5_.y = this.§in §;
                              }
                              §§push(§_-Bh§);
                              if(_loc8_ || _loc3_)
                              {
                                 §§push(§§pop() / this.§_-3w§);
                                 if(!(_loc9_ && _loc2_))
                                 {
                                    §§push(§§pop() / 2);
                                    if(!(_loc9_ && this))
                                    {
                                       §§push(Number(§§pop()));
                                    }
                                 }
                              }
                              var _loc6_:* = §§pop();
                              §§push(§_-iy§);
                              if(_loc8_ || _loc2_)
                              {
                                 §§push(§§pop() / this.§_-3w§);
                                 if(!_loc9_)
                                 {
                                    §§push(§§pop() / 2);
                                    if(!_loc8_)
                                    {
                                    }
                                    §§goto(addr215);
                                 }
                                 §§push(Number(§§pop()));
                              }
                              addr215:
                              var _loc7_:* = §§pop();
                              if(_loc8_)
                              {
                                 §§push(_loc5_);
                                 §§push(this.§_-Jy§);
                                 if(!_loc9_)
                                 {
                                    §§push(§§pop() - _loc6_);
                                 }
                                 §§pop().left = §§pop();
                                 if(_loc8_)
                                 {
                                    §§goto(addr228);
                                 }
                                 §§goto(addr243);
                              }
                              addr228:
                              §§push(_loc5_);
                              §§push(this.§_-Jy§);
                              if(!_loc9_)
                              {
                                 §§push(§§pop() + _loc6_);
                              }
                              §§pop().right = §§pop();
                              if(_loc8_ || _loc3_)
                              {
                                 addr243:
                                 §§push(_loc5_);
                                 §§push(_loc5_.y);
                                 if(_loc8_ || _loc3_)
                                 {
                                    §§push(§§pop() - _loc7_);
                                 }
                                 §§pop().top = §§pop();
                                 if(!_loc9_)
                                 {
                                    §§push(_loc5_);
                                    §§push(_loc5_.y);
                                    if(!(_loc9_ && this))
                                    {
                                       §§push(§§pop() + _loc7_);
                                    }
                                    §§pop().bottom = §§pop();
                                 }
                              }
                              do
                              {
                                 if(param1.§_-Pg§.length <= 0)
                                 {
                                    if(!_loc9_)
                                    {
                                       param1.§_-Pg§.push(_loc2_);
                                       if(!(_loc9_ && this))
                                       {
                                          break;
                                       }
                                    }
                                    §§goto(addr307);
                                 }
                                 param1.§_-Pg§.pop();
                              }
                              while(_loc8_);
                              
                              param1.§_-Pg§.push(_loc5_);
                              addr307:
                              return;
                           }
                           §§goto(addr164);
                        }
                        §§push(_loc2_);
                        §§push(_loc2_.y);
                        if(_loc8_)
                        {
                           §§push(§§pop() - _loc4_);
                        }
                        §§pop().top = §§pop();
                        if(_loc8_ || _loc3_)
                        {
                           §§push(_loc2_);
                           §§push(_loc2_.y);
                           if(_loc8_)
                           {
                              §§push(§§pop() + _loc4_);
                           }
                           §§pop().bottom = §§pop();
                        }
                     }
                     §§goto(addr137);
                  }
                  §§goto(addr56);
               }
               §§goto(addr47);
            }
            §§goto(addr30);
         }
         §§goto(addr24);
      }
      
      public function §_-69§(param1:§_-7x§) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         §§push(param1.scale);
         if(!(_loc8_ && _loc2_))
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(param1.x);
         if(!(_loc8_ && param1))
         {
            §§push(§_-MB§.§_-1q§ * 0.5);
            if(!_loc8_)
            {
               §§push(_loc2_);
               if(!(_loc8_ && _loc3_))
               {
                  addr53:
                  §§push(§§pop() / §§pop());
                  if(!_loc8_)
                  {
                     §§push(§_-tL§.§_-7m§);
                  }
                  §§push(§§pop() - §§pop());
                  if(!_loc8_)
                  {
                     addr56:
                     §§push(Number(§§pop()));
                  }
                  var _loc3_:* = §§pop();
                  §§push(param1.y);
                  if(_loc7_)
                  {
                     §§push(§_-MB§.§_-SP§ * 0.5);
                     if(!(_loc8_ && this))
                     {
                        §§push(_loc2_);
                        if(_loc7_ || this)
                        {
                           §§push(§§pop() / §§pop());
                           if(!_loc8_)
                           {
                              addr86:
                              §§push(§§pop() * §_-tL§.§_-7m§);
                           }
                           §§push(§§pop() - §§pop());
                           if(!_loc8_)
                           {
                              addr90:
                              §§push(Number(§§pop()));
                           }
                           var _loc4_:* = §§pop();
                           §§push(_loc3_);
                           if(_loc7_ || param1)
                           {
                              §§push(§_-MB§.§_-1q§ / _loc2_);
                              if(!(_loc8_ && _loc3_))
                              {
                                 §§push(§§pop() * §_-tL§.§_-7m§);
                              }
                              §§push(§§pop() + §§pop());
                              if(_loc7_)
                              {
                                 §§push(Number(§§pop()));
                              }
                           }
                           var _loc5_:* = §§pop();
                           §§push(_loc4_);
                           if(!_loc8_)
                           {
                              §§push(§_-MB§.§_-SP§ / _loc2_);
                              if(!(_loc8_ && _loc2_))
                              {
                                 §§push(§§pop() * §_-tL§.§_-7m§);
                              }
                              §§push(§§pop() + §§pop());
                              if(_loc7_)
                              {
                                 §§push(Number(§§pop()));
                              }
                           }
                           var _loc6_:* = §§pop();
                           if(_loc7_)
                           {
                              param1.left = _loc3_;
                              if(!(_loc8_ && _loc3_))
                              {
                                 param1.top = _loc4_;
                                 if(_loc7_ || _loc3_)
                                 {
                                 }
                                 §§goto(addr192);
                              }
                              param1.right = _loc5_;
                              if(_loc7_ || _loc2_)
                              {
                                 param1.bottom = _loc6_;
                                 if(_loc8_)
                                 {
                                 }
                                 §§goto(addr192);
                              }
                           }
                           addr192:
                           param1.scale = 0;
                           return;
                        }
                     }
                     §§goto(addr86);
                  }
                  §§goto(addr90);
               }
               §§push(§§pop() * §§pop());
            }
            §§goto(addr53);
         }
         §§goto(addr56);
      }
      
      public function §_-Jl§(param1:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:* = NaN;
         if(this.§_-oe§)
         {
            this.§_-Pm§ = this.§_-oe§.x;
            this.§_-wo§ = this.§_-oe§.y;
            if(!(_loc5_ && param1))
            {
               §§push(§§findproperty(§ use§));
               §§push(§_-Bh§);
               if(!_loc5_)
               {
                  §§push(this.§_-oe§.right);
                  if(!_loc5_)
                  {
                     §§push(§§pop() - this.§_-oe§.left);
                  }
                  §§push(§§pop() / §§pop());
               }
               §§pop().§ use§ = §§pop();
               addr428:
               this.§_-s5§();
            }
            else
            {
               addr409:
               this.§_-A3§(this.mCurrentCameraSliderLocation,param1);
               if(_loc4_ || _loc3_)
               {
                  §§goto(addr428);
               }
               addr158:
            }
            addr430:
            this.§_-Lp§();
         }
         else
         {
            this.§_-Ql§();
            §§push(Number(this.mCurrentCameraSliderLocation));
            if(_loc4_ || _loc2_)
            {
               _loc2_ = §§pop();
               §§push(this.mCurrentAction);
               if(_loc4_ || param1)
               {
                  §§push(§_-pF§);
                  if(_loc4_ || _loc3_)
                  {
                     if(§§pop() == §§pop())
                     {
                        §§push(_loc2_);
                        §§push(param1);
                        if(!_loc5_)
                        {
                           §§push(this.§_-rE§);
                           if(_loc4_ || _loc3_)
                           {
                              §§push(§§pop() * §§pop());
                              if(_loc4_ || param1)
                              {
                                 addr103:
                                 §§push(§§pop() + §§pop());
                                 if(!(_loc5_ && _loc2_))
                                 {
                                    §§push(Number(§§pop()));
                                    if(_loc4_)
                                    {
                                       _loc2_ = §§pop();
                                       if(_loc4_ || this)
                                       {
                                          §§push(_loc2_);
                                          if(!_loc5_)
                                          {
                                             §§push(§_-K§);
                                             if(_loc4_)
                                             {
                                                if(§§pop() >= §§pop())
                                                {
                                                   if(_loc4_ || _loc2_)
                                                   {
                                                      §§push(Number(§_-K§));
                                                      if(_loc4_ || _loc2_)
                                                      {
                                                         addr145:
                                                         _loc2_ = §§pop();
                                                         if(!_loc5_)
                                                         {
                                                            §§push(this);
                                                            §§push(this.§_-rE§);
                                                            if(!_loc5_)
                                                            {
                                                               §§push(-§§pop());
                                                            }
                                                            §§pop().§_-rE§ = §§pop();
                                                            addr155:
                                                            this.mCurrentCameraSliderLocation = _loc2_;
                                                            §§goto(addr158);
                                                         }
                                                         else
                                                         {
                                                            addr287:
                                                            §§goto(addr409);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         addr223:
                                                         §§push(param1);
                                                         if(!(_loc5_ && param1))
                                                         {
                                                            §§push(this.§_-rE§);
                                                            if(_loc4_)
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               if(_loc4_)
                                                               {
                                                                  §§push(§§pop() + §§pop());
                                                                  if(_loc4_)
                                                                  {
                                                                     _loc2_ = Number(§§pop());
                                                                     addr244:
                                                                     §§push(_loc2_);
                                                                     §§push(§_-K§);
                                                                     if(_loc4_)
                                                                     {
                                                                        addr247:
                                                                        if(§§pop() >= §§pop())
                                                                        {
                                                                           if(_loc4_ || _loc2_)
                                                                           {
                                                                              §§push(Number(§_-K§));
                                                                              if(!_loc5_)
                                                                              {
                                                                                 _loc2_ = §§pop();
                                                                                 if(_loc4_ || _loc2_)
                                                                                 {
                                                                                    this.§_-dE§(§_-Mt§);
                                                                                    if(!(_loc5_ && _loc3_))
                                                                                    {
                                                                                       addr277:
                                                                                       this.mCurrentCameraSliderLocation = _loc2_;
                                                                                       if(!(_loc4_ || _loc3_))
                                                                                       {
                                                                                          addr372:
                                                                                       }
                                                                                       §§goto(addr409);
                                                                                    }
                                                                                    §§goto(addr287);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr369:
                                                                                    this.§_-Im§ = true;
                                                                                 }
                                                                                 §§goto(addr372);
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr336:
                                                                                 addr330:
                                                                                 §§push(Number(§§pop()));
                                                                                 if(_loc4_)
                                                                                 {
                                                                                    addr333:
                                                                                    _loc2_ = §§pop();
                                                                                    §§push(_loc2_);
                                                                                 }
                                                                                 if(§§pop() <= 0)
                                                                                 {
                                                                                    §§goto(addr339);
                                                                                 }
                                                                                 this.mCurrentCameraSliderLocation = _loc2_;
                                                                                 if(_loc4_)
                                                                                 {
                                                                                    addr357:
                                                                                    §§goto(addr409);
                                                                                 }
                                                                                 §§goto(addr428);
                                                                              }
                                                                           }
                                                                           §§goto(addr409);
                                                                        }
                                                                        §§goto(addr277);
                                                                     }
                                                                     §§goto(addr336);
                                                                  }
                                                                  §§goto(addr330);
                                                               }
                                                               else
                                                               {
                                                                  addr327:
                                                                  §§push(§§pop() - §§pop());
                                                                  if(!_loc5_)
                                                                  {
                                                                     §§goto(addr336);
                                                                  }
                                                               }
                                                               §§goto(addr333);
                                                            }
                                                            else
                                                            {
                                                               addr326:
                                                               §§push(§§pop() * §§pop());
                                                            }
                                                         }
                                                         §§goto(addr327);
                                                      }
                                                      §§goto(addr428);
                                                   }
                                                }
                                                §§goto(addr155);
                                             }
                                             §§goto(addr247);
                                          }
                                          §§goto(addr339);
                                       }
                                       addr339:
                                       _loc2_ = Number(0);
                                       §§goto(addr337);
                                    }
                                    §§goto(addr244);
                                 }
                                 §§goto(addr145);
                              }
                              else
                              {
                                 addr324:
                                 §§push(this.§_-rE§);
                              }
                           }
                           §§goto(addr326);
                        }
                        §§goto(addr103);
                     }
                     else
                     {
                        addr161:
                        §§push(this.mCurrentAction);
                        §§push(§_-iB§);
                        if(_loc4_)
                        {
                           if(§§pop() == §§pop())
                           {
                              if(_loc4_ || _loc3_)
                              {
                                 §§push(this.§_-Mz§);
                                 if(_loc4_ || this)
                                 {
                                    if(§§pop())
                                    {
                                       if(!(_loc5_ && param1))
                                       {
                                          this.§_-qa§ = this.§_-Jy§;
                                          this.§_-zr§ = this.§in §;
                                          if(!(_loc5_ && _loc2_))
                                          {
                                             this.§_-Xm§ = this.mManualScale = this.§_-3w§;
                                             §§goto(addr287);
                                          }
                                       }
                                       §§goto(addr409);
                                    }
                                    else
                                    {
                                       §§goto(addr223);
                                       §§push(_loc2_);
                                    }
                                    §§goto(addr428);
                                 }
                                 else
                                 {
                                    addr296:
                                    if(§§pop())
                                    {
                                       this.§_-qa§ = this.§_-j8§;
                                       this.§_-zr§ = this.§_-ss§;
                                       if(_loc4_)
                                       {
                                          this.§_-Xm§ = this.mManualScale = this.§_-8b§;
                                          if(!_loc5_)
                                          {
                                             §§goto(addr357);
                                          }
                                          else
                                          {
                                             addr337:
                                             if(_loc4_ || this)
                                             {
                                                this.§_-dE§(§_-Mt§);
                                                if(_loc5_)
                                                {
                                                }
                                                §§goto(addr409);
                                             }
                                             §§goto(addr432);
                                          }
                                          return;
                                       }
                                       addr384:
                                       this.§_-Cl§(param1);
                                       if(_loc5_ && param1)
                                       {
                                       }
                                       §§goto(addr409);
                                       §§goto(addr409);
                                    }
                                    else
                                    {
                                       §§push(_loc2_);
                                       §§push(param1);
                                       if(_loc4_)
                                       {
                                          §§goto(addr324);
                                       }
                                       §§goto(addr327);
                                    }
                                 }
                                 §§goto(addr327);
                              }
                           }
                           else
                           {
                              §§push(this.mCurrentAction);
                              §§push(§_-rN§);
                              if(!_loc5_)
                              {
                                 addr293:
                                 if(§§pop() == §§pop())
                                 {
                                    §§goto(addr296);
                                    §§push(this.§_-Mz§);
                                 }
                                 else
                                 {
                                    §§push(this.mCurrentAction);
                                    §§push(§_-Z3§);
                                    if(!(_loc5_ && _loc2_))
                                    {
                                       if(§§pop() == §§pop())
                                       {
                                          §§goto(addr369);
                                       }
                                       else
                                       {
                                          §§push(this.mCurrentAction);
                                          §§push(§_-Xu§);
                                          if(_loc4_ || param1)
                                          {
                                          }
                                          addr398:
                                          if(§§pop() == §§pop())
                                          {
                                             this.§_-c1§(param1);
                                             if(_loc4_ || _loc3_)
                                             {
                                                §§goto(addr409);
                                             }
                                             §§goto(addr430);
                                          }
                                          §§goto(addr409);
                                       }
                                    }
                                    §§goto(addr398);
                                 }
                                 §§goto(addr409);
                              }
                              if(§§pop() != §§pop())
                              {
                                 §§goto(addr398);
                                 §§push(this.mCurrentAction);
                                 §§push(§_-w8§);
                              }
                           }
                           §§goto(addr409);
                        }
                        §§goto(addr398);
                     }
                  }
                  §§goto(addr293);
               }
               §§goto(addr161);
            }
            §§goto(addr339);
         }
         §§goto(addr339);
      }
      
      public function §_-A3§(param1:Number, param2:Number) : void
      {
         /*
          * Decompilation error
          * Timeout (1 minute) was reached
          * Instruction count: 1745
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to timeout");
      }
      
      public function §_-dU§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || this)
         {
            this.§_-fq§ = param1;
            if(_loc4_ || this)
            {
               this.§_-IC§ = param2;
            }
         }
      }
      
      public function §_-Ql§() : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_)
         {
            §§push(this);
            §§push(§_-KT§);
            if(!(_loc6_ && _loc1_))
            {
               §§push(this.§_-8b§);
               if(_loc7_)
               {
                  §§push(§_-KT§);
                  if(!_loc6_)
                  {
                     addr44:
                     §§push(§§pop() - §§pop());
                     if(!(_loc6_ && _loc2_))
                     {
                        addr42:
                        §§push(§§pop() * this.mManualScale);
                     }
                     §§pop().§_-0i§ = §§pop() + §§pop();
                     if(_loc7_)
                     {
                        this.§_-2M§ = this.§_-ss§;
                        addr51:
                        §§push(this.§_-2M§);
                        if(!_loc6_)
                        {
                           §§push(§_-iy§);
                           if(_loc7_)
                           {
                              §§push(0.5);
                              if(!_loc6_)
                              {
                                 addr72:
                                 §§push(§§pop() * §§pop());
                                 if(!(_loc6_ && _loc2_))
                                 {
                                    §§push(this.§_-8b§);
                                 }
                                 §§push(§§pop() + §§pop());
                                 if(!_loc6_)
                                 {
                                    addr75:
                                    §§push(Number(§§pop()));
                                 }
                                 var _loc1_:* = §§pop();
                                 §§push(§_-iy§);
                                 if(!(_loc6_ && _loc2_))
                                 {
                                    §§push(§§pop() / §_-KT§);
                                    if(_loc7_ || _loc3_)
                                    {
                                       §§push(§§pop() * 5);
                                       if(_loc7_)
                                       {
                                          addr98:
                                          §§push(Number(§§pop()));
                                       }
                                       var _loc2_:* = §§pop();
                                       if(!(_loc6_ && _loc2_))
                                       {
                                          §§push(_loc1_);
                                          if(!_loc6_)
                                          {
                                             §§push(_loc2_);
                                             if(!_loc6_)
                                             {
                                                if(§§pop() > §§pop())
                                                {
                                                   if(_loc7_)
                                                   {
                                                      §§push(this);
                                                      §§push(this.§_-2M§);
                                                      if(!_loc6_)
                                                      {
                                                         §§push(_loc2_);
                                                         if(!_loc6_)
                                                         {
                                                            §§push(§§pop() - _loc1_);
                                                         }
                                                         §§push(§§pop() + §§pop());
                                                      }
                                                      §§pop().§_-2M§ = §§pop();
                                                      if(!_loc6_)
                                                      {
                                                         addr130:
                                                         this.§_-FV§ = this.§_-j8§;
                                                      }
                                                      §§push(this.§_-FV§);
                                                      if(_loc7_)
                                                      {
                                                         §§push(§_-Bh§);
                                                         if(!_loc6_)
                                                         {
                                                            addr141:
                                                            §§push(0.5);
                                                            if(!_loc6_)
                                                            {
                                                               addr155:
                                                               §§push(§§pop() * §§pop());
                                                               if(!(_loc6_ && _loc3_))
                                                               {
                                                                  §§push(this.§_-0i§);
                                                               }
                                                               §§push(§§pop() - §§pop());
                                                               if(_loc7_ || this)
                                                               {
                                                                  addr164:
                                                                  var _loc3_:* = Number(§§pop());
                                                                  if(_loc3_ < this.§_-DB§)
                                                                  {
                                                                     §§push(this);
                                                                     §§push(this.§_-FV§);
                                                                     if(!(_loc6_ && _loc3_))
                                                                     {
                                                                        §§push(this.§_-DB§);
                                                                        if(!_loc6_)
                                                                        {
                                                                           §§push(§§pop() - _loc3_);
                                                                        }
                                                                        §§push(§§pop() + §§pop());
                                                                     }
                                                                     §§pop().§_-FV§ = §§pop();
                                                                     if(!_loc6_)
                                                                     {
                                                                        addr189:
                                                                        §§push(this);
                                                                        §§push(§_-KT§);
                                                                        if(_loc7_)
                                                                        {
                                                                           §§push(this.§_-3w§);
                                                                           if(!(_loc6_ && _loc2_))
                                                                           {
                                                                              §§push(§_-KT§);
                                                                              if(_loc7_)
                                                                              {
                                                                                 addr212:
                                                                                 §§push(§§pop() - §§pop());
                                                                                 if(_loc7_)
                                                                                 {
                                                                                    addr210:
                                                                                    §§push(§§pop() * this.mManualScale);
                                                                                 }
                                                                                 §§pop().§_-tq§ = §§pop() + §§pop();
                                                                                 if(_loc7_)
                                                                                 {
                                                                                    this.§_-AN§ = this.§in §;
                                                                                    if(!(_loc6_ && _loc3_))
                                                                                    {
                                                                                       §§push(this.§_-AN§);
                                                                                       if(_loc7_)
                                                                                       {
                                                                                          §§push(§_-iy§);
                                                                                          if(_loc7_ || _loc3_)
                                                                                          {
                                                                                             §§push(0.5);
                                                                                             if(!_loc6_)
                                                                                             {
                                                                                                §§push(§§pop() * §§pop());
                                                                                                if(_loc7_)
                                                                                                {
                                                                                                   §§push(this.§_-tq§);
                                                                                                   if(_loc7_ || this)
                                                                                                   {
                                                                                                      addr253:
                                                                                                      §§push(§§pop() / §§pop());
                                                                                                      if(!(_loc6_ && _loc1_))
                                                                                                      {
                                                                                                         _loc1_ = Number(§§pop() + §§pop());
                                                                                                         if(!_loc6_)
                                                                                                         {
                                                                                                            addr266:
                                                                                                            if(_loc1_ > _loc2_)
                                                                                                            {
                                                                                                               addr269:
                                                                                                               §§push(this);
                                                                                                               §§push(this.§_-AN§);
                                                                                                               if(!_loc6_)
                                                                                                               {
                                                                                                                  §§push(_loc2_);
                                                                                                                  if(!_loc6_)
                                                                                                                  {
                                                                                                                     §§push(§§pop() - _loc1_);
                                                                                                                  }
                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                               }
                                                                                                               §§pop().§_-AN§ = §§pop();
                                                                                                               if(_loc6_ && _loc2_)
                                                                                                               {
                                                                                                               }
                                                                                                               addr292:
                                                                                                               §§push(this.§_-pU§);
                                                                                                               §§push(§_-Bh§);
                                                                                                               §§push(0.5);
                                                                                                               if(!(_loc6_ && _loc1_))
                                                                                                               {
                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                  if(_loc7_ || this)
                                                                                                                  {
                                                                                                                     addr313:
                                                                                                                     §§push(Number(§§pop() + §§pop() / this.§_-tq§));
                                                                                                                     §§push(Number(§§pop() + §§pop() / this.§_-tq§));
                                                                                                                  }
                                                                                                                  var _loc4_:* = §§pop();
                                                                                                                  if(_loc7_ || this)
                                                                                                                  {
                                                                                                                     §§push(this.§_-4Y§);
                                                                                                                     if(!_loc6_)
                                                                                                                     {
                                                                                                                        if(§§pop() > §§pop())
                                                                                                                        {
                                                                                                                           §§push(this);
                                                                                                                           §§push(this.§_-pU§);
                                                                                                                           if(_loc7_)
                                                                                                                           {
                                                                                                                              §§push(this.§_-4Y§);
                                                                                                                              if(!_loc6_)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() - _loc4_);
                                                                                                                              }
                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                           }
                                                                                                                           §§pop().§_-pU§ = §§pop();
                                                                                                                        }
                                                                                                                        this.§_-Xm§ = this.mManualScale;
                                                                                                                        §§push(§_-Bh§);
                                                                                                                        if(_loc7_)
                                                                                                                        {
                                                                                                                           §§push(this.§_-Xm§);
                                                                                                                           if(!_loc6_)
                                                                                                                           {
                                                                                                                              §§push(§§pop() / §§pop());
                                                                                                                              §§push(this.§_-xA§);
                                                                                                                              if(_loc7_ || _loc3_)
                                                                                                                              {
                                                                                                                              }
                                                                                                                              addr536:
                                                                                                                              _loc4_ = §§pop();
                                                                                                                              §§push(this.§_-xA§);
                                                                                                                              if(_loc7_ || _loc1_)
                                                                                                                              {
                                                                                                                                 if(§§pop() > §§pop())
                                                                                                                                 {
                                                                                                                                    addr547:
                                                                                                                                    §§push(this);
                                                                                                                                    §§push(this.§_-qa§);
                                                                                                                                    if(_loc7_)
                                                                                                                                    {
                                                                                                                                       §§push(this.§_-xA§);
                                                                                                                                       if(!(_loc6_ && _loc1_))
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() - _loc4_);
                                                                                                                                       }
                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                    }
                                                                                                                                    §§pop().§_-qa§ = §§pop();
                                                                                                                                 }
                                                                                                                                 §§push(this.§_-zr§);
                                                                                                                                 if(!_loc6_)
                                                                                                                                 {
                                                                                                                                    addr569:
                                                                                                                                    §§push(§_-iy§);
                                                                                                                                    if(!_loc6_)
                                                                                                                                    {
                                                                                                                                       addr587:
                                                                                                                                       §§push(§§pop() * 0.5);
                                                                                                                                       if(!(_loc6_ && _loc1_))
                                                                                                                                       {
                                                                                                                                          addr585:
                                                                                                                                          §§push(Number(§§pop() - §§pop() / this.§_-Xm§));
                                                                                                                                       }
                                                                                                                                       var _loc5_:* = §§pop();
                                                                                                                                       if(!_loc6_)
                                                                                                                                       {
                                                                                                                                          §§push(this.§_-bj§);
                                                                                                                                          if(!_loc6_)
                                                                                                                                          {
                                                                                                                                             if(§§pop() < §§pop())
                                                                                                                                             {
                                                                                                                                                if(!_loc6_)
                                                                                                                                                {
                                                                                                                                                   §§push(this);
                                                                                                                                                   §§push(this.§_-zr§);
                                                                                                                                                   if(_loc7_)
                                                                                                                                                   {
                                                                                                                                                      §§push(this.§_-bj§);
                                                                                                                                                      if(_loc7_ || _loc2_)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() - _loc5_);
                                                                                                                                                      }
                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                   }
                                                                                                                                                   §§pop().§_-zr§ = §§pop();
                                                                                                                                                   if(!_loc6_)
                                                                                                                                                   {
                                                                                                                                                      addr617:
                                                                                                                                                      §§push(this.§_-zr§);
                                                                                                                                                      if(!_loc6_)
                                                                                                                                                      {
                                                                                                                                                         §§push(§_-iy§);
                                                                                                                                                         if(_loc7_)
                                                                                                                                                         {
                                                                                                                                                            §§push(0.5);
                                                                                                                                                            if(!_loc6_)
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr652);
                                                                                                                                                            }
                                                                                                                                                            §§push(§§pop() / §§pop());
                                                                                                                                                            if(_loc6_)
                                                                                                                                                            {
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr652);
                                                                                                                                                         }
                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                         if(!_loc6_)
                                                                                                                                                         {
                                                                                                                                                            addr638:
                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                            if(_loc7_)
                                                                                                                                                            {
                                                                                                                                                               addr641:
                                                                                                                                                               _loc1_ = §§pop();
                                                                                                                                                               if(!(_loc6_ && _loc1_))
                                                                                                                                                               {
                                                                                                                                                                  addr650:
                                                                                                                                                                  addr652:
                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                  if(_loc7_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(this.§_-Xm§);
                                                                                                                                                                  }
                                                                                                                                                                  if(§§pop() > §§pop())
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc7_ || _loc3_)
                                                                                                                                                                     {
                                                                                                                                                                        addr660:
                                                                                                                                                                        §§push(this);
                                                                                                                                                                        §§push(this.§_-zr§);
                                                                                                                                                                        if(!_loc6_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(this.§_-cF§);
                                                                                                                                                                           if(!(_loc6_ && _loc3_))
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() - _loc1_);
                                                                                                                                                                           }
                                                                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                                                                        }
                                                                                                                                                                        §§pop().§_-zr§ = §§pop();
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  return;
                                                                                                                                                                  §§push(_loc1_);
                                                                                                                                                                  §§push(this.§_-cF§);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr652);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr650);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr641);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr638);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr650);
                                                                                                                                                }
                                                                                                                                                §§goto(addr660);
                                                                                                                                             }
                                                                                                                                             §§goto(addr617);
                                                                                                                                          }
                                                                                                                                          §§goto(addr652);
                                                                                                                                       }
                                                                                                                                       §§goto(addr638);
                                                                                                                                    }
                                                                                                                                    §§goto(addr587);
                                                                                                                                 }
                                                                                                                                 §§push(§§pop());
                                                                                                                              }
                                                                                                                              §§goto(addr587);
                                                                                                                           }
                                                                                                                           if(§§pop() > §§pop() - this.§_-Qt§)
                                                                                                                           {
                                                                                                                              if(!_loc6_)
                                                                                                                              {
                                                                                                                                 §§push(this);
                                                                                                                                 §§push(§_-Bh§);
                                                                                                                                 if(!(_loc6_ && _loc1_))
                                                                                                                                 {
                                                                                                                                    §§push(this.§_-xA§);
                                                                                                                                    if(_loc7_)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() - this.§_-Qt§);
                                                                                                                                    }
                                                                                                                                    §§push(§§pop() / §§pop());
                                                                                                                                 }
                                                                                                                                 §§pop().§_-Xm§ = §§pop();
                                                                                                                                 if(_loc7_)
                                                                                                                                 {
                                                                                                                                    addr397:
                                                                                                                                    §§push(this);
                                                                                                                                    if(_loc7_ || _loc2_)
                                                                                                                                    {
                                                                                                                                       §§push(this.§_-Xm§);
                                                                                                                                       if(!_loc6_)
                                                                                                                                       {
                                                                                                                                          §§push(§_-KT§);
                                                                                                                                          if(!_loc6_)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() < §§pop());
                                                                                                                                             if(_loc7_ || _loc2_)
                                                                                                                                             {
                                                                                                                                                if(§§pop())
                                                                                                                                                {
                                                                                                                                                   addr458:
                                                                                                                                                   if(_loc7_ || _loc1_)
                                                                                                                                                   {
                                                                                                                                                      addr429:
                                                                                                                                                      §§push(Number(§_-KT§));
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      addr443:
                                                                                                                                                      §§push(§_-Fn§);
                                                                                                                                                      if(!_loc6_)
                                                                                                                                                      {
                                                                                                                                                         addr447:
                                                                                                                                                         §§push(Number(§§pop()));
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§pop().§_-Xm§ = §§pop();
                                                                                                                                                   if(_loc7_)
                                                                                                                                                   {
                                                                                                                                                      §§push(this.§_-qa§);
                                                                                                                                                      if(!(_loc6_ && _loc1_))
                                                                                                                                                      {
                                                                                                                                                         addr470:
                                                                                                                                                         §§push(§_-Bh§ * 0.5);
                                                                                                                                                         if(!_loc6_)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() - §§pop() / this.§_-Xm§);
                                                                                                                                                            if(!_loc6_)
                                                                                                                                                            {
                                                                                                                                                               §§push(Number(§§pop()));
                                                                                                                                                               if(_loc7_)
                                                                                                                                                               {
                                                                                                                                                                  _loc3_ = §§pop();
                                                                                                                                                                  addr485:
                                                                                                                                                                  §§push(_loc3_);
                                                                                                                                                                  §§push(this.§_-Qt§);
                                                                                                                                                                  if(_loc7_ || _loc2_)
                                                                                                                                                                  {
                                                                                                                                                                     addr495:
                                                                                                                                                                     if(§§pop() < §§pop())
                                                                                                                                                                     {
                                                                                                                                                                        §§push(this);
                                                                                                                                                                        §§push(this.§_-qa§);
                                                                                                                                                                        if(!_loc6_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(this.§_-Qt§);
                                                                                                                                                                           if(!(_loc6_ && _loc3_))
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() - _loc3_);
                                                                                                                                                                           }
                                                                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                                                                        }
                                                                                                                                                                        §§pop().§_-qa§ = §§pop();
                                                                                                                                                                        if(!_loc6_)
                                                                                                                                                                        {
                                                                                                                                                                           addr516:
                                                                                                                                                                           §§push(this.§_-qa§);
                                                                                                                                                                           §§push(§_-Bh§ * 0.5);
                                                                                                                                                                           if(!_loc6_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(Number(§§pop() + §§pop() / this.§_-Xm§));
                                                                                                                                                                              if(_loc7_ || _loc3_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr535:
                                                                                                                                                                                 §§goto(addr536);
                                                                                                                                                                                 §§push(§§pop());
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr585);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr547);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr516);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr587);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr569);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr585);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr495);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr535);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr485);
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   §§push(this.§_-Xm§);
                                                                                                                                                   if(_loc7_ || this)
                                                                                                                                                   {
                                                                                                                                                      addr442:
                                                                                                                                                      if(§§pop() > §_-Fn§)
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr443);
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         §§push(this.§_-Xm§);
                                                                                                                                                         if(_loc7_ || _loc1_)
                                                                                                                                                         {
                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr458);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr447);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr442);
                                                                                                                                       }
                                                                                                                                       §§goto(addr429);
                                                                                                                                    }
                                                                                                                                    §§goto(addr443);
                                                                                                                                 }
                                                                                                                                 §§goto(addr547);
                                                                                                                              }
                                                                                                                              §§goto(addr516);
                                                                                                                           }
                                                                                                                           §§goto(addr397);
                                                                                                                        }
                                                                                                                        §§goto(addr485);
                                                                                                                     }
                                                                                                                     §§goto(addr536);
                                                                                                                  }
                                                                                                                  §§goto(addr470);
                                                                                                               }
                                                                                                               §§goto(addr313);
                                                                                                            }
                                                                                                            this.§_-pU§ = this.§_-Jy§;
                                                                                                            §§goto(addr292);
                                                                                                         }
                                                                                                         §§goto(addr269);
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr313);
                                                                                             }
                                                                                             §§goto(addr253);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr269);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr269);
                                                                              }
                                                                           }
                                                                           §§goto(addr210);
                                                                        }
                                                                        §§goto(addr212);
                                                                     }
                                                                     §§goto(addr266);
                                                                  }
                                                                  §§goto(addr189);
                                                               }
                                                               §§goto(addr164);
                                                            }
                                                            §§push(§§pop() / §§pop());
                                                         }
                                                         §§goto(addr155);
                                                      }
                                                      §§goto(addr164);
                                                   }
                                                }
                                                §§goto(addr130);
                                             }
                                             §§goto(addr141);
                                          }
                                          §§goto(addr164);
                                       }
                                       §§goto(addr130);
                                    }
                                 }
                                 §§goto(addr98);
                              }
                              §§push(§§pop() / §§pop());
                           }
                           §§goto(addr72);
                        }
                        §§goto(addr75);
                     }
                     §§goto(addr51);
                  }
               }
               §§goto(addr42);
            }
            §§goto(addr44);
         }
         §§goto(addr51);
      }
      
      public function §_-FL§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         this.§_-Mz§ = true;
         if(_loc5_)
         {
            this.§_-qa§ = this.§_-Pm§;
            this.§_-zr§ = this.§_-wo§;
            this.§_-Qt§ = param1;
            if(_loc5_)
            {
               this.§_-xA§ = param3;
               this.§_-bj§ = param2;
               addr51:
               this.§_-cF§ = param4;
            }
            this.§_-Xm§ = § use§;
            return;
         }
         §§goto(addr51);
      }
      
      public function §_-s5§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            if(this.§_-Ag§.sprite)
            {
               if(_loc3_ || _loc3_)
               {
                  addr32:
                  §§push(§§findproperty(§_-wF§));
                  §§push(this.§_-Ag§.sprite);
                  §§push(§_-tL§.§_-il§);
                  if(!(_loc2_ && this))
                  {
                     §§push(1 - §_-LW§.§ use§);
                     if(!_loc2_)
                     {
                        §§push(§§pop() / 2);
                        if(!(_loc2_ && _loc1_))
                        {
                           addr67:
                           §§push(§§pop() * §§pop());
                           §§push(§§pop() * §§pop());
                        }
                        var _loc1_:* = §§pop();
                        §§pop().x = §§pop();
                        §§pop().§_-wF§ = _loc1_;
                        if(!(_loc2_ && this))
                        {
                           §§goto(addr81);
                        }
                        §§goto(addr126);
                     }
                  }
                  §§goto(addr67);
               }
               addr81:
               §§push(§§findproperty(§_-C4§));
               §§push(this.§_-Ag§.sprite);
               §§push(§_-tL§.§_-zh§);
               if(!(_loc2_ && _loc3_))
               {
                  §§push(1 - §_-LW§.§ use§);
                  if(!_loc2_)
                  {
                     §§push(§§pop() * §§pop());
                     if(!(_loc2_ && this))
                     {
                        §§goto(addr126);
                     }
                     §§push(§§pop());
                  }
                  addr126:
                  §§goto(addr108);
               }
               addr108:
               §§push(§_-y5§.§_-f4§);
               if(!(_loc2_ && _loc2_))
               {
                  §§push(§§pop() * §§pop());
               }
               _loc1_ = §§pop();
               §§pop().y = §§pop();
               §§pop().§_-C4§ = _loc1_;
               return;
            }
            §§goto(addr126);
         }
         §§goto(addr32);
      }
      
      public function §_-8d§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §§push(this.§_-Ag§);
            if(!_loc1_)
            {
               §§push(§§pop().sprite);
               if(!_loc1_)
               {
                  if(§§pop())
                  {
                     if(_loc2_ || this)
                     {
                        §§push(this.§_-Ag§);
                        if(!(_loc1_ && _loc2_))
                        {
                           addr52:
                           §§push(§§pop().sprite);
                           if(!(_loc1_ && _loc2_))
                           {
                              addr60:
                              §§push(§ use§);
                              if(!_loc1_)
                              {
                                 §§pop().scaleX = §§pop();
                                 §§goto(addr78);
                              }
                              §§pop().scaleY = §§pop();
                              §§goto(addr78);
                           }
                        }
                     }
                     §§goto(addr76);
                  }
                  addr78:
                  if(_loc2_)
                  {
                     addr76:
                     §§push(this.§_-Ag§.sprite);
                     §§push(§ use§);
                  }
                  return;
               }
               §§goto(addr60);
            }
            §§goto(addr52);
         }
         §§goto(addr76);
      }
      
      public function §_-Lp§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(this.§_-Pm§);
         if(!_loc3_)
         {
            §§push(§_-tL§.§_-7m§);
            if(_loc4_ || _loc2_)
            {
               addr46:
               §§push(§§pop() / §§pop());
               if(_loc4_ || _loc3_)
               {
                  §§push(this.§_-fq§);
               }
               var _loc1_:* = §§pop();
               §§push(this.§_-wo§);
               if(!_loc3_)
               {
                  §§push(§_-tL§.§_-7m§);
                  if(!_loc3_)
                  {
                     §§push(§§pop() / §§pop());
                     if(_loc4_ || _loc3_)
                     {
                        addr65:
                        §§push(§§pop() + this.§_-IC§);
                        if(_loc3_ && _loc2_)
                        {
                        }
                        addr74:
                        var _loc2_:* = §§pop();
                        §§push(this);
                        §§push(_loc1_);
                        if(_loc4_)
                        {
                           §§push(§_-tL§.§_-il§);
                           if(_loc4_)
                           {
                              §§push(§§pop() / 2);
                              if(!_loc3_)
                              {
                                 §§push(§_-MB§.§_-Rs§);
                                 if(!_loc3_)
                                 {
                                    addr110:
                                    §§push(§§pop() * §§pop());
                                    if(!(_loc3_ && _loc2_))
                                    {
                                       addr108:
                                       §§push(§§pop() / §_-MB§.§_-D1§);
                                    }
                                    §§pop().§_-bM§ = §§pop() - §§pop();
                                    if(!(_loc3_ && _loc1_))
                                    {
                                       §§push(this);
                                       §§push(_loc2_);
                                       if(!_loc3_)
                                       {
                                          §§push(§_-tL§.§_-zh§);
                                          if(_loc4_ || _loc3_)
                                          {
                                             §§push(§§pop() / 2);
                                             if(!_loc3_)
                                             {
                                                addr141:
                                                §§push(§§pop() - §§pop());
                                                if(_loc4_)
                                                {
                                                   §§push(§_-y5§.§_-Rl§);
                                                }
                                                §§pop().§_-z§ = §§pop();
                                                if(!_loc3_)
                                                {
                                                   §§push(this.§_-Ag§);
                                                   if(_loc4_)
                                                   {
                                                      §§pop().background.§_-lt§(this.§_-bM§,this.§_-z§);
                                                      if(_loc4_)
                                                      {
                                                         addr156:
                                                         §§push(this.§_-Ag§);
                                                         if(!(_loc3_ && _loc3_))
                                                         {
                                                            §§pop().objects.§_-lt§(this.§_-bM§,this.§_-z§);
                                                            §§push(this.§_-Ag§);
                                                            if(!(_loc3_ && _loc3_))
                                                            {
                                                               addr180:
                                                               §§pop().§_-hA§.§_-lt§(this.§_-bM§,this.§_-z§);
                                                               §§push(this.§_-Ag§);
                                                               if(!_loc4_)
                                                               {
                                                               }
                                                               §§goto(addr205);
                                                            }
                                                            §§pop().slingshot.§_-lt§(this.§_-bM§,this.§_-z§);
                                                            addr205:
                                                            §§pop().particles.§_-lt§(this.§_-bM§,this.§_-z§);
                                                            return;
                                                            §§push(this.§_-Ag§);
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr180);
                                                }
                                                §§goto(addr156);
                                             }
                                          }
                                          §§push(§§pop() + §§pop());
                                       }
                                       §§goto(addr141);
                                    }
                                    §§goto(addr156);
                                 }
                                 §§goto(addr108);
                              }
                           }
                           §§goto(addr108);
                        }
                        §§goto(addr110);
                     }
                     §§goto(addr74);
                     §§push(Number(§§pop()));
                  }
               }
               §§goto(addr65);
            }
            §§push(§§pop() + §§pop());
            if(!(_loc3_ && _loc3_))
            {
               §§push(Number(§§pop()));
            }
         }
         §§goto(addr46);
      }
      
      public function startDragging(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         this.§_-Er§ = -1;
         if(this.§_-Mz§)
         {
            if(!(_loc4_ && _loc3_))
            {
               this.§_-dE§(§_-w8§);
               if(_loc5_ || _loc3_)
               {
                  §§goto(addr43);
               }
               §§goto(addr117);
            }
            §§goto(addr128);
         }
         else
         {
            this.§_-dE§(§_-Xu§);
            if(!_loc4_)
            {
               addr43:
               §§push(this);
               §§push(this);
               §§push(this.§_-CE§ = param1);
               if(!(_loc4_ && param2))
               {
                  var _loc3_:*;
                  §§push(_loc3_ = §§pop());
               }
               §§pop().§_-Ne§ = §§pop();
               §§pop().§_-Zs§ = _loc3_;
               §§push(this);
               §§push(this);
               §§push(this.§_-GU§ = param2);
               if(!_loc4_)
               {
                  §§push(_loc3_ = §§pop());
               }
               §§pop().§_-7n§ = §§pop();
               §§pop().§_-ax§ = _loc3_;
               if(!_loc4_)
               {
                  this.§_-a6§ = 0;
                  this.§_-Tp§ = this.§_-Pm§;
                  this.§_-B6§ = this.§_-wo§;
                  if(!_loc4_)
                  {
                     this.§_-CG§ = § use§;
                     this.mTempCameraAnimationScale2 = § use§;
                     if(!(_loc4_ && param2))
                     {
                        addr117:
                        if(Math.abs(this.§_-pU§ - this.§_-FV§) > 0.001)
                        {
                           if(!_loc4_)
                           {
                              §§goto(addr128);
                           }
                        }
                     }
                     addr128:
                     §§push(this);
                     §§push(this.§_-Pm§);
                     if(!_loc4_)
                     {
                        §§push(this.§_-FV§);
                        if(!_loc4_)
                        {
                           §§goto(addr159);
                        }
                        §§push(§§pop() / §§pop());
                        if(!_loc4_)
                        {
                           §§push(§§pop() * §_-K§);
                        }
                     }
                     addr159:
                     §§push(§§pop() - §§pop());
                     if(_loc5_)
                     {
                        §§push(this.§_-pU§);
                        if(_loc5_)
                        {
                           §§push(§§pop() - this.§_-FV§);
                        }
                     }
                     §§pop().mCurrentCameraSliderLocation = §§pop();
                     §§goto(addr160);
                  }
                  §§goto(addr117);
               }
               addr160:
               this.mDragging = true;
               return;
            }
         }
         §§goto(addr159);
      }
      
      public function §_-Cl§(param1:int) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:* = Number(this.mCurrentCameraSliderLocation);
         if(_loc5_ || _loc2_)
         {
            §§push(this);
            §§push(this.§_-a6§);
            if(_loc5_ || this)
            {
               §§push(§§pop() + param1);
            }
            §§pop().§_-a6§ = §§pop();
         }
         §§push(this.§_-Zs§);
         if(!_loc4_)
         {
            §§push(§§pop() - this.§_-Ne§);
            if(_loc5_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc3_:* = §§pop();
         §§push(this.§_-2c§);
         §§push(0);
         if(_loc5_ || this)
         {
            if(§§pop() > §§pop())
            {
               §§push(_loc2_);
               if(_loc5_ || _loc2_)
               {
                  §§push(_loc3_);
                  if(_loc5_ || _loc2_)
                  {
                     §§push(§_-tL§.§_-7m§);
                     if(!(_loc4_ && _loc2_))
                     {
                        §§push(§§pop() * §§pop());
                        if(_loc5_)
                        {
                           §§push(§ use§);
                           if(!(_loc4_ && _loc3_))
                           {
                              §§push(§§pop() / §§pop());
                              if(!(_loc4_ && _loc3_))
                              {
                                 addr111:
                                 §§push(this.§_-2c§);
                                 if(_loc5_ || this)
                                 {
                                    addr120:
                                    §§push(§§pop() / §§pop());
                                    if(!(_loc4_ && _loc2_))
                                    {
                                       §§push(§§pop() * §_-K§);
                                       if(!(_loc4_ && _loc3_))
                                       {
                                          §§push(Number(§§pop() - §§pop()));
                                          if(!_loc4_)
                                          {
                                             §§goto(addr141);
                                          }
                                       }
                                       §§goto(addr193);
                                    }
                                    §§goto(addr167);
                                 }
                              }
                              §§goto(addr158);
                           }
                           §§goto(addr193);
                        }
                        §§goto(addr158);
                     }
                     §§goto(addr120);
                  }
                  §§goto(addr111);
               }
               addr141:
               _loc2_ = §§pop();
               if(!_loc4_)
               {
                  this.§_-Im§ = false;
                  §§push(_loc2_);
                  if(_loc5_)
                  {
                     §§push(0);
                     if(_loc5_)
                     {
                        if(§§pop() < §§pop())
                        {
                           §§push(_loc2_);
                           §§push(_loc2_);
                           if(_loc5_)
                           {
                              addr158:
                              §§push(0.3);
                              if(!(_loc4_ && this))
                              {
                                 addr169:
                                 _loc2_ = Number(§§pop() - §§pop() * §§pop());
                                 this.§_-Im§ = true;
                                 addr173:
                                 §§push(_loc2_);
                                 if(_loc5_ || _loc2_)
                                 {
                                    §§push(§_-K§);
                                    if(!_loc4_)
                                    {
                                       §§goto(addr184);
                                    }
                                    §§goto(addr187);
                                 }
                                 §§goto(addr193);
                                 addr167:
                              }
                           }
                           §§goto(addr193);
                        }
                        §§goto(addr173);
                     }
                     §§goto(addr184);
                  }
                  §§goto(addr169);
               }
               §§goto(addr184);
            }
            addr184:
            if(§§pop() > §§pop())
            {
               addr193:
               _loc2_ += (§_-K§ - _loc2_) * 0.3;
               addr187:
               if(!(_loc4_ && this))
               {
                  this.§_-Im§ = true;
               }
            }
            this.mCurrentCameraSliderLocation = _loc2_;
            this.§_-Ne§ = this.§_-Zs§;
            return;
         }
         §§goto(addr193);
      }
      
      public function §_-c1§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this);
            §§push(this.§_-qa§);
            if(!(_loc2_ && _loc2_))
            {
               §§push(this.§_-Ne§);
               if(!(_loc2_ && param1))
               {
                  §§push(this.§_-Zs§);
                  if(!_loc2_)
                  {
                     §§goto(addr58);
                  }
               }
               §§goto(addr49);
            }
            addr58:
            §§push(§§pop() - §§pop());
            if(_loc3_)
            {
               addr49:
               §§push(§§pop() * §_-tL§.§_-7m§);
            }
            §§pop().§_-qa§ = §§pop() + §§pop();
            if(!(_loc2_ && _loc2_))
            {
               §§push(this);
               §§push(this.§_-zr§);
               if(!(_loc2_ && param1))
               {
                  §§push(this.§_-7n§);
                  if(!(_loc2_ && _loc2_))
                  {
                     §§push(this.§_-ax§);
                     if(_loc3_)
                     {
                        §§goto(addr95);
                     }
                     §§push(§§pop() * §§pop());
                  }
                  addr95:
                  §§goto(addr96);
               }
               addr96:
               §§push(§§pop() - §§pop());
               if(_loc3_)
               {
                  §§push(§_-tL§.§_-7m§);
               }
               §§pop().§_-zr§ = §§pop() + §§pop();
               if(!_loc2_)
               {
                  this.§_-Ne§ = this.§_-Zs§;
                  if(_loc2_)
                  {
                  }
                  §§goto(addr116);
               }
               this.§_-7n§ = this.§_-ax§;
            }
            §§goto(addr116);
         }
         addr116:
      }
      
      public function dragToNewPoint(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
         {
            §§push(this.mCurrentAction);
            if(_loc3_)
            {
               §§push(§_-Xu§);
               if(_loc3_ || this)
               {
                  §§push(§§pop() == §§pop());
                  if(!_loc4_)
                  {
                     if(!§§pop())
                     {
                        if(!(_loc4_ && param1))
                        {
                           §§pop();
                           if(!_loc4_)
                           {
                              §§goto(addr58);
                           }
                           §§goto(addr83);
                        }
                     }
                  }
                  addr58:
                  §§goto(addr57);
               }
               addr57:
               §§goto(addr56);
            }
            addr56:
            §§goto(addr54);
         }
         addr54:
         if(this.mCurrentAction == §_-w8§)
         {
            if(!(_loc4_ && _loc3_))
            {
               this.§_-Zs§ = param1;
               if(!(_loc4_ && _loc3_))
               {
                  addr83:
                  this.§_-ax§ = param2;
               }
            }
         }
      }
      
      public function stopDragging(param1:Number = -1, param2:Number = -1) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:Number = NaN;
         §§push(this.mCurrentAction);
         if(!(_loc5_ && param2))
         {
            §§push(§_-Xu§);
            if(_loc4_)
            {
               if(§§pop() == §§pop())
               {
                  this.§_-dE§(§_-Mt§);
                  §§push(param1);
                  if(!(_loc5_ && param2))
                  {
                     §§push(0);
                     if(_loc4_)
                     {
                        if(§§pop() > §§pop())
                        {
                           if(!_loc5_)
                           {
                              this.§_-Zs§ = param1;
                              addr48:
                              _loc3_ = Math.abs(this.§_-Zs§ - this.§_-CE§);
                              if(!_loc5_)
                              {
                                 §§push(this.§_-a6§);
                                 §§push(§_-5T§);
                                 if(_loc4_)
                                 {
                                    §§push(§§pop() < §§pop());
                                    if(!(_loc5_ && param2))
                                    {
                                       §§push(§§pop());
                                       if(!_loc5_)
                                       {
                                          if(§§pop())
                                          {
                                             if(!_loc5_)
                                             {
                                                §§pop();
                                                §§push(_loc3_);
                                                if(!_loc5_)
                                                {
                                                   §§push(§_-wS§);
                                                   if(_loc4_)
                                                   {
                                                      §§push(§§pop() >= §§pop());
                                                      if(_loc4_ || param1)
                                                      {
                                                         addr93:
                                                         if(§§pop())
                                                         {
                                                            if(_loc5_ && param1)
                                                            {
                                                            }
                                                            addr136:
                                                            if(§§pop())
                                                            {
                                                               if(!(_loc5_ && param2))
                                                               {
                                                                  §§push(this.§_-Zs§);
                                                                  if(!_loc5_)
                                                                  {
                                                                     addr150:
                                                                     if(§§pop() < this.§_-CE§)
                                                                     {
                                                                        if(!_loc5_)
                                                                        {
                                                                           this.§_-dE§(§_-iB§);
                                                                           addr160:
                                                                           §§push(this);
                                                                           §§push(_loc3_);
                                                                           if(_loc4_)
                                                                           {
                                                                              §§push(§§pop() / this.§_-a6§);
                                                                              if(!(_loc5_ && param1))
                                                                              {
                                                                                 addr174:
                                                                                 §§push(§§pop() * 10);
                                                                              }
                                                                              §§pop().§_-rE§ = §§pop();
                                                                              §§goto(addr177);
                                                                           }
                                                                           §§goto(addr174);
                                                                        }
                                                                        §§goto(addr221);
                                                                     }
                                                                     else
                                                                     {
                                                                        this.§_-dE§(§_-rN§);
                                                                     }
                                                                     §§goto(addr160);
                                                                  }
                                                                  else
                                                                  {
                                                                     addr217:
                                                                     if(§§pop() >= §_-5C§)
                                                                     {
                                                                        this.§_-Cl§(0);
                                                                        this.§_-WI§(0);
                                                                        §§goto(addr245);
                                                                     }
                                                                     §§goto(addr235);
                                                                  }
                                                               }
                                                               §§goto(addr245);
                                                            }
                                                            else
                                                            {
                                                               §§push(this.§_-a6§);
                                                            }
                                                            §§goto(addr217);
                                                         }
                                                         §§goto(addr136);
                                                      }
                                                      §§pop();
                                                      if(!_loc5_)
                                                      {
                                                         addr106:
                                                         §§push(_loc3_);
                                                         §§push(§_-CH§);
                                                         if(!(_loc5_ && param2))
                                                         {
                                                            §§push(§§pop() * this.§_-a6§);
                                                            if(_loc4_ || _loc3_)
                                                            {
                                                               §§push(§§pop() / 1000);
                                                               if(!_loc5_)
                                                               {
                                                                  addr135:
                                                                  §§goto(addr136);
                                                                  §§push(§§pop() >= §§pop());
                                                               }
                                                               §§goto(addr150);
                                                            }
                                                            §§goto(addr135);
                                                         }
                                                         §§goto(addr217);
                                                      }
                                                      §§goto(addr200);
                                                   }
                                                   §§goto(addr217);
                                                }
                                                §§goto(addr150);
                                             }
                                             §§goto(addr136);
                                          }
                                       }
                                    }
                                    §§goto(addr93);
                                 }
                                 §§goto(addr217);
                              }
                              §§goto(addr211);
                           }
                           addr177:
                           this.§_-Im§ = false;
                           §§push(this.mCurrentCameraSliderLocation);
                           if(!(_loc5_ && this))
                           {
                              addr189:
                              §§push(0);
                              if(_loc4_)
                              {
                                 if(§§pop() < §§pop())
                                 {
                                    if(_loc4_)
                                    {
                                       this.§_-Im§ = true;
                                       if(!_loc5_)
                                       {
                                          §§goto(addr200);
                                       }
                                       else
                                       {
                                          addr219:
                                          this.§_-4q§();
                                          addr221:
                                          this.§_-rE§ = §_-K§ / (§_-K§ / 500);
                                          if(!(_loc5_ && _loc3_))
                                          {
                                             §§goto(addr235);
                                          }
                                       }
                                    }
                                    else
                                    {
                                       this.§_-rE§ = §_-K§ / (§_-K§ / 500);
                                       this.§_-Im§ = true;
                                       addr245:
                                    }
                                    §§goto(addr235);
                                 }
                                 addr200:
                                 §§goto(addr203);
                              }
                              addr203:
                              §§goto(addr202);
                           }
                           addr202:
                           if(this.mCurrentCameraSliderLocation > §_-K§)
                           {
                              if(_loc4_ || param2)
                              {
                                 addr211:
                                 this.§_-Im§ = true;
                              }
                              else
                              {
                                 addr235:
                                 this.§_-Im§ = true;
                                 §§goto(addr262);
                              }
                              §§goto(addr262);
                           }
                           addr262:
                           this.mDragging = false;
                           return;
                        }
                        §§goto(addr48);
                     }
                     §§goto(addr217);
                  }
                  §§goto(addr106);
               }
               §§goto(addr235);
            }
            §§goto(addr200);
         }
         §§goto(addr189);
      }
      
      public function §_-4q§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.mCurrentAction);
         if(_loc2_ || this)
         {
            §§push(§_-iB§);
            if(!(_loc1_ && _loc1_))
            {
               if(§§pop() == §§pop())
               {
                  if(_loc2_)
                  {
                     this.§_-dE§(§_-rN§);
                     if(_loc1_ && _loc2_)
                     {
                        addr97:
                        this.§_-dE§(§_-rN§);
                        if(!_loc2_)
                        {
                        }
                     }
                     §§goto(addr126);
                  }
               }
               else
               {
                  §§push(this.mCurrentAction);
                  if(_loc2_)
                  {
                     addr49:
                     §§push(§_-rN§);
                     if(!_loc1_)
                     {
                        if(§§pop() == §§pop())
                        {
                           if(!(_loc1_ && this))
                           {
                              this.§_-dE§(§_-iB§);
                              if(!_loc2_)
                              {
                                 §§goto(addr97);
                              }
                           }
                           §§goto(addr126);
                        }
                        else
                        {
                           §§push(this.mCurrentCameraSliderLocation);
                           if(_loc2_ || _loc1_)
                           {
                              §§push(§_-K§);
                              if(!_loc1_)
                              {
                                 addr85:
                                 §§push(2);
                                 if(!(_loc1_ && _loc2_))
                                 {
                                    §§push(§§pop() / §§pop());
                                    if(_loc2_)
                                    {
                                       if(§§pop() >= §§pop())
                                       {
                                          §§goto(addr97);
                                       }
                                       else
                                       {
                                          addr107:
                                          §§push(this.mCurrentCameraSliderLocation);
                                          §§push(§_-K§ / 2);
                                       }
                                       §§goto(addr126);
                                    }
                                    if(§§pop() <= §§pop())
                                    {
                                       if(_loc2_ || _loc1_)
                                       {
                                          this.§_-dE§(§_-iB§);
                                       }
                                    }
                                    §§goto(addr126);
                                 }
                                 §§goto(addr107);
                              }
                           }
                           §§goto(addr107);
                        }
                     }
                  }
                  §§goto(addr107);
               }
               addr126:
               return;
            }
            §§goto(addr85);
         }
         §§goto(addr49);
      }
      
      public function §_-WI§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§_-Er§ = param1;
            if(!_loc3_)
            {
               if(this.mCurrentCameraSliderLocation < §_-K§ / 2)
               {
                  if(!_loc3_)
                  {
                     addr40:
                     this.§_-dE§(§_-rN§);
                     if(!(_loc3_ && this))
                     {
                        addr57:
                     }
                  }
                  §§goto(addr57);
               }
               else
               {
                  this.§_-dE§(§_-iB§);
               }
               return;
            }
            §§goto(addr57);
         }
         §§goto(addr40);
      }
      
      public function goToBirdView() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            this.§_-dE§(§_-rN§);
         }
      }
      
      public function goToCastleView() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            this.§_-dE§(§_-iB§);
         }
      }
      
      public function §_-dE§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§_-Tp§ = this.§_-Pm§;
            if(_loc3_ || _loc3_)
            {
               this.§_-B6§ = this.§_-wo§;
               if(!(_loc2_ && this))
               {
                  this.§_-CG§ = § use§;
                  if(!(_loc2_ && _loc2_))
                  {
                     §§goto(addr60);
                  }
                  this.mCurrentAction = param1;
               }
            }
            §§goto(addr60);
         }
         addr60:
         this.mTempCameraAnimationScale2 = § use§;
         if(_loc2_ && _loc2_)
         {
         }
      }
      
      public function isOnCastleView(param1:Boolean = false) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            §§push(this.mCurrentCameraSliderLocation);
            if(!_loc2_)
            {
               §§push(§_-K§);
               if(!(_loc2_ && this))
               {
                  if(§§pop() == §§pop())
                  {
                     if(!(_loc2_ && _loc2_))
                     {
                        §§push(true);
                        if(_loc3_)
                        {
                           return §§pop();
                        }
                     }
                     else
                     {
                        addr67:
                        §§push(true);
                        if(_loc2_)
                        {
                           §§goto(addr72);
                        }
                     }
                     return §§pop();
                  }
                  addr64:
                  if(this.mCurrentAction == §_-iB§)
                  {
                     if(_loc3_)
                     {
                        §§goto(addr67);
                     }
                     else
                     {
                        addr71:
                        §§push(false);
                     }
                  }
                  §§goto(addr71);
                  addr72:
                  return §§pop();
               }
            }
            §§goto(addr64);
         }
         §§goto(addr71);
      }
      
      public function §_-4m§(param1:§_-7x§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§_-oe§ = param1;
            if(!(_loc3_ && _loc2_))
            {
               if(this.§_-oe§ != null)
               {
                  if(!_loc3_)
                  {
                     this.§_-XJ§ = new §_-7x§();
                     §§push(this.§_-XJ§);
                     if(_loc2_)
                     {
                        §§push(this.§_-Pm§);
                        if(!_loc3_)
                        {
                           §§pop().x = §§pop();
                           §§push(this.§_-XJ§);
                           if(_loc2_ || _loc3_)
                           {
                              addr60:
                              §§push(this.§_-wo§);
                              if(_loc2_ || _loc3_)
                              {
                                 §§pop().y = §§pop();
                                 if(!(_loc3_ && this))
                                 {
                                    §§push(this.§_-XJ§);
                                 }
                                 else
                                 {
                                    addr111:
                                    this.§_-XJ§ = null;
                                    §§goto(addr114);
                                 }
                                 §§goto(addr114);
                              }
                              §§goto(addr80);
                           }
                           §§push(§ use§);
                        }
                        addr80:
                        §§pop().scale = §§pop();
                        if(!(_loc3_ && param1))
                        {
                           §§goto(addr114);
                        }
                        addr114:
                        return;
                     }
                     §§goto(addr60);
                  }
                  §§goto(addr111);
               }
               else
               {
                  this.§_-Pm§ = this.§_-XJ§.x;
               }
               this.§_-wo§ = this.§_-XJ§.y;
               § use§ = this.§_-XJ§.scale;
            }
         }
         §§goto(addr111);
      }
      
      public function adjustManualScale(param1:Boolean) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(this.mManualScale);
         if(_loc3_ || this)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(param1);
         if(_loc3_ || _loc3_)
         {
            if(§§pop())
            {
               if(!_loc4_)
               {
                  §§push(_loc2_);
                  §§push(§_-ks§);
                  if(!_loc4_)
                  {
                     §§push(Number(§§pop() + §§pop()));
                     if(_loc3_)
                     {
                        _loc2_ = §§pop();
                        if(_loc3_)
                        {
                           addr73:
                           §§push(Number(Math.max(§_-tc§,Math.min(§_-E3§,_loc2_))));
                           if(!(_loc4_ && _loc3_))
                           {
                              _loc2_ = §§pop();
                              §§goto(addr90);
                           }
                           addr90:
                           if(_loc2_ != this.mManualScale)
                           {
                              if(_loc3_)
                              {
                                 this.mManualScale = _loc2_;
                                 if(_loc3_)
                                 {
                                    §§push(this.§_-Mz§);
                                    if(_loc3_ || param1)
                                    {
                                       addr109:
                                       if(§§pop())
                                       {
                                          this.§_-dE§(§_-w8§);
                                          §§goto(addr131);
                                       }
                                       else
                                       {
                                          §§push(this.isOnCastleView());
                                       }
                                       §§goto(addr131);
                                    }
                                    if(§§pop())
                                    {
                                       this.goToCastleView();
                                       if(_loc3_)
                                       {
                                          addr128:
                                       }
                                    }
                                    else
                                    {
                                       this.goToBirdView();
                                    }
                                 }
                              }
                           }
                           addr131:
                           return;
                           addr46:
                        }
                        §§goto(addr128);
                     }
                     else
                     {
                        addr55:
                        §§push(§_-ks§);
                        if(_loc3_ || param1)
                        {
                           addr70:
                           _loc2_ = Number(§§pop() - §§pop());
                           §§goto(addr73);
                        }
                     }
                     §§goto(addr90);
                  }
                  §§goto(addr70);
               }
               §§goto(addr46);
            }
            else
            {
               §§push(_loc2_);
               if(_loc3_ || _loc2_)
               {
                  §§goto(addr55);
               }
            }
            §§goto(addr90);
         }
         §§goto(addr109);
      }
      
      public function §_-tK§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.mManualScale = Math.max(this.mManualScale - 0.5,0.5);
         }
      }
      
      public function §_-fJ§() : String
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:* = "";
         if(_loc2_)
         {
            §§push(_loc1_);
            §§push(" mManualScale: " + this.mManualScale);
            if(_loc2_)
            {
               _loc1_ = §§pop() + §§pop();
               _loc1_ += " mXcenterB2: " + this.§_-Pm§;
               §§push(_loc1_);
               if(!_loc3_)
               {
                  _loc1_ = §§pop() + (" mYcenterB2: " + this.§_-wo§);
                  §§push(_loc1_ + (" mXcenterB2target: " + this.mManualScale));
                  if(_loc2_)
                  {
                     _loc1_ = §§pop();
                     if(_loc2_)
                     {
                        _loc1_ += "\n mYcenterB2target: " + this.mManualScale;
                        §§push(_loc1_);
                        if(!(_loc3_ && this))
                        {
                           _loc1_ = §§pop() + (" mXcenterB2previous: " + this.mManualScale);
                           addr87:
                           _loc1_ += " mYcenterB2previous: " + this.mManualScale;
                           _loc1_ += " mTimeNeededForCameraMovement: " + this.mManualScale;
                           §§push(_loc1_);
                           if(_loc2_ || this)
                           {
                              _loc1_ = §§pop() + (" mTimeUsedForCameraMovement: " + this.mManualScale);
                              §§push(_loc1_);
                              if(_loc2_)
                              {
                                 §§push("\n mTimeNeededForScaleMovement: " + this.mManualScale);
                                 if(_loc2_ || _loc2_)
                                 {
                                    §§push(§§pop() + §§pop());
                                    if(_loc2_ || _loc2_)
                                    {
                                       _loc1_ = §§pop();
                                       _loc1_ += " mTimeUsedForScaleMovement: " + this.mManualScale;
                                       if(!_loc3_)
                                       {
                                          §§push(_loc1_);
                                          if(!_loc3_)
                                          {
                                             _loc1_ = §§pop() + (" mTargetScale: " + this.mManualScale);
                                             §§push(_loc1_);
                                             if(_loc2_ || this)
                                             {
                                                §§push(§§pop() + (" mTargetScalePrevious: " + this.mManualScale));
                                                if(_loc2_ || _loc1_)
                                                {
                                                   _loc1_ = §§pop();
                                                   if(_loc2_)
                                                   {
                                                      §§push(_loc1_);
                                                      §§push(" mCastleCameraX: " + this.mManualScale);
                                                      if(_loc2_ || _loc1_)
                                                      {
                                                         _loc1_ = §§pop() + §§pop();
                                                         §§push(_loc1_);
                                                         §§push("\n mCastleCameraY: " + this.mManualScale);
                                                         if(!(_loc3_ && _loc3_))
                                                         {
                                                            §§push(§§pop() + §§pop());
                                                            if(_loc2_)
                                                            {
                                                               _loc1_ = §§pop();
                                                               addr211:
                                                               §§push(_loc1_);
                                                               if(!(_loc3_ && _loc2_))
                                                               {
                                                                  §§push(§§pop() + (" mCastleCameraScale: " + this.mManualScale));
                                                                  if(_loc2_ || _loc2_)
                                                                  {
                                                                     _loc1_ = §§pop();
                                                                     if(_loc2_)
                                                                     {
                                                                        §§push(_loc1_);
                                                                        §§push(" mBirdCameraX: " + this.mManualScale);
                                                                        if(!(_loc3_ && _loc1_))
                                                                        {
                                                                           addr249:
                                                                           _loc1_ = §§pop() + §§pop();
                                                                           if(_loc2_ || _loc1_)
                                                                           {
                                                                              addr262:
                                                                              §§push(_loc1_ + (" mBirdCameraY: " + this.mManualScale));
                                                                              if(_loc2_ || _loc3_)
                                                                              {
                                                                                 §§push(§§pop());
                                                                                 if(_loc2_)
                                                                                 {
                                                                                    _loc1_ = §§pop();
                                                                                    if(!(_loc3_ && this))
                                                                                    {
                                                                                       §§push(_loc1_);
                                                                                       if(_loc2_)
                                                                                       {
                                                                                          §§push(" mBirdCameraScale: " + this.mManualScale);
                                                                                          if(_loc2_ || _loc3_)
                                                                                          {
                                                                                             addr302:
                                                                                             §§push(§§pop() + §§pop());
                                                                                             if(!_loc3_)
                                                                                             {
                                                                                                _loc1_ = §§pop();
                                                                                                if(_loc2_ || _loc1_)
                                                                                                {
                                                                                                   §§push(_loc1_ + ("\n mScreenLeftScroll: " + this.mManualScale));
                                                                                                   if(_loc2_)
                                                                                                   {
                                                                                                      addr323:
                                                                                                      _loc1_ = §§pop();
                                                                                                      addr330:
                                                                                                      §§push(_loc1_ + (" mScreenTopScroll: " + this.mManualScale));
                                                                                                      if(_loc2_)
                                                                                                      {
                                                                                                         _loc1_ = §§pop();
                                                                                                         §§push(_loc1_);
                                                                                                         if(_loc2_)
                                                                                                         {
                                                                                                            §§push(§§pop() + (" mDragging: " + this.mManualScale));
                                                                                                            if(!(_loc3_ && _loc2_))
                                                                                                            {
                                                                                                               addr350:
                                                                                                               _loc1_ = §§pop();
                                                                                                               addr351:
                                                                                                               §§push(_loc1_ + (" mDraggingPointPreviousX: " + this.mManualScale));
                                                                                                               if(!_loc3_)
                                                                                                               {
                                                                                                                  addr359:
                                                                                                                  §§push(§§pop());
                                                                                                                  if(!_loc3_)
                                                                                                                  {
                                                                                                                     _loc1_ = §§pop();
                                                                                                                     if(_loc2_)
                                                                                                                     {
                                                                                                                        addr365:
                                                                                                                        §§push(_loc1_);
                                                                                                                        §§push(" mDraggingPointPreviousY: " + this.mManualScale);
                                                                                                                        if(_loc2_ || _loc3_)
                                                                                                                        {
                                                                                                                           addr377:
                                                                                                                           _loc1_ = §§pop() + §§pop();
                                                                                                                           if(_loc2_)
                                                                                                                           {
                                                                                                                              §§push(_loc1_);
                                                                                                                              if(_loc2_)
                                                                                                                              {
                                                                                                                                 addr389:
                                                                                                                                 §§push(§§pop() + ("\n mDraggingPointCurrentX: " + this.mManualScale));
                                                                                                                                 if(_loc2_)
                                                                                                                                 {
                                                                                                                                    addr393:
                                                                                                                                    _loc1_ = §§pop();
                                                                                                                                    if(_loc2_ || _loc2_)
                                                                                                                                    {
                                                                                                                                       §§push(_loc1_);
                                                                                                                                       if(_loc2_)
                                                                                                                                       {
                                                                                                                                          addr404:
                                                                                                                                          §§push(" mDraggingPointCurrentY: " + this.mManualScale);
                                                                                                                                          if(!(_loc3_ && _loc1_))
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                             if(_loc2_)
                                                                                                                                             {
                                                                                                                                                addr419:
                                                                                                                                                _loc1_ = §§pop();
                                                                                                                                                §§push(_loc1_);
                                                                                                                                                if(!_loc3_)
                                                                                                                                                {
                                                                                                                                                   addr423:
                                                                                                                                                   §§push(" mDraggingPointOriginalX: " + this.mManualScale);
                                                                                                                                                   if(_loc2_ || _loc3_)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                      if(!_loc3_)
                                                                                                                                                      {
                                                                                                                                                         addr437:
                                                                                                                                                         _loc1_ = §§pop();
                                                                                                                                                         §§push(_loc1_);
                                                                                                                                                         if(_loc2_ || _loc2_)
                                                                                                                                                         {
                                                                                                                                                            addr452:
                                                                                                                                                            §§push(§§pop() + (" mDraggingPointOriginalY: " + this.mManualScale));
                                                                                                                                                            if(!_loc2_)
                                                                                                                                                            {
                                                                                                                                                            }
                                                                                                                                                            addr498:
                                                                                                                                                            §§push(§§pop() + (" mCameraBorderRight: " + this.mManualScale));
                                                                                                                                                            if(_loc2_)
                                                                                                                                                            {
                                                                                                                                                               addr505:
                                                                                                                                                               _loc1_ = §§pop();
                                                                                                                                                               §§push(_loc1_);
                                                                                                                                                               §§push(" mCameraBorderSky: " + this.mManualScale);
                                                                                                                                                               if(!(_loc3_ && _loc3_))
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                                                                  if(_loc2_ || _loc2_)
                                                                                                                                                                  {
                                                                                                                                                                     addr527:
                                                                                                                                                                     §§push(§§pop());
                                                                                                                                                                     if(_loc2_ || _loc2_)
                                                                                                                                                                     {
                                                                                                                                                                        addr535:
                                                                                                                                                                        _loc1_ = §§pop();
                                                                                                                                                                        if(!_loc3_)
                                                                                                                                                                        {
                                                                                                                                                                           addr544:
                                                                                                                                                                           _loc1_ += " mCameraBorderGround: " + this.mManualScale;
                                                                                                                                                                           addr546:
                                                                                                                                                                           §§push(_loc1_ + (" mPigsAreOnRight: " + this.mManualScale + "\n "));
                                                                                                                                                                           addr539:
                                                                                                                                                                           addr543:
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr546);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr539);
                                                                                                                                                                  }
                                                                                                                                                                  _loc1_ = §§pop();
                                                                                                                                                                  §§goto(addr563);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr543);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr527);
                                                                                                                                                         }
                                                                                                                                                         _loc1_ = §§pop();
                                                                                                                                                         §§push(_loc1_);
                                                                                                                                                         if(_loc2_ || _loc3_)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() + (" mDraggingTimer: " + this.mManualScale));
                                                                                                                                                            if(_loc2_ || _loc3_)
                                                                                                                                                            {
                                                                                                                                                               addr477:
                                                                                                                                                               _loc1_ = §§pop();
                                                                                                                                                               if(_loc2_ || _loc1_)
                                                                                                                                                               {
                                                                                                                                                                  addr490:
                                                                                                                                                                  §§push(_loc1_ + ("\n mCameraBorderLeft: " + this.mManualScale));
                                                                                                                                                                  if(!_loc3_)
                                                                                                                                                                  {
                                                                                                                                                                     _loc1_ = §§pop();
                                                                                                                                                                     if(!_loc3_)
                                                                                                                                                                     {
                                                                                                                                                                        addr497:
                                                                                                                                                                        §§goto(addr498);
                                                                                                                                                                        §§push(_loc1_);
                                                                                                                                                                     }
                                                                                                                                                                     addr563:
                                                                                                                                                                     return _loc1_;
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr505);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr497);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr546);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr527);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr490);
                                                                                                                                                }
                                                                                                                                                §§goto(addr477);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr452);
                                                                                                                                    }
                                                                                                                                    §§goto(addr497);
                                                                                                                                 }
                                                                                                                                 §§goto(addr546);
                                                                                                                              }
                                                                                                                              §§goto(addr419);
                                                                                                                           }
                                                                                                                           §§goto(addr546);
                                                                                                                        }
                                                                                                                        §§goto(addr389);
                                                                                                                     }
                                                                                                                     §§goto(addr490);
                                                                                                                  }
                                                                                                                  §§goto(addr535);
                                                                                                               }
                                                                                                               §§goto(addr505);
                                                                                                            }
                                                                                                            §§goto(addr452);
                                                                                                         }
                                                                                                         §§goto(addr546);
                                                                                                      }
                                                                                                      §§goto(addr505);
                                                                                                   }
                                                                                                   §§goto(addr477);
                                                                                                }
                                                                                                §§goto(addr351);
                                                                                             }
                                                                                             §§goto(addr544);
                                                                                          }
                                                                                          §§goto(addr389);
                                                                                       }
                                                                                       §§goto(addr419);
                                                                                    }
                                                                                    §§goto(addr365);
                                                                                 }
                                                                                 §§goto(addr393);
                                                                              }
                                                                              §§goto(addr330);
                                                                           }
                                                                           §§goto(addr505);
                                                                        }
                                                                        §§goto(addr351);
                                                                     }
                                                                     §§goto(addr330);
                                                                  }
                                                                  §§goto(addr359);
                                                               }
                                                               §§goto(addr544);
                                                            }
                                                            §§goto(addr437);
                                                         }
                                                         §§goto(addr377);
                                                      }
                                                   }
                                                   §§goto(addr262);
                                                }
                                                §§goto(addr393);
                                             }
                                             §§goto(addr249);
                                          }
                                          §§goto(addr350);
                                       }
                                       §§goto(addr211);
                                    }
                                    §§goto(addr249);
                                 }
                                 §§goto(addr302);
                              }
                              §§goto(addr323);
                           }
                           §§goto(addr389);
                        }
                        §§goto(addr423);
                     }
                     §§goto(addr323);
                  }
                  §§goto(addr87);
               }
               §§goto(addr404);
            }
            §§goto(addr350);
         }
         §§goto(addr505);
      }
   }
}
