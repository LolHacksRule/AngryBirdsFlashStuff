package §]!9§
{
   import §#k§.§"!D§;
   import §#k§.§%!?§;
   import §#k§.§,r§;
   import §#k§.§@Q§;
   import §%$§.§3V§;
   import §%x§.§#!;§;
   import §%x§.§#;§;
   import §%x§.§0]§;
   import §%x§.§;C§;
   import §-!0§.§9X§;
   import §0!<§.§#y§;
   import §>!C§.§9R§;
   import §>F§.§2S§;
   import §>F§.§5b§;
   import §?!?§.§3!E§;
   import §?^§.§8!?§;
   import §?^§.Sprite;
   import §`K§.§+i§;
   import §`K§.§0r§;
   import §`K§.§2z§;
   import §`K§.§3n§;
   import §`K§.§7g§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.Joints.b2PrismaticJoint;
   import com.rovio.Box2D.Dynamics.Joints.b2WeldJoint;
   import each.Texture;
   import flash.display.BitmapData;
   import flash.display.BitmapDataChannel;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §]!H§
   {
       
      
      protected var §2;§:Vector.<§>2§>;
      
      protected var §1&§:int;
      
      public var §7C§:§#;§;
      
      public var §,!6§:Vector.<§5V§>;
      
      protected var §&V§:Sprite;
      
      protected var §`8§:Sprite;
      
      private var §72§:Sprite;
      
      private var §2A§:Sprite;
      
      private var §;l§:Sprite;
      
      protected var §<o§:Vector.<Texture>;
      
      protected var §-!C§:Vector.<§@Q§>;
      
      protected var §[c§:int = 1;
      
      public var mMightyEagleAdded:Boolean = false;
      
      public var mMightyEagleHasTouchedGround:Boolean = false;
      
      public var §`!E§:Boolean = false;
      
      public var mSardineCanAdded:Boolean = false;
      
      public var mMightyEagleTimer:Number = 0;
      
      protected var §!!§:Boolean = false;
      
      protected var §]f§:Number;
      
      protected var §,=§:int;
      
      protected var §9!4§:Vector.<§,r§>;
      
      protected var §2s§:int = 0;
      
      private var §<!D§:int = 0;
      
      private var §-v§:int = 0;
      
      private var §^!9§:int;
      
      private var §`!7§:Boolean = true;
      
      private var §=y§:Boolean = true;
      
      public function §]!H§(param1:§#;§, param2:§9R§, param3:Sprite)
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         var _loc5_:§@Q§ = null;
         var _loc6_:§"!D§ = null;
         var _loc7_:§>2§ = null;
         var _loc8_:* = 0;
         var _loc9_:* = 0;
         var _loc10_:§>2§ = null;
         var _loc11_:§>2§ = null;
         this.§2;§ = new Vector.<§>2§>();
         this.§,!6§ = new Vector.<§5V§>();
         this.§<o§ = new Vector.<Texture>();
         this.§]f§ = this.§#!;§.SARDINE_CAN_INITIAL_ROTATION_SPEED;
         if(_loc15_)
         {
            this.§9!4§ = new Vector.<§,r§>();
            if(!(_loc14_ && param2))
            {
               super();
               if(_loc15_ || param1)
               {
                  this.§7C§ = param1;
                  if(!_loc14_)
                  {
                     this.§1&§ = 0;
                     if(_loc15_ || this)
                     {
                        this.§`8§ = param3;
                        if(!(_loc14_ && param3))
                        {
                           §§push(this.§`8§);
                           if(!(_loc14_ && param2))
                           {
                              §§pop().§-j§ = false;
                              addr119:
                              this.§=y§ = true;
                              this.§`!7§ = true;
                              addr125:
                              this.§&V§ = new Sprite();
                              this.§72§ = new Sprite();
                              if(_loc15_ || param1)
                              {
                                 this.§2A§ = new Sprite();
                                 if(_loc15_)
                                 {
                                    addr146:
                                    this.§;l§ = new Sprite();
                                    if(_loc15_)
                                    {
                                       addr152:
                                       §§push(this.§`8§);
                                       if(_loc15_ || param2)
                                       {
                                          §§pop().addChild(this.§&V§);
                                          addr164:
                                          §§push(this.§`8§);
                                          if(_loc15_ || param2)
                                          {
                                             §§pop().addChild(this.§72§);
                                             §§push(this.§`8§);
                                             if(_loc15_ || this)
                                             {
                                                addr185:
                                                §§pop().addChild(this.§2A§);
                                                §§push(this.§`8§);
                                             }
                                          }
                                          §§goto(addr185);
                                       }
                                       §§pop().addChild(this.§;l§);
                                    }
                                    §§push(this);
                                    §§push(§3V§.§9S§(param2.theme).§@!2§);
                                    §§push(this.§7C§.§`,§.§+!0§);
                                    if(_loc15_)
                                    {
                                       §§push(this.§7C§);
                                       if(_loc15_ || param2)
                                       {
                                          §§push(§§pop().§`,§);
                                          if(_loc15_)
                                          {
                                             §§push(§§pop().§0!?§);
                                             if(_loc15_)
                                             {
                                                §§push(§§pop() + §§pop());
                                                if(_loc15_)
                                                {
                                                   §§goto(addr225);
                                                }
                                                addr225:
                                                §§goto(addr228);
                                             }
                                             §§goto(addr231);
                                          }
                                          addr228:
                                          §§goto(addr227);
                                       }
                                       addr227:
                                       §§push(§§pop() / 2);
                                       §§push(this.§7C§.§`,§.§=s§);
                                       if(_loc15_)
                                       {
                                          addr231:
                                          §§push(§§pop() + §;C§.§7!5§);
                                       }
                                       §§pop().addObject(§§pop(),§§pop(),§§pop());
                                       this.§^!9§ = this.§2;§.length;
                                       var _loc4_:* = 0;
                                       if(_loc15_)
                                       {
                                          _loc4_ = 0;
                                       }
                                       loop0:
                                       while(true)
                                       {
                                          §§push(_loc4_);
                                          if(_loc15_)
                                          {
                                             §§push(param2.§ M§);
                                             if(_loc15_ || param1)
                                             {
                                                if(§§pop() < §§pop())
                                                {
                                                   _loc6_ = param2.§!6§(_loc4_);
                                                   if(_loc7_ = this.addObject(_loc6_.id,_loc6_.x,_loc6_.y,_loc6_.angle,false,false,false,1,_loc6_.front))
                                                   {
                                                      if(!(_loc15_ || param2))
                                                      {
                                                         continue;
                                                      }
                                                      _loc7_.uniqueID = _loc6_.uniqueID;
                                                      if(_loc14_)
                                                      {
                                                         continue;
                                                      }
                                                   }
                                                   _loc4_++;
                                                   continue;
                                                }
                                                if(_loc15_ || param3)
                                                {
                                                   this.§<j§();
                                                   if(!_loc14_)
                                                   {
                                                      addr321:
                                                      this.§[<§(true);
                                                      if(_loc15_ || param1)
                                                      {
                                                         this.§-!C§ = new Vector.<§@Q§>();
                                                         §§push(0);
                                                         if(_loc15_)
                                                         {
                                                            _loc4_ = §§pop();
                                                            if(!_loc14_)
                                                            {
                                                               loop3:
                                                               while(true)
                                                               {
                                                                  §§push(_loc4_);
                                                                  if(!_loc14_)
                                                                  {
                                                                     addr357:
                                                                     §§push(param2.§"9§);
                                                                     while(true)
                                                                     {
                                                                        if(§§pop() >= §§pop())
                                                                        {
                                                                           break loop0;
                                                                        }
                                                                        this.§-!C§.push(§@Q§.§>d§(param2.§4! §(_loc4_)));
                                                                        _loc4_++;
                                                                        continue loop3;
                                                                        §§goto(addr357);
                                                                     }
                                                                     addr359:
                                                                  }
                                                                  break loop0;
                                                               }
                                                               addr354:
                                                            }
                                                            §§goto(addr566);
                                                         }
                                                         break;
                                                      }
                                                   }
                                                   §§goto(addr354);
                                                }
                                                §§goto(addr321);
                                             }
                                             §§goto(addr359);
                                          }
                                          break;
                                       }
                                       var _loc12_:* = §§pop();
                                       if(_loc15_)
                                       {
                                          var _loc13_:* = this.§-!C§;
                                          loop2:
                                          while(true)
                                          {
                                             for each(_loc5_ in _loc13_)
                                             {
                                                §§push(int(_loc5_.index1 + this.§^!9§));
                                                if(_loc15_)
                                                {
                                                   _loc8_ = §§pop();
                                                   if(!(_loc14_ && param3))
                                                   {
                                                      §§push(int(_loc5_.index2 + this.§^!9§));
                                                      if(_loc15_)
                                                      {
                                                         _loc9_ = §§pop();
                                                         if(!(_loc14_ && this))
                                                         {
                                                            addr407:
                                                            §§push(_loc8_);
                                                            if(_loc15_ || param3)
                                                            {
                                                               §§push(§§pop() < this.§2;§.length);
                                                               if(_loc15_)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     if(_loc15_ || param2)
                                                                     {
                                                                        §§pop();
                                                                        if(!(_loc14_ && this))
                                                                        {
                                                                           addr443:
                                                                           if(_loc9_ >= this.§2;§.length)
                                                                           {
                                                                              continue loop2;
                                                                           }
                                                                        }
                                                                        _loc10_ = this.§2;§[_loc8_];
                                                                        _loc11_ = this.§2;§[_loc9_];
                                                                        §§push(Boolean(_loc10_));
                                                                        if(_loc15_ || this)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              if(_loc15_ || param1)
                                                                              {
                                                                                 addr474:
                                                                                 §§pop();
                                                                                 if(!(_loc14_ && param2))
                                                                                 {
                                                                                    addr484:
                                                                                    if(!_loc11_)
                                                                                    {
                                                                                       break loop2;
                                                                                    }
                                                                                    if(_loc15_ || this)
                                                                                    {
                                                                                       addr492:
                                                                                       if(_loc5_.type != §%!?§.§?f§)
                                                                                       {
                                                                                          if(!(_loc15_ || param1))
                                                                                          {
                                                                                             continue loop2;
                                                                                          }
                                                                                          addr504:
                                                                                          _loc5_.§1-§ = this.§7C§.§-K§.§[N§.CreateJoint(_loc5_.§>k§(_loc10_,_loc11_));
                                                                                          if(_loc15_ || param2)
                                                                                          {
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          this.§9!4§.push(new §,r§(_loc8_,_loc9_,_loc5_.§ 0§));
                                                                                          if(_loc14_ && param2)
                                                                                          {
                                                                                             continue loop2;
                                                                                          }
                                                                                       }
                                                                                       continue loop2;
                                                                                    }
                                                                                    §§goto(addr504);
                                                                                 }
                                                                                 §§goto(addr492);
                                                                              }
                                                                           }
                                                                           §§goto(addr484);
                                                                        }
                                                                        §§goto(addr474);
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr443);
                                                   }
                                                   §§goto(addr407);
                                                }
                                                §§goto(addr443);
                                             }
                                          }
                                          throw new Error("Joint index out of bounds [" + _loc8_ + ", " + _loc9_ + "]");
                                       }
                                       addr566:
                                       return;
                                    }
                                    §§goto(addr225);
                                 }
                                 §§goto(addr152);
                              }
                              §§goto(addr164);
                           }
                           §§goto(addr185);
                        }
                     }
                     §§goto(addr125);
                  }
                  §§goto(addr146);
               }
               §§goto(addr119);
            }
            §§goto(addr185);
         }
         §§goto(addr146);
      }
      
      protected function get §#!;§() : Class
      {
         return §#!;§;
      }
      
      public function get §6N§() : Sprite
      {
         return this.§;l§;
      }
      
      public function get §6,§() : Sprite
      {
         return this.§`8§;
      }
      
      public function dispose() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:Texture = null;
         while(this.§2;§.length > 0)
         {
            this.§64§(0);
         }
         if(_loc3_ || this)
         {
            this.§2;§ = null;
            this.§9!4§ = null;
            if(_loc3_)
            {
               §§push(this.§`8§);
               if(_loc3_ || _loc3_)
               {
                  if(§§pop())
                  {
                     addr67:
                     this.§`8§.dispose();
                     this.§`8§ = null;
                     if(_loc3_)
                     {
                        §§goto(addr73);
                     }
                  }
                  §§goto(addr102);
               }
               §§goto(addr67);
            }
            addr73:
            this.§&V§ = null;
            this.§;l§ = null;
            if(_loc3_ || this)
            {
               this.§72§ = null;
               this.§2A§ = null;
               addr102:
               while(this.§<o§.length > 0)
               {
                  _loc1_ = this.§<o§.pop();
                  if(!(_loc2_ && _loc2_))
                  {
                     this.§7C§.textureManager.§9a§(_loc1_);
                  }
               }
            }
            return;
         }
         §§goto(addr67);
      }
      
      private function §[<§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§&V§.visible = param1;
         }
      }
      
      private function §<j§() : void
      {
         var _loc16_:Boolean = true;
         var _loc17_:Boolean = false;
         var _loc3_:§>2§ = null;
         var _loc4_:Rectangle = null;
         var _loc5_:* = NaN;
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         var _loc8_:* = 0;
         var _loc9_:int = 0;
         var _loc10_:BitmapData = null;
         var _loc11_:BitmapData = null;
         var _loc12_:Texture = null;
         var _loc13_:§8!?§ = null;
         var _loc1_:Rectangle = null;
         var _loc2_:Vector.<§>2§> = new Vector.<§>2§>();
         for each(_loc3_ in this.§2;§)
         {
            if(_loc16_ || _loc2_)
            {
               if(_loc3_.isTexture())
               {
                  if(_loc16_)
                  {
                     addr78:
                     _loc2_.push(_loc3_);
                  }
                  _loc4_ = _loc3_.sprite.getBounds(this.§`8§);
                  if(!_loc17_)
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
            §§goto(addr78);
         }
         if(_loc16_ || _loc1_)
         {
            if(_loc1_)
            {
               if(_loc16_ || _loc2_)
               {
                  §§push(1);
                  if(!_loc17_)
                  {
                     §§push(Number(§§pop()));
                     if(!(_loc17_ && this))
                     {
                        _loc5_ = §§pop();
                        if(_loc16_)
                        {
                           loop1:
                           while(true)
                           {
                              §§push(_loc1_.width > 2048);
                              if(_loc16_)
                              {
                                 if(!§§pop())
                                 {
                                    if(!(_loc17_ && _loc1_))
                                    {
                                       §§pop();
                                       addr242:
                                       if(!(_loc17_ && _loc3_))
                                       {
                                          §§push(_loc1_.height > 2048);
                                       }
                                       §§push(int(_loc1_.width));
                                       if(_loc16_)
                                       {
                                          _loc6_ = §§pop();
                                          addr248:
                                          §§push(int(_loc1_.height));
                                          if(!_loc17_)
                                          {
                                             addr253:
                                             _loc7_ = §§pop();
                                             break;
                                          }
                                          addr264:
                                          _loc8_ = §§pop();
                                          if(_loc16_ || _loc1_)
                                          {
                                             addr275:
                                             _loc9_ = _loc1_.top;
                                          }
                                          _loc10_ = new BitmapData(_loc6_,_loc7_,true,0);
                                          if(!_loc17_)
                                          {
                                             this.§,a§(_loc10_.rect,_loc10_,_loc5_);
                                          }
                                          _loc11_ = this.§&!&§(_loc2_,_loc6_,_loc7_,_loc8_,_loc9_,_loc5_);
                                          if(_loc16_)
                                          {
                                             _loc10_.copyChannel(_loc11_,_loc11_.rect,new Point(0,0),BitmapDataChannel.ALPHA,BitmapDataChannel.ALPHA);
                                          }
                                          _loc12_ = this.§7C§.textureManager.§ b§(_loc10_);
                                          if(_loc16_ || this)
                                          {
                                             this.§<o§.push(_loc12_);
                                          }
                                          (_loc13_ = new §8!?§(_loc12_)).x = _loc8_ / _loc5_;
                                          if(_loc16_ || this)
                                          {
                                             _loc13_.y = _loc9_ / _loc5_;
                                             if(_loc16_)
                                             {
                                                _loc13_.scaleX = 1 / _loc5_;
                                                if(_loc16_)
                                                {
                                                   _loc13_.scaleY = 1 / _loc5_;
                                                   if(_loc16_ || this)
                                                   {
                                                      addr388:
                                                      this.§&V§.addChild(_loc13_);
                                                      if(!_loc16_)
                                                      {
                                                      }
                                                      §§goto(addr396);
                                                   }
                                                }
                                                _loc11_.dispose();
                                                §§goto(addr396);
                                             }
                                             addr396:
                                             return;
                                          }
                                          §§goto(addr388);
                                       }
                                       §§goto(addr253);
                                    }
                                 }
                              }
                              if(!§§pop())
                              {
                                 if(!(_loc17_ && this))
                                 {
                                    §§goto(addr242);
                                 }
                                 §§goto(addr248);
                              }
                              else
                              {
                                 _loc1_.left /= 2;
                                 _loc1_.top /= 2;
                                 while(true)
                                 {
                                    _loc1_.right /= 2;
                                    _loc1_.bottom /= 2;
                                    if(_loc17_ && this)
                                    {
                                       break loop1;
                                    }
                                    §§push(_loc5_);
                                    if(!(_loc17_ && _loc3_))
                                    {
                                       while(true)
                                       {
                                          §§push(§§pop() / 2);
                                          if(!(_loc16_ || _loc3_))
                                          {
                                             continue loop1;
                                          }
                                       }
                                       addr196:
                                    }
                                    while(true)
                                    {
                                       §§push(Number(§§pop()));
                                       continue loop1;
                                    }
                                 }
                                 addr159:
                              }
                           }
                           §§push(int(_loc1_.left));
                           if(_loc16_ || _loc2_)
                           {
                              §§goto(addr264);
                           }
                        }
                        §§goto(addr275);
                     }
                     §§goto(addr196);
                  }
                  §§goto(addr253);
               }
               §§goto(addr242);
            }
            §§goto(addr388);
         }
         §§goto(addr159);
      }
      
      private function §&!&§(param1:Vector.<§>2§>, param2:int, param3:int, param4:int, param5:int, param6:Number) : BitmapData
      {
         var _loc16_:Boolean = false;
         var _loc17_:Boolean = true;
         var _loc7_:§>2§ = null;
         var _loc11_:§2z§ = null;
         var _loc12_:Array = null;
         var _loc13_:Rectangle = null;
         var _loc8_:BitmapData = new BitmapData(param2,param3,true,0);
         var _loc9_:BitmapData = new BitmapData(1,1,true,4294967295);
         var _loc10_:Matrix = new Matrix();
         for each(_loc7_ in param1)
         {
            _loc12_ = (_loc11_ = _loc7_.§0§.shape).§#F§();
            _loc13_ = new Rectangle(_loc12_[0].x / §#;§.§`!2§ * param6,_loc12_[0].y / §#;§.§`!2§ * param6,(_loc12_[1].x - _loc12_[0].x) / §#;§.§`!2§ * param6,(_loc12_[1].y - _loc12_[0].y) / §#;§.§`!2§ * param6);
            _loc10_.identity();
            if(_loc17_)
            {
               _loc10_.scale(_loc13_.width,_loc13_.height);
               if(!(_loc16_ && param3))
               {
                  _loc10_.translate(-_loc13_.width / 2,-_loc13_.height / 2);
                  if(_loc17_)
                  {
                     _loc10_.rotate((360 - _loc7_.§+O§()) / 180 * Math.PI);
                  }
               }
               _loc10_.translate(_loc7_.sprite.x * param6 - param4,_loc7_.sprite.y * param6 - param5);
               if(!(_loc17_ || param2))
               {
                  continue;
               }
            }
            _loc8_.draw(_loc9_,_loc10_);
         }
         if(_loc17_)
         {
            _loc9_.dispose();
         }
         return _loc8_;
      }
      
      private function §,a§(param1:Rectangle, param2:BitmapData, param3:Number) : void
      {
         var _loc16_:Boolean = true;
         var _loc17_:Boolean = false;
         var _loc6_:BitmapData = null;
         var _loc7_:Matrix = null;
         var _loc8_:* = 0;
         var _loc9_:int = 0;
         var _loc10_:* = 0;
         var _loc11_:* = 0;
         var _loc12_:* = 0;
         var _loc13_:* = 0;
         var _loc14_:int = 0;
         var _loc15_:* = 0;
         §§push(this.§7C§.background.§"I§());
         if(_loc16_)
         {
            §§push(§§pop());
         }
         var _loc4_:* = §§pop();
         var _loc5_:§9X§;
         if(_loc5_ = this.§7C§.backgroundTextureManager.§4K§(_loc4_))
         {
            _loc6_ = new BitmapData(_loc5_.bitmapData.width * param3,_loc5_.bitmapData.height * param3);
            (_loc7_ = new Matrix()).scale(param3,param3);
            if(_loc16_ || param3)
            {
               _loc6_.draw(_loc5_.bitmapData,_loc7_);
               if(!(_loc17_ && param1))
               {
                  §§push(_loc6_.width - 2);
                  if(!(_loc17_ && param3))
                  {
                     §§push(int(§§pop()));
                     if(!(_loc17_ && param1))
                     {
                        _loc8_ = §§pop();
                        §§push(_loc6_.height - 2);
                        if(_loc16_ || param3)
                        {
                           _loc9_ = §§pop();
                           if(!_loc17_)
                           {
                              §§push(param1.top / _loc9_);
                              if(_loc16_)
                              {
                                 _loc10_ = int(§§pop());
                                 if(!(_loc17_ && this))
                                 {
                                    if(param1.top < 0)
                                    {
                                       §§push(_loc10_);
                                       if(!_loc17_)
                                       {
                                          §§push(§§pop() - 1);
                                          if(_loc16_)
                                          {
                                             _loc10_ = §§pop();
                                             addr157:
                                             §§push(param1.bottom / _loc9_);
                                             if(_loc16_ || param1)
                                             {
                                                addr178:
                                                §§push(int(§§pop()));
                                                if(!_loc17_)
                                                {
                                                   addr181:
                                                   §§push(§§pop());
                                                   if(!_loc17_)
                                                   {
                                                      _loc11_ = §§pop();
                                                      addr185:
                                                      _loc11_ = §§pop() + 1;
                                                      if(_loc16_ || param3)
                                                      {
                                                         addr194:
                                                         §§push(param1.left / _loc8_);
                                                         if(_loc16_)
                                                         {
                                                            addr200:
                                                            §§push(int(§§pop()));
                                                            if(!(_loc17_ && param2))
                                                            {
                                                               addr208:
                                                               _loc12_ = §§pop();
                                                               if(_loc16_ || param1)
                                                               {
                                                                  if(param1.left < 0)
                                                                  {
                                                                     if(!(_loc17_ && param3))
                                                                     {
                                                                        §§push(_loc12_);
                                                                        if(_loc16_ || param2)
                                                                        {
                                                                           _loc12_ = §§pop() - 1;
                                                                           addr237:
                                                                           addr241:
                                                                           addr243:
                                                                           §§push(_loc13_ = int(param1.right / _loc8_));
                                                                           if(_loc16_)
                                                                           {
                                                                              addr246:
                                                                              §§push(§§pop() + 1);
                                                                              if(_loc16_ || this)
                                                                              {
                                                                              }
                                                                              addr271:
                                                                              _loc14_ = §§pop();
                                                                              loop0:
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc14_);
                                                                                 loop1:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc13_);
                                                                                    loop2:
                                                                                    while(true)
                                                                                    {
                                                                                       if(§§pop() >= §§pop())
                                                                                       {
                                                                                          if(_loc16_)
                                                                                          {
                                                                                             _loc6_.dispose();
                                                                                             break;
                                                                                          }
                                                                                          break;
                                                                                       }
                                                                                       §§push(_loc10_);
                                                                                       if(_loc16_ || param3)
                                                                                       {
                                                                                          §§push(int(§§pop()));
                                                                                          if(_loc16_ || param1)
                                                                                          {
                                                                                             addr290:
                                                                                             _loc15_ = §§pop();
                                                                                             if(_loc17_ && param2)
                                                                                             {
                                                                                                continue loop0;
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc15_);
                                                                                                if(!_loc16_)
                                                                                                {
                                                                                                   continue loop1;
                                                                                                }
                                                                                             }
                                                                                             addr324:
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc11_);
                                                                                             if(_loc17_ && this)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             if(§§pop() >= §§pop())
                                                                                             {
                                                                                                if(_loc17_)
                                                                                                {
                                                                                                   break loop2;
                                                                                                }
                                                                                                continue loop0;
                                                                                             }
                                                                                             param2.copyPixels(_loc6_,_loc6_.rect,new Point(_loc14_ * _loc8_,_loc15_ * _loc9_));
                                                                                             _loc15_++;
                                                                                             §§goto(addr324);
                                                                                          }
                                                                                          continue;
                                                                                       }
                                                                                       §§goto(addr290);
                                                                                    }
                                                                                    §§goto(addr353);
                                                                                 }
                                                                              }
                                                                              addr270:
                                                                           }
                                                                           _loc13_ = §§pop();
                                                                           if(!(_loc17_ && this))
                                                                           {
                                                                              addr262:
                                                                              §§push(_loc12_);
                                                                              if(_loc16_ || param2)
                                                                              {
                                                                              }
                                                                           }
                                                                           §§goto(addr271);
                                                                        }
                                                                        §§goto(addr270);
                                                                     }
                                                                     §§goto(addr271);
                                                                  }
                                                                  §§goto(addr237);
                                                               }
                                                               §§goto(addr262);
                                                            }
                                                            §§goto(addr271);
                                                         }
                                                         §§goto(addr241);
                                                      }
                                                      §§goto(addr262);
                                                   }
                                                   §§goto(addr243);
                                                }
                                                §§goto(addr246);
                                             }
                                             §§goto(addr237);
                                          }
                                          §§goto(addr181);
                                       }
                                       §§goto(addr208);
                                    }
                                    §§goto(addr157);
                                 }
                                 §§goto(addr262);
                              }
                              §§goto(addr200);
                           }
                           §§goto(addr194);
                        }
                        §§goto(addr178);
                     }
                     §§goto(addr185);
                  }
                  §§goto(addr178);
               }
            }
            §§goto(addr194);
         }
         addr353:
      }
      
      public function § Q§(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §>2§
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc10_:§>2§ = null;
         var _loc11_:* = param2;
         if(!(_loc12_ && param1))
         {
            if("BIRD_BLACK" === _loc11_)
            {
               if(_loc13_ || param2)
               {
                  §§push(0);
                  if(_loc12_)
                  {
                     addr295:
                  }
               }
               else
               {
                  addr262:
                  §§push(2);
                  if(!_loc13_)
                  {
                  }
               }
            }
            else
            {
               §§push("BIRD_BLUE");
               if(!(_loc12_ && param3))
               {
                  §§push(_loc11_);
                  if(_loc13_ || param3)
                  {
                     if(§§pop() === §§pop())
                     {
                        §§goto(addr336);
                     }
                     else
                     {
                        §§push("BIRD_GREEN");
                        if(_loc13_ || param1)
                        {
                           §§push(_loc11_);
                           if(_loc13_)
                           {
                              if(§§pop() === §§pop())
                              {
                                 §§goto(addr262);
                              }
                              else
                              {
                                 addr290:
                                 §§push("BIRD_WHITE");
                                 if(!(_loc12_ && param1))
                                 {
                                    addr274:
                                    §§push(_loc11_);
                                 }
                                 if(§§pop() === _loc11_)
                                 {
                                    addr292:
                                    §§push(4);
                                    if(_loc13_)
                                    {
                                       §§goto(addr295);
                                    }
                                    else
                                    {
                                       addr331:
                                       §§goto(addr336);
                                    }
                                 }
                                 else
                                 {
                                    §§push("BIRD_RED");
                                    if(!(_loc12_ && param3))
                                    {
                                       addr314:
                                       §§push(_loc11_);
                                       if(_loc13_ || this)
                                       {
                                          if(§§pop() === §§pop())
                                          {
                                             if(_loc13_)
                                             {
                                                addr336:
                                                addr248:
                                                switch(1)
                                                {
                                                   case 0:
                                                      _loc10_ = new §+k§(this,param1,this.§7C§.§-K§.§[N§,this.§7C§,this.§1&§,param2,param3,param4,param5,param8,param9);
                                                      break;
                                                   case 1:
                                                      _loc10_ = new §3'§(this,param1,this.§7C§.§-K§.§[N§,this.§7C§,this.§1&§,param2,param3,param4,param5,param8,param9);
                                                      break;
                                                   case 2:
                                                      _loc10_ = new §5,§(this,param1,this.§7C§.§-K§.§[N§,this.§7C§,this.§1&§,param2,param3,param4,param5,param8,param9);
                                                      break;
                                                   case 3:
                                                      _loc10_ = new §<5§(this,param1,this.§7C§.§-K§.§[N§,this.§7C§,this.§1&§,param2,param3,param4,param5,param8,param9);
                                                      break;
                                                   case 4:
                                                      _loc10_ = new §#!"§(this,param1,this.§7C§.§-K§.§[N§,this.§7C§,this.§1&§,param2,param3,param4,param5,param8,param9);
                                                      break;
                                                   case 5:
                                                      _loc10_ = new §6&§(this,param1,this.§7C§.§-K§.§[N§,this.§7C§,this.§1&§,param2,param3,param4,param5,param8,param9);
                                                      break;
                                                   case 6:
                                                      _loc10_ = new §,-§(this,param1,this.§7C§.§-K§.§[N§,this.§7C§,this.§1&§,param2,param3,param4,param5,param8,param9);
                                                      break;
                                                   default:
                                                      _loc10_ = new §&v§(this,param1,this.§7C§.§-K§.§[N§,this.§7C§,this.§1&§,param2,param3,param4,param5,param8,param9);
                                                }
                                                return _loc10_;
                                                §§push(5);
                                             }
                                          }
                                          else
                                          {
                                             addr329:
                                             if("BIRD_REDBIG" !== _loc11_)
                                             {
                                                §§goto(addr336);
                                                §§push(7);
                                             }
                                          }
                                          §§goto(addr336);
                                          §§push(6);
                                       }
                                    }
                                    §§goto(addr329);
                                 }
                                 §§goto(addr336);
                              }
                           }
                           if(§§pop() === §§pop())
                           {
                              if(_loc13_)
                              {
                                 §§push(3);
                                 if(!_loc13_)
                                 {
                                 }
                                 §§goto(addr336);
                              }
                              else
                              {
                                 §§goto(addr292);
                              }
                           }
                           else
                           {
                              §§push("BIRD_YELLOW");
                              if(!(_loc12_ && this))
                              {
                                 §§goto(addr290);
                              }
                              §§goto(addr314);
                           }
                           §§goto(addr336);
                        }
                        §§goto(addr290);
                     }
                  }
                  §§goto(addr290);
               }
               §§goto(addr274);
            }
            §§goto(addr336);
         }
         §§goto(addr248);
      }
      
      public function hasBirds() : Boolean
      {
         return this.§2s§ > 0;
      }
      
      public function addObject(param1:String, param2:Number, param3:Number, param4:Number = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = true, param8:Number = 1.0, param9:Boolean = false) : §>2§
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         var _loc10_:Sprite;
         (_loc10_ = new Sprite()).scaleX = param8;
         if(!_loc15_)
         {
            _loc10_.scaleY = param8;
         }
         var _loc11_:§>2§;
         if((_loc11_ = this.§5!3§(_loc10_,param1,param2,param3,param4,param5,param6,param7,param8)).isTexture())
         {
            §§push(_loc10_);
            §§push(this.§`!7§);
            if(!_loc15_)
            {
               §§push(!§§pop());
            }
            §§pop().visible = §§pop();
            if(_loc14_ || param1)
            {
               this.§2;§[this.§2;§.length] = _loc11_;
               §§goto(addr73);
            }
            §§goto(addr164);
         }
         else
         {
            this.§2;§[this.§2;§.length] = _loc11_;
         }
         addr73:
         §§push(_loc11_ is §&v§);
         §§push(_loc11_ is §&v§);
         if(_loc14_)
         {
            if(§§pop())
            {
               §§pop();
               §§push(!_loc11_.§1!F§());
               if(_loc14_)
               {
                  addr96:
                  if(§§pop())
                  {
                     this.§72§.addChild(_loc10_);
                     var _loc12_:*;
                     §§push((_loc12_ = this).§2s§);
                     if(!(_loc15_ && param3))
                     {
                        §§push(§§pop() + 1);
                     }
                     var _loc13_:* = §§pop();
                     if(!(_loc15_ && this))
                     {
                        _loc12_.§2s§ = _loc13_;
                     }
                     §§goto(addr169);
                  }
                  else
                  {
                     §§push(_loc11_.front);
                     if(!(_loc15_ && this))
                     {
                        §§goto(addr136);
                     }
                     §§goto(addr141);
                  }
               }
               addr136:
               §§goto(addr138);
            }
            §§goto(addr96);
         }
         addr138:
         §§push(Boolean(§§pop()));
         if(!Boolean(§§pop()))
         {
            §§pop();
            addr141:
            §§push(Boolean(param9));
            if(_loc14_ || this)
            {
            }
            §§goto(addr172);
         }
         if(§§pop())
         {
            this.§;l§.addChild(_loc10_);
            addr164:
         }
         else
         {
            this.§2A§.addChild(_loc10_);
         }
         addr169:
         §§push(param5);
         if(_loc14_)
         {
            addr172:
            if(§§pop())
            {
               §§push(this.§7C§);
               if(_loc14_ || this)
               {
                  §§pop().§ N§(_loc11_);
                  if(_loc14_)
                  {
                     §§goto(addr186);
                  }
                  §§goto(addr188);
               }
               §§goto(addr190);
            }
            addr186:
            §§goto(addr187);
         }
         addr187:
         if(param6)
         {
            addr190:
            this.§7C§.activeObject = _loc11_;
            addr188:
         }
         return _loc11_;
      }
      
      public function §>d§(param1:int, param2:§>2§, param3:§>2§) : §@Q§
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc6_:§@Q§ = null;
         var _loc4_:int = this.§2;§.indexOf(param2) - this.§^!9§;
         var _loc5_:int = this.§2;§.indexOf(param3) - this.§^!9§;
         if(!(_loc8_ && this))
         {
            §§push(_loc4_);
            if(_loc7_ || param1)
            {
               §§push(0);
               if(!(_loc8_ && this))
               {
                  §§push(§§pop() >= §§pop());
                  if(!_loc8_)
                  {
                     if(§§pop())
                     {
                        if(_loc7_)
                        {
                           addr77:
                           §§pop();
                           if(!(_loc8_ && param1))
                           {
                              §§goto(addr88);
                           }
                           §§goto(addr89);
                        }
                     }
                     addr88:
                     §§goto(addr87);
                  }
                  §§goto(addr77);
               }
               addr87:
               §§goto(addr86);
            }
            addr86:
            §§goto(addr85);
         }
         addr85:
         if(_loc5_ >= 0)
         {
            (_loc6_ = new §@Q§(§%!?§.§4+§,_loc4_,_loc5_,new Point(0,0),new Point(0,0))).§1-§ = this.§7C§.§-K§.§[N§.CreateJoint(_loc6_.§>k§(param2,param3));
            addr89:
            if(!_loc8_)
            {
               this.§-!C§.push(_loc6_);
               if(_loc7_ || this)
               {
                  return _loc6_;
               }
            }
         }
         return null;
      }
      
      public function §<S§(param1:§@Q§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            if(!(param1.§1-§ is b2WeldJoint))
            {
               if(!_loc4_)
               {
                  §§goto(addr26);
               }
            }
            var _loc2_:§>2§ = this.§!6§(param1.index1 + this.§^!9§);
            var _loc3_:§>2§ = this.§!6§(param1.index2 + this.§^!9§);
            if(!(_loc4_ && _loc2_))
            {
               this.§7C§.§-K§.§[N§.DestroyJoint(param1.§1-§);
               if(_loc5_)
               {
                  param1.§1-§ = this.§7C§.§-K§.§[N§.CreateJoint(param1.§>k§(_loc2_,_loc3_));
               }
            }
            return;
         }
         addr26:
      }
      
      public function §"l§(param1:§>2§) : Vector.<§@Q§>
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc4_:§@Q§ = null;
         var _loc2_:Vector.<§@Q§> = new Vector.<§@Q§>();
         var _loc3_:int = this.§2;§.indexOf(param1) - this.§^!9§;
         if(_loc7_)
         {
            §§push(_loc3_);
            if(_loc7_)
            {
               if(§§pop() >= 0)
               {
                  addr52:
                  addr51:
                  for each(_loc4_ in this.§-!C§)
                  {
                     §§push(_loc4_.index1 == _loc3_);
                     if(!(_loc8_ && _loc3_))
                     {
                        if(!§§pop())
                        {
                           if(_loc7_)
                           {
                              addr89:
                              §§pop();
                              if(_loc7_ || param1)
                              {
                                 addr101:
                                 if(_loc4_.index2 != _loc3_)
                                 {
                                    continue;
                                 }
                                 if(_loc8_)
                                 {
                                    continue;
                                 }
                              }
                              _loc2_.push(_loc4_);
                              continue;
                           }
                        }
                        §§goto(addr101);
                     }
                     §§goto(addr89);
                  }
               }
               return _loc2_;
            }
            §§goto(addr52);
         }
         §§goto(addr51);
      }
      
      public function §@`§() : Vector.<§@Q§>
      {
         return this.§-!C§;
      }
      
      public function §"-§(param1:§>2§) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:int = this.§2;§.indexOf(param1) - this.§^!9§;
         var _loc3_:* = int(this.§-!C§.length - 1);
         loop0:
         while(true)
         {
            §§push(_loc3_);
            while(§§pop() >= 0)
            {
               §§push(this.§-!C§[_loc3_].index1 == _loc2_);
               if(_loc4_)
               {
                  if(!§§pop())
                  {
                     if(!_loc5_)
                     {
                        §§pop();
                        if(!_loc4_)
                        {
                           continue loop0;
                        }
                        §§push(this.§-!C§[_loc3_].index2 == _loc2_);
                     }
                  }
               }
               if(§§pop())
               {
                  if(!_loc5_)
                  {
                     this.§-!C§.splice(_loc3_,1);
                     if(!_loc4_)
                     {
                        continue loop0;
                     }
                  }
                  break;
               }
               §§push(_loc3_);
               if(!_loc5_)
               {
                  §§push(§§pop() - 1);
                  if(_loc5_)
                  {
                     continue;
                  }
               }
               _loc3_ = §§pop();
               if(_loc5_)
               {
                  break;
               }
               continue loop0;
            }
            return;
         }
      }
      
      public function §'!&§(param1:§>2§, param2:§>2§) : Boolean
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:int = this.§2;§.indexOf(param1) - this.§^!9§;
         var _loc4_:int = this.§2;§.indexOf(param2) - this.§^!9§;
         var _loc5_:* = int(this.§-!C§.length - 1);
         loop0:
         while(true)
         {
            §§push(_loc5_);
            while(true)
            {
               if(§§pop() < 0)
               {
                  §§push(false);
               }
               else
               {
                  §§push(this.§-!C§[_loc5_].index1 == _loc3_);
                  if(!_loc7_)
                  {
                     §§push(§§pop());
                     if(_loc6_)
                     {
                        if(§§pop())
                        {
                           addr65:
                           §§pop();
                           §§push(this.§-!C§[_loc5_].index2 == _loc4_);
                        }
                        §§push(§§pop());
                        if(_loc6_)
                        {
                           addr76:
                           if(!§§pop())
                           {
                              §§pop();
                              if(!(_loc7_ && this))
                              {
                                 §§push(this.§-!C§[_loc5_].index1 == _loc4_);
                                 if(!_loc7_)
                                 {
                                    addr95:
                                    if(§§pop())
                                    {
                                       §§pop();
                                       addr114:
                                       if(this.§-!C§[_loc5_].index2 == _loc3_)
                                       {
                                          if(_loc6_ || _loc3_)
                                          {
                                             §§push(true);
                                             if(_loc6_)
                                             {
                                                break loop0;
                                             }
                                             §§goto(addr137);
                                          }
                                          continue loop0;
                                       }
                                       §§push(_loc5_);
                                       if(!_loc7_)
                                       {
                                          §§push(§§pop() - 1);
                                          if(_loc6_)
                                          {
                                             break;
                                          }
                                       }
                                       continue;
                                    }
                                    §§goto(addr114);
                                 }
                                 break loop0;
                              }
                           }
                           §§goto(addr114);
                        }
                        §§goto(addr95);
                     }
                     §§goto(addr76);
                  }
                  §§goto(addr65);
               }
               addr137:
               return §§pop();
            }
            _loc5_ = §§pop();
         }
         return §§pop();
      }
      
      protected function §5!3§(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §>2§
      {
         var _loc15_:Boolean = false;
         var _loc16_:Boolean = true;
         var _loc10_:§>2§ = null;
         var _loc11_:§+i§ = null;
         var _loc12_:§+i§ = null;
         if(!_loc15_)
         {
            §§push(param2);
            if(_loc16_ || this)
            {
               §§push("BIRD");
               if(!_loc15_)
               {
                  if(§§pop().indexOf(§§pop()) == 0)
                  {
                     if(_loc16_ || param3)
                     {
                        addr49:
                        _loc10_ = this.§ Q§(param1,param2,param3,param4,param5,param6,param7,param8,param9);
                        if(!_loc15_)
                        {
                           var _loc13_:*;
                           §§push((_loc13_ = this).§-v§);
                           if(!_loc15_)
                           {
                              §§push(§§pop() + 1);
                           }
                           var _loc14_:* = §§pop();
                           if(_loc16_)
                           {
                              _loc13_.§-v§ = _loc14_;
                           }
                        }
                     }
                     else
                     {
                        addr85:
                        §§push(§3n§.§]B§(param2));
                        if(!_loc15_)
                        {
                           _loc11_ = §§pop();
                           _loc10_ = new §4A§(this,param1,this.§7C§.§-K§.§[N§,this.§7C§,this.§1&§,param2,param3,param4,param5,param9,_loc11_.particleJSONId,_loc11_.particleVariationCount);
                        }
                        else
                        {
                           addr119:
                           §§push((_loc12_ = §§pop()) == null);
                           if(!_loc15_)
                           {
                              §§push(§§pop());
                              if(_loc16_)
                              {
                                 if(§§pop())
                                 {
                                    if(!_loc15_)
                                    {
                                       §§pop();
                                       if(!_loc15_)
                                       {
                                          §§push(param2);
                                          if(!_loc15_)
                                          {
                                             §§push(§§pop().indexOf("MISC_") == 0);
                                             if(!_loc15_)
                                             {
                                                addr154:
                                                if(§§pop())
                                                {
                                                   if(_loc16_)
                                                   {
                                                      addr170:
                                                      §§push("MISC_FOOD_");
                                                      if(_loc16_ || param1)
                                                      {
                                                         §§push(§§pop() + param2.substring(5));
                                                      }
                                                      param2 = §§pop();
                                                      if(_loc16_)
                                                      {
                                                         _loc12_ = §3n§.§]B§(param2);
                                                      }
                                                      _loc10_ = new §>o§(this,param1,this.§7C§.§-K§.§[N§,this.§7C§,this.§1&§,param2,param3,param4,param5,param9,_loc12_.front,_loc12_.particleJSONId,_loc12_.particleVariationCount);
                                                      addr279:
                                                      return _loc10_;
                                                      addr222:
                                                   }
                                                   §§goto(addr222);
                                                }
                                                §§push(_loc12_.§'F§);
                                                if(_loc16_ || param1)
                                                {
                                                   §§push(§+i§.§]D§);
                                                   if(!_loc15_)
                                                   {
                                                      §§push(§§pop() == §§pop());
                                                      if(!(_loc15_ && param3))
                                                      {
                                                         addr199:
                                                         if(!§§pop())
                                                         {
                                                            if(_loc16_ || param2)
                                                            {
                                                            }
                                                            addr221:
                                                            if(§§pop())
                                                            {
                                                               §§goto(addr222);
                                                            }
                                                            else
                                                            {
                                                               _loc10_ = new §>2§(this,param1,this.§7C§.§-K§.§[N§,this.§7C§,this.§1&§,param2,param3,param4,param5,param9,_loc12_.front);
                                                               §§goto(addr279);
                                                            }
                                                         }
                                                         §§goto(addr221);
                                                      }
                                                      §§pop();
                                                      if(_loc16_ || param3)
                                                      {
                                                         addr218:
                                                         §§push(_loc12_.§'F§);
                                                         §§push(§+i§.§+^§);
                                                      }
                                                      §§goto(addr279);
                                                   }
                                                   §§goto(addr221);
                                                   §§push(§§pop() == §§pop());
                                                }
                                                §§goto(addr218);
                                             }
                                             §§goto(addr199);
                                          }
                                       }
                                       §§goto(addr170);
                                    }
                                 }
                                 §§goto(addr154);
                              }
                              §§goto(addr199);
                           }
                           §§goto(addr221);
                        }
                     }
                     §§goto(addr170);
                  }
                  else
                  {
                     addr82:
                     if(param2.indexOf("PIG") == 0)
                     {
                        §§goto(addr85);
                     }
                     else
                     {
                        §§push(§3n§.§]B§(param2));
                     }
                     §§goto(addr119);
                  }
               }
            }
            §§goto(addr82);
         }
         §§goto(addr49);
      }
      
      public function §&'§(param1:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§>2§ = null;
         var _loc2_:* = int(this.§2;§.length - 1);
         for(; _loc2_ >= 0; §§push(_loc2_),if(_loc5_)
         {
            §§push(§§pop() - 1);
         },_loc2_ = §§pop())
         {
            _loc3_ = this.§2;§[_loc2_] as §>2§;
            if(!_loc4_)
            {
               if(!_loc3_)
               {
                  continue;
               }
               if(_loc5_ || _loc3_)
               {
                  if(_loc3_.§4!;§ <= 0)
                  {
                     if(_loc4_ && _loc2_)
                     {
                     }
                     addr74:
                  }
                  else
                  {
                     _loc3_.§4!3§();
                     if(_loc5_ || _loc2_)
                     {
                        _loc3_.§,I§();
                     }
                  }
                  continue;
               }
               this.§64§(_loc2_,true,true,true);
            }
            §§goto(addr74);
         }
         if(_loc5_ || param1)
         {
            this.§8k§(param1);
         }
      }
      
      protected function §8k§(param1:Number) : void
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         var _loc3_:§@Q§ = null;
         var _loc4_:§,r§ = null;
         var _loc5_:* = 0;
         var _loc6_:§>2§ = null;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc2_:* = int(this.§9!4§.length - 1);
         while(true)
         {
            §§push(_loc2_);
            if(!_loc11_)
            {
               if(§§pop() < 0)
               {
                  §§goto(addr356);
               }
               if((_loc4_ = this.§9!4§[_loc2_]).§8!A§)
               {
                  if(_loc12_)
                  {
                     §§push(_loc4_.update(param1));
                     if(_loc12_ || this)
                     {
                        §§push(int(§§pop()));
                        if(_loc12_)
                        {
                           §§push(§§pop());
                           if(_loc12_)
                           {
                              _loc5_ = §§pop();
                              if(_loc12_ || _loc2_)
                              {
                                 addr76:
                                 if(§§pop() != -1)
                                 {
                                    if(!_loc12_)
                                    {
                                       continue;
                                    }
                                    addr79:
                                    §§push(this);
                                    §§push("block_");
                                    if(_loc12_)
                                    {
                                       §§push(§§pop() + _loc5_);
                                    }
                                    if(_loc6_ = §§pop().§'§(§§pop()))
                                    {
                                       if(_loc12_)
                                       {
                                          this.§>!"§(_loc6_,true,true,true);
                                          if(_loc12_ || this)
                                          {
                                          }
                                          addr110:
                                          §§push(_loc2_);
                                          if(_loc12_)
                                          {
                                             addr114:
                                             _loc2_ = §§pop() - 1;
                                             continue;
                                          }
                                          §§goto(addr114);
                                       }
                                       §§goto(addr110);
                                    }
                                    this.§9!4§.splice(_loc2_,1);
                                 }
                                 §§goto(addr110);
                              }
                              §§goto(addr114);
                           }
                        }
                        §§goto(addr76);
                     }
                     §§goto(addr114);
                  }
                  §§goto(addr79);
               }
               §§goto(addr110);
            }
            break;
         }
         var _loc9_:* = §§pop();
         if(!_loc11_)
         {
            for each(_loc3_ in this.§-!C§)
            {
               §§push(_loc3_.type == §%!?§.§!E§);
               if(!_loc11_)
               {
                  §§push(§§pop());
                  if(_loc12_ || this)
                  {
                     if(§§pop())
                     {
                        if(_loc12_)
                        {
                           §§pop();
                           if(_loc12_)
                           {
                              §§push(Boolean(_loc3_.§7!G§));
                              if(_loc12_ || _loc2_)
                              {
                                 addr183:
                                 if(!§§pop())
                                 {
                                    continue;
                                 }
                                 §§push(_loc3_.§1-§);
                                 if(_loc12_)
                                 {
                                    §§push((§§pop() as b2PrismaticJoint).GetJointTranslation());
                                    if(_loc12_ || param1)
                                    {
                                       _loc7_ = §§pop();
                                       if(!_loc12_)
                                       {
                                          continue;
                                       }
                                       §§push(_loc3_.§1-§);
                                       if(!_loc11_)
                                       {
                                          addr210:
                                          _loc8_ = (§§pop() as b2PrismaticJoint).GetMotorSpeed();
                                          if(_loc12_)
                                          {
                                             §§push(Boolean(_loc3_.§!_§));
                                             if(_loc12_ || this)
                                             {
                                                §§push(§§pop());
                                                if(!_loc11_)
                                                {
                                                   addr226:
                                                   if(§§pop())
                                                   {
                                                      if(!(_loc11_ && _loc2_))
                                                      {
                                                         §§pop();
                                                         if(_loc12_ || this)
                                                         {
                                                            §§push(Boolean(_loc3_.§9!'§));
                                                            if(!_loc11_)
                                                            {
                                                               addr247:
                                                               §§push(§§pop());
                                                               if(_loc12_ || this)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     §§pop();
                                                                     if(_loc12_ || _loc3_)
                                                                     {
                                                                        §§push(_loc8_);
                                                                        §§push(0);
                                                                        if(_loc12_)
                                                                        {
                                                                           addr269:
                                                                           §§push(§§pop() > §§pop());
                                                                           §§push(§§pop() > §§pop());
                                                                           if(!_loc11_)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 if(_loc12_ || param1)
                                                                                 {
                                                                                    addr280:
                                                                                    §§pop();
                                                                                    §§push(_loc7_);
                                                                                    if(_loc12_)
                                                                                    {
                                                                                       addr287:
                                                                                       §§push(§§pop() >= _loc3_.upperLimit);
                                                                                       §§push(§§pop() >= _loc3_.upperLimit);
                                                                                       if(_loc12_ || _loc3_)
                                                                                       {
                                                                                          addr295:
                                                                                          if(!§§pop())
                                                                                          {
                                                                                             if(_loc12_)
                                                                                             {
                                                                                                §§pop();
                                                                                                if(_loc12_ || _loc3_)
                                                                                                {
                                                                                                   addr306:
                                                                                                   §§push(_loc8_);
                                                                                                   if(!(_loc11_ && param1))
                                                                                                   {
                                                                                                      addr327:
                                                                                                      §§push(§§pop() < 0);
                                                                                                      if(§§pop() < 0)
                                                                                                      {
                                                                                                         addr335:
                                                                                                         if(_loc12_)
                                                                                                         {
                                                                                                            addr330:
                                                                                                            §§pop();
                                                                                                            §§push(_loc7_);
                                                                                                         }
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            if(_loc12_ || this)
                                                                                                            {
                                                                                                               addr343:
                                                                                                               §§push(_loc3_.§1-§ as b2PrismaticJoint);
                                                                                                               §§push(_loc8_);
                                                                                                               if(_loc12_)
                                                                                                               {
                                                                                                                  §§push(-§§pop());
                                                                                                               }
                                                                                                               §§pop().SetMotorSpeed(§§pop());
                                                                                                            }
                                                                                                         }
                                                                                                         continue;
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr335);
                                                                                                   §§push(§§pop() <= _loc3_.lowerLimit);
                                                                                                }
                                                                                                §§goto(addr343);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr335);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr327);
                                                                                 }
                                                                                 §§goto(addr330);
                                                                              }
                                                                              §§goto(addr287);
                                                                           }
                                                                        }
                                                                        §§goto(addr327);
                                                                     }
                                                                     §§goto(addr343);
                                                                  }
                                                                  §§goto(addr335);
                                                               }
                                                               §§goto(addr295);
                                                            }
                                                            §§goto(addr280);
                                                         }
                                                         §§goto(addr306);
                                                      }
                                                   }
                                                   §§goto(addr247);
                                                }
                                                §§goto(addr327);
                                             }
                                             §§goto(addr247);
                                          }
                                          §§goto(addr306);
                                       }
                                       §§goto(addr343);
                                    }
                                 }
                                 §§goto(addr210);
                              }
                              §§goto(addr335);
                           }
                           §§goto(addr330);
                        }
                        §§goto(addr269);
                     }
                     §§goto(addr183);
                  }
                  §§goto(addr226);
               }
               §§goto(addr269);
            }
         }
         addr356:
         if(_loc12_ || _loc3_)
         {
            break loop0;
         }
      }
      
      public function addExplosions(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            this.§,!6§.push(§5V§.createExplosion(param1,param2,param3));
            if(_loc4_ || this)
            {
               addr43:
               §3!E§.§<!,§("TntExplosions","ChannelExplosions");
            }
            return;
         }
         §§goto(addr43);
      }
      
      public function §2j§(param1:Number, param2:Number) : int
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:§>2§ = null;
         var _loc3_:* = int(this.§2;§.length - 1);
         while(true)
         {
            §§push(_loc3_);
            if(_loc5_ || this)
            {
               if(§§pop() < 0)
               {
                  break;
               }
               if(_loc4_ = this.§2;§[_loc3_])
               {
                  if(!_loc5_)
                  {
                     continue;
                  }
                  if(_loc4_.isInCoordinates(param1,param2))
                  {
                     if(_loc5_ || param1)
                     {
                        §§push(_loc3_);
                        if(!(_loc6_ && this))
                        {
                           return §§pop();
                        }
                     }
                     else
                     {
                        addr85:
                        §§push(_loc3_);
                        if(_loc5_ || param2)
                        {
                           §§push(§§pop() - 1);
                        }
                     }
                     _loc3_ = §§pop();
                     continue;
                  }
               }
               §§goto(addr85);
            }
            break;
         }
         return §§pop();
      }
      
      public function §<"§(param1:Number, param2:Number) : §>2§
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:§>2§ = null;
         var _loc3_:* = int(this.§2;§.length - 1);
         while(true)
         {
            if(_loc3_ < 0)
            {
               return null;
            }
            if(_loc4_ = this.§2;§[_loc3_])
            {
               if(_loc5_ && this)
               {
                  break;
               }
               if(_loc4_.isInCoordinates(param1,param2))
               {
                  if(_loc6_)
                  {
                     break;
                  }
               }
               else
               {
                  addr74:
                  §§push(_loc3_);
                  if(_loc6_)
                  {
                     §§push(§§pop() - 1);
                  }
                  _loc3_ = §§pop();
               }
               continue;
            }
            §§goto(addr74);
         }
         return _loc4_;
      }
      
      public function §!6§(param1:int) : §>2§
      {
         return this.§2;§[param1];
      }
      
      public function §&;§(param1:Number, param2:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:§>2§ = null;
         var _loc3_:* = int(this.§2;§.length - 1);
         while(_loc3_ >= 0)
         {
            (_loc4_ = this.§2;§[_loc3_] as §>2§).§&;§(param2,param1);
            if(!(_loc5_ && this))
            {
               §§push(_loc3_);
               if(_loc6_)
               {
                  §§push(§§pop() - 1);
               }
               _loc3_ = §§pop();
            }
         }
      }
      
      private function §!G§(param1:§>2§, param2:Number) : Boolean
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc4_:Number = NaN;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc7_:§>2§ = null;
         if(!(_loc9_ && param2))
         {
            §§push(this.mSardineCanAdded);
            if(_loc8_)
            {
               if(!§§pop())
               {
                  if(!(_loc9_ && _loc3_))
                  {
                     §§push(true);
                     if(!_loc9_)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr50:
                     §§push(this.mMightyEagleAdded);
                     if(_loc8_ || _loc3_)
                     {
                        if(§§pop())
                        {
                           if(!_loc9_)
                           {
                              §§push(false);
                              if(_loc9_)
                              {
                                 addr67:
                                 var _loc3_:* = §§pop();
                                 §§push(param1.§4!;§);
                                 if(_loc8_)
                                 {
                                    §§push(param1.§8!,§);
                                    if(_loc8_)
                                    {
                                       if(§§pop() == §§pop())
                                       {
                                          if(this.§]f§ < this.§#!;§.SARDINE_CAN_MAX_ROTATION_SPEED)
                                          {
                                             if(!(_loc9_ && param2))
                                             {
                                                §§push(this);
                                                §§push(this.§]f§);
                                                if(!_loc9_)
                                                {
                                                   §§push(param2);
                                                   if(!_loc9_)
                                                   {
                                                      §§push(§§pop() * this.§#!;§.SARDINE_CAN_ROTATION_ACCELERATION);
                                                   }
                                                   §§push(§§pop() + §§pop());
                                                }
                                                §§pop().§]f§ = §§pop();
                                                if(!_loc9_)
                                                {
                                                   addr106:
                                                   §§push(param1.§%;§());
                                                   if(_loc8_)
                                                   {
                                                      §§push(param2);
                                                      if(_loc8_)
                                                      {
                                                         §§push(§§pop() * this.§]f§);
                                                      }
                                                      §§pop().SetAngularVelocity(§§pop());
                                                      this.§,=§ = 0;
                                                      addr141:
                                                      §§push(param1.§0!@§());
                                                      if(_loc8_ || this)
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                         §§push(Boolean(§§pop()));
                                                         if(_loc8_ || param2)
                                                         {
                                                            if(!§§pop())
                                                            {
                                                               if(_loc8_)
                                                               {
                                                                  §§pop();
                                                                  if(_loc8_)
                                                                  {
                                                                     addr168:
                                                                     §§push(Boolean(this.§0g§(param1)));
                                                                     if(_loc8_)
                                                                     {
                                                                        addr171:
                                                                        §§push(§§pop());
                                                                        if(_loc8_ || this)
                                                                        {
                                                                           if(!§§pop())
                                                                           {
                                                                              §§pop();
                                                                              if(_loc8_)
                                                                              {
                                                                                 addr186:
                                                                                 §§push(this.§,=§ > 0);
                                                                                 if(!(_loc9_ && param1))
                                                                                 {
                                                                                    §§push(§§pop());
                                                                                    if(!_loc9_)
                                                                                    {
                                                                                       addr197:
                                                                                       if(§§pop())
                                                                                       {
                                                                                          §§pop();
                                                                                          if(_loc8_ || param2)
                                                                                          {
                                                                                             addr206:
                                                                                             §§push(this.§7C§.§3!F§);
                                                                                             if(_loc8_ || param1)
                                                                                             {
                                                                                                §§push(§§pop() > this.§,=§ + this.§#!;§.SARDINE_CAN_DELAY_AFTER_HIT);
                                                                                                if(_loc8_)
                                                                                                {
                                                                                                   addr235:
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      if(!(_loc9_ && param1))
                                                                                                      {
                                                                                                         if(this.mMightyEagleTimer < this.§#!;§.MIGHTY_EAGLE_WAIT_TIME)
                                                                                                         {
                                                                                                            if(_loc8_ || this)
                                                                                                            {
                                                                                                               §§push(this.mMightyEagleTimer);
                                                                                                               §§push(param2);
                                                                                                               if(_loc8_)
                                                                                                               {
                                                                                                                  addr261:
                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                  if(_loc8_)
                                                                                                                  {
                                                                                                                     _loc4_ = §§pop();
                                                                                                                     if(_loc8_ || this)
                                                                                                                     {
                                                                                                                        §§push(this.mMightyEagleTimer);
                                                                                                                        if(!(_loc9_ && _loc3_))
                                                                                                                        {
                                                                                                                           addr282:
                                                                                                                           addr287:
                                                                                                                           §§push(§§pop() < this.§#!;§.MIGHTY_EAGLE_SOUND_DELAY);
                                                                                                                           if(§§pop() < this.§#!;§.MIGHTY_EAGLE_SOUND_DELAY)
                                                                                                                           {
                                                                                                                              addr288:
                                                                                                                              §§pop();
                                                                                                                              addr289:
                                                                                                                              addr290:
                                                                                                                              §§push(_loc4_ > this.§#!;§.MIGHTY_EAGLE_SOUND_DELAY);
                                                                                                                              if(!_loc8_)
                                                                                                                              {
                                                                                                                              }
                                                                                                                              §§goto(addr449);
                                                                                                                           }
                                                                                                                           if(§§pop())
                                                                                                                           {
                                                                                                                              addr297:
                                                                                                                              §3!E§.§<!,§("Mighty_Eagle_Selected_1","ChannelBird");
                                                                                                                              §3!E§.§<!,§("Mighty_Eagle_Flying_1","ChannelBird");
                                                                                                                              if(_loc8_ || this)
                                                                                                                              {
                                                                                                                              }
                                                                                                                              addr390:
                                                                                                                              _loc3_ = true;
                                                                                                                              _loc7_ = this.addObject("BIRD_MIGHTY_EAGLE",_loc5_,_loc6_,this.§#!;§.MIGHTY_EAGLE_FLYING_ANGLE * 1.2);
                                                                                                                              if(!(_loc9_ && _loc3_))
                                                                                                                              {
                                                                                                                                 this.mMightyEagleAdded = true;
                                                                                                                                 if(_loc8_ || param2)
                                                                                                                                 {
                                                                                                                                    addr431:
                                                                                                                                    this.§,=§ = 0;
                                                                                                                                    if(!(_loc9_ && _loc3_))
                                                                                                                                    {
                                                                                                                                       addr441:
                                                                                                                                       _loc7_.§2!@§.§&w§(1.82);
                                                                                                                                    }
                                                                                                                                    addr445:
                                                                                                                                    this.mMightyEagleTimer = _loc4_;
                                                                                                                                    addr449:
                                                                                                                                    return §§pop();
                                                                                                                                    §§push(_loc3_);
                                                                                                                                 }
                                                                                                                                 §§goto(addr441);
                                                                                                                              }
                                                                                                                              §§goto(addr431);
                                                                                                                           }
                                                                                                                           if(_loc4_ >= this.§#!;§.MIGHTY_EAGLE_WAIT_TIME)
                                                                                                                           {
                                                                                                                              addr317:
                                                                                                                              §§push(param1.§%;§());
                                                                                                                              if(_loc8_)
                                                                                                                              {
                                                                                                                                 §§push(§§pop().GetPosition());
                                                                                                                                 if(!(_loc9_ && param1))
                                                                                                                                 {
                                                                                                                                    §§push(§§pop().x);
                                                                                                                                    if(!_loc9_)
                                                                                                                                    {
                                                                                                                                       addr332:
                                                                                                                                       §§push(Number(§§pop() - this.§#!;§.MIGHTY_EAGLE_STARTING_DISTANCE_X));
                                                                                                                                       if(_loc8_ || param1)
                                                                                                                                       {
                                                                                                                                          _loc5_ = §§pop();
                                                                                                                                          if(_loc8_ || _loc3_)
                                                                                                                                          {
                                                                                                                                             addr355:
                                                                                                                                             §§push(param1.§%;§().GetPosition().y);
                                                                                                                                             if(!(_loc9_ && param1))
                                                                                                                                             {
                                                                                                                                                addr363:
                                                                                                                                                §§push(this.§#!;§.MIGHTY_EAGLE_STARTING_DISTANCE_Y * this.§#!;§.MIGHTY_EAGLE_Y_CHANGE);
                                                                                                                                                if(_loc8_)
                                                                                                                                                {
                                                                                                                                                   addr372:
                                                                                                                                                   §§push(§§pop() * 1.07);
                                                                                                                                                }
                                                                                                                                                §§push(§§pop() - §§pop());
                                                                                                                                                if(!(_loc9_ && param1))
                                                                                                                                                {
                                                                                                                                                   addr382:
                                                                                                                                                   §§push(Number(§§pop()));
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             _loc6_ = §§pop();
                                                                                                                                             §§push(this.§0g§(param1));
                                                                                                                                             if(_loc8_)
                                                                                                                                             {
                                                                                                                                                addr389:
                                                                                                                                                if(!§§pop())
                                                                                                                                                {
                                                                                                                                                }
                                                                                                                                                §§goto(addr390);
                                                                                                                                             }
                                                                                                                                             §§goto(addr449);
                                                                                                                                          }
                                                                                                                                          §§goto(addr390);
                                                                                                                                       }
                                                                                                                                       §§goto(addr363);
                                                                                                                                    }
                                                                                                                                    §§goto(addr382);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr355);
                                                                                                                           }
                                                                                                                           §§goto(addr445);
                                                                                                                        }
                                                                                                                        §§goto(addr332);
                                                                                                                     }
                                                                                                                     §§goto(addr390);
                                                                                                                  }
                                                                                                                  §§goto(addr282);
                                                                                                               }
                                                                                                               §§goto(addr372);
                                                                                                            }
                                                                                                            §§goto(addr289);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr390);
                                                                                                   }
                                                                                                   §§goto(addr431);
                                                                                                }
                                                                                                §§goto(addr288);
                                                                                             }
                                                                                             §§goto(addr290);
                                                                                          }
                                                                                          §§goto(addr390);
                                                                                       }
                                                                                       §§goto(addr235);
                                                                                    }
                                                                                    §§goto(addr287);
                                                                                 }
                                                                                 §§goto(addr288);
                                                                              }
                                                                              §§goto(addr297);
                                                                           }
                                                                           §§goto(addr235);
                                                                        }
                                                                        §§goto(addr197);
                                                                     }
                                                                     §§goto(addr288);
                                                                  }
                                                                  §§goto(addr206);
                                                               }
                                                               §§goto(addr168);
                                                            }
                                                            §§goto(addr171);
                                                         }
                                                         §§goto(addr282);
                                                      }
                                                      §§goto(addr389);
                                                   }
                                                   §§goto(addr355);
                                                }
                                                §§goto(addr317);
                                             }
                                             §§goto(addr355);
                                          }
                                          §§goto(addr106);
                                       }
                                       else
                                       {
                                          §§push(this.§,=§);
                                          if(_loc8_)
                                          {
                                             §§push(0);
                                             if(!_loc9_)
                                             {
                                                if(§§pop() == §§pop())
                                                {
                                                   this.§,=§ = this.§7C§.§3!F§;
                                                   if(_loc8_ || _loc3_)
                                                   {
                                                      §§goto(addr141);
                                                   }
                                                   §§goto(addr282);
                                                }
                                                §§goto(addr141);
                                             }
                                             §§goto(addr186);
                                          }
                                       }
                                       §§goto(addr186);
                                    }
                                    §§goto(addr261);
                                 }
                                 §§goto(addr282);
                              }
                           }
                           else
                           {
                              addr66:
                              §§goto(addr67);
                              §§push(false);
                           }
                           §§goto(addr67);
                        }
                        §§goto(addr66);
                     }
                  }
                  return §§pop();
               }
               §§goto(addr50);
            }
            §§goto(addr67);
         }
         §§goto(addr66);
      }
      
      private function §;!0§(param1:§>2§, param2:Number) : Boolean
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc5_:§>2§ = null;
         if(_loc9_)
         {
            §§push(Boolean(this.§#!;§.MIGHTY_EAGLE_USE_SHADE));
            §§push(Boolean(this.§#!;§.MIGHTY_EAGLE_USE_SHADE));
            if(_loc9_ || this)
            {
               if(§§pop())
               {
                  §§pop();
                  if(_loc9_ || _loc3_)
                  {
                     addr44:
                     §§push(Boolean(!this.§!!§));
                     if(!_loc8_)
                     {
                        addr51:
                        if(§§pop())
                        {
                           if(!(_loc8_ && _loc3_))
                           {
                              addr60:
                              §§pop();
                              if(_loc9_ || _loc3_)
                              {
                                 §§push(this.mMightyEagleTimer);
                                 if(_loc9_)
                                 {
                                    addr76:
                                    if(§§pop() > this.§#!;§.MIGHTY_EAGLE_SHADING_DELAY)
                                    {
                                       if(!(_loc8_ && this))
                                       {
                                          addr84:
                                          this.§!!§ = true;
                                          if(!_loc9_)
                                          {
                                          }
                                          addr94:
                                          var _loc3_:Number = 3;
                                          addr92:
                                          if(!_loc8_)
                                          {
                                             §§push(this);
                                             §§push(this.mMightyEagleTimer);
                                             if(!_loc8_)
                                             {
                                                §§push(§§pop() + param2);
                                             }
                                             §§pop().mMightyEagleTimer = §§pop();
                                             if(_loc9_ || this)
                                             {
                                                addr112:
                                                §§push(this.§7C§.particles);
                                                §§push(§2S§.§4"§);
                                                §§push(§5b§.§?D§);
                                                §§push(§2S§.§9!>§);
                                                §§push(param1.§%;§().GetPosition().x);
                                                if(_loc9_ || param1)
                                                {
                                                   §§push(_loc3_);
                                                   if(_loc9_ || param1)
                                                   {
                                                      §§push(§§pop() - §§pop());
                                                      if(!(_loc8_ && param2))
                                                      {
                                                         §§push(Math.random() * (_loc3_ * 2));
                                                         if(!_loc8_)
                                                         {
                                                            §§goto(addr157);
                                                         }
                                                         §§goto(addr163);
                                                      }
                                                   }
                                                   §§goto(addr157);
                                                }
                                                addr157:
                                                §§push(§§pop() + §§pop());
                                                §§push(param1.§%;§().GetPosition().y);
                                                if(_loc9_)
                                                {
                                                   addr163:
                                                   §§push(_loc3_);
                                                   if(!(_loc8_ && this))
                                                   {
                                                      §§goto(addr181);
                                                   }
                                                   §§push(§§pop() + §§pop());
                                                }
                                                §§goto(addr181);
                                             }
                                             addr181:
                                             §§push(§§pop() - §§pop());
                                             if(!_loc8_)
                                             {
                                                §§push(Math.random() * (_loc3_ * 2));
                                             }
                                             §§pop().§ t§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),3500,"",§2S§.§#!2§(param1.§'!,§),0,0,1,0,4);
                                             var _loc4_:* = 1;
                                             if(_loc9_ || this)
                                             {
                                                §§push(this.mMightyEagleHasTouchedGround);
                                                if(_loc9_)
                                                {
                                                   if(§§pop())
                                                   {
                                                      param1.§>!@§(this.§#!;§.MIGHTY_EAGLE_ROTATION_SPEED * param2);
                                                      if(_loc9_ || param2)
                                                      {
                                                         §§push(-1);
                                                         if(_loc9_ || this)
                                                         {
                                                            _loc4_ = §§pop();
                                                            §§goto(addr232);
                                                         }
                                                         §§goto(addr282);
                                                      }
                                                      §§goto(addr262);
                                                   }
                                                   else
                                                   {
                                                      this.mMightyEagleHasTouchedGround = param1.§%;§().GetPosition().y >= -5.5;
                                                      if(_loc9_ || this)
                                                      {
                                                         §§goto(addr490);
                                                      }
                                                   }
                                                   §§goto(addr501);
                                                }
                                                §§goto(addr232);
                                             }
                                             addr232:
                                             if(this.§`!E§)
                                             {
                                                if(_loc9_ || this)
                                                {
                                                   this.§`!E§ = false;
                                                   if(!_loc8_)
                                                   {
                                                      this.§7C§.§&`§();
                                                      param1.§+t§(§0r§.§@B§);
                                                      addr262:
                                                      this.mSardineCanAdded = false;
                                                   }
                                                   §§push(param1.§2!@§);
                                                   if(_loc9_)
                                                   {
                                                      §§pop().§"@§ = true;
                                                      if(_loc9_ || this)
                                                      {
                                                         addr280:
                                                         param1.§2!@§.§1i§();
                                                      }
                                                      addr282:
                                                      var _loc6_:int = 0;
                                                      var _loc7_:* = this.§2;§;
                                                      while(true)
                                                      {
                                                         §§push(§§hasnext(_loc7_,_loc6_));
                                                         if(!(_loc8_ && param1))
                                                         {
                                                            if(!§§pop())
                                                            {
                                                               if(_loc9_)
                                                               {
                                                                  if(!(_loc8_ && param2))
                                                                  {
                                                                     this.§ !§();
                                                                     if(!(_loc8_ && param1))
                                                                     {
                                                                        §§goto(addr367);
                                                                     }
                                                                     §§goto(addr501);
                                                                  }
                                                               }
                                                               §§goto(addr402);
                                                            }
                                                            else
                                                            {
                                                               _loc5_ = §§nextvalue(_loc6_,_loc7_);
                                                               §§push(Boolean(_loc5_));
                                                               if(_loc9_)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     if(_loc9_ || _loc3_)
                                                                     {
                                                                        §§pop();
                                                                        if(_loc9_)
                                                                        {
                                                                           §§push(_loc5_.§`U§());
                                                                           if(_loc9_ || param1)
                                                                           {
                                                                              addr320:
                                                                              if(!§§pop())
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              if(_loc9_)
                                                                              {
                                                                                 addr323:
                                                                                 §§push(_loc5_.§%;§());
                                                                                 if(!_loc8_)
                                                                                 {
                                                                                    §§pop().SetAwake(true);
                                                                                    if(!_loc9_)
                                                                                    {
                                                                                       continue;
                                                                                    }
                                                                                    addr331:
                                                                                    §§push(_loc5_.§%;§());
                                                                                 }
                                                                                 §§pop().SetLinearVelocity(new b2Vec2(0,-18));
                                                                                 continue;
                                                                              }
                                                                              §§goto(addr331);
                                                                           }
                                                                           §§goto(addr320);
                                                                        }
                                                                        §§goto(addr323);
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr320);
                                                            }
                                                         }
                                                         break;
                                                      }
                                                      while(true)
                                                      {
                                                         if(!§§pop())
                                                         {
                                                            §§goto(addr402);
                                                         }
                                                         else
                                                         {
                                                            _loc5_ = §§nextvalue(_loc6_,_loc7_);
                                                            §§push(Boolean(_loc5_));
                                                            if(!_loc8_)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  if(_loc9_)
                                                                  {
                                                                     §§pop();
                                                                     if(!(_loc8_ && param1))
                                                                     {
                                                                        §§push(_loc5_.§`U§());
                                                                        if(_loc9_ || _loc3_)
                                                                        {
                                                                           addr439:
                                                                           if(!§§pop())
                                                                           {
                                                                              continue;
                                                                           }
                                                                           if(_loc8_ && param1)
                                                                           {
                                                                              continue;
                                                                           }
                                                                        }
                                                                        §§goto(addr439);
                                                                     }
                                                                     §§push(_loc5_);
                                                                     §§push(_loc5_.§8!,§);
                                                                     if(!_loc8_)
                                                                     {
                                                                        §§push(§§pop() * 2);
                                                                     }
                                                                     §§pop().applyDamage(§§pop(),true,true,true);
                                                                     continue;
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr439);
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr280);
                                                }
                                                §§goto(addr262);
                                             }
                                             addr367:
                                             §§push(this.mMightyEagleTimer > 6000);
                                             if(!(_loc8_ && _loc3_))
                                             {
                                                if(§§pop())
                                                {
                                                   if(_loc9_)
                                                   {
                                                      §§pop();
                                                      §§push(this.isPigsAlive());
                                                      if(_loc8_)
                                                      {
                                                      }
                                                      addr390:
                                                      if(§§pop())
                                                      {
                                                         if(!_loc8_)
                                                         {
                                                            _loc6_ = 0;
                                                            if(!(_loc8_ && this))
                                                            {
                                                               addr402:
                                                               _loc7_ = this.§2;§;
                                                               while(true)
                                                               {
                                                                  §§push(§§hasnext(_loc7_,_loc6_));
                                                                  break loop0;
                                                               }
                                                               addr458:
                                                            }
                                                            if(!_loc8_)
                                                            {
                                                               addr501:
                                                               param1.§[;§(param2,new Point(this.§#!;§.MIGHTY_EAGLE_X_DIRECTION,_loc4_ * this.§#!;§.MIGHTY_EAGLE_Y_CHANGE),this.§#!;§.MIGHTY_EAGLE_FLYING_SPEED);
                                                               addr464:
                                                            }
                                                            else
                                                            {
                                                               addr490:
                                                               this.§`!E§ = this.mMightyEagleHasTouchedGround;
                                                               if(!(_loc8_ && param2))
                                                               {
                                                                  §§goto(addr501);
                                                               }
                                                            }
                                                            §§goto(addr518);
                                                         }
                                                         §§goto(addr501);
                                                      }
                                                      §§goto(addr464);
                                                   }
                                                   §§push(Boolean(§§pop()));
                                                   if(!_loc9_)
                                                   {
                                                   }
                                                   §§goto(addr518);
                                                }
                                                §§goto(addr390);
                                             }
                                             addr518:
                                             return false;
                                          }
                                          §§goto(addr112);
                                       }
                                       this.§7C§.§8G§();
                                    }
                                    §§goto(addr92);
                                 }
                                 §§goto(addr94);
                              }
                              §§goto(addr84);
                           }
                        }
                        §§goto(addr76);
                     }
                     §§goto(addr60);
                  }
                  §§goto(addr84);
               }
            }
            §§goto(addr51);
         }
         §§goto(addr44);
      }
      
      private function §'p§() : void
      {
         var _loc20_:Boolean = true;
         var _loc21_:Boolean = false;
         var _loc1_:§5V§ = null;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:* = NaN;
         var _loc6_:§>2§ = null;
         var _loc7_:* = 0;
         var _loc8_:Number = NaN;
         var _loc9_:* = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:* = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:* = NaN;
         var _loc14_:* = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:* = NaN;
         var _loc17_:* = NaN;
         loop0:
         while(this.§,!6§.length > 0)
         {
            _loc1_ = this.§,!6§.shift();
            §§push(_loc1_.§+r§);
            if(_loc20_ || _loc3_)
            {
               _loc2_ = §§pop();
               if(_loc20_ || _loc3_)
               {
                  _loc3_ = _loc1_.x;
                  §§push(_loc1_.y);
                  if(_loc20_)
                  {
                     _loc4_ = §§pop();
                     if(_loc20_ || _loc3_)
                     {
                        §§push(_loc1_.damage);
                        if(_loc20_)
                        {
                           §§push(Number(§§pop()));
                           if(!(_loc21_ && this))
                           {
                              _loc5_ = §§pop();
                              §§push(0);
                              if(_loc20_ || _loc1_)
                              {
                                 var _loc18_:* = §§pop();
                                 if(_loc20_ || _loc3_)
                                 {
                                    for each(_loc6_ in this.§2;§)
                                    {
                                       §§push(_loc6_.§%;§());
                                       if(!(_loc21_ && _loc1_))
                                       {
                                          §§push(§§pop().GetPosition());
                                          if(!_loc21_)
                                          {
                                             §§push(§§pop().x);
                                             if(!(_loc21_ && _loc2_))
                                             {
                                                §§push(_loc3_);
                                                if(!_loc21_)
                                                {
                                                   §§push(§§pop() - §§pop());
                                                   if(_loc20_ || _loc3_)
                                                   {
                                                      _loc8_ = §§pop();
                                                      §§push(_loc6_.§%;§());
                                                      if(_loc20_ || _loc1_)
                                                      {
                                                         addr177:
                                                         §§push(§§pop().GetPosition().y);
                                                         if(!_loc21_)
                                                         {
                                                            addr180:
                                                            §§push(_loc4_);
                                                            if(_loc20_ || this)
                                                            {
                                                               §§push(Number(§§pop() - §§pop()));
                                                               if(_loc20_)
                                                               {
                                                                  addr192:
                                                                  _loc9_ = §§pop();
                                                                  if(_loc20_)
                                                                  {
                                                                     §§push(_loc10_ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_));
                                                                     if(!_loc21_)
                                                                     {
                                                                        addr209:
                                                                        §§push(_loc1_.§+r§);
                                                                        if(_loc20_ || this)
                                                                        {
                                                                           if(§§pop() <= §§pop())
                                                                           {
                                                                              if(!(_loc21_ && _loc2_))
                                                                              {
                                                                                 §§push(_loc1_.push);
                                                                                 if(!_loc21_)
                                                                                 {
                                                                                    _loc11_ = Number(§§pop());
                                                                                    if(!(_loc21_ && _loc2_))
                                                                                    {
                                                                                       §§push(_loc10_);
                                                                                       §§push(1);
                                                                                       if(!_loc21_)
                                                                                       {
                                                                                          if(§§pop() > §§pop())
                                                                                          {
                                                                                             §§push(_loc11_);
                                                                                             if(_loc20_)
                                                                                             {
                                                                                                addr381:
                                                                                                §§push(§§pop() / _loc10_);
                                                                                                if(!_loc21_)
                                                                                                {
                                                                                                   §§push(Number(§§pop()));
                                                                                                }
                                                                                                _loc14_ = §§pop();
                                                                                                if(_loc20_)
                                                                                                {
                                                                                                   addr384:
                                                                                                   _loc6_.applyDamage(_loc14_,false,false,false,true);
                                                                                                }
                                                                                                continue;
                                                                                             }
                                                                                             _loc11_ = §§pop();
                                                                                          }
                                                                                          §§push(_loc10_);
                                                                                          if(_loc20_)
                                                                                          {
                                                                                             §§push(0);
                                                                                             if(!(_loc21_ && _loc1_))
                                                                                             {
                                                                                                if(§§pop() > §§pop())
                                                                                                {
                                                                                                   §§push(_loc11_);
                                                                                                   if(!_loc21_)
                                                                                                   {
                                                                                                      addr268:
                                                                                                      §§push(_loc8_);
                                                                                                      if(!(_loc21_ && this))
                                                                                                      {
                                                                                                         §§push(_loc10_);
                                                                                                         if(!(_loc21_ && _loc2_))
                                                                                                         {
                                                                                                            addr285:
                                                                                                            §§push(§§pop() * (§§pop() / §§pop()));
                                                                                                            if(!(_loc21_ && this))
                                                                                                            {
                                                                                                               addr293:
                                                                                                               _loc12_ = §§pop();
                                                                                                               addr298:
                                                                                                               §§push(_loc11_ * (_loc9_ / _loc10_));
                                                                                                               if(_loc20_ || this)
                                                                                                               {
                                                                                                                  §§push(Number(§§pop()));
                                                                                                                  if(!(_loc21_ && _loc3_))
                                                                                                                  {
                                                                                                                     _loc13_ = §§pop();
                                                                                                                     addr328:
                                                                                                                     _loc6_.§%;§().ApplyImpulse(new b2Vec2(_loc12_,_loc13_),new b2Vec2(_loc3_,_loc4_));
                                                                                                                     if(!(_loc21_ && this))
                                                                                                                     {
                                                                                                                        addr344:
                                                                                                                        §§push(_loc10_);
                                                                                                                        §§push(_loc1_.§+@§);
                                                                                                                        if(!(_loc21_ && _loc3_))
                                                                                                                        {
                                                                                                                           if(§§pop() > §§pop())
                                                                                                                           {
                                                                                                                              continue;
                                                                                                                           }
                                                                                                                           addr355:
                                                                                                                           §§push(_loc5_);
                                                                                                                           if(!_loc21_)
                                                                                                                           {
                                                                                                                              addr359:
                                                                                                                              _loc14_ = Number(§§pop());
                                                                                                                              if(_loc20_ || this)
                                                                                                                              {
                                                                                                                                 addr369:
                                                                                                                                 if(_loc10_ > 1)
                                                                                                                                 {
                                                                                                                                    addr370:
                                                                                                                                    §§push(_loc14_);
                                                                                                                                    if(!(_loc21_ && _loc3_))
                                                                                                                                    {
                                                                                                                                       addr379:
                                                                                                                                       §§push(§§pop() / _loc10_);
                                                                                                                                    }
                                                                                                                                    §§goto(addr381);
                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr370);
                                                                                                                           }
                                                                                                                           §§goto(addr381);
                                                                                                                        }
                                                                                                                        §§goto(addr379);
                                                                                                                     }
                                                                                                                     §§goto(addr384);
                                                                                                                  }
                                                                                                                  §§goto(addr359);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr379);
                                                                                                         }
                                                                                                         §§goto(addr298);
                                                                                                      }
                                                                                                      §§goto(addr379);
                                                                                                   }
                                                                                                   §§goto(addr298);
                                                                                                }
                                                                                                §§goto(addr344);
                                                                                             }
                                                                                             §§goto(addr369);
                                                                                          }
                                                                                          §§goto(addr359);
                                                                                       }
                                                                                       §§goto(addr369);
                                                                                    }
                                                                                    §§goto(addr355);
                                                                                 }
                                                                                 §§goto(addr381);
                                                                              }
                                                                              §§goto(addr370);
                                                                           }
                                                                           §§goto(addr344);
                                                                        }
                                                                        §§goto(addr379);
                                                                     }
                                                                     §§goto(addr268);
                                                                  }
                                                                  §§goto(addr355);
                                                               }
                                                               §§goto(addr293);
                                                            }
                                                            §§goto(addr285);
                                                         }
                                                         §§goto(addr192);
                                                      }
                                                      §§goto(addr328);
                                                   }
                                                   §§goto(addr209);
                                                }
                                                §§goto(addr293);
                                             }
                                             §§goto(addr180);
                                          }
                                          §§goto(addr177);
                                       }
                                       §§goto(addr328);
                                    }
                                 }
                                 §§push(this.§7C§);
                                 if(_loc20_)
                                 {
                                    §§push(§§pop().particles);
                                    if(_loc20_ || this)
                                    {
                                       §§push(this.§ o§(_loc1_.type));
                                       if(_loc20_)
                                       {
                                          §§push(§5b§.§?D§);
                                          if(!(_loc21_ && _loc3_))
                                          {
                                             §§push(§2S§.§>t§);
                                             if(_loc20_)
                                             {
                                                §§push(_loc3_);
                                                if(!(_loc21_ && this))
                                                {
                                                   §§push(_loc4_);
                                                   if(!_loc21_)
                                                   {
                                                      §§pop().§ t§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),600,"",§2S§.§%f§,0,0,0,0,1,20,true);
                                                      addr450:
                                                      _loc7_ = 30;
                                                      loop6:
                                                      while(true)
                                                      {
                                                         §§push(_loc7_);
                                                         loop5:
                                                         while(true)
                                                         {
                                                            §§push(150);
                                                            loop4:
                                                            while(true)
                                                            {
                                                               if(§§pop() >= §§pop())
                                                               {
                                                                  continue loop0;
                                                               }
                                                               addr454:
                                                               §§push(0.75);
                                                               while(true)
                                                               {
                                                                  §§push(_loc2_);
                                                                  if(_loc20_ || _loc3_)
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     §§push(Math.random() * _loc2_);
                                                                  }
                                                                  _loc15_ = §§pop() + §§pop();
                                                                  addr470:
                                                                  while(true)
                                                                  {
                                                                     §§push(1250);
                                                                     if(!(_loc20_ || _loc2_))
                                                                     {
                                                                        continue loop5;
                                                                     }
                                                                     §§push(Math.random() * 750);
                                                                     if(_loc20_ || _loc1_)
                                                                     {
                                                                        addr489:
                                                                        §§push(§§pop() + §§pop());
                                                                        if(_loc20_ || _loc3_)
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                           if(_loc20_ || _loc3_)
                                                                           {
                                                                              _loc16_ = §§pop();
                                                                              if(_loc21_)
                                                                              {
                                                                                 continue loop0;
                                                                              }
                                                                              §§push(_loc7_);
                                                                              §§push(180);
                                                                              if(_loc21_ && _loc2_)
                                                                              {
                                                                                 continue loop4;
                                                                              }
                                                                              addr520:
                                                                              §§push(§§pop() / (§§pop() / Math.PI));
                                                                              while(true)
                                                                              {
                                                                                 §§push(Number(§§pop()));
                                                                                 addr522:
                                                                                 while(true)
                                                                                 {
                                                                                    _loc17_ = §§pop();
                                                                                    if(!(_loc20_ || this))
                                                                                    {
                                                                                       continue loop0;
                                                                                    }
                                                                                    §§push(this.§7C§);
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop().particles);
                                                                                       addr533:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§2S§.§!!?§);
                                                                                          addr535:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§5b§.§?D§);
                                                                                             addr537:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§2S§.§9!>§);
                                                                                                addr539:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc3_);
                                                                                                   addr540:
                                                                                                   loop7:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc4_);
                                                                                                      addr541:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc16_);
                                                                                                         §§push("");
                                                                                                         §§push(§2S§.§%f§);
                                                                                                         §§push(_loc15_);
                                                                                                         if(!(_loc21_ && this))
                                                                                                         {
                                                                                                            §§push(§§pop() * Math.cos(_loc17_));
                                                                                                         }
                                                                                                         §§push(_loc15_);
                                                                                                         if(!(_loc21_ && _loc1_))
                                                                                                         {
                                                                                                            §§push(-§§pop());
                                                                                                            if(_loc20_ || _loc1_)
                                                                                                            {
                                                                                                               addr573:
                                                                                                               §§push(§§pop() * Math.sin(_loc17_));
                                                                                                            }
                                                                                                            §§pop().§ t§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),20,0);
                                                                                                            if(_loc20_)
                                                                                                            {
                                                                                                               §§push(_loc7_);
                                                                                                               if(!(_loc21_ && _loc3_))
                                                                                                               {
                                                                                                                  §§push(5);
                                                                                                                  if(_loc20_ || _loc2_)
                                                                                                                  {
                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(int(§§pop()));
                                                                                                                        if(!(_loc21_ && _loc3_))
                                                                                                                        {
                                                                                                                           _loc7_ = §§pop();
                                                                                                                           if(_loc21_)
                                                                                                                           {
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           continue loop6;
                                                                                                                        }
                                                                                                                        continue loop5;
                                                                                                                        §§goto(addr489);
                                                                                                                     }
                                                                                                                     continue loop0;
                                                                                                                     addr609:
                                                                                                                  }
                                                                                                                  continue loop4;
                                                                                                               }
                                                                                                               continue loop5;
                                                                                                            }
                                                                                                            continue loop6;
                                                                                                         }
                                                                                                         §§goto(addr573);
                                                                                                         continue loop7;
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
                                                                           §§goto(addr522);
                                                                        }
                                                                        §§goto(addr609);
                                                                     }
                                                                     §§goto(addr520);
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr541);
                                                }
                                                §§goto(addr540);
                                             }
                                             §§goto(addr539);
                                          }
                                          §§goto(addr537);
                                       }
                                       §§goto(addr535);
                                    }
                                    §§goto(addr533);
                                 }
                                 §§goto(addr532);
                              }
                              §§goto(addr450);
                           }
                           §§goto(addr454);
                        }
                        §§goto(addr521);
                     }
                     §§goto(addr450);
                  }
                  §§goto(addr520);
               }
               §§goto(addr470);
            }
            §§goto(addr522);
         }
      }
      
      protected function § o§(param1:int) : String
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(param1);
         if(!_loc3_)
         {
         }
         switch(§§pop())
         {
         }
         return §2S§.§;n§;
      }
      
      public function §3W§(param1:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:§>2§ = null;
         var _loc3_:* = int(this.§2;§.length - 1);
         while(_loc3_ >= 0)
         {
            _loc2_ = this.§2;§[_loc3_];
            if(!_loc4_)
            {
               §§push(_loc2_.§?!1§());
               if(_loc5_)
               {
                  if(§§pop())
                  {
                     §§push(this.§!G§(_loc2_,param1));
                     if(_loc5_)
                     {
                        if(§§pop())
                        {
                           this.§64§(_loc3_,false,false,false);
                           if(_loc4_)
                           {
                              addr157:
                              §§push(_loc3_);
                              if(!_loc4_)
                              {
                                 §§push(§§pop() - 1);
                              }
                              _loc3_ = §§pop();
                              continue;
                              addr150:
                           }
                           §§goto(addr157);
                        }
                     }
                     else
                     {
                        addr91:
                        if(§§pop())
                        {
                           _loc2_.§+t§(§0r§.§5L§);
                           this.§64§(_loc3_,false,false,false);
                        }
                        else
                        {
                           §§push(_loc2_.isReadyToBeRemoved(param1));
                           if(!_loc4_)
                           {
                              addr108:
                              if(§§pop())
                              {
                                 if(_loc5_ || _loc2_)
                                 {
                                    _loc2_.§+t§(§0r§.§5L§);
                                    if(!(_loc5_ || _loc2_))
                                    {
                                       continue;
                                    }
                                    this.§64§(_loc3_,false,true,true);
                                    if(!(_loc5_ || _loc2_))
                                    {
                                       continue;
                                    }
                                    §§goto(addr150);
                                 }
                                 §§goto(addr157);
                              }
                              else
                              {
                                 §§push(_loc2_.§-`§());
                              }
                              §§goto(addr157);
                           }
                           addr153:
                           if(§§pop())
                           {
                              addr154:
                              _loc2_.update(param1);
                           }
                        }
                     }
                     §§goto(addr157);
                  }
                  else
                  {
                     §§push(_loc2_.§1!F§());
                     if(_loc5_ || _loc3_)
                     {
                        if(§§pop())
                        {
                           if(!_loc4_)
                           {
                              this.§;!0§(_loc2_,param1);
                              if(!_loc5_)
                              {
                              }
                           }
                           §§goto(addr157);
                        }
                        else
                        {
                           §§push(this.§0g§(_loc2_));
                           if(!_loc4_)
                           {
                              §§goto(addr91);
                           }
                           §§goto(addr153);
                        }
                     }
                  }
                  §§goto(addr108);
               }
               §§goto(addr91);
            }
            §§goto(addr154);
         }
         if(_loc5_ || _loc3_)
         {
            this.§'p§();
         }
      }
      
      private function § !§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§@Q§ = null;
         for each(_loc1_ in this.§-!C§)
         {
            if(!(_loc5_ && _loc1_))
            {
               this.§7C§.§-K§.§[N§.DestroyJoint(_loc1_.§1-§);
            }
         }
      }
      
      public function § l§() : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§>2§ = null;
         var _loc1_:int = 0;
         while(true)
         {
            if(_loc1_ >= this.§2;§.length)
            {
               return false;
            }
            _loc2_ = this.§2;§[_loc1_];
            if(_loc4_ && _loc2_)
            {
               addr64:
               break;
            }
            §§push(_loc2_.explode());
            if(_loc4_)
            {
               return §§pop();
            }
            if(§§pop())
            {
               if(!_loc4_)
               {
                  break;
               }
            }
            _loc1_++;
         }
         §§goto(addr64);
         §§push(true);
      }
      
      public function §0g§(param1:§>2§) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(Boolean(param1));
            §§push(Boolean(param1));
            if(!(_loc2_ && param1))
            {
               if(§§pop())
               {
                  §§pop();
                  if(!(_loc2_ && param1))
                  {
                     §§push(param1.§0§.§+!9§() == §7g§.§0!!§);
                     if(_loc3_)
                     {
                        addr60:
                        §§push(Boolean(!§§pop()));
                        if(Boolean(!§§pop()))
                        {
                           addr62:
                           §§pop();
                           if(_loc3_)
                           {
                              §§push(Boolean(this.§7C§.§`,§.§'J§(param1.§%;§().GetPosition().x,param1.§%;§().GetPosition().y)));
                              if(_loc3_ || this)
                              {
                                 addr95:
                                 if(§§pop())
                                 {
                                    if(_loc3_ || this)
                                    {
                                       addr103:
                                       §§push(true);
                                       if(!(_loc2_ && param1))
                                       {
                                          return §§pop();
                                       }
                                       §§goto(addr113);
                                    }
                                    §§goto(addr113);
                                 }
                                 §§push(false);
                              }
                              addr113:
                              return §§pop();
                           }
                           §§goto(addr103);
                        }
                        §§goto(addr95);
                     }
                     §§goto(addr62);
                  }
                  §§goto(addr103);
               }
            }
            §§goto(addr60);
         }
         §§goto(addr103);
      }
      
      public function §64§(param1:int, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc6_:§@Q§ = null;
         var _loc7_:§,r§ = null;
         if(_loc12_)
         {
            if(param1 < 0)
            {
               if(_loc12_ || param1)
               {
                  return;
               }
            }
         }
         var _loc5_:§>2§;
         §§push((_loc5_ = this.§2;§[param1]).§`U§());
         if(!_loc13_)
         {
            if(§§pop())
            {
               if(_loc12_)
               {
                  var _loc8_:*;
                  §§push((_loc8_ = this).§<!D§);
                  if(!(_loc13_ && param1))
                  {
                     §§push(§§pop() + 1);
                  }
                  var _loc9_:* = §§pop();
                  if(!(_loc13_ && param2))
                  {
                     _loc8_.§<!D§ = _loc9_;
                  }
                  addr111:
                  if(_loc5_ == this.§7C§.activeObject)
                  {
                     if(_loc12_)
                     {
                        §§push(this.§7C§);
                        if(!(_loc13_ && this))
                        {
                           §§pop().activeObject = null;
                           if(_loc12_ || this)
                           {
                              addr136:
                              §§push(param2);
                              if(_loc12_)
                              {
                                 if(§§pop())
                                 {
                                    if(_loc12_ || param3)
                                    {
                                       addr149:
                                       §§push(this.§7C§);
                                       §§push(_loc5_.§0§.score);
                                       §§push(§0]§.§@Z§);
                                       §§push(true);
                                       §§push(_loc5_.§%;§().GetPosition().x);
                                       §§push(_loc5_.§%;§().GetPosition().y);
                                       if(!(_loc13_ && param1))
                                       {
                                          §§push(3);
                                          if(_loc12_ || param3)
                                          {
                                             addr179:
                                             §§push(§§pop() - §§pop());
                                             §§push(§2S§.§`!0§(_loc5_.§'!,§));
                                          }
                                          §§pop().addScore(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
                                          addr184:
                                          §§push(param3);
                                          if(!(_loc13_ && this))
                                          {
                                             addr192:
                                             if(§§pop())
                                             {
                                                this.addDestructionParticles(_loc5_,this.§7C§.particles);
                                                addr209:
                                                §§push(param4);
                                                if(!(_loc13_ && param3))
                                                {
                                                   addr217:
                                                   if(§§pop())
                                                   {
                                                      this.checkExplosions(_loc5_);
                                                   }
                                                   addr223:
                                                   if(_loc5_.isTexture())
                                                   {
                                                      if(_loc13_ && param3)
                                                      {
                                                      }
                                                      addr237:
                                                      this.§"-§(_loc5_);
                                                      _loc8_ = 0;
                                                      _loc9_ = this.§-!C§;
                                                      loop0:
                                                      while(true)
                                                      {
                                                         §§push(§§hasnext(_loc9_,_loc8_));
                                                         if(!(_loc13_ && this))
                                                         {
                                                            if(§§pop())
                                                            {
                                                               _loc6_ = §§nextvalue(_loc8_,_loc9_);
                                                               if(_loc6_.index1 >= param1)
                                                               {
                                                                  if(_loc12_)
                                                                  {
                                                                     var _loc10_:*;
                                                                     var _loc11_:* = (_loc10_ = _loc6_).index1 - 1;
                                                                     if(_loc12_)
                                                                     {
                                                                        _loc10_.index1 = _loc11_;
                                                                     }
                                                                     if(!_loc12_)
                                                                     {
                                                                        continue;
                                                                     }
                                                                  }
                                                               }
                                                               if(_loc6_.index2 >= param1)
                                                               {
                                                                  if(_loc12_ || this)
                                                                  {
                                                                     _loc11_ = (_loc10_ = _loc6_).index2 - 1;
                                                                     if(!_loc13_)
                                                                     {
                                                                        _loc10_.index2 = _loc11_;
                                                                     }
                                                                  }
                                                               }
                                                               continue;
                                                            }
                                                            if(!(_loc13_ && param1))
                                                            {
                                                               if(!_loc13_)
                                                               {
                                                                  if(_loc12_)
                                                                  {
                                                                     _loc8_ = 0;
                                                                     if(!_loc13_)
                                                                     {
                                                                        addr324:
                                                                        _loc9_ = this.§9!4§;
                                                                        while(true)
                                                                        {
                                                                           §§push(§§hasnext(_loc9_,_loc8_));
                                                                           break loop0;
                                                                        }
                                                                        addr401:
                                                                     }
                                                                     if(_loc12_)
                                                                     {
                                                                        _loc5_.dispose();
                                                                     }
                                                                  }
                                                                  _loc5_ = null;
                                                                  if(_loc12_)
                                                                  {
                                                                     this.§2;§[param1] = null;
                                                                     if(_loc12_)
                                                                     {
                                                                        this.§2;§.splice(param1,1);
                                                                     }
                                                                  }
                                                                  return;
                                                               }
                                                            }
                                                            §§goto(addr324);
                                                         }
                                                         break;
                                                      }
                                                      while(true)
                                                      {
                                                         if(!§§pop())
                                                         {
                                                            §§goto(addr324);
                                                         }
                                                         else
                                                         {
                                                            _loc7_ = §§nextvalue(_loc8_,_loc9_);
                                                            §§push(_loc7_.id1);
                                                            if(_loc12_)
                                                            {
                                                               §§push(param1);
                                                               if(_loc12_ || param3)
                                                               {
                                                                  if(§§pop() == §§pop())
                                                                  {
                                                                     if(!(_loc13_ && param3))
                                                                     {
                                                                        _loc7_.§8!A§ = true;
                                                                        if(!_loc13_)
                                                                        {
                                                                           addr360:
                                                                           if(_loc7_.id1 < param1)
                                                                           {
                                                                              continue;
                                                                           }
                                                                           if(_loc13_ && param2)
                                                                           {
                                                                              continue;
                                                                           }
                                                                        }
                                                                        §§push((_loc10_ = _loc7_).id1);
                                                                        if(_loc12_)
                                                                        {
                                                                           §§push(§§pop() - 1);
                                                                        }
                                                                        _loc11_ = §§pop();
                                                                        if(_loc12_ || param1)
                                                                        {
                                                                           _loc10_.id1 = _loc11_;
                                                                        }
                                                                     }
                                                                     continue;
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr360);
                                                         }
                                                      }
                                                   }
                                                   this.§0!#§(_loc5_.sprite);
                                                   if(!_loc12_)
                                                   {
                                                   }
                                                   §§goto(addr237);
                                                }
                                                §§goto(addr223);
                                                addr193:
                                             }
                                             §§goto(addr209);
                                          }
                                          §§goto(addr217);
                                       }
                                       §§goto(addr179);
                                    }
                                    §§goto(addr193);
                                 }
                                 §§goto(addr184);
                              }
                              §§goto(addr217);
                           }
                           §§goto(addr237);
                        }
                     }
                     §§goto(addr149);
                  }
                  §§goto(addr136);
               }
               §§goto(addr209);
            }
            else
            {
               §§push(_loc5_.§-`§());
               if(!_loc13_)
               {
                  if(§§pop())
                  {
                     if(!(_loc13_ && this))
                     {
                        §§push((_loc8_ = this).§2s§);
                        if(!(_loc13_ && param3))
                        {
                           §§push(§§pop() - 1);
                        }
                        _loc9_ = §§pop();
                        if(!(_loc13_ && this))
                        {
                           _loc8_.§2s§ = _loc9_;
                        }
                        §§goto(addr111);
                     }
                     §§goto(addr209);
                  }
                  §§goto(addr111);
               }
            }
            §§goto(addr192);
         }
         §§goto(addr217);
      }
      
      protected function addDestructionParticles(param1:§>2§, param2:§5b§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            param1.addDestructionParticles(param2);
         }
      }
      
      private function §0!#§(param1:Sprite) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.§2A§);
            if(!_loc3_)
            {
               if(§§pop().contains(param1))
               {
                  addr27:
                  this.§2A§.removeChild(param1);
                  if(!_loc3_)
                  {
                     return;
                  }
               }
               else
               {
                  addr32:
                  §§push(this.§72§);
                  if(_loc2_ || this)
                  {
                     if(§§pop().contains(param1))
                     {
                        if(!(_loc3_ && _loc3_))
                        {
                           addr63:
                           this.§72§.removeChild(param1);
                           if(!_loc3_)
                           {
                              return;
                           }
                        }
                        else
                        {
                           §§goto(addr104);
                        }
                     }
                     else
                     {
                        §§push(this.§&V§);
                        if(_loc2_ || _loc3_)
                        {
                           if(§§pop().contains(param1))
                           {
                              if(!_loc3_)
                              {
                                 §§goto(addr101);
                              }
                              else
                              {
                                 §§goto(addr111);
                              }
                           }
                           else
                           {
                              addr104:
                              §§goto(addr113);
                           }
                           addr113:
                           §§push(this.§;l§);
                           if(_loc2_)
                           {
                              if(§§pop().contains(param1))
                              {
                                 addr111:
                                 §§push(this.§;l§);
                              }
                              else
                              {
                                 return;
                              }
                           }
                           §§pop().removeChild(param1);
                           return;
                        }
                        §§goto(addr101);
                     }
                     addr101:
                     this.§&V§.removeChild(param1);
                     return;
                  }
                  §§goto(addr63);
               }
               §§goto(addr104);
            }
            §§goto(addr27);
         }
         §§goto(addr32);
      }
      
      protected function checkExplosions(param1:§>2§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            §§push(param1.§&!C§());
            if(_loc2_ || _loc2_)
            {
               §§push(§§pop().toUpperCase() == "WHITE_EGG");
               if(!(_loc3_ && this))
               {
                  if(!§§pop())
                  {
                     if(_loc2_)
                     {
                        addr56:
                        §§pop();
                        if(_loc2_)
                        {
                           §§push(param1.§],§());
                           if(_loc2_ || _loc3_)
                           {
                           }
                           §§goto(addr69);
                        }
                        §§goto(addr77);
                     }
                  }
                  addr69:
                  if(§§pop())
                  {
                     if(!(_loc3_ && _loc2_))
                     {
                        addr77:
                        if(param1.§'!,§.toUpperCase() == §<5§.§9G§)
                        {
                           if(!_loc2_)
                           {
                           }
                        }
                        else
                        {
                           this.addExplosions(§5V§.§?7§,param1.§%;§().GetPosition().x,param1.§%;§().GetPosition().y);
                        }
                        §§goto(addr122);
                     }
                     this.addExplosions(§5V§.§^!4§,param1.§%;§().GetPosition().x,param1.§%;§().GetPosition().y);
                     if(!_loc2_)
                     {
                     }
                  }
                  §§goto(addr122);
               }
               §§goto(addr56);
            }
            §§goto(addr77);
         }
         addr122:
      }
      
      public function §>!"§(param1:Object, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && param3))
         {
            this.§64§(this.§2;§.indexOf(param1),param2,param3,param4);
         }
      }
      
      public function §^-§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §§push(this.§`8§);
            if(!(_loc4_ && param1))
            {
               §§push(param1);
               if(!_loc4_)
               {
                  §§push(-§§pop());
                  if(_loc3_ || param2)
                  {
                     §§pop().x = §§pop();
                     if(_loc3_)
                     {
                        addr63:
                        §§push(this.§`8§);
                        §§push(param2);
                        if(!(_loc4_ && _loc3_))
                        {
                           addr71:
                           §§push(-§§pop());
                        }
                        §§pop().y = §§pop();
                        §§goto(addr73);
                     }
                     addr73:
                     return;
                  }
               }
               §§goto(addr71);
            }
         }
         §§goto(addr63);
      }
      
      public function isPigsAlive(param1:Boolean = false) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§>2§ = null;
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= this.§2;§.length)
            {
               return false;
            }
            _loc3_ = this.§2;§[_loc2_] as §>2§;
            if(_loc5_)
            {
               §§push(Boolean(_loc3_));
               if(_loc5_)
               {
                  §§push(§§pop());
                  if(!_loc4_)
                  {
                     if(§§pop())
                     {
                        if(_loc5_)
                        {
                           §§pop();
                           addr46:
                           §§push(_loc3_.§`U§());
                           if(!_loc4_)
                           {
                              §§push(Boolean(§§pop()));
                              if(!(_loc4_ && _loc2_))
                              {
                                 addr59:
                                 §§push(§§pop());
                                 if(_loc5_ || this)
                                 {
                                    if(§§pop())
                                    {
                                       if(_loc5_)
                                       {
                                          §§pop();
                                          if(_loc5_ || param1)
                                          {
                                             §§push(_loc3_.§4!;§);
                                             if(_loc5_)
                                             {
                                                §§push(0);
                                                if(!(_loc4_ && _loc3_))
                                                {
                                                   §§push(§§pop() > §§pop());
                                                   if(!(_loc4_ && _loc3_))
                                                   {
                                                      addr108:
                                                      if(§§pop())
                                                      {
                                                         §§goto(addr110);
                                                      }
                                                      §§goto(addr171);
                                                   }
                                                   §§goto(addr110);
                                                }
                                                §§goto(addr150);
                                             }
                                             §§goto(addr132);
                                          }
                                          break;
                                       }
                                       §§goto(addr113);
                                    }
                                    §§goto(addr108);
                                 }
                                 §§goto(addr116);
                              }
                              addr110:
                              §§push(!param1);
                              if(!_loc4_)
                              {
                                 addr113:
                                 §§push(§§pop());
                                 if(!_loc4_)
                                 {
                                    addr116:
                                    if(!§§pop())
                                    {
                                       §§pop();
                                       if(!_loc5_)
                                       {
                                          continue;
                                       }
                                       §§push(_loc3_.§2!@§);
                                       if(_loc5_)
                                       {
                                          §§push(§§pop().mTryToBlink);
                                          if(!(_loc4_ && param1))
                                          {
                                             addr132:
                                             §§push(0);
                                             if(_loc5_ || this)
                                             {
                                                addr150:
                                                §§push(§§pop() <= §§pop());
                                                if(!_loc4_)
                                                {
                                                   addr154:
                                                   addr153:
                                                   if(§§pop())
                                                   {
                                                      if(_loc4_ && _loc3_)
                                                      {
                                                      }
                                                      §§goto(addr170);
                                                   }
                                                   addr168:
                                                   if(§§pop())
                                                   {
                                                      break;
                                                   }
                                                   addr171:
                                                   _loc2_++;
                                                   continue;
                                                }
                                                §§pop();
                                                addr166:
                                                §§push(_loc3_.§2!@§.mTryToScream);
                                                §§push(0);
                                             }
                                             §§goto(addr168);
                                             §§push(§§pop() <= §§pop());
                                          }
                                       }
                                       §§goto(addr166);
                                    }
                                    §§goto(addr168);
                                 }
                                 §§goto(addr154);
                              }
                              §§goto(addr170);
                           }
                           §§goto(addr153);
                        }
                     }
                     §§goto(addr59);
                  }
                  §§goto(addr154);
               }
               §§goto(addr108);
            }
            §§goto(addr46);
         }
         addr170:
         true;
         return §§pop();
      }
      
      public function §0N§(param1:Boolean = false) : int
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:§>2§ = null;
         var _loc2_:int = 0;
         var _loc3_:* = int(this.§2;§.length - 1);
         while(true)
         {
            §§push(_loc3_);
            if(!(_loc5_ && this))
            {
               if(§§pop() < 0)
               {
                  §§push(_loc2_);
                  break;
               }
               §§push(Boolean(_loc4_ = this.§2;§[_loc3_] as §>2§));
               if(!(_loc5_ && _loc3_))
               {
                  §§push(§§pop());
                  if(_loc6_ || _loc2_)
                  {
                     if(§§pop())
                     {
                        if(!_loc5_)
                        {
                           §§pop();
                           §§push(_loc4_.§`U§());
                           if(!(_loc5_ && param1))
                           {
                              addr71:
                              §§push(Boolean(§§pop()));
                              §§push(Boolean(§§pop()));
                              if(!_loc5_)
                              {
                                 if(§§pop())
                                 {
                                    if(_loc6_)
                                    {
                                       §§pop();
                                       if(_loc6_)
                                       {
                                          §§push(_loc4_.§4!;§);
                                          if(!_loc5_)
                                          {
                                             §§push(0);
                                             if(!(_loc5_ && _loc3_))
                                             {
                                                §§push(§§pop() > §§pop());
                                                if(_loc6_ || param1)
                                                {
                                                   addr110:
                                                   if(§§pop())
                                                   {
                                                      if(_loc6_)
                                                      {
                                                         addr115:
                                                         §§push(!param1);
                                                         §§push(!param1);
                                                         if(!(_loc5_ && this))
                                                         {
                                                            if(!§§pop())
                                                            {
                                                               if(_loc6_ || param1)
                                                               {
                                                                  §§pop();
                                                                  if(_loc6_ || this)
                                                                  {
                                                                     §§push(_loc4_.§2!@§);
                                                                     if(_loc6_)
                                                                     {
                                                                        addr183:
                                                                        §§push(§§pop().mTryToBlink);
                                                                        if(!(_loc5_ && this))
                                                                        {
                                                                           §§push(0);
                                                                           if(!(_loc5_ && _loc3_))
                                                                           {
                                                                              addr161:
                                                                              §§push(§§pop() <= §§pop());
                                                                              if(§§pop() <= §§pop())
                                                                              {
                                                                                 addr185:
                                                                                 if(!(_loc5_ && this))
                                                                                 {
                                                                                    addr169:
                                                                                    §§pop();
                                                                                    §§push(_loc4_.§2!@§);
                                                                                 }
                                                                                 if(§§pop())
                                                                                 {
                                                                                    addr186:
                                                                                    _loc2_++;
                                                                                    if(!(_loc5_ && _loc3_))
                                                                                    {
                                                                                       addr194:
                                                                                       §§push(_loc3_);
                                                                                       if(_loc6_)
                                                                                       {
                                                                                          §§push(§§pop() - 1);
                                                                                       }
                                                                                       _loc3_ = §§pop();
                                                                                    }
                                                                                    continue;
                                                                                 }
                                                                                 §§goto(addr194);
                                                                              }
                                                                              §§goto(addr185);
                                                                           }
                                                                           addr184:
                                                                           §§goto(addr185);
                                                                           §§push(§§pop() <= §§pop());
                                                                        }
                                                                        §§goto(addr184);
                                                                        §§push(0);
                                                                     }
                                                                     §§goto(addr183);
                                                                     §§push(§§pop().mTryToScream);
                                                                  }
                                                                  §§goto(addr186);
                                                               }
                                                               §§goto(addr169);
                                                            }
                                                            §§goto(addr185);
                                                         }
                                                         §§goto(addr161);
                                                      }
                                                   }
                                                   §§goto(addr194);
                                                }
                                                §§goto(addr115);
                                             }
                                             §§goto(addr184);
                                          }
                                          §§goto(addr183);
                                       }
                                       §§goto(addr169);
                                    }
                                    §§goto(addr185);
                                 }
                                 §§goto(addr110);
                              }
                              §§goto(addr161);
                           }
                           §§goto(addr115);
                        }
                        §§goto(addr169);
                     }
                     §§goto(addr71);
                  }
                  §§goto(addr161);
               }
               §§goto(addr185);
            }
            break;
         }
         return §§pop();
      }
      
      public function §,<§() : int
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§>2§ = null;
         var _loc1_:int = 0;
         var _loc3_:int = 0;
         for each(_loc2_ in this.§2;§)
         {
            if(_loc5_ || this)
            {
               §§push(Boolean(_loc2_));
               §§push(Boolean(_loc2_));
               if(!_loc6_)
               {
                  if(§§pop())
                  {
                     §§pop();
                     if(!(_loc5_ || _loc3_))
                     {
                        continue;
                     }
                     addr75:
                     §§push(_loc2_.§=H§());
                     if(!_loc6_)
                     {
                        addr81:
                        §§push(Boolean(§§pop()));
                        if(Boolean(§§pop()))
                        {
                        }
                        addr93:
                        if(§§pop())
                        {
                           if(!_loc6_)
                           {
                              addr96:
                              _loc1_++;
                           }
                        }
                        continue;
                     }
                     §§pop();
                     if(!(_loc6_ && this))
                     {
                        §§goto(addr93);
                        §§push(Boolean(_loc2_.§6S§()));
                     }
                     §§goto(addr96);
                  }
                  §§goto(addr93);
               }
               §§goto(addr81);
            }
            §§goto(addr75);
         }
         return _loc1_;
      }
      
      public function §6A§() : int
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§>2§ = null;
         var _loc1_:int = 0;
         var _loc3_:int = 0;
         for each(_loc2_ in this.§2;§)
         {
            if(!(_loc5_ && this))
            {
               §§push(Boolean(_loc2_));
               if(_loc6_ || this)
               {
                  if(§§pop())
                  {
                     if(!(_loc5_ && this))
                     {
                        §§pop();
                        if(_loc6_)
                        {
                           addr83:
                           §§push(_loc2_.isTexture());
                           if(!(_loc5_ && _loc1_))
                           {
                              addr93:
                              if(!§§pop())
                              {
                                 continue;
                              }
                              if(_loc5_ && _loc3_)
                              {
                                 continue;
                              }
                           }
                           §§goto(addr93);
                        }
                        _loc1_++;
                        continue;
                     }
                  }
               }
               §§goto(addr93);
            }
            §§goto(addr83);
         }
         return _loc1_;
      }
      
      public function makePigsSmile(param1:Number = 1) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§>2§ = null;
         var _loc2_:* = int(this.§2;§.length - 1);
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§2;§[_loc2_];
            if(!(_loc5_ && _loc2_))
            {
               §§push(Boolean(_loc3_));
               if(_loc4_ || _loc2_)
               {
                  §§push(§§pop());
                  if(_loc4_)
                  {
                     if(§§pop())
                     {
                        if(!_loc5_)
                        {
                           §§pop();
                           if(_loc4_)
                           {
                              addr69:
                              §§push(_loc3_.§`U§());
                              if(!(_loc5_ && _loc3_))
                              {
                                 addr78:
                                 §§push(Boolean(§§pop()));
                                 if(_loc4_)
                                 {
                                    addr82:
                                    if(§§pop())
                                    {
                                       if(_loc5_)
                                       {
                                       }
                                       addr98:
                                       if(§§pop())
                                       {
                                          if(!(_loc5_ && this))
                                          {
                                             addr116:
                                             §§push(_loc3_.§2!@§);
                                             §§push(§1c§.§1!6§);
                                             if(_loc4_ || this)
                                             {
                                                §§push(§§pop() * param1);
                                             }
                                             §§pop().mTryToScream = §§pop();
                                             if(_loc5_ && _loc2_)
                                             {
                                                continue;
                                             }
                                          }
                                       }
                                       §§push(_loc2_);
                                       if(!_loc5_)
                                       {
                                          §§push(§§pop() - 1);
                                       }
                                       _loc2_ = §§pop();
                                       continue;
                                    }
                                    §§goto(addr98);
                                 }
                              }
                              §§pop();
                              if(_loc4_ || param1)
                              {
                                 §§goto(addr98);
                                 §§push(_loc3_.§4!;§ > 0);
                              }
                              §§goto(addr98);
                           }
                           §§goto(addr116);
                        }
                        §§goto(addr98);
                     }
                  }
                  §§goto(addr82);
               }
               §§goto(addr78);
            }
            §§goto(addr69);
         }
      }
      
      public function § 6§() : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§>2§ = null;
         var _loc1_:* = int(this.§2;§.length - 1);
         while(true)
         {
            if(_loc1_ < 0)
            {
               return false;
            }
            _loc2_ = this.§2;§[_loc1_] as §>2§;
            if(_loc4_ || _loc3_)
            {
               §§push(Boolean(_loc2_));
               if(!_loc3_)
               {
                  §§push(§§pop());
                  if(_loc4_)
                  {
                     if(§§pop())
                     {
                        §§pop();
                        if(!(_loc3_ && this))
                        {
                           §§push(_loc2_.§-`§());
                           if(!(_loc3_ && _loc3_))
                           {
                              §§push(Boolean(§§pop()));
                              if(_loc4_ || _loc2_)
                              {
                                 addr98:
                                 addr99:
                                 if(§§pop())
                                 {
                                    addr100:
                                    §§pop();
                                    if(!_loc3_)
                                    {
                                       §§push(_loc2_.§4!;§ > 0);
                                       if(_loc3_)
                                       {
                                       }
                                       §§goto(addr113);
                                    }
                                    continue;
                                 }
                                 if(§§pop())
                                 {
                                    if(_loc4_)
                                    {
                                       break;
                                    }
                                    addr116:
                                    §§push(_loc1_);
                                    if(_loc4_)
                                    {
                                       §§push(§§pop() - 1);
                                    }
                                    _loc1_ = §§pop();
                                    continue;
                                 }
                                 §§goto(addr116);
                              }
                              §§goto(addr113);
                           }
                           §§goto(addr100);
                        }
                        §§goto(addr116);
                     }
                     §§goto(addr98);
                  }
                  §§goto(addr99);
               }
               §§goto(addr100);
            }
            break;
         }
         addr113:
         true;
         return §§pop();
      }
      
      public function isWorldAtSleep() : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§>2§ = null;
         var _loc1_:* = int(this.§2;§.length - 1);
         while(true)
         {
            if(_loc1_ < 0)
            {
               return true;
            }
            _loc2_ = this.§2;§[_loc1_] as §>2§;
            §§push(Boolean(_loc2_));
            §§push(Boolean(_loc2_));
            if(_loc4_ || _loc3_)
            {
               if(§§pop())
               {
                  §§pop();
                  §§push(_loc2_.§4!;§);
                  if(!(_loc3_ && _loc1_))
                  {
                     §§push(0);
                     if(!(_loc3_ && _loc2_))
                     {
                        addr69:
                        §§push(Boolean(§§pop() > §§pop()));
                        §§push(Boolean(§§pop() > §§pop()));
                        if(!(_loc3_ && _loc1_))
                        {
                           if(§§pop())
                           {
                              §§pop();
                              §§push(_loc2_.§'F§);
                              if(!(_loc3_ && this))
                              {
                                 §§push(§§pop() == §+i§.§!!@§);
                                 if(!(_loc3_ && _loc1_))
                                 {
                                    §§push(!§§pop());
                                    if(_loc4_)
                                    {
                                       addr111:
                                       if(§§pop())
                                       {
                                          if(_loc3_ && _loc1_)
                                          {
                                             continue;
                                          }
                                          §§push(Boolean(_loc2_.§<!0§()));
                                          §§push(Boolean(_loc2_.§<!0§()));
                                          if(!_loc3_)
                                          {
                                             addr125:
                                             if(§§pop())
                                             {
                                                §§pop();
                                                if(!_loc3_)
                                                {
                                                   §§push(!_loc2_.§0!@§());
                                                   if(_loc4_)
                                                   {
                                                      addr134:
                                                      if(§§pop())
                                                      {
                                                         addr135:
                                                         §§push(false);
                                                         if(_loc4_)
                                                         {
                                                            break;
                                                         }
                                                         addr143:
                                                         §§push(Boolean(§§pop()));
                                                         if(!_loc3_)
                                                         {
                                                            addr146:
                                                            if(§§pop())
                                                            {
                                                               if(!(_loc3_ && _loc3_))
                                                               {
                                                                  addr165:
                                                                  §§pop();
                                                                  addr170:
                                                                  if(_loc2_.§4!;§ > 0)
                                                                  {
                                                                     if(!_loc3_)
                                                                     {
                                                                        §§push(false);
                                                                     }
                                                                     else
                                                                     {
                                                                        addr177:
                                                                        §§push(_loc1_);
                                                                        if(!_loc3_)
                                                                        {
                                                                           addr181:
                                                                           _loc1_ = §§pop() - 1;
                                                                           continue;
                                                                        }
                                                                        §§goto(addr181);
                                                                     }
                                                                  }
                                                                  §§goto(addr177);
                                                               }
                                                               return §§pop();
                                                            }
                                                         }
                                                         §§goto(addr170);
                                                      }
                                                      else
                                                      {
                                                         §§push(_loc2_.§-`§());
                                                         if(!_loc3_)
                                                         {
                                                            §§goto(addr143);
                                                         }
                                                      }
                                                      §§goto(addr165);
                                                   }
                                                   §§goto(addr146);
                                                }
                                                §§goto(addr135);
                                             }
                                             §§goto(addr134);
                                          }
                                          §§goto(addr146);
                                       }
                                       §§goto(addr177);
                                    }
                                    §§goto(addr134);
                                 }
                                 break;
                              }
                              §§goto(addr181);
                           }
                           §§goto(addr111);
                        }
                        §§goto(addr125);
                     }
                  }
                  §§goto(addr165);
               }
               §§goto(addr69);
            }
            §§goto(addr146);
         }
         return §§pop();
      }
      
      public function §import§(param1:Boolean = false) : §>2§
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc5_:* = 0;
         var _loc6_:§>2§ = null;
         if(_loc8_ || _loc3_)
         {
            if(!this.isPigsAlive())
            {
               if(_loc8_ || _loc3_)
               {
                  return null;
               }
            }
         }
         var _loc2_:int = this.§2;§.length;
         §§push(1);
         if(_loc8_)
         {
            §§push(int(§§pop() + Math.random() * this.§0N§(param1)));
         }
         var _loc3_:* = §§pop();
         var _loc4_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc4_);
            loop1:
            while(true)
            {
               §§push(_loc3_);
               loop2:
               while(§§pop() < §§pop())
               {
                  §§push(0);
                  if(_loc7_)
                  {
                     while(true)
                     {
                        §§push(_loc2_);
                        if(_loc7_)
                        {
                           continue loop2;
                        }
                        if(§§pop() >= §§pop())
                        {
                           continue loop0;
                        }
                        §§push(Boolean(_loc6_ = this.§2;§[_loc5_]));
                        §§push(Boolean(_loc6_ = this.§2;§[_loc5_]));
                        if(_loc8_ || param1)
                        {
                           if(§§pop())
                           {
                              if(_loc8_)
                              {
                                 §§pop();
                                 §§push(Boolean(_loc6_.§`U§()));
                                 if(!(_loc7_ && _loc3_))
                                 {
                                    addr117:
                                    §§push(§§pop());
                                    if(!_loc7_)
                                    {
                                       addr120:
                                       if(§§pop())
                                       {
                                          if(_loc8_)
                                          {
                                             addr123:
                                             §§pop();
                                             §§push(_loc6_.§4!;§);
                                             if(!_loc7_)
                                             {
                                                §§push(0);
                                                if(_loc8_)
                                                {
                                                   addr132:
                                                   if(§§pop() > §§pop())
                                                   {
                                                      if(!_loc7_)
                                                      {
                                                         §§push(param1);
                                                         if(_loc8_ || _loc2_)
                                                         {
                                                            addr143:
                                                            §§push(!§§pop());
                                                            §§push(!§§pop());
                                                            if(!(_loc7_ && param1))
                                                            {
                                                               if(!§§pop())
                                                               {
                                                                  addr153:
                                                                  §§pop();
                                                                  §§push(_loc6_.§2!@§);
                                                                  if(!_loc7_)
                                                                  {
                                                                     §§push(§§pop().mTryToBlink);
                                                                     if(_loc8_ || _loc2_)
                                                                     {
                                                                        §§push(0);
                                                                        if(_loc8_ || param1)
                                                                        {
                                                                           addr176:
                                                                           §§push(§§pop() <= §§pop());
                                                                           if(§§pop() <= §§pop())
                                                                           {
                                                                              §§pop();
                                                                              if(!_loc7_)
                                                                              {
                                                                                 addr185:
                                                                                 if(_loc6_.§2!@§.mTryToScream <= 0)
                                                                                 {
                                                                                    _loc4_++;
                                                                                    if(!(_loc7_ && param1))
                                                                                    {
                                                                                       if(_loc4_ >= _loc3_)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr209);
                                                                              }
                                                                              break;
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr185);
                                                            }
                                                            §§goto(addr176);
                                                         }
                                                         §§goto(addr153);
                                                      }
                                                      §§goto(addr185);
                                                   }
                                                   §§goto(addr209);
                                                }
                                                §§goto(addr176);
                                             }
                                             §§goto(addr185);
                                          }
                                          §§goto(addr143);
                                       }
                                       §§goto(addr132);
                                    }
                                    §§goto(addr176);
                                 }
                                 §§goto(addr143);
                              }
                              §§goto(addr123);
                           }
                           §§goto(addr117);
                        }
                        §§goto(addr120);
                     }
                     return _loc6_;
                  }
                  _loc5_ = §§pop();
                  if(!(_loc8_ || param1))
                  {
                     break;
                  }
                  while(true)
                  {
                     §§push(_loc5_);
                     if(_loc7_ && this)
                     {
                        break;
                     }
                     addr209:
                     _loc5_++;
                  }
                  continue loop1;
               }
               addr232:
               return null;
            }
         }
      }
      
      public function §,!%§() : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:* = 0;
         var _loc2_:* = int(this.§2;§.length - 1);
         loop0:
         while(true)
         {
            §§push(_loc2_);
            if(!(_loc3_ && _loc2_))
            {
               §§push(0);
               if(!_loc3_)
               {
                  while(true)
                  {
                     if(§§pop() >= §§pop())
                     {
                        §§push(_loc1_);
                        if(_loc4_)
                        {
                           §§push((this.§2;§[_loc2_] as §>2§).§0§.score);
                           if(_loc3_ && _loc3_)
                           {
                              continue;
                           }
                           §§push(§§pop() + §§pop());
                           if(_loc4_ || _loc3_)
                           {
                              _loc1_ = int(§§pop());
                              if(_loc3_)
                              {
                                 continue loop0;
                              }
                              if((this.§2;§[_loc2_] as §>2§).§<!0§())
                              {
                                 if(_loc4_)
                                 {
                                    §§push(_loc1_);
                                    §§push(§#;§.§?!B§.getValue());
                                    if(_loc3_ && _loc2_)
                                    {
                                       continue;
                                    }
                                    §§push(§§pop() + §§pop() * int((this.§2;§[_loc2_] as §>2§).§8!,§));
                                    if(_loc4_)
                                    {
                                       addr101:
                                       _loc1_ = int(§§pop());
                                       if(!(_loc3_ && _loc1_))
                                       {
                                          addr110:
                                          §§push(_loc2_);
                                          if(_loc4_)
                                          {
                                             _loc2_ = §§pop() - 1;
                                             if(_loc4_ || _loc1_)
                                             {
                                                continue loop0;
                                             }
                                             §§goto(addr151);
                                          }
                                          §§goto(addr160);
                                       }
                                       addr160:
                                       return §§pop();
                                       §§push(_loc1_);
                                    }
                                 }
                                 §§goto(addr151);
                              }
                              §§goto(addr110);
                           }
                           §§goto(addr101);
                        }
                        break;
                     }
                     if(!(_loc3_ && _loc3_))
                     {
                        addr151:
                        §§push(int(_loc1_ + this.§7C§.slingshot.§,!%§()));
                        break;
                     }
                     §§goto(addr101);
                  }
                  addr158:
                  _loc1_ = §§pop();
                  §§goto(addr101);
               }
               §§goto(addr151);
            }
            §§goto(addr158);
         }
      }
      
      public function §`!;§(param1:§>2§, param2:§>2§) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
         {
            §§push(param1.§-`§());
            if(_loc3_ || this)
            {
               §§push(Boolean(§§pop()));
               §§push(Boolean(§§pop()));
               if(!(_loc4_ && this))
               {
                  if(§§pop())
                  {
                     §§pop();
                     if(!_loc4_)
                     {
                        §§goto(addr55);
                     }
                     §§goto(addr77);
                  }
                  §§goto(addr67);
               }
               §§goto(addr95);
            }
            §§goto(addr118);
         }
         addr55:
         §§push(param2.§-`§());
         if(_loc3_ || param2)
         {
            §§push(Boolean(§§pop()));
            if(_loc3_)
            {
               addr67:
               if(§§pop())
               {
                  §§push(true);
               }
               else
               {
                  addr77:
                  §§push(param1.§`E§());
                  if(!_loc4_)
                  {
                     §§push(!§§pop());
                     if(!_loc4_)
                     {
                        addr94:
                        addr95:
                        if(§§pop())
                        {
                           §§pop();
                           §§push(param2.§`E§());
                           if(_loc3_)
                           {
                              §§push(!§§pop());
                              if(_loc3_ || param2)
                              {
                              }
                              §§goto(addr118);
                           }
                        }
                        if(§§pop())
                        {
                           if(_loc3_ || _loc3_)
                           {
                              addr118:
                              return §§pop();
                              §§push(true);
                           }
                        }
                        §§push(false);
                     }
                     return §§pop();
                  }
                  §§goto(addr94);
               }
            }
            §§goto(addr118);
         }
         return §§pop();
      }
      
      public function §?=§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.mSardineCanAdded = true;
            if(!_loc2_)
            {
               addr23:
               this.§2s§ = 0;
            }
            return;
         }
         §§goto(addr23);
      }
      
      public function objectCollision(param1:§>2§, param2:§>2§) : Boolean
      {
         var _loc20_:Boolean = true;
         var _loc21_:Boolean = false;
         var _loc18_:* = NaN;
         var _loc19_:* = NaN;
         if(!(_loc21_ && param1))
         {
            if(this.mMightyEagleAdded)
            {
               §§push(Boolean(param1.§1!F§()));
               §§push(Boolean(param1.§1!F§()));
               if(!(_loc21_ && this))
               {
                  if(!§§pop())
                  {
                     if(_loc20_)
                     {
                        §§pop();
                        if(_loc20_ || _loc3_)
                        {
                           §§push(param2.§`U§());
                           if(!_loc21_)
                           {
                              addr57:
                              if(§§pop())
                              {
                                 §§push(param2);
                                 §§push(param2.§8!,§);
                                 if(!_loc21_)
                                 {
                                    §§push(§§pop() * 2);
                                 }
                                 §§pop().applyDamage(§§pop(),true,true,true,false);
                                 §§push(true);
                                 if(!(_loc21_ && this))
                                 {
                                    return §§pop();
                                 }
                                 §§goto(addr116);
                              }
                              else
                              {
                                 §§push(Boolean(param2.§1!F§()));
                                 §§push(Boolean(param2.§1!F§()));
                                 if(_loc20_ || this)
                                 {
                                    addr97:
                                    if(!§§pop())
                                    {
                                       if(_loc20_ || this)
                                       {
                                          §§pop();
                                          addr106:
                                          §§push(param1.§`U§());
                                          if(_loc20_ || _loc3_)
                                          {
                                             addr115:
                                             addr116:
                                             if(§§pop())
                                             {
                                                if(_loc20_ || this)
                                                {
                                                   §§push(param1);
                                                   §§push(param1.§8!,§);
                                                   if(_loc20_ || this)
                                                   {
                                                      §§push(§§pop() * 2);
                                                   }
                                                   §§pop().applyDamage(§§pop(),true,true,true,false);
                                                   return true;
                                                }
                                                addr170:
                                                §§push(this.mMightyEagleTimer);
                                                if(_loc20_)
                                                {
                                                   addr178:
                                                   if(§§pop() == this.§#!;§.MIGHTY_EAGLE_WAIT_TIME)
                                                   {
                                                      if(_loc20_)
                                                      {
                                                         §§push(param1.§?!1§());
                                                         if(!(_loc21_ && this))
                                                         {
                                                            addr192:
                                                            §§push(Boolean(§§pop()));
                                                            if(!Boolean(§§pop()))
                                                            {
                                                               §§pop();
                                                               if(!_loc21_)
                                                               {
                                                                  addr198:
                                                                  §§push(Boolean(param2.§?!1§()));
                                                                  if(!_loc21_)
                                                                  {
                                                                     §§goto(addr201);
                                                                  }
                                                                  §§goto(addr218);
                                                               }
                                                               §§goto(addr228);
                                                            }
                                                            addr201:
                                                            if(§§pop())
                                                            {
                                                               if(!_loc21_)
                                                               {
                                                                  addr204:
                                                                  this.mMightyEagleTimer = 0;
                                                                  §§goto(addr207);
                                                               }
                                                            }
                                                            §§goto(addr207);
                                                         }
                                                         §§goto(addr218);
                                                      }
                                                   }
                                                   §§goto(addr207);
                                                }
                                                §§goto(addr230);
                                             }
                                             addr207:
                                             §§push(this.§`!;§(param1,param2));
                                             if(_loc20_ || _loc3_)
                                             {
                                                addr218:
                                                if(§§pop())
                                                {
                                                   if(!(_loc21_ && _loc3_))
                                                   {
                                                      §§push(false);
                                                   }
                                                   else
                                                   {
                                                      addr230:
                                                      var _loc3_:Number = 10;
                                                      addr228:
                                                      §§push(param1.§]z§(param2.§&!C§()));
                                                      if(!_loc21_)
                                                      {
                                                         §§push(Number(§§pop()));
                                                      }
                                                      var _loc4_:* = §§pop();
                                                      §§push(param1.§2F§(param2.§&!C§()));
                                                      if(!_loc21_)
                                                      {
                                                         §§push(Number(§§pop()));
                                                      }
                                                      var _loc5_:* = §§pop();
                                                      §§push(param2.§]z§(param1.§&!C§()));
                                                      if(_loc20_ || _loc3_)
                                                      {
                                                         §§push(Number(§§pop()));
                                                      }
                                                      var _loc6_:* = §§pop();
                                                      §§push(param2.§2F§(param1.§&!C§()));
                                                      if(!_loc21_)
                                                      {
                                                         §§push(Number(§§pop()));
                                                      }
                                                      var _loc7_:* = §§pop();
                                                      §§push(param1.§%;§().GetMass());
                                                      if(!(_loc21_ && param2))
                                                      {
                                                         §§push(param1.§%;§());
                                                         if(_loc20_)
                                                         {
                                                            §§push(§§pop().GetLinearVelocity().x);
                                                            if(!_loc21_)
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               if(!_loc21_)
                                                               {
                                                                  addr291:
                                                                  §§push(param2.§%;§().GetMass());
                                                                  if(!(_loc21_ && param2))
                                                                  {
                                                                     addr304:
                                                                     §§push(§§pop() - §§pop() * param2.§%;§().GetLinearVelocity().x);
                                                                     if(!_loc21_)
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                     }
                                                                  }
                                                                  §§goto(addr304);
                                                               }
                                                               var _loc8_:* = §§pop();
                                                               §§push(param1.§%;§().GetMass());
                                                               if(_loc20_)
                                                               {
                                                                  §§push(param1.§%;§());
                                                                  if(_loc20_)
                                                                  {
                                                                     §§push(§§pop().GetLinearVelocity().y);
                                                                     if(_loc20_)
                                                                     {
                                                                        §§push(§§pop() * §§pop());
                                                                        if(_loc20_)
                                                                        {
                                                                           addr327:
                                                                           §§push(param2.§%;§().GetMass());
                                                                           if(_loc20_ || _loc3_)
                                                                           {
                                                                              addr340:
                                                                              §§push(§§pop() - §§pop() * param2.§%;§().GetLinearVelocity().y);
                                                                              if(!_loc21_)
                                                                              {
                                                                                 addr343:
                                                                                 §§push(Number(§§pop()));
                                                                              }
                                                                           }
                                                                           §§goto(addr340);
                                                                        }
                                                                        var _loc9_:* = §§pop();
                                                                        §§push(Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_) / _loc3_);
                                                                        if(!(_loc21_ && param2))
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                        }
                                                                        var _loc10_:* = §§pop();
                                                                        §§push(_loc4_);
                                                                        if(!_loc21_)
                                                                        {
                                                                           §§push(§§pop() * _loc10_);
                                                                           if(_loc20_)
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                           }
                                                                        }
                                                                        var _loc11_:* = §§pop();
                                                                        §§push(_loc6_);
                                                                        if(!_loc21_)
                                                                        {
                                                                           §§push(§§pop() * _loc10_);
                                                                           if(!(_loc21_ && param1))
                                                                           {
                                                                              addr386:
                                                                              §§push(Number(§§pop()));
                                                                           }
                                                                           var _loc12_:* = §§pop();
                                                                           var _loc13_:Number = Math.max(0,param1.§4!;§);
                                                                           var _loc14_:Number = Math.max(0,param2.§4!;§);
                                                                           §§push(param1.applyDamage(_loc12_,true,param2.§-`§(),_loc14_ == param2.§8!,§));
                                                                           if(_loc20_ || this)
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                           }
                                                                           var _loc15_:* = §§pop();
                                                                           §§push(param2.applyDamage(_loc11_,true,param1.§-`§(),_loc13_ == param1.§8!,§));
                                                                           if(_loc20_ || _loc3_)
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                           }
                                                                           var _loc16_:* = §§pop();
                                                                           var _loc17_:Boolean;
                                                                           if(_loc17_ = false)
                                                                           {
                                                                              §#y§.log("--- NEW COLLISION ---");
                                                                              if(_loc20_)
                                                                              {
                                                                                 §§push(§#y§);
                                                                                 §§push("Mat Dam Factor1 = ");
                                                                                 §§push(_loc4_);
                                                                                 if(!_loc21_)
                                                                                 {
                                                                                    §§push(§§pop() + §§pop());
                                                                                    §§push(" Mat Dam Factor2 = ");
                                                                                    if(!(_loc21_ && _loc3_))
                                                                                    {
                                                                                       §§push(§§pop() + §§pop());
                                                                                       if(!_loc21_)
                                                                                       {
                                                                                          §§push(_loc6_);
                                                                                          if(_loc20_)
                                                                                          {
                                                                                             §§push(§§pop() + §§pop());
                                                                                             if(_loc20_)
                                                                                             {
                                                                                                addr472:
                                                                                                §§push(" Mat Vel Factor1 = ");
                                                                                                if(_loc20_)
                                                                                                {
                                                                                                   addr475:
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                   if(_loc20_)
                                                                                                   {
                                                                                                      addr495:
                                                                                                      §§push(_loc5_);
                                                                                                      if(!_loc21_)
                                                                                                      {
                                                                                                         addr491:
                                                                                                         §§push(§§pop() + §§pop());
                                                                                                         §§push(" Mat Vel Factor2 = ");
                                                                                                      }
                                                                                                      §§pop().log(§§pop() + §§pop());
                                                                                                      if(_loc20_)
                                                                                                      {
                                                                                                         §§push(§#y§);
                                                                                                         §§push("Object1: " + param1.§'!,§);
                                                                                                         if(!_loc21_)
                                                                                                         {
                                                                                                            §§push(" force1 = ");
                                                                                                            if(_loc20_ || param1)
                                                                                                            {
                                                                                                               §§push(§§pop() + §§pop());
                                                                                                               if(_loc20_)
                                                                                                               {
                                                                                                                  §§push(_loc11_);
                                                                                                                  if(_loc20_)
                                                                                                                  {
                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                     if(_loc20_)
                                                                                                                     {
                                                                                                                        §§push(" obj health1 = ");
                                                                                                                        if(!_loc21_)
                                                                                                                        {
                                                                                                                           addr527:
                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                           §§push(_loc13_);
                                                                                                                           if(_loc20_)
                                                                                                                           {
                                                                                                                              addr530:
                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                              if(!(_loc21_ && _loc3_))
                                                                                                                              {
                                                                                                                                 addr539:
                                                                                                                                 §§push(§§pop() + " new health1 = ");
                                                                                                                                 if(_loc20_ || this)
                                                                                                                                 {
                                                                                                                                    addr548:
                                                                                                                                    §§push(§§pop() + _loc15_);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§pop().log(§§pop());
                                                                                                                              if(!(_loc21_ && _loc3_))
                                                                                                                              {
                                                                                                                                 §§push(§#y§);
                                                                                                                                 §§push("Object2: ");
                                                                                                                                 if(!_loc21_)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() + param2.§'!,§);
                                                                                                                                    if(!(_loc21_ && _loc3_))
                                                                                                                                    {
                                                                                                                                       §§push(" force2 = ");
                                                                                                                                       if(!_loc21_)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                          if(_loc20_ || _loc3_)
                                                                                                                                          {
                                                                                                                                             §§push(_loc12_);
                                                                                                                                             if(!(_loc21_ && param1))
                                                                                                                                             {
                                                                                                                                                addr591:
                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                §§push(" obj health2 = ");
                                                                                                                                                if(_loc20_ || param1)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                   if(_loc20_ || this)
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr614);
                                                                                                                                                   }
                                                                                                                                                   §§push(_loc16_);
                                                                                                                                                }
                                                                                                                                                §§goto(addr612);
                                                                                                                                             }
                                                                                                                                             addr614:
                                                                                                                                             §§goto(addr615);
                                                                                                                                          }
                                                                                                                                          §§goto(addr591);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr612);
                                                                                                                                 }
                                                                                                                                 addr615:
                                                                                                                                 §§push(_loc14_);
                                                                                                                                 if(!_loc21_)
                                                                                                                                 {
                                                                                                                                    addr612:
                                                                                                                                    §§push(§§pop() + §§pop() + " new health2 = ");
                                                                                                                                 }
                                                                                                                                 §§pop().log(§§pop() + §§pop());
                                                                                                                                 §§push(_loc15_);
                                                                                                                                 §§push(0);
                                                                                                                                 if(!_loc21_)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() <= §§pop());
                                                                                                                                    §§push(§§pop() <= §§pop());
                                                                                                                                    if(!_loc21_)
                                                                                                                                    {
                                                                                                                                       if(§§pop())
                                                                                                                                       {
                                                                                                                                          §§pop();
                                                                                                                                          if(_loc20_ || this)
                                                                                                                                          {
                                                                                                                                             addr633:
                                                                                                                                             §§push(_loc12_ == 0);
                                                                                                                                             if(_loc20_)
                                                                                                                                             {
                                                                                                                                                addr639:
                                                                                                                                                if(!§§pop())
                                                                                                                                                {
                                                                                                                                                   if(_loc20_)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc12_);
                                                                                                                                                      §§push(_loc13_);
                                                                                                                                                      if(!(_loc21_ && param2))
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() - §§pop());
                                                                                                                                                         if(_loc20_)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() / _loc12_);
                                                                                                                                                            if(_loc20_ || param1)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc18_ = Number(§§pop()));
                                                                                                                                                               if(_loc20_ || _loc3_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc7_);
                                                                                                                                                                  if(!_loc21_)
                                                                                                                                                                  {
                                                                                                                                                                     addr676:
                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                     if(_loc20_ || param1)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(Number(§§pop()));
                                                                                                                                                                        if(_loc20_ || param1)
                                                                                                                                                                        {
                                                                                                                                                                        }
                                                                                                                                                                        addr874:
                                                                                                                                                                        §§push(§§pop() * _loc5_);
                                                                                                                                                                        if(!(_loc21_ && this))
                                                                                                                                                                        {
                                                                                                                                                                           addr882:
                                                                                                                                                                           §§push(Number(§§pop()));
                                                                                                                                                                        }
                                                                                                                                                                        §§push(_loc19_ = §§pop());
                                                                                                                                                                        if(!_loc21_)
                                                                                                                                                                        {
                                                                                                                                                                           addr888:
                                                                                                                                                                           if(§§pop() > 1)
                                                                                                                                                                           {
                                                                                                                                                                              if(!_loc21_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr892:
                                                                                                                                                                                 §§push(Number(1));
                                                                                                                                                                                 if(!(_loc21_ && _loc3_))
                                                                                                                                                                                 {
                                                                                                                                                                                    addr900:
                                                                                                                                                                                    _loc19_ = §§pop();
                                                                                                                                                                                    addr901:
                                                                                                                                                                                    if(_loc17_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr903:
                                                                                                                                                                                       §§push(§#y§);
                                                                                                                                                                                       §§push(param2.§'!,§ + " is killed. Speed Multiplier for ");
                                                                                                                                                                                       if(!_loc21_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop() + param1.§'!,§);
                                                                                                                                                                                          if(!_loc21_)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr915:
                                                                                                                                                                                             §§push(§§pop() + " is ");
                                                                                                                                                                                             if(_loc20_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop() + _loc19_);
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          §§pop().log(§§pop());
                                                                                                                                                                                          addr922:
                                                                                                                                                                                          §§push(param1);
                                                                                                                                                                                          §§push(§§findproperty(b2Vec2));
                                                                                                                                                                                          §§push(param1.§%;§().GetLinearVelocity().x);
                                                                                                                                                                                          if(!_loc21_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc19_);
                                                                                                                                                                                             if(!_loc21_)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr934:
                                                                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                                                                §§push(param1.§%;§().GetLinearVelocity().y);
                                                                                                                                                                                                if(!(_loc21_ && param2))
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr955:
                                                                                                                                                                                                   §§push(§§pop() * _loc19_);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§pop().§12§(new §§pop().b2Vec2(§§pop(),§§pop()));
                                                                                                                                                                                                if(_loc20_ || this)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr966:
                                                                                                                                                                                                   §§push(_loc15_);
                                                                                                                                                                                                   §§push(0);
                                                                                                                                                                                                   if(_loc20_ || _loc3_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§goto(addr984);
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr983);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr955);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr934);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr915);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr922);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr983);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr903);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr901);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr983);
                                                                                                                                                                     }
                                                                                                                                                                     §§push(§§pop());
                                                                                                                                                                     if(!(_loc21_ && _loc3_))
                                                                                                                                                                     {
                                                                                                                                                                        _loc18_ = §§pop();
                                                                                                                                                                        §§push(1);
                                                                                                                                                                        if(!(_loc21_ && param1))
                                                                                                                                                                        {
                                                                                                                                                                           if(§§pop() > §§pop())
                                                                                                                                                                           {
                                                                                                                                                                              if(!(_loc21_ && param2))
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(1);
                                                                                                                                                                                 if(!_loc21_)
                                                                                                                                                                                 {
                                                                                                                                                                                    _loc18_ = Number(§§pop());
                                                                                                                                                                                    addr722:
                                                                                                                                                                                    §§push(_loc17_);
                                                                                                                                                                                    if(_loc20_ || _loc3_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(§§pop())
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§#y§);
                                                                                                                                                                                          §§push(param1.§'!,§ + " is killed. Speed Multiplier for ");
                                                                                                                                                                                          if(!_loc21_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop() + param2.§'!,§);
                                                                                                                                                                                             if(!(_loc21_ && this))
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop() + " is ");
                                                                                                                                                                                                if(!_loc21_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr752:
                                                                                                                                                                                                   §§push(§§pop() + _loc18_);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§pop().log(§§pop());
                                                                                                                                                                                                if(!_loc21_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr757:
                                                                                                                                                                                                   §§push(param2);
                                                                                                                                                                                                   §§push(§§findproperty(b2Vec2));
                                                                                                                                                                                                   §§push(param2.§%;§().GetLinearVelocity().x);
                                                                                                                                                                                                   if(!(_loc21_ && this))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(_loc18_);
                                                                                                                                                                                                      if(_loc20_ || param2)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr779:
                                                                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                                                                         §§push(param2.§%;§().GetLinearVelocity().y);
                                                                                                                                                                                                         if(!_loc21_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(§§pop() * _loc18_);
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§pop().§12§(new §§pop().b2Vec2(§§pop(),§§pop()));
                                                                                                                                                                                                      if(_loc20_ || param2)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr797:
                                                                                                                                                                                                         §§push(_loc16_);
                                                                                                                                                                                                         §§push(0);
                                                                                                                                                                                                         if(_loc20_ || param2)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(§§pop() <= §§pop());
                                                                                                                                                                                                            if(!(_loc21_ && _loc3_))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(§§pop());
                                                                                                                                                                                                               if(!_loc21_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(§§pop())
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!(_loc21_ && this))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr824:
                                                                                                                                                                                                                        §§pop();
                                                                                                                                                                                                                        §§push(_loc11_);
                                                                                                                                                                                                                        if(!_loc21_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(0);
                                                                                                                                                                                                                           if(_loc20_ || _loc3_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr836:
                                                                                                                                                                                                                              §§push(§§pop() == §§pop());
                                                                                                                                                                                                                              if(_loc20_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(!§§pop());
                                                                                                                                                                                                                                 if(!_loc21_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr842:
                                                                                                                                                                                                                                    if(§§pop())
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(_loc20_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          addr845:
                                                                                                                                                                                                                                          §§push(_loc11_);
                                                                                                                                                                                                                                          if(!_loc21_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(_loc14_);
                                                                                                                                                                                                                                             if(!(_loc21_ && param2))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                §§push(_loc11_);
                                                                                                                                                                                                                                                if(_loc20_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(§§pop() / §§pop());
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr874);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                                                                                                                          if(!_loc21_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             _loc19_ = §§pop();
                                                                                                                                                                                                                                             if(!(_loc21_ && param2))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§goto(addr874);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr900);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr874);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr966);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr984);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr874);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr900);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr842);
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr984);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr888);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr900);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr779);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr903);
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr752);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr757);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr824);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr892);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr722);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr836);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr874);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr882);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr874);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr797);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr676);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr824);
                                                                                                                                                }
                                                                                                                                                §§goto(addr797);
                                                                                                                                             }
                                                                                                                                             §§goto(addr639);
                                                                                                                                          }
                                                                                                                                          §§goto(addr824);
                                                                                                                                       }
                                                                                                                                       §§goto(addr639);
                                                                                                                                    }
                                                                                                                                    §§goto(addr984);
                                                                                                                                 }
                                                                                                                                 addr984:
                                                                                                                                 §§push(§§pop() <= §§pop());
                                                                                                                                 if(§§pop() <= §§pop())
                                                                                                                                 {
                                                                                                                                    if(!_loc21_)
                                                                                                                                    {
                                                                                                                                       §§pop();
                                                                                                                                       addr983:
                                                                                                                                       §§push(_loc16_ <= 0);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 return §§pop();
                                                                                                                              }
                                                                                                                              §§goto(addr614);
                                                                                                                           }
                                                                                                                           §§goto(addr548);
                                                                                                                        }
                                                                                                                        §§goto(addr539);
                                                                                                                     }
                                                                                                                     §§goto(addr527);
                                                                                                                  }
                                                                                                                  §§goto(addr530);
                                                                                                               }
                                                                                                               §§goto(addr548);
                                                                                                            }
                                                                                                            §§goto(addr527);
                                                                                                         }
                                                                                                         §§goto(addr539);
                                                                                                      }
                                                                                                      §§goto(addr845);
                                                                                                   }
                                                                                                   addr494:
                                                                                                   §§goto(addr495);
                                                                                                   §§push(_loc7_);
                                                                                                }
                                                                                                §§push(§§pop() + §§pop());
                                                                                             }
                                                                                             §§goto(addr494);
                                                                                          }
                                                                                          §§goto(addr491);
                                                                                       }
                                                                                       §§goto(addr472);
                                                                                    }
                                                                                    §§goto(addr475);
                                                                                 }
                                                                                 §§goto(addr495);
                                                                              }
                                                                              §§goto(addr633);
                                                                           }
                                                                           §§goto(addr614);
                                                                        }
                                                                        §§goto(addr386);
                                                                     }
                                                                     §§goto(addr340);
                                                                  }
                                                                  §§goto(addr327);
                                                               }
                                                               §§goto(addr343);
                                                            }
                                                            §§goto(addr304);
                                                         }
                                                      }
                                                      §§goto(addr291);
                                                   }
                                                }
                                                §§goto(addr228);
                                             }
                                             return §§pop();
                                             §§push(Boolean(§§pop()));
                                          }
                                          §§goto(addr207);
                                       }
                                       §§goto(addr178);
                                    }
                                    §§goto(addr116);
                                 }
                              }
                              §§goto(addr192);
                           }
                           §§goto(addr115);
                        }
                        §§goto(addr204);
                     }
                     §§goto(addr192);
                  }
                  §§goto(addr57);
               }
               §§goto(addr97);
            }
            else
            {
               §§push(this.mSardineCanAdded);
               if(_loc20_)
               {
                  §§push(Boolean(§§pop()));
                  if(_loc20_ || _loc3_)
                  {
                     §§push(§§pop());
                     if(_loc20_ || param2)
                     {
                        if(§§pop())
                        {
                           if(!_loc21_)
                           {
                              addr169:
                              §§pop();
                              §§goto(addr170);
                           }
                           §§goto(addr198);
                        }
                        §§goto(addr178);
                     }
                     §§goto(addr192);
                  }
                  §§goto(addr169);
               }
            }
            §§goto(addr178);
         }
         §§goto(addr106);
      }
      
      public function § L§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§>2§ = null;
         var _loc1_:* = int(this.§2;§.length - 1);
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§2;§[_loc1_] as §>2§;
            if(!(_loc3_ && _loc2_))
            {
               §§push(_loc2_ == null);
               if(!_loc3_)
               {
                  §§push(!§§pop());
                  if(!_loc3_)
                  {
                     addr61:
                     if(§§pop())
                     {
                        if(!_loc3_)
                        {
                           addr65:
                           §§pop();
                           if(!(_loc3_ && _loc2_))
                           {
                              §§push(_loc2_.§`U§());
                              if(!_loc3_)
                              {
                                 addr88:
                                 if(§§pop())
                                 {
                                    if(!(_loc4_ || _loc1_))
                                    {
                                       continue;
                                    }
                                    addr96:
                                    this.§64§(_loc1_,true,true,true);
                                    if(_loc3_ && _loc3_)
                                    {
                                       continue;
                                    }
                                 }
                              }
                              §§goto(addr88);
                           }
                           §§push(_loc1_);
                           if(_loc4_)
                           {
                              §§push(§§pop() - 1);
                           }
                           _loc1_ = §§pop();
                           continue;
                        }
                     }
                     §§goto(addr88);
                  }
                  §§goto(addr65);
               }
               §§goto(addr61);
            }
            §§goto(addr96);
         }
      }
      
      public function §6b§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§>2§ = null;
         var _loc1_:* = int(this.§2;§.length - 1);
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§2;§[_loc1_] as §>2§;
            if(_loc4_ || _loc2_)
            {
               §§push(_loc2_ == null);
               if(_loc4_ || _loc1_)
               {
                  §§push(!§§pop());
                  if(_loc4_)
                  {
                     if(§§pop())
                     {
                        if(_loc4_ || this)
                        {
                           §§pop();
                           if(!_loc3_)
                           {
                              §§push(_loc2_.§],§());
                              if(_loc3_ && _loc2_)
                              {
                              }
                              addr98:
                              if(§§pop())
                              {
                                 if(!_loc3_)
                                 {
                                    addr101:
                                    this.§64§(_loc1_,true,true,true);
                                    if(_loc3_)
                                    {
                                       continue;
                                    }
                                 }
                              }
                              §§push(_loc1_);
                              if(_loc4_ || _loc3_)
                              {
                                 §§push(§§pop() - 1);
                              }
                              _loc1_ = §§pop();
                           }
                           continue;
                        }
                     }
                     §§goto(addr98);
                  }
                  §§push(Boolean(§§pop()));
               }
               §§goto(addr98);
            }
            §§goto(addr101);
         }
      }
      
      public function §"q§() : int
      {
         return this.§2;§.length;
      }
      
      public function §4%§(param1:§9R§) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc4_:§>2§ = null;
         var _loc5_:§"!D§ = null;
         var _loc6_:§%!?§ = null;
         var _loc7_:§@Q§ = null;
         var _loc2_:* = Number(0);
         while(true)
         {
            §§push(_loc2_);
            if(_loc8_ || _loc3_)
            {
               if(§§pop() >= this.§2;§.length)
               {
                  §§push(Number(0));
                  break;
               }
               §§push((_loc4_ = this.§2;§[_loc2_]).§1@§);
               if(!_loc9_)
               {
                  if(!§§pop())
                  {
                     if(!(_loc8_ || this))
                     {
                        addr62:
                     }
                  }
                  else
                  {
                     addr54:
                     if(_loc4_.isGround())
                     {
                        if(_loc9_ && param1)
                        {
                           continue;
                        }
                        §§goto(addr62);
                     }
                     else
                     {
                        (_loc5_ = new §"!D§()).angle = _loc4_.§+O§();
                        if(_loc8_)
                        {
                           _loc5_.id = _loc4_.§'!,§;
                           if(!(_loc9_ && _loc3_))
                           {
                              addr84:
                              _loc5_.x = _loc4_.§%;§().GetPosition().x;
                              if(_loc8_ || this)
                              {
                                 _loc5_.y = _loc4_.§%;§().GetPosition().y;
                                 if(_loc8_ || param1)
                                 {
                                    _loc5_.uniqueID = _loc4_.uniqueID;
                                    if(_loc8_ || _loc2_)
                                    {
                                    }
                                    addr134:
                                    §§push(_loc2_);
                                    if(!(_loc9_ && this))
                                    {
                                       §§push(§§pop() + 1);
                                       if(!(_loc9_ && _loc2_))
                                       {
                                          addr150:
                                          §§push(Number(§§pop()));
                                       }
                                       _loc2_ = §§pop();
                                       continue;
                                    }
                                    §§goto(addr150);
                                 }
                              }
                              §§goto(addr134);
                           }
                           param1.addObject(_loc5_);
                           §§goto(addr134);
                        }
                        §§goto(addr84);
                     }
                  }
                  §§goto(addr134);
               }
               §§goto(addr54);
            }
            break;
         }
         var _loc3_:* = §§pop();
         if(_loc8_)
         {
            while(_loc3_ < this.§-!C§.length)
            {
               _loc7_ = this.§-!C§[_loc3_];
               _loc6_ = new §%!?§(_loc7_.type,_loc7_.index1,_loc7_.index2,_loc7_.point1,_loc7_.point2,_loc7_.§&!#§,_loc7_.§!_§,_loc7_.lowerLimit,_loc7_.upperLimit,_loc7_.§9!'§,_loc7_.motorSpeed,_loc7_.§7!G§,_loc7_.maxTorque);
               if(_loc8_ || _loc3_)
               {
                  param1.§8P§(_loc6_);
                  if(_loc9_ && this)
                  {
                     continue;
                  }
               }
               §§push(_loc3_);
               if(_loc8_)
               {
                  §§push(§§pop() + 1);
                  if(!_loc9_)
                  {
                     §§push(Number(§§pop()));
                  }
               }
               _loc3_ = §§pop();
            }
         }
      }
      
      public function §,g§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:int = 0;
         while(this.§2;§.length > _loc1_)
         {
            if(this.§2;§[_loc1_].isGround())
            {
               if(_loc2_ || _loc3_)
               {
                  _loc1_++;
                  if(!(_loc2_ || _loc1_))
                  {
                     break;
                  }
               }
            }
            else
            {
               this.§>!"§(this.§2;§[_loc1_]);
               if(!_loc2_)
               {
                  break;
               }
            }
         }
      }
      
      public function §;!?§(param1:Point, param2:Point) : Array
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:Array = new Array();
         var _loc4_:* = Number(0);
         loop0:
         while(true)
         {
            §§push(_loc4_);
            while(§§pop() < this.§2;§.length)
            {
               if(this.§2;§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
               {
                  if(_loc6_ || param1)
                  {
                     _loc3_.push(this.§2;§[_loc4_]);
                     if(!_loc6_)
                     {
                     }
                     break;
                  }
                  break;
               }
               §§push(_loc4_);
               if(_loc6_ || param2)
               {
                  §§push(§§pop() + 1);
                  if(_loc5_ && param2)
                  {
                     continue;
                  }
                  §§push(Number(§§pop()));
                  if(!(_loc6_ || _loc3_))
                  {
                     continue;
                  }
               }
               _loc4_ = §§pop();
               if(_loc5_)
               {
                  break;
               }
               continue loop0;
            }
            return _loc3_;
         }
      }
      
      public function setGroundTextureEnabled(param1:Boolean) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            this.§`!7§ = param1;
            if(!_loc3_)
            {
               this.§[<§(param1);
            }
         }
         var _loc2_:* = Number(0);
         loop0:
         while(true)
         {
            §§push(_loc2_);
            while(§§pop() < this.§2;§.length)
            {
               if(this.§2;§[_loc2_].isTexture())
               {
                  if(_loc4_)
                  {
                     this.§2;§[_loc2_].sprite.visible = !this.§`!7§;
                     if(_loc3_)
                     {
                        continue loop0;
                     }
                  }
               }
               §§push(_loc2_);
               if(!_loc3_)
               {
                  §§push(§§pop() + 1);
                  if(!(_loc4_ || param1))
                  {
                     continue;
                  }
               }
               §§push(Number(§§pop()));
               if(_loc4_)
               {
                  _loc2_ = §§pop();
                  if(_loc3_ && param1)
                  {
                     break;
                  }
                  continue loop0;
               }
            }
            return;
         }
      }
      
      public function setDamageEnabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§=y§ = param1;
         }
      }
      
      public function §=7§() : Boolean
      {
         return this.§=y§;
      }
      
      public function §=!D§() : int
      {
         return this.§-v§;
      }
      
      public function §;!5§() : int
      {
         return this.§<!D§;
      }
      
      public function §'§(param1:String) : §>2§
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§>2§ = null;
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= this.§2;§.length)
            {
               return null;
            }
            _loc3_ = this.§2;§[_loc2_] as §>2§;
            if(!(_loc4_ || _loc3_))
            {
               break;
            }
            if(_loc3_.uniqueID == param1)
            {
               if(_loc4_)
               {
                  break;
               }
            }
            else
            {
               _loc2_++;
            }
         }
         return _loc3_;
      }
   }
}
