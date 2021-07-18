package §`!G§
{
   import §&E§.§0i§;
   import §&E§.§6!O§;
   import §'!6§.§ "E§;
   import §'!6§.Sprite;
   import §+!c§.§;!=§;
   import §,,§.b2PrismaticJoint;
   import §,,§.b2RevoluteJoint;
   import §,,§.b2WeldJoint;
   import §-f§.§+"R§;
   import §-f§.§8!<§;
   import §-f§.§9L§;
   import §-f§.§@!M§;
   import §-f§.§[!J§;
   import §4!<§.§'!S§;
   import §4!<§.§;P§;
   import §4!<§.§>">§;
   import §4!<§.§^!Z§;
   import §6!^§.b2Vec2;
   import §8m§.§@"M§;
   import §9!n§.§0"T§;
   import §<5§.Texture;
   import §<T§.§^"5§;
   import §`1§.§4";§;
   import flash.display.BitmapData;
   import flash.display.BitmapDataChannel;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import §super§.§>y§;
   import §super§.§?!F§;
   import §super§.§?5§;
   import §super§.§@!2§;
   
   public class §8"=§
   {
       
      
      protected var §@!Z§:Vector.<§[!8§>;
      
      protected var §""G§:int;
      
      public var mLevelMain:§'!S§;
      
      public var §,"D§:Vector.<§6!M§>;
      
      protected var §4!l§:Sprite;
      
      protected var §[u§:Sprite;
      
      private var §7!g§:Sprite;
      
      private var § l§:Sprite;
      
      private var §1M§:Sprite;
      
      protected var §,X§:Vector.<Texture>;
      
      protected var §>F§:Vector.<§?5§>;
      
      protected var §"k§:int = 1;
      
      public var mMightyEagleAdded:Boolean = false;
      
      public var mMightyEagleHasTouchedGround:Boolean = false;
      
      public var §-!E§:Boolean = false;
      
      public var mSardineCanAdded:Boolean = false;
      
      public var mMightyEagleTimer:Number = 0;
      
      protected var §;Q§:Boolean = false;
      
      protected var §&;§:Number;
      
      protected var §#!F§:int;
      
      protected var §9"4§:Vector.<§@!2§>;
      
      protected var §@"0§:int = 0;
      
      private var §9!^§:int = 0;
      
      private var §^o§:int = 0;
      
      protected var §>"U§:int;
      
      private var §@!l§:Boolean = true;
      
      private var §8"2§:Boolean = true;
      
      public function §8"=§(param1:§'!S§, param2:§0"T§, param3:Sprite)
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         var _loc5_:§?5§ = null;
         var _loc6_:§>y§ = null;
         var _loc7_:§[!8§ = null;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:§[!8§ = null;
         var _loc11_:§[!8§ = null;
         if(!_loc14_)
         {
            this.§@!Z§ = new Vector.<§[!8§>();
            loop0:
            while(true)
            {
               this.§,"D§ = new Vector.<§6!M§>();
               while(true)
               {
                  this.§,X§ = new Vector.<Texture>();
                  loop2:
                  while(!(_loc14_ && param3))
                  {
                     this.§&;§ = this.§^!Z§.SARDINE_CAN_INITIAL_ROTATION_SPEED;
                     loop3:
                     while(_loc15_)
                     {
                        this.§9"4§ = new Vector.<§@!2§>();
                        loop4:
                        while(true)
                        {
                           super();
                           loop5:
                           for(; _loc15_; while(!(_loc14_ && param1))
                           {
                              this.§>"U§ = this.§@!Z§.length;
                              if(!_loc15_)
                              {
                                 continue;
                              }
                              if(_loc15_)
                              {
                                 if(_loc15_)
                                 {
                                    §§goto(addr51);
                                 }
                                 else
                                 {
                                    §§goto(addr149);
                                 }
                              }
                              §§goto(addr131);
                           })
                           {
                              this.mLevelMain = param1;
                              loop6:
                              while(true)
                              {
                                 this.§""G§ = 0;
                                 loop7:
                                 while(true)
                                 {
                                    this.§[u§ = param3;
                                    loop8:
                                    while(true)
                                    {
                                       §§push(this.§[u§);
                                       loop9:
                                       while(true)
                                       {
                                          §§pop().§^]§ = false;
                                          loop10:
                                          while(true)
                                          {
                                             this.§8"2§ = true;
                                             loop11:
                                             while(!_loc14_)
                                             {
                                                this.§@!l§ = true;
                                                loop12:
                                                while(_loc15_)
                                                {
                                                   this.§4!l§ = new Sprite();
                                                   loop13:
                                                   while(true)
                                                   {
                                                      this.§7!g§ = new Sprite();
                                                      while(_loc15_)
                                                      {
                                                         this.§ l§ = new Sprite();
                                                         continue loop6;
                                                         addr158:
                                                         if(_loc14_ && param3)
                                                         {
                                                            continue;
                                                         }
                                                         if(!(_loc15_ || param3))
                                                         {
                                                            continue loop10;
                                                         }
                                                         addr172:
                                                         §§push(this.§[u§);
                                                         if(!(_loc15_ || param1))
                                                         {
                                                            while(true)
                                                            {
                                                               if(!(_loc14_ && param1))
                                                               {
                                                                  if(!_loc15_)
                                                                  {
                                                                     break;
                                                                     addr149:
                                                                  }
                                                                  §§pop().addChild(this.§ l§);
                                                                  while(true)
                                                                  {
                                                                     if(!_loc15_)
                                                                     {
                                                                        continue loop4;
                                                                     }
                                                                     addr151:
                                                                     if(_loc15_ || param2)
                                                                     {
                                                                        §§goto(addr158);
                                                                     }
                                                                     else
                                                                     {
                                                                        addr210:
                                                                        while(true)
                                                                        {
                                                                           §§push(this.§[u§);
                                                                           §§goto(addr151);
                                                                        }
                                                                        addr210:
                                                                     }
                                                                  }
                                                                  continue loop10;
                                                               }
                                                               while(true)
                                                               {
                                                                  §§pop().addChild(this.§4!l§);
                                                                  addr193:
                                                                  while(true)
                                                                  {
                                                                     if(_loc14_ && param1)
                                                                     {
                                                                        continue loop6;
                                                                     }
                                                                     if(!_loc15_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     if(_loc14_)
                                                                     {
                                                                        continue loop8;
                                                                     }
                                                                     §§push(this.§[u§);
                                                                     while(true)
                                                                     {
                                                                        §§pop().addChild(this.§7!g§);
                                                                        continue loop4;
                                                                     }
                                                                  }
                                                                  continue loop11;
                                                               }
                                                               §§goto(addr172);
                                                            }
                                                            continue loop9;
                                                            addr137:
                                                         }
                                                         if(!_loc14_)
                                                         {
                                                            §§pop().addChild(this.§1M§);
                                                            while(!_loc14_)
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(this);
                                                                  §§push(§4";§.§>"O§(param2.theme).§@R§);
                                                                  §§push(this.mLevelMain.§-!z§.§;'§);
                                                                  if(!(_loc14_ && param1))
                                                                  {
                                                                     §§push(this.mLevelMain);
                                                                     if(_loc15_)
                                                                     {
                                                                        §§push(§§pop().§-!z§);
                                                                        if(_loc15_)
                                                                        {
                                                                           §§push(§§pop().§;!4§);
                                                                           if(_loc15_)
                                                                           {
                                                                              addr101:
                                                                              §§push(§§pop() + §§pop());
                                                                              if(!(_loc14_ && param3))
                                                                              {
                                                                                 addr96:
                                                                                 §§push(§§pop() / 2);
                                                                              }
                                                                              §§push(this.mLevelMain.§-!z§.§]2§);
                                                                              if(_loc15_)
                                                                              {
                                                                                 addr104:
                                                                                 §§push(§§pop() + §>">§.§ m§);
                                                                              }
                                                                              §§pop().addObject(§§pop(),§§pop(),§§pop());
                                                                              continue loop5;
                                                                           }
                                                                           §§goto(addr104);
                                                                        }
                                                                     }
                                                                     §§goto(addr101);
                                                                  }
                                                                  §§goto(addr96);
                                                                  continue loop13;
                                                               }
                                                               continue loop13;
                                                            }
                                                            §§goto(addr193);
                                                            addr131:
                                                         }
                                                         §§goto(addr176);
                                                      }
                                                      continue loop12;
                                                   }
                                                }
                                                continue loop7;
                                             }
                                             continue loop3;
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                           continue loop2;
                        }
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr286);
      }
      
      protected function get §^!Z§() : Class
      {
         return §^!Z§;
      }
      
      public function get §-!2§() : Sprite
      {
         return this.§1M§;
      }
      
      public function get mainSprite() : Sprite
      {
         return this.§[u§;
      }
      
      public function get §^!#§() : Sprite
      {
         return this.§ l§;
      }
      
      public function dispose() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:Texture = null;
         while(true)
         {
            if(this.§@!Z§.length > 0)
            {
               this.§8v§(0);
               continue;
            }
            if(_loc2_ || _loc3_)
            {
               this.§@!Z§ = null;
               loop1:
               while(true)
               {
                  this.§9"4§ = null;
                  loop2:
                  while(true)
                  {
                     §§push(this.§[u§);
                     if(!(_loc3_ && _loc2_))
                     {
                        if(§§pop())
                        {
                           while(true)
                           {
                              §§push(this.§[u§);
                              loop6:
                              while(_loc2_ || _loc3_)
                              {
                                 this.§4!l§ = null;
                                 while(true)
                                 {
                                    if(!(_loc3_ && this))
                                    {
                                       continue loop2;
                                    }
                                    continue loop6;
                                    addr67:
                                    loop8:
                                    while(!(_loc3_ && _loc3_))
                                    {
                                       while(true)
                                       {
                                          this.§7!g§ = null;
                                          if(_loc3_)
                                          {
                                             break;
                                          }
                                          if(!(_loc2_ || _loc2_))
                                          {
                                             continue loop8;
                                          }
                                          if(!_loc3_)
                                          {
                                             continue loop1;
                                          }
                                          while(true)
                                          {
                                             this.§[u§ = null;
                                             continue loop6;
                                          }
                                          addr130:
                                          continue loop8;
                                       }
                                       return;
                                    }
                                 }
                                 continue loop2;
                              }
                           }
                           addr127:
                        }
                        else
                        {
                           addr183:
                           if(this.§,X§.length > 0)
                           {
                              _loc1_ = this.§,X§.pop();
                              if(_loc2_)
                              {
                                 this.mLevelMain.textureManager.unregisterBitmapDataTexture(_loc1_);
                              }
                              §§goto(addr183);
                           }
                           §§goto(addr188);
                           addr169:
                        }
                     }
                     while(true)
                     {
                        §§pop().dispose();
                        §§goto(addr130);
                        §§goto(addr127);
                     }
                  }
               }
            }
            §§goto(addr188);
         }
      }
      
      private function §0Y§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§4!l§.visible = param1;
         }
      }
      
      private function §?"=§() : void
      {
         var _loc16_:Boolean = true;
         var _loc17_:Boolean = false;
         var _loc3_:§[!8§ = null;
         var _loc4_:Rectangle = null;
         var _loc5_:* = NaN;
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:BitmapData = null;
         var _loc11_:BitmapData = null;
         var _loc12_:Texture = null;
         var _loc13_:§ "E§ = null;
         var _loc1_:Rectangle = null;
         var _loc2_:Vector.<§[!8§> = new Vector.<§[!8§>();
         for each(_loc3_ in this.§@!Z§)
         {
            if(_loc16_ || this)
            {
               if(_loc3_.isTexture())
               {
                  if(_loc16_ || _loc2_)
                  {
                     addr83:
                     _loc2_.push(_loc3_);
                  }
                  _loc4_ = _loc3_.sprite.getBounds(this.§[u§);
                  if(_loc16_ || _loc2_)
                  {
                     if(_loc1_ != null)
                     {
                        _loc1_ = _loc1_.union(_loc4_);
                        continue;
                     }
                  }
                  _loc1_ = new Rectangle(_loc4_.x,_loc4_.y,_loc4_.width,_loc4_.height);
               }
               continue;
            }
            §§goto(addr83);
         }
         if(!(_loc17_ && this))
         {
            if(_loc1_)
            {
               loop1:
               while(true)
               {
                  §§push(1);
                  while(true)
                  {
                     §§push(Number(§§pop()));
                     loop3:
                     while(true)
                     {
                        _loc5_ = §§pop();
                        loop4:
                        while(true)
                        {
                           loop5:
                           while(true)
                           {
                              §§push(_loc1_.width > 2048);
                              loop6:
                              while(true)
                              {
                                 if(!§§pop())
                                 {
                                    loop7:
                                    while(true)
                                    {
                                       §§pop();
                                       loop8:
                                       while(!_loc17_)
                                       {
                                          while(true)
                                          {
                                             §§push(_loc1_.height > 2048);
                                             if(_loc17_ && _loc1_)
                                             {
                                                continue loop7;
                                             }
                                             if(_loc17_)
                                             {
                                                continue loop6;
                                             }
                                             while(true)
                                             {
                                                if(§§pop())
                                                {
                                                   _loc1_.left /= 2;
                                                   break loop8;
                                                }
                                                while(true)
                                                {
                                                   §§push(int(_loc1_.width));
                                                   addr250:
                                                   while(true)
                                                   {
                                                      _loc6_ = §§pop();
                                                      loop12:
                                                      while(_loc16_ || _loc1_)
                                                      {
                                                         §§push(int(_loc1_.height));
                                                         loop13:
                                                         while(true)
                                                         {
                                                            _loc7_ = §§pop();
                                                            addr228:
                                                            while(_loc16_)
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(int(_loc1_.left));
                                                                  continue loop13;
                                                                  addr168:
                                                                  if(!(_loc16_ || _loc1_))
                                                                  {
                                                                     break;
                                                                  }
                                                                  if(false)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  _loc10_ = new BitmapData(_loc6_,_loc7_,true,0);
                                                                  if(!_loc17_)
                                                                  {
                                                                     this.§9!u§(_loc10_.rect,_loc10_,_loc5_);
                                                                  }
                                                                  _loc11_ = this.§^!1§(_loc2_,_loc6_,_loc7_,_loc8_,_loc9_,_loc5_);
                                                                  if(!_loc17_)
                                                                  {
                                                                     _loc10_.copyChannel(_loc11_,_loc11_.rect,new Point(0,0),BitmapDataChannel.ALPHA,BitmapDataChannel.ALPHA);
                                                                  }
                                                                  _loc12_ = this.mLevelMain.textureManager.getTextureFromBitmapData(_loc10_);
                                                                  if(_loc16_)
                                                                  {
                                                                     this.§,X§.push(_loc12_);
                                                                  }
                                                                  (_loc13_ = new § "E§(_loc12_)).x = _loc8_ / _loc5_;
                                                                  if(!_loc17_)
                                                                  {
                                                                     _loc13_.y = _loc9_ / _loc5_;
                                                                     _loc13_.scaleX = 1 / _loc5_;
                                                                     _loc13_.scaleY = 1 / _loc5_;
                                                                     addr462:
                                                                     addr456:
                                                                  }
                                                                  addr435:
                                                                  this.§4!l§.addChild(_loc13_);
                                                                  addr449:
                                                                  if(_loc16_)
                                                                  {
                                                                     _loc11_.dispose();
                                                                     if(_loc16_ || _loc2_)
                                                                     {
                                                                        if(_loc16_ || _loc1_)
                                                                        {
                                                                           if(!(_loc17_ && _loc2_))
                                                                           {
                                                                              if(false)
                                                                              {
                                                                                 §§goto(addr435);
                                                                              }
                                                                              §§goto(addr463);
                                                                           }
                                                                           §§goto(addr462);
                                                                        }
                                                                        §§goto(addr449);
                                                                     }
                                                                     §§goto(addr435);
                                                                  }
                                                                  §§goto(addr456);
                                                               }
                                                               _loc1_.right /= 2;
                                                               _loc1_.bottom /= 2;
                                                               break loop12;
                                                            }
                                                            continue loop1;
                                                         }
                                                      }
                                                      if(_loc17_)
                                                      {
                                                         §§goto(addr305);
                                                      }
                                                      §§push(_loc5_);
                                                      if(!(_loc17_ && _loc1_))
                                                      {
                                                         §§push(§§pop() / 2);
                                                         if(_loc16_)
                                                         {
                                                            if(_loc17_)
                                                            {
                                                               continue loop3;
                                                            }
                                                            §§push(Number(§§pop()));
                                                         }
                                                      }
                                                      _loc5_ = §§pop();
                                                      continue loop5;
                                                   }
                                                   if(_loc17_ && _loc1_)
                                                   {
                                                      continue;
                                                   }
                                                   §§push(int(_loc1_.top));
                                                   if(_loc16_ || _loc2_)
                                                   {
                                                      if(_loc16_)
                                                      {
                                                         §§goto(addr146);
                                                      }
                                                      §§goto(addr250);
                                                   }
                                                   §§goto(addr181);
                                                }
                                             }
                                          }
                                       }
                                       if(!_loc16_)
                                       {
                                          continue loop4;
                                       }
                                       _loc1_.top /= 2;
                                       §§goto(addr313);
                                    }
                                 }
                                 §§goto(addr245);
                              }
                           }
                        }
                     }
                  }
               }
            }
            addr463:
            return;
         }
         §§goto(addr269);
      }
      
      private function §^!1§(param1:Vector.<§[!8§>, param2:int, param3:int, param4:int, param5:int, param6:Number) : BitmapData
      {
         var _loc16_:Boolean = true;
         var _loc17_:Boolean = false;
         var _loc7_:§[!8§ = null;
         var _loc11_:§+"R§ = null;
         var _loc12_:Array = null;
         var _loc13_:Rectangle = null;
         var _loc8_:BitmapData = new BitmapData(param2,param3,true,0);
         var _loc9_:BitmapData = new BitmapData(1,1,true,4294967295);
         var _loc10_:Matrix = new Matrix();
         loop0:
         for each(_loc7_ in param1)
         {
            _loc12_ = (_loc11_ = _loc7_.§^!f§.shape).§4!1§();
            _loc13_ = new Rectangle(_loc12_[0].x / §'!S§.§2"<§ * param6,_loc12_[0].y / §'!S§.§2"<§ * param6,(_loc12_[1].x - _loc12_[0].x) / §'!S§.§2"<§ * param6,(_loc12_[1].y - _loc12_[0].y) / §'!S§.§2"<§ * param6);
            if(_loc16_)
            {
               _loc10_.identity();
               loop1:
               while(true)
               {
                  _loc10_.scale(_loc13_.width,_loc13_.height);
                  while(true)
                  {
                     _loc10_.translate(-_loc13_.width / 2,-_loc13_.height / 2);
                     loop3:
                     while(true)
                     {
                        _loc10_.rotate((360 - _loc7_.§,!c§()) / 180 * Math.PI);
                        loop4:
                        while(true)
                        {
                           addr155:
                           while(true)
                           {
                              _loc10_.translate(_loc7_.sprite.x * param6 - param4,_loc7_.sprite.y * param6 - param5);
                              while(!_loc17_)
                              {
                                 if(_loc16_)
                                 {
                                    _loc8_.draw(_loc9_,_loc10_);
                                    if(!_loc17_)
                                    {
                                       continue loop3;
                                    }
                                    continue;
                                 }
                                 continue loop1;
                              }
                              continue loop4;
                           }
                           continue loop3;
                        }
                     }
                     if(!(_loc17_ && param3))
                     {
                        while(false)
                        {
                           §§goto(addr155);
                        }
                        continue loop0;
                        addr153:
                     }
                  }
               }
            }
            §§goto(addr153);
         }
         if(!(_loc17_ && this))
         {
            _loc9_.dispose();
         }
         return _loc8_;
      }
      
      private function §9!u§(param1:Rectangle, param2:BitmapData, param3:Number) : void
      {
         var _loc16_:Boolean = true;
         var _loc17_:Boolean = false;
         var _loc6_:BitmapData = null;
         var _loc7_:Matrix = null;
         var _loc8_:* = 0;
         var _loc9_:* = 0;
         var _loc10_:* = 0;
         var _loc11_:* = 0;
         var _loc12_:* = 0;
         var _loc13_:int = 0;
         var _loc14_:int = 0;
         var _loc15_:int = 0;
         §§push(this.mLevelMain.background.§%"R§());
         if(_loc16_ || param1)
         {
            §§push(§§pop());
         }
         var _loc4_:* = §§pop();
         var _loc5_:§^"5§;
         if(_loc5_ = this.mLevelMain.backgroundTextureManager.§#!L§(_loc4_))
         {
            _loc6_ = new BitmapData(_loc5_.bitmapData.width * param3,_loc5_.bitmapData.height * param3);
            (_loc7_ = new Matrix()).scale(param3,param3);
            if(_loc16_ || this)
            {
               _loc6_.draw(_loc5_.bitmapData,_loc7_,null,null,null,true);
               loop0:
               while(true)
               {
                  §§push(int(_loc6_.width));
                  addr402:
                  while(true)
                  {
                     _loc8_ = §§pop();
                     addr403:
                     while(true)
                     {
                        §§push(int(_loc6_.height));
                        addr396:
                        while(true)
                        {
                           _loc9_ = §§pop();
                           addr397:
                           while(true)
                           {
                              §§push(param1.top / _loc9_);
                              addr389:
                              while(true)
                              {
                                 §§push(int(§§pop()));
                                 addr390:
                                 while(true)
                                 {
                                    _loc10_ = §§pop();
                                 }
                              }
                           }
                        }
                     }
                     addr355:
                     if(!(_loc16_ || param1))
                     {
                        continue;
                     }
                     §§push(§§pop() + 1);
                     while(true)
                     {
                        _loc11_ = §§pop();
                        addr364:
                        while(true)
                        {
                           §§push(param1.left / _loc8_);
                           addr321:
                           while(_loc16_)
                           {
                              §§push(int(§§pop()));
                              while(true)
                              {
                                 _loc12_ = §§pop();
                                 continue loop0;
                              }
                           }
                           §§goto(addr389);
                        }
                     }
                  }
               }
            }
            §§goto(addr391);
         }
         §§goto(addr414);
      }
      
      public function §[!%§(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §[!8§
      {
         var _loc10_:§9L§ = §8!<§.§3"[§(param2);
         return new §true §(this,param1,this.mLevelMain.mLevelEngine.mWorld,this.mLevelMain,this.§""G§,param2,param3,param4,param5,param9,_loc10_.particleJSONId,_loc10_.particleVariationCount);
      }
      
      public function §#!Z§(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §[!8§
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc10_:§[!8§ = null;
         var _loc11_:* = param2;
         if(_loc13_ || param1)
         {
            §§push("BIRD_BLACK");
            if(_loc13_)
            {
               §§push(_loc11_);
               if(_loc13_ || param2)
               {
                  if(§§pop() === §§pop())
                  {
                     if(_loc13_ || this)
                     {
                        §§push(0);
                        if(_loc12_ && param1)
                        {
                           addr335:
                        }
                     }
                     else
                     {
                        addr286:
                        §§push(1);
                        if(!(_loc13_ || param3))
                        {
                           addr371:
                        }
                     }
                  }
                  else
                  {
                     §§push("BIRD_BLUE");
                     if(_loc13_)
                     {
                        §§push(_loc11_);
                        if(!(_loc12_ && param2))
                        {
                           if(§§pop() === §§pop())
                           {
                              if(!(_loc12_ && param2))
                              {
                                 §§goto(addr286);
                              }
                              else
                              {
                                 addr309:
                                 §§push(2);
                                 if(!_loc13_)
                                 {
                                    addr406:
                                 }
                                 §§goto(addr411);
                              }
                           }
                           else
                           {
                              §§push("BIRD_GREEN");
                              if(!_loc12_)
                              {
                                 §§push(_loc11_);
                                 if(_loc13_ || this)
                                 {
                                    if(§§pop() === §§pop())
                                    {
                                       if(_loc13_)
                                       {
                                          §§goto(addr309);
                                       }
                                       else
                                       {
                                          addr363:
                                          §§push(5);
                                          if(_loc13_ || param1)
                                          {
                                             §§goto(addr371);
                                          }
                                          §§goto(addr411);
                                       }
                                    }
                                    else
                                    {
                                       §§push("BIRD_WHITE");
                                       if(!(_loc12_ && param3))
                                       {
                                          §§push(_loc11_);
                                          if(_loc13_)
                                          {
                                             addr324:
                                             if(§§pop() === §§pop())
                                             {
                                                if(!(_loc12_ && param2))
                                                {
                                                   addr332:
                                                   §§push(3);
                                                   if(_loc13_)
                                                   {
                                                      §§goto(addr335);
                                                   }
                                                }
                                                §§goto(addr411);
                                             }
                                             else
                                             {
                                                §§push("BIRD_YELLOW");
                                                if(!_loc12_)
                                                {
                                                   addr339:
                                                   §§push(_loc11_);
                                                   if(_loc13_)
                                                   {
                                                      if(§§pop() === §§pop())
                                                      {
                                                         if(_loc13_)
                                                         {
                                                            §§push(4);
                                                            if(_loc13_ || param2)
                                                            {
                                                               §§goto(addr411);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr371);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            addr396:
                                                            §§push(6);
                                                            if(!_loc12_)
                                                            {
                                                               §§goto(addr411);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr406);
                                                            }
                                                         }
                                                         §§goto(addr411);
                                                      }
                                                      else
                                                      {
                                                         §§push("BIRD_RED");
                                                         if(_loc13_)
                                                         {
                                                            addr357:
                                                            §§push(_loc11_);
                                                            if(_loc13_)
                                                            {
                                                               if(§§pop() === §§pop())
                                                               {
                                                                  if(_loc13_)
                                                                  {
                                                                     §§goto(addr363);
                                                                  }
                                                                  else
                                                                  {
                                                                     addr403:
                                                                     §§push(7);
                                                                     if(_loc13_)
                                                                     {
                                                                        §§goto(addr406);
                                                                     }
                                                                     §§goto(addr411);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§push("BIRD_REDBIG");
                                                                  if(_loc13_ || param3)
                                                                  {
                                                                     §§push(_loc11_);
                                                                     if(!_loc13_)
                                                                     {
                                                                     }
                                                                     addr402:
                                                                     if(§§pop() === §§pop())
                                                                     {
                                                                        §§goto(addr403);
                                                                     }
                                                                     else
                                                                     {
                                                                        addr411:
                                                                        switch(§§pop())
                                                                        {
                                                                           case 0:
                                                                              _loc10_ = new §;i§(this,param1,this.mLevelMain.mLevelEngine.mWorld,this.mLevelMain,this.§""G§,param2,param3,param4,param5,param8,param9);
                                                                              break;
                                                                           case 1:
                                                                              _loc10_ = new §7"R§(this,param1,this.mLevelMain.mLevelEngine.mWorld,this.mLevelMain,this.§""G§,param2,param3,param4,param5,param8,param9);
                                                                              break;
                                                                           case 2:
                                                                              _loc10_ = new §@"7§(this,param1,this.mLevelMain.mLevelEngine.mWorld,this.mLevelMain,this.§""G§,param2,param3,param4,param5,param8,param9);
                                                                              break;
                                                                           case 3:
                                                                              _loc10_ = new §%!D§(this,param1,this.mLevelMain.mLevelEngine.mWorld,this.mLevelMain,this.§""G§,param2,param3,param4,param5,param8,param9);
                                                                              break;
                                                                           case 4:
                                                                              _loc10_ = new §%!L§(this,param1,this.mLevelMain.mLevelEngine.mWorld,this.mLevelMain,this.§""G§,param2,param3,param4,param5,param8,param9);
                                                                              break;
                                                                           case 5:
                                                                              _loc10_ = new §"!$§(this,param1,this.mLevelMain.mLevelEngine.mWorld,this.mLevelMain,this.§""G§,param2,param3,param4,param5,param8,param9);
                                                                              break;
                                                                           case 6:
                                                                              _loc10_ = new §,!g§(this,param1,this.mLevelMain.mLevelEngine.mWorld,this.mLevelMain,this.§""G§,param2,param3,param4,param5,param8,param9);
                                                                              break;
                                                                           case 7:
                                                                              _loc10_ = new §&!5§(this,param1,this.mLevelMain.mLevelEngine.mWorld,this.mLevelMain,this.§""G§,param2,param3,param4,param5,param8,param9);
                                                                              break;
                                                                           default:
                                                                              _loc10_ = new §2"L§(this,param1,this.mLevelMain.mLevelEngine.mWorld,this.mLevelMain,this.§""G§,param2,param3,param4,param5,param8,param9);
                                                                        }
                                                                        return _loc10_;
                                                                        §§push(8);
                                                                     }
                                                                     §§goto(addr411);
                                                                  }
                                                                  addr401:
                                                                  §§goto(addr402);
                                                                  §§push(_loc11_);
                                                               }
                                                               §§goto(addr403);
                                                            }
                                                            §§goto(addr402);
                                                         }
                                                         §§goto(addr401);
                                                      }
                                                   }
                                                   if(§§pop() === §§pop())
                                                   {
                                                      if(!_loc12_)
                                                      {
                                                         §§goto(addr396);
                                                      }
                                                      §§goto(addr411);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr401);
                                                      §§push("BIRD_ORANGE");
                                                   }
                                                }
                                                §§goto(addr401);
                                             }
                                          }
                                          §§goto(addr402);
                                       }
                                       §§goto(addr357);
                                    }
                                    §§goto(addr411);
                                 }
                                 §§goto(addr402);
                              }
                              §§goto(addr401);
                           }
                           §§goto(addr411);
                        }
                        §§goto(addr402);
                     }
                     §§goto(addr357);
                  }
                  §§goto(addr411);
               }
               §§goto(addr324);
            }
            §§goto(addr339);
         }
         §§goto(addr332);
      }
      
      public function hasBirds() : Boolean
      {
         return this.§@"0§ > 0;
      }
      
      public function addObject(param1:String, param2:Number, param3:Number, param4:Number = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = true, param8:Number = 1.0, param9:Boolean = false) : §[!8§
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         var _loc10_:Sprite;
         (_loc10_ = new Sprite()).scaleX = param8;
         if(!(_loc14_ && param2))
         {
            _loc10_.scaleY = param8;
         }
         var _loc11_:§[!8§;
         if(!(_loc11_ = this.createObject(_loc10_,param1,param2,param3,param4,param5,param6,param7,param8)))
         {
            if(_loc15_)
            {
               return null;
            }
            loop19:
            while(true)
            {
               addr268:
               loop8:
               while(true)
               {
                  §§push(param5);
                  loop9:
                  while(true)
                  {
                     if(!_loc14_)
                     {
                        if(_loc15_)
                        {
                           while(true)
                           {
                              if(§§pop())
                              {
                                 if(!_loc14_)
                                 {
                                    if(_loc15_)
                                    {
                                       addr330:
                                       if(_loc15_)
                                       {
                                          while(true)
                                          {
                                             §§push(this.mLevelMain);
                                             while(true)
                                             {
                                                §§pop().§1">§(_loc11_);
                                                addr285:
                                                while(true)
                                                {
                                                   §§goto(addr221);
                                                }
                                             }
                                          }
                                          addr281:
                                       }
                                       while(true)
                                       {
                                          §§goto(addr313);
                                       }
                                       addr330:
                                    }
                                    §§goto(addr303);
                                 }
                                 §§goto(addr285);
                              }
                              addr221:
                              while(true)
                              {
                                 §§push(param6);
                                 if(!_loc15_)
                                 {
                                    continue loop9;
                                 }
                                 if(_loc15_)
                                 {
                                    if(!(_loc15_ || param3))
                                    {
                                       break loop9;
                                    }
                                    if(!§§pop())
                                    {
                                       break;
                                    }
                                    if(_loc15_ || param3)
                                    {
                                       continue loop14;
                                    }
                                    addr253:
                                    if(_loc15_ || this)
                                    {
                                       if(!(_loc14_ && param3))
                                       {
                                          addr267:
                                          break;
                                       }
                                       continue loop8;
                                    }
                                    continue;
                                 }
                                 loop4:
                                 while(true)
                                 {
                                    §§push(Boolean(§§pop()));
                                    addr314:
                                    while(true)
                                    {
                                       addr315:
                                       while(true)
                                       {
                                          if(!§§pop())
                                          {
                                             this.§ l§.addChild(_loc10_);
                                             while(true)
                                             {
                                                if(!(_loc14_ && param2))
                                                {
                                                   continue loop19;
                                                }
                                             }
                                             addr303:
                                          }
                                          addr316:
                                          while(true)
                                          {
                                             this.§1M§.addChild(_loc10_);
                                             continue loop8;
                                          }
                                       }
                                       continue loop4;
                                    }
                                 }
                              }
                              return _loc11_;
                           }
                           addr274:
                        }
                        else
                        {
                           while(true)
                           {
                              §§push(Boolean(§§pop()));
                              if(_loc15_)
                              {
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    addr328:
                                    while(true)
                                    {
                                       if(!§§pop())
                                       {
                                          break loop9;
                                       }
                                       §§goto(addr314);
                                    }
                                 }
                                 addr327:
                              }
                              break loop9;
                           }
                           addr324:
                        }
                        §§goto(addr314);
                     }
                     §§goto(addr315);
                  }
                  addr329:
                  while(true)
                  {
                     §§pop();
                     §§goto(addr330);
                  }
               }
            }
         }
         else
         {
            §§push(_loc11_.isTexture());
            if(!(_loc14_ && this))
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(_loc10_);
                     §§push(this.§@!l§);
                     if(!(_loc14_ && this))
                     {
                        §§push(!§§pop());
                     }
                     §§pop().visible = §§pop();
                     if(_loc15_ || param3)
                     {
                        this.§@!Z§[this.§@!Z§.length] = _loc11_;
                        if(_loc15_)
                        {
                           continue;
                        }
                        §§goto(addr320);
                     }
                     break;
                  }
                  §§goto(addr330);
               }
               else
               {
                  this.§@!Z§[this.§@!Z§.length] = _loc11_;
                  if(!(_loc14_ && this))
                  {
                     §§goto(addr86);
                  }
               }
               §§goto(addr215);
            }
         }
         §§goto(addr274);
      }
      
      public function §4!J§(param1:int, param2:§[!8§, param3:§[!8§, param4:Boolean = false, param5:Boolean = false, param6:Number = 0.0, param7:Number = 0.0, param8:Boolean = false, param9:Number = 0.0, param10:Boolean = false, param11:Number = 0.0, param12:Number = 0, param13:Number = 0.0, param14:Number = 0.0) : void
      {
         var _loc21_:Boolean = false;
         var _loc22_:Boolean = true;
         var _loc17_:§?5§ = null;
         var _loc18_:* = 0;
         var _loc19_:int = 0;
         var _loc20_:§@!2§ = null;
         var _loc15_:int = this.§@!Z§.indexOf(param2) - this.§>"U§;
         var _loc16_:int = this.§@!Z§.indexOf(param3) - this.§>"U§;
         if(!(_loc21_ && this))
         {
            §§push(_loc15_);
            if(!_loc21_)
            {
               §§push(0);
               if(_loc22_)
               {
                  §§push(§§pop() >= §§pop());
                  if(_loc22_ || this)
                  {
                     if(§§pop())
                     {
                        if(_loc22_ || param1)
                        {
                           §§pop();
                           addr87:
                           if(!(_loc21_ && param3))
                           {
                              addr85:
                              §§push(_loc16_ >= 0);
                           }
                           _loc17_ = new §?5§(param1,_loc15_,_loc16_,new Point(0,0),new Point(0,0),param4,param5,param6,param7,param8,param9,param10,param11);
                           if(!(_loc21_ && this))
                           {
                              this.§>F§.push(_loc17_);
                              while(true)
                              {
                                 _loc17_.§<3§ = param12;
                                 loop1:
                                 while(true)
                                 {
                                    _loc17_.axisX = param13;
                                    while(true)
                                    {
                                       _loc17_.axisY = param14;
                                       loop3:
                                       while(!(_loc21_ && param2))
                                       {
                                          §§push(param1);
                                          loop4:
                                          while(true)
                                          {
                                             if(§§pop() != §?!F§.§8!B§)
                                             {
                                                if(!_loc21_)
                                                {
                                                   addr188:
                                                   _loc17_.§"s§ = this.mLevelMain.mLevelEngine.mWorld.§]"&§(_loc17_.§7"S§(param2,param3));
                                                   break;
                                                }
                                                break;
                                             }
                                             §§push(int(parseInt(param2.uniqueID)));
                                             while(true)
                                             {
                                                _loc18_ = §§pop();
                                                addr171:
                                                while(_loc22_)
                                                {
                                                   continue loop1;
                                                }
                                                addr180:
                                                §§push(int(parseInt(param3.uniqueID)));
                                                continue loop3;
                                                if(!_loc21_)
                                                {
                                                   continue loop4;
                                                }
                                             }
                                          }
                                          return;
                                       }
                                    }
                                 }
                                 if(_loc21_ && param2)
                                 {
                                    continue;
                                 }
                                 if(false)
                                 {
                                    §§goto(addr162);
                                 }
                                 else
                                 {
                                    _loc20_ = new §@!2§(_loc18_,_loc19_,param12);
                                    if(!_loc21_)
                                    {
                                       this.§9"4§.push(_loc20_);
                                    }
                                 }
                                 §§goto(addr250);
                              }
                           }
                           §§goto(addr188);
                        }
                     }
                  }
                  if(§§pop())
                  {
                     §§goto(addr87);
                  }
                  §§goto(addr250);
               }
            }
            §§goto(addr85);
         }
         §§goto(addr87);
      }
      
      public function §,g§(param1:§?5§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && _loc2_))
         {
            if(!(param1.§"s§ is b2WeldJoint))
            {
               if(_loc5_ || this)
               {
                  return;
               }
            }
         }
         var _loc2_:§[!8§ = this.§,!§(param1.index1 + this.§>"U§);
         var _loc3_:§[!8§ = this.§,!§(param1.index2 + this.§>"U§);
         if(!(_loc4_ && param1))
         {
            this.mLevelMain.mLevelEngine.mWorld.§0§(param1.§"s§);
         }
         do
         {
            param1.§"s§ = this.mLevelMain.mLevelEngine.mWorld.§]"&§(param1.§7"S§(_loc2_,_loc3_));
         }
         while(!(_loc5_ || param1));
         
      }
      
      public function §>!]§(param1:§[!8§) : Vector.<§?5§>
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:§?5§ = null;
         var _loc2_:Vector.<§?5§> = new Vector.<§?5§>();
         var _loc3_:int = this.§@!Z§.indexOf(param1) - this.§>"U§;
         if(_loc8_)
         {
            §§push(_loc3_);
            if(_loc8_ || _loc2_)
            {
               if(§§pop() >= 0)
               {
                  addr58:
                  addr57:
                  for each(_loc4_ in this.§>F§)
                  {
                     §§push(_loc4_.index1 == _loc3_);
                     if(_loc8_)
                     {
                        if(!§§pop())
                        {
                           if(!_loc7_)
                           {
                              §§pop();
                              if(_loc7_ && _loc3_)
                              {
                                 continue;
                              }
                              §§push(_loc4_.index2 == _loc3_);
                           }
                        }
                     }
                     if(§§pop())
                     {
                        if(!(_loc7_ && param1))
                        {
                           _loc2_.push(_loc4_);
                        }
                     }
                  }
               }
               return _loc2_;
            }
            §§goto(addr58);
         }
         §§goto(addr57);
      }
      
      public function §9!s§() : Vector.<§?5§>
      {
         return this.§>F§;
      }
      
      public function §3!u§(param1:§[!8§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:int = this.§@!Z§.indexOf(param1) - this.§>"U§;
         var _loc3_:* = int(this.§>F§.length - 1);
         while(true)
         {
            §§push(_loc3_);
            if(_loc5_ || this)
            {
               if(§§pop() < 0)
               {
                  if(!(_loc5_ || param1))
                  {
                     continue;
                  }
                  if(_loc5_ || param1)
                  {
                     break;
                  }
               }
               else
               {
                  §§push(this.§>F§[_loc3_].index1 == _loc2_);
                  if(_loc5_ || this)
                  {
                     if(!§§pop())
                     {
                        loop3:
                        while(true)
                        {
                           §§pop();
                           addr134:
                           while(true)
                           {
                              §§push(this.§>F§[_loc3_].index2 == _loc2_);
                              if(!_loc4_)
                              {
                                 break;
                              }
                              continue loop3;
                           }
                        }
                        addr133:
                     }
                     for(; §§pop(); §§goto(addr134))
                     {
                        if(_loc5_ || _loc3_)
                        {
                           if(_loc5_)
                           {
                              this.§>F§.splice(_loc3_,1);
                              addr114:
                              break;
                           }
                           continue;
                        }
                        §§goto(addr114);
                     }
                     §§push(_loc3_);
                     if(!_loc4_)
                     {
                        addr76:
                        _loc3_ = §§pop() - 1;
                        continue;
                     }
                     §§goto(addr76);
                  }
                  §§goto(addr133);
               }
               §§goto(addr114);
            }
            §§goto(addr76);
         }
      }
      
      protected function §6?§(param1:§[!8§) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(param1.uniqueID);
         if(!(_loc5_ && param1))
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         var _loc3_:* = int(this.§9"4§.length - 1);
         while(true)
         {
            §§push(_loc3_);
            if(!(_loc5_ && _loc3_))
            {
               if(§§pop() < 0)
               {
                  if(_loc4_)
                  {
                     if(_loc4_)
                     {
                        break;
                     }
                     addr101:
                     this.§9"4§.splice(_loc3_,1);
                     loop1:
                     while(true)
                     {
                        addr62:
                        while(true)
                        {
                           §§push(_loc3_);
                           if(!(_loc5_ && this))
                           {
                              addr82:
                              §§push(§§pop() - 1);
                              while(true)
                              {
                                 _loc3_ = §§pop();
                                 continue loop1;
                              }
                              addr82:
                           }
                           §§goto(addr82);
                        }
                     }
                     addr106:
                  }
                  while(!(_loc4_ || this))
                  {
                     §§goto(addr106);
                  }
                  continue;
               }
               if(this.§9"4§[_loc3_].targetId.toString() == _loc2_)
               {
                  §§goto(addr101);
               }
               §§goto(addr62);
            }
            §§goto(addr82);
         }
      }
      
      public function §1!D§(param1:§[!8§, param2:§[!8§) : Boolean
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:int = this.§@!Z§.indexOf(param1) - this.§>"U§;
         var _loc4_:int = this.§@!Z§.indexOf(param2) - this.§>"U§;
         var _loc5_:* = int(this.§>F§.length - 1);
         loop0:
         while(true)
         {
            §§push(_loc5_);
            if(!(_loc7_ && _loc3_))
            {
               if(§§pop() < 0)
               {
                  if(_loc6_)
                  {
                     if(_loc6_)
                     {
                        §§push(false);
                        if(_loc6_)
                        {
                           if(_loc6_)
                           {
                              if(!_loc7_)
                              {
                                 break;
                              }
                              loop1:
                              while(true)
                              {
                                 if(!_loc7_)
                                 {
                                    §§push(§§pop());
                                    if(!(_loc7_ && param2))
                                    {
                                       if(§§pop())
                                       {
                                          loop2:
                                          while(true)
                                          {
                                             if(!(_loc7_ && param1))
                                             {
                                                §§pop();
                                                loop3:
                                                while(true)
                                                {
                                                   if(_loc6_)
                                                   {
                                                      §§push(this.§>F§[_loc5_].index2 == _loc3_);
                                                      while(true)
                                                      {
                                                         if(_loc7_)
                                                         {
                                                            continue loop2;
                                                         }
                                                         if(!_loc6_)
                                                         {
                                                            loop11:
                                                            while(true)
                                                            {
                                                               §§push(§§pop());
                                                               addr158:
                                                               while(true)
                                                               {
                                                                  if(!(_loc7_ && _loc3_))
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        addr99:
                                                                        loop7:
                                                                        while(true)
                                                                        {
                                                                           if(!§§pop())
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc5_);
                                                                                 if(!_loc7_)
                                                                                 {
                                                                                    addr71:
                                                                                    §§push(§§pop() - 1);
                                                                                    while(true)
                                                                                    {
                                                                                       _loc5_ = §§pop();
                                                                                       addr72:
                                                                                       while(true)
                                                                                       {
                                                                                          if(!_loc7_)
                                                                                          {
                                                                                             if(!_loc7_)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             continue loop1;
                                                                                          }
                                                                                       }
                                                                                       continue loop0;
                                                                                    }
                                                                                    addr71:
                                                                                 }
                                                                                 §§goto(addr71);
                                                                              }
                                                                              addr66:
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              if(_loc6_)
                                                                              {
                                                                                 §§push(true);
                                                                                 while(!_loc6_)
                                                                                 {
                                                                                    break loop7;
                                                                                 }
                                                                                 return §§pop();
                                                                                 addr104:
                                                                              }
                                                                              continue loop3;
                                                                           }
                                                                        }
                                                                        addr99:
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§pop();
                                                                        continue loop1;
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              §§pop();
                                                                              addr180:
                                                                              while(true)
                                                                              {
                                                                                 §§push(this.§>F§[_loc5_].index2 == _loc4_);
                                                                              }
                                                                           }
                                                                           addr179:
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           continue loop11;
                                                                        }
                                                                     }
                                                                     addr178:
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr99);
                                                      }
                                                      addr95:
                                                   }
                                                   §§goto(addr180);
                                                }
                                             }
                                             §§goto(addr179);
                                          }
                                       }
                                       §§goto(addr99);
                                    }
                                    §§goto(addr158);
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                    }
                                    addr177:
                                 }
                                 §§goto(addr178);
                              }
                           }
                           §§goto(addr95);
                        }
                        §§goto(addr104);
                     }
                     §§goto(addr66);
                  }
                  §§goto(addr72);
               }
               else
               {
                  §§push(this.§>F§[_loc5_].index1 == _loc3_);
               }
               §§goto(addr177);
            }
            §§goto(addr71);
         }
         return §§pop();
      }
      
      protected function createObject(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §[!8§
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         var _loc10_:§[!8§ = null;
         var _loc11_:§9L§ = null;
         if(_loc14_ || param1)
         {
            §§push(param2);
            if(_loc14_)
            {
               §§push("BIRD");
               if(_loc14_)
               {
                  if(§§pop().indexOf(§§pop()) == 0)
                  {
                     if(_loc14_ || this)
                     {
                        addr45:
                        _loc10_ = this.§#!Z§(param1,param2,param3,param4,param5,param6,param7,param8,param9);
                        if(!(_loc15_ && param2))
                        {
                           var _loc12_:*;
                           §§push((_loc12_ = this).§^o§);
                           if(!(_loc15_ && param2))
                           {
                              §§push(§§pop() + 1);
                           }
                           var _loc13_:* = §§pop();
                           if(!_loc15_)
                           {
                              _loc12_.§^o§ = _loc13_;
                           }
                           if(!_loc15_)
                           {
                              addr299:
                              _loc10_.uniqueID = this.§3"0§();
                              addr87:
                           }
                           return _loc10_;
                        }
                        §§goto(addr87);
                     }
                     else
                     {
                        addr93:
                        _loc10_ = this.§[!%§(param1,param2,param3,param4,param5,param6,param7,param8,param9);
                     }
                     §§goto(addr299);
                  }
                  else
                  {
                     addr90:
                     if(param2.indexOf("PIG") == 0)
                     {
                        §§goto(addr93);
                     }
                     else
                     {
                        §§push((_loc11_ = §8!<§.§3"[§(param2)) == null);
                        if(!(_loc15_ && this))
                        {
                           §§push(§§pop());
                           if(_loc14_ || param2)
                           {
                              if(§§pop())
                              {
                                 if(!(_loc15_ && this))
                                 {
                                    §§pop();
                                    if(!_loc15_)
                                    {
                                       §§push(param2);
                                       if(_loc14_)
                                       {
                                          §§push(§§pop().indexOf("MISC_") == 0);
                                          if(_loc14_ || param3)
                                          {
                                             addr165:
                                             if(§§pop())
                                             {
                                                if(!(_loc15_ && this))
                                                {
                                                   addr181:
                                                   §§push("MISC_FOOD_");
                                                   if(_loc14_)
                                                   {
                                                      §§push(§§pop() + param2.substring(5));
                                                   }
                                                   param2 = §§pop();
                                                   if(_loc14_ || param3)
                                                   {
                                                      _loc11_ = §8!<§.§3"[§(param2);
                                                      addr194:
                                                      if(!_loc11_)
                                                      {
                                                         return null;
                                                      }
                                                      if(!_loc15_)
                                                      {
                                                         addr198:
                                                         §§push(_loc11_.§<!G§);
                                                         if(!_loc15_)
                                                         {
                                                            §§push(§9L§.§'!8§);
                                                            if(!(_loc15_ && this))
                                                            {
                                                               §§push(§§pop() == §§pop());
                                                               if(!_loc15_)
                                                               {
                                                                  addr215:
                                                                  if(!§§pop())
                                                                  {
                                                                     if(_loc14_ || param1)
                                                                     {
                                                                        addr223:
                                                                        §§pop();
                                                                        if(!(_loc15_ && this))
                                                                        {
                                                                           addr233:
                                                                           §§push(_loc11_.§<!G§);
                                                                           §§push(§9L§.§+"W§);
                                                                        }
                                                                        §§goto(addr299);
                                                                     }
                                                                     addr236:
                                                                     if(§§pop())
                                                                     {
                                                                        if(_loc14_)
                                                                        {
                                                                           addr239:
                                                                           _loc10_ = new §>o§(this,param1,this.mLevelMain.mLevelEngine.mWorld,this.mLevelMain,this.§""G§,param2,param3,param4,param5,param9,_loc11_.front,_loc11_.particleJSONId,_loc11_.particleVariationCount);
                                                                        }
                                                                        §§goto(addr299);
                                                                     }
                                                                     else
                                                                     {
                                                                        _loc10_ = new §[!8§(this,param1,this.mLevelMain.mLevelEngine.mWorld,this.mLevelMain,this.§""G§,param2,param3,param4,param5,param9,_loc11_.front);
                                                                     }
                                                                     §§goto(addr299);
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr236);
                                                            §§push(§§pop() == §§pop());
                                                         }
                                                         §§goto(addr233);
                                                      }
                                                   }
                                                   §§goto(addr239);
                                                }
                                                §§goto(addr299);
                                             }
                                             §§goto(addr194);
                                          }
                                          §§goto(addr236);
                                       }
                                       §§goto(addr181);
                                    }
                                    §§goto(addr198);
                                 }
                                 §§goto(addr223);
                              }
                              §§goto(addr165);
                           }
                           §§goto(addr215);
                        }
                        §§goto(addr165);
                     }
                  }
                  §§goto(addr93);
               }
            }
            §§goto(addr90);
         }
         §§goto(addr45);
      }
      
      protected function §3"0§() : String
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:§[!8§ = null;
         var _loc1_:int = this.§@!Z§.length;
         var _loc2_:* = false;
         loop0:
         while(true)
         {
            §§push(_loc2_);
            if(_loc7_ || _loc1_)
            {
               §§push(!§§pop());
            }
            while(§§pop())
            {
               §§push(true);
               if(_loc7_)
               {
                  _loc2_ = §§pop();
                  if(_loc6_ && _loc2_)
                  {
                     break;
                  }
                  §§push(0);
                  if(!(_loc7_ || _loc2_))
                  {
                     return §§pop().toString();
                  }
                  addr115:
                  for each(_loc3_ in this.§@!Z§)
                  {
                     if(!(_loc7_ || _loc3_))
                     {
                        break;
                     }
                     addr99:
                     if(_loc3_.uniqueID != _loc1_.toString())
                     {
                        continue;
                     }
                     if(_loc7_)
                     {
                        _loc1_++;
                        if(!_loc6_)
                        {
                           addr97:
                           _loc2_ = false;
                        }
                        §§goto(addr99);
                     }
                     §§goto(addr97);
                  }
                  continue loop0;
               }
            }
            §§goto(addr115);
         }
      }
      
      public function updateLevelObjectsGoingOn(param1:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§[!8§ = null;
         var _loc2_:* = int(this.§@!Z§.length - 1);
         loop0:
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§@!Z§[_loc2_] as §[!8§;
            if(_loc4_ || this)
            {
               if(_loc3_)
               {
                  if(_loc4_ || _loc3_)
                  {
                     if(_loc3_.§ d§ > 0)
                     {
                        _loc3_.§6!'§();
                        loop6:
                        while(true)
                        {
                           loop4:
                           while(true)
                           {
                              _loc3_.§=">§();
                              addr83:
                              addr90:
                              while(_loc5_ && _loc3_)
                              {
                                 continue loop6;
                              }
                              if(!(_loc5_ && this))
                              {
                                 addr97:
                                 loop3:
                                 while(true)
                                 {
                                    §§push(_loc2_);
                                    if(_loc4_ || _loc3_)
                                    {
                                       §§push(§§pop() - 1);
                                    }
                                    _loc2_ = §§pop();
                                    if(_loc4_ || _loc3_)
                                    {
                                       if(_loc4_ || _loc3_)
                                       {
                                          if(true)
                                          {
                                             break;
                                          }
                                          continue loop4;
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr83);
                                    }
                                    addr133:
                                    while(true)
                                    {
                                       continue loop3;
                                    }
                                 }
                                 continue loop0;
                                 addr43:
                              }
                           }
                        }
                        addr103:
                     }
                  }
                  while(true)
                  {
                     this.§8v§(_loc2_,true,true,true);
                     §§goto(addr133);
                     §§goto(addr90);
                  }
               }
               §§goto(addr43);
            }
            §§goto(addr103);
         }
         if(_loc4_)
         {
            this.§%=§(param1);
         }
      }
      
      protected function §%=§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§&p§(param1);
         }
         do
         {
            this.§1!Q§();
         }
         while(_loc2_);
         
      }
      
      private function §&p§(param1:Number) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:§@!2§ = null;
         var _loc5_:* = 0;
         var _loc6_:§[!8§ = null;
         if(_loc8_ || _loc2_)
         {
            if(this.§9"4§.length == 0)
            {
               if(_loc8_ || _loc3_)
               {
                  return;
               }
            }
         }
         var _loc2_:Vector.<§@!2§> = this.§9"4§.concat();
         var _loc3_:* = int(_loc2_.length - 1);
         while(_loc3_ >= 0)
         {
            §§push((_loc4_ = _loc2_[_loc3_]).§2B§);
            if(!_loc7_)
            {
               §§push(Boolean(§§pop()));
               if(!(_loc7_ && _loc2_))
               {
                  addr74:
                  if(§§pop())
                  {
                     if(!(_loc7_ && _loc2_))
                     {
                        §§pop();
                        if(!_loc8_)
                        {
                           continue;
                        }
                        §§push(this.§9"4§.indexOf(_loc4_) == -1);
                        if(!(_loc7_ && _loc3_))
                        {
                           addr109:
                           §§push(!§§pop());
                        }
                     }
                  }
                  if(§§pop())
                  {
                     if(!_loc8_)
                     {
                        continue;
                     }
                     §§push(_loc4_.update(param1));
                     if(!_loc7_)
                     {
                        §§push(int(§§pop()));
                        if(!_loc7_)
                        {
                           addr121:
                           §§push(§§pop());
                           if(_loc8_)
                           {
                              _loc5_ = §§pop();
                              if(_loc8_ || this)
                              {
                                 addr133:
                                 if(§§pop() != -1)
                                 {
                                    if(!_loc8_)
                                    {
                                       continue;
                                    }
                                    §§push(this);
                                    §§push("");
                                    if(!(_loc7_ && this))
                                    {
                                       §§push(§§pop() + _loc5_);
                                    }
                                    if(_loc6_ = §§pop().§+!#§(§§pop()))
                                    {
                                       if(_loc8_)
                                       {
                                          this.§8`§(_loc6_,true,true,true);
                                          addr170:
                                          §§push(_loc3_);
                                          if(_loc8_ || _loc3_)
                                          {
                                             addr178:
                                             §§push(§§pop() - 1);
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr170);
                              }
                              _loc3_ = §§pop();
                              continue;
                           }
                           §§goto(addr133);
                        }
                        §§goto(addr178);
                     }
                     §§goto(addr121);
                  }
                  §§goto(addr170);
               }
               §§goto(addr109);
            }
            §§goto(addr74);
         }
      }
      
      private function §1!Q§() : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc1_:§?5§ = null;
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         var _loc4_:Class = null;
         var _loc5_:* = false;
         loop0:
         for each(_loc1_ in this.§>F§)
         {
            if(!_loc8_)
            {
               §§push(_loc1_.type == §?!F§.§5!b§);
               if(_loc9_ || _loc1_)
               {
                  §§push(§§pop());
                  if(_loc9_ || _loc2_)
                  {
                     if(!§§pop())
                     {
                        if(!(_loc8_ && _loc3_))
                        {
                           §§pop();
                           if(_loc9_ || _loc2_)
                           {
                              §§push(_loc1_.type == §?!F§.§?<§);
                              if(!(_loc8_ && _loc2_))
                              {
                                 addr92:
                                 if(§§pop())
                                 {
                                    if(_loc9_ || _loc2_)
                                    {
                                    }
                                    addr114:
                                    if(!§§pop())
                                    {
                                       continue;
                                    }
                                    if(_loc9_ || this)
                                    {
                                       §§push(_loc1_.§"s§);
                                       if(!_loc8_)
                                       {
                                          §§push(§§pop() is b2PrismaticJoint);
                                          if(!(_loc8_ && _loc2_))
                                          {
                                             addr135:
                                             if(§§pop())
                                             {
                                                if(_loc9_)
                                                {
                                                   addr138:
                                                   _loc4_ = b2PrismaticJoint;
                                                   if(!_loc8_)
                                                   {
                                                      §§push(_loc1_.§"s§);
                                                      if(!(_loc8_ && _loc3_))
                                                      {
                                                         §§push((§§pop() as b2PrismaticJoint).§-"<§());
                                                         if(_loc9_)
                                                         {
                                                            §§push(Number(§§pop()));
                                                            if(!(_loc8_ && _loc3_))
                                                            {
                                                               _loc2_ = §§pop();
                                                               if(_loc9_ || _loc2_)
                                                               {
                                                                  §§push(_loc1_.§"s§);
                                                                  if(_loc9_)
                                                                  {
                                                                     §§push((§§pop() as b2PrismaticJoint).§+"E§());
                                                                     if(!_loc8_)
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                        if(_loc9_)
                                                                        {
                                                                           _loc3_ = §§pop();
                                                                           if(!(_loc8_ && _loc3_))
                                                                           {
                                                                              addr258:
                                                                              §§push(Boolean(_loc1_.§`^§));
                                                                              if(!_loc8_)
                                                                              {
                                                                                 §§push(§§pop());
                                                                                 if(_loc9_)
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       if(_loc9_ || _loc2_)
                                                                                       {
                                                                                          §§pop();
                                                                                          if(!_loc8_)
                                                                                          {
                                                                                             §§push(Boolean(_loc1_.§]!T§));
                                                                                             loop25:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop());
                                                                                                loop18:
                                                                                                while(§§pop())
                                                                                                {
                                                                                                   loop20:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§pop();
                                                                                                      loop15:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc3_);
                                                                                                         addr399:
                                                                                                         loop9:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(0);
                                                                                                            loop8:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop() > §§pop());
                                                                                                               if(_loc9_)
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop());
                                                                                                                     loop19:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(!(_loc9_ || _loc3_))
                                                                                                                        {
                                                                                                                           continue loop18;
                                                                                                                        }
                                                                                                                        if(§§pop())
                                                                                                                        {
                                                                                                                           loop6:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§pop();
                                                                                                                              loop7:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(_loc2_);
                                                                                                                                 loop10:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() >= _loc1_.upperLimit);
                                                                                                                                    if(!(_loc8_ && _loc1_))
                                                                                                                                    {
                                                                                                                                       if(_loc8_ && _loc2_)
                                                                                                                                       {
                                                                                                                                          continue loop20;
                                                                                                                                       }
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop());
                                                                                                                                          addr380:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(!_loc8_)
                                                                                                                                             {
                                                                                                                                                if(§§pop())
                                                                                                                                                {
                                                                                                                                                }
                                                                                                                                                break loop18;
                                                                                                                                             }
                                                                                                                                             continue loop19;
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    loop21:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§pop();
                                                                                                                                       loop22:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(_loc8_)
                                                                                                                                          {
                                                                                                                                             continue loop15;
                                                                                                                                          }
                                                                                                                                          loop3:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(_loc3_);
                                                                                                                                             loop4:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(_loc8_ && _loc3_)
                                                                                                                                                {
                                                                                                                                                   continue loop10;
                                                                                                                                                }
                                                                                                                                                if(_loc8_ && _loc1_)
                                                                                                                                                {
                                                                                                                                                   continue loop9;
                                                                                                                                                }
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(0);
                                                                                                                                                   if(!_loc9_)
                                                                                                                                                   {
                                                                                                                                                      continue loop8;
                                                                                                                                                   }
                                                                                                                                                   §§push(§§pop() < §§pop());
                                                                                                                                                   loop5:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(_loc8_)
                                                                                                                                                      {
                                                                                                                                                         continue loop6;
                                                                                                                                                      }
                                                                                                                                                      §§push(§§pop());
                                                                                                                                                      loop26:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(!§§pop())
                                                                                                                                                         {
                                                                                                                                                            break loop18;
                                                                                                                                                         }
                                                                                                                                                         loop17:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§pop();
                                                                                                                                                            loop24:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(_loc8_)
                                                                                                                                                               {
                                                                                                                                                                  continue loop22;
                                                                                                                                                               }
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc2_);
                                                                                                                                                                  if(_loc8_ && _loc1_)
                                                                                                                                                                  {
                                                                                                                                                                     continue loop4;
                                                                                                                                                                  }
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() <= _loc1_.lowerLimit);
                                                                                                                                                                     if(_loc9_ || this)
                                                                                                                                                                     {
                                                                                                                                                                        break loop18;
                                                                                                                                                                     }
                                                                                                                                                                     addr301:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc8_)
                                                                                                                                                                        {
                                                                                                                                                                           continue loop5;
                                                                                                                                                                        }
                                                                                                                                                                        if(_loc8_)
                                                                                                                                                                        {
                                                                                                                                                                           continue loop21;
                                                                                                                                                                        }
                                                                                                                                                                        §§push(§§pop());
                                                                                                                                                                        if(_loc8_)
                                                                                                                                                                        {
                                                                                                                                                                           continue loop26;
                                                                                                                                                                        }
                                                                                                                                                                        if(!_loc8_)
                                                                                                                                                                        {
                                                                                                                                                                           _loc5_ = §§pop();
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc8_)
                                                                                                                                                                              {
                                                                                                                                                                                 continue loop17;
                                                                                                                                                                              }
                                                                                                                                                                              if(_loc8_)
                                                                                                                                                                              {
                                                                                                                                                                                 continue loop25;
                                                                                                                                                                              }
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!§§pop())
                                                                                                                                                                                 {
                                                                                                                                                                                    continue loop0;
                                                                                                                                                                                 }
                                                                                                                                                                                 if(!_loc8_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc8_)
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop24;
                                                                                                                                                                                    }
                                                                                                                                                                                    if(_loc8_)
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop7;
                                                                                                                                                                                    }
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc1_.§"s§);
                                                                                                                                                                                       addr324:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          (§§pop() as _loc4_).SetMotorSpeed(-_loc3_);
                                                                                                                                                                                          addr329:
                                                                                                                                                                                          while(false)
                                                                                                                                                                                          {
                                                                                                                                                                                             continue loop3;
                                                                                                                                                                                          }
                                                                                                                                                                                          continue loop0;
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr329);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           addr311:
                                                                                                                                                                        }
                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr380);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     continue loop6;
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         continue loop22;
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           addr412:
                                                                                                                        }
                                                                                                                        §§goto(addr378);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  addr403:
                                                                                                               }
                                                                                                               §§goto(addr412);
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(Boolean(§§pop()));
                                                                                                   if(!_loc8_)
                                                                                                   {
                                                                                                      §§goto(addr301);
                                                                                                   }
                                                                                                   §§goto(addr311);
                                                                                                }
                                                                                                §§goto(addr386);
                                                                                             }
                                                                                             addr417:
                                                                                          }
                                                                                          §§goto(addr322);
                                                                                       }
                                                                                       §§goto(addr315);
                                                                                    }
                                                                                    §§goto(addr417);
                                                                                 }
                                                                                 §§goto(addr354);
                                                                              }
                                                                              §§goto(addr403);
                                                                           }
                                                                           §§goto(addr322);
                                                                        }
                                                                        §§goto(addr399);
                                                                     }
                                                                     §§goto(addr347);
                                                                  }
                                                                  §§goto(addr324);
                                                               }
                                                               §§goto(addr358);
                                                            }
                                                            §§goto(addr347);
                                                         }
                                                         §§goto(addr287);
                                                      }
                                                      §§goto(addr324);
                                                   }
                                                   §§goto(addr329);
                                                }
                                                else
                                                {
                                                   addr209:
                                                   _loc4_ = b2RevoluteJoint;
                                                   if(_loc9_ || _loc3_)
                                                   {
                                                      §§push(_loc1_.§"s§);
                                                      if(!_loc8_)
                                                      {
                                                         §§push((§§pop() as b2RevoluteJoint).§6""§());
                                                         if(_loc9_ || _loc2_)
                                                         {
                                                            §§push(Number(§§pop()));
                                                            if(_loc9_ || this)
                                                            {
                                                               addr241:
                                                               _loc2_ = §§pop();
                                                               if(!(_loc8_ && this))
                                                               {
                                                                  addr251:
                                                                  §§push((_loc1_.§"s§ as b2RevoluteJoint).§+"E§());
                                                                  if(!_loc8_)
                                                                  {
                                                                     addr256:
                                                                     §§push(Number(§§pop()));
                                                                  }
                                                                  _loc3_ = §§pop();
                                                               }
                                                               §§goto(addr258);
                                                            }
                                                            §§goto(addr256);
                                                         }
                                                         §§goto(addr241);
                                                      }
                                                      §§goto(addr251);
                                                   }
                                                }
                                             }
                                             else
                                             {
                                                addr208:
                                                if(_loc1_.§"s§ is b2RevoluteJoint)
                                                {
                                                   §§goto(addr209);
                                                }
                                             }
                                             §§goto(addr258);
                                          }
                                       }
                                       §§goto(addr208);
                                    }
                                    §§goto(addr209);
                                 }
                                 §§goto(addr114);
                              }
                              §§pop();
                              if(_loc9_)
                              {
                                 §§push(Boolean(_loc1_.§13§));
                                 if(_loc9_ || this)
                                 {
                                    §§goto(addr114);
                                 }
                                 §§goto(addr135);
                              }
                              §§goto(addr138);
                           }
                           §§goto(addr209);
                        }
                        §§goto(addr92);
                     }
                     §§goto(addr114);
                  }
                  §§goto(addr92);
               }
               §§goto(addr114);
            }
            §§goto(addr209);
         }
      }
      
      public function addExplosions(param1:int, param2:Number, param3:Number, param4:Vector.<§[!8§> = null) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && param1))
         {
            this.§,"D§.push(§6!M§.createExplosion(param1,param2,param3,param4));
         }
         do
         {
            §@"M§.§3"C§("TntExplosions","ChannelExplosions");
         }
         while(!(_loc5_ || param3));
         
      }
      
      public function §'n§(param1:Number, param2:Number) : int
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:§[!8§ = null;
         var _loc3_:* = int(this.§@!Z§.length - 1);
         while(true)
         {
            §§push(_loc3_);
            if(_loc5_ || param1)
            {
               if(§§pop() < 0)
               {
                  break;
               }
               if(_loc4_ = this.§@!Z§[_loc3_])
               {
                  if(_loc5_ || param1)
                  {
                     if(_loc4_.isInCoordinates(param1,param2))
                     {
                        if(_loc6_)
                        {
                           continue;
                        }
                        addr59:
                        §§push(_loc3_);
                        if(!(_loc6_ && param1))
                        {
                           return §§pop();
                        }
                     }
                     else
                     {
                        addr85:
                        §§push(_loc3_);
                        if(_loc5_)
                        {
                           §§push(§§pop() - 1);
                        }
                     }
                     _loc3_ = §§pop();
                     continue;
                  }
                  §§goto(addr59);
               }
               §§goto(addr85);
            }
            break;
         }
         return §§pop();
      }
      
      public function §?!#§(param1:Number, param2:Number) : §[!8§
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:§[!8§ = null;
         var _loc3_:* = int(this.§@!Z§.length - 1);
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§@!Z§[_loc3_])
            {
               if(_loc6_)
               {
                  if(_loc4_.isInCoordinates(param1,param2))
                  {
                     if(!(_loc5_ && _loc3_))
                     {
                        return _loc4_;
                     }
                  }
               }
            }
            §§push(_loc3_);
            if(_loc6_ || param2)
            {
               §§push(§§pop() - 1);
            }
            _loc3_ = §§pop();
         }
         return null;
      }
      
      public function §<"Z§(param1:Number, param2:Number) : Vector.<§[!8§>
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:§[!8§ = null;
         var _loc3_:Vector.<§[!8§> = new Vector.<§[!8§>();
         var _loc4_:* = int(this.§@!Z§.length - 1);
         while(_loc4_ >= 0)
         {
            §§push(Boolean(_loc5_ = this.§@!Z§[_loc4_]));
            if(!(_loc7_ && param1))
            {
               if(§§pop())
               {
                  if(!_loc7_)
                  {
                     addr62:
                     §§pop();
                     if(_loc6_ || _loc3_)
                     {
                        §§push(_loc5_.isInCoordinates(param1,param2));
                        if(!(_loc7_ && param2))
                        {
                           addr92:
                           addr91:
                           if(§§pop())
                           {
                              if(!_loc6_)
                              {
                                 continue;
                              }
                              addr95:
                              _loc3_.push(_loc5_);
                              if(_loc7_ && this)
                              {
                                 continue;
                              }
                           }
                           §§push(_loc4_);
                           if(!(_loc7_ && this))
                           {
                              §§push(§§pop() - 1);
                           }
                           _loc4_ = §§pop();
                           continue;
                        }
                        §§goto(addr92);
                     }
                     §§goto(addr95);
                  }
                  §§goto(addr91);
               }
               §§goto(addr92);
            }
            §§goto(addr62);
         }
         return _loc3_;
      }
      
      public function §,!§(param1:int) : §[!8§
      {
         return this.§@!Z§[param1];
      }
      
      public function §0P§(param1:Number, param2:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:§[!8§ = null;
         var _loc3_:* = int(this.§@!Z§.length - 1);
         while(_loc3_ >= 0)
         {
            (_loc4_ = this.§@!Z§[_loc3_] as §[!8§).§0P§(param2,param1);
            if(_loc5_)
            {
               §§push(_loc3_);
               if(_loc5_)
               {
                  §§push(§§pop() - 1);
               }
               _loc3_ = §§pop();
            }
         }
      }
      
      private function §#!6§(param1:§[!8§, param2:Number) : Boolean
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc7_:§[!8§ = null;
         if(!(_loc9_ && this))
         {
            §§push(this.mSardineCanAdded);
            if(_loc8_)
            {
               if(!§§pop())
               {
                  if(!_loc9_)
                  {
                     §§push(true);
                     if(_loc8_)
                     {
                        return §§pop();
                     }
                     §§goto(addr70);
                  }
                  else
                  {
                     addr62:
                     §§push(false);
                     if(!(_loc9_ && _loc3_))
                     {
                        §§goto(addr70);
                     }
                  }
                  §§goto(addr70);
               }
               else
               {
                  §§push(this.mMightyEagleAdded);
                  if(!_loc9_)
                  {
                     if(§§pop())
                     {
                        if(_loc8_ || _loc3_)
                        {
                           §§goto(addr62);
                        }
                        addr72:
                        var _loc3_:* = §§pop();
                        if(_loc8_)
                        {
                           §§push(param1.§ d§);
                           loop0:
                           while(true)
                           {
                              §§push(param1.§^!2§);
                              loop1:
                              while(true)
                              {
                                 if(§§pop() != §§pop())
                                 {
                                    §§push(this.§#!F§);
                                    loop2:
                                    while(true)
                                    {
                                       §§push(0);
                                       addr508:
                                       while(true)
                                       {
                                          if(§§pop() == §§pop())
                                          {
                                             while(true)
                                             {
                                                this.§#!F§ = this.mLevelMain.§&";§;
                                                addr514:
                                                while(true)
                                                {
                                                }
                                             }
                                             addr509:
                                          }
                                          addr492:
                                          loop6:
                                          while(true)
                                          {
                                             §§push(param1.§]!!§());
                                             loop7:
                                             while(true)
                                             {
                                                §§push(Boolean(§§pop()));
                                                loop8:
                                                while(true)
                                                {
                                                   §§push(§§pop());
                                                   loop9:
                                                   while(true)
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         loop10:
                                                         while(true)
                                                         {
                                                            §§pop();
                                                            loop11:
                                                            while(true)
                                                            {
                                                               if(!_loc9_)
                                                               {
                                                                  §§push(this.§-"7§(param1));
                                                                  loop12:
                                                                  for(; !_loc9_; while(_loc8_ || _loc3_)
                                                                  {
                                                                     §§goto(addr454);
                                                                     §§push(§§pop());
                                                                     §§goto(addr327);
                                                                  })
                                                                  {
                                                                     §§push(Boolean(§§pop()));
                                                                     if(!(_loc9_ && param2))
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop());
                                                                           loop44:
                                                                           while(true)
                                                                           {
                                                                              if(_loc9_ && _loc3_)
                                                                              {
                                                                                 continue loop9;
                                                                              }
                                                                              if(§§pop())
                                                                              {
                                                                                 loop19:
                                                                                 while(true)
                                                                                 {
                                                                                    loop20:
                                                                                    while(true)
                                                                                    {
                                                                                       if(§§pop())
                                                                                       {
                                                                                          loop21:
                                                                                          while(_loc8_)
                                                                                          {
                                                                                             if(!_loc9_)
                                                                                             {
                                                                                                §§push(this.mMightyEagleTimer);
                                                                                                loop22:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(§§pop() < this.§^!Z§.MIGHTY_EAGLE_WAIT_TIME)
                                                                                                   {
                                                                                                      if(_loc8_)
                                                                                                      {
                                                                                                         §§push(this.mMightyEagleTimer);
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(param2);
                                                                                                            loop24:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop() + §§pop());
                                                                                                               loop25:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(Number(§§pop()));
                                                                                                                  loop26:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     _loc4_ = §§pop();
                                                                                                                     if(!_loc9_)
                                                                                                                     {
                                                                                                                        addr401:
                                                                                                                        if(_loc8_ || param1)
                                                                                                                        {
                                                                                                                           if(_loc9_ && this)
                                                                                                                           {
                                                                                                                              continue loop2;
                                                                                                                           }
                                                                                                                           if(_loc9_ && this)
                                                                                                                           {
                                                                                                                              continue loop11;
                                                                                                                           }
                                                                                                                           if(!_loc9_)
                                                                                                                           {
                                                                                                                              if(_loc9_ && this)
                                                                                                                              {
                                                                                                                                 break;
                                                                                                                              }
                                                                                                                              §§push(this.mMightyEagleTimer);
                                                                                                                              loop27:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() < this.§^!Z§.MIGHTY_EAGLE_SOUND_DELAY);
                                                                                                                                 if(_loc8_)
                                                                                                                                 {
                                                                                                                                    addr327:
                                                                                                                                    if(!(_loc8_ || param2))
                                                                                                                                    {
                                                                                                                                       continue loop12;
                                                                                                                                    }
                                                                                                                                    if(!(_loc8_ || _loc3_))
                                                                                                                                    {
                                                                                                                                       break;
                                                                                                                                    }
                                                                                                                                    addr341:
                                                                                                                                    §§push(§§pop());
                                                                                                                                    if(_loc9_ && this)
                                                                                                                                    {
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(_loc9_ && _loc3_)
                                                                                                                                          {
                                                                                                                                             continue loop44;
                                                                                                                                          }
                                                                                                                                          if(!§§pop())
                                                                                                                                          {
                                                                                                                                             continue loop19;
                                                                                                                                          }
                                                                                                                                          if(_loc8_)
                                                                                                                                          {
                                                                                                                                             §§pop();
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(this.mLevelMain.§&";§);
                                                                                                                                                continue loop19;
                                                                                                                                                §§goto(addr401);
                                                                                                                                             }
                                                                                                                                             addr465:
                                                                                                                                          }
                                                                                                                                          §§goto(addr341);
                                                                                                                                       }
                                                                                                                                       continue loop9;
                                                                                                                                       addr454:
                                                                                                                                    }
                                                                                                                                    if(§§pop())
                                                                                                                                    {
                                                                                                                                       continue loop20;
                                                                                                                                    }
                                                                                                                                    loop31:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(§§pop())
                                                                                                                                       {
                                                                                                                                          if(!_loc9_)
                                                                                                                                          {
                                                                                                                                             §@"M§.§3"C§("Mighty_Eagle_Selected_1","ChannelBird");
                                                                                                                                          }
                                                                                                                                          loop32:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §@"M§.§3"C§("Mighty_Eagle_Flying_1","ChannelBird");
                                                                                                                                             addr267:
                                                                                                                                             while(_loc8_ || this)
                                                                                                                                             {
                                                                                                                                                addr97:
                                                                                                                                                if(_loc9_ && this)
                                                                                                                                                {
                                                                                                                                                   continue;
                                                                                                                                                }
                                                                                                                                                §§push(true);
                                                                                                                                                if(_loc8_ || _loc3_)
                                                                                                                                                {
                                                                                                                                                   addr112:
                                                                                                                                                   _loc3_ = §§pop();
                                                                                                                                                   if(_loc8_)
                                                                                                                                                   {
                                                                                                                                                      addr115:
                                                                                                                                                      if(!(_loc8_ || param1))
                                                                                                                                                      {
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(!(_loc9_ && param1))
                                                                                                                                                            {
                                                                                                                                                               addr189:
                                                                                                                                                               if(_loc9_ && param1)
                                                                                                                                                               {
                                                                                                                                                                  continue loop32;
                                                                                                                                                               }
                                                                                                                                                               if(!_loc9_)
                                                                                                                                                               {
                                                                                                                                                                  if(!(_loc8_ || this))
                                                                                                                                                                  {
                                                                                                                                                                     continue loop21;
                                                                                                                                                                  }
                                                                                                                                                                  §§push(this.§-"7§(param1));
                                                                                                                                                                  if(_loc8_ || _loc3_)
                                                                                                                                                                  {
                                                                                                                                                                     addr87:
                                                                                                                                                                     if(!(_loc8_ || this))
                                                                                                                                                                     {
                                                                                                                                                                        continue loop20;
                                                                                                                                                                     }
                                                                                                                                                                     if(§§pop())
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc8_)
                                                                                                                                                                        {
                                                                                                                                                                           continue;
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr97);
                                                                                                                                                                     }
                                                                                                                                                                     else
                                                                                                                                                                     {
                                                                                                                                                                        addr567:
                                                                                                                                                                        _loc7_ = this.addObject("BIRD_MIGHTY_EAGLE",_loc5_,_loc6_,this.§^!Z§.MIGHTY_EAGLE_FLYING_ANGLE * 1.2);
                                                                                                                                                                        if(_loc8_ || param1)
                                                                                                                                                                        {
                                                                                                                                                                           this.mMightyEagleAdded = true;
                                                                                                                                                                           addr618:
                                                                                                                                                                           this.§#!F§ = 0;
                                                                                                                                                                           _loc7_.§2!8§.setScale(1.82);
                                                                                                                                                                           addr626:
                                                                                                                                                                           if(_loc8_ || param1)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc8_ || param1)
                                                                                                                                                                              {
                                                                                                                                                                                 addr616:
                                                                                                                                                                                 if(false)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§goto(addr618);
                                                                                                                                                                                 }
                                                                                                                                                                                 this.mMightyEagleTimer = _loc4_;
                                                                                                                                                                                 break;
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr626);
                                                                                                                                                                           }
                                                                                                                                                                           addr622:
                                                                                                                                                                           §§goto(addr622);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr616);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr112);
                                                                                                                                                               }
                                                                                                                                                               else
                                                                                                                                                               {
                                                                                                                                                                  loop29:
                                                                                                                                                                  while(_loc8_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc4_);
                                                                                                                                                                     loop30:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc9_)
                                                                                                                                                                        {
                                                                                                                                                                           continue loop19;
                                                                                                                                                                        }
                                                                                                                                                                        if(_loc8_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() > this.§^!Z§.MIGHTY_EAGLE_SOUND_DELAY);
                                                                                                                                                                           if(_loc9_ && param2)
                                                                                                                                                                           {
                                                                                                                                                                              return §§pop();
                                                                                                                                                                           }
                                                                                                                                                                           addr631:
                                                                                                                                                                           addr631:
                                                                                                                                                                           addr631:
                                                                                                                                                                           addr631:
                                                                                                                                                                           if(_loc8_ || param2)
                                                                                                                                                                           {
                                                                                                                                                                              continue loop31;
                                                                                                                                                                           }
                                                                                                                                                                           continue loop7;
                                                                                                                                                                        }
                                                                                                                                                                        addr538:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           if(§§pop() < this.§^!Z§.SARDINE_CAN_MAX_ROTATION_SPEED)
                                                                                                                                                                           {
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(this);
                                                                                                                                                                                 §§push(this.§&;§);
                                                                                                                                                                                 if(_loc8_ || param1)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(param2);
                                                                                                                                                                                    if(_loc8_ || this)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop() * this.§^!Z§.SARDINE_CAN_ROTATION_ACCELERATION);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                                                                 }
                                                                                                                                                                                 §§pop().§&;§ = §§pop();
                                                                                                                                                                                 break loop26;
                                                                                                                                                                              }
                                                                                                                                                                              addr542:
                                                                                                                                                                           }
                                                                                                                                                                           addr520:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(param1.getBody());
                                                                                                                                                                              break loop30;
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(param2);
                                                                                                                                                                        if(_loc8_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() * this.§&;§);
                                                                                                                                                                        }
                                                                                                                                                                        §§pop().§["$§(§§pop());
                                                                                                                                                                        break loop29;
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     this.§#!F§ = 0;
                                                                                                                                                                     break loop21;
                                                                                                                                                                  }
                                                                                                                                                                  addr365:
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr631);
                                                                                                                                                            }
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                               loop40:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  addr124:
                                                                                                                                                                  addr235:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(param1.getBody());
                                                                                                                                                                     if(_loc9_)
                                                                                                                                                                     {
                                                                                                                                                                        break;
                                                                                                                                                                     }
                                                                                                                                                                     if(_loc8_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop().GetPosition());
                                                                                                                                                                        if(!_loc8_)
                                                                                                                                                                        {
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop().x);
                                                                                                                                                                              if(!(_loc9_ && _loc3_))
                                                                                                                                                                              {
                                                                                                                                                                                 if(!_loc9_)
                                                                                                                                                                                 {
                                                                                                                                                                                    continue loop22;
                                                                                                                                                                                 }
                                                                                                                                                                                 continue loop26;
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           continue loop22;
                                                                                                                                                                           addr236:
                                                                                                                                                                        }
                                                                                                                                                                        §§push(§§pop().y);
                                                                                                                                                                        if(!_loc8_)
                                                                                                                                                                        {
                                                                                                                                                                           continue loop27;
                                                                                                                                                                        }
                                                                                                                                                                        if(!_loc9_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(this.§^!Z§.MIGHTY_EAGLE_STARTING_DISTANCE_Y * this.§^!Z§.MIGHTY_EAGLE_Y_CHANGE);
                                                                                                                                                                           if(_loc8_)
                                                                                                                                                                           {
                                                                                                                                                                              if(!(_loc8_ || this))
                                                                                                                                                                              {
                                                                                                                                                                                 continue loop1;
                                                                                                                                                                              }
                                                                                                                                                                              §§push(§§pop() * 1.07);
                                                                                                                                                                           }
                                                                                                                                                                           if(_loc9_)
                                                                                                                                                                           {
                                                                                                                                                                              continue loop24;
                                                                                                                                                                           }
                                                                                                                                                                           §§push(§§pop() - §§pop());
                                                                                                                                                                           if(_loc9_)
                                                                                                                                                                           {
                                                                                                                                                                              continue loop27;
                                                                                                                                                                           }
                                                                                                                                                                           if(!_loc9_)
                                                                                                                                                                           {
                                                                                                                                                                              if(!_loc9_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                                                                 continue loop27;
                                                                                                                                                                              }
                                                                                                                                                                              continue loop0;
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(Number(§§pop()));
                                                                                                                                                                           }
                                                                                                                                                                           addr257:
                                                                                                                                                                        }
                                                                                                                                                                        while(_loc8_)
                                                                                                                                                                        {
                                                                                                                                                                           _loc5_ = §§pop();
                                                                                                                                                                           continue loop40;
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr277);
                                                                                                                                                                        addr258:
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr236);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr523);
                                                                                                                                                         }
                                                                                                                                                         addr630:
                                                                                                                                                         §§goto(addr631);
                                                                                                                                                         §§push(_loc3_);
                                                                                                                                                         addr182:
                                                                                                                                                      }
                                                                                                                                                      if(false)
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr124);
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr567);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr630);
                                                                                                                                                }
                                                                                                                                                §§goto(addr631);
                                                                                                                                             }
                                                                                                                                             §§goto(addr514);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(_loc4_);
                                                                                                                                          if(!(_loc9_ && param2))
                                                                                                                                          {
                                                                                                                                             if(_loc9_ && _loc3_)
                                                                                                                                             {
                                                                                                                                                break;
                                                                                                                                             }
                                                                                                                                             if(§§pop() >= this.§^!Z§.MIGHTY_EAGLE_WAIT_TIME)
                                                                                                                                             {
                                                                                                                                                §§goto(addr226);
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                §§goto(addr616);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr258);
                                                                                                                                       }
                                                                                                                                       continue loop25;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr631);
                                                                                                                              }
                                                                                                                              continue loop8;
                                                                                                                           }
                                                                                                                           §§goto(addr509);
                                                                                                                           §§goto(addr514);
                                                                                                                        }
                                                                                                                        §§goto(addr465);
                                                                                                                     }
                                                                                                                     §§goto(addr630);
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§goto(addr520);
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            if(!(_loc8_ || this))
                                                                                                            {
                                                                                                               continue;
                                                                                                            }
                                                                                                            _loc6_ = §§pop();
                                                                                                            §§goto(addr182);
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr630);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr542);
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             continue loop6;
                                                                                          }
                                                                                          addr519:
                                                                                       }
                                                                                       §§goto(addr630);
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        addr480:
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§pop();
                                                                        continue loop2;
                                                                     }
                                                                  }
                                                                  continue loop10;
                                                               }
                                                               addr536:
                                                               while(true)
                                                               {
                                                               }
                                                               §§goto(addr538);
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr480);
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr536);
                              }
                           }
                        }
                        §§goto(addr519);
                     }
                     §§push(false);
                  }
               }
               §§goto(addr72);
            }
            addr70:
            return §§pop();
         }
         §§goto(addr62);
      }
      
      private function §1a§(param1:§[!8§, param2:Number) : Boolean
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc5_:§[!8§ = null;
         if(!(_loc9_ && param1))
         {
            §§push(Boolean(this.§^!Z§.MIGHTY_EAGLE_USE_SHADE));
            loop0:
            while(true)
            {
               §§push(§§pop());
               while(true)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        addr114:
                        loop10:
                        while(true)
                        {
                           §§push(this.§;Q§);
                           if(!(_loc9_ && _loc3_))
                           {
                              §§push(!§§pop());
                           }
                           addr93:
                           while(true)
                           {
                              §§push(Boolean(§§pop()));
                              addr95:
                              while(!_loc9_)
                              {
                                 if(!_loc8_)
                                 {
                                    continue loop0;
                                 }
                              }
                              continue loop10;
                           }
                        }
                     }
                  }
                  while(true)
                  {
                     §§push(§§pop());
                     if(!_loc8_)
                     {
                        break;
                     }
                     if(§§pop())
                     {
                        loop4:
                        while(true)
                        {
                           §§pop();
                           addr105:
                           while(true)
                           {
                              addr42:
                              while(true)
                              {
                                 §§push(this.mMightyEagleTimer);
                                 if(!_loc9_)
                                 {
                                    continue loop4;
                                 }
                                 addr117:
                                 var _loc3_:* = §§pop();
                                 if(_loc8_ || param1)
                                 {
                                    §§push(this);
                                    §§push(this.mMightyEagleTimer);
                                    if(_loc8_ || param2)
                                    {
                                       §§push(§§pop() + param2);
                                    }
                                    §§pop().mMightyEagleTimer = §§pop();
                                    if(!(_loc9_ && param1))
                                    {
                                       §§push(this.mLevelMain.particles);
                                       §§push(§0i§.§#"D§);
                                       §§push(§6!O§.PARTICLE_GROUP_GAME_EFFECTS);
                                       §§push(§0i§.PARTICLE_TYPE_KINETIC_PARTICLE);
                                       §§push(param1.getBody().GetPosition().x);
                                       if(!_loc9_)
                                       {
                                          §§push(_loc3_);
                                          if(!(_loc9_ && param1))
                                          {
                                             §§push(§§pop() - §§pop());
                                             if(!(_loc9_ && param1))
                                             {
                                                §§push(Math.random() * (_loc3_ * 2));
                                                if(_loc8_ || param2)
                                                {
                                                   addr190:
                                                   §§push(§§pop() + §§pop());
                                                   §§push(param1.getBody().GetPosition().y);
                                                   if(!(_loc9_ && this))
                                                   {
                                                      addr201:
                                                      §§push(_loc3_);
                                                      if(_loc8_)
                                                      {
                                                         addr219:
                                                         §§push(§§pop() - §§pop());
                                                         if(!(_loc9_ && param1))
                                                         {
                                                            addr212:
                                                            §§push(Math.random() * (_loc3_ * 2));
                                                         }
                                                         §§pop().§"!J§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),3500,"",§0i§.getParticleMaterialFromEngineMaterial(param1.§@x§),0,0,1,0,4);
                                                         var _loc4_:* = 1;
                                                         if(_loc8_)
                                                         {
                                                            addr352:
                                                            if(this.mMightyEagleHasTouchedGround)
                                                            {
                                                               addr353:
                                                               param1.§?"2§(this.§^!Z§.MIGHTY_EAGLE_ROTATION_SPEED * param2);
                                                               addr360:
                                                               §§push(-1);
                                                               if(_loc8_ || _loc3_)
                                                               {
                                                                  _loc4_ = §§pop();
                                                                  addr349:
                                                                  §§push(this.§-!E§);
                                                                  if(!_loc9_)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        addr335:
                                                                        this.§-!E§ = false;
                                                                        this.mLevelMain.§-_§();
                                                                        param1.§8X§(§[!J§.§`!r§);
                                                                        addr338:
                                                                        addr328:
                                                                        if(_loc8_ || param2)
                                                                        {
                                                                           this.mSardineCanAdded = false;
                                                                           addr298:
                                                                           if(!_loc9_)
                                                                           {
                                                                              addr259:
                                                                              param1.§2!8§.§<!O§ = true;
                                                                              addr256:
                                                                              if(_loc8_)
                                                                              {
                                                                                 if(_loc8_ || param1)
                                                                                 {
                                                                                    if(_loc8_)
                                                                                    {
                                                                                       if(_loc8_ || param1)
                                                                                       {
                                                                                          if(_loc8_ || param2)
                                                                                          {
                                                                                             if(_loc8_ || param1)
                                                                                             {
                                                                                                §§push(param1.§2!8§);
                                                                                                if(_loc8_ || _loc3_)
                                                                                                {
                                                                                                   §§pop().§!!,§();
                                                                                                   if(_loc8_ || _loc3_)
                                                                                                   {
                                                                                                      if(false)
                                                                                                      {
                                                                                                         §§goto(addr256);
                                                                                                      }
                                                                                                      addr362:
                                                                                                      var _loc6_:int = 0;
                                                                                                      var _loc7_:* = this.§@!Z§;
                                                                                                      addr433:
                                                                                                      §§push(§§hasnext(_loc7_,_loc6_));
                                                                                                      if(_loc8_ || param1)
                                                                                                      {
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            _loc5_ = §§nextvalue(_loc6_,_loc7_);
                                                                                                            §§push(Boolean(_loc5_));
                                                                                                            if(_loc8_)
                                                                                                            {
                                                                                                               if(§§pop())
                                                                                                               {
                                                                                                                  if(!(_loc9_ && this))
                                                                                                                  {
                                                                                                                     §§pop();
                                                                                                                     if(_loc8_ || param2)
                                                                                                                     {
                                                                                                                        §§push(_loc5_.§&!y§());
                                                                                                                        if(_loc8_)
                                                                                                                        {
                                                                                                                           addr400:
                                                                                                                           if(§§pop())
                                                                                                                           {
                                                                                                                              if(_loc8_ || param1)
                                                                                                                              {
                                                                                                                                 addr408:
                                                                                                                                 §§push(_loc5_.getBody());
                                                                                                                                 if(_loc8_ || param1)
                                                                                                                                 {
                                                                                                                                    §§pop().SetAwake(true);
                                                                                                                                    if(_loc8_ || _loc3_)
                                                                                                                                    {
                                                                                                                                       §§push(_loc5_.getBody());
                                                                                                                                    }
                                                                                                                                    §§goto(addr433);
                                                                                                                                 }
                                                                                                                                 §§pop().SetLinearVelocity(new b2Vec2(0,-18));
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr433);
                                                                                                                        }
                                                                                                                        §§goto(addr400);
                                                                                                                     }
                                                                                                                     §§goto(addr408);
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr400);
                                                                                                         }
                                                                                                         if(!(_loc9_ && param1))
                                                                                                         {
                                                                                                            if(_loc8_)
                                                                                                            {
                                                                                                               if(_loc8_ || param2)
                                                                                                               {
                                                                                                                  this.§16§();
                                                                                                                  if(!_loc9_)
                                                                                                                  {
                                                                                                                     addr464:
                                                                                                                     §§push(this.mMightyEagleTimer > 6000);
                                                                                                                     if(_loc8_ || _loc3_)
                                                                                                                     {
                                                                                                                        if(§§pop())
                                                                                                                        {
                                                                                                                           if(_loc8_ || param1)
                                                                                                                           {
                                                                                                                              addr484:
                                                                                                                              §§pop();
                                                                                                                              if(!(_loc9_ && param2))
                                                                                                                              {
                                                                                                                                 §§push(this.isPigsAlive());
                                                                                                                                 if(_loc8_)
                                                                                                                                 {
                                                                                                                                    §§push(Boolean(§§pop()));
                                                                                                                                    if(!(_loc9_ && this))
                                                                                                                                    {
                                                                                                                                       addr504:
                                                                                                                                       if(§§pop())
                                                                                                                                       {
                                                                                                                                          if(!(_loc9_ && this))
                                                                                                                                          {
                                                                                                                                             _loc6_ = 0;
                                                                                                                                             if(_loc8_)
                                                                                                                                             {
                                                                                                                                                _loc7_ = this.§@!Z§;
                                                                                                                                                addr572:
                                                                                                                                                for each(_loc5_ in _loc7_)
                                                                                                                                                {
                                                                                                                                                   §§push(Boolean(_loc5_));
                                                                                                                                                   if(_loc8_ || this)
                                                                                                                                                   {
                                                                                                                                                      if(§§pop())
                                                                                                                                                      {
                                                                                                                                                         if(!_loc9_)
                                                                                                                                                         {
                                                                                                                                                            §§pop();
                                                                                                                                                            if(!_loc9_)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc5_.§&!y§());
                                                                                                                                                               if(_loc8_)
                                                                                                                                                               {
                                                                                                                                                                  addr548:
                                                                                                                                                                  if(§§pop())
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc8_ || _loc3_)
                                                                                                                                                                     {
                                                                                                                                                                        addr556:
                                                                                                                                                                        §§push(_loc5_);
                                                                                                                                                                        §§push(_loc5_.§^!2§);
                                                                                                                                                                        if(_loc8_ || this)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() * 2);
                                                                                                                                                                        }
                                                                                                                                                                        §§pop().applyDamage(§§pop(),true,true,true);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr572);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr548);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr556);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr548);
                                                                                                                                                }
                                                                                                                                                addr575:
                                                                                                                                                if(!(_loc9_ && param1))
                                                                                                                                                {
                                                                                                                                                   param1.§;!&§(param2,new Point(this.§^!Z§.MIGHTY_EAGLE_X_DIRECTION,_loc4_ * this.§^!Z§.MIGHTY_EAGLE_Y_CHANGE),this.§^!Z§.MIGHTY_EAGLE_FLYING_SPEED);
                                                                                                                                                   addr589:
                                                                                                                                                   if(_loc8_)
                                                                                                                                                   {
                                                                                                                                                      if(_loc9_)
                                                                                                                                                      {
                                                                                                                                                         this.§-!E§ = this.mMightyEagleHasTouchedGround;
                                                                                                                                                         addr626:
                                                                                                                                                         §§goto(addr589);
                                                                                                                                                         addr636:
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr626);
                                                                                                                                                   addr583:
                                                                                                                                                   addr627:
                                                                                                                                                }
                                                                                                                                                return false;
                                                                                                                                                addr574:
                                                                                                                                             }
                                                                                                                                             §§goto(addr575);
                                                                                                                                          }
                                                                                                                                          §§goto(addr583);
                                                                                                                                       }
                                                                                                                                       §§goto(addr627);
                                                                                                                                    }
                                                                                                                                    §§goto(addr575);
                                                                                                                                 }
                                                                                                                                 §§goto(addr504);
                                                                                                                              }
                                                                                                                              §§goto(addr626);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr504);
                                                                                                                     }
                                                                                                                     §§goto(addr484);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr636);
                                                                                                            }
                                                                                                            §§goto(addr575);
                                                                                                         }
                                                                                                         §§goto(addr574);
                                                                                                      }
                                                                                                      §§goto(addr572);
                                                                                                   }
                                                                                                   §§goto(addr256);
                                                                                                }
                                                                                                §§goto(addr259);
                                                                                             }
                                                                                             §§goto(addr353);
                                                                                          }
                                                                                          §§goto(addr360);
                                                                                       }
                                                                                       §§goto(addr338);
                                                                                    }
                                                                                    §§goto(addr328);
                                                                                 }
                                                                                 §§goto(addr338);
                                                                              }
                                                                              §§goto(addr298);
                                                                           }
                                                                           §§goto(addr349);
                                                                        }
                                                                        §§goto(addr335);
                                                                     }
                                                                     §§goto(addr464);
                                                                  }
                                                                  §§goto(addr352);
                                                               }
                                                               §§goto(addr362);
                                                            }
                                                            this.mMightyEagleHasTouchedGround = param1.getBody().GetPosition().y >= -5.5;
                                                            §§goto(addr626);
                                                         }
                                                         §§goto(addr335);
                                                      }
                                                      §§push(§§pop() + §§pop());
                                                   }
                                                   §§goto(addr219);
                                                }
                                                §§goto(addr201);
                                             }
                                             §§goto(addr190);
                                          }
                                          §§goto(addr212);
                                       }
                                       §§goto(addr190);
                                    }
                                 }
                                 §§goto(addr219);
                              }
                              §§goto(addr95);
                           }
                        }
                     }
                     §§goto(addr67);
                  }
               }
            }
         }
         §§goto(addr114);
      }
      
      private function §5!f§() : void
      {
         var _loc20_:Boolean = true;
         var _loc21_:Boolean = false;
         var _loc1_:§6!M§ = null;
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc6_:§[!8§ = null;
         var _loc7_:* = 0;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         var _loc12_:* = NaN;
         var _loc13_:* = NaN;
         var _loc14_:* = NaN;
         var _loc15_:* = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:* = NaN;
         loop0:
         while(this.§,"D§.length > 0)
         {
            _loc1_ = this.§,"D§.shift();
            if(_loc20_)
            {
               §§push(_loc1_.§0p§);
               if(!_loc21_)
               {
                  §§push(Number(§§pop()));
                  loop1:
                  while(true)
                  {
                     _loc2_ = §§pop();
                     if(!(_loc21_ && _loc3_))
                     {
                        §§push(_loc1_.x);
                        if(_loc20_)
                        {
                           §§push(Number(§§pop()));
                           if(!(_loc21_ && _loc2_))
                           {
                              _loc3_ = §§pop();
                              if(_loc20_)
                              {
                                 loop2:
                                 while(true)
                                 {
                                    §§push(_loc1_.y);
                                    if(!(_loc20_ || _loc3_))
                                    {
                                       _loc4_ = §§pop();
                                       if(!_loc21_)
                                       {
                                          §§push(_loc1_.damage);
                                          if(!(_loc21_ && _loc3_))
                                          {
                                             §§push(Number(§§pop()));
                                             if(_loc20_)
                                             {
                                                _loc5_ = §§pop();
                                                if(!(_loc21_ && this))
                                                {
                                                   if(false)
                                                   {
                                                      continue;
                                                   }
                                                   §§push(0);
                                                   if(_loc20_ || _loc1_)
                                                   {
                                                      var _loc18_:* = §§pop();
                                                      if(!_loc21_)
                                                      {
                                                         loop22:
                                                         for each(_loc6_ in this.§@!Z§)
                                                         {
                                                            if(!(_loc21_ && _loc3_))
                                                            {
                                                               §§push(_loc1_.§'b§ == null);
                                                               loop23:
                                                               while(true)
                                                               {
                                                                  §§push(!§§pop());
                                                                  loop24:
                                                                  while(true)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§pop();
                                                                           addr630:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc1_.§'b§.indexOf(_loc6_) == -1);
                                                                              if(!_loc21_)
                                                                              {
                                                                                 continue loop23;
                                                                              }
                                                                              addr596:
                                                                              if(!(_loc20_ || _loc1_))
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              if(!(_loc20_ || _loc1_))
                                                                              {
                                                                                 continue loop24;
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        if(!§§pop())
                                                                        {
                                                                           §§push(_loc6_.getBody());
                                                                           loop27:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop().GetPosition());
                                                                              loop28:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop().x);
                                                                                 loop29:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc3_);
                                                                                    loop30:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop() - §§pop());
                                                                                       loop31:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(Number(§§pop()));
                                                                                          loop32:
                                                                                          while(true)
                                                                                          {
                                                                                             _loc8_ = §§pop();
                                                                                             loop33:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc6_.getBody());
                                                                                                while(_loc20_)
                                                                                                {
                                                                                                   §§push(§§pop().GetPosition());
                                                                                                   if(!(_loc20_ || _loc3_))
                                                                                                   {
                                                                                                      continue loop28;
                                                                                                   }
                                                                                                   §§push(§§pop().y);
                                                                                                   if(!(_loc21_ && _loc2_))
                                                                                                   {
                                                                                                      §§push(_loc4_);
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop() - §§pop());
                                                                                                         addr477:
                                                                                                         if(!(_loc20_ || this))
                                                                                                         {
                                                                                                            continue;
                                                                                                         }
                                                                                                         §§push(§§pop() * §§pop());
                                                                                                         loop56:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(Number(§§pop()));
                                                                                                            loop57:
                                                                                                            while(_loc20_ || _loc2_)
                                                                                                            {
                                                                                                               _loc12_ = §§pop();
                                                                                                               loop58:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(_loc11_);
                                                                                                                  if(_loc20_)
                                                                                                                  {
                                                                                                                     §§push(_loc9_);
                                                                                                                     loop59:
                                                                                                                     for(; !(_loc21_ && _loc2_); if(!(_loc20_ || _loc2_))
                                                                                                                     {
                                                                                                                        continue;
                                                                                                                     },if(_loc20_)
                                                                                                                     {
                                                                                                                        if(!_loc21_)
                                                                                                                        {
                                                                                                                           if(!(_loc20_ || _loc3_))
                                                                                                                           {
                                                                                                                              continue loop30;
                                                                                                                           }
                                                                                                                           §§push(§§pop() / §§pop());
                                                                                                                           if(!_loc21_)
                                                                                                                           {
                                                                                                                              §§goto(addr277);
                                                                                                                           }
                                                                                                                           §§goto(addr278);
                                                                                                                        }
                                                                                                                        §§goto(addr519);
                                                                                                                     },§§goto(addr529))
                                                                                                                     {
                                                                                                                        §§push(_loc10_);
                                                                                                                        if(!_loc21_)
                                                                                                                        {
                                                                                                                           §§push(§§pop() / §§pop());
                                                                                                                           loop60:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                              loop61:
                                                                                                                              while(_loc20_)
                                                                                                                              {
                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                 loop62:
                                                                                                                                 while(_loc20_ || this)
                                                                                                                                 {
                                                                                                                                    _loc13_ = §§pop();
                                                                                                                                    continue loop58;
                                                                                                                                    addr209:
                                                                                                                                    if(!(_loc20_ || _loc2_))
                                                                                                                                    {
                                                                                                                                       continue;
                                                                                                                                    }
                                                                                                                                    if(_loc20_ || _loc3_)
                                                                                                                                    {
                                                                                                                                       §§push(1);
                                                                                                                                       if(!_loc21_)
                                                                                                                                       {
                                                                                                                                          if(!(_loc21_ && _loc3_))
                                                                                                                                          {
                                                                                                                                             if(§§pop() > §§pop())
                                                                                                                                             {
                                                                                                                                                loop71:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc14_);
                                                                                                                                                   if(!_loc21_)
                                                                                                                                                   {
                                                                                                                                                      if(!_loc21_)
                                                                                                                                                      {
                                                                                                                                                         if(!(_loc21_ && _loc3_))
                                                                                                                                                         {
                                                                                                                                                            addr246:
                                                                                                                                                            §§push(_loc10_);
                                                                                                                                                            if(!(_loc21_ && _loc1_))
                                                                                                                                                            {
                                                                                                                                                               if(_loc20_)
                                                                                                                                                               {
                                                                                                                                                                  continue loop59;
                                                                                                                                                               }
                                                                                                                                                               continue loop60;
                                                                                                                                                            }
                                                                                                                                                            loop66:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(§§pop() > §§pop())
                                                                                                                                                               {
                                                                                                                                                                  continue loop22;
                                                                                                                                                               }
                                                                                                                                                               loop67:
                                                                                                                                                               while(_loc20_)
                                                                                                                                                               {
                                                                                                                                                                  if(!(_loc21_ && _loc3_))
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc5_);
                                                                                                                                                                     if(!(_loc21_ && _loc1_))
                                                                                                                                                                     {
                                                                                                                                                                        continue loop56;
                                                                                                                                                                     }
                                                                                                                                                                     addr358:
                                                                                                                                                                     addr358:
                                                                                                                                                                     while(!(_loc21_ && _loc1_))
                                                                                                                                                                     {
                                                                                                                                                                        _loc14_ = §§pop();
                                                                                                                                                                        loop69:
                                                                                                                                                                        while(!_loc21_)
                                                                                                                                                                        {
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc10_);
                                                                                                                                                                              if(!_loc21_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr209);
                                                                                                                                                                              }
                                                                                                                                                                              else
                                                                                                                                                                              {
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                                                                    addr278:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!(_loc20_ || _loc2_))
                                                                                                                                                                                       {
                                                                                                                                                                                          break loop71;
                                                                                                                                                                                       }
                                                                                                                                                                                       _loc14_ = §§pop();
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!(_loc21_ && this))
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!_loc21_)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc21_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr297:
                                                                                                                                                                                                   break;
                                                                                                                                                                                                }
                                                                                                                                                                                                if(_loc20_ || _loc3_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue;
                                                                                                                                                                                                }
                                                                                                                                                                                                continue loop58;
                                                                                                                                                                                             }
                                                                                                                                                                                             continue loop67;
                                                                                                                                                                                          }
                                                                                                                                                                                          continue loop69;
                                                                                                                                                                                       }
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr305:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc10_);
                                                                                                                                                                                             if(!(_loc20_ || this))
                                                                                                                                                                                             {
                                                                                                                                                                                                continue loop56;
                                                                                                                                                                                             }
                                                                                                                                                                                             if(_loc21_)
                                                                                                                                                                                             {
                                                                                                                                                                                                continue loop57;
                                                                                                                                                                                             }
                                                                                                                                                                                             if(_loc20_ || _loc3_)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc21_ && _loc2_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   break;
                                                                                                                                                                                                }
                                                                                                                                                                                                §§push(_loc1_.§7!m§);
                                                                                                                                                                                                continue loop66;
                                                                                                                                                                                             }
                                                                                                                                                                                             addr576:
                                                                                                                                                                                             addr549:
                                                                                                                                                                                             addr549:
                                                                                                                                                                                             while(!_loc21_)
                                                                                                                                                                                             {
                                                                                                                                                                                                _loc11_ = §§pop();
                                                                                                                                                                                                break loop67;
                                                                                                                                                                                             }
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                                                                                addr577:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   _loc9_ = §§pop();
                                                                                                                                                                                                   break loop69;
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          continue loop31;
                                                                                                                                                                                       }
                                                                                                                                                                                       continue loop69;
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 addr277:
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           continue loop62;
                                                                                                                                                                        }
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(Number(Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_)));
                                                                                                                                                                           addr518:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop());
                                                                                                                                                                              addr519:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 _loc10_ = §§pop();
                                                                                                                                                                                 if(_loc20_ || this)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc1_.§0p§);
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(§§pop() <= §§pop())
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!(_loc21_ && this))
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc21_)
                                                                                                                                                                                             {
                                                                                                                                                                                                continue loop33;
                                                                                                                                                                                             }
                                                                                                                                                                                             if(_loc21_ && _loc1_)
                                                                                                                                                                                             {
                                                                                                                                                                                                break;
                                                                                                                                                                                             }
                                                                                                                                                                                             §§push(_loc1_.push);
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§goto(addr549);
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          break loop67;
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr305);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr630);
                                                                                                                                                                                    addr529:
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr548);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     loop52:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc20_ || this)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc20_)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc21_ && _loc3_)
                                                                                                                                                                              {
                                                                                                                                                                                 break;
                                                                                                                                                                              }
                                                                                                                                                                              §§push(0);
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 if(§§pop() > §§pop())
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc20_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc11_);
                                                                                                                                                                                       if(!(_loc21_ && _loc3_))
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc8_);
                                                                                                                                                                                          if(_loc20_ || this)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc10_);
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop() / §§pop());
                                                                                                                                                                                                break loop59;
                                                                                                                                                                                             }
                                                                                                                                                                                             addr474:
                                                                                                                                                                                          }
                                                                                                                                                                                          break loop59;
                                                                                                                                                                                       }
                                                                                                                                                                                       continue loop56;
                                                                                                                                                                                    }
                                                                                                                                                                                    continue loop58;
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr305);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr518);
                                                                                                                                                                        }
                                                                                                                                                                        addr497:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(1);
                                                                                                                                                                           addr498:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              if(§§pop() > §§pop())
                                                                                                                                                                              {
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc11_);
                                                                                                                                                                                    break loop61;
                                                                                                                                                                                 }
                                                                                                                                                                                 addr499:
                                                                                                                                                                              }
                                                                                                                                                                              addr425:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 continue loop52;
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           continue loop52;
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     addr358:
                                                                                                                                                                     continue loop29;
                                                                                                                                                                  }
                                                                                                                                                                  addr612:
                                                                                                                                                                  continue loop22;
                                                                                                                                                               }
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr497);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(!_loc21_)
                                                                                                                                                            {
                                                                                                                                                               §§push(Number(§§pop()));
                                                                                                                                                               break loop62;
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr548);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr549);
                                                                                                                                                         addr502:
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr358);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr278);
                                                                                                                                                   if(!(_loc20_ || _loc2_))
                                                                                                                                                   {
                                                                                                                                                      continue;
                                                                                                                                                   }
                                                                                                                                                   if(_loc20_)
                                                                                                                                                   {
                                                                                                                                                      if(!(_loc21_ && _loc2_))
                                                                                                                                                      {
                                                                                                                                                         if(true)
                                                                                                                                                         {
                                                                                                                                                            continue loop22;
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr205);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr499);
                                                                                                                                                   }
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr425);
                                                                                                                                                   }
                                                                                                                                                   addr506:
                                                                                                                                                }
                                                                                                                                                continue loop61;
                                                                                                                                             }
                                                                                                                                             §§goto(addr175);
                                                                                                                                          }
                                                                                                                                          §§goto(addr498);
                                                                                                                                       }
                                                                                                                                       §§goto(addr454);
                                                                                                                                    }
                                                                                                                                    §§goto(addr577);
                                                                                                                                 }
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    _loc11_ = §§pop();
                                                                                                                                    §§goto(addr506);
                                                                                                                                    §§goto(addr409);
                                                                                                                                 }
                                                                                                                                 addr409:
                                                                                                                              }
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(_loc10_);
                                                                                                                                 addr501:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§goto(addr502);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr474);
                                                                                                                     }
                                                                                                                     while(_loc20_)
                                                                                                                     {
                                                                                                                        §§goto(addr477);
                                                                                                                     }
                                                                                                                     §§goto(addr501);
                                                                                                                  }
                                                                                                                  §§goto(addr409);
                                                                                                               }
                                                                                                            }
                                                                                                            continue loop32;
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr576);
                                                                                                   §§push(_loc6_.getBody());
                                                                                                   if(_loc21_ && _loc3_)
                                                                                                   {
                                                                                                      continue;
                                                                                                   }
                                                                                                   §§pop().ApplyImpulse(new b2Vec2(_loc12_,_loc13_),new b2Vec2(_loc3_,_loc4_));
                                                                                                   §§goto(addr388);
                                                                                                }
                                                                                                continue loop27;
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr612);
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr630);
                                                         }
                                                      }
                                                      if(!_loc21_)
                                                      {
                                                         §§push(this.mLevelMain);
                                                         loop80:
                                                         while(true)
                                                         {
                                                            §§push(§§pop().particles);
                                                            loop81:
                                                            while(true)
                                                            {
                                                               §§push(this.getMainExplosionCoreName(_loc1_.type));
                                                               loop82:
                                                               while(true)
                                                               {
                                                                  §§push(§6!O§.PARTICLE_GROUP_GAME_EFFECTS);
                                                                  loop83:
                                                                  while(true)
                                                                  {
                                                                     §§push(§0i§.§2L§);
                                                                     loop84:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc3_);
                                                                        loop85:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc4_);
                                                                           loop86:
                                                                           while(true)
                                                                           {
                                                                              §§pop().§"!J§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),600,"",§0i§.§%r§,0,0,0,0,1,20,true);
                                                                              loop17:
                                                                              while(true)
                                                                              {
                                                                                 §§push(30);
                                                                                 if(_loc20_)
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       _loc7_ = §§pop();
                                                                                       break loop2;
                                                                                    }
                                                                                    addr866:
                                                                                 }
                                                                                 loop7:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(150);
                                                                                    addr906:
                                                                                    addr826:
                                                                                    addr793:
                                                                                    addr794:
                                                                                    while(true)
                                                                                    {
                                                                                       if(§§pop() >= §§pop())
                                                                                       {
                                                                                          continue loop0;
                                                                                       }
                                                                                       §§push(0.75);
                                                                                       if(_loc20_ || this)
                                                                                       {
                                                                                          §§push(_loc2_);
                                                                                          if(_loc20_ || _loc3_)
                                                                                          {
                                                                                             addr860:
                                                                                             §§push(§§pop() * §§pop());
                                                                                             if(_loc20_ || this)
                                                                                             {
                                                                                                §§push(Math.random() * _loc2_);
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                _loc15_ = §§pop();
                                                                                                break loop1;
                                                                                             }
                                                                                             addr860:
                                                                                          }
                                                                                          addr859:
                                                                                          §§push(§§pop() + §§pop());
                                                                                          while(true)
                                                                                          {
                                                                                             §§goto(addr860);
                                                                                          }
                                                                                          addr859:
                                                                                       }
                                                                                       §§goto(addr860);
                                                                                    }
                                                                                    loop12:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc7_);
                                                                                       if(_loc21_ && _loc1_)
                                                                                       {
                                                                                          continue loop7;
                                                                                       }
                                                                                       if(_loc20_ || _loc1_)
                                                                                       {
                                                                                          §§push(180);
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop() / Math.PI);
                                                                                             if(_loc20_ || _loc2_)
                                                                                             {
                                                                                                break loop12;
                                                                                             }
                                                                                             addr814:
                                                                                             loop13:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop() + §§pop());
                                                                                                addr815:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(Number(§§pop()));
                                                                                                   addr816:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc20_ || _loc2_)
                                                                                                      {
                                                                                                         if(_loc20_)
                                                                                                         {
                                                                                                            break loop13;
                                                                                                         }
                                                                                                         §§goto(addr859);
                                                                                                      }
                                                                                                      §§goto(addr860);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             continue loop12;
                                                                                          }
                                                                                          addr783:
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §§goto(addr814);
                                                                                       }
                                                                                    }
                                                                                    §§push(§§pop() / §§pop());
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(Number(§§pop()));
                                                                                       loop11:
                                                                                       while(true)
                                                                                       {
                                                                                          _loc17_ = §§pop();
                                                                                          if(_loc20_ || _loc3_)
                                                                                          {
                                                                                             if(_loc20_)
                                                                                             {
                                                                                                if(!_loc20_)
                                                                                                {
                                                                                                   break loop2;
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   loop4:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(this.mLevelMain);
                                                                                                      if(!_loc21_)
                                                                                                      {
                                                                                                         §§push(§§pop().particles);
                                                                                                         if(!(_loc21_ && _loc2_))
                                                                                                         {
                                                                                                            §§push(§0i§.§<!F§);
                                                                                                            if(_loc20_)
                                                                                                            {
                                                                                                               §§push(§6!O§.PARTICLE_GROUP_GAME_EFFECTS);
                                                                                                               if(!(_loc21_ && this))
                                                                                                               {
                                                                                                                  §§push(§0i§.PARTICLE_TYPE_KINETIC_PARTICLE);
                                                                                                                  if(!(_loc21_ && _loc3_))
                                                                                                                  {
                                                                                                                     §§push(_loc3_);
                                                                                                                     if(!_loc21_)
                                                                                                                     {
                                                                                                                        §§push(_loc4_);
                                                                                                                        if(!(_loc21_ && _loc1_))
                                                                                                                        {
                                                                                                                           §§push(_loc16_);
                                                                                                                           §§push("");
                                                                                                                           §§push(§0i§.§%r§);
                                                                                                                           §§push(_loc15_);
                                                                                                                           if(_loc20_)
                                                                                                                           {
                                                                                                                              §§push(§§pop() * Math.cos(_loc17_));
                                                                                                                           }
                                                                                                                           §§push(_loc15_);
                                                                                                                           if(_loc20_ || _loc2_)
                                                                                                                           {
                                                                                                                              §§push(-§§pop());
                                                                                                                              if(!(_loc21_ && _loc2_))
                                                                                                                              {
                                                                                                                                 §§push(§§pop() * Math.sin(_loc17_));
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§pop().§"!J§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),20,0);
                                                                                                                           loop5:
                                                                                                                           while(!(_loc21_ && _loc1_))
                                                                                                                           {
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(_loc7_);
                                                                                                                                 if(_loc21_)
                                                                                                                                 {
                                                                                                                                    continue loop7;
                                                                                                                                 }
                                                                                                                                 §§push(5);
                                                                                                                                 if(!(_loc21_ && _loc1_))
                                                                                                                                 {
                                                                                                                                    if(!_loc21_)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                       if(_loc21_)
                                                                                                                                       {
                                                                                                                                          continue loop11;
                                                                                                                                       }
                                                                                                                                       if(_loc21_)
                                                                                                                                       {
                                                                                                                                          continue loop11;
                                                                                                                                       }
                                                                                                                                       if(_loc20_)
                                                                                                                                       {
                                                                                                                                          if(_loc20_)
                                                                                                                                          {
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(int(§§pop()));
                                                                                                                                                if(_loc21_)
                                                                                                                                                {
                                                                                                                                                   continue loop7;
                                                                                                                                                }
                                                                                                                                                _loc7_ = §§pop();
                                                                                                                                                if(!_loc20_)
                                                                                                                                                {
                                                                                                                                                   continue loop0;
                                                                                                                                                }
                                                                                                                                                if(_loc21_)
                                                                                                                                                {
                                                                                                                                                   continue loop5;
                                                                                                                                                }
                                                                                                                                                if(!(_loc20_ || this))
                                                                                                                                                {
                                                                                                                                                   continue loop17;
                                                                                                                                                }
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(false)
                                                                                                                                                   {
                                                                                                                                                      continue loop4;
                                                                                                                                                   }
                                                                                                                                                   addr904:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      continue loop7;
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             addr661:
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             §§goto(addr815);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr816);
                                                                                                                                    }
                                                                                                                                    §§goto(addr783);
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    §§goto(addr906);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           break loop1;
                                                                                                                        }
                                                                                                                        continue loop86;
                                                                                                                     }
                                                                                                                     continue loop85;
                                                                                                                  }
                                                                                                                  continue loop84;
                                                                                                               }
                                                                                                               continue loop83;
                                                                                                            }
                                                                                                            continue loop82;
                                                                                                         }
                                                                                                         continue loop81;
                                                                                                      }
                                                                                                      continue loop80;
                                                                                                   }
                                                                                                   continue loop81;
                                                                                                }
                                                                                             }
                                                                                             break;
                                                                                          }
                                                                                          continue loop0;
                                                                                       }
                                                                                       §§goto(addr826);
                                                                                       §§goto(addr793);
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr676);
                                                   }
                                                   §§goto(addr866);
                                                }
                                                §§goto(addr807);
                                             }
                                             §§goto(addr815);
                                          }
                                          §§goto(addr860);
                                       }
                                    }
                                    else
                                    {
                                       addr110:
                                    }
                                    continue loop1;
                                 }
                                 while(true)
                                 {
                                    §§goto(addr904);
                                 }
                              }
                              §§goto(addr765);
                           }
                           §§goto(addr794);
                        }
                        §§goto(addr661);
                     }
                     break;
                  }
                  while(true)
                  {
                     §§goto(addr810);
                  }
                  addr861:
               }
               §§goto(addr825);
            }
            §§goto(addr861);
         }
      }
      
      protected function applyExplosionDamage(param1:§[!8§, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc3_)
         {
            param1.applyDamage(param2,false,false,false,true);
         }
      }
      
      protected function getMainExplosionCoreName(param1:int) : String
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(param1);
         if(!_loc4_)
         {
         }
         switch(§§pop())
         {
         }
         return §0i§.§^,§;
      }
      
      public function §,8§(param1:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:§[!8§ = null;
         var _loc3_:* = int(this.§@!Z§.length - 1);
         loop0:
         while(_loc3_ >= 0)
         {
            _loc2_ = this.§@!Z§[_loc3_];
            if(!_loc5_)
            {
               §§push(_loc2_.§#b§());
               loop1:
               while(true)
               {
                  if(!§§pop())
                  {
                     §§push(_loc2_.§8!1§());
                     loop2:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           §§push(this.§-"7§(_loc2_));
                           loop3:
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 §§push(_loc2_.isReadyToBeRemoved(param1));
                                 while(!§§pop())
                                 {
                                    §§push(_loc2_.§!!n§());
                                    if(!_loc5_)
                                    {
                                       if(!(_loc5_ && this))
                                       {
                                          if(!_loc4_)
                                          {
                                             break loop3;
                                          }
                                          §§push(Boolean(§§pop()));
                                          continue loop2;
                                       }
                                       continue;
                                       continue;
                                    }
                                    continue loop2;
                                 }
                                 loop21:
                                 while(true)
                                 {
                                    _loc2_.§8X§(§[!J§.§2!M§);
                                    loop18:
                                    while(true)
                                    {
                                       this.§8v§(_loc3_,false,true,true);
                                       loop12:
                                       while(true)
                                       {
                                          if(_loc5_ && _loc2_)
                                          {
                                             continue loop21;
                                          }
                                          if(_loc4_ || _loc2_)
                                          {
                                             loop17:
                                             while(true)
                                             {
                                                §§push(_loc3_);
                                                if(_loc4_ || _loc2_)
                                                {
                                                   §§push(§§pop() - 1);
                                                }
                                                _loc3_ = §§pop();
                                                if(!(_loc5_ && _loc2_))
                                                {
                                                   addr54:
                                                   if(_loc4_ || param1)
                                                   {
                                                      if(!_loc4_)
                                                      {
                                                         continue loop18;
                                                      }
                                                      if(_loc5_ && _loc3_)
                                                      {
                                                         loop19:
                                                         while(true)
                                                         {
                                                            if(!_loc5_)
                                                            {
                                                               if(!_loc5_)
                                                               {
                                                                  break;
                                                               }
                                                               addr216:
                                                               while(true)
                                                               {
                                                                  if(_loc4_)
                                                                  {
                                                                     _loc2_.§8X§(§[!J§.§2!M§);
                                                                  }
                                                                  else
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§#!6§(_loc2_,param1));
                                                                        addr253:
                                                                        while(true)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              §§goto(addr254);
                                                                           }
                                                                           addr225:
                                                                           while(true)
                                                                           {
                                                                              continue loop17;
                                                                           }
                                                                        }
                                                                     }
                                                                     addr249:
                                                                  }
                                                               }
                                                            }
                                                            while(true)
                                                            {
                                                               if(!_loc5_)
                                                               {
                                                                  continue loop19;
                                                               }
                                                               addr241:
                                                               while(true)
                                                               {
                                                                  this.§1a§(_loc2_,param1);
                                                                  addr245:
                                                                  while(true)
                                                                  {
                                                                     continue loop17;
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         continue;
                                                      }
                                                      if(!(_loc5_ && _loc2_))
                                                      {
                                                         if(false)
                                                         {
                                                            loop8:
                                                            while(true)
                                                            {
                                                               §§push(_loc2_.shouldUpdate());
                                                               if(_loc4_)
                                                               {
                                                                  §§push(Boolean(§§pop()));
                                                               }
                                                               if(_loc5_ && this)
                                                               {
                                                                  break;
                                                               }
                                                               if(!_loc4_)
                                                               {
                                                                  continue loop2;
                                                               }
                                                               while(true)
                                                               {
                                                                  if(!§§pop())
                                                                  {
                                                                     continue loop17;
                                                                  }
                                                                  while(!(_loc5_ && _loc2_))
                                                                  {
                                                                     if(!_loc5_)
                                                                     {
                                                                        _loc2_.update(param1);
                                                                        while(true)
                                                                        {
                                                                           if(!_loc4_)
                                                                           {
                                                                              continue loop12;
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              continue loop17;
                                                                           }
                                                                           continue loop17;
                                                                        }
                                                                        addr108:
                                                                     }
                                                                     else
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           this.§8v§(_loc3_,false,false,false);
                                                                        }
                                                                        addr254:
                                                                     }
                                                                     §§goto(addr54);
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     continue loop8;
                                                                     §§goto(addr96);
                                                                  }
                                                                  addr96:
                                                               }
                                                            }
                                                            continue loop3;
                                                            addr79:
                                                         }
                                                         continue loop0;
                                                      }
                                                      while(true)
                                                      {
                                                      }
                                                      §§goto(addr225);
                                                   }
                                                   §§goto(addr96);
                                                }
                                                §§goto(addr108);
                                             }
                                          }
                                          §§goto(addr245);
                                       }
                                    }
                                 }
                              }
                              §§goto(addr216);
                           }
                           continue loop1;
                        }
                        §§goto(addr241);
                     }
                  }
                  §§goto(addr249);
               }
            }
            §§goto(addr110);
         }
         if(!_loc5_)
         {
            this.§5!f§();
         }
      }
      
      private function §16§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§?5§ = null;
         for each(_loc1_ in this.§>F§)
         {
            if(_loc5_)
            {
               if(_loc1_.type == §?!F§.§8!B§)
               {
                  continue;
               }
               if(!(_loc5_ || _loc1_))
               {
                  continue;
               }
            }
            this.mLevelMain.mLevelEngine.mWorld.§0§(_loc1_.§"s§);
         }
      }
      
      public function §`"K§() : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§[!8§ = null;
         var _loc1_:int = 0;
         while(true)
         {
            if(_loc1_ >= this.§@!Z§.length)
            {
               return false;
            }
            _loc2_ = this.§@!Z§[_loc1_];
            if(!(_loc4_ && _loc2_))
            {
               §§push(_loc2_.explode());
               if(!_loc3_)
               {
                  break;
               }
               if(§§pop())
               {
                  if(_loc3_)
                  {
                     §§push(true);
                     break;
                  }
               }
               _loc1_++;
            }
         }
         return §§pop();
      }
      
      public function §-"7§(param1:§[!8§) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            §§push(Boolean(param1));
            while(true)
            {
               §§push(§§pop());
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        loop3:
                        while(true)
                        {
                           §§push(param1.§^!f§.§`!§() == §@!M§.§?K§);
                           if(_loc2_ || _loc3_)
                           {
                              §§push(!§§pop());
                              if(!_loc3_)
                              {
                                 addr111:
                                 if(!(_loc2_ || this))
                                 {
                                    break;
                                 }
                                 §§push(Boolean(§§pop()));
                                 if(!_loc3_)
                                 {
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       if(_loc3_ && _loc3_)
                                       {
                                          break;
                                       }
                                       if(§§pop())
                                       {
                                          while(true)
                                          {
                                             §§pop();
                                             §§goto(addr133);
                                          }
                                          addr132:
                                       }
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             if(!_loc3_)
                                             {
                                                if(!_loc2_)
                                                {
                                                   continue loop3;
                                                }
                                                §§push(true);
                                             }
                                             else if(!(_loc3_ && param1))
                                             {
                                                addr24:
                                                §§push(false);
                                                if(_loc2_)
                                                {
                                                   return §§pop();
                                                }
                                                addr83:
                                             }
                                             else
                                             {
                                                addr133:
                                                §§goto(addr75);
                                             }
                                             addr75:
                                             while(true)
                                             {
                                                §§push(this.mLevelMain.§-!z§.§#D§(param1.getBody().GetPosition().x,param1.getBody().GetPosition().y));
                                                if(!_loc3_)
                                                {
                                                   §§push(Boolean(§§pop()));
                                                   if(!_loc2_)
                                                   {
                                                      break;
                                                   }
                                                }
                                                continue loop4;
                                             }
                                             return §§pop();
                                          }
                                          §§goto(addr24);
                                       }
                                    }
                                    continue loop1;
                                    addr122:
                                 }
                              }
                              §§goto(addr132);
                           }
                           §§goto(addr111);
                        }
                     }
                  }
                  §§goto(addr122);
               }
            }
         }
         §§goto(addr83);
      }
      
      public function §8v§(param1:int, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc6_:§?5§ = null;
         var _loc7_:§@!2§ = null;
         if(!(_loc13_ && this))
         {
            if(param1 < 0)
            {
               if(_loc12_ || param1)
               {
                  return;
               }
            }
         }
         var _loc5_:§[!8§;
         §§push((_loc5_ = this.§@!Z§[param1]).§&!y§());
         if(_loc12_)
         {
            if(§§pop())
            {
               if(_loc12_ || param2)
               {
                  var _loc8_:*;
                  §§push((_loc8_ = this).§9!^§);
                  if(_loc12_ || param1)
                  {
                     §§push(§§pop() + 1);
                  }
                  var _loc9_:* = §§pop();
                  if(_loc12_)
                  {
                     _loc8_.§9!^§ = _loc9_;
                  }
                  if(!(_loc12_ || param2))
                  {
                     addr125:
                  }
                  addr331:
                  if(_loc5_ == this.mLevelMain.activeObject)
                  {
                     while(true)
                     {
                        §§push(this.mLevelMain);
                        addr338:
                        while(true)
                        {
                           §§pop().activeObject = null;
                           addr340:
                           while(true)
                           {
                           }
                        }
                     }
                     addr336:
                  }
                  while(true)
                  {
                     §§push(param2);
                     loop5:
                     while(true)
                     {
                        §§push(Boolean(§§pop()));
                        if(_loc12_ || param3)
                        {
                           if(§§pop())
                           {
                              loop10:
                              while(true)
                              {
                                 §§pop();
                                 loop3:
                                 while(true)
                                 {
                                    §§push(_loc5_.§^!f§.score);
                                    if(!(_loc13_ && this))
                                    {
                                       §§push(§§pop() > 0);
                                       loop4:
                                       while(true)
                                       {
                                          addr269:
                                          while(§§pop())
                                          {
                                             if(!_loc13_)
                                             {
                                                §§push(this.mLevelMain);
                                                if(_loc12_ || param3)
                                                {
                                                   §§push(_loc5_.§^!f§.score);
                                                   §§push(§;P§.§6=§);
                                                   §§push(true);
                                                   §§push(_loc5_.getBody().GetPosition().x);
                                                   §§push(_loc5_.getBody().GetPosition().y);
                                                   if(!(_loc13_ && param2))
                                                   {
                                                      addr316:
                                                      §§push(3);
                                                      if(_loc12_ || this)
                                                      {
                                                         addr311:
                                                         §§push(§§pop() - §§pop());
                                                         §§push(§0i§.§7R§(_loc5_.§@x§));
                                                      }
                                                      §§pop().addScore(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
                                                      while(true)
                                                      {
                                                         break loop4;
                                                      }
                                                      addr316:
                                                   }
                                                   §§goto(addr311);
                                                }
                                                §§goto(addr338);
                                             }
                                             §§goto(addr316);
                                          }
                                          break;
                                       }
                                       while(true)
                                       {
                                          §§push(param3);
                                          loop2:
                                          while(true)
                                          {
                                             if(!(_loc12_ || param1))
                                             {
                                                continue loop5;
                                             }
                                             if(§§pop())
                                             {
                                                if(_loc12_ || param1)
                                                {
                                                   if(!_loc12_)
                                                   {
                                                      continue loop3;
                                                   }
                                                   this.addDestructionParticles(_loc5_,this.mLevelMain.particles);
                                                }
                                                while(true)
                                                {
                                                }
                                                addr244:
                                             }
                                             while(true)
                                             {
                                                §§push(param4);
                                                loop6:
                                                while(true)
                                                {
                                                   if(_loc12_)
                                                   {
                                                      if(_loc13_ && param2)
                                                      {
                                                         continue loop10;
                                                      }
                                                      if(§§pop())
                                                      {
                                                         addr211:
                                                         if(_loc12_)
                                                         {
                                                            if(_loc12_)
                                                            {
                                                               this.§5"K§(_loc5_);
                                                            }
                                                            §§goto(addr340);
                                                         }
                                                         while(true)
                                                         {
                                                            if(_loc12_ || param3)
                                                            {
                                                               break loop6;
                                                            }
                                                            §§goto(addr316);
                                                         }
                                                         addr211:
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(_loc5_.isTexture());
                                                         if(!_loc12_)
                                                         {
                                                            continue loop6;
                                                         }
                                                         if(_loc13_ && param2)
                                                         {
                                                            continue loop2;
                                                         }
                                                         while(true)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               while(true)
                                                               {
                                                                  if(_loc13_ && param3)
                                                                  {
                                                                     §§goto(addr244);
                                                                  }
                                                               }
                                                               addr173:
                                                            }
                                                            while(true)
                                                            {
                                                               this.removeChildFromMainSprite(_loc5_.sprite);
                                                               addr184:
                                                               addr148:
                                                               while(_loc13_ && param1)
                                                               {
                                                                  §§goto(addr211);
                                                               }
                                                               addr146:
                                                               loop13:
                                                               while(true)
                                                               {
                                                                  this.§3!u§(_loc5_);
                                                                  while(!(_loc13_ && param3))
                                                                  {
                                                                     this.§6?§(_loc5_);
                                                                     if(_loc13_)
                                                                     {
                                                                        continue;
                                                                     }
                                                                     if(!(_loc13_ && this))
                                                                     {
                                                                        addr139:
                                                                        if(_loc12_ || param2)
                                                                        {
                                                                           break loop13;
                                                                        }
                                                                        §§goto(addr336);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr184);
                                                                     }
                                                                  }
                                                                  §§goto(addr173);
                                                               }
                                                               while(true)
                                                               {
                                                                  if(true)
                                                                  {
                                                                     break loop3;
                                                                  }
                                                                  §§goto(addr148);
                                                                  §§goto(addr139);
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr269);
                                                   }
                                                   §§goto(addr316);
                                                }
                                                addr218:
                                                while(true)
                                                {
                                                   §§goto(addr160);
                                                   §§goto(addr211);
                                                }
                                             }
                                          }
                                       }
                                       addr268:
                                    }
                                    break;
                                 }
                                 _loc8_ = §§pop();
                                 _loc9_ = this.§>F§;
                                 addr404:
                                 §§push(§§hasnext(_loc9_,_loc8_));
                                 if(_loc12_)
                                 {
                                    if(§§pop())
                                    {
                                       _loc6_ = §§nextvalue(_loc8_,_loc9_);
                                       if(_loc6_.index1 >= param1)
                                       {
                                          if(!(_loc13_ && param2))
                                          {
                                             var _loc10_:*;
                                             var _loc11_:* = (_loc10_ = _loc6_).index1 - 1;
                                             if(_loc12_)
                                             {
                                                _loc10_.index1 = _loc11_;
                                             }
                                             if(_loc12_ || param2)
                                             {
                                                addr385:
                                                if(_loc6_.index2 >= param1)
                                                {
                                                   if(_loc12_)
                                                   {
                                                      _loc11_ = (_loc10_ = _loc6_).index2 - 1;
                                                      if(_loc12_)
                                                      {
                                                         _loc10_.index2 = _loc11_;
                                                      }
                                                   }
                                                }
                                             }
                                             §§goto(addr404);
                                          }
                                       }
                                       §§goto(addr385);
                                    }
                                    if(_loc12_)
                                    {
                                       if(_loc12_ || param3)
                                       {
                                          if(_loc12_)
                                          {
                                             _loc8_ = 0;
                                             if(_loc12_ || param1)
                                             {
                                                _loc9_ = this.§9"4§;
                                                addr487:
                                                for each(_loc7_ in _loc9_)
                                                {
                                                   §§push(_loc7_.§!§);
                                                   if(_loc12_)
                                                   {
                                                      §§push(param1);
                                                      if(_loc12_ || this)
                                                      {
                                                         if(§§pop() == §§pop())
                                                         {
                                                            if(_loc12_)
                                                            {
                                                               _loc7_.§2B§ = true;
                                                               if(!_loc13_)
                                                               {
                                                                  addr461:
                                                                  if(_loc7_.§!§ >= param1)
                                                                  {
                                                                     if(_loc12_ || param3)
                                                                     {
                                                                        addr472:
                                                                        §§push((_loc10_ = _loc7_).§!§);
                                                                        if(_loc12_)
                                                                        {
                                                                           §§push(§§pop() - 1);
                                                                        }
                                                                        _loc11_ = §§pop();
                                                                        if(!_loc13_)
                                                                        {
                                                                           _loc10_.§!§ = _loc11_;
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr487);
                                                            }
                                                            §§goto(addr472);
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr461);
                                                }
                                                addr490:
                                                if(!(_loc13_ && param3))
                                                {
                                                   _loc5_.dispose();
                                                   addr498:
                                                }
                                                _loc5_ = null;
                                                if(_loc12_ || this)
                                                {
                                                   this.§@!Z§[param1] = null;
                                                   this.§@!Z§.splice(param1,1);
                                                   addr539:
                                                   if(_loc13_)
                                                   {
                                                      §§goto(addr539);
                                                   }
                                                }
                                                return;
                                                addr489:
                                             }
                                             §§goto(addr490);
                                          }
                                          §§goto(addr498);
                                       }
                                       §§goto(addr490);
                                    }
                                    §§goto(addr489);
                                 }
                                 §§goto(addr487);
                              }
                              addr329:
                           }
                           §§goto(addr268);
                        }
                        §§goto(addr329);
                     }
                  }
               }
               §§goto(addr340);
            }
            else
            {
               §§push(_loc5_.§!!n§());
               if(_loc12_)
               {
                  if(§§pop())
                  {
                     if(_loc12_)
                     {
                        §§push((_loc8_ = this).§@"0§);
                        if(_loc12_ || param3)
                        {
                           §§push(§§pop() - 1);
                        }
                        _loc9_ = §§pop();
                        if(_loc12_ || param3)
                        {
                           _loc8_.§@"0§ = _loc9_;
                        }
                        if(_loc12_ || param2)
                        {
                           §§goto(addr125);
                        }
                        §§goto(addr218);
                     }
                     §§goto(addr146);
                  }
                  §§goto(addr331);
               }
            }
         }
         §§goto(addr172);
      }
      
      protected function addDestructionParticles(param1:§[!8§, param2:§6!O§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            param1.addDestructionParticles(param2);
         }
      }
      
      protected function removeChildFromMainSprite(param1:Sprite) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            §§push(this.§ l§);
            if(_loc2_ || this)
            {
               if(!§§pop().contains(param1))
               {
                  loop0:
                  while(true)
                  {
                     §§push(this.§7!g§);
                     if(_loc2_)
                     {
                        if(!§§pop().contains(param1))
                        {
                           while(true)
                           {
                              §§push(this.§4!l§);
                              if(_loc2_ || this)
                              {
                                 if(§§pop().contains(param1))
                                 {
                                    if(_loc2_ || this)
                                    {
                                       if(!_loc3_)
                                       {
                                          if(!_loc3_)
                                          {
                                             if(_loc3_ && _loc3_)
                                             {
                                                addr132:
                                                if(!(_loc3_ && _loc2_))
                                                {
                                                   §§push(this.§7!g§);
                                                   break loop0;
                                                }
                                                addr176:
                                                this.§ l§.removeChild(param1);
                                                break;
                                             }
                                             addr111:
                                             this.§4!l§.removeChild(param1);
                                             return;
                                             addr113:
                                          }
                                          return;
                                          addr153:
                                       }
                                       if(_loc2_ || _loc3_)
                                       {
                                          continue;
                                       }
                                       if(!(_loc2_ || _loc2_))
                                       {
                                          break;
                                       }
                                       continue loop0;
                                    }
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                       §§push(this.§1M§);
                                       if(!(_loc3_ && param1))
                                       {
                                          if(!§§pop().contains(param1))
                                          {
                                             return;
                                          }
                                          if(_loc2_)
                                          {
                                             if(!(_loc3_ && _loc3_))
                                             {
                                                §§push(this.§1M§);
                                                break;
                                             }
                                             continue;
                                          }
                                          if(_loc2_ || param1)
                                          {
                                             return;
                                             addr64:
                                          }
                                          §§goto(addr113);
                                       }
                                       break;
                                    }
                                    §§pop().removeChild(param1);
                                    §§goto(addr57);
                                 }
                                 §§goto(addr113);
                              }
                              §§goto(addr111);
                           }
                           return;
                        }
                        §§goto(addr132);
                     }
                     break;
                  }
                  §§pop().removeChild(param1);
                  §§goto(addr153);
               }
            }
            §§goto(addr176);
         }
         §§goto(addr64);
      }
      
      protected function §5"K§(param1:§[!8§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            §§push(param1.§?"R§());
            loop0:
            while(true)
            {
               §§push(§§pop().toUpperCase() == "WHITE_EGG");
               loop1:
               while(true)
               {
                  if(!§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§pop();
                        loop3:
                        while(true)
                        {
                           §§push(param1.§package§());
                           if(_loc3_ || _loc3_)
                           {
                              if(!(_loc3_ || param1))
                              {
                                 continue loop2;
                              }
                              if(_loc2_)
                              {
                                 continue loop1;
                              }
                              §§push(Boolean(§§pop()));
                              while(true)
                              {
                              }
                           }
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 break loop3;
                              }
                              if(_loc3_ || param1)
                              {
                                 continue loop0;
                              }
                              addr121:
                              if(!_loc2_)
                              {
                                 addr123:
                                 this.addExplosions(§6!M§.§#!M§,param1.getBody().GetPosition().x,param1.getBody().GetPosition().y);
                                 addr135:
                                 break loop3;
                                 addr135:
                              }
                              continue loop3;
                           }
                        }
                        addr25:
                        return;
                     }
                  }
                  §§goto(addr82);
               }
            }
         }
         §§goto(addr123);
      }
      
      public function §8`§(param1:Object, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && param3))
         {
            this.§8v§(this.§@!Z§.indexOf(param1),param2,param3,param4);
         }
      }
      
      public function updateScrollAndScale(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc3_)
         {
            §§push(this.§[u§);
            loop0:
            while(true)
            {
               §§push(param1);
               addr94:
               while(true)
               {
                  §§push(-§§pop());
                  addr95:
                  while(true)
                  {
                     §§pop().x = §§pop();
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr90);
      }
      
      public function isPigsAlive(param1:Boolean = false) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§[!8§ = null;
         var _loc2_:int = 0;
         loop0:
         while(_loc2_ < this.§@!Z§.length)
         {
            _loc3_ = this.§@!Z§[_loc2_] as §[!8§;
            if(_loc4_)
            {
               §§push(Boolean(_loc3_));
               loop1:
               while(true)
               {
                  §§push(§§pop());
                  while(true)
                  {
                     if(!§§pop())
                     {
                        while(true)
                        {
                           §§push(§§pop());
                           loop24:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 loop5:
                                 while(true)
                                 {
                                    §§pop();
                                    loop6:
                                    while(true)
                                    {
                                       §§push(_loc3_.§ d§);
                                       loop7:
                                       while(true)
                                       {
                                          §§push(0);
                                          loop8:
                                          while(true)
                                          {
                                             §§push(§§pop() > §§pop());
                                             if(!(_loc5_ && _loc3_))
                                             {
                                                while(true)
                                                {
                                                   if(§§pop())
                                                   {
                                                      loop10:
                                                      while(true)
                                                      {
                                                         §§push(param1);
                                                         loop11:
                                                         while(true)
                                                         {
                                                            §§push(!§§pop());
                                                            if(_loc4_)
                                                            {
                                                               §§push(§§pop());
                                                               loop12:
                                                               while(true)
                                                               {
                                                                  if(_loc5_)
                                                                  {
                                                                     continue loop24;
                                                                  }
                                                                  if(!§§pop())
                                                                  {
                                                                     addr196:
                                                                     while(!_loc5_)
                                                                     {
                                                                        addr198:
                                                                        §§pop();
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc3_.§2!8§);
                                                                           loop15:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop().mTryToBlink);
                                                                              loop16:
                                                                              while(_loc4_)
                                                                              {
                                                                                 §§push(0);
                                                                                 loop17:
                                                                                 while(true)
                                                                                 {
                                                                                    if(!_loc5_)
                                                                                    {
                                                                                       §§push(§§pop() <= §§pop());
                                                                                       if(_loc4_)
                                                                                       {
                                                                                          if(_loc4_)
                                                                                          {
                                                                                             continue loop12;
                                                                                          }
                                                                                          continue loop11;
                                                                                       }
                                                                                       addr165:
                                                                                       loop18:
                                                                                       while(true)
                                                                                       {
                                                                                          §§pop();
                                                                                          addr166:
                                                                                          while(true)
                                                                                          {
                                                                                             if(!(_loc4_ || _loc2_))
                                                                                             {
                                                                                                continue loop10;
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc3_.§2!8§);
                                                                                                if(!_loc4_)
                                                                                                {
                                                                                                   break loop18;
                                                                                                }
                                                                                                §§push(§§pop().mTryToScream);
                                                                                                if(_loc4_ || this)
                                                                                                {
                                                                                                   continue loop17;
                                                                                                }
                                                                                                continue loop16;
                                                                                             }
                                                                                             continue loop18;
                                                                                          }
                                                                                       }
                                                                                       continue loop15;
                                                                                    }
                                                                                    continue loop8;
                                                                                 }
                                                                              }
                                                                              continue loop7;
                                                                           }
                                                                           §§goto(addr198);
                                                                        }
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§pop();
                                                                        addr237:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc3_.§&!y§());
                                                                           if(!_loc5_)
                                                                           {
                                                                              continue loop1;
                                                                           }
                                                                           continue loop5;
                                                                        }
                                                                        continue loop1;
                                                                     }
                                                                     addr196:
                                                                     addr236:
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     if(!§§pop())
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           _loc2_++;
                                                                           if(!_loc5_)
                                                                           {
                                                                              if(!_loc5_)
                                                                              {
                                                                                 while(false)
                                                                                 {
                                                                                    §§goto(addr42);
                                                                                 }
                                                                                 continue loop0;
                                                                                 addr40:
                                                                              }
                                                                              addr87:
                                                                              while(true)
                                                                              {
                                                                                 if(_loc4_ || _loc3_)
                                                                                 {
                                                                                    if(_loc4_ || _loc3_)
                                                                                    {
                                                                                       §§push(true);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr237);
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr199);
                                                                                 }
                                                                                 §§goto(addr102);
                                                                              }
                                                                              §§goto(addr198);
                                                                           }
                                                                           else if(_loc4_ || this)
                                                                           {
                                                                              if(_loc5_ && _loc2_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              continue;
                                                                           }
                                                                           §§goto(addr166);
                                                                        }
                                                                        continue loop6;
                                                                        addr34:
                                                                     }
                                                                     §§goto(addr87);
                                                                  }
                                                               }
                                                               continue loop24;
                                                            }
                                                            §§goto(addr196);
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr34);
                                                }
                                                addr186:
                                             }
                                             §§goto(addr196);
                                          }
                                       }
                                    }
                                 }
                                 addr229:
                              }
                              §§goto(addr186);
                           }
                        }
                        addr226:
                     }
                     §§goto(addr236);
                  }
               }
            }
            §§goto(addr40);
         }
         return false;
      }
      
      public function §5"V§(param1:Boolean = false) : int
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:§[!8§ = null;
         var _loc2_:int = 0;
         var _loc3_:* = int(this.§@!Z§.length - 1);
         loop0:
         while(true)
         {
            §§push(_loc3_);
            if(!_loc5_)
            {
               if(§§pop() < 0)
               {
                  §§push(_loc2_);
                  break;
               }
               §§push(Boolean(_loc4_ = this.§@!Z§[_loc3_] as §[!8§));
               if(_loc6_)
               {
                  §§push(§§pop());
                  if(_loc6_ || _loc2_)
                  {
                     if(§§pop())
                     {
                        if(!(_loc5_ && this))
                        {
                           §§pop();
                           if(!(_loc5_ && this))
                           {
                              §§push(_loc4_.§&!y§());
                              loop1:
                              while(true)
                              {
                                 §§push(Boolean(§§pop()));
                                 addr242:
                                 loop24:
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    loop22:
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          addr244:
                                          while(true)
                                          {
                                             §§pop();
                                             addr245:
                                             while(true)
                                             {
                                                §§push(_loc4_.§ d§);
                                                addr202:
                                                while(true)
                                                {
                                                   §§push(0);
                                                   addr203:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() > §§pop());
                                                   }
                                                }
                                             }
                                          }
                                          addr244:
                                       }
                                       loop13:
                                       while(true)
                                       {
                                          loop15:
                                          while(!§§pop())
                                          {
                                             loop16:
                                             while(true)
                                             {
                                                §§push(_loc3_);
                                                if(_loc6_)
                                                {
                                                   §§push(§§pop() - 1);
                                                }
                                                _loc3_ = §§pop();
                                                if(!_loc5_)
                                                {
                                                   if(!(_loc5_ && this))
                                                   {
                                                      addr83:
                                                      if(_loc6_ || param1)
                                                      {
                                                         if(true)
                                                         {
                                                            break;
                                                         }
                                                         loop12:
                                                         while(true)
                                                         {
                                                            §§push(_loc4_.§2!8§);
                                                            if(!_loc5_)
                                                            {
                                                               §§push(§§pop().mTryToScream);
                                                               if(!(_loc5_ && this))
                                                               {
                                                                  if(!(_loc5_ && this))
                                                                  {
                                                                     §§push(0);
                                                                     if(!_loc5_)
                                                                     {
                                                                        addr125:
                                                                        §§push(§§pop() <= §§pop());
                                                                        if(_loc6_ || this)
                                                                        {
                                                                           addr133:
                                                                           if(_loc6_ || _loc3_)
                                                                           {
                                                                              if(!_loc5_)
                                                                              {
                                                                                 if(!(_loc5_ && _loc3_))
                                                                                 {
                                                                                    continue loop1;
                                                                                 }
                                                                                 continue loop24;
                                                                              }
                                                                              §§goto(addr244);
                                                                           }
                                                                           else
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop());
                                                                                 addr233:
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc5_)
                                                                                    {
                                                                                       continue loop22;
                                                                                    }
                                                                                    if(!§§pop())
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          §§pop();
                                                                                          addr237:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc4_.§2!8§);
                                                                                             break loop12;
                                                                                          }
                                                                                       }
                                                                                       addr236:
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       if(!§§pop())
                                                                                       {
                                                                                          continue loop16;
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          _loc2_++;
                                                                                          addr159:
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc6_ || param1)
                                                                                             {
                                                                                                continue loop16;
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr133);
                                                                              }
                                                                              addr232:
                                                                           }
                                                                           §§goto(addr245);
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           if(_loc6_)
                                                                           {
                                                                              if(!_loc6_)
                                                                              {
                                                                                 continue loop15;
                                                                              }
                                                                              §§pop();
                                                                              while(_loc6_ || _loc3_)
                                                                              {
                                                                                 continue loop12;
                                                                                 §§goto(addr83);
                                                                              }
                                                                              §§goto(addr237);
                                                                           }
                                                                           break;
                                                                           §§goto(addr125);
                                                                        }
                                                                        §§goto(addr236);
                                                                        addr186:
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        if(_loc5_ && param1)
                                                                        {
                                                                           continue loop13;
                                                                        }
                                                                        §§push(§§pop() <= §§pop());
                                                                        if(_loc6_)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop());
                                                                              if(_loc6_)
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       §§goto(addr186);
                                                                                    }
                                                                                 }
                                                                                 addr185:
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr233);
                                                                              }
                                                                              §§goto(addr156);
                                                                           }
                                                                           addr182:
                                                                        }
                                                                        §§goto(addr125);
                                                                     }
                                                                     addr172:
                                                                  }
                                                                  §§goto(addr202);
                                                               }
                                                               while(true)
                                                               {
                                                                  §§goto(addr172);
                                                               }
                                                               addr171:
                                                            }
                                                            break;
                                                         }
                                                         while(true)
                                                         {
                                                            §§goto(addr171);
                                                         }
                                                      }
                                                      §§goto(addr191);
                                                   }
                                                   §§goto(addr158);
                                                }
                                                §§goto(addr159);
                                             }
                                             continue loop0;
                                          }
                                          addr206:
                                          if(!(_loc5_ && param1))
                                          {
                                             while(true)
                                             {
                                                §§push(param1);
                                                if(!(_loc5_ && param1))
                                                {
                                                   §§push(!§§pop());
                                                }
                                                §§goto(addr232);
                                                §§goto(addr206);
                                             }
                                             addr213:
                                          }
                                          §§goto(addr237);
                                       }
                                    }
                                 }
                              }
                           }
                           §§goto(addr213);
                        }
                        §§goto(addr182);
                     }
                     §§goto(addr242);
                  }
                  §§goto(addr185);
               }
               §§goto(addr244);
            }
            break;
         }
         return §§pop();
      }
      
      public function §0E§() : int
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§[!8§ = null;
         var _loc1_:int = 0;
         var _loc3_:int = 0;
         loop0:
         for each(_loc2_ in this.§@!Z§)
         {
            if(!_loc6_)
            {
               §§push(Boolean(_loc2_));
               loop1:
               while(true)
               {
                  §§push(§§pop());
                  loop2:
                  while(true)
                  {
                     if(§§pop())
                     {
                        loop3:
                        while(true)
                        {
                           §§pop();
                           loop4:
                           while(true)
                           {
                              loop5:
                              while(true)
                              {
                                 §§push(_loc2_.§]H§());
                                 loop6:
                                 while(_loc5_)
                                 {
                                    §§push(Boolean(§§pop()));
                                    if(_loc5_)
                                    {
                                       if(_loc5_ || _loc3_)
                                       {
                                          §§push(§§pop());
                                          if(_loc5_ || _loc3_)
                                          {
                                             if(§§pop())
                                             {
                                             }
                                             loop9:
                                             while(§§pop())
                                             {
                                                if(!(_loc6_ && _loc3_))
                                                {
                                                   while(true)
                                                   {
                                                      _loc1_++;
                                                   }
                                                   addr76:
                                                }
                                                while(true)
                                                {
                                                   if(_loc5_ || _loc3_)
                                                   {
                                                      if(_loc5_ || this)
                                                      {
                                                         if(true)
                                                         {
                                                            break loop9;
                                                         }
                                                         continue loop5;
                                                      }
                                                      continue loop4;
                                                   }
                                                   addr128:
                                                   while(true)
                                                   {
                                                      §§push(_loc2_.§^!;§());
                                                      if(!(_loc6_ && _loc2_))
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                      }
                                                      if(!_loc5_)
                                                      {
                                                         break;
                                                      }
                                                      if(!(_loc6_ && this))
                                                      {
                                                         continue loop9;
                                                      }
                                                      continue loop6;
                                                   }
                                                }
                                             }
                                             continue loop0;
                                             addr67:
                                          }
                                          continue loop2;
                                       }
                                       continue loop3;
                                    }
                                    while(true)
                                    {
                                       §§pop();
                                       §§goto(addr128);
                                    }
                                 }
                                 continue loop1;
                              }
                           }
                        }
                     }
                     §§goto(addr67);
                  }
               }
            }
            §§goto(addr76);
         }
         return _loc1_;
      }
      
      public function §2s§() : int
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§[!8§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§@!Z§)
         {
            if(!_loc6_)
            {
               continue;
            }
            §§push(Boolean(_loc2_));
            if(!(_loc5_ && this))
            {
               if(§§pop())
               {
                  if(_loc6_)
                  {
                     §§pop();
                     if(_loc6_)
                     {
                        §§push(_loc2_.isTexture());
                        if(_loc6_)
                        {
                           addr78:
                           if(!§§pop())
                           {
                              continue;
                           }
                           if(_loc5_)
                           {
                              continue;
                           }
                        }
                        §§goto(addr78);
                     }
                     _loc1_++;
                     continue;
                  }
               }
            }
            §§goto(addr78);
         }
         return _loc1_;
      }
      
      public function makePigsSmile(param1:Number = 1) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§[!8§ = null;
         var _loc2_:int = this.§@!Z§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§@!Z§[_loc2_];
            if(_loc5_ || param1)
            {
               §§push(Boolean(_loc3_));
               if(_loc5_)
               {
                  §§push(§§pop());
                  loop1:
                  while(true)
                  {
                     if(§§pop())
                     {
                        addr147:
                        while(true)
                        {
                           §§pop();
                           addr148:
                           while(true)
                           {
                              §§push(_loc3_.§&!y§());
                              addr102:
                              while(true)
                              {
                                 §§push(Boolean(§§pop()));
                              }
                           }
                        }
                        addr147:
                     }
                     while(true)
                     {
                        continue loop1;
                     }
                  }
               }
               §§goto(addr147);
            }
            §§goto(addr84);
         }
      }
      
      public function §0x§() : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§[!8§ = null;
         var _loc1_:* = int(this.§@!Z§.length - 1);
         loop0:
         for(; _loc1_ >= 0; if(true)
         {
            continue;
         },§§goto(addr66))
         {
            _loc2_ = this.§@!Z§[_loc1_] as §[!8§;
            if(_loc4_)
            {
               §§push(Boolean(_loc2_));
               loop1:
               while(true)
               {
                  §§push(§§pop());
                  loop2:
                  while(true)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           §§pop();
                           addr135:
                           while(true)
                           {
                              §§push(_loc2_.§!!n§());
                              addr118:
                              while(!_loc3_)
                              {
                                 §§push(Boolean(§§pop()));
                              }
                              continue loop1;
                           }
                        }
                        addr134:
                     }
                     while(true)
                     {
                        loop7:
                        while(true)
                        {
                           §§push(§§pop());
                           if(_loc3_)
                           {
                              break;
                           }
                           if(§§pop())
                           {
                              loop8:
                              while(true)
                              {
                                 §§pop();
                                 loop9:
                                 while(true)
                                 {
                                    addr66:
                                    while(true)
                                    {
                                       §§push(_loc2_.§ d§ > 0);
                                       if(_loc4_)
                                       {
                                          if(_loc4_)
                                          {
                                             if(_loc4_)
                                             {
                                                if(_loc4_ || _loc3_)
                                                {
                                                   while(true)
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         do
                                                         {
                                                            §§push(_loc1_);
                                                            if(!_loc3_)
                                                            {
                                                               §§push(§§pop() - 1);
                                                            }
                                                            _loc1_ = §§pop();
                                                         }
                                                         while(!_loc4_);
                                                         
                                                         if(_loc4_ || _loc2_)
                                                         {
                                                            continue loop0;
                                                         }
                                                      }
                                                      if(!(_loc4_ || this))
                                                      {
                                                         continue loop9;
                                                      }
                                                      if(!_loc3_)
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(true);
                                                            continue loop8;
                                                         }
                                                         addr95:
                                                      }
                                                   }
                                                   continue loop0;
                                                   addr84:
                                                }
                                                §§goto(addr134);
                                                §§goto(addr135);
                                             }
                                             break;
                                          }
                                          continue loop7;
                                       }
                                       continue loop8;
                                    }
                                    §§goto(addr118);
                                 }
                              }
                              return §§pop();
                           }
                           §§goto(addr84);
                        }
                        continue loop2;
                     }
                  }
               }
            }
            §§goto(addr95);
         }
         return false;
      }
      
      public function isWorldAtSleep() : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§[!8§ = null;
         var _loc1_:* = int(this.§@!Z§.length - 1);
         loop0:
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§@!Z§[_loc1_] as §[!8§;
            if(!(_loc3_ && this))
            {
               §§push(Boolean(_loc2_));
               while(true)
               {
                  §§push(§§pop());
                  loop2:
                  while(true)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           §§pop();
                           addr297:
                           while(true)
                           {
                              §§push(_loc2_.§ d§);
                              addr275:
                              while(true)
                              {
                                 §§push(0);
                                 addr276:
                                 while(true)
                                 {
                                    §§push(§§pop() > §§pop());
                                    addr277:
                                    while(true)
                                    {
                                       §§push(Boolean(§§pop()));
                                    }
                                 }
                              }
                           }
                        }
                        addr296:
                     }
                     while(true)
                     {
                        loop9:
                        while(true)
                        {
                           §§push(§§pop());
                           loop10:
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       loop17:
                                       while(true)
                                       {
                                          §§push(_loc2_.§`"4§());
                                          loop18:
                                          while(true)
                                          {
                                             §§push(Boolean(§§pop()));
                                             while(true)
                                             {
                                                §§push(§§pop());
                                                loop20:
                                                while(_loc4_ || _loc2_)
                                                {
                                                   if(§§pop())
                                                   {
                                                      loop21:
                                                      while(true)
                                                      {
                                                         §§pop();
                                                         loop22:
                                                         while(true)
                                                         {
                                                            §§push(_loc2_.§]!!§());
                                                            loop23:
                                                            while(!_loc3_)
                                                            {
                                                               §§push(!§§pop());
                                                               loop24:
                                                               while(!(_loc3_ && _loc1_))
                                                               {
                                                                  while(!§§pop())
                                                                  {
                                                                     loop26:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc2_.§!!n§());
                                                                        if(!(_loc3_ && _loc1_))
                                                                        {
                                                                           if(_loc3_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           continue loop21;
                                                                        }
                                                                        addr170:
                                                                        loop27:
                                                                        while(_loc4_ || this)
                                                                        {
                                                                           if(!(_loc3_ && _loc3_))
                                                                           {
                                                                              §§push(§§pop());
                                                                              if(_loc3_)
                                                                              {
                                                                                 continue loop20;
                                                                              }
                                                                              if(_loc3_)
                                                                              {
                                                                                 continue loop2;
                                                                              }
                                                                              if(§§pop())
                                                                              {
                                                                                 loop28:
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc3_)
                                                                                    {
                                                                                       continue loop23;
                                                                                    }
                                                                                    if(!_loc3_)
                                                                                    {
                                                                                       if(_loc4_)
                                                                                       {
                                                                                          §§pop();
                                                                                          loop29:
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc3_ && _loc3_)
                                                                                             {
                                                                                                continue loop22;
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc2_.§ d§);
                                                                                                if(!_loc3_)
                                                                                                {
                                                                                                   §§push(0);
                                                                                                   if(!(_loc3_ && _loc1_))
                                                                                                   {
                                                                                                      §§push(§§pop() > §§pop());
                                                                                                      if(_loc3_ && this)
                                                                                                      {
                                                                                                         continue loop28;
                                                                                                      }
                                                                                                      if(_loc3_)
                                                                                                      {
                                                                                                         continue loop27;
                                                                                                      }
                                                                                                      loop31:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            if(!_loc3_)
                                                                                                            {
                                                                                                               if(_loc4_ || this)
                                                                                                               {
                                                                                                                  §§push(false);
                                                                                                                  continue loop28;
                                                                                                               }
                                                                                                               if(!_loc4_)
                                                                                                               {
                                                                                                                  break loop28;
                                                                                                               }
                                                                                                               continue loop26;
                                                                                                            }
                                                                                                            continue loop17;
                                                                                                         }
                                                                                                         addr44:
                                                                                                         addr44:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc1_);
                                                                                                            if(!_loc3_)
                                                                                                            {
                                                                                                               §§push(§§pop() - 1);
                                                                                                            }
                                                                                                            if(!(_loc4_ || _loc3_))
                                                                                                            {
                                                                                                               addr56:
                                                                                                               break loop31;
                                                                                                            }
                                                                                                            _loc1_ = §§pop();
                                                                                                            if(!(_loc3_ && _loc1_))
                                                                                                            {
                                                                                                               continue loop29;
                                                                                                            }
                                                                                                            continue loop17;
                                                                                                         }
                                                                                                         continue loop0;
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop() == §9L§.§7O§);
                                                                                                         addr231:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(!§§pop());
                                                                                                            break loop27;
                                                                                                         }
                                                                                                         §§goto(addr44);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr276);
                                                                                                }
                                                                                                break;
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr296);
                                                                                       }
                                                                                       §§goto(addr275);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          §§pop();
                                                                                          break loop28;
                                                                                       }
                                                                                       addr282:
                                                                                    }
                                                                                 }
                                                                                 while(_loc4_ || _loc3_)
                                                                                 {
                                                                                    §§goto(addr228);
                                                                                    §§push(_loc2_.§<!G§);
                                                                                 }
                                                                                 §§goto(addr297);
                                                                              }
                                                                              §§goto(addr103);
                                                                           }
                                                                           §§goto(addr231);
                                                                        }
                                                                        continue loop9;
                                                                     }
                                                                     continue loop24;
                                                                  }
                                                                  §§goto(addr221);
                                                                  §§push(false);
                                                               }
                                                               continue loop18;
                                                            }
                                                            §§goto(addr277);
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr218);
                                                }
                                                continue loop10;
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr44);
                                 }
                                 addr246:
                              }
                              §§goto(addr282);
                           }
                        }
                     }
                  }
                  if(_loc3_ && this)
                  {
                     continue;
                  }
                  §§goto(addr246);
               }
            }
            §§goto(addr220);
         }
         return true;
      }
      
      public function §!!h§(param1:Boolean = false) : §[!8§
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc7_:§[!8§ = null;
         if(_loc9_ || _loc2_)
         {
            if(!this.isPigsAlive())
            {
               if(!_loc8_)
               {
                  return null;
               }
            }
         }
         var _loc2_:int = this.§@!Z§.length;
         §§push(this.§5"V§(param1));
         if(!_loc8_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(_loc9_)
         {
            §§push(_loc3_);
            if(!_loc8_)
            {
               if(§§pop() == 0)
               {
                  if(_loc9_)
                  {
                     §§goto(addr55);
                  }
               }
               §§push(int(Math.random() * _loc3_));
            }
            var _loc4_:* = §§pop();
            var _loc5_:int = 0;
            var _loc6_:int = 0;
            loop0:
            while(_loc6_ < _loc2_)
            {
               §§push(Boolean(_loc7_ = this.§@!Z§[_loc6_] as §[!8§));
               if(!_loc8_)
               {
                  §§push(§§pop());
                  if(_loc9_)
                  {
                     if(§§pop())
                     {
                        if(!_loc8_)
                        {
                           §§pop();
                           if(_loc9_)
                           {
                              §§push(_loc7_.§&!y§());
                              loop13:
                              while(true)
                              {
                                 §§push(Boolean(§§pop()));
                                 addr263:
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    loop15:
                                    while(true)
                                    {
                                       if(!§§pop())
                                       {
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                loop1:
                                                while(true)
                                                {
                                                   §§push(param1);
                                                   while(true)
                                                   {
                                                      §§push(!§§pop());
                                                      loop3:
                                                      while(true)
                                                      {
                                                         §§push(§§pop());
                                                         loop4:
                                                         while(true)
                                                         {
                                                            if(!(_loc9_ || _loc2_))
                                                            {
                                                               continue loop15;
                                                            }
                                                            if(!§§pop())
                                                            {
                                                               loop5:
                                                               while(true)
                                                               {
                                                                  §§pop();
                                                                  loop6:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc7_.§2!8§);
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop().mTryToBlink);
                                                                        addr171:
                                                                        while(true)
                                                                        {
                                                                           §§push(0);
                                                                           addr172:
                                                                           addr265:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop() <= §§pop());
                                                                              if(!_loc9_)
                                                                              {
                                                                                 continue loop5;
                                                                              }
                                                                              if(_loc8_ && param1)
                                                                              {
                                                                                 continue loop3;
                                                                              }
                                                                              if(!_loc9_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              §§push(§§pop());
                                                                              if(!(_loc9_ || _loc2_))
                                                                              {
                                                                                 continue loop4;
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    continue loop5;
                                                                                 }
                                                                              }
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§pop();
                                                                              addr266:
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc7_.§ d§);
                                                                                 addr223:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(0);
                                                                                    addr224:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop() > §§pop());
                                                                                       addr225:
                                                                                       while(!_loc8_)
                                                                                       {
                                                                                          continue loop13;
                                                                                       }
                                                                                       continue loop15;
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        addr219:
                                                                        §§push(_loc7_.§2!8§);
                                                                        if(_loc8_)
                                                                        {
                                                                           continue;
                                                                        }
                                                                        §§push(§§pop().mTryToScream);
                                                                        if(_loc9_)
                                                                        {
                                                                           if(!_loc8_)
                                                                           {
                                                                              §§push(0);
                                                                              if(!_loc8_)
                                                                              {
                                                                                 if(_loc9_)
                                                                                 {
                                                                                    §§push(§§pop() <= §§pop());
                                                                                    if(_loc8_)
                                                                                    {
                                                                                       continue loop5;
                                                                                    }
                                                                                    if(!_loc8_)
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          addr146:
                                                                                          while(true)
                                                                                          {
                                                                                             if(§§pop())
                                                                                             {
                                                                                                if(_loc9_ || _loc3_)
                                                                                                {
                                                                                                   addr154:
                                                                                                   if(!(_loc8_ && _loc3_))
                                                                                                   {
                                                                                                      if(_loc5_ < _loc4_)
                                                                                                      {
                                                                                                         loop25:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            _loc5_++;
                                                                                                            addr105:
                                                                                                            while(_loc8_ && this)
                                                                                                            {
                                                                                                               continue loop25;
                                                                                                            }
                                                                                                            if(!_loc8_)
                                                                                                            {
                                                                                                               addr114:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  _loc6_++;
                                                                                                                  if(!(_loc8_ && param1))
                                                                                                                  {
                                                                                                                     if(true)
                                                                                                                     {
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     continue loop25;
                                                                                                                  }
                                                                                                                  §§goto(addr105);
                                                                                                                  §§goto(addr114);
                                                                                                               }
                                                                                                               continue loop0;
                                                                                                               addr92:
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!(_loc8_ && param1))
                                                                                                         {
                                                                                                            if(_loc9_)
                                                                                                            {
                                                                                                               if(!(_loc8_ && _loc2_))
                                                                                                               {
                                                                                                                  §§goto(addr219);
                                                                                                               }
                                                                                                               break;
                                                                                                            }
                                                                                                            continue loop1;
                                                                                                         }
                                                                                                         continue loop6;
                                                                                                         §§goto(addr154);
                                                                                                      }
                                                                                                      §§goto(addr266);
                                                                                                      addr203:
                                                                                                   }
                                                                                                }
                                                                                                return _loc7_;
                                                                                             }
                                                                                             §§goto(addr92);
                                                                                          }
                                                                                       }
                                                                                       addr145:
                                                                                    }
                                                                                    §§goto(addr225);
                                                                                 }
                                                                                 §§goto(addr224);
                                                                              }
                                                                              §§goto(addr172);
                                                                           }
                                                                           §§goto(addr223);
                                                                        }
                                                                        §§goto(addr171);
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr145);
                                                         }
                                                         continue loop15;
                                                      }
                                                   }
                                                }
                                                addr246:
                                             }
                                             §§goto(addr114);
                                          }
                                          addr244:
                                       }
                                       §§goto(addr265);
                                    }
                                 }
                              }
                              addr261:
                           }
                           §§goto(addr246);
                        }
                        §§goto(addr261);
                     }
                     §§goto(addr263);
                  }
                  §§goto(addr192);
               }
               §§goto(addr146);
            }
            return null;
         }
         addr55:
         return null;
      }
      
      public function §@Z§() : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:* = 0;
         var _loc2_:* = int(this.§@!Z§.length - 1);
         loop0:
         while(true)
         {
            §§push(_loc2_);
            if(_loc4_)
            {
               §§push(0);
               if(_loc4_ || this)
               {
                  if(_loc4_ || _loc3_)
                  {
                     if(§§pop() < §§pop())
                     {
                        if(!(_loc3_ && this))
                        {
                           if(_loc3_ && _loc1_)
                           {
                              continue;
                           }
                           if(!(_loc3_ && this))
                           {
                              §§push(_loc1_);
                              if(_loc4_ || _loc3_)
                              {
                                 addr105:
                                 §§push(this.mLevelMain.slingshot.§@Z§());
                                 if(!_loc3_)
                                 {
                                    §§push(§§pop() + §§pop());
                                    if(!(_loc3_ && _loc2_))
                                    {
                                       §§push(int(§§pop()));
                                       loop14:
                                       while(!_loc3_)
                                       {
                                          addr118:
                                          _loc1_ = §§pop();
                                          loop5:
                                          while(true)
                                          {
                                             if(!_loc3_)
                                             {
                                                if(!(_loc3_ && _loc3_))
                                                {
                                                   §§push(_loc1_);
                                                   if(_loc3_)
                                                   {
                                                      continue loop14;
                                                   }
                                                   if(!(_loc3_ && _loc1_))
                                                   {
                                                      if(_loc4_)
                                                      {
                                                         break loop0;
                                                      }
                                                      loop7:
                                                      while(true)
                                                      {
                                                         if(_loc4_)
                                                         {
                                                            _loc1_ = §§pop();
                                                            break loop5;
                                                         }
                                                         loop4:
                                                         while(true)
                                                         {
                                                            _loc1_ = §§pop();
                                                            addr203:
                                                            loop6:
                                                            while((this.§@!Z§[_loc2_] as §[!8§).§`"4§())
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(_loc1_);
                                                                  if(!(_loc4_ || _loc1_))
                                                                  {
                                                                     continue loop7;
                                                                  }
                                                                  §§push(§'!S§.§3"2§.getValue());
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() + §§pop() * int((this.§@!Z§[_loc2_] as §[!8§).§^!2§));
                                                                     addr182:
                                                                     while(true)
                                                                     {
                                                                        if(!_loc3_)
                                                                        {
                                                                           §§push(int(§§pop()));
                                                                           continue loop7;
                                                                        }
                                                                        loop2:
                                                                        while(true)
                                                                        {
                                                                           §§push(int(§§pop()));
                                                                           continue loop4;
                                                                           addr200:
                                                                           while(true)
                                                                           {
                                                                              continue loop2;
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  continue loop6;
                                                               }
                                                            }
                                                            break loop14;
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr131);
                                                }
                                                §§goto(addr203);
                                             }
                                             break;
                                             §§goto(addr118);
                                          }
                                          while(true)
                                          {
                                             §§goto(addr129);
                                          }
                                       }
                                       _loc2_ = §§pop();
                                       addr116:
                                       continue;
                                       addr116:
                                    }
                                    §§goto(addr182);
                                 }
                                 §§goto(addr161);
                              }
                              §§goto(addr116);
                           }
                           §§goto(addr150);
                        }
                        §§goto(addr119);
                     }
                     else
                     {
                        §§push(_loc1_);
                     }
                     §§goto(addr192);
                  }
                  §§goto(addr200);
               }
               §§goto(addr105);
            }
            §§goto(addr116);
         }
         return §§pop();
      }
      
      public function §+w§(param1:§[!8§, param2:§[!8§) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §§push(param2 is §7"R§);
            loop0:
            while(true)
            {
               §§push(§§pop());
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        addr159:
                        while(true)
                        {
                           §§push(param1 is §7"R§);
                        }
                     }
                     addr158:
                  }
                  while(true)
                  {
                     loop5:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           loop6:
                           while(true)
                           {
                              §§push(param1.§=b§());
                              loop7:
                              while(true)
                              {
                                 if(_loc3_)
                                 {
                                    continue loop0;
                                 }
                                 §§push(!§§pop());
                                 if(_loc4_)
                                 {
                                    if(_loc4_ || _loc3_)
                                    {
                                       §§push(§§pop());
                                       if(!(_loc4_ || _loc3_))
                                       {
                                          continue loop1;
                                       }
                                       if(§§pop())
                                       {
                                          loop9:
                                          while(_loc4_ || param2)
                                          {
                                             if(!_loc4_)
                                             {
                                                continue loop5;
                                             }
                                             §§pop();
                                             loop10:
                                             while(true)
                                             {
                                                if(_loc3_ && this)
                                                {
                                                   addr148:
                                                   if(!_loc3_)
                                                   {
                                                      §§push(true);
                                                      break loop9;
                                                   }
                                                   break loop7;
                                                }
                                                §§push(param2.§=b§());
                                                if(_loc4_ || param2)
                                                {
                                                   §§push(!§§pop());
                                                }
                                                loop11:
                                                while(true)
                                                {
                                                   if(_loc4_ || _loc3_)
                                                   {
                                                      loop8:
                                                      while(true)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            if(_loc4_ || this)
                                                            {
                                                               if(_loc3_ && _loc3_)
                                                               {
                                                                  continue loop10;
                                                               }
                                                               §§push(true);
                                                            }
                                                            else
                                                            {
                                                               if(!(_loc4_ || this))
                                                               {
                                                                  continue loop6;
                                                               }
                                                               while(true)
                                                               {
                                                                  addr20:
                                                                  while(true)
                                                                  {
                                                                     §§push(false);
                                                                     if(_loc4_)
                                                                     {
                                                                        if(_loc4_)
                                                                        {
                                                                           return §§pop();
                                                                        }
                                                                        continue loop11;
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            while(true)
                                                            {
                                                               if(!(_loc3_ && this))
                                                               {
                                                                  break loop8;
                                                               }
                                                               continue loop9;
                                                            }
                                                         }
                                                         §§goto(addr20);
                                                         continue loop11;
                                                      }
                                                      return §§pop();
                                                      addr47:
                                                   }
                                                   continue loop7;
                                                }
                                             }
                                          }
                                          return §§pop();
                                          addr114:
                                       }
                                       §§goto(addr47);
                                    }
                                    else
                                    {
                                       §§goto(addr158);
                                    }
                                 }
                                 §§goto(addr114);
                              }
                              §§goto(addr159);
                           }
                        }
                        §§goto(addr148);
                     }
                  }
               }
            }
         }
         §§goto(addr89);
      }
      
      public function §^!M§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            this.mSardineCanAdded = true;
            do
            {
               this.§@"0§ = 0;
            }
            while(!_loc1_);
            
         }
      }
      
      public function objectCollision(param1:§[!8§, param2:§[!8§) : Boolean
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Deobfuscation is activated but decompilation still failed. If the file is NOT obfuscated, disable "Automatic deobfuscation" for better results.
          * Error type: ExecutionException (java.lang.StackOverflowError)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public function §&'§(param1:§[!8§, param2:§[!8§) : void
      {
      }
      
      public function §4I§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§[!8§ = null;
         var _loc1_:* = int(this.§@!Z§.length - 1);
         loop0:
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§@!Z§[_loc1_] as §[!8§;
            if(!_loc3_)
            {
               §§push(_loc2_ == null);
               loop1:
               while(true)
               {
                  §§push(!§§pop());
                  loop2:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        while(true)
                        {
                           if(§§pop())
                           {
                              loop7:
                              while(true)
                              {
                                 this.§8v§(_loc1_,true,true,true);
                                 loop8:
                                 while(!_loc3_)
                                 {
                                    while(true)
                                    {
                                       §§push(_loc1_);
                                       if(!(_loc3_ && this))
                                       {
                                          §§push(§§pop() - 1);
                                       }
                                       _loc1_ = §§pop();
                                       if(!_loc3_)
                                       {
                                          if(!_loc3_)
                                          {
                                             while(false)
                                             {
                                                while(true)
                                                {
                                                   §§push(_loc2_.§&!y§());
                                                   if(!_loc3_)
                                                   {
                                                      if(!_loc3_)
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                      }
                                                      else
                                                      {
                                                         while(true)
                                                         {
                                                            §§pop();
                                                            break loop8;
                                                         }
                                                         addr110:
                                                      }
                                                   }
                                                   if(!_loc4_)
                                                   {
                                                      break;
                                                   }
                                                   continue loop1;
                                                }
                                                continue loop2;
                                             }
                                             continue loop0;
                                             addr64:
                                          }
                                          continue loop7;
                                       }
                                       continue loop8;
                                    }
                                 }
                                 while(true)
                                 {
                                    §§goto(addr66);
                                 }
                              }
                           }
                           §§goto(addr39);
                        }
                        addr93:
                     }
                     §§goto(addr110);
                  }
               }
            }
            §§goto(addr64);
         }
      }
      
      public function §[!K§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§[!8§ = null;
         var _loc1_:* = int(this.§@!Z§.length - 1);
         loop0:
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§@!Z§[_loc1_] as §[!8§;
            if(!_loc3_)
            {
               §§push(_loc2_ == null);
               loop1:
               while(true)
               {
                  §§push(!§§pop());
                  loop2:
                  while(true)
                  {
                     if(§§pop())
                     {
                        loop3:
                        while(true)
                        {
                           §§pop();
                           addr111:
                           while(true)
                           {
                              addr64:
                              while(true)
                              {
                                 §§push(_loc2_.§package§());
                                 if(!_loc3_)
                                 {
                                    if(_loc3_)
                                    {
                                       break;
                                    }
                                    §§push(Boolean(§§pop()));
                                 }
                                 if(_loc3_ && this)
                                 {
                                    continue loop3;
                                 }
                                 if(_loc3_)
                                 {
                                    continue loop2;
                                 }
                              }
                              continue loop1;
                           }
                        }
                     }
                     loop6:
                     while(true)
                     {
                        if(§§pop())
                        {
                           if(!_loc3_)
                           {
                              if(_loc4_)
                              {
                                 while(true)
                                 {
                                    this.§8v§(_loc1_,true,true,true);
                                    addr103:
                                    loop7:
                                    while(true)
                                    {
                                       addr39:
                                       while(true)
                                       {
                                          §§push(_loc1_);
                                          if(_loc4_)
                                          {
                                             §§push(§§pop() - 1);
                                          }
                                          _loc1_ = §§pop();
                                          if(_loc4_ || _loc1_)
                                          {
                                             break;
                                          }
                                          continue loop7;
                                       }
                                       if(true)
                                       {
                                          break loop6;
                                       }
                                       §§goto(addr64);
                                    }
                                 }
                                 addr97:
                              }
                              §§goto(addr111);
                           }
                           §§goto(addr103);
                        }
                        §§goto(addr39);
                     }
                     continue loop0;
                  }
               }
            }
            §§goto(addr97);
         }
      }
      
      public function §57§() : int
      {
         return this.§@!Z§.length;
      }
      
      public function §1o§(param1:§0"T§) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc2_:§[!8§ = null;
         var _loc3_:§?5§ = null;
         var _loc4_:§>y§ = null;
         var _loc5_:§?!F§ = null;
         var _loc6_:int = 0;
         var _loc7_:* = this.§@!Z§;
         while(true)
         {
            §§push(§§hasnext(_loc7_,_loc6_));
            if(_loc8_ || this)
            {
               if(§§pop())
               {
                  _loc2_ = §§nextvalue(_loc6_,_loc7_);
                  if(_loc8_)
                  {
                     if(!_loc2_.isGround())
                     {
                        (_loc4_ = new §>y§()).angle = _loc2_.§,!c§();
                        if(_loc8_)
                        {
                           _loc4_.id = _loc2_.§@x§;
                           while(true)
                           {
                              _loc4_.x = _loc2_.getBody().GetPosition().x;
                              addr113:
                              while(true)
                              {
                                 _loc4_.y = _loc2_.getBody().GetPosition().y;
                                 loop3:
                                 for(; _loc8_; while(!(_loc9_ && _loc3_))
                                 {
                                 })
                                 {
                                    while(true)
                                    {
                                       _loc4_.uniqueID = _loc2_.uniqueID;
                                       continue loop3;
                                    }
                                 }
                              }
                           }
                           addr118:
                        }
                        while(true)
                        {
                           param1.addObject(_loc4_);
                           if(_loc8_ || this)
                           {
                              if(_loc8_)
                              {
                                 if(true)
                                 {
                                    break;
                                 }
                                 §§goto(addr73);
                              }
                              else
                              {
                                 §§goto(addr118);
                              }
                           }
                           §§goto(addr78);
                        }
                        continue;
                     }
                  }
                  continue;
               }
               if(!(_loc9_ && this))
               {
                  if(!(_loc9_ && _loc3_))
                  {
                     if(!(_loc9_ && param1))
                     {
                        _loc6_ = 0;
                        addr218:
                        if(_loc8_)
                        {
                           addr155:
                           _loc7_ = this.§>F§;
                           §§push(§§hasnext(_loc7_,_loc6_));
                           break;
                        }
                     }
                     return;
                  }
                  §§goto(addr155);
               }
               §§goto(addr218);
            }
            break;
         }
         while(§§pop())
         {
            _loc3_ = §§nextvalue(_loc6_,_loc7_);
            (_loc5_ = new §?!F§(_loc3_.type,_loc3_.index1,_loc3_.index2,_loc3_.point1,_loc3_.point2,_loc3_.§+k§,_loc3_.§`^§,_loc3_.lowerLimit,_loc3_.upperLimit,_loc3_.§]!T§,_loc3_.motorSpeed,_loc3_.§13§,_loc3_.maxTorque)).§<3§ = _loc3_.§<3§;
            if(_loc8_)
            {
               param1.§%!>§(_loc5_);
            }
            §§goto(addr155);
         }
         §§goto(addr217);
      }
      
      public function §#!^§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:int = 0;
         while(true)
         {
            if(this.§@!Z§.length <= _loc1_)
            {
               if(_loc2_)
               {
                  if(_loc2_ || _loc1_)
                  {
                     break;
                  }
               }
               else
               {
                  addr66:
                  if(!_loc3_)
                  {
                     continue;
                  }
                  addr77:
                  _loc1_++;
               }
               continue;
            }
            if(!this.§@!Z§[_loc1_].isGround())
            {
               this.§8`§(this.§@!Z§[_loc1_]);
               §§goto(addr66);
            }
            §§goto(addr77);
         }
      }
      
      public function §7!r§(param1:Point, param2:Point) : Array
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:Array = new Array();
         var _loc4_:* = Number(0);
         while(true)
         {
            §§push(_loc4_);
            if(!_loc6_)
            {
               if(!_loc6_)
               {
                  if(§§pop() >= this.§@!Z§.length)
                  {
                     if(!(_loc6_ && _loc3_))
                     {
                        break;
                     }
                     while(true)
                     {
                        if(_loc5_)
                        {
                           if(_loc5_)
                           {
                              break;
                           }
                           addr93:
                           while(true)
                           {
                              _loc3_.push(this.§@!Z§[_loc4_]);
                           }
                        }
                        while(true)
                        {
                        }
                     }
                     continue;
                     addr72:
                  }
                  else if(this.§@!Z§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
                  {
                     §§goto(addr93);
                  }
                  while(true)
                  {
                     §§push(_loc4_);
                  }
               }
               while(true)
               {
                  §§push(§§pop() + 1);
                  if(_loc5_)
                  {
                     §§push(Number(§§pop()));
                  }
               }
            }
            while(true)
            {
               _loc4_ = §§pop();
               §§goto(addr72);
            }
         }
         return _loc3_;
      }
      
      public function setGroundTextureEnabled(param1:Boolean) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc2_))
         {
            this.§@!l§ = param1;
            if(_loc3_ || param1)
            {
               addr33:
               this.§0Y§(param1);
            }
            var _loc2_:* = Number(0);
            while(true)
            {
               §§push(_loc2_);
               if(_loc3_ || _loc3_)
               {
                  if(§§pop() >= this.§@!Z§.length)
                  {
                     if(!_loc4_)
                     {
                        break;
                     }
                     while(!_loc3_)
                     {
                        while(true)
                        {
                        }
                     }
                     continue;
                     addr92:
                  }
                  else if(this.§@!Z§[_loc2_].isTexture())
                  {
                     if(!_loc4_)
                     {
                        this.§@!Z§[_loc2_].sprite.visible = !this.§@!l§;
                     }
                     §§goto(addr114);
                  }
                  while(true)
                  {
                     §§push(_loc2_);
                     if(_loc3_)
                     {
                        §§push(§§pop() + 1);
                        if(_loc4_ && this)
                        {
                        }
                        while(true)
                        {
                           _loc2_ = §§pop();
                           §§goto(addr92);
                        }
                        addr91:
                     }
                  }
               }
               §§goto(addr91);
            }
            return;
         }
         §§goto(addr33);
      }
      
      public function setDamageEnabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§8"2§ = param1;
         }
      }
      
      public function §%!Q§() : Boolean
      {
         return this.§8"2§;
      }
      
      public function §+<§() : int
      {
         return this.§^o§;
      }
      
      public function §9!w§() : int
      {
         return this.§9!^§;
      }
      
      public function §+!#§(param1:String) : §[!8§
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§[!8§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§@!Z§.length)
         {
            _loc3_ = this.§@!Z§[_loc2_] as §[!8§;
            if(_loc5_)
            {
               if(_loc3_.uniqueID == param1)
               {
                  if(!(_loc4_ && this))
                  {
                     return _loc3_;
                  }
               }
               else
               {
                  _loc2_++;
               }
            }
         }
         return null;
      }
   }
}
