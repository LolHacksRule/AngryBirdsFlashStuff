package § var§
{
   import § ! §.§=!%§;
   import § ! §.§>p§;
   import §"!i§.§"!'§;
   import §&H§.b2Vec2;
   import §0S§.§ L§;
   import §0S§.§4K§;
   import §0S§.§6!D§;
   import §0S§.§6R§;
   import §0S§.§7!Z§;
   import §1!B§.§<m§;
   import §2!'§.b2PrismaticJoint;
   import §2!'§.b2RevoluteJoint;
   import §2!'§.b2WeldJoint;
   import §2@§.§%E§;
   import §40§.§-!8§;
   import §40§.§2!y§;
   import §40§.§5G§;
   import §40§.§[l§;
   import §5<§.§ r§;
   import §5<§.§-H§;
   import §5<§.§;!8§;
   import §5<§.§<n§;
   import §=`§.§#`§;
   import §?]§.Texture;
   import §[!b§.§-!Q§;
   import §`g§.§"<§;
   import §`g§.Sprite;
   import flash.display.BitmapData;
   import flash.display.BitmapDataChannel;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class § 4§
   {
       
      
      protected var §7-§:Vector.<§!u§>;
      
      protected var §"!5§:int;
      
      public var §#!U§:§5G§;
      
      public var §0T§:Vector.<§3!b§>;
      
      protected var §2r§:Sprite;
      
      protected var §4G§:Sprite;
      
      private var §;!j§:Sprite;
      
      private var §]@§:Sprite;
      
      private var §!![§:Sprite;
      
      protected var §import§:Vector.<Texture>;
      
      protected var §"!§:Vector.<§;!8§>;
      
      protected var §7_§:int = 1;
      
      public var mMightyEagleAdded:Boolean = false;
      
      public var mMightyEagleHasTouchedGround:Boolean = false;
      
      public var §!"§:Boolean = false;
      
      public var mSardineCanAdded:Boolean = false;
      
      public var mMightyEagleTimer:Number = 0;
      
      protected var §>A§:Boolean = false;
      
      protected var §4"#§:Number;
      
      protected var §@!b§:int;
      
      protected var §&!e§:Vector.<§ r§>;
      
      protected var §-!g§:int = 0;
      
      private var §,!^§:int = 0;
      
      private var §[I§:int = 0;
      
      protected var §3!S§:int;
      
      private var §"i§:Boolean = true;
      
      private var §<^§:Boolean = true;
      
      public function § 4§(param1:§5G§, param2:§"!'§, param3:Sprite)
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         var _loc5_:§;!8§ = null;
         var _loc6_:§<n§ = null;
         var _loc7_:§!u§ = null;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:§!u§ = null;
         var _loc11_:§!u§ = null;
         if(!(_loc15_ && param1))
         {
            this.§7-§ = new Vector.<§!u§>();
            while(true)
            {
               this.§0T§ = new Vector.<§3!b§>();
               while(true)
               {
                  this.§import§ = new Vector.<Texture>();
                  loop2:
                  for(; !_loc15_; while(!(_loc15_ && param2))
                  {
                     this.§"i§ = true;
                     §§goto(addr248);
                  })
                  {
                     this.§4"#§ = this.§2!y§.SARDINE_CAN_INITIAL_ROTATION_SPEED;
                     loop3:
                     while(true)
                     {
                        this.§&!e§ = new Vector.<§ r§>();
                        loop4:
                        while(true)
                        {
                           super();
                           loop5:
                           while(true)
                           {
                              this.§#!U§ = param1;
                              while(true)
                              {
                                 this.§"!5§ = 0;
                                 addr285:
                                 while(true)
                                 {
                                    addr276:
                                    this.§4G§ = param3;
                                    loop8:
                                    while(true)
                                    {
                                       §§push(this.§4G§);
                                       addr264:
                                       while(true)
                                       {
                                          §§pop().§&!U§ = false;
                                          addr266:
                                          while(!_loc15_)
                                          {
                                             continue loop4;
                                          }
                                          continue loop8;
                                       }
                                    }
                                 }
                                 addr169:
                                 if(!(_loc14_ || param1))
                                 {
                                    continue;
                                 }
                                 §§push(this.§4G§);
                                 if(_loc14_ || param3)
                                 {
                                    if(_loc14_)
                                    {
                                       §§pop().addChild(this.§!![§);
                                       loop24:
                                       while(true)
                                       {
                                          if(!_loc15_)
                                          {
                                             continue loop3;
                                          }
                                          addr163:
                                          loop23:
                                          while(true)
                                          {
                                             if(_loc14_)
                                             {
                                                if(!_loc15_)
                                                {
                                                   if(!_loc15_)
                                                   {
                                                      §§goto(addr169);
                                                   }
                                                   loop13:
                                                   while(true)
                                                   {
                                                      this.§;!j§ = new Sprite();
                                                      while(true)
                                                      {
                                                         if(_loc14_)
                                                         {
                                                            this.§]@§ = new Sprite();
                                                            break loop23;
                                                         }
                                                         break;
                                                         addr192:
                                                         if(!(_loc14_ || param1))
                                                         {
                                                            continue;
                                                         }
                                                         if(!_loc15_)
                                                         {
                                                            continue loop5;
                                                         }
                                                         §§goto(addr266);
                                                      }
                                                      addr248:
                                                      while(true)
                                                      {
                                                         this.§2r§ = new Sprite();
                                                         continue loop13;
                                                      }
                                                   }
                                                }
                                                break;
                                             }
                                             addr215:
                                             while(true)
                                             {
                                                §§push(this.§4G§);
                                             }
                                          }
                                          while(true)
                                          {
                                             this.§!![§ = new Sprite();
                                             while(_loc14_)
                                             {
                                                while(true)
                                                {
                                                   §§push(this.§4G§);
                                                   addr212:
                                                   while(true)
                                                   {
                                                      §§pop().addChild(this.§2r§);
                                                      §§goto(addr215);
                                                   }
                                                }
                                                while(_loc14_ || this)
                                                {
                                                   §§goto(addr192);
                                                }
                                             }
                                             continue loop2;
                                          }
                                          while(true)
                                          {
                                             if(_loc14_ || param1)
                                             {
                                                if(!_loc14_)
                                                {
                                                   break;
                                                }
                                                continue;
                                             }
                                             continue loop24;
                                          }
                                          §§goto(addr185);
                                       }
                                       continue loop3;
                                    }
                                    while(!_loc15_)
                                    {
                                       §§pop().addChild(this.§;!j§);
                                       §§goto(addr185);
                                    }
                                    §§goto(addr212);
                                 }
                                 while(true)
                                 {
                                    if(!_loc15_)
                                    {
                                       §§pop().addChild(this.§]@§);
                                       §§goto(addr163);
                                    }
                                    break;
                                    §§goto(addr176);
                                 }
                                 addr176:
                                 §§goto(addr264);
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr223);
      }
      
      protected function get §2!y§() : Class
      {
         return §2!y§;
      }
      
      public function get §<f§() : Sprite
      {
         return this.§!![§;
      }
      
      public function get §1?§() : Sprite
      {
         return this.§4G§;
      }
      
      public function get §["§() : Sprite
      {
         return this.§]@§;
      }
      
      public function dispose() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:Texture = null;
         loop0:
         while(true)
         {
            if(this.§7-§.length > 0)
            {
               this.§9!S§(0);
               continue;
            }
            loop1:
            while(true)
            {
               this.§7-§ = null;
               loop2:
               while(true)
               {
                  this.§&!e§ = null;
                  loop3:
                  for(; _loc2_; loop6:
                  while(!(_loc3_ && this))
                  {
                     this.§4G§ = null;
                     while(_loc2_)
                     {
                        this.§2r§ = null;
                        while(true)
                        {
                           this.§!![§ = null;
                           addr50:
                           while(true)
                           {
                              if(!_loc3_)
                              {
                                 continue loop2;
                              }
                              continue loop6;
                           }
                           continue loop2;
                        }
                        addr28:
                        if(!(_loc2_ || _loc2_))
                        {
                           continue;
                        }
                        if(false)
                        {
                           while(true)
                           {
                              this.§;!j§ = null;
                              if(!_loc3_)
                              {
                                 if(!_loc3_)
                                 {
                                    this.§]@§ = null;
                                    if(!_loc3_)
                                    {
                                       if(_loc2_)
                                       {
                                          §§goto(addr28);
                                       }
                                    }
                                    break;
                                 }
                                 §§goto(addr81);
                                 §§goto(addr50);
                              }
                              break;
                           }
                           §§goto(addr163);
                           addr37:
                        }
                        §§goto(addr144);
                     }
                     §§goto(addr100);
                  })
                  {
                     §§push(this.§4G§);
                     if(!(_loc3_ && _loc2_))
                     {
                        if(!§§pop())
                        {
                           addr158:
                           if(this.§import§.length > 0)
                           {
                              _loc1_ = this.§import§.pop();
                              if(!_loc3_)
                              {
                                 this.§#!U§.textureManager.unregisterBitmapDataTexture(_loc1_);
                              }
                              §§goto(addr158);
                           }
                           addr163:
                           return;
                           addr144:
                        }
                        while(true)
                        {
                           §§push(this.§4G§);
                        }
                        addr100:
                     }
                     while(true)
                     {
                        §§pop().dispose();
                        continue loop3;
                        §§goto(addr100);
                     }
                  }
                  continue loop1;
                  if(_loc3_ && _loc2_)
                  {
                     continue;
                  }
                  if(!(_loc2_ || _loc2_))
                  {
                     continue loop0;
                  }
                  §§goto(addr37);
               }
            }
         }
      }
      
      private function §]o§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§2r§.visible = param1;
         }
      }
      
      private function §4n§() : void
      {
         var _loc16_:Boolean = true;
         var _loc17_:Boolean = false;
         var _loc3_:§!u§ = null;
         var _loc4_:Rectangle = null;
         var _loc5_:* = NaN;
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         var _loc8_:* = 0;
         var _loc9_:* = 0;
         var _loc10_:BitmapData = null;
         var _loc11_:BitmapData = null;
         var _loc12_:Texture = null;
         var _loc13_:§"<§ = null;
         var _loc1_:Rectangle = null;
         var _loc2_:Vector.<§!u§> = new Vector.<§!u§>();
         for each(_loc3_ in this.§7-§)
         {
            if(!(_loc17_ && _loc3_))
            {
               if(!_loc3_.isTexture())
               {
                  continue;
               }
               if(!_loc17_)
               {
                  _loc2_.push(_loc3_);
               }
            }
            _loc4_ = _loc3_.sprite.getBounds(this.§4G§);
            if(_loc16_ || _loc1_)
            {
               if(_loc1_ != null)
               {
                  _loc1_ = _loc1_.union(_loc4_);
                  continue;
               }
            }
            _loc1_ = new Rectangle(_loc4_.x,_loc4_.y,_loc4_.width,_loc4_.height);
         }
         if(_loc16_)
         {
            if(_loc1_)
            {
               loop1:
               while(true)
               {
                  §§push(1);
                  loop2:
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
                                       while(_loc16_)
                                       {
                                          if(!_loc17_)
                                          {
                                             if(_loc16_ || this)
                                             {
                                                §§push(_loc1_.height > 2048);
                                                if(!_loc16_)
                                                {
                                                   continue loop7;
                                                }
                                                if(_loc17_)
                                                {
                                                   continue loop6;
                                                }
                                                while(true)
                                                {
                                                   if(!§§pop())
                                                   {
                                                      loop10:
                                                      while(true)
                                                      {
                                                         §§push(int(_loc1_.width));
                                                         loop11:
                                                         while(true)
                                                         {
                                                            _loc6_ = §§pop();
                                                            loop12:
                                                            while(!(_loc17_ && _loc1_))
                                                            {
                                                               §§push(int(_loc1_.height));
                                                               loop13:
                                                               while(!(_loc17_ && _loc2_))
                                                               {
                                                                  if(!(_loc16_ || _loc1_))
                                                                  {
                                                                     continue loop2;
                                                                  }
                                                                  _loc7_ = §§pop();
                                                                  loop14:
                                                                  for(; !(_loc17_ && _loc1_); while(true)
                                                                  {
                                                                     if(_loc16_ || this)
                                                                     {
                                                                        if(_loc17_ && _loc1_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        continue loop10;
                                                                     }
                                                                     continue loop14;
                                                                  },continue loop12)
                                                                  {
                                                                     do
                                                                     {
                                                                        §§push(int(_loc1_.left));
                                                                        while(!_loc17_)
                                                                        {
                                                                           _loc8_ = §§pop();
                                                                           continue loop14;
                                                                        }
                                                                        continue loop13;
                                                                     }
                                                                     while(false);
                                                                     
                                                                     _loc10_ = new BitmapData(_loc6_,_loc7_,true,0);
                                                                     if(_loc16_)
                                                                     {
                                                                        this.§9k§(_loc10_.rect,_loc10_,_loc5_);
                                                                     }
                                                                     _loc11_ = this.§!M§(_loc2_,_loc6_,_loc7_,_loc8_,_loc9_,_loc5_);
                                                                     if(!(_loc17_ && _loc1_))
                                                                     {
                                                                        _loc10_.copyChannel(_loc11_,_loc11_.rect,new Point(0,0),BitmapDataChannel.ALPHA,BitmapDataChannel.ALPHA);
                                                                     }
                                                                     _loc12_ = this.§#!U§.textureManager.getTextureFromBitmapData(_loc10_);
                                                                     if(_loc16_)
                                                                     {
                                                                        this.§import§.push(_loc12_);
                                                                     }
                                                                     (_loc13_ = new §"<§(_loc12_)).x = _loc8_ / _loc5_;
                                                                     if(_loc16_ || _loc2_)
                                                                     {
                                                                        _loc13_.y = _loc9_ / _loc5_;
                                                                        _loc13_.scaleX = 1 / _loc5_;
                                                                        addr444:
                                                                        if(_loc16_)
                                                                        {
                                                                           _loc13_.scaleY = 1 / _loc5_;
                                                                           addr435:
                                                                           if(_loc16_)
                                                                           {
                                                                              addr423:
                                                                              this.§2r§.addChild(_loc13_);
                                                                              _loc11_.dispose();
                                                                              if(_loc16_ || _loc3_)
                                                                              {
                                                                                 if(!_loc17_)
                                                                                 {
                                                                                    if(false)
                                                                                    {
                                                                                       §§goto(addr423);
                                                                                    }
                                                                                    §§goto(addr453);
                                                                                 }
                                                                                 §§goto(addr435);
                                                                              }
                                                                              addr428:
                                                                              §§goto(addr428);
                                                                           }
                                                                           §§goto(addr444);
                                                                           addr446:
                                                                        }
                                                                        addr452:
                                                                        §§goto(addr452);
                                                                     }
                                                                     §§goto(addr446);
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     _loc1_.right /= 2;
                                                                     addr297:
                                                                     while(true)
                                                                     {
                                                                        _loc1_.bottom /= 2;
                                                                        addr289:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc5_);
                                                                           if(_loc16_ || this)
                                                                           {
                                                                              §§push(§§pop() / 2);
                                                                              if(!(_loc17_ && this))
                                                                              {
                                                                                 addr275:
                                                                                 §§push(Number(§§pop()));
                                                                              }
                                                                              if(_loc16_)
                                                                              {
                                                                                 _loc5_ = §§pop();
                                                                                 break loop8;
                                                                              }
                                                                              continue loop3;
                                                                           }
                                                                           §§goto(addr275);
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               continue loop11;
                                                            }
                                                            continue loop4;
                                                         }
                                                         if(!(_loc16_ || _loc2_))
                                                         {
                                                            continue;
                                                         }
                                                         if(_loc16_ || _loc3_)
                                                         {
                                                            §§push(int(_loc1_.top));
                                                            if(!(_loc17_ && this))
                                                            {
                                                               _loc9_ = §§pop();
                                                               if(_loc16_)
                                                               {
                                                                  if(!_loc16_)
                                                                  {
                                                                     continue loop8;
                                                                  }
                                                                  §§goto(addr139);
                                                               }
                                                               §§goto(addr148);
                                                            }
                                                            §§goto(addr145);
                                                         }
                                                         _loc1_.top /= 2;
                                                         §§goto(addr305);
                                                         addr315:
                                                      }
                                                   }
                                                   else
                                                   {
                                                      _loc1_.left /= 2;
                                                   }
                                                   §§goto(addr315);
                                                }
                                             }
                                             §§goto(addr297);
                                          }
                                          §§goto(addr289);
                                       }
                                       while(true)
                                       {
                                          if(!_loc17_)
                                          {
                                             continue loop5;
                                          }
                                          continue loop1;
                                       }
                                    }
                                 }
                                 §§goto(addr223);
                              }
                           }
                        }
                     }
                  }
               }
            }
            addr453:
            return;
         }
         §§goto(addr305);
      }
      
      private function §!M§(param1:Vector.<§!u§>, param2:int, param3:int, param4:int, param5:int, param6:Number) : BitmapData
      {
         var _loc16_:Boolean = false;
         var _loc17_:Boolean = true;
         var _loc7_:§!u§ = null;
         var _loc11_:§6R§ = null;
         var _loc12_:Array = null;
         var _loc13_:Rectangle = null;
         var _loc8_:BitmapData = new BitmapData(param2,param3,true,0);
         var _loc9_:BitmapData = new BitmapData(1,1,true,4294967295);
         var _loc10_:Matrix = new Matrix();
         loop0:
         for each(_loc7_ in param1)
         {
            _loc12_ = (_loc11_ = _loc7_.§2f§.shape).§4!6§();
            _loc13_ = new Rectangle(_loc12_[0].x / §5G§.§6+§ * param6,_loc12_[0].y / §5G§.§6+§ * param6,(_loc12_[1].x - _loc12_[0].x) / §5G§.§6+§ * param6,(_loc12_[1].y - _loc12_[0].y) / §5G§.§6+§ * param6);
            if(_loc17_)
            {
               _loc10_.identity();
               while(true)
               {
                  _loc10_.scale(_loc13_.width,_loc13_.height);
                  addr163:
                  if(!(_loc17_ || this))
                  {
                     continue;
                  }
                  _loc8_.draw(_loc9_,_loc10_);
                  if(!_loc16_)
                  {
                     if(_loc17_)
                     {
                        if(false)
                        {
                           loop5:
                           while(true)
                           {
                              _loc10_.translate(_loc7_.sprite.x * param6 - param4,_loc7_.sprite.y * param6 - param5);
                              addr161:
                              while(!_loc16_)
                              {
                                 §§goto(addr163);
                              }
                              addr183:
                              while(true)
                              {
                                 continue loop5;
                              }
                           }
                        }
                        continue loop0;
                     }
                     while(!(_loc16_ && param2))
                     {
                        _loc10_.rotate((360 - _loc7_.§3C§()) / 180 * Math.PI);
                        §§goto(addr183);
                     }
                     while(true)
                     {
                        _loc10_.translate(-_loc13_.width / 2,-_loc13_.height / 2);
                        §§goto(addr197);
                     }
                     addr197:
                     addr222:
                  }
                  §§goto(addr161);
               }
            }
            §§goto(addr222);
         }
         if(_loc17_ || param3)
         {
            _loc9_.dispose();
         }
         return _loc8_;
      }
      
      private function §9k§(param1:Rectangle, param2:BitmapData, param3:Number) : void
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
         var _loc13_:* = 0;
         var _loc14_:int = 0;
         var _loc15_:int = 0;
         §§push(this.§#!U§.background.§&^§());
         if(!_loc17_)
         {
            §§push(§§pop());
         }
         var _loc4_:* = §§pop();
         var _loc5_:§#`§;
         if(_loc5_ = this.§#!U§.backgroundTextureManager.§&u§(_loc4_))
         {
            _loc6_ = new BitmapData(_loc5_.bitmapData.width * param3,_loc5_.bitmapData.height * param3);
            (_loc7_ = new Matrix()).scale(param3,param3);
            if(!_loc17_)
            {
               _loc6_.draw(_loc5_.bitmapData,_loc7_,null,null,null,true);
            }
            loop0:
            while(true)
            {
               §§push(int(_loc6_.width));
               loop1:
               while(true)
               {
                  _loc8_ = §§pop();
                  loop2:
                  while(true)
                  {
                     §§push(int(_loc6_.height));
                     loop3:
                     while(true)
                     {
                        _loc9_ = §§pop();
                        while(true)
                        {
                           §§push(param1.top / _loc9_);
                           loop5:
                           while(true)
                           {
                              §§push(int(§§pop()));
                              loop6:
                              while(true)
                              {
                                 _loc10_ = §§pop();
                                 while(true)
                                 {
                                    if(param1.top < 0)
                                    {
                                       while(!(_loc17_ && param1))
                                       {
                                          §§push(_loc10_);
                                          if(_loc16_)
                                          {
                                             §§push(§§pop() - 1);
                                          }
                                          while(true)
                                          {
                                             _loc10_ = §§pop();
                                             addr368:
                                             while(true)
                                             {
                                             }
                                             addr332:
                                             loop16:
                                             while(!(_loc17_ && this))
                                             {
                                                _loc11_ = §§pop();
                                                while(true)
                                                {
                                                   §§push(param1.left / _loc8_);
                                                   addr309:
                                                   addr328:
                                                   while(_loc16_)
                                                   {
                                                      §§push(int(§§pop()));
                                                      while(_loc16_)
                                                      {
                                                         _loc12_ = §§pop();
                                                         continue loop0;
                                                      }
                                                      continue loop3;
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(int(§§pop()));
                                                      addr329:
                                                      while(true)
                                                      {
                                                         §§push(§§pop());
                                                         addr330:
                                                         while(true)
                                                         {
                                                            _loc11_ = §§pop();
                                                            addr331:
                                                            while(true)
                                                            {
                                                               continue loop16;
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          if(_loc17_ && param1)
                                          {
                                             continue;
                                          }
                                          §§push(_loc12_);
                                          if(!(_loc17_ && param2))
                                          {
                                             if(!_loc16_)
                                             {
                                                continue loop6;
                                             }
                                             §§push(§§pop() - 1);
                                          }
                                          while(true)
                                          {
                                             if(_loc16_ || param2)
                                             {
                                                _loc12_ = §§pop();
                                                loop22:
                                                while(true)
                                                {
                                                   addr231:
                                                   while(true)
                                                   {
                                                      §§push(param1.right / _loc8_);
                                                      if(!_loc17_)
                                                      {
                                                         if(_loc17_)
                                                         {
                                                            break;
                                                         }
                                                         §§push(int(§§pop()));
                                                         if(!_loc17_)
                                                         {
                                                            if(_loc16_)
                                                            {
                                                               §§push(§§pop());
                                                               if(_loc16_)
                                                               {
                                                                  _loc13_ = §§pop();
                                                                  loop24:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() + 1);
                                                                     addr250:
                                                                     while(true)
                                                                     {
                                                                        if(!_loc17_)
                                                                        {
                                                                           if(!(_loc16_ || this))
                                                                           {
                                                                              break;
                                                                           }
                                                                           _loc13_ = §§pop();
                                                                           while(true)
                                                                           {
                                                                              if(_loc16_)
                                                                              {
                                                                                 if(_loc16_)
                                                                                 {
                                                                                    §§push(_loc12_);
                                                                                    if(_loc16_ || param1)
                                                                                    {
                                                                                       if(_loc17_ && param2)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       continue loop24;
                                                                                    }
                                                                                    addr207:
                                                                                    if(!_loc17_)
                                                                                    {
                                                                                       continue;
                                                                                    }
                                                                                    continue loop1;
                                                                                 }
                                                                                 continue loop2;
                                                                              }
                                                                              §§goto(addr340);
                                                                           }
                                                                           continue;
                                                                        }
                                                                        §§goto(addr312);
                                                                     }
                                                                     §§goto(addr331);
                                                                  }
                                                               }
                                                               §§goto(addr330);
                                                            }
                                                            §§goto(addr332);
                                                         }
                                                         §§goto(addr250);
                                                      }
                                                      §§goto(addr309);
                                                      continue loop22;
                                                   }
                                                   continue loop5;
                                                }
                                                addr303:
                                             }
                                             break;
                                             if(_loc17_ && param1)
                                             {
                                                continue;
                                             }
                                             §§goto(addr207);
                                             §§push(int(§§pop()));
                                          }
                                          §§goto(addr329);
                                       }
                                       continue;
                                    }
                                    while(true)
                                    {
                                       §§goto(addr328);
                                       §§goto(addr368);
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
         §§goto(addr113);
      }
      
      public function §`1§(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §!u§
      {
         var _loc10_:§4K§ = §7!Z§.§`!H§(param2);
         return new §%!"§(this,param1,this.§#!U§.mLevelEngine.mWorld,this.§#!U§,this.§"!5§,param2,param3,param4,param5,param9,_loc10_.particleJSONId,_loc10_.particleVariationCount);
      }
      
      public function §7M§(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §!u§
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc10_:§!u§ = null;
         var _loc11_:* = param2;
         if(_loc12_)
         {
            §§push("BIRD_BLACK");
            if(_loc12_ || param3)
            {
               §§push(_loc11_);
               if(_loc12_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(_loc12_ || this)
                     {
                        §§push(0);
                        if(_loc13_ && param3)
                        {
                           addr311:
                        }
                     }
                     else
                     {
                        addr359:
                        §§push(4);
                        if(!(_loc13_ && this))
                        {
                           addr367:
                        }
                        else
                        {
                           addr423:
                        }
                     }
                  }
                  else
                  {
                     §§push("BIRD_BLUE");
                     if(!(_loc13_ && this))
                     {
                        §§push(_loc11_);
                        if(_loc12_ || this)
                        {
                           if(§§pop() === §§pop())
                           {
                              if(!_loc13_)
                              {
                                 §§push(1);
                                 if(_loc12_ || param3)
                                 {
                                 }
                                 §§goto(addr435);
                              }
                              else
                              {
                                 §§goto(addr303);
                              }
                           }
                           else
                           {
                              §§push("BIRD_GREEN");
                              if(!_loc13_)
                              {
                                 §§push(_loc11_);
                                 if(!_loc13_)
                                 {
                                    if(§§pop() === §§pop())
                                    {
                                       if(_loc12_ || this)
                                       {
                                          addr303:
                                          §§push(2);
                                          if(!(_loc12_ || param1))
                                          {
                                             addr430:
                                          }
                                          §§goto(addr435);
                                       }
                                       else
                                       {
                                          §§goto(addr359);
                                       }
                                    }
                                    else
                                    {
                                       §§push("BIRD_WHITE");
                                       if(_loc12_ || this)
                                       {
                                          §§push(_loc11_);
                                          if(_loc12_ || param1)
                                          {
                                             addr328:
                                             if(§§pop() === §§pop())
                                             {
                                                if(!(_loc13_ && param3))
                                                {
                                                   §§push(3);
                                                   if(_loc12_ || param3)
                                                   {
                                                   }
                                                   §§goto(addr435);
                                                }
                                                else
                                                {
                                                   §§goto(addr359);
                                                }
                                             }
                                             else
                                             {
                                                §§push("BIRD_YELLOW");
                                                if(_loc12_)
                                                {
                                                   §§push(_loc11_);
                                                   if(_loc12_ || this)
                                                   {
                                                      addr356:
                                                      if(§§pop() === §§pop())
                                                      {
                                                         if(!_loc13_)
                                                         {
                                                            §§goto(addr359);
                                                         }
                                                         else
                                                         {
                                                            addr387:
                                                            §§push(5);
                                                            if(!_loc13_)
                                                            {
                                                               §§goto(addr435);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr430);
                                                            }
                                                         }
                                                         §§goto(addr435);
                                                      }
                                                      else
                                                      {
                                                         §§push("BIRD_RED");
                                                         if(!(_loc13_ && param3))
                                                         {
                                                            addr376:
                                                            §§push(_loc11_);
                                                            if(!_loc13_)
                                                            {
                                                               addr379:
                                                               if(§§pop() === §§pop())
                                                               {
                                                                  if(_loc12_ || this)
                                                                  {
                                                                     §§goto(addr387);
                                                                  }
                                                                  else
                                                                  {
                                                                     addr420:
                                                                     §§push(6);
                                                                     if(!_loc13_)
                                                                     {
                                                                        §§goto(addr423);
                                                                     }
                                                                     §§goto(addr435);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§push("BIRD_REDBIG");
                                                                  if(_loc12_ || param1)
                                                                  {
                                                                     addr399:
                                                                     §§push(_loc11_);
                                                                     if(_loc13_ && this)
                                                                     {
                                                                     }
                                                                     addr426:
                                                                     if(§§pop() === §§pop())
                                                                     {
                                                                        addr427:
                                                                        §§push(7);
                                                                        if(_loc12_)
                                                                        {
                                                                           §§goto(addr430);
                                                                        }
                                                                        §§goto(addr435);
                                                                     }
                                                                     else
                                                                     {
                                                                        addr435:
                                                                        switch(§§pop())
                                                                        {
                                                                           case 0:
                                                                              _loc10_ = new §7!u§(this,param1,this.§#!U§.mLevelEngine.mWorld,this.§#!U§,this.§"!5§,param2,param3,param4,param5,param8,param9);
                                                                              break;
                                                                           case 1:
                                                                              _loc10_ = new §^h§(this,param1,this.§#!U§.mLevelEngine.mWorld,this.§#!U§,this.§"!5§,param2,param3,param4,param5,param8,param9);
                                                                              break;
                                                                           case 2:
                                                                              _loc10_ = new § !B§(this,param1,this.§#!U§.mLevelEngine.mWorld,this.§#!U§,this.§"!5§,param2,param3,param4,param5,param8,param9);
                                                                              break;
                                                                           case 3:
                                                                              _loc10_ = new §1!C§(this,param1,this.§#!U§.mLevelEngine.mWorld,this.§#!U§,this.§"!5§,param2,param3,param4,param5,param8,param9);
                                                                              break;
                                                                           case 4:
                                                                              _loc10_ = new §>!<§(this,param1,this.§#!U§.mLevelEngine.mWorld,this.§#!U§,this.§"!5§,param2,param3,param4,param5,param8,param9);
                                                                              break;
                                                                           case 5:
                                                                              _loc10_ = new §+4§(this,param1,this.§#!U§.mLevelEngine.mWorld,this.§#!U§,this.§"!5§,param2,param3,param4,param5,param8,param9);
                                                                              break;
                                                                           case 6:
                                                                              _loc10_ = new §1O§(this,param1,this.§#!U§.mLevelEngine.mWorld,this.§#!U§,this.§"!5§,param2,param3,param4,param5,param8,param9);
                                                                              break;
                                                                           case 7:
                                                                              _loc10_ = new § !V§(this,param1,this.§#!U§.mLevelEngine.mWorld,this.§#!U§,this.§"!5§,param2,param3,param4,param5,param8,param9);
                                                                              break;
                                                                           default:
                                                                              _loc10_ = new §3!5§(this,param1,this.§#!U§.mLevelEngine.mWorld,this.§#!U§,this.§"!5§,param2,param3,param4,param5,param8,param9);
                                                                        }
                                                                        return _loc10_;
                                                                        §§push(8);
                                                                     }
                                                                     §§goto(addr435);
                                                                  }
                                                                  addr425:
                                                                  §§goto(addr426);
                                                                  §§push(_loc11_);
                                                               }
                                                               §§goto(addr435);
                                                            }
                                                            if(§§pop() === §§pop())
                                                            {
                                                               if(!_loc13_)
                                                               {
                                                                  §§goto(addr420);
                                                               }
                                                               §§goto(addr435);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr425);
                                                               §§push("BIRD_ORANGE");
                                                            }
                                                            §§goto(addr427);
                                                         }
                                                         §§goto(addr399);
                                                      }
                                                   }
                                                   §§goto(addr379);
                                                }
                                                §§goto(addr399);
                                             }
                                             §§goto(addr435);
                                          }
                                          §§goto(addr399);
                                       }
                                       §§goto(addr425);
                                    }
                                    §§goto(addr435);
                                 }
                                 §§goto(addr356);
                              }
                              §§goto(addr399);
                           }
                           §§goto(addr435);
                        }
                        §§goto(addr328);
                     }
                     §§goto(addr425);
                  }
                  §§goto(addr435);
               }
               §§goto(addr379);
            }
            §§goto(addr376);
         }
         §§goto(addr387);
      }
      
      public function hasBirds() : Boolean
      {
         return this.§-!g§ > 0;
      }
      
      public function addObject(param1:String, param2:Number, param3:Number, param4:Number = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = true, param8:Number = 1.0, param9:Boolean = false) : §!u§
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         var _loc10_:Sprite;
         (_loc10_ = new Sprite()).scaleX = param8;
         if(_loc15_ || this)
         {
            _loc10_.scaleY = param8;
         }
         var _loc11_:§!u§;
         if(!(_loc11_ = this.createObject(_loc10_,param1,param2,param3,param4,param5,param6,param7,param8)))
         {
            if(!(_loc14_ && param1))
            {
               return null;
            }
            loop20:
            while(true)
            {
               this.§;!j§.addChild(_loc10_);
               if(!_loc14_)
               {
                  if(false)
                  {
                     loop0:
                     while(true)
                     {
                        §§push(_loc11_ is §3!5§);
                        if(!_loc14_)
                        {
                           §§push(§§pop());
                           if(_loc15_ || param2)
                           {
                              if(§§pop())
                              {
                                 if(!_loc14_)
                                 {
                                    §§pop();
                                    if(_loc15_ || param1)
                                    {
                                       §§push(_loc11_.§'!j§());
                                       if(!(_loc14_ && this))
                                       {
                                          §§push(!§§pop());
                                          if(!_loc14_)
                                          {
                                             addr74:
                                             if(§§pop())
                                             {
                                                if(_loc15_ || this)
                                                {
                                                   if(_loc15_ || this)
                                                   {
                                                      continue loop20;
                                                   }
                                                   addr175:
                                                   while(true)
                                                   {
                                                      §§push(_loc10_);
                                                      §§push(this.§"i§);
                                                      if(_loc15_ || param2)
                                                      {
                                                         §§push(!§§pop());
                                                      }
                                                      §§pop().visible = §§pop();
                                                      addr187:
                                                      while(true)
                                                      {
                                                         this.§7-§[this.§7-§.length] = _loc11_;
                                                         if(_loc14_)
                                                         {
                                                            break;
                                                         }
                                                         continue loop0;
                                                      }
                                                      addr311:
                                                      while(true)
                                                      {
                                                         this.§!![§.addChild(_loc10_);
                                                         addr315:
                                                         addr304:
                                                         while(true)
                                                         {
                                                         }
                                                         if(_loc15_ || param1)
                                                         {
                                                            continue;
                                                         }
                                                         §§goto(addr315);
                                                      }
                                                   }
                                                }
                                                else
                                                {
                                                   addr205:
                                                }
                                                loop3:
                                                while(true)
                                                {
                                                   §§push(param5);
                                                   loop4:
                                                   while(_loc15_)
                                                   {
                                                      if(!(_loc14_ && this))
                                                      {
                                                         if(§§pop())
                                                         {
                                                            loop5:
                                                            while(true)
                                                            {
                                                               §§push(this.§#!U§);
                                                               addr260:
                                                               while(true)
                                                               {
                                                                  §§pop().§`6§(_loc11_);
                                                                  loop7:
                                                                  while(!(_loc14_ && param2))
                                                                  {
                                                                     if(_loc15_ || param1)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§push(param6);
                                                                           if(_loc14_ && param3)
                                                                           {
                                                                              continue loop4;
                                                                           }
                                                                           if(_loc15_)
                                                                           {
                                                                              if(!§§pop())
                                                                              {
                                                                                 break;
                                                                              }
                                                                              if(!_loc15_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              addr245:
                                                                              addr245:
                                                                              if(_loc15_)
                                                                              {
                                                                                 continue loop5;
                                                                              }
                                                                              continue loop7;
                                                                           }
                                                                           addr329:
                                                                           while(true)
                                                                           {
                                                                              §§pop();
                                                                              addr330:
                                                                              while(true)
                                                                              {
                                                                                 §§push(param9);
                                                                                 addr289:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(Boolean(§§pop()));
                                                                                    break loop4;
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        return _loc11_;
                                                                        addr211:
                                                                     }
                                                                     §§goto(addr315);
                                                                  }
                                                                  addr284:
                                                                  while(!_loc14_)
                                                                  {
                                                                     continue loop3;
                                                                  }
                                                                  §§goto(addr330);
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr211);
                                                      }
                                                      §§goto(addr289);
                                                   }
                                                   while(true)
                                                   {
                                                      if(_loc14_)
                                                      {
                                                         addr319:
                                                         while(true)
                                                         {
                                                            §§push(Boolean(§§pop()));
                                                            if(!(_loc14_ && this))
                                                            {
                                                               §§push(§§pop());
                                                               while(true)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        break loop0;
                                                                     }
                                                                     addr302:
                                                                  }
                                                               }
                                                               addr328:
                                                            }
                                                            §§goto(addr329);
                                                         }
                                                         addr319:
                                                      }
                                                      §§goto(addr302);
                                                      §§goto(addr289);
                                                   }
                                                   §§goto(addr304);
                                                }
                                             }
                                             else
                                             {
                                                §§goto(addr319);
                                                §§push(_loc11_.front);
                                             }
                                             §§goto(addr319);
                                          }
                                          break;
                                       }
                                       §§goto(addr289);
                                    }
                                    §§goto(addr315);
                                 }
                                 §§goto(addr289);
                              }
                              §§goto(addr74);
                           }
                           §§goto(addr328);
                        }
                        break;
                     }
                     while(true)
                     {
                        if(§§pop())
                        {
                           §§goto(addr304);
                        }
                        else
                        {
                           this.§]@§.addChild(_loc10_);
                        }
                        §§goto(addr284);
                     }
                     addr98:
                  }
                  else
                  {
                     var _loc12_:*;
                     §§push((_loc12_ = this).§-!g§);
                     if(_loc15_)
                     {
                        §§push(§§pop() + 1);
                     }
                     var _loc13_:* = §§pop();
                     if(_loc15_)
                     {
                        _loc12_.§-!g§ = _loc13_;
                     }
                     if(_loc15_)
                     {
                        §§goto(addr205);
                     }
                  }
                  §§goto(addr245);
               }
               §§goto(addr311);
            }
         }
         else
         {
            §§push(_loc11_.isTexture());
            if(_loc15_)
            {
               if(!§§pop())
               {
                  this.§7-§[this.§7-§.length] = _loc11_;
                  if(_loc15_ || this)
                  {
                     if(!(_loc14_ && param2))
                     {
                        §§goto(addr98);
                     }
                     §§goto(addr187);
                  }
                  §§goto(addr286);
               }
               §§goto(addr175);
            }
         }
         §§goto(addr319);
      }
      
      public function §#^§(param1:int, param2:§!u§, param3:§!u§, param4:Boolean = false, param5:Boolean = false, param6:Number = 0.0, param7:Number = 0.0, param8:Boolean = false, param9:Number = 0.0, param10:Boolean = false, param11:Number = 0.0, param12:Number = 0, param13:Number = 0.0, param14:Number = 0.0) : void
      {
         var _loc21_:Boolean = false;
         var _loc22_:Boolean = true;
         var _loc17_:§;!8§ = null;
         var _loc18_:* = 0;
         var _loc19_:* = 0;
         var _loc20_:§ r§ = null;
         var _loc15_:int = this.§7-§.indexOf(param2) - this.§3!S§;
         var _loc16_:int = this.§7-§.indexOf(param3) - this.§3!S§;
         if(_loc22_)
         {
            §§push(_loc15_);
            if(!(_loc21_ && this))
            {
               §§push(0);
               if(!(_loc21_ && this))
               {
                  §§push(§§pop() >= §§pop());
                  if(_loc22_ || this)
                  {
                     if(§§pop())
                     {
                        if(_loc22_)
                        {
                           §§pop();
                           addr82:
                           if(_loc22_)
                           {
                              addr80:
                              §§push(_loc16_ >= 0);
                           }
                           _loc17_ = new §;!8§(param1,_loc15_,_loc16_,new Point(0,0),new Point(0,0),param4,param5,param6,param7,param8,param9,param10,param11);
                           if(_loc22_)
                           {
                              this.§"!§.push(_loc17_);
                              while(true)
                              {
                                 _loc17_.§2,§ = param12;
                                 loop1:
                                 while(!(_loc21_ && this))
                                 {
                                    _loc17_.axisX = param13;
                                    while(true)
                                    {
                                       _loc17_.axisY = param14;
                                       loop3:
                                       while(_loc22_ || param3)
                                       {
                                          §§push(param1);
                                          loop4:
                                          while(§§pop() == §-H§.§1!4§)
                                          {
                                             §§push(int(parseInt(param2.uniqueID)));
                                             loop5:
                                             while(true)
                                             {
                                                _loc18_ = §§pop();
                                                addr165:
                                                while(true)
                                                {
                                                   §§push(int(parseInt(param3.uniqueID)));
                                                   if(_loc22_)
                                                   {
                                                      if(!_loc21_)
                                                      {
                                                         _loc19_ = §§pop();
                                                         if(!(_loc21_ && param3))
                                                         {
                                                            if(_loc21_ && param1)
                                                            {
                                                               break;
                                                            }
                                                            if(!(_loc22_ || param1))
                                                            {
                                                               break loop4;
                                                            }
                                                            if(!_loc21_)
                                                            {
                                                               if(!_loc21_)
                                                               {
                                                                  if(true)
                                                                  {
                                                                     _loc20_ = new § r§(_loc18_,_loc19_,param12);
                                                                     if(!(_loc21_ && param3))
                                                                     {
                                                                        this.§&!e§.push(_loc20_);
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     addr156:
                                                                  }
                                                                  §§goto(addr245);
                                                               }
                                                               continue loop1;
                                                            }
                                                            continue loop3;
                                                         }
                                                         continue;
                                                      }
                                                      continue loop4;
                                                   }
                                                   continue loop5;
                                                }
                                                addr182:
                                                §§goto(addr156);
                                             }
                                          }
                                          _loc17_.§1q§ = this.§#!U§.mLevelEngine.mWorld.§!<§(_loc17_.§`!h§(param2,param3));
                                          §§goto(addr182);
                                       }
                                    }
                                 }
                              }
                           }
                           §§goto(addr165);
                        }
                     }
                  }
                  if(§§pop())
                  {
                     §§goto(addr82);
                  }
                  addr245:
                  return;
               }
            }
            §§goto(addr80);
         }
         §§goto(addr82);
      }
      
      public function §`]§(param1:§;!8§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            if(!(param1.§1q§ is b2WeldJoint))
            {
               if(_loc5_ || _loc2_)
               {
                  return;
               }
            }
         }
         var _loc2_:§!u§ = this.§ !X§(param1.index1 + this.§3!S§);
         var _loc3_:§!u§ = this.§ !X§(param1.index2 + this.§3!S§);
         if(_loc5_)
         {
            this.§#!U§.mLevelEngine.mWorld.§<!]§(param1.§1q§);
         }
         do
         {
            param1.§1q§ = this.§#!U§.mLevelEngine.mWorld.§!<§(param1.§`!h§(_loc2_,_loc3_));
         }
         while(_loc4_ && param1);
         
      }
      
      public function §`!Z§(param1:§!u§) : Vector.<§;!8§>
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc4_:§;!8§ = null;
         var _loc2_:Vector.<§;!8§> = new Vector.<§;!8§>();
         var _loc3_:int = this.§7-§.indexOf(param1) - this.§3!S§;
         if(!(_loc8_ && _loc3_))
         {
            §§push(_loc3_);
            if(!(_loc8_ && param1))
            {
               if(§§pop() >= 0)
               {
                  addr62:
                  addr51:
                  for each(_loc4_ in this.§"!§)
                  {
                     §§push(_loc4_.index1 == _loc3_);
                     if(!(_loc8_ && this))
                     {
                        if(!§§pop())
                        {
                           if(!(_loc8_ && _loc3_))
                           {
                              addr104:
                              §§pop();
                              if(_loc7_ || param1)
                              {
                                 addr116:
                                 if(_loc4_.index2 != _loc3_)
                                 {
                                    continue;
                                 }
                                 if(_loc8_ && param1)
                                 {
                                    continue;
                                 }
                              }
                              _loc2_.push(_loc4_);
                              continue;
                           }
                        }
                        §§goto(addr116);
                     }
                     §§goto(addr104);
                  }
               }
               return _loc2_;
            }
            §§goto(addr62);
         }
         §§goto(addr51);
      }
      
      public function §7x§() : Vector.<§;!8§>
      {
         return this.§"!§;
      }
      
      public function §%_§(param1:§!u§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:int = this.§7-§.indexOf(param1) - this.§3!S§;
         var _loc3_:* = int(this.§"!§.length - 1);
         while(true)
         {
            §§push(_loc3_);
            if(_loc5_)
            {
               if(§§pop() < 0)
               {
                  if(!_loc4_)
                  {
                     if(!(_loc4_ && _loc3_))
                     {
                        if(_loc5_ || param1)
                        {
                           break;
                        }
                        while(true)
                        {
                           this.§"!§.splice(_loc3_,1);
                        }
                        addr99:
                     }
                     while(true)
                     {
                        addr68:
                        while(true)
                        {
                           §§push(_loc3_);
                           if(_loc5_)
                           {
                              addr73:
                              §§push(§§pop() - 1);
                              while(true)
                              {
                                 _loc3_ = §§pop();
                              }
                              addr73:
                           }
                           §§goto(addr73);
                        }
                     }
                  }
                  while(_loc4_)
                  {
                     loop6:
                     while(true)
                     {
                        §§push(this.§"!§[_loc3_].index2 == _loc2_);
                        if(!_loc4_)
                        {
                           break;
                        }
                        addr118:
                        while(true)
                        {
                           §§pop();
                           continue loop6;
                        }
                     }
                     while(true)
                     {
                        if(§§pop())
                        {
                           §§goto(addr99);
                        }
                        §§goto(addr68);
                        §§goto(addr119);
                     }
                     addr119:
                  }
                  continue;
               }
               §§push(this.§"!§[_loc3_].index1 == _loc2_);
               if(!_loc4_)
               {
                  if(!§§pop())
                  {
                     §§goto(addr118);
                  }
                  §§goto(addr97);
               }
               §§goto(addr118);
            }
            §§goto(addr73);
         }
      }
      
      protected function §&4§(param1:§!u§) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(param1.uniqueID);
         if(_loc4_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         var _loc3_:* = int(this.§&!e§.length - 1);
         loop0:
         while(true)
         {
            §§push(_loc3_);
            if(_loc4_ || param1)
            {
               if(!(_loc5_ && _loc3_))
               {
                  if(§§pop() < 0)
                  {
                     if(!_loc5_)
                     {
                        if(!_loc5_)
                        {
                           break;
                        }
                        loop2:
                        while(true)
                        {
                           addr74:
                           while(true)
                           {
                              §§push(_loc3_);
                              addr76:
                              while(true)
                              {
                                 §§push(§§pop() - 1);
                                 addr77:
                                 while(true)
                                 {
                                    _loc3_ = §§pop();
                                 }
                              }
                           }
                           addr96:
                           loop1:
                           while(true)
                           {
                              this.§&!e§.splice(_loc3_,1);
                              continue loop2;
                              addr78:
                              while(!(_loc4_ || param1))
                              {
                                 continue loop1;
                              }
                              continue loop0;
                           }
                        }
                     }
                     §§goto(addr78);
                  }
                  else if(this.§&!e§[_loc3_].targetId.toString() == _loc2_)
                  {
                     §§goto(addr96);
                  }
                  §§goto(addr74);
               }
               §§goto(addr76);
            }
            §§goto(addr77);
         }
      }
      
      public function §#+§(param1:§!u§, param2:§!u§) : Boolean
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:int = this.§7-§.indexOf(param1) - this.§3!S§;
         var _loc4_:int = this.§7-§.indexOf(param2) - this.§3!S§;
         var _loc5_:* = int(this.§"!§.length - 1);
         loop0:
         while(true)
         {
            §§push(_loc5_);
            if(_loc6_)
            {
               if(!(_loc7_ && param1))
               {
                  if(§§pop() < 0)
                  {
                     if(_loc6_ || param2)
                     {
                        if(_loc6_)
                        {
                           if(_loc6_ || this)
                           {
                              §§push(false);
                              if(_loc6_ || _loc3_)
                              {
                                 if(_loc6_ || param1)
                                 {
                                    if(_loc6_ || this)
                                    {
                                       if(!_loc7_)
                                       {
                                          break;
                                       }
                                       loop2:
                                       while(true)
                                       {
                                          if(_loc6_)
                                          {
                                             loop3:
                                             while(true)
                                             {
                                                §§push(§§pop());
                                                loop4:
                                                while(true)
                                                {
                                                   if(!§§pop())
                                                   {
                                                      loop5:
                                                      while(true)
                                                      {
                                                         §§pop();
                                                         addr202:
                                                         while(true)
                                                         {
                                                            §§push(this.§"!§[_loc5_].index1 == _loc4_);
                                                            addr158:
                                                            while(true)
                                                            {
                                                               if(_loc6_)
                                                               {
                                                                  §§push(§§pop());
                                                                  if(_loc7_ && this)
                                                                  {
                                                                     continue loop4;
                                                                  }
                                                                  if(!(_loc7_ && param1))
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        loop8:
                                                                        while(true)
                                                                        {
                                                                           §§pop();
                                                                           loop9:
                                                                           while(true)
                                                                           {
                                                                              §§push(this.§"!§[_loc5_].index2 == _loc3_);
                                                                              addr122:
                                                                              while(true)
                                                                              {
                                                                                 addr123:
                                                                                 while(true)
                                                                                 {
                                                                                    if(!§§pop())
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc5_);
                                                                                          addr109:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop() - 1);
                                                                                             addr110:
                                                                                             while(true)
                                                                                             {
                                                                                                _loc5_ = §§pop();
                                                                                                addr111:
                                                                                                while(!_loc6_)
                                                                                                {
                                                                                                }
                                                                                                continue loop0;
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       addr107:
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       if(!_loc7_)
                                                                                       {
                                                                                          §§push(true);
                                                                                          while(true)
                                                                                          {
                                                                                             if(!(_loc7_ && param2))
                                                                                             {
                                                                                                if(_loc6_ || param1)
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                continue loop5;
                                                                                             }
                                                                                             continue loop8;
                                                                                          }
                                                                                          return §§pop();
                                                                                          addr127:
                                                                                       }
                                                                                       continue loop9;
                                                                                    }
                                                                                 }
                                                                                 continue loop9;
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr122);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop());
                                                                  }
                                                                  addr212:
                                                               }
                                                               while(true)
                                                               {
                                                                  if(!§§pop())
                                                                  {
                                                                     continue loop3;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§pop();
                                                                     continue loop2;
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr122);
                                                }
                                             }
                                          }
                                          §§goto(addr214);
                                       }
                                    }
                                    §§goto(addr158);
                                 }
                                 §§goto(addr123);
                              }
                              §§goto(addr127);
                           }
                           §§goto(addr202);
                        }
                        else if(_loc6_ || _loc3_)
                        {
                           §§goto(addr107);
                        }
                        §§goto(addr215);
                     }
                     §§goto(addr111);
                  }
                  else
                  {
                     §§push(this.§"!§[_loc5_].index1 == _loc3_);
                  }
                  §§goto(addr212);
               }
               §§goto(addr109);
            }
            §§goto(addr110);
         }
         return §§pop();
      }
      
      protected function createObject(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §!u§
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         var _loc10_:§!u§ = null;
         var _loc11_:§4K§ = null;
         if(_loc15_)
         {
            §§push(param2);
            if(!(_loc14_ && param2))
            {
               §§push("BIRD");
               if(!(_loc14_ && param1))
               {
                  if(§§pop().indexOf(§§pop()) == 0)
                  {
                     if(_loc15_ || this)
                     {
                        §§goto(addr51);
                     }
                     else
                     {
                        addr104:
                        _loc10_ = this.§`1§(param1,param2,param3,param4,param5,param6,param7,param8,param9);
                     }
                     §§goto(addr310);
                  }
                  else
                  {
                     addr101:
                     if(param2.indexOf("PIG") == 0)
                     {
                        §§goto(addr104);
                     }
                     else
                     {
                        §§push((_loc11_ = §7!Z§.§`!H§(param2)) == null);
                        if(!(_loc14_ && this))
                        {
                           §§push(§§pop());
                           if(_loc15_ || this)
                           {
                              if(§§pop())
                              {
                                 if(_loc15_)
                                 {
                                    §§pop();
                                    if(_loc15_)
                                    {
                                       §§push(param2);
                                       if(_loc15_)
                                       {
                                          §§push(§§pop().indexOf("MISC_") == 0);
                                          if(_loc15_)
                                          {
                                             addr166:
                                             if(§§pop())
                                             {
                                                if(_loc15_ || param1)
                                                {
                                                   addr187:
                                                   §§push("MISC_FOOD_");
                                                   if(_loc15_ || param2)
                                                   {
                                                      §§push(§§pop() + param2.substring(5));
                                                   }
                                                   param2 = §§pop();
                                                   if(_loc14_ && param2)
                                                   {
                                                   }
                                                   §§goto(addr310);
                                                }
                                                _loc11_ = §7!Z§.§`!H§(param2);
                                             }
                                             if(!_loc11_)
                                             {
                                                return null;
                                             }
                                             if(_loc15_)
                                             {
                                                addr204:
                                                §§push(_loc11_.§-!o§);
                                                if(!(_loc14_ && this))
                                                {
                                                   §§push(§4K§.§^!Q§);
                                                   if(_loc15_)
                                                   {
                                                      §§push(§§pop() == §§pop());
                                                      if(_loc15_ || param2)
                                                      {
                                                         addr225:
                                                         if(!§§pop())
                                                         {
                                                            if(_loc15_ || this)
                                                            {
                                                               addr234:
                                                               §§pop();
                                                               if(_loc15_)
                                                               {
                                                                  addr239:
                                                                  §§push(_loc11_.§-!o§);
                                                                  §§push(§4K§.§!!U§);
                                                               }
                                                               §§goto(addr310);
                                                            }
                                                            addr242:
                                                            if(§§pop())
                                                            {
                                                               if(_loc15_ || this)
                                                               {
                                                                  _loc10_ = new §7F§(this,param1,this.§#!U§.mLevelEngine.mWorld,this.§#!U§,this.§"!5§,param2,param3,param4,param5,param9,_loc11_.front,_loc11_.particleJSONId,_loc11_.particleVariationCount);
                                                               }
                                                               §§goto(addr310);
                                                            }
                                                            else
                                                            {
                                                               _loc10_ = new §!u§(this,param1,this.§#!U§.mLevelEngine.mWorld,this.§#!U§,this.§"!5§,param2,param3,param4,param5,param9,_loc11_.front);
                                                            }
                                                            §§goto(addr310);
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr242);
                                                   §§push(§§pop() == §§pop());
                                                }
                                             }
                                             §§goto(addr239);
                                          }
                                          §§goto(addr225);
                                       }
                                       §§goto(addr187);
                                    }
                                    §§goto(addr204);
                                 }
                                 §§goto(addr234);
                              }
                              §§goto(addr166);
                           }
                           §§goto(addr225);
                        }
                        §§goto(addr242);
                     }
                  }
                  §§goto(addr104);
               }
            }
            §§goto(addr101);
         }
         addr51:
         _loc10_ = this.§7M§(param1,param2,param3,param4,param5,param6,param7,param8,param9);
         if(_loc15_ || param3)
         {
            var _loc12_:*;
            §§push((_loc12_ = this).§[I§);
            if(_loc15_)
            {
               §§push(§§pop() + 1);
            }
            var _loc13_:* = §§pop();
            if(_loc15_ || this)
            {
               _loc12_.§[I§ = _loc13_;
            }
            if(_loc15_ || param1)
            {
               addr310:
               _loc10_.uniqueID = this.§,d§();
            }
         }
         return _loc10_;
      }
      
      protected function §,d§() : String
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:§!u§ = null;
         var _loc1_:int = this.§7-§.length;
         var _loc2_:* = false;
         loop0:
         while(true)
         {
            §§push(_loc2_);
            if(!_loc6_)
            {
               while(true)
               {
                  §§push(!§§pop());
               }
               addr112:
            }
            while(§§pop())
            {
               §§push(true);
               if(_loc7_ || _loc3_)
               {
                  _loc2_ = §§pop();
                  if(_loc6_ && _loc1_)
                  {
                     break;
                  }
                  §§push(0);
                  if(!(_loc7_ || _loc3_))
                  {
                     return §§pop().toString();
                  }
                  addr115:
                  for each(_loc3_ in this.§7-§)
                  {
                     if(!(_loc6_ && _loc3_))
                     {
                        if(_loc3_.uniqueID != _loc1_.toString())
                        {
                           continue;
                        }
                        if(!_loc6_)
                        {
                           addr99:
                           _loc1_++;
                           if(!_loc6_)
                           {
                              addr102:
                              _loc2_ = false;
                           }
                           break;
                        }
                        §§goto(addr102);
                     }
                     §§goto(addr99);
                  }
                  continue loop0;
               }
               §§goto(addr112);
            }
            §§goto(addr115);
         }
      }
      
      public function §`!2§(param1:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§!u§ = null;
         var _loc2_:* = int(this.§7-§.length - 1);
         loop0:
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§7-§[_loc2_] as §!u§;
            if(!_loc5_)
            {
               if(_loc3_)
               {
                  loop5:
                  while(true)
                  {
                     if(_loc3_.§0M§ > 0)
                     {
                        _loc3_.§]!u§();
                        loop3:
                        while(true)
                        {
                           loop2:
                           while(true)
                           {
                              _loc3_.§>!d§();
                              addr82:
                              addr38:
                              while(!(_loc4_ || param1))
                              {
                                 continue loop3;
                              }
                              loop1:
                              while(true)
                              {
                                 §§push(_loc2_);
                                 if(_loc4_ || _loc2_)
                                 {
                                    §§push(§§pop() - 1);
                                 }
                                 _loc2_ = §§pop();
                                 if(!(_loc5_ && _loc2_))
                                 {
                                    if(!_loc5_)
                                    {
                                       if(!_loc5_)
                                       {
                                          if(_loc4_ || _loc3_)
                                          {
                                             if(true)
                                             {
                                                break;
                                             }
                                             continue loop2;
                                          }
                                          continue loop5;
                                       }
                                       addr112:
                                       while(true)
                                       {
                                          this.§9!S§(_loc2_,true,true,true);
                                       }
                                    }
                                    while(true)
                                    {
                                       continue loop1;
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr82);
                                 }
                              }
                              continue loop0;
                           }
                        }
                     }
                     §§goto(addr112);
                  }
                  addr108:
               }
               §§goto(addr38);
            }
            §§goto(addr108);
         }
         if(!_loc5_)
         {
            this.§,J§(param1);
         }
      }
      
      protected function §,J§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§3!T§(param1);
            do
            {
               this.§"O§();
            }
            while(!_loc3_);
            
         }
      }
      
      private function §3!T§(param1:Number) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:§ r§ = null;
         var _loc5_:* = 0;
         var _loc6_:§!u§ = null;
         if(_loc8_)
         {
            if(this.§&!e§.length == 0)
            {
               if(_loc8_)
               {
                  return;
               }
            }
         }
         var _loc2_:Vector.<§ r§> = this.§&!e§.concat();
         var _loc3_:* = int(_loc2_.length - 1);
         while(_loc3_ >= 0)
         {
            §§push((_loc4_ = _loc2_[_loc3_]).§!s§);
            if(!_loc7_)
            {
               §§push(Boolean(§§pop()));
               if(_loc8_ || this)
               {
                  if(§§pop())
                  {
                     if(_loc8_ || param1)
                     {
                        addr83:
                        §§pop();
                        if(!(_loc8_ || _loc2_))
                        {
                           continue;
                        }
                        §§push(this.§&!e§.indexOf(_loc4_) == -1);
                        if(_loc8_)
                        {
                           addr99:
                           §§push(!§§pop());
                        }
                     }
                  }
                  if(§§pop())
                  {
                     if(_loc8_)
                     {
                        §§push(_loc4_.update(param1));
                        if(_loc8_ || param1)
                        {
                           §§push(int(§§pop()));
                           if(!_loc7_)
                           {
                              §§push(§§pop());
                              if(_loc8_)
                              {
                                 _loc5_ = §§pop();
                                 addr169:
                                 if(_loc8_)
                                 {
                                    addr122:
                                    §§push(-1);
                                 }
                                 _loc3_ = §§pop();
                                 continue;
                              }
                              if(§§pop() != §§pop())
                              {
                                 if(_loc7_ && _loc2_)
                                 {
                                    continue;
                                 }
                                 addr131:
                                 §§push(this);
                                 §§push("");
                                 if(!_loc7_)
                                 {
                                    §§push(§§pop() + _loc5_);
                                 }
                                 if(_loc6_ = §§pop().§;H§(§§pop()))
                                 {
                                    if(!_loc7_)
                                    {
                                       this.§&!l§(_loc6_,true,true,true);
                                       addr160:
                                       §§push(_loc3_);
                                       if(_loc8_ || param1)
                                       {
                                          §§push(§§pop() - 1);
                                       }
                                    }
                                 }
                              }
                              §§goto(addr160);
                           }
                           §§goto(addr169);
                        }
                        §§goto(addr122);
                     }
                     §§goto(addr131);
                  }
                  §§goto(addr160);
               }
               §§goto(addr83);
            }
            §§goto(addr99);
         }
      }
      
      private function §"O§() : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc1_:§;!8§ = null;
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         var _loc4_:Class = null;
         var _loc5_:* = false;
         loop0:
         for each(_loc1_ in this.§"!§)
         {
            if(!_loc9_)
            {
               §§push(_loc1_.type == §-H§.§'"#§);
               if(!_loc9_)
               {
                  §§push(§§pop());
                  if(_loc8_ || _loc2_)
                  {
                     if(!§§pop())
                     {
                        if(!(_loc9_ && _loc1_))
                        {
                           §§pop();
                           if(!(_loc9_ && _loc1_))
                           {
                              §§push(_loc1_.type == §-H§.§2h§);
                              if(!_loc9_)
                              {
                                 addr82:
                                 if(§§pop())
                                 {
                                    if(_loc9_ && _loc3_)
                                    {
                                    }
                                    addr103:
                                    if(!§§pop())
                                    {
                                       continue;
                                    }
                                    if(!(_loc9_ && this))
                                    {
                                       addr111:
                                       §§push(_loc1_.§1q§);
                                       if(!_loc9_)
                                       {
                                          §§push(§§pop() is b2PrismaticJoint);
                                          if(!_loc9_)
                                          {
                                             addr119:
                                             if(§§pop())
                                             {
                                                if(!_loc9_)
                                                {
                                                   addr122:
                                                   _loc4_ = b2PrismaticJoint;
                                                   if(!(_loc9_ && this))
                                                   {
                                                      §§push(_loc1_.§1q§);
                                                      if(_loc8_)
                                                      {
                                                         §§push((§§pop() as b2PrismaticJoint).§+t§());
                                                         if(_loc8_ || _loc3_)
                                                         {
                                                            §§push(Number(§§pop()));
                                                            if(_loc8_)
                                                            {
                                                               _loc2_ = §§pop();
                                                               if(_loc8_)
                                                               {
                                                                  §§push(_loc1_.§1q§);
                                                                  if(_loc8_)
                                                                  {
                                                                     addr156:
                                                                     §§push((§§pop() as b2PrismaticJoint).§3S§());
                                                                     if(_loc8_ || _loc1_)
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                        if(!(_loc9_ && this))
                                                                        {
                                                                           addr174:
                                                                           _loc3_ = §§pop();
                                                                           if(_loc8_)
                                                                           {
                                                                              addr242:
                                                                              §§push(Boolean(_loc1_.§0![§));
                                                                              if(_loc8_ || this)
                                                                              {
                                                                                 §§push(§§pop());
                                                                                 if(!_loc9_)
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       if(_loc8_)
                                                                                       {
                                                                                          §§pop();
                                                                                          if(!_loc9_)
                                                                                          {
                                                                                             §§push(Boolean(_loc1_.§3A§));
                                                                                             loop24:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop());
                                                                                                loop23:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      loop11:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§pop();
                                                                                                         addr414:
                                                                                                         loop12:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc3_);
                                                                                                            loop19:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(0);
                                                                                                               loop17:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop() > §§pop());
                                                                                                                  loop18:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop());
                                                                                                                     addr398:
                                                                                                                     loop25:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(§§pop())
                                                                                                                        {
                                                                                                                           while(_loc9_ && _loc3_)
                                                                                                                           {
                                                                                                                              continue loop24;
                                                                                                                           }
                                                                                                                           §§pop();
                                                                                                                           loop1:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(_loc2_);
                                                                                                                              addr375:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() >= _loc1_.upperLimit);
                                                                                                                                 addr266:
                                                                                                                                 if(_loc9_ && _loc1_)
                                                                                                                                 {
                                                                                                                                    continue;
                                                                                                                                 }
                                                                                                                                 §§push(§§pop() <= _loc1_.lowerLimit);
                                                                                                                                 if(!_loc9_)
                                                                                                                                 {
                                                                                                                                    loop20:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(Boolean(§§pop()));
                                                                                                                                       if(_loc8_)
                                                                                                                                       {
                                                                                                                                          loop15:
                                                                                                                                          while(_loc8_)
                                                                                                                                          {
                                                                                                                                             if(!(_loc9_ && _loc1_))
                                                                                                                                             {
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop());
                                                                                                                                                   if(_loc8_)
                                                                                                                                                   {
                                                                                                                                                      if(_loc8_)
                                                                                                                                                      {
                                                                                                                                                         _loc5_ = §§pop();
                                                                                                                                                         while(!_loc9_)
                                                                                                                                                         {
                                                                                                                                                            loop26:
                                                                                                                                                            while(§§pop())
                                                                                                                                                            {
                                                                                                                                                               if(!_loc9_)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc9_ && _loc2_)
                                                                                                                                                                  {
                                                                                                                                                                     continue loop1;
                                                                                                                                                                  }
                                                                                                                                                                  if(!_loc8_)
                                                                                                                                                                  {
                                                                                                                                                                     continue loop12;
                                                                                                                                                                  }
                                                                                                                                                                  §§push(_loc1_.§1q§);
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     (§§pop() as _loc4_).SetMotorSpeed(-_loc3_);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc8_ || _loc2_)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc8_ || _loc3_)
                                                                                                                                                                     {
                                                                                                                                                                        if(true)
                                                                                                                                                                        {
                                                                                                                                                                           break loop26;
                                                                                                                                                                        }
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc3_);
                                                                                                                                                                           addr336:
                                                                                                                                                                           addr379:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              if(!(_loc9_ && _loc1_))
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(0);
                                                                                                                                                                                 if(!_loc9_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop() < §§pop());
                                                                                                                                                                                    if(_loc8_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc8_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc9_)
                                                                                                                                                                                          {
                                                                                                                                                                                             break;
                                                                                                                                                                                          }
                                                                                                                                                                                          if(!(_loc8_ || _loc1_))
                                                                                                                                                                                          {
                                                                                                                                                                                             continue loop11;
                                                                                                                                                                                          }
                                                                                                                                                                                          §§push(§§pop());
                                                                                                                                                                                          while(_loc8_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!(_loc9_ && _loc1_))
                                                                                                                                                                                             {
                                                                                                                                                                                                if(§§pop())
                                                                                                                                                                                                {
                                                                                                                                                                                                   break loop15;
                                                                                                                                                                                                }
                                                                                                                                                                                                continue loop20;
                                                                                                                                                                                             }
                                                                                                                                                                                             continue loop25;
                                                                                                                                                                                          }
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(§§pop())
                                                                                                                                                                                             {
                                                                                                                                                                                                continue loop20;
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§pop();
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    break loop15;
                                                                                                                                                                                 }
                                                                                                                                                                                 continue loop17;
                                                                                                                                                                              }
                                                                                                                                                                              continue loop19;
                                                                                                                                                                           }
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr390);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        addr334:
                                                                                                                                                                     }
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr334);
                                                                                                                                                                     }
                                                                                                                                                                     addr392:
                                                                                                                                                                  }
                                                                                                                                                                  addr372:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc2_);
                                                                                                                                                                     if(!_loc8_)
                                                                                                                                                                     {
                                                                                                                                                                        break;
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr266);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr336);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            continue loop0;
                                                                                                                                                         }
                                                                                                                                                         continue loop18;
                                                                                                                                                         addr297:
                                                                                                                                                      }
                                                                                                                                                      continue loop23;
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr361);
                                                                                                                                                }
                                                                                                                                                addr291:
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                §§goto(addr399);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§pop();
                                                                                                                                             §§goto(addr372);
                                                                                                                                          }
                                                                                                                                          addr282:
                                                                                                                                       }
                                                                                                                                       §§goto(addr297);
                                                                                                                                    }
                                                                                                                                    addr278:
                                                                                                                                 }
                                                                                                                                 §§goto(addr282);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           addr399:
                                                                                                                           addr407:
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§goto(addr379);
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr278);
                                                                                                }
                                                                                             }
                                                                                             addr411:
                                                                                          }
                                                                                          §§goto(addr407);
                                                                                       }
                                                                                       §§goto(addr291);
                                                                                    }
                                                                                    §§goto(addr411);
                                                                                 }
                                                                                 §§goto(addr398);
                                                                              }
                                                                              §§goto(addr299);
                                                                              addr177:
                                                                           }
                                                                           §§goto(addr414);
                                                                        }
                                                                        §§goto(addr375);
                                                                     }
                                                                     §§goto(addr174);
                                                                  }
                                                                  §§goto(addr313);
                                                               }
                                                               §§goto(addr392);
                                                            }
                                                            §§goto(addr174);
                                                         }
                                                         §§goto(addr375);
                                                      }
                                                      §§goto(addr156);
                                                   }
                                                   §§goto(addr177);
                                                }
                                                else
                                                {
                                                   addr183:
                                                   _loc4_ = b2RevoluteJoint;
                                                   if(_loc8_)
                                                   {
                                                      §§push(_loc1_.§1q§);
                                                      if(!_loc9_)
                                                      {
                                                         §§push((§§pop() as b2RevoluteJoint).§5M§());
                                                         if(!(_loc9_ && this))
                                                         {
                                                            §§push(Number(§§pop()));
                                                            if(!(_loc9_ && this))
                                                            {
                                                               addr220:
                                                               _loc2_ = §§pop();
                                                               if(!(_loc9_ && _loc1_))
                                                               {
                                                                  addr230:
                                                                  §§push((_loc1_.§1q§ as b2RevoluteJoint).§3S§());
                                                                  if(_loc8_ || _loc1_)
                                                                  {
                                                                     addr240:
                                                                     §§push(Number(§§pop()));
                                                                  }
                                                                  _loc3_ = §§pop();
                                                               }
                                                               §§goto(addr242);
                                                            }
                                                            §§goto(addr240);
                                                         }
                                                         §§goto(addr220);
                                                      }
                                                      §§goto(addr230);
                                                   }
                                                }
                                             }
                                             else
                                             {
                                                addr182:
                                                if(_loc1_.§1q§ is b2RevoluteJoint)
                                                {
                                                   §§goto(addr183);
                                                }
                                             }
                                             §§goto(addr242);
                                          }
                                       }
                                       §§goto(addr182);
                                    }
                                    §§goto(addr122);
                                 }
                                 §§goto(addr103);
                              }
                              §§pop();
                              if(!(_loc9_ && _loc1_))
                              {
                                 §§push(Boolean(_loc1_.§9!O§));
                                 if(!_loc9_)
                                 {
                                    §§goto(addr103);
                                 }
                                 §§goto(addr119);
                              }
                              §§goto(addr111);
                           }
                           §§goto(addr183);
                        }
                     }
                     §§goto(addr103);
                  }
                  §§goto(addr82);
               }
               §§goto(addr182);
            }
            §§goto(addr122);
         }
      }
      
      public function addExplosions(param1:int, param2:Number, param3:Number, param4:Vector.<§!u§> = null) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            this.§0T§.push(§3!b§.createExplosion(param1,param2,param3,param4));
            do
            {
               §-!Q§.§#3§("TntExplosions","ChannelExplosions");
            }
            while(!_loc5_);
            
         }
      }
      
      public function §3q§(param1:Number, param2:Number) : int
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:§!u§ = null;
         var _loc3_:* = int(this.§7-§.length - 1);
         while(true)
         {
            §§push(_loc3_);
            if(!(_loc5_ && param2))
            {
               if(§§pop() < 0)
               {
                  break;
               }
               if(_loc4_ = this.§7-§[_loc3_])
               {
                  if(!(_loc5_ && param1))
                  {
                     if(_loc4_.isInCoordinates(param1,param2))
                     {
                        if(_loc5_ && this)
                        {
                           continue;
                        }
                        addr75:
                        §§push(_loc3_);
                        if(_loc6_)
                        {
                           return §§pop();
                        }
                     }
                     else
                     {
                        addr81:
                        §§push(_loc3_);
                        if(!(_loc5_ && param2))
                        {
                           §§push(§§pop() - 1);
                        }
                     }
                     _loc3_ = §§pop();
                     continue;
                  }
                  §§goto(addr75);
               }
               §§goto(addr81);
            }
            break;
         }
         return §§pop();
      }
      
      public function §&J§(param1:Number, param2:Number) : §!u§
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:§!u§ = null;
         var _loc3_:* = int(this.§7-§.length - 1);
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§7-§[_loc3_])
            {
               if(!_loc6_)
               {
                  if(_loc4_.isInCoordinates(param1,param2))
                  {
                     if(_loc5_ || param2)
                     {
                        return _loc4_;
                     }
                  }
               }
            }
            §§push(_loc3_);
            if(_loc5_)
            {
               §§push(§§pop() - 1);
            }
            _loc3_ = §§pop();
         }
         return null;
      }
      
      public function §-R§(param1:Number, param2:Number) : Vector.<§!u§>
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:§!u§ = null;
         var _loc3_:Vector.<§!u§> = new Vector.<§!u§>();
         var _loc4_:* = int(this.§7-§.length - 1);
         while(_loc4_ >= 0)
         {
            §§push(Boolean(_loc5_ = this.§7-§[_loc4_]));
            if(_loc6_ || _loc3_)
            {
               if(§§pop())
               {
                  if(_loc6_ || param2)
                  {
                     §§pop();
                     if(_loc6_ || _loc3_)
                     {
                        §§push(_loc5_.isInCoordinates(param1,param2));
                        if(!_loc7_)
                        {
                           addr92:
                           if(§§pop())
                           {
                              if(!_loc7_)
                              {
                                 addr95:
                                 _loc3_.push(_loc5_);
                                 if(!_loc6_)
                                 {
                                    continue;
                                 }
                              }
                           }
                           §§push(_loc4_);
                           if(!_loc7_)
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
               }
            }
            §§goto(addr92);
         }
         return _loc3_;
      }
      
      public function § !X§(param1:int) : §!u§
      {
         return this.§7-§[param1];
      }
      
      public function §?!5§(param1:Number, param2:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:§!u§ = null;
         var _loc3_:* = int(this.§7-§.length - 1);
         while(_loc3_ >= 0)
         {
            (_loc4_ = this.§7-§[_loc3_] as §!u§).§?!5§(param2,param1);
            if(_loc5_ || param1)
            {
               §§push(_loc3_);
               if(!_loc6_)
               {
                  §§push(§§pop() - 1);
               }
               _loc3_ = §§pop();
            }
         }
      }
      
      private function §2!`§(param1:§!u§, param2:Number) : Boolean
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc4_:* = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:* = NaN;
         var _loc7_:§!u§ = null;
         if(!(_loc9_ && _loc3_))
         {
            §§push(this.mSardineCanAdded);
            if(!(_loc9_ && this))
            {
               if(!§§pop())
               {
                  if(_loc8_)
                  {
                     §§push(true);
                     if(_loc8_ || param2)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr60:
                     §§push(this.mMightyEagleAdded);
                     if(_loc8_)
                     {
                        addr64:
                        if(§§pop())
                        {
                           if(_loc8_ || this)
                           {
                              §§push(false);
                              if(_loc8_)
                              {
                                 §§goto(addr75);
                              }
                           }
                           else
                           {
                              addr76:
                              §§push(false);
                           }
                        }
                        §§goto(addr76);
                     }
                     var _loc3_:* = §§pop();
                     if(!_loc9_)
                     {
                        §§push(param1.§0M§);
                        loop0:
                        while(true)
                        {
                           §§push(param1.§]!3§);
                           loop1:
                           while(true)
                           {
                              if(§§pop() != §§pop())
                              {
                                 §§push(this.§@!b§);
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
                                             this.§@!b§ = this.§#!U§.§0!6§;
                                             addr514:
                                             while(true)
                                             {
                                             }
                                          }
                                          addr509:
                                       }
                                       addr494:
                                       loop6:
                                       while(true)
                                       {
                                          §§push(param1.§,1§());
                                          loop7:
                                          while(true)
                                          {
                                             §§push(Boolean(§§pop()));
                                             while(true)
                                             {
                                                §§push(§§pop());
                                                loop9:
                                                while(true)
                                                {
                                                   if(!§§pop())
                                                   {
                                                      while(true)
                                                      {
                                                         §§pop();
                                                         loop11:
                                                         while(true)
                                                         {
                                                            §§push(this.§4"!§(param1));
                                                            if(_loc8_ || this)
                                                            {
                                                               if(_loc9_ && _loc3_)
                                                               {
                                                                  break;
                                                               }
                                                               §§push(Boolean(§§pop()));
                                                               while(true)
                                                               {
                                                               }
                                                            }
                                                            loop12:
                                                            while(true)
                                                            {
                                                               §§push(§§pop());
                                                               loop13:
                                                               while(true)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     loop20:
                                                                     while(true)
                                                                     {
                                                                        loop21:
                                                                        while(true)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              loop22:
                                                                              while(_loc8_)
                                                                              {
                                                                                 §§push(this.mMightyEagleTimer);
                                                                                 loop23:
                                                                                 while(true)
                                                                                 {
                                                                                    if(§§pop() < this.§2!y§.MIGHTY_EAGLE_WAIT_TIME)
                                                                                    {
                                                                                       loop24:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(this.mMightyEagleTimer);
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(param2);
                                                                                             loop26:
                                                                                             while(!_loc9_)
                                                                                             {
                                                                                                §§push(§§pop() + §§pop());
                                                                                                loop27:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(Number(§§pop()));
                                                                                                   loop28:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      _loc4_ = §§pop();
                                                                                                      loop29:
                                                                                                      while(!_loc9_)
                                                                                                      {
                                                                                                         if(!_loc9_)
                                                                                                         {
                                                                                                            §§push(this.mMightyEagleTimer);
                                                                                                            loop30:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop() < this.§2!y§.MIGHTY_EAGLE_SOUND_DELAY);
                                                                                                               addr366:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop());
                                                                                                                  if(_loc9_ && param1)
                                                                                                                  {
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  if(_loc9_)
                                                                                                                  {
                                                                                                                     continue loop13;
                                                                                                                  }
                                                                                                                  if(!(_loc8_ || _loc3_))
                                                                                                                  {
                                                                                                                     continue loop9;
                                                                                                                  }
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(!_loc8_)
                                                                                                                        {
                                                                                                                           break;
                                                                                                                           addr387:
                                                                                                                        }
                                                                                                                        §§pop();
                                                                                                                        while(_loc8_ || _loc3_)
                                                                                                                        {
                                                                                                                           §§push(_loc4_);
                                                                                                                           continue loop27;
                                                                                                                        }
                                                                                                                        continue loop22;
                                                                                                                        addr87:
                                                                                                                        if(_loc9_ && param2)
                                                                                                                        {
                                                                                                                           continue;
                                                                                                                        }
                                                                                                                        if(§§pop())
                                                                                                                        {
                                                                                                                           if(_loc8_)
                                                                                                                           {
                                                                                                                              addr97:
                                                                                                                              if(!(_loc9_ && param1))
                                                                                                                              {
                                                                                                                                 addr104:
                                                                                                                                 if(_loc9_ && this)
                                                                                                                                 {
                                                                                                                                    loop41:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(!(_loc9_ && param2))
                                                                                                                                       {
                                                                                                                                          if(!_loc8_)
                                                                                                                                          {
                                                                                                                                             break;
                                                                                                                                             addr142:
                                                                                                                                          }
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(param1.§63§());
                                                                                                                                             if(!_loc9_)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop().GetPosition());
                                                                                                                                                if(_loc8_)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop().y);
                                                                                                                                                   if(_loc8_)
                                                                                                                                                   {
                                                                                                                                                      if(!_loc9_)
                                                                                                                                                      {
                                                                                                                                                         if(!_loc9_)
                                                                                                                                                         {
                                                                                                                                                            §§push(this.§2!y§.MIGHTY_EAGLE_STARTING_DISTANCE_Y * this.§2!y§.MIGHTY_EAGLE_Y_CHANGE);
                                                                                                                                                            if(_loc8_ || param1)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() * 1.07);
                                                                                                                                                            }
                                                                                                                                                            if(!_loc8_)
                                                                                                                                                            {
                                                                                                                                                               continue loop26;
                                                                                                                                                            }
                                                                                                                                                            §§push(§§pop() - §§pop());
                                                                                                                                                            if(!(_loc9_ && param2))
                                                                                                                                                            {
                                                                                                                                                               continue loop23;
                                                                                                                                                            }
                                                                                                                                                            addr198:
                                                                                                                                                            addr199:
                                                                                                                                                            addr198:
                                                                                                                                                            _loc6_ = §§pop();
                                                                                                                                                            loop43:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(!(_loc9_ && _loc3_))
                                                                                                                                                               {
                                                                                                                                                                  if(!_loc9_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(this.§4"!§(param1));
                                                                                                                                                                     if(!_loc9_)
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr87);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr631);
                                                                                                                                                                  }
                                                                                                                                                                  break;
                                                                                                                                                               }
                                                                                                                                                               addr217:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(param1.§63§());
                                                                                                                                                                  addr219:
                                                                                                                                                                  addr523:
                                                                                                                                                                  while(_loc8_ || param1)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop().GetPosition());
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop().x);
                                                                                                                                                                        if(!(_loc9_ && _loc3_))
                                                                                                                                                                        {
                                                                                                                                                                           while(_loc8_ || _loc3_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() - this.§2!y§.MIGHTY_EAGLE_STARTING_DISTANCE_X);
                                                                                                                                                                           }
                                                                                                                                                                           continue loop28;
                                                                                                                                                                           addr235:
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(param2);
                                                                                                                                                                     if(!(_loc9_ && param1))
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() * this.§4"#§);
                                                                                                                                                                     }
                                                                                                                                                                     §§pop().§&e§(§§pop());
                                                                                                                                                                     break loop41;
                                                                                                                                                                  }
                                                                                                                                                                  continue loop43;
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr387);
                                                                                                                                                         }
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      while(_loc8_)
                                                                                                                                                      {
                                                                                                                                                         continue loop30;
                                                                                                                                                      }
                                                                                                                                                      continue loop27;
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr198);
                                                                                                                                                }
                                                                                                                                                §§goto(addr227);
                                                                                                                                             }
                                                                                                                                             §§goto(addr219);
                                                                                                                                          }
                                                                                                                                          continue loop0;
                                                                                                                                       }
                                                                                                                                       continue loop11;
                                                                                                                                       §§goto(addr104);
                                                                                                                                    }
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       this.§@!b§ = 0;
                                                                                                                                       break loop29;
                                                                                                                                    }
                                                                                                                                    addr264:
                                                                                                                                 }
                                                                                                                                 if(_loc9_ && param2)
                                                                                                                                 {
                                                                                                                                    continue loop24;
                                                                                                                                 }
                                                                                                                                 if(_loc8_)
                                                                                                                                 {
                                                                                                                                    §§push(true);
                                                                                                                                    if(_loc8_ || this)
                                                                                                                                    {
                                                                                                                                       continue loop21;
                                                                                                                                    }
                                                                                                                                    §§goto(addr631);
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(this.§4"#§);
                                                                                                                                       addr543:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(§§pop() < this.§2!y§.SARDINE_CAN_MAX_ROTATION_SPEED)
                                                                                                                                          {
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(this);
                                                                                                                                                §§push(this.§4"#§);
                                                                                                                                                if(_loc8_)
                                                                                                                                                {
                                                                                                                                                   §§push(param2);
                                                                                                                                                   if(_loc8_ || _loc3_)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() * this.§2!y§.SARDINE_CAN_ROTATION_ACCELERATION);
                                                                                                                                                   }
                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                }
                                                                                                                                                §§pop().§4"#§ = §§pop();
                                                                                                                                                addr566:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             addr547:
                                                                                                                                          }
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§goto(addr523);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    addr541:
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr199);
                                                                                                                           }
                                                                                                                           addr630:
                                                                                                                           addr631:
                                                                                                                           return §§pop();
                                                                                                                           §§push(_loc3_);
                                                                                                                        }
                                                                                                                        _loc7_ = this.addObject("BIRD_MIGHTY_EAGLE",_loc5_,_loc6_,this.§2!y§.MIGHTY_EAGLE_FLYING_ANGLE * 1.2);
                                                                                                                        if(_loc8_ || param1)
                                                                                                                        {
                                                                                                                           this.mMightyEagleAdded = true;
                                                                                                                           addr618:
                                                                                                                           this.§@!b§ = 0;
                                                                                                                           _loc7_.§+!j§.setScale(1.82);
                                                                                                                           addr626:
                                                                                                                           if(!(_loc9_ && param1))
                                                                                                                           {
                                                                                                                              if(!(_loc9_ && _loc3_))
                                                                                                                              {
                                                                                                                                 addr616:
                                                                                                                                 if(false)
                                                                                                                                 {
                                                                                                                                    §§goto(addr618);
                                                                                                                                 }
                                                                                                                                 this.mMightyEagleTimer = _loc4_;
                                                                                                                                 §§goto(addr630);
                                                                                                                              }
                                                                                                                              §§goto(addr626);
                                                                                                                           }
                                                                                                                           addr622:
                                                                                                                           §§goto(addr622);
                                                                                                                        }
                                                                                                                        §§goto(addr616);
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(_loc8_)
                                                                                                                        {
                                                                                                                           continue loop12;
                                                                                                                        }
                                                                                                                        addr490:
                                                                                                                        while(!_loc9_)
                                                                                                                        {
                                                                                                                           §§pop();
                                                                                                                           continue loop2;
                                                                                                                        }
                                                                                                                        continue loop7;
                                                                                                                     }
                                                                                                                     §§goto(addr630);
                                                                                                                     addr450:
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(§§pop())
                                                                                                                        {
                                                                                                                           if(_loc8_ || param1)
                                                                                                                           {
                                                                                                                              if(_loc9_ && this)
                                                                                                                              {
                                                                                                                                 continue loop29;
                                                                                                                              }
                                                                                                                              §-!Q§.§#3§("Mighty_Eagle_Selected_1","ChannelBird");
                                                                                                                              if(_loc9_)
                                                                                                                              {
                                                                                                                              }
                                                                                                                              §§goto(addr630);
                                                                                                                           }
                                                                                                                           if(_loc8_)
                                                                                                                           {
                                                                                                                              §-!Q§.§#3§("Mighty_Eagle_Flying_1","ChannelBird");
                                                                                                                              if(_loc8_ || _loc3_)
                                                                                                                              {
                                                                                                                                 if(!_loc9_)
                                                                                                                                 {
                                                                                                                                    addr209:
                                                                                                                                    §§push(_loc4_);
                                                                                                                                    if(!_loc9_)
                                                                                                                                    {
                                                                                                                                       if(§§pop() < this.§2!y§.MIGHTY_EAGLE_WAIT_TIME)
                                                                                                                                       {
                                                                                                                                          break;
                                                                                                                                       }
                                                                                                                                       §§goto(addr217);
                                                                                                                                    }
                                                                                                                                    §§goto(addr235);
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    §§goto(addr566);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr630);
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              §§goto(addr509);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr209);
                                                                                                                     }
                                                                                                                     §§goto(addr616);
                                                                                                                     addr334:
                                                                                                                  }
                                                                                                                  §§goto(addr630);
                                                                                                               }
                                                                                                               addr449:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(!§§pop())
                                                                                                                  {
                                                                                                                     continue loop20;
                                                                                                                  }
                                                                                                                  §§goto(addr450);
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr547);
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         continue loop6;
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             continue loop1;
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr630);
                                                                                 }
                                                                              }
                                                                              §§goto(addr514);
                                                                           }
                                                                           §§goto(addr630);
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr490);
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr487);
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                              §§goto(addr541);
                           }
                        }
                     }
                     §§goto(addr630);
                  }
                  addr75:
                  return §§pop();
               }
               §§goto(addr60);
            }
            §§goto(addr64);
         }
         §§goto(addr76);
      }
      
      private function §7J§(param1:§!u§, param2:Number) : Boolean
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc5_:§!u§ = null;
         if(_loc8_)
         {
            §§push(Boolean(this.§2!y§.MIGHTY_EAGLE_USE_SHADE));
            loop0:
            while(true)
            {
               §§push(§§pop());
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§pop();
                        loop3:
                        while(true)
                        {
                           §§push(this.§>A§);
                           if(!(_loc9_ && param1))
                           {
                              §§push(!§§pop());
                              loop4:
                              while(true)
                              {
                                 §§push(Boolean(§§pop()));
                                 addr102:
                                 while(true)
                                 {
                                    loop7:
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       if(_loc9_)
                                       {
                                          break;
                                       }
                                       if(!§§pop())
                                       {
                                          loop8:
                                          for(; §§pop(); continue loop0)
                                          {
                                             if(_loc8_ || this)
                                             {
                                                if(!(_loc8_ || param2))
                                                {
                                                   continue loop3;
                                                }
                                                this.§>A§ = true;
                                             }
                                             do
                                             {
                                                this.§#!U§.§%!=§();
                                             }
                                             while(!(_loc8_ || param2));
                                             
                                             if(_loc8_ || _loc3_)
                                             {
                                                if(true)
                                                {
                                                   break;
                                                }
                                                loop10:
                                                while(true)
                                                {
                                                   §§push(this.mMightyEagleTimer);
                                                   if(_loc8_)
                                                   {
                                                      §§push(§§pop() > this.§2!y§.MIGHTY_EAGLE_SHADING_DELAY);
                                                      if(!(_loc9_ && this))
                                                      {
                                                         if(!_loc9_)
                                                         {
                                                            if(!_loc8_)
                                                            {
                                                               break;
                                                            }
                                                            continue loop8;
                                                         }
                                                         continue loop7;
                                                      }
                                                      addr107:
                                                      while(_loc8_ || _loc3_)
                                                      {
                                                         §§pop();
                                                         while(true)
                                                         {
                                                            continue loop10;
                                                         }
                                                      }
                                                      continue loop2;
                                                   }
                                                   addr127:
                                                   var _loc3_:* = §§pop();
                                                   if(_loc8_)
                                                   {
                                                      §§push(this);
                                                      §§push(this.mMightyEagleTimer);
                                                      if(!(_loc9_ && param1))
                                                      {
                                                         §§push(§§pop() + param2);
                                                      }
                                                      §§pop().mMightyEagleTimer = §§pop();
                                                      if(!_loc9_)
                                                      {
                                                         addr145:
                                                         §§push(this.§#!U§.particles);
                                                         §§push(§>p§.§&@§);
                                                         §§push(§=!%§.§2k§);
                                                         §§push(§>p§.§%§);
                                                         §§push(param1.§63§().GetPosition().x);
                                                         if(_loc8_ || param2)
                                                         {
                                                            §§push(_loc3_);
                                                            if(_loc8_)
                                                            {
                                                               §§push(§§pop() - §§pop());
                                                               if(_loc8_ || _loc3_)
                                                               {
                                                                  addr176:
                                                                  §§push(Math.random() * (_loc3_ * 2));
                                                                  if(_loc8_ || param2)
                                                                  {
                                                                     addr190:
                                                                     §§push(§§pop() + §§pop());
                                                                     §§push(param1.§63§().GetPosition().y);
                                                                     if(_loc8_)
                                                                     {
                                                                        §§push(_loc3_);
                                                                        if(_loc8_)
                                                                        {
                                                                           addr214:
                                                                           §§push(§§pop() - §§pop());
                                                                           if(!(_loc9_ && _loc3_))
                                                                           {
                                                                              addr207:
                                                                              §§push(Math.random() * (_loc3_ * 2));
                                                                           }
                                                                           §§pop().§-M§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),3500,"",§>p§.§=!f§(param1.§-!>§),0,0,1,0,4);
                                                                           var _loc4_:* = 1;
                                                                           if(!(_loc9_ && _loc3_))
                                                                           {
                                                                              addr330:
                                                                              if(this.mMightyEagleHasTouchedGround)
                                                                              {
                                                                                 if(!(_loc9_ && this))
                                                                                 {
                                                                                    param1.§@!v§(this.§2!y§.MIGHTY_EAGLE_ROTATION_SPEED * param2);
                                                                                 }
                                                                                 addr345:
                                                                                 §§push(-1);
                                                                                 if(_loc8_ || this)
                                                                                 {
                                                                                    _loc4_ = §§pop();
                                                                                    addr327:
                                                                                    §§push(this.§!"§);
                                                                                    if(!(_loc9_ && param2))
                                                                                    {
                                                                                       if(§§pop())
                                                                                       {
                                                                                          addr311:
                                                                                          if(_loc8_)
                                                                                          {
                                                                                             this.§!"§ = false;
                                                                                             this.§#!U§.§=5§();
                                                                                             param1.§'!S§(§6!D§.§@""§);
                                                                                             addr299:
                                                                                             if(!_loc9_)
                                                                                             {
                                                                                                if(_loc8_)
                                                                                                {
                                                                                                   this.mSardineCanAdded = false;
                                                                                                   addr270:
                                                                                                   if(_loc8_)
                                                                                                   {
                                                                                                      if(!_loc9_)
                                                                                                      {
                                                                                                         addr261:
                                                                                                         param1.§+!j§.§ ^§ = true;
                                                                                                         addr258:
                                                                                                         if(!_loc9_)
                                                                                                         {
                                                                                                            §§push(param1.§+!j§);
                                                                                                            if(_loc8_)
                                                                                                            {
                                                                                                               §§pop().§=!2§();
                                                                                                               if(!(_loc9_ && this))
                                                                                                               {
                                                                                                                  if(_loc8_ || _loc3_)
                                                                                                                  {
                                                                                                                     addr256:
                                                                                                                     if(false)
                                                                                                                     {
                                                                                                                        §§goto(addr258);
                                                                                                                     }
                                                                                                                     addr347:
                                                                                                                     var _loc6_:int = 0;
                                                                                                                     var _loc7_:* = this.§7-§;
                                                                                                                     addr408:
                                                                                                                     §§push(§§hasnext(_loc7_,_loc6_));
                                                                                                                     if(!(_loc9_ && _loc3_))
                                                                                                                     {
                                                                                                                        if(§§pop())
                                                                                                                        {
                                                                                                                           _loc5_ = §§nextvalue(_loc6_,_loc7_);
                                                                                                                           §§push(Boolean(_loc5_));
                                                                                                                           if(_loc8_ || param1)
                                                                                                                           {
                                                                                                                              if(§§pop())
                                                                                                                              {
                                                                                                                                 if(_loc8_)
                                                                                                                                 {
                                                                                                                                    §§pop();
                                                                                                                                    if(_loc8_)
                                                                                                                                    {
                                                                                                                                       §§push(_loc5_.§^A§());
                                                                                                                                       if(!(_loc9_ && param2))
                                                                                                                                       {
                                                                                                                                          addr385:
                                                                                                                                          if(§§pop())
                                                                                                                                          {
                                                                                                                                             if(!(_loc9_ && _loc3_))
                                                                                                                                             {
                                                                                                                                                §§push(_loc5_.§63§());
                                                                                                                                                if(_loc8_)
                                                                                                                                                {
                                                                                                                                                   §§pop().SetAwake(true);
                                                                                                                                                   if(!_loc9_)
                                                                                                                                                   {
                                                                                                                                                      addr401:
                                                                                                                                                      §§push(_loc5_.§63§());
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr408);
                                                                                                                                                }
                                                                                                                                                §§pop().SetLinearVelocity(new b2Vec2(0,-18));
                                                                                                                                                §§goto(addr408);
                                                                                                                                             }
                                                                                                                                             §§goto(addr401);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr385);
                                                                                                                                    }
                                                                                                                                    §§goto(addr408);
                                                                                                                                 }
                                                                                                                                 §§goto(addr385);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr385);
                                                                                                                        }
                                                                                                                        if(!_loc9_)
                                                                                                                        {
                                                                                                                           if(_loc8_ || param2)
                                                                                                                           {
                                                                                                                              if(!(_loc9_ && this))
                                                                                                                              {
                                                                                                                                 this.§,"§();
                                                                                                                                 if(_loc8_)
                                                                                                                                 {
                                                                                                                                    §§goto(addr439);
                                                                                                                                 }
                                                                                                                                 §§goto(addr596);
                                                                                                                              }
                                                                                                                              §§goto(addr586);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr486);
                                                                                                                     }
                                                                                                                     §§goto(addr537);
                                                                                                                  }
                                                                                                                  §§goto(addr299);
                                                                                                               }
                                                                                                               §§goto(addr258);
                                                                                                            }
                                                                                                            §§goto(addr261);
                                                                                                         }
                                                                                                         §§goto(addr270);
                                                                                                      }
                                                                                                      §§goto(addr345);
                                                                                                   }
                                                                                                   §§goto(addr299);
                                                                                                }
                                                                                                §§goto(addr311);
                                                                                             }
                                                                                             addr316:
                                                                                             §§goto(addr316);
                                                                                          }
                                                                                          §§goto(addr327);
                                                                                       }
                                                                                       addr439:
                                                                                       §§push(this.mMightyEagleTimer > 6000);
                                                                                       if(!(_loc9_ && this))
                                                                                       {
                                                                                          if(§§pop())
                                                                                          {
                                                                                             if(!(_loc9_ && param2))
                                                                                             {
                                                                                                §§pop();
                                                                                                if(!(_loc9_ && param1))
                                                                                                {
                                                                                                   §§push(this.isPigsAlive());
                                                                                                   if(!(_loc9_ && this))
                                                                                                   {
                                                                                                      §§goto(addr476);
                                                                                                   }
                                                                                                   §§goto(addr479);
                                                                                                }
                                                                                                §§goto(addr482);
                                                                                             }
                                                                                             §§goto(addr476);
                                                                                          }
                                                                                          §§goto(addr479);
                                                                                       }
                                                                                       addr476:
                                                                                       §§push(Boolean(§§pop()));
                                                                                       if(!_loc9_)
                                                                                       {
                                                                                          addr479:
                                                                                          if(§§pop())
                                                                                          {
                                                                                             if(!_loc9_)
                                                                                             {
                                                                                                addr482:
                                                                                                _loc6_ = 0;
                                                                                                if(!_loc9_)
                                                                                                {
                                                                                                   addr486:
                                                                                                   _loc7_ = this.§7-§;
                                                                                                   addr537:
                                                                                                   for each(_loc5_ in _loc7_)
                                                                                                   {
                                                                                                      §§push(Boolean(_loc5_));
                                                                                                      if(!(_loc9_ && param2))
                                                                                                      {
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            if(_loc8_)
                                                                                                            {
                                                                                                               addr510:
                                                                                                               §§pop();
                                                                                                               if(!_loc9_)
                                                                                                               {
                                                                                                                  §§push(_loc5_.§^A§());
                                                                                                                  if(_loc8_)
                                                                                                                  {
                                                                                                                     addr518:
                                                                                                                     if(§§pop())
                                                                                                                     {
                                                                                                                        if(_loc8_)
                                                                                                                        {
                                                                                                                           §§push(_loc5_);
                                                                                                                           §§push(_loc5_.§]!3§);
                                                                                                                           if(_loc8_ || _loc3_)
                                                                                                                           {
                                                                                                                              §§push(§§pop() * 2);
                                                                                                                           }
                                                                                                                           §§pop().applyDamage(§§pop(),true,true,true);
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr518);
                                                                                                               }
                                                                                                               §§goto(addr537);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr518);
                                                                                                      }
                                                                                                      §§goto(addr510);
                                                                                                   }
                                                                                                }
                                                                                                if(!_loc9_)
                                                                                                {
                                                                                                   param1.§=!7§(param2,new Point(this.§2!y§.MIGHTY_EAGLE_X_DIRECTION,_loc4_ * this.§2!y§.MIGHTY_EAGLE_Y_CHANGE),this.§2!y§.MIGHTY_EAGLE_FLYING_SPEED);
                                                                                                   addr549:
                                                                                                   if(!_loc8_)
                                                                                                   {
                                                                                                      addr584:
                                                                                                      if(!_loc9_)
                                                                                                      {
                                                                                                         addr586:
                                                                                                         §§goto(addr549);
                                                                                                      }
                                                                                                      this.§!"§ = this.mMightyEagleHasTouchedGround;
                                                                                                      §§goto(addr584);
                                                                                                      addr596:
                                                                                                   }
                                                                                                   addr587:
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr546);
                                                                                          }
                                                                                          §§goto(addr587);
                                                                                       }
                                                                                       addr546:
                                                                                       return false;
                                                                                    }
                                                                                    §§goto(addr330);
                                                                                 }
                                                                                 §§goto(addr347);
                                                                              }
                                                                              this.mMightyEagleHasTouchedGround = param1.§63§().GetPosition().y >= -5.5;
                                                                              §§goto(addr584);
                                                                           }
                                                                           §§goto(addr256);
                                                                        }
                                                                        §§push(§§pop() + §§pop());
                                                                     }
                                                                     §§goto(addr214);
                                                                  }
                                                                  §§goto(addr207);
                                                               }
                                                            }
                                                            §§goto(addr190);
                                                         }
                                                         §§goto(addr176);
                                                      }
                                                      §§goto(addr214);
                                                   }
                                                   §§goto(addr145);
                                                }
                                                continue loop4;
                                             }
                                             §§goto(addr115);
                                          }
                                          §§goto(addr127);
                                          §§push(Number(3));
                                          addr69:
                                       }
                                    }
                                    continue loop1;
                                 }
                              }
                           }
                           §§goto(addr107);
                        }
                     }
                  }
                  §§goto(addr102);
               }
               if(_loc9_ && this)
               {
                  continue;
               }
               §§goto(addr69);
            }
         }
         §§goto(addr115);
      }
      
      private function §-!9§() : void
      {
         var _loc20_:Boolean = true;
         var _loc21_:Boolean = false;
         var _loc1_:§3!b§ = null;
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc6_:§!u§ = null;
         var _loc7_:* = 0;
         var _loc8_:* = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:* = NaN;
         var _loc16_:* = NaN;
         var _loc17_:* = NaN;
         loop0:
         while(this.§0T§.length > 0)
         {
            _loc1_ = this.§0T§.shift();
            if(_loc20_ || _loc1_)
            {
               §§push(_loc1_.§61§);
               loop1:
               while(true)
               {
                  §§push(Number(§§pop()));
                  if(_loc20_ || this)
                  {
                     _loc2_ = §§pop();
                     if(!(_loc21_ && _loc1_))
                     {
                        §§push(_loc1_.x);
                        if(!_loc21_)
                        {
                           §§push(Number(§§pop()));
                           if(_loc20_ || _loc3_)
                           {
                              if(!_loc20_)
                              {
                                 continue;
                              }
                              _loc3_ = §§pop();
                              if(_loc20_ || _loc1_)
                              {
                                 loop2:
                                 while(true)
                                 {
                                    §§push(_loc1_.y);
                                    if(!_loc21_)
                                    {
                                       §§push(Number(§§pop()));
                                       while(true)
                                       {
                                          _loc4_ = §§pop();
                                          if(!_loc21_)
                                          {
                                             §§push(_loc1_.damage);
                                             if(_loc20_)
                                             {
                                                if(!_loc20_)
                                                {
                                                   continue;
                                                }
                                                §§push(Number(§§pop()));
                                                if(!_loc21_)
                                                {
                                                   _loc5_ = §§pop();
                                                   if(_loc20_)
                                                   {
                                                      if(false)
                                                      {
                                                         continue loop2;
                                                      }
                                                      §§push(0);
                                                      if(_loc20_ || _loc1_)
                                                      {
                                                         var _loc18_:* = §§pop();
                                                         if(_loc20_ || _loc1_)
                                                         {
                                                            loop4:
                                                            for each(_loc6_ in this.§7-§)
                                                            {
                                                               if(!_loc21_)
                                                               {
                                                                  §§push(_loc1_.§']§ == null);
                                                                  if(!(_loc21_ && this))
                                                                  {
                                                                     §§push(!§§pop());
                                                                     if(_loc20_)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              §§pop();
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc1_.§']§.indexOf(_loc6_) == -1);
                                                                                 if(!_loc21_)
                                                                                 {
                                                                                    §§push(!§§pop());
                                                                                 }
                                                                                 if(_loc21_)
                                                                                 {
                                                                                    break;
                                                                                    addr551:
                                                                                 }
                                                                                 while(!§§pop())
                                                                                 {
                                                                                    §§push(_loc6_.§63§());
                                                                                    loop6:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop().GetPosition());
                                                                                       addr557:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop().x);
                                                                                          addr558:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc3_);
                                                                                             addr559:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop() - §§pop());
                                                                                                addr560:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(Number(§§pop()));
                                                                                                   addr561:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      _loc8_ = §§pop();
                                                                                                      addr562:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc6_.§63§());
                                                                                                         continue loop6;
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 continue loop4;
                                                                              }
                                                                           }
                                                                           addr579:
                                                                        }
                                                                        §§goto(addr551);
                                                                     }
                                                                  }
                                                                  §§goto(addr579);
                                                               }
                                                               §§goto(addr351);
                                                            }
                                                         }
                                                         if(_loc20_ || _loc2_)
                                                         {
                                                            break;
                                                         }
                                                         continue loop0;
                                                      }
                                                      loop61:
                                                      while(true)
                                                      {
                                                         §§push(150);
                                                         loop62:
                                                         while(true)
                                                         {
                                                            if(§§pop() >= §§pop())
                                                            {
                                                               continue loop0;
                                                            }
                                                            §§push(0.75);
                                                            while(true)
                                                            {
                                                               §§push(_loc2_);
                                                               if(_loc20_ || _loc1_)
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  break loop1;
                                                               }
                                                               addr813:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() + §§pop());
                                                                  addr814:
                                                                  loop66:
                                                                  while(true)
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                     addr815:
                                                                     addr821:
                                                                     while(true)
                                                                     {
                                                                        _loc15_ = §§pop();
                                                                        if(!_loc20_)
                                                                        {
                                                                           continue loop0;
                                                                        }
                                                                        §§push(1250);
                                                                        if(_loc21_)
                                                                        {
                                                                           continue loop61;
                                                                        }
                                                                        if(!(_loc20_ || _loc2_))
                                                                        {
                                                                           break;
                                                                        }
                                                                        §§push(Math.random() * 750);
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() + §§pop());
                                                                           continue loop66;
                                                                        }
                                                                     }
                                                                     addr821:
                                                                     while(true)
                                                                     {
                                                                        _loc7_ = §§pop();
                                                                        §§goto(addr765);
                                                                     }
                                                                  }
                                                                  break loop1;
                                                               }
                                                               if(_loc21_ && this)
                                                               {
                                                                  continue;
                                                               }
                                                               §§push(Number(§§pop()));
                                                               loop70:
                                                               while(true)
                                                               {
                                                                  if(!_loc20_)
                                                                  {
                                                                     break loop1;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     _loc16_ = §§pop();
                                                                     addr795:
                                                                     loop78:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc7_);
                                                                        if(_loc21_ && _loc3_)
                                                                        {
                                                                           continue loop61;
                                                                        }
                                                                        §§push(180);
                                                                        if(!(_loc20_ || _loc2_))
                                                                        {
                                                                           continue loop62;
                                                                        }
                                                                        §§push(§§pop() / Math.PI);
                                                                        if(_loc20_)
                                                                        {
                                                                           §§push(§§pop() / §§pop());
                                                                           loop75:
                                                                           while(true)
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                              loop76:
                                                                              while(true)
                                                                              {
                                                                                 if(!_loc20_)
                                                                                 {
                                                                                    continue loop70;
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    _loc17_ = §§pop();
                                                                                    if(!(_loc20_ || _loc2_))
                                                                                    {
                                                                                       continue loop0;
                                                                                    }
                                                                                    loop73:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(this.§#!U§);
                                                                                       if(_loc20_)
                                                                                       {
                                                                                          §§push(§§pop().particles);
                                                                                          if(!(_loc20_ || _loc1_))
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          addr656:
                                                                                          §§push(§>p§.§=!i§);
                                                                                          if(!(_loc21_ && _loc1_))
                                                                                          {
                                                                                             §§push(§=!%§.§2k§);
                                                                                             if(!(_loc21_ && _loc2_))
                                                                                             {
                                                                                                §§push(§>p§.§%§);
                                                                                                if(_loc20_ || _loc3_)
                                                                                                {
                                                                                                   §§push(_loc3_);
                                                                                                   if(!(_loc21_ && _loc3_))
                                                                                                   {
                                                                                                      §§push(_loc4_);
                                                                                                      if(_loc20_)
                                                                                                      {
                                                                                                         §§push(_loc16_);
                                                                                                         §§push("");
                                                                                                         §§push(§>p§.§2!Z§);
                                                                                                         §§push(_loc15_);
                                                                                                         if(!_loc21_)
                                                                                                         {
                                                                                                            §§push(§§pop() * Math.cos(_loc17_));
                                                                                                         }
                                                                                                         §§push(_loc15_);
                                                                                                         if(_loc20_)
                                                                                                         {
                                                                                                            §§push(-§§pop());
                                                                                                            if(!(_loc21_ && _loc3_))
                                                                                                            {
                                                                                                               addr716:
                                                                                                               §§push(§§pop() * Math.sin(_loc17_));
                                                                                                            }
                                                                                                            §§pop().§-M§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),20,0);
                                                                                                            if(_loc21_)
                                                                                                            {
                                                                                                               continue loop0;
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc7_);
                                                                                                               if(!(_loc20_ || _loc3_))
                                                                                                               {
                                                                                                                  continue loop61;
                                                                                                               }
                                                                                                               §§push(5);
                                                                                                               if(!(_loc20_ || _loc1_))
                                                                                                               {
                                                                                                                  continue loop62;
                                                                                                               }
                                                                                                               §§push(§§pop() + §§pop());
                                                                                                               if(!_loc20_)
                                                                                                               {
                                                                                                                  continue loop76;
                                                                                                               }
                                                                                                               if(_loc21_)
                                                                                                               {
                                                                                                                  continue loop75;
                                                                                                               }
                                                                                                               if(_loc20_ || _loc2_)
                                                                                                               {
                                                                                                                  if(!_loc21_)
                                                                                                                  {
                                                                                                                     §§push(int(§§pop()));
                                                                                                                     if(_loc21_)
                                                                                                                     {
                                                                                                                        continue loop61;
                                                                                                                     }
                                                                                                                     _loc7_ = §§pop();
                                                                                                                     if(!_loc20_)
                                                                                                                     {
                                                                                                                        continue loop0;
                                                                                                                     }
                                                                                                                     if(_loc21_)
                                                                                                                     {
                                                                                                                        continue loop78;
                                                                                                                     }
                                                                                                                     if(!_loc21_)
                                                                                                                     {
                                                                                                                        if(!(_loc21_ && _loc1_))
                                                                                                                        {
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(false)
                                                                                                                              {
                                                                                                                                 continue loop73;
                                                                                                                              }
                                                                                                                           }
                                                                                                                           addr641:
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§goto(addr821);
                                                                                                                           }
                                                                                                                           addr858:
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           continue loop61;
                                                                                                                        }
                                                                                                                        addr859:
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§goto(addr859);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§goto(addr815);
                                                                                                                  }
                                                                                                                  §§goto(addr821);
                                                                                                               }
                                                                                                               §§goto(addr777);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr716);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§pop().§-M§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),600,"",§>p§.§2!Z§,0,0,0,0,1,20,true);
                                                                                                         }
                                                                                                         addr846:
                                                                                                      }
                                                                                                      §§goto(addr858);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                      }
                                                                                                      addr845:
                                                                                                   }
                                                                                                   §§goto(addr846);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                   }
                                                                                                   addr844:
                                                                                                }
                                                                                                §§goto(addr845);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                }
                                                                                                addr842:
                                                                                             }
                                                                                             §§goto(addr844);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                §§goto(addr656);
                                                                                             }
                                                                                             addr840:
                                                                                          }
                                                                                          §§goto(addr842);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop().particles);
                                                                                             break loop73;
                                                                                          }
                                                                                          addr825:
                                                                                       }
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§goto(addr840);
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr776);
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr822);
                                                }
                                                §§goto(addr794);
                                             }
                                             §§goto(addr752);
                                          }
                                          break;
                                       }
                                       §§goto(addr825);
                                       §§push(this.§#!U§);
                                    }
                                    break loop1;
                                 }
                              }
                              §§goto(addr725);
                           }
                           §§goto(addr814);
                        }
                        §§goto(addr815);
                     }
                     §§goto(addr641);
                  }
                  break;
               }
               while(true)
               {
                  §§goto(addr813);
               }
            }
            §§goto(addr795);
         }
      }
      
      protected function §%+§(param1:§!u§, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param2)
         {
            param1.applyDamage(param2,false,false,false,true);
         }
      }
      
      protected function §@S§(param1:int) : String
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(param1);
         if(_loc3_ || param1)
         {
         }
         switch(§§pop())
         {
         }
         return §>p§.§4!#§;
      }
      
      public function §^!,§(param1:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:§!u§ = null;
         var _loc3_:* = int(this.§7-§.length - 1);
         loop0:
         while(_loc3_ >= 0)
         {
            _loc2_ = this.§7-§[_loc3_];
            if(_loc4_)
            {
               §§push(_loc2_.§1!b§());
               while(true)
               {
                  if(§§pop())
                  {
                     if(!(_loc5_ && this))
                     {
                        §§push(this.§2!`§(_loc2_,param1));
                        loop2:
                        while(true)
                        {
                           if(§§pop())
                           {
                              while(true)
                              {
                                 this.§9!S§(_loc3_,false,false,false);
                                 addr255:
                                 while(true)
                                 {
                                 }
                              }
                              addr249:
                           }
                           while(true)
                           {
                              loop5:
                              while(true)
                              {
                                 §§push(_loc3_);
                                 if(_loc4_)
                                 {
                                    §§push(§§pop() - 1);
                                 }
                                 _loc3_ = §§pop();
                                 if(_loc4_ || this)
                                 {
                                    if(!(_loc5_ && this))
                                    {
                                       if(_loc4_ || _loc3_)
                                       {
                                          if(!_loc5_)
                                          {
                                             if(!_loc5_)
                                             {
                                                if(false)
                                                {
                                                   loop6:
                                                   while(true)
                                                   {
                                                      §§push(_loc2_.§=C§());
                                                      if(_loc4_ || this)
                                                      {
                                                         if(_loc4_ || this)
                                                         {
                                                            addr87:
                                                            §§push(Boolean(§§pop()));
                                                            if(_loc4_)
                                                            {
                                                               if(!_loc5_)
                                                               {
                                                                  addr91:
                                                                  if(§§pop())
                                                                  {
                                                                     addr93:
                                                                     if(!(_loc5_ && this))
                                                                     {
                                                                        _loc2_.update(param1);
                                                                        addr103:
                                                                     }
                                                                     else
                                                                     {
                                                                        addr168:
                                                                        _loc2_.§'!S§(§6!D§.§84§);
                                                                        addr172:
                                                                        if(!_loc5_)
                                                                        {
                                                                           if(_loc4_)
                                                                           {
                                                                              if(!(_loc5_ && param1))
                                                                              {
                                                                                 this.§9!S§(_loc3_,false,true,true);
                                                                                 addr158:
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    break loop5;
                                                                                 }
                                                                                 continue loop5;
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 continue loop5;
                                                                              }
                                                                              addr223:
                                                                           }
                                                                           else
                                                                           {
                                                                              addr201:
                                                                              _loc2_.§'!S§(§6!D§.§84§);
                                                                              while(true)
                                                                              {
                                                                                 this.§9!S§(_loc3_,false,false,false);
                                                                              }
                                                                              addr205:
                                                                           }
                                                                        }
                                                                        while(!_loc4_)
                                                                        {
                                                                           §§goto(addr205);
                                                                        }
                                                                     }
                                                                  }
                                                                  continue loop5;
                                                               }
                                                               loop7:
                                                               while(!§§pop())
                                                               {
                                                                  §§push(_loc2_.isReadyToBeRemoved(param1));
                                                                  loop8:
                                                                  while(!§§pop())
                                                                  {
                                                                     §§push(_loc2_.§]!?§());
                                                                     if(!_loc5_)
                                                                     {
                                                                        if(_loc4_ || param1)
                                                                        {
                                                                           addr129:
                                                                           §§push(Boolean(§§pop()));
                                                                           while(true)
                                                                           {
                                                                              if(!_loc5_)
                                                                              {
                                                                                 continue loop2;
                                                                              }
                                                                              continue loop8;
                                                                           }
                                                                           addr129:
                                                                        }
                                                                        else
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              if(!§§pop())
                                                                              {
                                                                                 continue loop7;
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 if(!(_loc5_ && this))
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       this.§7J§(_loc2_,param1);
                                                                                       §§goto(addr223);
                                                                                    }
                                                                                    addr219:
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr255);
                                                                                 }
                                                                              }
                                                                           }
                                                                           addr211:
                                                                        }
                                                                     }
                                                                     §§goto(addr129);
                                                                  }
                                                                  §§goto(addr168);
                                                               }
                                                               §§goto(addr201);
                                                            }
                                                            §§goto(addr129);
                                                         }
                                                         else
                                                         {
                                                            addr142:
                                                            §§pop();
                                                            while(true)
                                                            {
                                                               if(!(_loc5_ && _loc3_))
                                                               {
                                                                  continue loop6;
                                                               }
                                                            }
                                                            addr143:
                                                         }
                                                         §§goto(addr172);
                                                      }
                                                      §§goto(addr87);
                                                   }
                                                   continue loop2;
                                                }
                                                continue loop0;
                                             }
                                             §§goto(addr212);
                                          }
                                          §§goto(addr158);
                                       }
                                       §§goto(addr143);
                                    }
                                    §§goto(addr93);
                                 }
                                 §§goto(addr103);
                              }
                              §§goto(addr249);
                           }
                        }
                     }
                     §§goto(addr255);
                  }
                  else
                  {
                     §§push(_loc2_.§'!j§());
                  }
                  §§goto(addr211);
               }
            }
            §§goto(addr219);
         }
         if(!_loc5_)
         {
            this.§-!9§();
         }
      }
      
      private function §,"§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§;!8§ = null;
         var _loc2_:int = 0;
         var _loc3_:* = this.§"!§;
         for each(_loc1_ in _loc3_)
         {
            if(_loc4_ || _loc2_)
            {
               if(_loc1_.type != §-H§.§1!4§)
               {
                  if(!(_loc5_ && _loc3_))
                  {
                     this.§#!U§.mLevelEngine.mWorld.§<!]§(_loc1_.§1q§);
                  }
               }
            }
         }
      }
      
      public function §9!4§() : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§!u§ = null;
         var _loc1_:int = 0;
         while(true)
         {
            if(_loc1_ >= this.§7-§.length)
            {
               return false;
            }
            _loc2_ = this.§7-§[_loc1_];
            if(!(_loc3_ && this))
            {
               §§push(_loc2_.explode());
               if(!(_loc4_ || _loc3_))
               {
                  break;
               }
               if(§§pop())
               {
                  if(!_loc3_)
                  {
                     return true;
                  }
               }
               else
               {
                  _loc1_++;
               }
            }
         }
         return §§pop();
      }
      
      public function §4"!§(param1:§!u§) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(Boolean(param1));
            loop0:
            while(true)
            {
               §§push(§§pop());
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§pop();
                        loop3:
                        while(true)
                        {
                           §§push(param1.§2f§.§4!a§() == § L§.§@8§);
                           if(_loc3_)
                           {
                              §§push(!§§pop());
                              while(!(_loc2_ && _loc2_))
                              {
                                 §§push(Boolean(§§pop()));
                                 while(true)
                                 {
                                 }
                                 if(!(_loc2_ && param1))
                                 {
                                    return §§pop();
                                 }
                              }
                              continue loop2;
                           }
                           loop5:
                           while(true)
                           {
                              §§push(§§pop());
                              if(!(_loc3_ || _loc2_))
                              {
                                 break;
                              }
                              if(§§pop())
                              {
                                 while(true)
                                 {
                                    §§pop();
                                    addr137:
                                    while(!(_loc2_ && _loc2_))
                                    {
                                       while(true)
                                       {
                                          §§push(this.§#!U§.§!#§.§2!d§(param1.§63§().GetPosition().x,param1.§63§().GetPosition().y));
                                          if(_loc3_ || _loc3_)
                                          {
                                             §§push(Boolean(§§pop()));
                                          }
                                          addr50:
                                          while(true)
                                          {
                                             if(_loc2_)
                                             {
                                                continue loop0;
                                             }
                                          }
                                       }
                                    }
                                    addr79:
                                    continue loop3;
                                    addr79:
                                    if(!(_loc3_ || _loc2_))
                                    {
                                       continue;
                                    }
                                    addr86:
                                    if(!_loc3_)
                                    {
                                       continue loop5;
                                    }
                                    §§goto(addr88);
                                 }
                              }
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    if(!(_loc2_ && _loc2_))
                                    {
                                       if(!(_loc2_ && _loc2_))
                                       {
                                          §§goto(addr79);
                                          §§push(true);
                                       }
                                       §§goto(addr137);
                                    }
                                    else
                                    {
                                       addr20:
                                       §§push(false);
                                       if(!_loc2_)
                                       {
                                          if(!_loc2_)
                                          {
                                             return §§pop();
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr79);
                                       }
                                       §§goto(addr50);
                                    }
                                 }
                                 §§goto(addr20);
                              }
                              §§goto(addr86);
                           }
                           continue loop1;
                        }
                     }
                  }
                  §§goto(addr126);
               }
            }
         }
         §§goto(addr144);
      }
      
      public function §9!S§(param1:int, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc6_:§;!8§ = null;
         var _loc7_:§ r§ = null;
         if(!(_loc13_ && param2))
         {
            if(param1 < 0)
            {
               if(_loc12_)
               {
                  §§goto(addr34);
               }
            }
            var _loc5_:§!u§;
            §§push((_loc5_ = this.§7-§[param1]).§^A§());
            if(_loc12_)
            {
               if(§§pop())
               {
                  if(!_loc13_)
                  {
                     var _loc8_:*;
                     §§push((_loc8_ = this).§,!^§);
                     if(!(_loc13_ && param1))
                     {
                        §§push(§§pop() + 1);
                     }
                     var _loc9_:* = §§pop();
                     if(_loc12_ || param1)
                     {
                        _loc8_.§,!^§ = _loc9_;
                     }
                     if(_loc12_ || param2)
                     {
                        addr326:
                        if(_loc5_ == this.§#!U§.activeObject)
                        {
                           addr331:
                           while(true)
                           {
                              §§push(this.§#!U§);
                              addr333:
                              while(true)
                              {
                                 §§pop().activeObject = null;
                                 addr335:
                                 while(true)
                                 {
                                 }
                              }
                           }
                           addr331:
                        }
                        while(true)
                        {
                           §§push(param2);
                           loop3:
                           while(true)
                           {
                              §§push(Boolean(§§pop()));
                              addr322:
                              loop25:
                              while(true)
                              {
                                 if(!§§pop())
                                 {
                                    loop14:
                                    while(§§pop())
                                    {
                                       while(true)
                                       {
                                          if(!(_loc13_ && param1))
                                          {
                                             if(_loc12_ || param2)
                                             {
                                                while(true)
                                                {
                                                   §§push(this.§#!U§);
                                                   if(!(_loc13_ && param1))
                                                   {
                                                      §§push(_loc5_.§2f§.score);
                                                      §§push(§-!8§.§const§);
                                                      §§push(true);
                                                      §§push(_loc5_.§63§().GetPosition().x);
                                                      §§push(_loc5_.§63§().GetPosition().y);
                                                      if(!(_loc13_ && param1))
                                                      {
                                                         addr317:
                                                         §§push(3);
                                                         if(_loc12_)
                                                         {
                                                            addr313:
                                                            §§push(§§pop() - §§pop());
                                                            §§push(§>p§.§?`§(_loc5_.§-!>§));
                                                         }
                                                         §§pop().addScore(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
                                                         while(true)
                                                         {
                                                            break loop14;
                                                            §§goto(addr317);
                                                         }
                                                         addr318:
                                                      }
                                                      §§goto(addr313);
                                                   }
                                                   §§goto(addr333);
                                                }
                                                addr279:
                                             }
                                             §§goto(addr335);
                                          }
                                          addr325:
                                          loop16:
                                          while(true)
                                          {
                                             §§push(_loc5_.§2f§.score);
                                             if(_loc12_ || this)
                                             {
                                                §§push(§§pop() > 0);
                                                while(true)
                                                {
                                                   if(!(_loc13_ && param3))
                                                   {
                                                      if(!(_loc13_ && param2))
                                                      {
                                                         continue loop3;
                                                      }
                                                      continue loop25;
                                                   }
                                                   addr324:
                                                   addr324:
                                                   while(true)
                                                   {
                                                      §§pop();
                                                      continue loop16;
                                                   }
                                                   continue loop16;
                                                }
                                                addr232:
                                             }
                                             addr337:
                                             _loc8_ = §§pop();
                                             _loc9_ = this.§"!§;
                                             break;
                                          }
                                          addr394:
                                          §§push(§§hasnext(_loc9_,_loc8_));
                                          if(_loc12_ || param3)
                                          {
                                             if(§§pop())
                                             {
                                                _loc6_ = §§nextvalue(_loc8_,_loc9_);
                                                if(_loc6_.index1 >= param1)
                                                {
                                                   if(_loc12_ || param2)
                                                   {
                                                      var _loc10_:*;
                                                      var _loc11_:* = (_loc10_ = _loc6_).index1 - 1;
                                                      if(_loc12_)
                                                      {
                                                         _loc10_.index1 = _loc11_;
                                                      }
                                                      if(!_loc13_)
                                                      {
                                                         addr375:
                                                         if(_loc6_.index2 >= param1)
                                                         {
                                                            if(_loc12_)
                                                            {
                                                               addr381:
                                                               _loc11_ = (_loc10_ = _loc6_).index2 - 1;
                                                               if(!_loc13_)
                                                               {
                                                                  _loc10_.index2 = _loc11_;
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr394);
                                                      }
                                                   }
                                                   §§goto(addr381);
                                                }
                                                §§goto(addr375);
                                             }
                                             if(_loc12_)
                                             {
                                                if(_loc12_ || param2)
                                                {
                                                   if(!_loc13_)
                                                   {
                                                      _loc8_ = 0;
                                                      if(!(_loc13_ && param3))
                                                      {
                                                         addr425:
                                                         _loc9_ = this.§&!e§;
                                                         addr482:
                                                         for each(_loc7_ in _loc9_)
                                                         {
                                                            §§push(_loc7_.§`s§);
                                                            if(_loc12_)
                                                            {
                                                               §§push(param1);
                                                               if(!_loc13_)
                                                               {
                                                                  if(§§pop() == §§pop())
                                                                  {
                                                                     if(_loc12_)
                                                                     {
                                                                        _loc7_.§!s§ = true;
                                                                        if(!(_loc13_ && param2))
                                                                        {
                                                                           addr456:
                                                                           if(_loc7_.§`s§ >= param1)
                                                                           {
                                                                              if(!_loc13_)
                                                                              {
                                                                                 §§push((_loc10_ = _loc7_).§`s§);
                                                                                 if(_loc12_)
                                                                                 {
                                                                                    §§push(§§pop() - 1);
                                                                                 }
                                                                                 _loc11_ = §§pop();
                                                                                 if(_loc12_ || param3)
                                                                                 {
                                                                                    _loc10_.§`s§ = _loc11_;
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr482);
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr456);
                                                         }
                                                      }
                                                      if(!_loc13_)
                                                      {
                                                         _loc5_.dispose();
                                                      }
                                                   }
                                                   _loc5_ = null;
                                                   if(!_loc13_)
                                                   {
                                                      this.§7-§[param1] = null;
                                                      this.§7-§.splice(param1,1);
                                                      addr524:
                                                      if(!_loc12_)
                                                      {
                                                         §§goto(addr524);
                                                      }
                                                   }
                                                   return;
                                                }
                                             }
                                             §§goto(addr425);
                                          }
                                          §§goto(addr482);
                                       }
                                    }
                                    loop12:
                                    while(true)
                                    {
                                       §§push(param3);
                                       addr209:
                                       while(true)
                                       {
                                          if(_loc12_)
                                          {
                                             break loop12;
                                          }
                                          §§goto(addr232);
                                       }
                                    }
                                    if(§§pop())
                                    {
                                       loop19:
                                       while(true)
                                       {
                                          this.addDestructionParticles(_loc5_,this.§#!U§.particles);
                                          addr218:
                                          while(true)
                                          {
                                             continue loop19;
                                          }
                                       }
                                       addr212:
                                    }
                                    loop9:
                                    while(true)
                                    {
                                       §§push(param4);
                                       loop10:
                                       while(!_loc13_)
                                       {
                                          if(§§pop())
                                          {
                                             if(_loc12_ || param3)
                                             {
                                                this.§%O§(_loc5_);
                                             }
                                             loop20:
                                             while(true)
                                             {
                                                if(_loc12_ || param1)
                                                {
                                                   while(true)
                                                   {
                                                      §§push(_loc5_.isTexture());
                                                      if(!(_loc12_ || param1))
                                                      {
                                                         continue loop10;
                                                      }
                                                      if(§§pop())
                                                      {
                                                         loop18:
                                                         while(!(_loc13_ && param3))
                                                         {
                                                            if(_loc12_ || param2)
                                                            {
                                                               addr175:
                                                               while(true)
                                                               {
                                                                  this.§0Z§(_loc5_.sprite);
                                                                  loop5:
                                                                  while(true)
                                                                  {
                                                                     if(!_loc12_)
                                                                     {
                                                                        continue loop20;
                                                                     }
                                                                     if(!_loc13_)
                                                                     {
                                                                        loop6:
                                                                        while(true)
                                                                        {
                                                                           this.§%_§(_loc5_);
                                                                           while(_loc12_ || param3)
                                                                           {
                                                                              this.§&4§(_loc5_);
                                                                              if(_loc13_)
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              if(_loc13_)
                                                                              {
                                                                                 continue loop18;
                                                                              }
                                                                              if(!(_loc13_ && this))
                                                                              {
                                                                                 if(false)
                                                                                 {
                                                                                    continue loop6;
                                                                                 }
                                                                                 §§push(0);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr218);
                                                                              }
                                                                           }
                                                                           continue loop5;
                                                                        }
                                                                        continue loop18;
                                                                     }
                                                                     §§goto(addr331);
                                                                  }
                                                                  continue loop20;
                                                               }
                                                               addr175:
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr265);
                                                            }
                                                            §§goto(addr337);
                                                         }
                                                         break loop9;
                                                      }
                                                      §§goto(addr175);
                                                   }
                                                   addr150:
                                                }
                                                §§goto(addr318);
                                             }
                                          }
                                          §§goto(addr150);
                                       }
                                       §§goto(addr209);
                                    }
                                    §§goto(addr212);
                                    addr263:
                                 }
                                 §§goto(addr324);
                              }
                           }
                        }
                     }
                     §§goto(addr325);
                  }
                  §§goto(addr279);
               }
               else
               {
                  §§push(_loc5_.§]!?§());
                  if(!(_loc13_ && param2))
                  {
                     if(§§pop())
                     {
                        if(!_loc13_)
                        {
                           §§push((_loc8_ = this).§-!g§);
                           if(_loc12_ || this)
                           {
                              §§push(§§pop() - 1);
                           }
                           _loc9_ = §§pop();
                           if(_loc12_ || this)
                           {
                              _loc8_.§-!g§ = _loc9_;
                           }
                           if(!_loc13_)
                           {
                              §§goto(addr326);
                           }
                           §§goto(addr331);
                        }
                        §§goto(addr175);
                     }
                     §§goto(addr326);
                  }
               }
               §§goto(addr324);
            }
            §§goto(addr322);
         }
         addr34:
      }
      
      protected function addDestructionParticles(param1:§!u§, param2:§=!%§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            param1.addDestructionParticles(param2);
         }
      }
      
      protected function §0Z§(param1:Sprite) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            §§push(this.§]@§);
            if(_loc3_ || param1)
            {
               if(!§§pop().contains(param1))
               {
                  loop0:
                  while(true)
                  {
                     §§push(this.§;!j§);
                     if(_loc3_)
                     {
                        if(!§§pop().contains(param1))
                        {
                           loop1:
                           while(true)
                           {
                              §§push(this.§2r§);
                              if(!_loc2_)
                              {
                                 if(!§§pop().contains(param1))
                                 {
                                    while(true)
                                    {
                                       §§push(this.§!![§);
                                       if(!_loc3_)
                                       {
                                          break;
                                       }
                                       if(!§§pop().contains(param1))
                                       {
                                          return;
                                       }
                                       if(!_loc3_)
                                       {
                                          addr62:
                                          if(_loc3_ || _loc2_)
                                          {
                                             return;
                                          }
                                          addr104:
                                       }
                                       if(!(_loc2_ && _loc2_))
                                       {
                                          if(_loc3_ || _loc2_)
                                          {
                                             if(!_loc2_)
                                             {
                                                §§push(this.§!![§);
                                                break;
                                             }
                                          }
                                          else
                                          {
                                             addr98:
                                             if(!_loc2_)
                                             {
                                                §§push(this.§2r§);
                                                break loop1;
                                             }
                                             addr116:
                                             if(_loc2_)
                                             {
                                                if(_loc2_)
                                                {
                                                   this.§]@§.removeChild(param1);
                                                   break loop0;
                                                }
                                                addr152:
                                                continue loop0;
                                             }
                                             if(!_loc3_)
                                             {
                                                break loop0;
                                             }
                                             this.§;!j§.removeChild(param1);
                                          }
                                          return;
                                       }
                                       if(!(_loc3_ || _loc3_))
                                       {
                                          continue loop1;
                                          return;
                                       }
                                    }
                                    §§pop().removeChild(param1);
                                    §§goto(addr62);
                                 }
                                 §§goto(addr98);
                              }
                              break;
                           }
                           §§pop().removeChild(param1);
                           §§goto(addr104);
                        }
                        §§goto(addr116);
                     }
                     §§goto(addr132);
                  }
                  return;
               }
            }
         }
         §§goto(addr152);
      }
      
      protected function §%O§(param1:§!u§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            §§push(param1.§#7§());
            loop0:
            while(true)
            {
               §§push(§§pop().toUpperCase() == "WHITE_EGG");
               addr135:
               loop1:
               while(true)
               {
                  if(!§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§pop();
                        addr138:
                        while(true)
                        {
                           §§push(param1.§-!?§());
                           if(_loc2_ || _loc2_)
                           {
                              if(_loc3_ && param1)
                              {
                                 break;
                              }
                              §§push(Boolean(§§pop()));
                           }
                           if(!_loc2_)
                           {
                              continue loop2;
                           }
                        }
                        continue loop1;
                     }
                  }
                  loop4:
                  while(§§pop())
                  {
                     if(_loc2_ || _loc3_)
                     {
                        continue loop0;
                     }
                     addr115:
                     while(true)
                     {
                        this.addExplosions(§3!b§.§ !>§,param1.§63§().GetPosition().x,param1.§63§().GetPosition().y);
                        addr127:
                        while(true)
                        {
                           if(!_loc3_)
                           {
                              break loop4;
                           }
                           §§goto(addr138);
                        }
                     }
                  }
                  §§goto(addr24);
               }
            }
            addr132:
         }
         while(true)
         {
            §§push(param1.§-!>§);
            if(!(_loc3_ && _loc2_))
            {
               if(§§pop().toUpperCase() != §1!C§.§-!5§)
               {
                  this.addExplosions(§3!b§.§1!+§,param1.§63§().GetPosition().x,param1.§63§().GetPosition().y);
                  if(!_loc3_)
                  {
                     if(!(_loc2_ || _loc3_))
                     {
                        §§goto(addr115);
                     }
                     addr24:
                     return;
                  }
                  §§goto(addr127);
               }
               §§goto(addr115);
            }
            else
            {
               §§goto(addr132);
            }
         }
      }
      
      public function §&!l§(param1:Object, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || param3)
         {
            this.§9!S§(this.§7-§.indexOf(param1),param2,param3,param4);
         }
      }
      
      public function §1T§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §§push(this.§4G§);
            loop0:
            while(true)
            {
               §§push(param1);
               if(_loc3_)
               {
                  §§push(-§§pop());
               }
               addr59:
               while(true)
               {
                  §§pop().x = §§pop();
                  continue loop0;
               }
            }
            addr55:
         }
         while(true)
         {
            §§push(this.§4G§);
            if(_loc3_)
            {
               §§push(param2);
               if(!_loc4_)
               {
                  §§push(-§§pop());
               }
               if(!(_loc4_ && param1))
               {
                  §§pop().y = §§pop();
                  if(_loc3_)
                  {
                     break;
                  }
                  continue;
               }
            }
            else
            {
               §§goto(addr55);
            }
            §§goto(addr59);
         }
      }
      
      public function isPigsAlive(param1:Boolean = false) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§!u§ = null;
         var _loc2_:int = 0;
         loop0:
         while(_loc2_ < this.§7-§.length)
         {
            _loc3_ = this.§7-§[_loc2_] as §!u§;
            if(!(_loc4_ && _loc3_))
            {
               §§push(Boolean(_loc3_));
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
                              §§push(_loc3_.§^A§());
                              while(true)
                              {
                                 §§push(Boolean(§§pop()));
                                 addr102:
                                 if(_loc5_ || param1)
                                 {
                                    loop19:
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          if(!(_loc4_ && this))
                                          {
                                             if(_loc5_)
                                             {
                                                §§push(true);
                                                loop20:
                                                while(_loc4_ && param1)
                                                {
                                                   loop18:
                                                   while(true)
                                                   {
                                                      §§pop();
                                                      loop22:
                                                      while(true)
                                                      {
                                                         §§push(_loc3_.§+!j§);
                                                         loop23:
                                                         while(true)
                                                         {
                                                            §§push(§§pop().mTryToBlink);
                                                            loop24:
                                                            while(true)
                                                            {
                                                               if(!_loc4_)
                                                               {
                                                                  §§push(0);
                                                                  loop25:
                                                                  while(true)
                                                                  {
                                                                     if(!(_loc4_ && _loc2_))
                                                                     {
                                                                        §§push(§§pop() <= §§pop());
                                                                        if(_loc5_)
                                                                        {
                                                                           if(_loc5_)
                                                                           {
                                                                              §§push(§§pop());
                                                                              if(!_loc4_)
                                                                              {
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    if(!§§pop())
                                                                                    {
                                                                                       continue loop19;
                                                                                    }
                                                                                    loop26:
                                                                                    while(true)
                                                                                    {
                                                                                       §§pop();
                                                                                       loop21:
                                                                                       while(true)
                                                                                       {
                                                                                          loop28:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc3_.§+!j§);
                                                                                             if(_loc4_ && this)
                                                                                             {
                                                                                                continue loop23;
                                                                                             }
                                                                                             §§push(§§pop().mTryToScream);
                                                                                             if(!_loc5_)
                                                                                             {
                                                                                                continue loop24;
                                                                                             }
                                                                                             §§push(0);
                                                                                             if(_loc4_ && param1)
                                                                                             {
                                                                                                continue loop25;
                                                                                             }
                                                                                             §§push(§§pop() <= §§pop());
                                                                                             if(_loc4_)
                                                                                             {
                                                                                                continue loop20;
                                                                                             }
                                                                                             if(_loc4_)
                                                                                             {
                                                                                                continue loop26;
                                                                                             }
                                                                                             if(_loc5_)
                                                                                             {
                                                                                                if(_loc5_)
                                                                                                {
                                                                                                   §§goto(addr102);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§pop();
                                                                                                      addr226:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc3_.§0M§);
                                                                                                         addr172:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            break loop21;
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   addr225:
                                                                                                }
                                                                                             }
                                                                                             loop14:
                                                                                             while(true)
                                                                                             {
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   if(_loc4_ && this)
                                                                                                   {
                                                                                                      continue loop22;
                                                                                                   }
                                                                                                   §§push(param1);
                                                                                                   while(!(_loc4_ && param1))
                                                                                                   {
                                                                                                      if(!_loc4_)
                                                                                                      {
                                                                                                         §§push(!§§pop());
                                                                                                         while(_loc5_)
                                                                                                         {
                                                                                                            §§push(§§pop());
                                                                                                            while(!(_loc4_ && _loc3_))
                                                                                                            {
                                                                                                               if(!§§pop())
                                                                                                               {
                                                                                                                  continue loop18;
                                                                                                               }
                                                                                                               continue loop19;
                                                                                                            }
                                                                                                            continue loop2;
                                                                                                         }
                                                                                                         continue loop1;
                                                                                                         addr194:
                                                                                                      }
                                                                                                      continue loop3;
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop());
                                                                                                      addr224:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            §§goto(addr225);
                                                                                                         }
                                                                                                         addr174:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            continue loop14;
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr184);
                                                                                                   }
                                                                                                   addr184:
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   loop27:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      _loc2_++;
                                                                                                      if(_loc5_ || _loc3_)
                                                                                                      {
                                                                                                         if(_loc5_ || _loc3_)
                                                                                                         {
                                                                                                            if(!(_loc4_ && _loc2_))
                                                                                                            {
                                                                                                               if(_loc4_ && _loc3_)
                                                                                                               {
                                                                                                                  break;
                                                                                                               }
                                                                                                               if(false)
                                                                                                               {
                                                                                                                  continue loop28;
                                                                                                               }
                                                                                                               continue loop0;
                                                                                                            }
                                                                                                            continue loop22;
                                                                                                         }
                                                                                                         continue loop21;
                                                                                                      }
                                                                                                      addr141:
                                                                                                      addr141:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         continue loop27;
                                                                                                      }
                                                                                                   }
                                                                                                   addr40:
                                                                                                }
                                                                                                §§goto(addr226);
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       addr173:
                                                                                       while(true)
                                                                                       {
                                                                                          §§goto(addr174);
                                                                                       }
                                                                                    }
                                                                                    addr167:
                                                                                 }
                                                                                 §§goto(addr224);
                                                                              }
                                                                              §§goto(addr197);
                                                                           }
                                                                           §§goto(addr184);
                                                                        }
                                                                        §§goto(addr167);
                                                                     }
                                                                     §§goto(addr173);
                                                                  }
                                                               }
                                                               §§goto(addr172);
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                                if(_loc4_)
                                                {
                                                   §§goto(addr194);
                                                }
                                                return §§pop();
                                             }
                                             continue loop4;
                                          }
                                          §§goto(addr141);
                                       }
                                       §§goto(addr40);
                                    }
                                 }
                              }
                           }
                        }
                     }
                     while(true)
                     {
                        §§goto(addr223);
                     }
                  }
               }
            }
            §§goto(addr141);
         }
         return false;
      }
      
      public function §@P§(param1:Boolean = false) : int
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:§!u§ = null;
         var _loc2_:int = 0;
         var _loc3_:* = int(this.§7-§.length - 1);
         loop0:
         while(true)
         {
            §§push(_loc3_);
            if(!_loc6_)
            {
               if(§§pop() < 0)
               {
                  §§push(_loc2_);
                  break;
               }
               §§push(Boolean(_loc4_ = this.§7-§[_loc3_] as §!u§));
               if(!(_loc6_ && _loc2_))
               {
                  §§push(§§pop());
                  if(!(_loc6_ && _loc2_))
                  {
                     if(§§pop())
                     {
                        if(!(_loc6_ && param1))
                        {
                           §§pop();
                           if(!(_loc6_ && _loc2_))
                           {
                              §§push(_loc4_.§^A§());
                              if(_loc5_)
                              {
                                 §§push(Boolean(§§pop()));
                                 loop21:
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    loop19:
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          loop1:
                                          while(true)
                                          {
                                             §§pop();
                                             addr234:
                                             loop2:
                                             while(true)
                                             {
                                                §§push(_loc4_.§0M§);
                                                loop3:
                                                while(true)
                                                {
                                                   §§push(0);
                                                   loop4:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() > §§pop());
                                                      if(_loc5_ || _loc2_)
                                                      {
                                                         while(true)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               loop6:
                                                               while(true)
                                                               {
                                                                  §§push(param1);
                                                                  addr201:
                                                                  while(true)
                                                                  {
                                                                     if(_loc5_)
                                                                     {
                                                                        §§push(!§§pop());
                                                                        while(_loc5_ || _loc3_)
                                                                        {
                                                                           §§push(§§pop());
                                                                           while(true)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 addr120:
                                                                                 while(§§pop())
                                                                                 {
                                                                                    while(_loc6_)
                                                                                    {
                                                                                       continue loop6;
                                                                                    }
                                                                                    if(!_loc6_)
                                                                                    {
                                                                                       _loc2_++;
                                                                                       addr127:
                                                                                       break;
                                                                                    }
                                                                                    continue loop2;
                                                                                 }
                                                                                 addr120:
                                                                              }
                                                                              addr223:
                                                                              while(true)
                                                                              {
                                                                                 §§pop();
                                                                                 addr224:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc4_.§+!j§);
                                                                                    addr131:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop().mTryToBlink);
                                                                                       continue loop3;
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        continue loop1;
                                                                        addr214:
                                                                     }
                                                                     continue loop21;
                                                                  }
                                                               }
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(_loc3_);
                                                               if(!_loc6_)
                                                               {
                                                                  §§push(§§pop() - 1);
                                                               }
                                                               _loc3_ = §§pop();
                                                               if(!_loc6_)
                                                               {
                                                                  if(!_loc6_)
                                                                  {
                                                                     if(_loc5_ || _loc3_)
                                                                     {
                                                                        if(true)
                                                                        {
                                                                           break;
                                                                        }
                                                                        loop8:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc4_.§+!j§);
                                                                           if(_loc5_)
                                                                           {
                                                                              §§push(§§pop().mTryToScream);
                                                                              if(!_loc5_)
                                                                              {
                                                                                 continue loop3;
                                                                              }
                                                                              §§push(0);
                                                                              if(_loc6_ && param1)
                                                                              {
                                                                                 while(_loc5_)
                                                                                 {
                                                                                    §§push(§§pop() <= §§pop());
                                                                                    if(!(_loc6_ && _loc3_))
                                                                                    {
                                                                                       if(!_loc6_)
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop());
                                                                                             if(!(_loc6_ && this))
                                                                                             {
                                                                                                if(_loc6_ && param1)
                                                                                                {
                                                                                                   continue loop19;
                                                                                                }
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   §§goto(addr168);
                                                                                                }
                                                                                                §§goto(addr120);
                                                                                             }
                                                                                             §§goto(addr222);
                                                                                          }
                                                                                          addr152:
                                                                                       }
                                                                                       §§goto(addr214);
                                                                                    }
                                                                                 }
                                                                                 continue loop4;
                                                                              }
                                                                              §§push(§§pop() <= §§pop());
                                                                              if(!_loc5_)
                                                                              {
                                                                                 addr168:
                                                                                 while(true)
                                                                                 {
                                                                                    if(!(_loc6_ && this))
                                                                                    {
                                                                                       if(!_loc6_)
                                                                                       {
                                                                                          §§pop();
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc5_ || param1)
                                                                                             {
                                                                                                continue loop8;
                                                                                             }
                                                                                          }
                                                                                          addr178:
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr201);
                                                                                       }
                                                                                       §§goto(addr224);
                                                                                    }
                                                                                    §§goto(addr223);
                                                                                 }
                                                                                 addr168:
                                                                              }
                                                                              §§goto(addr120);
                                                                              §§goto(addr168);
                                                                           }
                                                                           §§goto(addr131);
                                                                        }
                                                                     }
                                                                     §§goto(addr178);
                                                                  }
                                                                  §§goto(addr122);
                                                               }
                                                               §§goto(addr127);
                                                            }
                                                            continue loop0;
                                                         }
                                                         addr198:
                                                      }
                                                      §§goto(addr201);
                                                   }
                                                }
                                             }
                                          }
                                          addr233:
                                       }
                                       §§goto(addr198);
                                    }
                                 }
                                 addr231:
                              }
                              §§goto(addr233);
                           }
                           §§goto(addr234);
                        }
                        §§goto(addr152);
                     }
                     §§goto(addr231);
                  }
                  §§goto(addr222);
               }
               §§goto(addr223);
            }
            break;
         }
         return §§pop();
      }
      
      public function §4W§() : int
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§!u§ = null;
         var _loc1_:int = 0;
         var _loc3_:int = 0;
         loop0:
         for each(_loc2_ in this.§7-§)
         {
            if(_loc6_ || _loc3_)
            {
               §§push(Boolean(_loc2_));
               if(!_loc5_)
               {
                  §§push(§§pop());
                  loop1:
                  while(true)
                  {
                     if(§§pop())
                     {
                        loop7:
                        while(true)
                        {
                           §§pop();
                           loop6:
                           while(true)
                           {
                              loop3:
                              while(true)
                              {
                                 §§push(_loc2_.§,!y§());
                                 if(_loc6_ || _loc1_)
                                 {
                                    §§push(Boolean(§§pop()));
                                    loop4:
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       if(_loc5_)
                                       {
                                          break;
                                       }
                                       if(§§pop())
                                       {
                                          addr68:
                                          while(§§pop())
                                          {
                                             if(!_loc5_)
                                             {
                                                if(!_loc5_)
                                                {
                                                   _loc1_++;
                                                }
                                                else
                                                {
                                                   loop8:
                                                   while(true)
                                                   {
                                                      §§push(_loc2_.§]q§());
                                                      if(!_loc5_)
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                      }
                                                      if(!_loc5_)
                                                      {
                                                         continue loop4;
                                                      }
                                                      addr104:
                                                      while(true)
                                                      {
                                                         if(_loc6_)
                                                         {
                                                            §§pop();
                                                            continue loop8;
                                                         }
                                                         continue loop7;
                                                      }
                                                      continue loop7;
                                                   }
                                                   addr107:
                                                }
                                             }
                                             if(_loc6_)
                                             {
                                                if(true)
                                                {
                                                   break;
                                                }
                                                continue loop3;
                                             }
                                             continue loop6;
                                          }
                                          continue loop0;
                                          addr68:
                                       }
                                    }
                                    continue loop1;
                                 }
                                 §§goto(addr104);
                              }
                           }
                        }
                        addr114:
                     }
                     §§goto(addr68);
                  }
               }
               §§goto(addr114);
            }
            §§goto(addr107);
         }
         return _loc1_;
      }
      
      public function §^C§() : int
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§!u§ = null;
         var _loc1_:int = 0;
         var _loc3_:int = 0;
         for each(_loc2_ in this.§7-§)
         {
            if(!(_loc5_ && _loc3_))
            {
               §§push(Boolean(_loc2_));
               if(!(_loc5_ && _loc1_))
               {
                  if(§§pop())
                  {
                     if(_loc6_)
                     {
                        addr75:
                        §§pop();
                        if(!_loc5_)
                        {
                           addr78:
                           §§push(_loc2_.isTexture());
                           if(_loc6_)
                           {
                              addr83:
                              if(!§§pop())
                              {
                                 continue;
                              }
                              if(_loc5_ && _loc2_)
                              {
                                 continue;
                              }
                           }
                           §§goto(addr83);
                        }
                        _loc1_++;
                        continue;
                     }
                  }
                  §§goto(addr83);
               }
               §§goto(addr75);
            }
            §§goto(addr78);
         }
         return _loc1_;
      }
      
      public function makePigsSmile(param1:Number = 1) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§!u§ = null;
         var _loc2_:* = int(this.§7-§.length - 1);
         loop0:
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§7-§[_loc2_];
            if(!_loc4_)
            {
               §§push(Boolean(_loc3_));
               if(!_loc4_)
               {
                  §§push(§§pop());
                  loop1:
                  while(true)
                  {
                     if(§§pop())
                     {
                        loop10:
                        while(true)
                        {
                           §§pop();
                           loop11:
                           while(true)
                           {
                              §§push(_loc3_.§^A§());
                              if(!(_loc4_ && _loc3_))
                              {
                                 §§push(Boolean(§§pop()));
                                 if(!_loc4_)
                                 {
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       if(_loc4_)
                                       {
                                          break;
                                       }
                                       if(§§pop())
                                       {
                                          loop3:
                                          while(true)
                                          {
                                             §§pop();
                                             addr132:
                                             while(true)
                                             {
                                                if(!_loc5_)
                                                {
                                                   continue loop11;
                                                }
                                                while(true)
                                                {
                                                   addr71:
                                                   while(true)
                                                   {
                                                      §§push(_loc3_.§0M§ > 0);
                                                      if(_loc5_)
                                                      {
                                                         addr78:
                                                         if(_loc5_ || param1)
                                                         {
                                                            break;
                                                         }
                                                         continue loop10;
                                                      }
                                                      continue loop3;
                                                   }
                                                }
                                             }
                                             continue loop11;
                                          }
                                          continue;
                                          addr131:
                                       }
                                       loop5:
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             loop6:
                                             while(true)
                                             {
                                                §§push(_loc3_.§+!j§);
                                                §§push(§7!r§.§<!c§);
                                                if(_loc5_ || _loc2_)
                                                {
                                                   §§push(§§pop() * param1);
                                                }
                                                §§pop().mTryToScream = §§pop();
                                                loop7:
                                                while(true)
                                                {
                                                   addr37:
                                                   while(true)
                                                   {
                                                      §§push(_loc2_);
                                                      if(_loc5_)
                                                      {
                                                         §§push(§§pop() - 1);
                                                      }
                                                      _loc2_ = §§pop();
                                                      if(!_loc4_)
                                                      {
                                                         if(!(_loc4_ && param1))
                                                         {
                                                            break;
                                                         }
                                                         continue loop6;
                                                      }
                                                      continue loop7;
                                                   }
                                                   if(!(_loc4_ && this))
                                                   {
                                                      if(true)
                                                      {
                                                         break loop5;
                                                      }
                                                      §§goto(addr71);
                                                   }
                                                   §§goto(addr132);
                                                }
                                             }
                                          }
                                          §§goto(addr37);
                                          §§goto(addr78);
                                       }
                                       continue loop0;
                                    }
                                    continue loop1;
                                    addr126:
                                 }
                              }
                              §§goto(addr131);
                           }
                        }
                        addr142:
                     }
                     §§goto(addr126);
                  }
               }
               §§goto(addr142);
            }
            §§goto(addr134);
         }
      }
      
      public function §="!§() : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§!u§ = null;
         var _loc1_:* = int(this.§7-§.length - 1);
         loop0:
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§7-§[_loc1_] as §!u§;
            if(_loc3_)
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
                              §§push(_loc2_.§]!?§());
                              if(_loc3_)
                              {
                                 §§push(Boolean(§§pop()));
                                 while(true)
                                 {
                                 }
                                 addr129:
                              }
                              loop5:
                              do
                              {
                                 §§push(§§pop());
                                 if(!(_loc3_ || _loc2_))
                                 {
                                    continue loop2;
                                 }
                                 if(§§pop())
                                 {
                                    loop6:
                                    while(true)
                                    {
                                       §§pop();
                                       addr140:
                                       while(!_loc4_)
                                       {
                                          while(true)
                                          {
                                             §§push(_loc2_.§0M§ > 0);
                                             if(!(_loc3_ || _loc2_))
                                             {
                                                break;
                                             }
                                             if(_loc4_)
                                             {
                                                continue loop6;
                                             }
                                          }
                                          continue loop5;
                                       }
                                       continue loop4;
                                    }
                                 }
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       if(_loc3_ || _loc2_)
                                       {
                                          §§push(true);
                                          continue loop5;
                                       }
                                       loop10:
                                       while(_loc3_)
                                       {
                                          while(true)
                                          {
                                             §§push(_loc1_);
                                             if(_loc3_ || _loc2_)
                                             {
                                                §§push(§§pop() - 1);
                                             }
                                             _loc1_ = §§pop();
                                             if(!(_loc4_ && _loc3_))
                                             {
                                                while(false)
                                                {
                                                   §§goto(addr58);
                                                }
                                                continue loop0;
                                                addr56:
                                             }
                                             continue loop10;
                                          }
                                       }
                                       §§goto(addr140);
                                    }
                                    §§goto(addr38);
                                 }
                              }
                              while(!_loc3_);
                              
                              if(!(_loc4_ && _loc3_))
                              {
                                 continue loop1;
                              }
                              continue loop3;
                           }
                        }
                     }
                     §§goto(addr129);
                  }
               }
            }
            §§goto(addr56);
         }
         return false;
      }
      
      public function isWorldAtSleep() : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§!u§ = null;
         var _loc1_:* = int(this.§7-§.length - 1);
         loop0:
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§7-§[_loc1_] as §!u§;
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
                        loop3:
                        while(true)
                        {
                           §§pop();
                           addr272:
                           while(true)
                           {
                              §§push(_loc2_.§0M§);
                              addr248:
                              while(true)
                              {
                                 §§push(0);
                                 addr249:
                                 while(true)
                                 {
                                    §§push(§§pop() > §§pop());
                                    addr250:
                                    while(_loc4_ || this)
                                    {
                                       §§push(Boolean(§§pop()));
                                    }
                                    continue loop3;
                                 }
                              }
                           }
                        }
                     }
                     while(true)
                     {
                        loop9:
                        while(true)
                        {
                           §§push(§§pop());
                           loop10:
                           while(!_loc3_)
                           {
                              if(§§pop())
                              {
                                 loop11:
                                 while(true)
                                 {
                                    §§pop();
                                    loop12:
                                    while(true)
                                    {
                                       §§push(_loc2_.§-!o§);
                                       while(true)
                                       {
                                          §§push(§§pop() == §4K§.§&!8§);
                                          if(!(_loc4_ || this))
                                          {
                                             continue loop9;
                                          }
                                          §§push(!§§pop());
                                          loop25:
                                          while(true)
                                          {
                                             §§push(_loc1_);
                                             if(!_loc3_)
                                             {
                                                §§push(§§pop() - 1);
                                             }
                                             if(_loc3_)
                                             {
                                                break;
                                             }
                                             _loc1_ = §§pop();
                                             if(_loc4_)
                                             {
                                                if(true)
                                                {
                                                   continue loop0;
                                                }
                                                loop24:
                                                while(true)
                                                {
                                                   §§push(_loc2_.§0M§);
                                                   if(_loc4_)
                                                   {
                                                      §§push(0);
                                                      if(!_loc3_)
                                                      {
                                                         §§push(§§pop() > §§pop());
                                                         if(_loc4_)
                                                         {
                                                            if(!(_loc3_ && this))
                                                            {
                                                               if(!(_loc3_ && _loc3_))
                                                               {
                                                                  if(_loc4_ || _loc3_)
                                                                  {
                                                                     if(_loc3_ && _loc1_)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           if(!§§pop())
                                                                           {
                                                                              continue loop25;
                                                                           }
                                                                           loop34:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc2_.§2b§());
                                                                              if(_loc4_ || _loc3_)
                                                                              {
                                                                                 continue loop9;
                                                                              }
                                                                              addr224:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop());
                                                                                 loop16:
                                                                                 while(!(_loc3_ && _loc2_))
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       addr233:
                                                                                       while(true)
                                                                                       {
                                                                                          §§pop();
                                                                                          break loop24;
                                                                                       }
                                                                                       addr233:
                                                                                    }
                                                                                    loop17:
                                                                                    while(true)
                                                                                    {
                                                                                       loop18:
                                                                                       while(true)
                                                                                       {
                                                                                          if(!§§pop())
                                                                                          {
                                                                                             loop19:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc2_.§]!?§());
                                                                                                addr135:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(Boolean(§§pop()));
                                                                                                   addr136:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!_loc3_)
                                                                                                      {
                                                                                                         if(!_loc3_)
                                                                                                         {
                                                                                                            §§push(§§pop());
                                                                                                            if(!_loc4_)
                                                                                                            {
                                                                                                               continue loop16;
                                                                                                            }
                                                                                                            if(!§§pop())
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(!§§pop())
                                                                                                                  {
                                                                                                                     continue loop25;
                                                                                                                  }
                                                                                                                  if(_loc4_)
                                                                                                                  {
                                                                                                                     if(!_loc3_)
                                                                                                                     {
                                                                                                                        if(!(_loc3_ && _loc2_))
                                                                                                                        {
                                                                                                                           §§push(false);
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(_loc4_ || _loc3_)
                                                                                                                              {
                                                                                                                                 continue loop11;
                                                                                                                              }
                                                                                                                              addr144:
                                                                                                                              while(!_loc3_)
                                                                                                                              {
                                                                                                                                 if(_loc4_)
                                                                                                                                 {
                                                                                                                                    §§pop();
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(_loc4_ || _loc3_)
                                                                                                                                       {
                                                                                                                                          if(_loc3_ && _loc3_)
                                                                                                                                          {
                                                                                                                                             break;
                                                                                                                                          }
                                                                                                                                          continue loop24;
                                                                                                                                       }
                                                                                                                                       addr170:
                                                                                                                                       if(!_loc4_)
                                                                                                                                       {
                                                                                                                                          continue loop34;
                                                                                                                                       }
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(false);
                                                                                                                                          §§goto(addr173);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    continue loop12;
                                                                                                                                    addr149:
                                                                                                                                 }
                                                                                                                                 continue loop1;
                                                                                                                              }
                                                                                                                              continue loop17;
                                                                                                                           }
                                                                                                                           addr104:
                                                                                                                        }
                                                                                                                        break loop24;
                                                                                                                     }
                                                                                                                     if(_loc3_ && this)
                                                                                                                     {
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     continue loop19;
                                                                                                                  }
                                                                                                                  addr119:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(_loc4_)
                                                                                                                     {
                                                                                                                        continue loop25;
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr149);
                                                                                                               }
                                                                                                               §§goto(addr272);
                                                                                                               addr90:
                                                                                                            }
                                                                                                            §§goto(addr144);
                                                                                                         }
                                                                                                         break;
                                                                                                      }
                                                                                                      continue loop18;
                                                                                                   }
                                                                                                   §§goto(addr250);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr170);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 continue loop10;
                                                                              }
                                                                           }
                                                                        }
                                                                        addr199:
                                                                     }
                                                                     §§goto(addr90);
                                                                  }
                                                                  addr173:
                                                                  while(_loc3_)
                                                                  {
                                                                     §§goto(addr233);
                                                                  }
                                                                  return §§pop();
                                                               }
                                                               §§goto(addr135);
                                                            }
                                                            §§goto(addr136);
                                                         }
                                                         §§goto(addr104);
                                                      }
                                                      §§goto(addr249);
                                                   }
                                                   §§goto(addr248);
                                                }
                                                while(true)
                                                {
                                                   §§goto(addr167);
                                                }
                                             }
                                             §§goto(addr119);
                                          }
                                       }
                                    }
                                 }
                              }
                              while(true)
                              {
                                 §§goto(addr199);
                              }
                           }
                           continue loop2;
                        }
                     }
                  }
               }
            }
            §§goto(addr172);
         }
         return true;
      }
      
      public function § !"§(param1:Boolean = false) : §!u§
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc7_:§!u§ = null;
         if(!_loc9_)
         {
            if(!this.isPigsAlive())
            {
               if(!(_loc9_ && param1))
               {
                  return null;
               }
            }
         }
         var _loc2_:int = this.§7-§.length;
         §§push(this.§@P§(param1));
         if(!(_loc9_ && this))
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(_loc8_ || param1)
         {
            §§push(_loc3_);
            if(_loc8_ || param1)
            {
               if(§§pop() == 0)
               {
                  if(!_loc9_)
                  {
                     return null;
                  }
                  addr71:
                  §§push(int(Math.random() * _loc3_));
               }
               §§goto(addr71);
            }
            var _loc4_:* = §§pop();
            var _loc5_:int = 0;
            var _loc6_:int = 0;
            loop0:
            while(_loc6_ < _loc2_)
            {
               §§push(Boolean(_loc7_ = this.§7-§[_loc6_] as §!u§));
               if(_loc8_ || param1)
               {
                  §§push(§§pop());
                  if(!(_loc9_ && this))
                  {
                     if(§§pop())
                     {
                        if(!(_loc9_ && param1))
                        {
                           §§pop();
                           if(!_loc9_)
                           {
                              §§push(_loc7_.§^A§());
                              loop1:
                              while(true)
                              {
                                 §§push(Boolean(§§pop()));
                                 addr307:
                                 loop23:
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    addr308:
                                    loop24:
                                    while(true)
                                    {
                                       if(!§§pop())
                                       {
                                          addr286:
                                          loop9:
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                loop10:
                                                while(true)
                                                {
                                                   §§push(param1);
                                                   if(_loc8_ || this)
                                                   {
                                                      §§push(!§§pop());
                                                      loop11:
                                                      while(true)
                                                      {
                                                         §§push(§§pop());
                                                         loop12:
                                                         while(true)
                                                         {
                                                            if(!_loc8_)
                                                            {
                                                               continue loop24;
                                                            }
                                                            if(!§§pop())
                                                            {
                                                               addr301:
                                                               loop25:
                                                               while(true)
                                                               {
                                                                  §§pop();
                                                                  loop18:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc7_.§+!j§);
                                                                     loop17:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop().mTryToBlink);
                                                                        loop16:
                                                                        while(true)
                                                                        {
                                                                           §§push(0);
                                                                           addr229:
                                                                           addr253:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop() <= §§pop());
                                                                              if(_loc9_ && _loc2_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              if(_loc8_ || this)
                                                                              {
                                                                                 continue loop12;
                                                                              }
                                                                              continue loop25;
                                                                           }
                                                                           §§pop();
                                                                           loop6:
                                                                           while(true)
                                                                           {
                                                                              if(!_loc8_)
                                                                              {
                                                                                 continue loop18;
                                                                              }
                                                                              §§push(_loc7_.§+!j§);
                                                                              if(!_loc8_)
                                                                              {
                                                                                 continue loop17;
                                                                              }
                                                                              §§push(§§pop().mTryToScream);
                                                                              if(!(_loc8_ || this))
                                                                              {
                                                                                 continue loop16;
                                                                              }
                                                                              if(!(_loc9_ && param1))
                                                                              {
                                                                                 §§push(0);
                                                                                 if(_loc8_)
                                                                                 {
                                                                                    if(_loc8_)
                                                                                    {
                                                                                       §§push(§§pop() <= §§pop());
                                                                                       if(_loc9_ && this)
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                       if(_loc9_ && param1)
                                                                                       {
                                                                                          continue loop11;
                                                                                       }
                                                                                       if(!(_loc9_ && this))
                                                                                       {
                                                                                          if(!_loc9_)
                                                                                          {
                                                                                             addr205:
                                                                                             loop7:
                                                                                             while(§§pop())
                                                                                             {
                                                                                                loop19:
                                                                                                while(_loc5_ >= _loc4_)
                                                                                                {
                                                                                                   if(!_loc9_)
                                                                                                   {
                                                                                                      if(_loc8_)
                                                                                                      {
                                                                                                         return _loc7_;
                                                                                                      }
                                                                                                      continue loop10;
                                                                                                   }
                                                                                                   addr216:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc8_ || _loc2_)
                                                                                                      {
                                                                                                         break loop19;
                                                                                                      }
                                                                                                      loop20:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc7_.§0M§);
                                                                                                         addr260:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(0);
                                                                                                            addr261:
                                                                                                            loop13:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop() > §§pop());
                                                                                                               addr262:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(_loc8_ || this)
                                                                                                                  {
                                                                                                                     if(_loc8_ || _loc2_)
                                                                                                                     {
                                                                                                                        continue loop9;
                                                                                                                     }
                                                                                                                     continue loop23;
                                                                                                                  }
                                                                                                                  addr309:
                                                                                                                  addr309:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§pop();
                                                                                                                     continue loop20;
                                                                                                                  }
                                                                                                                  continue loop13;
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                loop4:
                                                                                                while(true)
                                                                                                {
                                                                                                   _loc5_++;
                                                                                                   addr134:
                                                                                                   addr155:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!_loc9_)
                                                                                                      {
                                                                                                         if(_loc8_)
                                                                                                         {
                                                                                                            addr138:
                                                                                                            if(!(_loc9_ && _loc3_))
                                                                                                            {
                                                                                                               break;
                                                                                                            }
                                                                                                            continue loop6;
                                                                                                         }
                                                                                                         §§goto(addr207);
                                                                                                      }
                                                                                                      §§goto(addr216);
                                                                                                      continue loop4;
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      break loop7;
                                                                                                      §§goto(addr138);
                                                                                                   }
                                                                                                }
                                                                                                addr207:
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                _loc6_++;
                                                                                                if(_loc8_ || _loc3_)
                                                                                                {
                                                                                                   if(true)
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   §§goto(addr132);
                                                                                                }
                                                                                                §§goto(addr134);
                                                                                             }
                                                                                             continue loop0;
                                                                                             addr205:
                                                                                             addr121:
                                                                                          }
                                                                                          continue loop1;
                                                                                       }
                                                                                       §§goto(addr262);
                                                                                    }
                                                                                    §§goto(addr261);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr229);
                                                                                 }
                                                                              }
                                                                              §§goto(addr260);
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               addr301:
                                                            }
                                                            §§goto(addr205);
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr301);
                                                }
                                             }
                                             §§goto(addr121);
                                          }
                                       }
                                       §§goto(addr309);
                                    }
                                 }
                              }
                           }
                           §§goto(addr155);
                        }
                        §§goto(addr309);
                     }
                     §§goto(addr307);
                  }
                  §§goto(addr308);
               }
               §§goto(addr301);
            }
            return null;
         }
         §§goto(addr71);
      }
      
      public function §+!u§() : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:* = 0;
         var _loc2_:* = int(this.§7-§.length - 1);
         loop0:
         while(true)
         {
            §§push(_loc2_);
            if(!(_loc3_ && this))
            {
               §§push(0);
               if(_loc4_)
               {
                  if(_loc4_)
                  {
                     if(§§pop() < §§pop())
                     {
                        if(_loc4_ || this)
                        {
                           if(_loc4_)
                           {
                              §§push(_loc1_);
                              if(_loc4_ || _loc1_)
                              {
                                 addr72:
                                 if(!(_loc3_ && _loc1_))
                                 {
                                    addr93:
                                    §§push(this.§#!U§.slingshot.§+!u§());
                                    if(_loc4_)
                                    {
                                       §§push(§§pop() + §§pop());
                                       if(!(_loc3_ && _loc2_))
                                       {
                                          if(!_loc3_)
                                          {
                                             §§push(int(§§pop()));
                                             loop1:
                                             for(; !_loc3_; while(true)
                                             {
                                                §§push(_loc1_);
                                                if(_loc3_ && _loc2_)
                                                {
                                                   continue loop1;
                                                }
                                                if(_loc4_)
                                                {
                                                   break loop0;
                                                }
                                                addr185:
                                                §§push(§§pop() + (this.§7-§[_loc2_] as §!u§).§2f§.score);
                                             },§§goto(addr187))
                                             {
                                                if(!_loc3_)
                                                {
                                                   _loc1_ = §§pop();
                                                   continue;
                                                }
                                                addr187:
                                                _loc1_ = §§pop();
                                                while(true)
                                                {
                                                   if((this.§7-§[_loc2_] as §!u§).§2b§())
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(_loc1_);
                                                         addr147:
                                                         while(true)
                                                         {
                                                            §§push(§5G§.§'!4§.getValue());
                                                            addr160:
                                                            while(true)
                                                            {
                                                               §§push(§§pop() + §§pop() * int((this.§7-§[_loc2_] as §!u§).§]!3§));
                                                               addr171:
                                                               while(true)
                                                               {
                                                                  §§push(int(§§pop()));
                                                                  addr172:
                                                                  while(true)
                                                                  {
                                                                     _loc1_ = §§pop();
                                                                     addr173:
                                                                     while(true)
                                                                     {
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                      addr146:
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(_loc2_);
                                                      addr114:
                                                      while(true)
                                                      {
                                                         §§push(§§pop() - 1);
                                                         break loop1;
                                                      }
                                                      §§goto(addr173);
                                                   }
                                                   addr129:
                                                   if(!(_loc3_ && _loc1_))
                                                   {
                                                      continue loop0;
                                                   }
                                                }
                                             }
                                             while(true)
                                             {
                                                if(!(_loc3_ && _loc2_))
                                                {
                                                   if(_loc4_)
                                                   {
                                                      _loc2_ = §§pop();
                                                      while(true)
                                                      {
                                                         if(_loc4_)
                                                         {
                                                            if(_loc4_)
                                                            {
                                                               §§goto(addr129);
                                                            }
                                                            §§goto(addr146);
                                                         }
                                                         §§goto(addr173);
                                                      }
                                                      continue loop0;
                                                      addr125:
                                                   }
                                                   §§goto(addr147);
                                                }
                                                §§goto(addr172);
                                             }
                                             addr106:
                                          }
                                          §§goto(addr187);
                                          §§push(int(§§pop()));
                                       }
                                       §§goto(addr171);
                                    }
                                    §§goto(addr185);
                                 }
                                 §§goto(addr114);
                              }
                              §§goto(addr106);
                           }
                           §§goto(addr125);
                        }
                        §§goto(addr111);
                     }
                     else
                     {
                        §§push(_loc1_);
                     }
                     §§goto(addr185);
                  }
                  §§goto(addr160);
               }
               §§goto(addr93);
            }
            §§goto(addr72);
         }
         return §§pop();
      }
      
      public function §0&§(param1:§!u§, param2:§!u§) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §§push(param2 is §^h§);
            loop0:
            while(true)
            {
               §§push(§§pop());
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§pop();
                        loop3:
                        while(true)
                        {
                           §§push(param1 is §^h§);
                           loop4:
                           while(_loc4_)
                           {
                              addr94:
                              if(_loc4_ || param1)
                              {
                                 §§push(!§§pop());
                                 loop8:
                                 do
                                 {
                                    §§push(§§pop());
                                    if(_loc3_ && _loc3_)
                                    {
                                       continue loop1;
                                    }
                                    if(§§pop())
                                    {
                                       loop9:
                                       while(true)
                                       {
                                          if(_loc4_ || this)
                                          {
                                             §§pop();
                                             loop10:
                                             while(true)
                                             {
                                                §§push(param2.§&V§());
                                                if(!(_loc4_ || param2))
                                                {
                                                   break;
                                                }
                                                if(_loc4_)
                                                {
                                                   §§push(!§§pop());
                                                   if(_loc3_ && this)
                                                   {
                                                      break;
                                                   }
                                                   if(!(_loc3_ && param1))
                                                   {
                                                      while(§§pop())
                                                      {
                                                         if(!_loc4_)
                                                         {
                                                            continue loop10;
                                                         }
                                                         if(_loc4_)
                                                         {
                                                            §§push(true);
                                                            break loop10;
                                                         }
                                                         if(!(_loc4_ || param2))
                                                         {
                                                            break loop9;
                                                         }
                                                         addr147:
                                                         while(true)
                                                         {
                                                            §§push(param1.§&V§());
                                                            §§goto(addr147);
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(false);
                                                         if(_loc3_ && _loc3_)
                                                         {
                                                            break loop10;
                                                         }
                                                         continue loop8;
                                                      }
                                                      addr20:
                                                      addr61:
                                                   }
                                                   while(true)
                                                   {
                                                      if(_loc3_)
                                                      {
                                                         addr139:
                                                         return §§pop();
                                                      }
                                                      §§goto(addr94);
                                                   }
                                                   continue loop4;
                                                }
                                                continue loop9;
                                             }
                                             return §§pop();
                                          }
                                          continue loop2;
                                       }
                                       continue loop3;
                                    }
                                    §§goto(addr61);
                                 }
                                 while(_loc3_);
                                 
                                 return §§pop();
                              }
                           }
                           continue loop0;
                        }
                     }
                  }
                  while(true)
                  {
                     if(!§§pop())
                     {
                        §§goto(addr89);
                     }
                     §§goto(addr138);
                  }
               }
            }
         }
         §§goto(addr88);
      }
      
      public function § I§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.mSardineCanAdded = true;
            do
            {
               this.§-!g§ = 0;
            }
            while(_loc1_);
            
         }
      }
      
      public function §&!K§(param1:§!u§, param2:§!u§) : Boolean
      {
         var _loc20_:Boolean = false;
         var _loc21_:Boolean = true;
         var _loc18_:* = NaN;
         var _loc19_:* = NaN;
         if(!(_loc20_ && param1))
         {
            §§push(this.mMightyEagleAdded);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  §§push(this.mSardineCanAdded);
                  loop1:
                  for(; _loc21_; if(_loc20_ && _loc3_)
                  {
                     continue;
                  },§§goto(addr117))
                  {
                     if(!_loc20_)
                     {
                        §§push(Boolean(§§pop()));
                        loop2:
                        while(true)
                        {
                           §§push(§§pop());
                           loop3:
                           while(true)
                           {
                              if(!(_loc20_ && param2))
                              {
                                 if(§§pop())
                                 {
                                    loop4:
                                    while(true)
                                    {
                                       §§pop();
                                       loop5:
                                       while(true)
                                       {
                                          if(_loc21_)
                                          {
                                             if(_loc21_ || _loc3_)
                                             {
                                                §§push(this.mMightyEagleTimer);
                                                if(_loc20_)
                                                {
                                                   break;
                                                }
                                                §§push(§§pop() == this.§2!y§.MIGHTY_EAGLE_WAIT_TIME);
                                                loop6:
                                                while(_loc21_)
                                                {
                                                   while(true)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         loop17:
                                                         while(_loc21_)
                                                         {
                                                            §§push(param1.§1!b§());
                                                            loop21:
                                                            while(true)
                                                            {
                                                               if(!_loc21_)
                                                               {
                                                                  continue loop2;
                                                               }
                                                               addr172:
                                                               if(_loc21_ || this)
                                                               {
                                                                  if(_loc21_)
                                                                  {
                                                                     §§push(Boolean(§§pop()));
                                                                     loop22:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop());
                                                                        if(!(_loc21_ || _loc3_))
                                                                        {
                                                                           continue loop3;
                                                                        }
                                                                        if(§§pop())
                                                                        {
                                                                           loop19:
                                                                           while(§§pop())
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 if(!(_loc20_ && param2))
                                                                                 {
                                                                                    this.mMightyEagleTimer = 0;
                                                                                    while(true)
                                                                                    {
                                                                                       if(!(_loc21_ || param2))
                                                                                       {
                                                                                          continue loop17;
                                                                                       }
                                                                                       if(_loc20_)
                                                                                       {
                                                                                          continue loop5;
                                                                                       }
                                                                                       if(!(_loc20_ && this))
                                                                                       {
                                                                                          if(!(_loc20_ && param2))
                                                                                          {
                                                                                             break loop19;
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          if(_loc21_ || _loc3_)
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                break loop19;
                                                                                             }
                                                                                             addr202:
                                                                                          }
                                                                                          addr327:
                                                                                          §§push(param2.§^A§());
                                                                                          if(_loc21_ || param1)
                                                                                          {
                                                                                             addr295:
                                                                                             if(_loc21_)
                                                                                             {
                                                                                                addr298:
                                                                                                if(!§§pop())
                                                                                                {
                                                                                                   addr269:
                                                                                                   §§push(param2.§'!j§());
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(Boolean(§§pop()));
                                                                                                      addr273:
                                                                                                      loop31:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop());
                                                                                                         addr274:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(_loc21_)
                                                                                                            {
                                                                                                               if(!§§pop())
                                                                                                               {
                                                                                                                  while(!_loc20_)
                                                                                                                  {
                                                                                                                     addr279:
                                                                                                                     §§pop();
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(param1.§^A§());
                                                                                                                        addr246:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(Boolean(§§pop()));
                                                                                                                           §§goto(addr172);
                                                                                                                        }
                                                                                                                        §§goto(addr279);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  continue loop0;
                                                                                                                  addr277:
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  addr248:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(!§§pop())
                                                                                                                     {
                                                                                                                        §§goto(addr202);
                                                                                                                     }
                                                                                                                     addr249:
                                                                                                                     §§push(param1);
                                                                                                                     §§push(param1.§]!3§);
                                                                                                                     if(_loc21_)
                                                                                                                     {
                                                                                                                        §§push(§§pop() * 2);
                                                                                                                     }
                                                                                                                     addr261:
                                                                                                                     §§pop().applyDamage(§§pop(),true,true,true,false);
                                                                                                                     while(!(_loc21_ || param2))
                                                                                                                     {
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(param1.§'!j§());
                                                                                                                           addr323:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(Boolean(§§pop()));
                                                                                                                              addr324:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§pop());
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     break loop1;
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            while(!§§pop())
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§pop();
                                                                                                                  §§goto(addr327);
                                                                                                               }
                                                                                                               §§goto(addr295);
                                                                                                            }
                                                                                                            §§goto(addr298);
                                                                                                            continue loop31;
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   addr272:
                                                                                                }
                                                                                                addr300:
                                                                                                §§push(param2);
                                                                                                §§push(param2.§]!3§);
                                                                                                if(!(_loc20_ && param2))
                                                                                                {
                                                                                                   §§push(§§pop() * 2);
                                                                                                }
                                                                                                §§pop().applyDamage(§§pop(),true,true,true,false);
                                                                                                break loop17;
                                                                                             }
                                                                                             §§goto(addr324);
                                                                                          }
                                                                                          §§goto(addr326);
                                                                                       }
                                                                                       §§goto(addr300);
                                                                                    }
                                                                                    addr129:
                                                                                 }
                                                                                 addr194:
                                                                                 loop15:
                                                                                 while(_loc21_ || param2)
                                                                                 {
                                                                                    loop35:
                                                                                    while(true)
                                                                                    {
                                                                                       addr91:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(param2.§1!b§());
                                                                                          addr94:
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc21_)
                                                                                             {
                                                                                                if(_loc21_ || param1)
                                                                                                {
                                                                                                   if(_loc21_)
                                                                                                   {
                                                                                                      if(!_loc20_)
                                                                                                      {
                                                                                                         §§push(Boolean(§§pop()));
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(_loc21_)
                                                                                                            {
                                                                                                               continue loop1;
                                                                                                            }
                                                                                                            addr191:
                                                                                                            while(_loc21_)
                                                                                                            {
                                                                                                               §§pop();
                                                                                                               continue loop15;
                                                                                                            }
                                                                                                            §§goto(addr298);
                                                                                                         }
                                                                                                         addr108:
                                                                                                      }
                                                                                                      §§goto(addr283);
                                                                                                   }
                                                                                                   §§goto(addr277);
                                                                                                }
                                                                                                break;
                                                                                             }
                                                                                             continue loop6;
                                                                                          }
                                                                                          §§goto(addr248);
                                                                                          continue loop35;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr269);
                                                                              }
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§push(this.§0&§(param1,param2));
                                                                              if(!_loc20_)
                                                                              {
                                                                                 if(!(_loc20_ && this))
                                                                                 {
                                                                                    if(!(_loc20_ && param1))
                                                                                    {
                                                                                       if(_loc21_ || _loc3_)
                                                                                       {
                                                                                          if(§§pop())
                                                                                          {
                                                                                             if(!(_loc20_ && param2))
                                                                                             {
                                                                                                if(_loc21_ || param1)
                                                                                                {
                                                                                                   if(_loc21_ || param1)
                                                                                                   {
                                                                                                      addr80:
                                                                                                      §§push(false);
                                                                                                      if(_loc21_)
                                                                                                      {
                                                                                                         if(!_loc20_)
                                                                                                         {
                                                                                                            if(_loc21_)
                                                                                                            {
                                                                                                               return §§pop();
                                                                                                            }
                                                                                                            continue loop21;
                                                                                                         }
                                                                                                         continue loop22;
                                                                                                      }
                                                                                                      §§goto(addr108);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§goto(addr119);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr129);
                                                                                             }
                                                                                             else if(_loc21_)
                                                                                             {
                                                                                                if(true)
                                                                                                {
                                                                                                   addr328:
                                                                                                   §§push(Number(10));
                                                                                                   break loop5;
                                                                                                }
                                                                                                §§goto(addr91);
                                                                                             }
                                                                                             §§goto(addr249);
                                                                                          }
                                                                                          §§goto(addr328);
                                                                                       }
                                                                                       §§goto(addr327);
                                                                                    }
                                                                                    break;
                                                                                 }
                                                                                 §§goto(addr94);
                                                                              }
                                                                              §§goto(addr80);
                                                                           }
                                                                           §§goto(addr273);
                                                                           addr29:
                                                                           addr117:
                                                                        }
                                                                        §§goto(addr191);
                                                                     }
                                                                  }
                                                                  §§goto(addr323);
                                                               }
                                                               §§goto(addr246);
                                                            }
                                                         }
                                                         addr283:
                                                         return §§pop();
                                                         §§push(true);
                                                      }
                                                      §§goto(addr29);
                                                   }
                                                }
                                                continue loop4;
                                             }
                                             §§goto(addr280);
                                          }
                                          §§goto(addr261);
                                       }
                                       var _loc3_:* = §§pop();
                                       §§push(param1.§%v§(param2.§#7§()));
                                       if(_loc21_)
                                       {
                                          §§push(Number(§§pop()));
                                       }
                                       var _loc4_:* = §§pop();
                                       §§push(param1.§-!K§(param2.§#7§()));
                                       if(!(_loc20_ && param1))
                                       {
                                          §§push(Number(§§pop()));
                                       }
                                       var _loc5_:* = §§pop();
                                       §§push(param2.§%v§(param1.§#7§()));
                                       if(_loc21_ || this)
                                       {
                                          §§push(Number(§§pop()));
                                       }
                                       var _loc6_:* = §§pop();
                                       §§push(param2.§-!K§(param1.§#7§()));
                                       if(_loc21_)
                                       {
                                          §§push(Number(§§pop()));
                                       }
                                       var _loc7_:* = §§pop();
                                       §§push(param1.§63§().GetMass());
                                       if(!(_loc20_ && this))
                                       {
                                          §§push(param1.§63§());
                                          if(_loc21_ || param1)
                                          {
                                             §§push(§§pop().GetLinearVelocity().x);
                                             if(_loc21_)
                                             {
                                                addr423:
                                                §§push(§§pop() * §§pop());
                                                if(!(_loc20_ && param2))
                                                {
                                                   addr406:
                                                   §§push(param2.§63§().GetMass());
                                                   if(_loc21_)
                                                   {
                                                      §§push(§§pop() * param2.§63§().GetLinearVelocity().x);
                                                   }
                                                }
                                                var _loc8_:* = §§pop();
                                                §§push(param1.§63§().GetMass());
                                                if(_loc21_)
                                                {
                                                   §§push(param1.§63§());
                                                   if(!_loc20_)
                                                   {
                                                      §§push(§§pop().GetLinearVelocity().y);
                                                      if(_loc21_)
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         if(!(_loc20_ && param1))
                                                         {
                                                            addr447:
                                                            §§push(param2.§63§().GetMass());
                                                            if(!_loc20_)
                                                            {
                                                               addr450:
                                                               §§push(§§pop() * param2.§63§().GetLinearVelocity().y);
                                                            }
                                                            §§push(§§pop() - §§pop());
                                                            if(_loc21_ || param2)
                                                            {
                                                               addr463:
                                                               §§push(Number(§§pop()));
                                                            }
                                                            var _loc9_:* = §§pop();
                                                            §§push(Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_) / _loc3_);
                                                            if(_loc21_)
                                                            {
                                                               §§push(Number(§§pop()));
                                                            }
                                                            var _loc10_:* = §§pop();
                                                            §§push(_loc4_);
                                                            if(!(_loc20_ && _loc3_))
                                                            {
                                                               §§push(§§pop() * _loc10_);
                                                               if(_loc21_)
                                                               {
                                                                  §§push(Number(§§pop()));
                                                               }
                                                            }
                                                            var _loc11_:* = §§pop();
                                                            §§push(_loc6_);
                                                            if(!_loc20_)
                                                            {
                                                               §§push(§§pop() * _loc10_);
                                                               if(_loc21_)
                                                               {
                                                                  addr501:
                                                                  §§push(Number(§§pop()));
                                                               }
                                                               var _loc12_:* = §§pop();
                                                               var _loc13_:Number = Math.max(0,param1.§0M§);
                                                               var _loc14_:Number = Math.max(0,param2.§0M§);
                                                               §§push(param1.applyDamage(_loc12_,true,param2.§]!?§(),_loc14_ == param2.§]!3§));
                                                               if(!(_loc20_ && param2))
                                                               {
                                                                  §§push(Number(§§pop()));
                                                               }
                                                               var _loc15_:* = §§pop();
                                                               §§push(param2.applyDamage(_loc11_,true,param1.§]!?§(),_loc13_ == param1.§]!3§));
                                                               if(_loc21_)
                                                               {
                                                                  §§push(Number(§§pop()));
                                                               }
                                                               var _loc16_:* = §§pop();
                                                               var _loc17_:Boolean;
                                                               §§push(_loc17_ = false);
                                                               if(_loc21_)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     if(!(_loc20_ && _loc3_))
                                                                     {
                                                                        §<m§.log("--- NEW COLLISION ---");
                                                                        if(!(_loc20_ && param1))
                                                                        {
                                                                           §§push(§<m§);
                                                                           §§push("Mat Dam Factor1 = ");
                                                                           if(!_loc20_)
                                                                           {
                                                                              §§push(_loc4_);
                                                                              if(!(_loc20_ && param1))
                                                                              {
                                                                                 §§push(§§pop() + §§pop());
                                                                                 if(_loc21_ || this)
                                                                                 {
                                                                                    §§push(" Mat Dam Factor2 = ");
                                                                                    if(_loc21_)
                                                                                    {
                                                                                       §§push(§§pop() + §§pop());
                                                                                       if(!(_loc20_ && _loc3_))
                                                                                       {
                                                                                          addr1294:
                                                                                          §§push(_loc6_);
                                                                                          if(!_loc20_)
                                                                                          {
                                                                                             §§push(§§pop() + §§pop());
                                                                                             if(!(_loc20_ && _loc3_))
                                                                                             {
                                                                                                §§push(" Mat Vel Factor1 = ");
                                                                                                if(_loc21_ || _loc3_)
                                                                                                {
                                                                                                   addr1323:
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                   if(!_loc20_)
                                                                                                   {
                                                                                                      §§push(_loc5_);
                                                                                                      if(!_loc20_)
                                                                                                      {
                                                                                                         addr1329:
                                                                                                         §§push(§§pop() + §§pop());
                                                                                                         if(!(_loc20_ && this))
                                                                                                         {
                                                                                                            addr1338:
                                                                                                            §§push(§§pop() + " Mat Vel Factor2 = ");
                                                                                                            if(_loc21_)
                                                                                                            {
                                                                                                               addr1342:
                                                                                                               §§push(§§pop() + _loc7_);
                                                                                                            }
                                                                                                         }
                                                                                                         §§pop().log(§§pop());
                                                                                                         addr1344:
                                                                                                         §§push(§<m§);
                                                                                                         §§push("Object1: ");
                                                                                                         if(_loc21_)
                                                                                                         {
                                                                                                            §§push(§§pop() + param1.§-!>§);
                                                                                                            if(_loc21_ || param2)
                                                                                                            {
                                                                                                               §§push(" force1 = ");
                                                                                                               if(_loc21_)
                                                                                                               {
                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                  if(_loc21_)
                                                                                                                  {
                                                                                                                     addr1212:
                                                                                                                     §§push(_loc11_);
                                                                                                                     if(_loc21_ || param1)
                                                                                                                     {
                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                        if(_loc21_ || this)
                                                                                                                        {
                                                                                                                           §§push(" obj health1 = ");
                                                                                                                           if(_loc21_ || param2)
                                                                                                                           {
                                                                                                                              addr1236:
                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                              if(!(_loc20_ && param1))
                                                                                                                              {
                                                                                                                                 §§push(_loc13_);
                                                                                                                                 if(!(_loc20_ && param1))
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                    if(!_loc20_)
                                                                                                                                    {
                                                                                                                                       addr1255:
                                                                                                                                       §§push(§§pop() + " new health1 = ");
                                                                                                                                       if(!_loc20_)
                                                                                                                                       {
                                                                                                                                          addr1260:
                                                                                                                                          §§push(§§pop() + _loc15_);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§pop().log(§§pop());
                                                                                                                                    addr1262:
                                                                                                                                    §§push(§<m§);
                                                                                                                                    §§push("Object2: ");
                                                                                                                                    if(!(_loc20_ && param1))
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() + param2.§-!>§);
                                                                                                                                       if(_loc21_ || param1)
                                                                                                                                       {
                                                                                                                                          §§push(" force2 = ");
                                                                                                                                          if(_loc21_)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                             if(!_loc20_)
                                                                                                                                             {
                                                                                                                                                addr1140:
                                                                                                                                                §§push(_loc12_);
                                                                                                                                                if(_loc21_)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                   if(_loc21_ || this)
                                                                                                                                                   {
                                                                                                                                                      §§push(" obj health2 = ");
                                                                                                                                                      if(_loc21_ || param2)
                                                                                                                                                      {
                                                                                                                                                         addr1159:
                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                         if(_loc21_)
                                                                                                                                                         {
                                                                                                                                                            addr1162:
                                                                                                                                                            §§push(_loc14_);
                                                                                                                                                            if(!(_loc20_ && param1))
                                                                                                                                                            {
                                                                                                                                                               addr1170:
                                                                                                                                                               §§push(§§pop() + §§pop());
                                                                                                                                                               if(!(_loc20_ && _loc3_))
                                                                                                                                                               {
                                                                                                                                                                  addr1189:
                                                                                                                                                                  addr1179:
                                                                                                                                                                  addr1178:
                                                                                                                                                                  §§push(§§pop() + " new health2 = ");
                                                                                                                                                                  if(_loc21_ || this)
                                                                                                                                                                  {
                                                                                                                                                                     addr1187:
                                                                                                                                                                     §§push(_loc16_);
                                                                                                                                                                  }
                                                                                                                                                                  §§pop().log(§§pop());
                                                                                                                                                                  addr1110:
                                                                                                                                                                  addr1190:
                                                                                                                                                                  §§push(_loc15_ <= 0);
                                                                                                                                                                  if(_loc15_ <= 0)
                                                                                                                                                                  {
                                                                                                                                                                     addr1112:
                                                                                                                                                                     §§pop();
                                                                                                                                                                     addr1113:
                                                                                                                                                                     §§push(_loc12_);
                                                                                                                                                                     if(!(_loc20_ && param2))
                                                                                                                                                                     {
                                                                                                                                                                        if(!(_loc20_ && _loc3_))
                                                                                                                                                                        {
                                                                                                                                                                           addr1063:
                                                                                                                                                                           if(§§pop() != 0)
                                                                                                                                                                           {
                                                                                                                                                                              addr1067:
                                                                                                                                                                              §§push(_loc12_);
                                                                                                                                                                              if(!_loc20_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr1071:
                                                                                                                                                                                 §§push(§§pop() - _loc13_);
                                                                                                                                                                                 if(!(_loc20_ && param1))
                                                                                                                                                                                 {
                                                                                                                                                                                    addr1081:
                                                                                                                                                                                    §§push(Number(§§pop() / _loc12_));
                                                                                                                                                                                    if(!_loc20_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr1085:
                                                                                                                                                                                       §§push(_loc18_ = §§pop());
                                                                                                                                                                                    }
                                                                                                                                                                                    if((_loc18_ = Number(§§pop() * _loc7_)) > 1)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr1093:
                                                                                                                                                                                       if(!(_loc20_ && param2))
                                                                                                                                                                                       {
                                                                                                                                                                                          addr1102:
                                                                                                                                                                                          _loc18_ = Number(1);
                                                                                                                                                                                          addr1101:
                                                                                                                                                                                          if(_loc21_)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr1008:
                                                                                                                                                                                             if(_loc17_)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr1009:
                                                                                                                                                                                                if(_loc21_ || param2)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr1016:
                                                                                                                                                                                                   §§push(§<m§);
                                                                                                                                                                                                   §§push(param1.§-!>§ + " is killed. Speed Multiplier for ");
                                                                                                                                                                                                   if(!(_loc20_ && param1))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§pop() + param2.§-!>§);
                                                                                                                                                                                                      if(!(_loc20_ && param1))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop() + " is ");
                                                                                                                                                                                                         if(!_loc21_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr1044:
                                                                                                                                                                                                         §§pop().log(§§pop());
                                                                                                                                                                                                         addr1045:
                                                                                                                                                                                                         §§push(param2);
                                                                                                                                                                                                         §§push(§§findproperty(b2Vec2));
                                                                                                                                                                                                         §§push(param2.§63§().GetLinearVelocity().x);
                                                                                                                                                                                                         if(!(_loc20_ && param2))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(_loc18_);
                                                                                                                                                                                                            if(!(_loc20_ && _loc3_))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr993:
                                                                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                                                                               §§push(param2.§63§().GetLinearVelocity().y);
                                                                                                                                                                                                               if(!_loc20_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr999:
                                                                                                                                                                                                                  §§push(§§pop() * _loc18_);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§pop().§'y§(new §§pop().b2Vec2(§§pop(),§§pop()));
                                                                                                                                                                                                               addr1003:
                                                                                                                                                                                                               if(_loc21_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr950:
                                                                                                                                                                                                                  §§push(_loc16_ <= 0);
                                                                                                                                                                                                                  §§push(_loc16_ <= 0);
                                                                                                                                                                                                                  if(_loc21_ || this)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(§§pop())
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr959:
                                                                                                                                                                                                                        if(_loc21_ || param2)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§pop();
                                                                                                                                                                                                                           addr967:
                                                                                                                                                                                                                           if(_loc21_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(_loc11_);
                                                                                                                                                                                                                              if(_loc21_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr798:
                                                                                                                                                                                                                                 §§push(§§pop() == 0);
                                                                                                                                                                                                                                 if(!(_loc20_ && param1))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(_loc21_ || param1)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr815:
                                                                                                                                                                                                                                       if(!§§pop())
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          addr816:
                                                                                                                                                                                                                                          §§push(_loc11_);
                                                                                                                                                                                                                                          if(_loc21_ || param2)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(!(_loc20_ && param1))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(_loc14_);
                                                                                                                                                                                                                                                if(_loc21_ || this)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                   if(_loc21_ || param2)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(_loc11_);
                                                                                                                                                                                                                                                      if(_loc21_ || param1)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(!(_loc20_ && param1))
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            addr863:
                                                                                                                                                                                                                                                            §§push(Number(§§pop() / §§pop()));
                                                                                                                                                                                                                                                            if(_loc21_ || param1)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(§§pop());
                                                                                                                                                                                                                                                               if(_loc21_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  _loc19_ = §§pop();
                                                                                                                                                                                                                                                                  addr875:
                                                                                                                                                                                                                                                                  if(_loc21_ || param2)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(_loc21_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(_loc5_);
                                                                                                                                                                                                                                                                        if(_loc21_ || param2)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           addr892:
                                                                                                                                                                                                                                                                           if(_loc21_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(!_loc20_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 addr897:
                                                                                                                                                                                                                                                                                 §§push(Number(§§pop() * §§pop()));
                                                                                                                                                                                                                                                                                 if(!_loc20_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    addr901:
                                                                                                                                                                                                                                                                                    §§push(§§pop());
                                                                                                                                                                                                                                                                                    if(!(_loc20_ && _loc3_))
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(!(_loc20_ && param2))
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          _loc19_ = §§pop();
                                                                                                                                                                                                                                                                                          addr916:
                                                                                                                                                                                                                                                                                          if(_loc21_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             addr919:
                                                                                                                                                                                                                                                                                             §§push(1);
                                                                                                                                                                                                                                                                                             if(!_loc20_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(_loc21_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   if(!_loc20_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      if(§§pop() > §§pop())
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         addr926:
                                                                                                                                                                                                                                                                                                         if(_loc21_ || _loc3_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§push(1);
                                                                                                                                                                                                                                                                                                            if(_loc21_ || param2)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               addr942:
                                                                                                                                                                                                                                                                                                               _loc19_ = Number(§§pop());
                                                                                                                                                                                                                                                                                                               if(_loc21_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  addr750:
                                                                                                                                                                                                                                                                                                                  §§push(_loc17_);
                                                                                                                                                                                                                                                                                                                  if(_loc21_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     if(§§pop())
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        if(_loc21_)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           if(_loc21_)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              addr757:
                                                                                                                                                                                                                                                                                                                              §§push(§<m§);
                                                                                                                                                                                                                                                                                                                              §§push(param2.§-!>§ + " is killed. Speed Multiplier for ");
                                                                                                                                                                                                                                                                                                                              if(!_loc20_)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 §§push(§§pop() + param1.§-!>§);
                                                                                                                                                                                                                                                                                                                                 if(!_loc20_)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    §§push(§§pop() + " is ");
                                                                                                                                                                                                                                                                                                                                    if(_loc21_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    addr780:
                                                                                                                                                                                                                                                                                                                                    §§pop().log(§§pop());
                                                                                                                                                                                                                                                                                                                                    addr781:
                                                                                                                                                                                                                                                                                                                                    if(_loc21_)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       if(_loc21_ || param2)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          if(!_loc20_)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             addr703:
                                                                                                                                                                                                                                                                                                                                             §§push(param1);
                                                                                                                                                                                                                                                                                                                                             §§push(§§findproperty(b2Vec2));
                                                                                                                                                                                                                                                                                                                                             §§push(param1.§63§().GetLinearVelocity().x);
                                                                                                                                                                                                                                                                                                                                             if(!(_loc20_ && param2))
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                §§push(_loc19_);
                                                                                                                                                                                                                                                                                                                                                if(_loc21_)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   addr721:
                                                                                                                                                                                                                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                   §§push(param1.§63§().GetLinearVelocity().y);
                                                                                                                                                                                                                                                                                                                                                   if(!(_loc20_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      addr732:
                                                                                                                                                                                                                                                                                                                                                      §§push(§§pop() * _loc19_);
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   §§pop().§'y§(new §§pop().b2Vec2(§§pop(),§§pop()));
                                                                                                                                                                                                                                                                                                                                                   addr736:
                                                                                                                                                                                                                                                                                                                                                   if(!(_loc20_ && param1))
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      if(!_loc20_)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         if(_loc21_)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            addr642:
                                                                                                                                                                                                                                                                                                                                                            §§push(_loc15_);
                                                                                                                                                                                                                                                                                                                                                            if(_loc21_)
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               if(!_loc20_)
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  addr648:
                                                                                                                                                                                                                                                                                                                                                                  §§push(§§pop() <= 0);
                                                                                                                                                                                                                                                                                                                                                                  if(!(_loc20_ && param2))
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     if(!(_loc20_ && this))
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        if(!_loc20_)
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           §§push(§§pop());
                                                                                                                                                                                                                                                                                                                                                                           if(!(_loc20_ && param1))
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              if(§§pop())
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 addr683:
                                                                                                                                                                                                                                                                                                                                                                                 if(_loc21_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    if(_loc21_)
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       addr692:
                                                                                                                                                                                                                                                                                                                                                                                       §§pop();
                                                                                                                                                                                                                                                                                                                                                                                       if(!_loc20_)
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          if(_loc21_ || param1)
                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                             §§push(_loc16_);
                                                                                                                                                                                                                                                                                                                                                                                             if(!(_loc20_ && this))
                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                if(!(_loc20_ && this))
                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                   if(_loc21_)
                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                      if(!(_loc20_ && this))
                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                         if(!_loc20_)
                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                            if(_loc21_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                               if(!_loc20_)
                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                  §§push(0);
                                                                                                                                                                                                                                                                                                                                                                                                                  if(_loc21_)
                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                     if(_loc21_)
                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                        if(_loc21_)
                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                           if(_loc21_ || param1)
                                                                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                                                                              §§push(§§pop() <= §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                              if(!_loc20_)
                                                                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                                                                 if(!(_loc20_ && this))
                                                                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                                                                    if(!_loc21_)
                                                                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                                                                       §§goto(addr815);
                                                                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr636);
                                                                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr648);
                                                                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr683);
                                                                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr1063);
                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr798);
                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr919);
                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr648);
                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                               §§goto(addr1081);
                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                            §§goto(addr1102);
                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                         §§goto(addr863);
                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                      §§goto(addr875);
                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                §§goto(addr897);
                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                             §§goto(addr642);
                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                          §§goto(addr816);
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                       §§goto(addr736);
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr1063);
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr950);
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                              addr636:
                                                                                                                                                                                                                                                                                                                                                                              return §§pop();
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr950);
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr1110);
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr798);
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr750);
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                               §§goto(addr916);
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            §§goto(addr942);
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         §§goto(addr967);
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      §§goto(addr942);
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   §§goto(addr781);
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                §§goto(addr732);
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             §§goto(addr721);
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          §§goto(addr1102);
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       §§goto(addr1045);
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    §§goto(addr926);
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 §§push(§§pop() + _loc19_);
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              §§goto(addr780);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           §§goto(addr1113);
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§goto(addr780);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§goto(addr703);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr1112);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr1190);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr1101);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr1003);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr750);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr1110);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr1081);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr950);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr1081);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr1071);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr1081);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr950);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr1085);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr1081);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr901);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr1081);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr901);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr942);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr1081);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr892);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr897);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr901);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr1081);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr875);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr642);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr1008);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr959);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr863);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr1067);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr1063);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr815);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1110);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1009);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr999);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr993);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§push(§§pop() + _loc18_);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1044);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1093);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1044);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1262);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1344);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1008);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1102);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1081);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr950);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1110);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1081);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1063);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1187);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1189);
                                                                                                                                                            §§push(§§pop() + §§pop());
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1187);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1179);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1189);
                                                                                                                                                }
                                                                                                                                                §§goto(addr1170);
                                                                                                                                             }
                                                                                                                                             §§goto(addr1178);
                                                                                                                                          }
                                                                                                                                          §§goto(addr1159);
                                                                                                                                       }
                                                                                                                                       §§goto(addr1162);
                                                                                                                                    }
                                                                                                                                    §§goto(addr1140);
                                                                                                                                 }
                                                                                                                                 §§goto(addr1260);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr1255);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr1260);
                                                                                                                  }
                                                                                                                  §§goto(addr1255);
                                                                                                               }
                                                                                                               §§goto(addr1236);
                                                                                                            }
                                                                                                            §§goto(addr1212);
                                                                                                         }
                                                                                                         §§goto(addr1255);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr1342);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr1338);
                                                                                          }
                                                                                          §§goto(addr1329);
                                                                                       }
                                                                                       §§goto(addr1338);
                                                                                    }
                                                                                    §§goto(addr1323);
                                                                                 }
                                                                                 §§goto(addr1294);
                                                                              }
                                                                           }
                                                                           §§goto(addr1342);
                                                                        }
                                                                        §§goto(addr1016);
                                                                     }
                                                                     §§goto(addr757);
                                                                  }
                                                                  §§goto(addr1189);
                                                               }
                                                               §§goto(addr692);
                                                            }
                                                            §§goto(addr501);
                                                         }
                                                         §§goto(addr463);
                                                      }
                                                      §§goto(addr450);
                                                   }
                                                   §§goto(addr447);
                                                }
                                                §§goto(addr463);
                                             }
                                             §§push(§§pop() - §§pop());
                                             if(!(_loc20_ && param1))
                                             {
                                                §§goto(addr423);
                                                §§push(Number(§§pop()));
                                             }
                                             §§goto(addr423);
                                          }
                                          §§goto(addr406);
                                       }
                                       §§goto(addr423);
                                    }
                                 }
                                 §§goto(addr164);
                              }
                              §§goto(addr274);
                           }
                        }
                     }
                     §§goto(addr272);
                  }
                  return §§pop();
               }
               §§goto(addr321);
            }
         }
         §§goto(addr201);
      }
      
      public function §33§(param1:§!u§, param2:§!u§) : void
      {
      }
      
      public function §?0§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§!u§ = null;
         var _loc1_:* = int(this.§7-§.length - 1);
         loop0:
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§7-§[_loc1_] as §!u§;
            if(_loc4_ || this)
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
                           addr126:
                           while(true)
                           {
                              addr69:
                              while(true)
                              {
                                 §§push(_loc2_.§^A§());
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    if(!(_loc4_ || _loc2_))
                                    {
                                       continue loop2;
                                    }
                                    §§push(Boolean(§§pop()));
                                 }
                                 if(_loc3_ && _loc1_)
                                 {
                                    break;
                                 }
                                 if(_loc3_)
                                 {
                                    continue loop1;
                                 }
                              }
                              continue loop3;
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
                              this.§9!S§(_loc1_,true,true,true);
                           }
                           loop7:
                           while(_loc4_)
                           {
                              while(true)
                              {
                                 continue loop7;
                              }
                           }
                           §§goto(addr126);
                           addr116:
                        }
                        while(true)
                        {
                           §§push(_loc1_);
                           if(!(_loc3_ && _loc2_))
                           {
                              §§push(§§pop() - 1);
                           }
                           _loc1_ = §§pop();
                           if(!_loc3_)
                           {
                              if(true)
                              {
                                 break loop6;
                              }
                              §§goto(addr69);
                           }
                           else
                           {
                              §§goto(addr116);
                           }
                        }
                     }
                     continue loop0;
                  }
               }
            }
            §§goto(addr118);
         }
      }
      
      public function §+!=§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§!u§ = null;
         var _loc1_:* = int(this.§7-§.length - 1);
         loop0:
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§7-§[_loc1_] as §!u§;
            if(_loc4_)
            {
               §§push(_loc2_ == null);
               if(!(_loc3_ && this))
               {
                  §§push(!§§pop());
               }
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§pop();
                        addr121:
                        while(true)
                        {
                           addr69:
                           while(true)
                           {
                              §§push(_loc2_.§-!?§());
                              if(_loc4_)
                              {
                                 if(!_loc4_)
                                 {
                                    break;
                                 }
                                 §§push(Boolean(§§pop()));
                              }
                              if(!_loc4_)
                              {
                                 continue loop2;
                              }
                           }
                           continue loop1;
                        }
                     }
                  }
                  loop5:
                  while(true)
                  {
                     if(§§pop())
                     {
                        if(!_loc3_)
                        {
                           this.§9!S§(_loc1_,true,true,true);
                        }
                        loop6:
                        while(_loc4_ || this)
                        {
                           while(true)
                           {
                              continue loop6;
                           }
                        }
                        §§goto(addr121);
                        addr99:
                     }
                     while(true)
                     {
                        §§push(_loc1_);
                        if(_loc4_ || _loc3_)
                        {
                           §§push(§§pop() - 1);
                        }
                        _loc1_ = §§pop();
                        if(!(_loc3_ && _loc1_))
                        {
                           if(true)
                           {
                              break loop5;
                           }
                           §§goto(addr69);
                        }
                        else
                        {
                           §§goto(addr99);
                        }
                     }
                  }
                  continue loop0;
               }
            }
            §§goto(addr106);
         }
      }
      
      public function §[W§() : int
      {
         return this.§7-§.length;
      }
      
      public function §"!;§(param1:§"!'§) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc2_:§!u§ = null;
         var _loc3_:§;!8§ = null;
         var _loc4_:§<n§ = null;
         var _loc5_:§-H§ = null;
         var _loc6_:int = 0;
         var _loc7_:* = this.§7-§;
         while(true)
         {
            §§push(§§hasnext(_loc7_,_loc6_));
            if(_loc8_ || this)
            {
               if(§§pop())
               {
                  _loc2_ = §§nextvalue(_loc6_,_loc7_);
                  if(!_loc9_)
                  {
                     if(!_loc2_.isGround())
                     {
                        (_loc4_ = new §<n§()).angle = _loc2_.§3C§();
                        if(!_loc9_)
                        {
                           _loc4_.id = _loc2_.§-!>§;
                           while(true)
                           {
                              _loc4_.x = _loc2_.§63§().GetPosition().x;
                              loop2:
                              while(!_loc9_)
                              {
                                 _loc4_.y = _loc2_.§63§().GetPosition().y;
                                 while(true)
                                 {
                                    addr73:
                                    while(true)
                                    {
                                       _loc4_.uniqueID = _loc2_.uniqueID;
                                       addr78:
                                       while(_loc8_)
                                       {
                                       }
                                       continue loop2;
                                    }
                                 }
                              }
                           }
                        }
                        while(true)
                        {
                           param1.addObject(_loc4_);
                           if(_loc8_ || this)
                           {
                              if(!_loc9_)
                              {
                                 if(true)
                                 {
                                    break;
                                 }
                                 §§goto(addr73);
                              }
                              §§goto(addr88);
                           }
                           §§goto(addr78);
                        }
                        continue;
                     }
                  }
                  continue;
               }
               if(!(_loc9_ && param1))
               {
                  if(_loc8_)
                  {
                     if(!(_loc9_ && this))
                     {
                        _loc6_ = 0;
                        addr208:
                        if(!_loc9_)
                        {
                           addr145:
                           _loc7_ = this.§"!§;
                           §§push(§§hasnext(_loc7_,_loc6_));
                           break;
                        }
                     }
                     return;
                  }
                  §§goto(addr145);
               }
               §§goto(addr208);
            }
            break;
         }
         while(§§pop())
         {
            _loc3_ = §§nextvalue(_loc6_,_loc7_);
            (_loc5_ = new §-H§(_loc3_.type,_loc3_.index1,_loc3_.index2,_loc3_.point1,_loc3_.point2,_loc3_.§&!F§,_loc3_.§0![§,_loc3_.lowerLimit,_loc3_.upperLimit,_loc3_.§3A§,_loc3_.motorSpeed,_loc3_.§9!O§,_loc3_.maxTorque)).§2,§ = _loc3_.§2,§;
            if(!_loc9_)
            {
               param1.§6!H§(_loc5_);
            }
            §§goto(addr145);
         }
         §§goto(addr207);
      }
      
      public function §3N§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:int = 0;
         while(true)
         {
            if(this.§7-§.length <= _loc1_)
            {
               if(_loc3_ || this)
               {
                  if(_loc3_ || this)
                  {
                     break;
                  }
                  addr83:
                  _loc1_++;
               }
               else
               {
                  addr72:
                  if(_loc3_)
                  {
                     continue;
                  }
               }
               continue;
               addr84:
            }
            else if(this.§7-§[_loc1_].isGround())
            {
               §§goto(addr83);
            }
            else
            {
               this.§&!l§(this.§7-§[_loc1_]);
               §§goto(addr72);
            }
            §§goto(addr83);
         }
      }
      
      public function §&!g§(param1:Point, param2:Point) : Array
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
                  if(_loc5_ || this)
                  {
                     if(§§pop() >= this.§7-§.length)
                     {
                        if(!(_loc6_ && _loc3_))
                        {
                           break;
                        }
                        while(true)
                        {
                           if(_loc5_)
                           {
                              addr69:
                              if(!(_loc6_ && _loc3_))
                              {
                                 break;
                              }
                              addr103:
                              while(true)
                              {
                                 _loc3_.push(this.§7-§[_loc4_]);
                                 §§goto(addr69);
                              }
                           }
                           while(true)
                           {
                           }
                        }
                        continue;
                        addr67:
                     }
                     else if(this.§7-§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
                     {
                        §§goto(addr103);
                     }
                     while(true)
                     {
                        §§push(_loc4_);
                     }
                  }
                  while(true)
                  {
                     §§push(§§pop() + 1);
                  }
               }
               while(true)
               {
                  §§push(Number(§§pop()));
               }
            }
            while(true)
            {
               _loc4_ = §§pop();
               §§goto(addr67);
            }
         }
         return _loc3_;
      }
      
      public function setGroundTextureEnabled(param1:Boolean) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && this))
         {
            this.§"i§ = param1;
            if(_loc3_)
            {
               addr28:
               this.§]o§(param1);
            }
            var _loc2_:* = Number(0);
            while(true)
            {
               §§push(_loc2_);
               if(!(_loc4_ && this))
               {
                  if(§§pop() >= this.§7-§.length)
                  {
                     if(_loc4_ && _loc2_)
                     {
                        continue;
                     }
                     if(_loc3_)
                     {
                        if(_loc3_)
                        {
                           break;
                        }
                        addr100:
                        this.§7-§[_loc2_].sprite.visible = !this.§"i§;
                     }
                  }
                  else if(this.§7-§[_loc2_].isTexture())
                  {
                     §§goto(addr100);
                  }
                  §§push(_loc2_);
                  if(!_loc4_)
                  {
                     §§push(§§pop() + 1);
                     if(!_loc3_)
                     {
                     }
                     addr90:
                     _loc2_ = §§pop();
                     continue;
                  }
                  §§push(Number(§§pop()));
               }
               §§goto(addr90);
            }
            return;
         }
         §§goto(addr28);
      }
      
      public function setDamageEnabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§<^§ = param1;
         }
      }
      
      public function § h§() : Boolean
      {
         return this.§<^§;
      }
      
      public function §!T§() : int
      {
         return this.§[I§;
      }
      
      public function §^M§() : int
      {
         return this.§,!^§;
      }
      
      public function §;H§(param1:String) : §!u§
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§!u§ = null;
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= this.§7-§.length)
            {
               return null;
            }
            _loc3_ = this.§7-§[_loc2_] as §!u§;
            if(_loc5_ && _loc3_)
            {
               break;
            }
            if(_loc3_.uniqueID == param1)
            {
               if(!_loc5_)
               {
                  break;
               }
            }
            _loc2_++;
         }
         return _loc3_;
      }
   }
}
