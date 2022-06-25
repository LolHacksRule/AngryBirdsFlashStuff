package §^!A§
{
   import §#X§.§,!F§;
   import §&o§.§?T§;
   import §&o§.Sprite;
   import §0! §.Texture;
   import §1!-§.§@Z§;
   import §2!,§.§@!2§;
   import §3a§.§7!+§;
   import §4@§.§2!H§;
   import §4@§.§<!6§;
   import §6A§.§ !§;
   import §6A§.§"6§;
   import §6A§.§#!E§;
   import §6A§.§0!'§;
   import §9K§.§,z§;
   import §^!L§.§"c§;
   import §^!L§.§%h§;
   import §^!L§.§5b§;
   import §^!L§.§6<§;
   import §^!L§.each;
   import §^G§.§4c§;
   import §^G§.§;u§;
   import §^G§.§=t§;
   import §^G§.§`8§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.Joints.b2PrismaticJoint;
   import com.rovio.Box2D.Dynamics.Joints.b2RevoluteJoint;
   import com.rovio.Box2D.Dynamics.Joints.b2WeldJoint;
   import flash.display.BitmapData;
   import flash.display.BitmapDataChannel;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §@H§
   {
       
      
      protected var §82§:Vector.<§;!%§>;
      
      protected var §1!2§:int;
      
      public var §?V§:§ !§;
      
      public var § 8§:Vector.<§[!N§>;
      
      protected var §,M§:Sprite;
      
      protected var §7^§:Sprite;
      
      private var §-!!§:Sprite;
      
      private var §3i§:Sprite;
      
      private var §6_§:Sprite;
      
      protected var §]!J§:Vector.<Texture>;
      
      protected var §]J§:Vector.<§4c§>;
      
      protected var §]e§:int = 1;
      
      public var mMightyEagleAdded:Boolean = false;
      
      public var mMightyEagleHasTouchedGround:Boolean = false;
      
      public var §]_§:Boolean = false;
      
      public var mSardineCanAdded:Boolean = false;
      
      public var mMightyEagleTimer:Number = 0;
      
      protected var §5!I§:Boolean = false;
      
      protected var §3Z§:Number;
      
      protected var §4f§:int;
      
      protected var §>!!§:Vector.<§=t§>;
      
      protected var §]O§:int = 0;
      
      private var §5h§:int = 0;
      
      private var §@G§:int = 0;
      
      protected var §%_§:int;
      
      private var §2!=§:Boolean = true;
      
      private var §&r§:Boolean = true;
      
      public function §@H§(param1:§ !§, param2:§@Z§, param3:Sprite)
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         var _loc5_:§4c§ = null;
         var _loc6_:§;u§ = null;
         var _loc7_:§;!%§ = null;
         var _loc8_:* = 0;
         var _loc9_:* = 0;
         var _loc10_:§;!%§ = null;
         var _loc11_:§;!%§ = null;
         this.§82§ = new Vector.<§;!%§>();
         if(!_loc14_)
         {
            this.§ 8§ = new Vector.<§[!N§>();
            this.§]!J§ = new Vector.<Texture>();
            if(_loc15_ || param1)
            {
               this.§3Z§ = this.§#!E§.SARDINE_CAN_INITIAL_ROTATION_SPEED;
               if(_loc15_)
               {
                  this.§>!!§ = new Vector.<§=t§>();
                  super();
                  this.§?V§ = param1;
                  this.§1!2§ = 0;
                  this.§7^§ = param3;
                  §§push(this.§7^§);
                  if(!_loc14_)
                  {
                     §§pop().§3!D§ = false;
                     if(!_loc14_)
                     {
                        this.§&r§ = true;
                        this.§2!=§ = true;
                        this.§,M§ = new Sprite();
                        if(!_loc14_)
                        {
                           addr107:
                           this.§-!!§ = new Sprite();
                           if(!_loc14_)
                           {
                              this.§3i§ = new Sprite();
                              if(_loc15_)
                              {
                                 this.§6_§ = new Sprite();
                                 addr123:
                                 §§push(this.§7^§);
                                 if(!_loc14_)
                                 {
                                    §§pop().addChild(this.§,M§);
                                    addr130:
                                    §§push(this.§7^§);
                                    if(_loc15_)
                                    {
                                       addr134:
                                       §§pop().addChild(this.§-!!§);
                                       addr137:
                                       §§push(this.§7^§);
                                       if(!(_loc14_ && param2))
                                       {
                                          addr146:
                                          §§pop().addChild(this.§3i§);
                                          addr242:
                                          if(_loc15_ || param2)
                                          {
                                             addr156:
                                             §§push(this.§7^§);
                                          }
                                          var _loc4_:* = 0;
                                          if(_loc15_)
                                          {
                                             _loc4_ = 0;
                                          }
                                          loop0:
                                          while(true)
                                          {
                                             §§push(_loc4_);
                                             if(!(_loc14_ && param2))
                                             {
                                                §§push(param2.§-'§);
                                                if(!_loc14_)
                                                {
                                                   if(§§pop() < §§pop())
                                                   {
                                                      _loc6_ = param2.§1F§(_loc4_);
                                                      if(_loc7_ = this.addObject(_loc6_.id,_loc6_.x,_loc6_.y,_loc6_.angle,false,false,false,1,_loc6_.front))
                                                      {
                                                         if(!(_loc15_ || param1))
                                                         {
                                                            continue;
                                                         }
                                                         _loc7_.uniqueID = _loc6_.uniqueID;
                                                         if(!(_loc15_ || param3))
                                                         {
                                                            continue;
                                                         }
                                                      }
                                                      _loc4_++;
                                                      continue;
                                                   }
                                                   this.§"l§();
                                                   this.§5!E§(true);
                                                   if(_loc15_)
                                                   {
                                                      this.§]J§ = new Vector.<§4c§>();
                                                      §§push(0);
                                                      if(!_loc14_)
                                                      {
                                                         _loc4_ = §§pop();
                                                      }
                                                      break;
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(_loc4_);
                                                      if(_loc15_)
                                                      {
                                                         break loop0;
                                                      }
                                                      §§goto(addr359);
                                                   }
                                                   addr345:
                                                }
                                                while(true)
                                                {
                                                   if(§§pop() >= §§pop())
                                                   {
                                                      if(_loc15_ || this)
                                                      {
                                                         addr359:
                                                         var _loc12_:* = §§pop();
                                                         addr522:
                                                         if(_loc15_)
                                                         {
                                                            var _loc13_:* = this.§]J§;
                                                            loop2:
                                                            while(true)
                                                            {
                                                               for each(_loc5_ in _loc13_)
                                                               {
                                                                  §§push(int(_loc5_.index1 + this.§%_§));
                                                                  if(!(_loc14_ && param1))
                                                                  {
                                                                     _loc8_ = §§pop();
                                                                     if(!(_loc14_ && param1))
                                                                     {
                                                                        §§push(int(_loc5_.index2 + this.§%_§));
                                                                        if(!_loc14_)
                                                                        {
                                                                           _loc9_ = §§pop();
                                                                           if(_loc15_)
                                                                           {
                                                                              addr405:
                                                                              §§push(_loc8_);
                                                                              if(!_loc14_)
                                                                              {
                                                                                 addr408:
                                                                                 §§push(§§pop() < this.§82§.length);
                                                                                 if(!_loc14_)
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       if(_loc15_ || this)
                                                                                       {
                                                                                          addr423:
                                                                                          §§pop();
                                                                                          addr432:
                                                                                          if(_loc15_)
                                                                                          {
                                                                                             addr427:
                                                                                             §§push(_loc9_ < this.§82§.length);
                                                                                          }
                                                                                          _loc10_ = this.§82§[_loc8_];
                                                                                          _loc11_ = this.§82§[_loc9_];
                                                                                          §§push(Boolean(_loc10_));
                                                                                          if(_loc15_)
                                                                                          {
                                                                                             if(§§pop())
                                                                                             {
                                                                                                if(!(_loc14_ && param3))
                                                                                                {
                                                                                                   addr457:
                                                                                                   §§pop();
                                                                                                   §§push(Boolean(_loc11_));
                                                                                                }
                                                                                             }
                                                                                             if(!§§pop())
                                                                                             {
                                                                                                break loop2;
                                                                                             }
                                                                                             if(_loc5_.type != §`8§.§9!+§)
                                                                                             {
                                                                                                _loc5_.§<,§ = this.§?V§.§'O§.§[!C§.CreateJoint(_loc5_.§?7§(_loc10_,_loc11_));
                                                                                                if(_loc14_)
                                                                                                {
                                                                                                }
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                this.§>!!§.push(new §=t§(parseInt(_loc10_.uniqueID),parseInt(_loc11_.uniqueID),_loc5_.§=e§));
                                                                                             }
                                                                                             continue loop2;
                                                                                          }
                                                                                          §§goto(addr457);
                                                                                       }
                                                                                    }
                                                                                    if(!§§pop())
                                                                                    {
                                                                                       continue loop2;
                                                                                    }
                                                                                    §§goto(addr432);
                                                                                 }
                                                                                 §§goto(addr423);
                                                                              }
                                                                              §§goto(addr427);
                                                                           }
                                                                           §§goto(addr423);
                                                                        }
                                                                        §§goto(addr408);
                                                                     }
                                                                     §§goto(addr405);
                                                                  }
                                                                  §§goto(addr427);
                                                               }
                                                            }
                                                            throw new Error("Joint index out of bounds [" + _loc8_ + ", " + _loc9_ + "]");
                                                         }
                                                         return;
                                                         §§push(0);
                                                      }
                                                      §§goto(addr522);
                                                   }
                                                   else
                                                   {
                                                      this.§]J§.push(§4c§.§+^§(param2.§04§(_loc4_)));
                                                      _loc4_++;
                                                      §§goto(addr345);
                                                   }
                                                }
                                                addr350:
                                             }
                                             break;
                                          }
                                          while(true)
                                          {
                                             §§goto(addr350);
                                             §§goto(addr345);
                                          }
                                          §§goto(addr359);
                                       }
                                       §§pop().addChild(this.§6_§);
                                       if(_loc15_ || param2)
                                       {
                                          addr168:
                                          §§push(this);
                                          §§push(§@!2§.§"@§(param2.theme).§,!G§);
                                          §§push(this.§?V§.§%>§.§3!G§);
                                          if(!(_loc14_ && param1))
                                          {
                                             §§push(this.§?V§);
                                             if(_loc15_ || param3)
                                             {
                                                §§push(§§pop().§%>§);
                                                if(_loc15_ || param2)
                                                {
                                                   §§push(§§pop().§7r§);
                                                   if(_loc15_)
                                                   {
                                                      addr218:
                                                      §§push(§§pop() + §§pop());
                                                      if(_loc15_ || this)
                                                      {
                                                         addr213:
                                                         §§push(§§pop() / 2);
                                                      }
                                                      §§push(this.§?V§.§%>§.§,j§);
                                                      if(!(_loc14_ && param1))
                                                      {
                                                         addr226:
                                                         §§push(§§pop() + §"6§.§-H§);
                                                      }
                                                      §§pop().addObject(§§pop(),§§pop(),§§pop());
                                                      if(_loc15_ || param2)
                                                      {
                                                         this.§%_§ = this.§82§.length;
                                                      }
                                                      §§goto(addr242);
                                                   }
                                                   §§goto(addr226);
                                                }
                                             }
                                             §§goto(addr218);
                                          }
                                          §§goto(addr213);
                                       }
                                       §§goto(addr242);
                                    }
                                    §§goto(addr146);
                                 }
                                 §§goto(addr134);
                              }
                              §§goto(addr146);
                           }
                           §§goto(addr156);
                        }
                        §§goto(addr137);
                     }
                     §§goto(addr168);
                  }
                  §§goto(addr134);
               }
               §§goto(addr130);
            }
            §§goto(addr123);
         }
         §§goto(addr107);
      }
      
      protected function get §#!E§() : Class
      {
         return §#!E§;
      }
      
      public function get §`$§() : Sprite
      {
         return this.§6_§;
      }
      
      public function get §=V§() : Sprite
      {
         return this.§7^§;
      }
      
      public function get §?=§() : Sprite
      {
         return this.§3i§;
      }
      
      public function dispose() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:Texture = null;
         do
         {
            if(this.§82§.length <= 0)
            {
               if(_loc3_ || this)
               {
                  this.§82§ = null;
                  if(!(_loc2_ && this))
                  {
                     break;
                  }
                  addr87:
                  this.§,M§ = null;
                  if(_loc3_)
                  {
                     this.§6_§ = null;
                     if(!(_loc2_ && _loc1_))
                     {
                        §§goto(addr112);
                     }
                  }
                  §§goto(addr120);
               }
               break;
            }
            this.§5k§(0);
         }
         while(_loc3_ || _loc1_);
         
         this.§>!!§ = null;
         §§push(this.§7^§);
         if(!_loc2_)
         {
            if(§§pop())
            {
               §§goto(addr74);
            }
            §§goto(addr120);
         }
         addr74:
         this.§7^§.dispose();
         if(_loc3_ || _loc3_)
         {
            this.§7^§ = null;
            if(!_loc2_)
            {
               §§goto(addr87);
            }
            §§goto(addr120);
         }
         addr112:
         this.§-!!§ = null;
         if(!_loc2_)
         {
            this.§3i§ = null;
            addr120:
            while(this.§]!J§.length > 0)
            {
               _loc1_ = this.§]!J§.pop();
               if(!_loc2_)
               {
                  this.§?V§.textureManager.§<T§(_loc1_);
               }
            }
         }
      }
      
      private function §5!E§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§,M§.visible = param1;
         }
      }
      
      private function §"l§() : void
      {
         var _loc16_:Boolean = false;
         var _loc17_:Boolean = true;
         var _loc3_:§;!%§ = null;
         var _loc4_:Rectangle = null;
         var _loc5_:* = NaN;
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         var _loc8_:* = 0;
         var _loc9_:int = 0;
         var _loc10_:BitmapData = null;
         var _loc11_:BitmapData = null;
         var _loc12_:Texture = null;
         var _loc13_:§?T§ = null;
         var _loc1_:Rectangle = null;
         var _loc2_:Vector.<§;!%§> = new Vector.<§;!%§>();
         for each(_loc3_ in this.§82§)
         {
            if(!(_loc16_ && _loc2_))
            {
               if(!_loc3_.isTexture())
               {
                  continue;
               }
               if(_loc17_ || _loc3_)
               {
                  _loc2_.push(_loc3_);
               }
            }
            _loc4_ = _loc3_.sprite.getBounds(this.§7^§);
            if(_loc17_)
            {
               if(_loc1_ != null)
               {
                  _loc1_ = _loc1_.union(_loc4_);
                  continue;
               }
            }
            _loc1_ = new Rectangle(_loc4_.x,_loc4_.y,_loc4_.width,_loc4_.height);
         }
         if(_loc17_)
         {
            if(_loc1_)
            {
               §§push(1);
               if(_loc17_)
               {
                  §§push(Number(§§pop()));
                  if(!_loc16_)
                  {
                     _loc5_ = §§pop();
                     loop1:
                     while(true)
                     {
                        §§push(_loc1_.width > 2048);
                        if(!_loc16_)
                        {
                           if(!§§pop())
                           {
                              if(_loc17_)
                              {
                                 addr198:
                                 §§pop();
                                 if(!_loc16_)
                                 {
                                    addr205:
                                    if(_loc1_.height <= 2048)
                                    {
                                       if(!(_loc16_ && this))
                                       {
                                          break;
                                       }
                                       addr231:
                                       §§push(int(_loc1_.height));
                                       if(_loc17_ || _loc2_)
                                       {
                                          addr241:
                                          _loc7_ = §§pop();
                                          if(_loc17_ || _loc1_)
                                          {
                                             §§push(int(_loc1_.left));
                                             if(_loc17_ || _loc1_)
                                             {
                                                addr259:
                                                _loc8_ = §§pop();
                                                addr263:
                                                _loc9_ = _loc1_.top;
                                             }
                                             §§goto(addr263);
                                          }
                                          §§goto(addr264);
                                       }
                                    }
                                    else
                                    {
                                       _loc1_.left /= 2;
                                       _loc1_.top /= 2;
                                       if(_loc17_ || this)
                                       {
                                          _loc1_.right /= 2;
                                          if(!_loc16_)
                                          {
                                             _loc1_.bottom /= 2;
                                             if(!_loc17_)
                                             {
                                                break;
                                             }
                                             §§push(_loc5_);
                                             if(_loc17_)
                                             {
                                                while(true)
                                                {
                                                   §§push(§§pop() / 2);
                                                   if(!_loc17_)
                                                   {
                                                      continue loop1;
                                                   }
                                                }
                                                addr172:
                                             }
                                             while(true)
                                             {
                                                §§push(Number(§§pop()));
                                                continue loop1;
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr263);
                                 }
                                 break;
                              }
                           }
                           §§goto(addr205);
                        }
                        §§goto(addr198);
                     }
                     §§push(int(_loc1_.width));
                     if(!(_loc16_ && this))
                     {
                        _loc6_ = §§pop();
                        if(!(_loc16_ && _loc3_))
                        {
                           §§goto(addr231);
                        }
                        addr264:
                        _loc10_ = new BitmapData(_loc6_,_loc7_,true,0);
                        if(_loc17_)
                        {
                           this.§?&§(_loc10_.rect,_loc10_,_loc5_);
                        }
                        _loc11_ = this.§[k§(_loc2_,_loc6_,_loc7_,_loc8_,_loc9_,_loc5_);
                        if(!_loc16_)
                        {
                           _loc10_.copyChannel(_loc11_,_loc11_.rect,new Point(0,0),BitmapDataChannel.ALPHA,BitmapDataChannel.ALPHA);
                        }
                        _loc12_ = this.§?V§.textureManager.§<o§(_loc10_);
                        if(!(_loc16_ && _loc1_))
                        {
                           this.§]!J§.push(_loc12_);
                        }
                        (_loc13_ = new §?T§(_loc12_)).x = _loc8_ / _loc5_;
                        if(!_loc16_)
                        {
                           _loc13_.y = _loc9_ / _loc5_;
                           if(!(_loc16_ && _loc2_))
                           {
                              _loc13_.scaleX = 1 / _loc5_;
                              if(_loc17_ || this)
                              {
                                 addr369:
                                 _loc13_.scaleY = 1 / _loc5_;
                                 if(_loc17_)
                                 {
                                    this.§,M§.addChild(_loc13_);
                                    if(!_loc17_)
                                    {
                                    }
                                    §§goto(addr384);
                                 }
                              }
                              _loc11_.dispose();
                              §§goto(addr384);
                           }
                           §§goto(addr369);
                        }
                        §§goto(addr384);
                     }
                     §§goto(addr259);
                  }
                  §§goto(addr172);
               }
               §§goto(addr241);
            }
            addr384:
            return;
         }
         §§goto(addr259);
      }
      
      private function §[k§(param1:Vector.<§;!%§>, param2:int, param3:int, param4:int, param5:int, param6:Number) : BitmapData
      {
         var _loc16_:Boolean = false;
         var _loc17_:Boolean = true;
         var _loc7_:§;!%§ = null;
         var _loc11_:§"c§ = null;
         var _loc12_:Array = null;
         var _loc13_:Rectangle = null;
         var _loc8_:BitmapData = new BitmapData(param2,param3,true,0);
         var _loc9_:BitmapData = new BitmapData(1,1,true,4294967295);
         var _loc10_:Matrix = new Matrix();
         for each(_loc7_ in param1)
         {
            _loc12_ = (_loc11_ = _loc7_.§;!+§.shape).§+#§();
            _loc13_ = new Rectangle(_loc12_[0].x / § !§.§`J§ * param6,_loc12_[0].y / § !§.§`J§ * param6,(_loc12_[1].x - _loc12_[0].x) / § !§.§`J§ * param6,(_loc12_[1].y - _loc12_[0].y) / § !§.§`J§ * param6);
            if(!(_loc16_ && param2))
            {
               _loc10_.identity();
               if(!_loc16_)
               {
                  _loc10_.scale(_loc13_.width,_loc13_.height);
                  if(!(_loc17_ || param2))
                  {
                     continue;
                  }
                  addr154:
                  _loc10_.translate(-_loc13_.width / 2,-_loc13_.height / 2);
                  if(!_loc16_)
                  {
                     _loc10_.rotate((360 - _loc7_.§>8§()) / 180 * Math.PI);
                     if(_loc16_ && param3)
                     {
                        continue;
                     }
                  }
               }
               _loc10_.translate(_loc7_.sprite.x * param6 - param4,_loc7_.sprite.y * param6 - param5);
               if(_loc17_ || this)
               {
                  _loc8_.draw(_loc9_,_loc10_);
               }
               continue;
            }
            §§goto(addr154);
         }
         if(!(_loc16_ && param2))
         {
            _loc9_.dispose();
         }
         return _loc8_;
      }
      
      private function §?&§(param1:Rectangle, param2:BitmapData, param3:Number) : void
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
         var _loc14_:* = 0;
         var _loc15_:* = 0;
         §§push(this.§?V§.background.§!C§());
         if(_loc16_)
         {
            §§push(§§pop());
         }
         var _loc4_:* = §§pop();
         var _loc5_:§,z§;
         if(_loc5_ = this.§?V§.backgroundTextureManager.§3!'§(_loc4_))
         {
            _loc6_ = new BitmapData(_loc5_.bitmapData.width * param3,_loc5_.bitmapData.height * param3);
            (_loc7_ = new Matrix()).scale(param3,param3);
            _loc6_.draw(_loc5_.bitmapData,_loc7_,null,null,null,true);
            if(!(_loc17_ && param3))
            {
               §§push(int(_loc6_.width));
               if(_loc16_)
               {
                  _loc8_ = §§pop();
                  if(!(_loc17_ && param2))
                  {
                     §§push(int(_loc6_.height));
                     if(!(_loc17_ && this))
                     {
                        _loc9_ = §§pop();
                        addr117:
                        §§push(param1.top / _loc9_);
                        if(!_loc17_)
                        {
                           §§push(int(§§pop()));
                           if(_loc16_ || param3)
                           {
                              _loc10_ = §§pop();
                              if(_loc16_)
                              {
                                 addr134:
                                 if(param1.top < 0)
                                 {
                                    §§push(_loc10_ - 1);
                                    if(!_loc17_)
                                    {
                                       _loc10_ = §§pop();
                                       addr153:
                                       §§push(param1.bottom / _loc9_);
                                       if(!(_loc17_ && param2))
                                       {
                                          §§push(int(§§pop()));
                                          §§push(int(§§pop()));
                                          if(_loc16_)
                                          {
                                             _loc11_ = §§pop();
                                             if(!_loc17_)
                                             {
                                                §§push(§§pop() + 1);
                                                if(!_loc17_)
                                                {
                                                   addr174:
                                                   _loc11_ = §§pop();
                                                   §§push(param1.left / _loc8_);
                                                   if(_loc16_)
                                                   {
                                                      §§push(int(§§pop()));
                                                      if(_loc16_)
                                                      {
                                                         _loc12_ = §§pop();
                                                         if(_loc16_)
                                                         {
                                                            if(param1.left < 0)
                                                            {
                                                               if(!(_loc17_ && param1))
                                                               {
                                                                  §§push(_loc12_);
                                                                  if(_loc16_ || param2)
                                                                  {
                                                                     addr206:
                                                                     §§push(§§pop() - 1);
                                                                     if(!_loc17_)
                                                                     {
                                                                        addr209:
                                                                        _loc12_ = §§pop();
                                                                        addr230:
                                                                        if(_loc16_)
                                                                        {
                                                                           addr212:
                                                                           addr216:
                                                                           §§push(int(param1.right / _loc8_));
                                                                           if(_loc16_ || param3)
                                                                           {
                                                                              addr224:
                                                                              addr225:
                                                                              addr226:
                                                                              §§push((_loc13_ = §§pop()) + 1);
                                                                              if(!_loc16_)
                                                                              {
                                                                              }
                                                                              addr232:
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
                                                                                          _loc6_.dispose();
                                                                                          break;
                                                                                       }
                                                                                       §§push(_loc10_);
                                                                                       if(!(_loc17_ && this))
                                                                                       {
                                                                                          §§push(int(§§pop()));
                                                                                          if(!_loc16_)
                                                                                          {
                                                                                             continue loop1;
                                                                                          }
                                                                                          _loc15_ = §§pop();
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc15_);
                                                                                             if(_loc17_)
                                                                                             {
                                                                                                continue loop1;
                                                                                             }
                                                                                             addr279:
                                                                                             _loc15_++;
                                                                                          }
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc11_);
                                                                                          if(_loc17_ && param3)
                                                                                          {
                                                                                             continue loop2;
                                                                                          }
                                                                                          if(§§pop() >= §§pop())
                                                                                          {
                                                                                             if(!(_loc17_ && this))
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             break loop2;
                                                                                          }
                                                                                          param2.copyPixels(_loc6_,_loc6_.rect,new Point(_loc14_ * _loc8_,_loc15_ * _loc9_));
                                                                                          if(!(_loc16_ || param1))
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          §§goto(addr279);
                                                                                       }
                                                                                       continue loop0;
                                                                                    }
                                                                                    §§goto(addr305);
                                                                                 }
                                                                              }
                                                                           }
                                                                           addr231:
                                                                           §§goto(addr232);
                                                                           §§push(int(§§pop()));
                                                                        }
                                                                        §§goto(addr231);
                                                                        §§push(_loc12_);
                                                                     }
                                                                     _loc13_ = §§pop();
                                                                     §§goto(addr230);
                                                                  }
                                                                  §§goto(addr232);
                                                               }
                                                            }
                                                            §§goto(addr212);
                                                         }
                                                         §§goto(addr232);
                                                      }
                                                      §§goto(addr209);
                                                   }
                                                   §§goto(addr216);
                                                }
                                                §§goto(addr206);
                                             }
                                             §§goto(addr224);
                                          }
                                          §§goto(addr225);
                                       }
                                       §§goto(addr212);
                                    }
                                    §§goto(addr226);
                                 }
                                 §§goto(addr153);
                              }
                              §§goto(addr209);
                           }
                        }
                        §§goto(addr212);
                     }
                     §§goto(addr209);
                  }
                  §§goto(addr117);
               }
               §§goto(addr174);
            }
            §§goto(addr134);
         }
         addr305:
      }
      
      public function §14§(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §;!%§
      {
         var _loc10_:each = §6<§.§6H§(param2);
         return new §^!#§(this,param1,this.§?V§.§'O§.§[!C§,this.§?V§,this.§1!2§,param2,param3,param4,param5,param9,_loc10_.particleJSONId,_loc10_.particleVariationCount);
      }
      
      public function §0!@§(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §;!%§
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc10_:§;!%§ = null;
         var _loc11_:* = param2;
         if(!(_loc12_ && param1))
         {
            §§push("BIRD_BLACK");
            if(_loc13_ || param1)
            {
               if(§§pop() === _loc11_)
               {
                  §§push(0);
               }
               else if("BIRD_BLUE" === _loc11_)
               {
                  if(!(_loc12_ && param1))
                  {
                     §§push(1);
                  }
                  else
                  {
                     addr339:
                     §§push(6);
                     if(_loc12_ && param3)
                     {
                     }
                  }
               }
               else
               {
                  §§push("BIRD_GREEN");
                  if(!(_loc12_ && this))
                  {
                     §§push(_loc11_);
                     if(!(_loc12_ && this))
                     {
                        if(§§pop() === §§pop())
                        {
                           §§push(2);
                           if(_loc12_ && param3)
                           {
                           }
                        }
                        else if("BIRD_WHITE" === _loc11_)
                        {
                           if(_loc13_)
                           {
                              addr357:
                              switch(§§pop())
                              {
                                 case 0:
                                    _loc10_ = new §?B§(this,param1,this.§?V§.§'O§.§[!C§,this.§?V§,this.§1!2§,param2,param3,param4,param5,param8,param9);
                                    break;
                                 case 1:
                                    _loc10_ = new §5y§(this,param1,this.§?V§.§'O§.§[!C§,this.§?V§,this.§1!2§,param2,param3,param4,param5,param8,param9);
                                    break;
                                 case 2:
                                    _loc10_ = new §?g§(this,param1,this.§?V§.§'O§.§[!C§,this.§?V§,this.§1!2§,param2,param3,param4,param5,param8,param9);
                                    break;
                                 case 3:
                                    _loc10_ = new §#$§(this,param1,this.§?V§.§'O§.§[!C§,this.§?V§,this.§1!2§,param2,param3,param4,param5,param8,param9);
                                    break;
                                 case 4:
                                    _loc10_ = new § $§(this,param1,this.§?V§.§'O§.§[!C§,this.§?V§,this.§1!2§,param2,param3,param4,param5,param8,param9);
                                    break;
                                 case 5:
                                    _loc10_ = new §'!B§(this,param1,this.§?V§.§'O§.§[!C§,this.§?V§,this.§1!2§,param2,param3,param4,param5,param8,param9);
                                    break;
                                 case 6:
                                    _loc10_ = new §@!J§(this,param1,this.§?V§.§'O§.§[!C§,this.§?V§,this.§1!2§,param2,param3,param4,param5,param8,param9);
                                    break;
                                 case 7:
                                    _loc10_ = new §=!$§(this,param1,this.§?V§.§'O§.§[!C§,this.§?V§,this.§1!2§,param2,param3,param4,param5,param8,param9);
                                    break;
                                 default:
                                    _loc10_ = new §^`§(this,param1,this.§?V§.§'O§.§[!C§,this.§?V§,this.§1!2§,param2,param3,param4,param5,param8,param9);
                              }
                              return _loc10_;
                              §§push(3);
                           }
                           else
                           {
                              addr317:
                              §§goto(addr357);
                              §§push(5);
                           }
                        }
                        else
                        {
                           §§push("BIRD_YELLOW");
                           §§push(_loc11_);
                           if(_loc13_)
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(_loc13_ || param1)
                                 {
                                    §§push(4);
                                    if(!_loc13_)
                                    {
                                       addr352:
                                    }
                                    §§goto(addr357);
                                 }
                                 else
                                 {
                                    §§goto(addr339);
                                 }
                              }
                              else
                              {
                                 §§push("BIRD_RED");
                                 §§push(_loc11_);
                                 if(_loc13_)
                                 {
                                    addr316:
                                    if(§§pop() === §§pop())
                                    {
                                       §§goto(addr317);
                                    }
                                    else
                                    {
                                       §§push("BIRD_REDBIG");
                                       §§push(_loc11_);
                                       if(_loc13_ || this)
                                       {
                                          if(§§pop() === §§pop())
                                          {
                                             §§goto(addr339);
                                          }
                                          else
                                          {
                                             addr349:
                                             §§push("BIRD_ORANGE");
                                             §§push(_loc11_);
                                          }
                                          §§goto(addr357);
                                       }
                                    }
                                    §§goto(addr357);
                                 }
                              }
                              §§goto(addr357);
                           }
                           if(§§pop() === §§pop())
                           {
                              §§goto(addr352);
                              §§push(7);
                           }
                           else
                           {
                              §§goto(addr357);
                              §§push(8);
                           }
                        }
                        §§goto(addr357);
                     }
                     §§goto(addr316);
                  }
                  §§goto(addr349);
               }
               §§goto(addr357);
            }
            §§goto(addr349);
         }
         §§goto(addr317);
      }
      
      public function hasBirds() : Boolean
      {
         return this.§]O§ > 0;
      }
      
      public function addObject(param1:String, param2:Number, param3:Number, param4:Number = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = true, param8:Number = 1.0, param9:Boolean = false) : §;!%§
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         var _loc10_:Sprite;
         (_loc10_ = new Sprite()).scaleX = param8;
         if(!_loc14_)
         {
            _loc10_.scaleY = param8;
         }
         var _loc11_:§;!%§;
         if(!(_loc11_ = this.§6!L§(_loc10_,param1,param2,param3,param4,param5,param6,param7,param8)))
         {
            if(_loc15_ || param1)
            {
               return null;
            }
         }
         else
         {
            §§push(_loc11_.isTexture());
            if(_loc15_)
            {
               if(§§pop())
               {
                  if(!(_loc14_ && this))
                  {
                     §§push(_loc10_);
                     §§push(this.§2!=§);
                     if(!_loc14_)
                     {
                        §§push(!§§pop());
                     }
                     §§pop().visible = §§pop();
                     this.§82§[this.§82§.length] = _loc11_;
                     if(!_loc14_)
                     {
                        addr93:
                        §§push(_loc11_ is §^`§);
                        §§push(_loc11_ is §^`§);
                        if(_loc15_ || param3)
                        {
                           if(§§pop())
                           {
                              §§pop();
                              addr116:
                              §§push(!_loc11_.§"!"§());
                           }
                           if(§§pop())
                           {
                              if(_loc15_)
                              {
                                 this.§-!!§.addChild(_loc10_);
                                 if(_loc15_)
                                 {
                                    var _loc12_:*;
                                    §§push((_loc12_ = this).§]O§);
                                    if(!(_loc14_ && param1))
                                    {
                                       §§push(§§pop() + 1);
                                    }
                                    var _loc13_:* = §§pop();
                                    if(!_loc14_)
                                    {
                                       _loc12_.§]O§ = _loc13_;
                                    }
                                    addr195:
                                    §§push(param5);
                                    if(_loc15_)
                                    {
                                       if(§§pop())
                                       {
                                          if(!(_loc14_ && param3))
                                          {
                                             addr206:
                                             §§push(this.§?V§);
                                             if(!(_loc14_ && param3))
                                             {
                                                §§pop().§[?§(_loc11_);
                                                §§goto(addr223);
                                             }
                                             §§pop().activeObject = _loc11_;
                                          }
                                       }
                                       §§goto(addr223);
                                    }
                                 }
                                 else
                                 {
                                    addr162:
                                    §§push(Boolean(param9));
                                    if(_loc15_)
                                    {
                                       addr166:
                                       if(§§pop())
                                       {
                                          if(_loc15_ || param3)
                                          {
                                             this.§6_§.addChild(_loc10_);
                                             addr178:
                                          }
                                          §§goto(addr195);
                                       }
                                       else
                                       {
                                          this.§3i§.addChild(_loc10_);
                                          if(_loc15_)
                                          {
                                             §§goto(addr195);
                                          }
                                       }
                                       §§goto(addr206);
                                    }
                                 }
                                 §§goto(addr223);
                              }
                              §§goto(addr178);
                           }
                           else
                           {
                              addr153:
                              §§push(Boolean(_loc11_.front));
                              if(!Boolean(_loc11_.front))
                              {
                                 if(_loc15_ || param2)
                                 {
                                    addr161:
                                    §§pop();
                                    §§goto(addr162);
                                 }
                                 §§goto(addr223);
                              }
                           }
                           §§goto(addr166);
                        }
                        §§goto(addr153);
                     }
                     addr223:
                     if(param6)
                     {
                        §§push(this.§?V§);
                     }
                     return _loc11_;
                  }
                  §§goto(addr93);
               }
               else
               {
                  this.§82§[this.§82§.length] = _loc11_;
                  if(!_loc14_)
                  {
                     §§goto(addr93);
                  }
               }
               §§goto(addr116);
            }
            §§goto(addr161);
         }
         §§goto(addr162);
      }
      
      public function §+^§(param1:int, param2:§;!%§, param3:§;!%§, param4:Boolean = false, param5:Boolean = false, param6:Number = 0.0, param7:Number = 0.0, param8:Boolean = false, param9:Number = 0.0, param10:Boolean = false, param11:Number = 0.0, param12:Number = 0, param13:Number = 0.0, param14:Number = 0.0) : void
      {
         var _loc21_:Boolean = true;
         var _loc22_:Boolean = false;
         var _loc17_:§4c§ = null;
         var _loc18_:* = 0;
         var _loc19_:* = 0;
         var _loc20_:§=t§ = null;
         var _loc15_:int = this.§82§.indexOf(param2) - this.§%_§;
         var _loc16_:int = this.§82§.indexOf(param3) - this.§%_§;
         if(!(_loc22_ && this))
         {
            §§push(_loc15_);
            if(_loc21_ || this)
            {
               §§push(0);
               if(!_loc22_)
               {
                  §§push(§§pop() >= §§pop());
                  if(_loc21_ || param2)
                  {
                     if(§§pop())
                     {
                        if(_loc21_ || param2)
                        {
                           addr79:
                           §§pop();
                           if(_loc21_)
                           {
                              §§goto(addr85);
                           }
                           §§goto(addr86);
                        }
                     }
                     §§goto(addr85);
                  }
                  §§goto(addr79);
               }
            }
            §§goto(addr85);
         }
         addr85:
         if(_loc16_ >= 0)
         {
            _loc17_ = new §4c§(param1,_loc15_,_loc16_,new Point(0,0),new Point(0,0),param4,param5,param6,param7,param8,param9,param10,param11);
            addr86:
            if(_loc21_)
            {
               this.§]J§.push(_loc17_);
               if(!_loc22_)
               {
                  _loc17_.§=e§ = param12;
                  if(!(_loc22_ && param2))
                  {
                     _loc17_.axisX = param13;
                     _loc17_.axisY = param14;
                     §§push(param1);
                     if(_loc21_ || param1)
                     {
                        if(§§pop() != §`8§.§9!+§)
                        {
                           if(_loc21_ || param3)
                           {
                              §§goto(addr161);
                           }
                           else
                           {
                              addr198:
                              §§push(int(parseInt(param3.uniqueID)));
                           }
                           §§goto(addr204);
                        }
                        else
                        {
                           §§push(int(parseInt(param2.uniqueID)));
                           if(!_loc22_)
                           {
                              _loc18_ = §§pop();
                              §§goto(addr198);
                           }
                        }
                     }
                     _loc19_ = §§pop();
                     §§goto(addr204);
                  }
                  §§goto(addr198);
               }
               §§goto(addr204);
            }
            addr161:
            _loc17_.§<,§ = this.§?V§.§'O§.§[!C§.CreateJoint(_loc17_.§?7§(param2,param3));
            if(_loc22_ && param2)
            {
               addr204:
               _loc20_ = new §=t§(_loc18_,_loc19_,param12);
               if(!_loc22_)
               {
                  this.§>!!§.push(_loc20_);
               }
            }
            §§goto(addr217);
         }
         addr217:
      }
      
      public function §=a§(param1:§4c§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            if(!(param1.§<,§ is b2WeldJoint))
            {
               if(_loc5_)
               {
                  §§goto(addr26);
               }
            }
            var _loc2_:§;!%§ = this.§1F§(param1.index1 + this.§%_§);
            var _loc3_:§;!%§ = this.§1F§(param1.index2 + this.§%_§);
            if(!(_loc4_ && _loc3_))
            {
               this.§?V§.§'O§.§[!C§.DestroyJoint(param1.§<,§);
               if(!_loc4_)
               {
                  addr81:
                  param1.§<,§ = this.§?V§.§'O§.§[!C§.CreateJoint(param1.§?7§(_loc2_,_loc3_));
               }
               return;
            }
            §§goto(addr81);
         }
         addr26:
      }
      
      public function §>C§(param1:§;!%§) : Vector.<§4c§>
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:§4c§ = null;
         var _loc2_:Vector.<§4c§> = new Vector.<§4c§>();
         var _loc3_:int = this.§82§.indexOf(param1) - this.§%_§;
         if(!(_loc7_ && this))
         {
            §§push(_loc3_);
            if(_loc8_)
            {
               if(§§pop() >= 0)
               {
                  addr58:
                  addr57:
                  for each(_loc4_ in this.§]J§)
                  {
                     §§push(_loc4_.index1 == _loc3_);
                     if(!_loc7_)
                     {
                        if(!§§pop())
                        {
                           if(_loc8_ || param1)
                           {
                              addr95:
                              §§pop();
                              if(_loc7_)
                              {
                                 continue;
                              }
                              §§push(_loc4_.index2 == _loc3_);
                           }
                        }
                        if(§§pop())
                        {
                           if(!_loc7_)
                           {
                              _loc2_.push(_loc4_);
                           }
                        }
                        continue;
                     }
                     §§goto(addr95);
                  }
               }
               return _loc2_;
            }
            §§goto(addr58);
         }
         §§goto(addr57);
      }
      
      public function §2!$§() : Vector.<§4c§>
      {
         return this.§]J§;
      }
      
      public function §4!§(param1:§;!%§) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:int = this.§82§.indexOf(param1) - this.§%_§;
         var _loc3_:* = int(this.§]J§.length - 1);
         loop0:
         while(true)
         {
            §§push(_loc3_);
            while(§§pop() >= 0)
            {
               §§push(this.§]J§[_loc3_].index1 == _loc2_);
               if(!(_loc5_ && _loc2_))
               {
                  if(!§§pop())
                  {
                     if(!_loc5_)
                     {
                        addr61:
                        §§pop();
                        if(!_loc5_)
                        {
                           §§push(this.§]J§[_loc3_].index2 == _loc2_);
                        }
                        break;
                     }
                  }
                  if(§§pop())
                  {
                     if(!(_loc5_ && param1))
                     {
                        this.§]J§.splice(_loc3_,1);
                        if(!_loc4_)
                        {
                        }
                        break;
                     }
                     continue loop0;
                  }
                  §§push(_loc3_);
                  if(!(_loc5_ && _loc3_))
                  {
                     §§push(§§pop() - 1);
                     if(_loc4_ || this)
                     {
                        _loc3_ = §§pop();
                        if(_loc5_ && param1)
                        {
                           break;
                        }
                        continue loop0;
                     }
                  }
                  continue;
               }
               §§goto(addr61);
            }
            return;
         }
      }
      
      protected function §05§(param1:§;!%§) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(param1.uniqueID);
         if(_loc4_ || this)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         var _loc3_:* = int(this.§>!!§.length - 1);
         loop0:
         while(true)
         {
            §§push(_loc3_);
            while(§§pop() >= 0)
            {
               if(this.§>!!§[_loc3_].targetId.toString() == _loc2_)
               {
                  if(_loc4_ || param1)
                  {
                     this.§>!!§.splice(_loc3_,1);
                     if(_loc5_ && _loc3_)
                     {
                     }
                     break;
                  }
                  continue loop0;
               }
               §§push(_loc3_);
               if(_loc4_ || _loc2_)
               {
                  §§push(§§pop() - 1);
                  if(_loc4_ || this)
                  {
                     _loc3_ = §§pop();
                     if(_loc5_)
                     {
                        break;
                     }
                     continue loop0;
                  }
               }
            }
            return;
         }
      }
      
      public function §#`§(param1:§;!%§, param2:§;!%§) : Boolean
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:int = this.§82§.indexOf(param1) - this.§%_§;
         var _loc4_:int = this.§82§.indexOf(param2) - this.§%_§;
         var _loc5_:* = int(this.§]J§.length - 1);
         loop0:
         while(true)
         {
            §§push(_loc5_);
            while(true)
            {
               if(§§pop() < 0)
               {
                  §§push(false);
                  break;
               }
               §§push(this.§]J§[_loc5_].index1 == _loc3_);
               §§push(this.§]J§[_loc5_].index1 == _loc3_);
               if(_loc6_ || param1)
               {
                  if(§§pop())
                  {
                     if(_loc6_ || this)
                     {
                        §§pop();
                        if(!_loc6_)
                        {
                           continue loop0;
                        }
                        addr85:
                        §§push(this.§]J§[_loc5_].index2 == _loc4_);
                        §§push(this.§]J§[_loc5_].index2 == _loc4_);
                        if(_loc6_ || param1)
                        {
                           addr93:
                           if(!§§pop())
                           {
                              if(_loc6_ || param1)
                              {
                                 §§pop();
                                 §§push(this.§]J§[_loc5_].index1 == _loc4_);
                                 if(_loc7_ && param2)
                                 {
                                    §§pop();
                                    §§push(this.§]J§[_loc5_].index2 == _loc3_);
                                    if(!(_loc7_ && param1))
                                    {
                                       §§goto(addr150);
                                    }
                                 }
                                 addr116:
                                 addr117:
                                 if(§§pop())
                                 {
                                    if(_loc7_ && _loc3_)
                                    {
                                       break;
                                    }
                                 }
                                 addr150:
                                 if(§§pop())
                                 {
                                    §§goto(addr152);
                                 }
                                 §§push(_loc5_);
                                 if(_loc6_ || this)
                                 {
                                    §§push(§§pop() - 1);
                                    if(_loc6_)
                                    {
                                       _loc5_ = §§pop();
                                       continue loop0;
                                    }
                                 }
                                 continue;
                                 addr152:
                                 return true;
                              }
                           }
                           §§goto(addr116);
                        }
                        §§goto(addr117);
                     }
                     break;
                  }
                  §§goto(addr85);
               }
               §§goto(addr93);
            }
            return §§pop();
         }
      }
      
      protected function §6!L§(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §;!%§
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         var _loc10_:§;!%§ = null;
         var _loc11_:each = null;
         if(!(_loc14_ && param3))
         {
            §§push(param2);
            if(!(_loc14_ && param1))
            {
               §§push("BIRD");
               if(_loc15_)
               {
                  if(§§pop().indexOf(§§pop()) == 0)
                  {
                     if(!_loc14_)
                     {
                        §§goto(addr46);
                     }
                     else
                     {
                        addr94:
                        _loc10_ = this.§14§(param1,param2,param3,param4,param5,param6,param7,param8,param9);
                     }
                     §§goto(addr274);
                  }
                  else
                  {
                     addr91:
                     if(param2.indexOf("PIG") == 0)
                     {
                        §§goto(addr94);
                     }
                     else
                     {
                        §§push((_loc11_ = §6<§.§6H§(param2)) == null);
                        if(_loc15_ || param2)
                        {
                           §§push(§§pop());
                           if(!_loc14_)
                           {
                              if(§§pop())
                              {
                                 if(_loc15_)
                                 {
                                    §§pop();
                                    if(_loc15_)
                                    {
                                       §§push(param2);
                                       if(_loc15_ || param2)
                                       {
                                          §§push(§§pop().indexOf("MISC_") == 0);
                                          if(_loc15_ || param1)
                                          {
                                             addr161:
                                             if(§§pop())
                                             {
                                                addr170:
                                                §§push("MISC_FOOD_");
                                                if(!_loc14_)
                                                {
                                                   §§push(§§pop() + param2.substring(5));
                                                }
                                                param2 = §§pop();
                                                if(_loc15_)
                                                {
                                                   _loc11_ = §6<§.§6H§(param2);
                                                   addr178:
                                                   if(!_loc11_)
                                                   {
                                                      return null;
                                                   }
                                                   §§push(_loc11_.§@%§);
                                                   if(!(_loc14_ && param1))
                                                   {
                                                      §§push(each.§`V§);
                                                      if(_loc15_)
                                                      {
                                                         §§push(§§pop() == §§pop());
                                                         if(!_loc14_)
                                                         {
                                                            addr196:
                                                            if(!§§pop())
                                                            {
                                                               if(!_loc14_)
                                                               {
                                                                  §§pop();
                                                                  if(!(_loc14_ && param2))
                                                                  {
                                                                     addr212:
                                                                     §§push(_loc11_.§@%§ == each.§9R§);
                                                                  }
                                                                  §§goto(addr274);
                                                               }
                                                            }
                                                         }
                                                         if(§§pop())
                                                         {
                                                            addr214:
                                                            _loc10_ = new §53§(this,param1,this.§?V§.§'O§.§[!C§,this.§?V§,this.§1!2§,param2,param3,param4,param5,param9,_loc11_.front,_loc11_.particleJSONId,_loc11_.particleVariationCount);
                                                         }
                                                         else
                                                         {
                                                            _loc10_ = new §;!%§(this,param1,this.§?V§.§'O§.§[!C§,this.§?V§,this.§1!2§,param2,param3,param4,param5,param9,_loc11_.front);
                                                         }
                                                         §§goto(addr274);
                                                      }
                                                   }
                                                   §§goto(addr212);
                                                }
                                                §§goto(addr214);
                                             }
                                             §§goto(addr178);
                                          }
                                          §§goto(addr196);
                                       }
                                       §§goto(addr170);
                                    }
                                    §§goto(addr274);
                                 }
                                 §§goto(addr196);
                              }
                              §§goto(addr161);
                           }
                           §§goto(addr196);
                        }
                        §§goto(addr161);
                     }
                  }
                  §§goto(addr94);
               }
            }
            §§goto(addr91);
         }
         addr46:
         _loc10_ = this.§0!@§(param1,param2,param3,param4,param5,param6,param7,param8,param9);
         if(!_loc14_)
         {
            var _loc12_:*;
            §§push((_loc12_ = this).§@G§);
            if(!(_loc14_ && param1))
            {
               §§push(§§pop() + 1);
            }
            var _loc13_:* = §§pop();
            if(!_loc14_)
            {
               _loc12_.§@G§ = _loc13_;
            }
            if(_loc15_ || param1)
            {
               addr274:
               _loc10_.uniqueID = this.§@L§();
            }
         }
         return _loc10_;
      }
      
      protected function §@L§() : String
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:§;!%§ = null;
         var _loc1_:int = this.§82§.length;
         var _loc2_:* = false;
         loop0:
         while(true)
         {
            §§push(_loc2_);
            if(_loc7_ || this)
            {
               while(true)
               {
                  §§push(!§§pop());
               }
               addr117:
            }
            while(§§pop())
            {
               §§push(true);
               if(!_loc6_)
               {
                  _loc2_ = §§pop();
                  if(!_loc7_)
                  {
                     break;
                  }
                  §§push(0);
                  if(_loc6_ && _loc1_)
                  {
                     return §§pop().toString();
                  }
                  addr120:
                  for each(_loc3_ in this.§82§)
                  {
                     if(_loc7_ || _loc1_)
                     {
                        if(_loc3_.uniqueID != _loc1_.toString())
                        {
                           continue;
                        }
                        if(!(_loc6_ && _loc3_))
                        {
                           _loc1_++;
                           if(_loc7_ || this)
                           {
                              addr102:
                              _loc2_ = false;
                           }
                           break;
                        }
                     }
                     §§goto(addr102);
                  }
                  continue loop0;
               }
               §§goto(addr117);
            }
            §§goto(addr120);
         }
      }
      
      public function §!c§(param1:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§;!%§ = null;
         var _loc2_:* = int(this.§82§.length - 1);
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§82§[_loc2_] as §;!%§;
            if(!(_loc4_ && this))
            {
               if(_loc3_)
               {
                  if(_loc3_.§`Y§ <= 0)
                  {
                     if(!(_loc4_ && _loc3_))
                     {
                        this.§5k§(_loc2_,true,true,true);
                     }
                  }
                  else
                  {
                     _loc3_.§`§();
                     if(_loc4_ && _loc3_)
                     {
                        continue;
                     }
                     _loc3_.§'=§();
                     if(_loc4_ && this)
                     {
                        continue;
                     }
                  }
               }
            }
            §§push(_loc2_);
            if(_loc5_)
            {
               §§push(§§pop() - 1);
            }
            _loc2_ = §§pop();
         }
         if(!(_loc4_ && _loc2_))
         {
            this.§-t§(param1);
         }
      }
      
      protected function §-t§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§2§(param1);
            if(!_loc3_)
            {
               this.§]!<§();
            }
         }
      }
      
      private function §2§(param1:Number) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:§=t§ = null;
         var _loc5_:* = 0;
         var _loc6_:§;!%§ = null;
         if(_loc8_)
         {
            if(this.§>!!§.length == 0)
            {
               if(_loc8_)
               {
                  §§goto(addr34);
               }
            }
            var _loc2_:Vector.<§=t§> = this.§>!!§.concat();
            var _loc3_:* = int(_loc2_.length - 1);
            while(_loc3_ >= 0)
            {
               §§push((_loc4_ = _loc2_[_loc3_]).§[!%§);
               if(_loc8_ || this)
               {
                  §§push(Boolean(§§pop()));
                  if(!_loc7_)
                  {
                     if(§§pop())
                     {
                        if(!_loc7_)
                        {
                           §§pop();
                           if(_loc8_)
                           {
                              §§push(this.§>!!§.indexOf(_loc4_) == -1);
                              if(_loc8_ || this)
                              {
                                 addr95:
                                 if(!§§pop())
                                 {
                                    if(_loc8_ || this)
                                    {
                                       addr103:
                                       §§push(_loc4_.update(param1));
                                       if(_loc8_)
                                       {
                                          §§push(int(§§pop()));
                                          if(_loc8_ || _loc2_)
                                          {
                                             §§push(§§pop());
                                             if(_loc8_ || _loc3_)
                                             {
                                                _loc5_ = §§pop();
                                                addr179:
                                                if(!(_loc7_ && _loc3_))
                                                {
                                                   §§push(-1);
                                                }
                                                _loc3_ = §§pop();
                                                continue;
                                             }
                                             if(§§pop() != §§pop())
                                             {
                                                if(!_loc8_)
                                                {
                                                   continue;
                                                }
                                                addr136:
                                                §§push(this);
                                                §§push("");
                                                if(_loc8_)
                                                {
                                                   §§push(§§pop() + _loc5_);
                                                }
                                                if(_loc6_ = §§pop().§!!M§(§§pop()))
                                                {
                                                   if(_loc8_ || param1)
                                                   {
                                                      this.§&I§(_loc6_,true,true,true);
                                                      addr170:
                                                      §§push(_loc3_);
                                                      if(_loc8_ || _loc3_)
                                                      {
                                                      }
                                                      §§goto(addr179);
                                                   }
                                                }
                                             }
                                             §§goto(addr170);
                                          }
                                          §§push(§§pop() - 1);
                                       }
                                       §§goto(addr179);
                                    }
                                    §§goto(addr136);
                                 }
                                 §§goto(addr170);
                              }
                              §§goto(addr95);
                           }
                           §§goto(addr103);
                        }
                     }
                  }
               }
               §§goto(addr95);
            }
            return;
         }
         addr34:
      }
      
      private function §]!<§() : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc1_:§4c§ = null;
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         var _loc4_:Class = null;
         var _loc5_:* = false;
         for each(_loc1_ in this.§]J§)
         {
            if(!(_loc9_ && _loc2_))
            {
               §§push(_loc1_.type == §`8§.§#!K§);
               §§push(_loc1_.type == §`8§.§#!K§);
               if(_loc8_ || _loc3_)
               {
                  if(!§§pop())
                  {
                     if(_loc8_ || this)
                     {
                        §§pop();
                        if(!_loc9_)
                        {
                           §§push(_loc1_.type == §`8§.§12§);
                           if(_loc8_)
                           {
                              addr80:
                              if(§§pop())
                              {
                                 if(!_loc9_)
                                 {
                                    §§pop();
                                    if(_loc8_)
                                    {
                                       addr89:
                                       if(!_loc1_.§',§)
                                       {
                                          continue;
                                       }
                                       if(!_loc9_)
                                       {
                                          §§push(_loc1_.§<,§);
                                          if(!_loc9_)
                                          {
                                             §§push(§§pop() is b2PrismaticJoint);
                                             if(!(_loc9_ && this))
                                             {
                                                addr105:
                                                if(§§pop())
                                                {
                                                   if(_loc8_)
                                                   {
                                                      _loc4_ = b2PrismaticJoint;
                                                      if(_loc8_ || _loc3_)
                                                      {
                                                         §§push(_loc1_.§<,§);
                                                         if(!_loc9_)
                                                         {
                                                            §§push((§§pop() as b2PrismaticJoint).GetJointTranslation());
                                                            if(_loc8_ || _loc3_)
                                                            {
                                                               §§push(Number(§§pop()));
                                                               if(_loc8_)
                                                               {
                                                                  _loc2_ = §§pop();
                                                                  addr331:
                                                                  §§push(_loc1_.§<,§);
                                                                  if(!_loc9_)
                                                                  {
                                                                     §§push(Number((§§pop() as b2PrismaticJoint).GetMotorSpeed()));
                                                                  }
                                                                  (§§pop() as _loc4_).SetMotorSpeed(-_loc3_);
                                                                  continue;
                                                               }
                                                               _loc3_ = §§pop();
                                                               addr200:
                                                               §§push(Boolean(_loc1_.§1D§));
                                                               §§push(Boolean(_loc1_.§1D§));
                                                               if(!(_loc9_ && _loc2_))
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     if(!_loc9_)
                                                                     {
                                                                        §§pop();
                                                                        if(_loc8_)
                                                                        {
                                                                           §§push(Boolean(_loc1_.§8l§));
                                                                           if(_loc8_)
                                                                           {
                                                                              addr222:
                                                                              §§push(§§pop());
                                                                              if(!_loc9_)
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    if(_loc8_)
                                                                                    {
                                                                                       §§pop();
                                                                                       if(_loc8_ || _loc3_)
                                                                                       {
                                                                                          addr236:
                                                                                          §§push(_loc3_);
                                                                                          if(!_loc9_)
                                                                                          {
                                                                                             §§push(0);
                                                                                             if(_loc8_ || this)
                                                                                             {
                                                                                                §§push(§§pop() > §§pop());
                                                                                                §§push(§§pop() > §§pop());
                                                                                                if(_loc8_)
                                                                                                {
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      if(_loc8_ || _loc1_)
                                                                                                      {
                                                                                                         §§pop();
                                                                                                         if(!_loc9_)
                                                                                                         {
                                                                                                            addr262:
                                                                                                            §§push(_loc2_);
                                                                                                            if(_loc8_ || _loc1_)
                                                                                                            {
                                                                                                               addr273:
                                                                                                               §§push(§§pop() >= _loc1_.upperLimit);
                                                                                                               §§push(§§pop() >= _loc1_.upperLimit);
                                                                                                               if(!_loc9_)
                                                                                                               {
                                                                                                                  addr276:
                                                                                                                  if(!§§pop())
                                                                                                                  {
                                                                                                                     if(!_loc9_)
                                                                                                                     {
                                                                                                                        addr279:
                                                                                                                        §§pop();
                                                                                                                        §§push(_loc3_);
                                                                                                                        if(!_loc9_)
                                                                                                                        {
                                                                                                                           addr283:
                                                                                                                           §§push(§§pop() < 0);
                                                                                                                           if(_loc8_)
                                                                                                                           {
                                                                                                                              §§push(§§pop());
                                                                                                                              if(!(_loc9_ && _loc1_))
                                                                                                                              {
                                                                                                                                 addr295:
                                                                                                                                 if(§§pop())
                                                                                                                                 {
                                                                                                                                    §§pop();
                                                                                                                                    if(!(_loc9_ && this))
                                                                                                                                    {
                                                                                                                                       addr318:
                                                                                                                                       §§push(Boolean(_loc2_ <= _loc1_.lowerLimit));
                                                                                                                                       if(_loc8_ || _loc3_)
                                                                                                                                       {
                                                                                                                                          addr328:
                                                                                                                                          if(!(_loc5_ = §§pop()))
                                                                                                                                          {
                                                                                                                                             continue;
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr328);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr318);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr328);
                                                                                                                        }
                                                                                                                        §§goto(addr318);
                                                                                                                     }
                                                                                                                     §§goto(addr328);
                                                                                                                  }
                                                                                                                  §§goto(addr318);
                                                                                                               }
                                                                                                               §§goto(addr295);
                                                                                                            }
                                                                                                            §§goto(addr283);
                                                                                                         }
                                                                                                         §§goto(addr331);
                                                                                                         §§push(_loc1_.§<,§);
                                                                                                      }
                                                                                                      §§goto(addr318);
                                                                                                   }
                                                                                                   §§goto(addr273);
                                                                                                }
                                                                                                §§goto(addr328);
                                                                                             }
                                                                                             §§goto(addr283);
                                                                                          }
                                                                                          §§goto(addr318);
                                                                                       }
                                                                                       §§goto(addr262);
                                                                                    }
                                                                                    §§goto(addr279);
                                                                                 }
                                                                                 §§goto(addr318);
                                                                              }
                                                                              §§goto(addr295);
                                                                           }
                                                                           §§goto(addr273);
                                                                        }
                                                                        §§goto(addr236);
                                                                     }
                                                                     §§goto(addr328);
                                                                  }
                                                                  §§goto(addr222);
                                                               }
                                                               §§goto(addr276);
                                                            }
                                                            §§goto(addr283);
                                                         }
                                                         §§goto(addr331);
                                                      }
                                                      §§goto(addr236);
                                                   }
                                                   else
                                                   {
                                                      addr151:
                                                      _loc4_ = b2RevoluteJoint;
                                                      if(_loc8_)
                                                      {
                                                         §§push(_loc1_.§<,§);
                                                         if(!_loc9_)
                                                         {
                                                            §§push((§§pop() as b2RevoluteJoint).GetJointAngle());
                                                            if(_loc8_ || _loc3_)
                                                            {
                                                               §§push(Number(§§pop()));
                                                               if(!_loc9_)
                                                               {
                                                                  _loc2_ = §§pop();
                                                                  if(!_loc9_)
                                                                  {
                                                                     addr188:
                                                                     §§push((_loc1_.§<,§ as b2RevoluteJoint).GetMotorSpeed());
                                                                     if(!(_loc9_ && _loc2_))
                                                                     {
                                                                        addr198:
                                                                        §§push(Number(§§pop()));
                                                                     }
                                                                  }
                                                                  §§goto(addr200);
                                                               }
                                                               _loc3_ = §§pop();
                                                               §§goto(addr200);
                                                            }
                                                            §§goto(addr198);
                                                         }
                                                         §§goto(addr188);
                                                      }
                                                   }
                                                }
                                                else
                                                {
                                                   addr150:
                                                   if(_loc1_.§<,§ is b2RevoluteJoint)
                                                   {
                                                      §§goto(addr151);
                                                   }
                                                }
                                                §§goto(addr200);
                                             }
                                          }
                                          §§goto(addr150);
                                       }
                                    }
                                    §§goto(addr151);
                                 }
                                 §§goto(addr150);
                              }
                           }
                        }
                        §§goto(addr89);
                     }
                     §§goto(addr105);
                  }
                  §§goto(addr89);
               }
               §§goto(addr80);
            }
            §§goto(addr89);
         }
      }
      
      public function addExplosions(param1:int, param2:Number, param3:Number, param4:Vector.<§;!%§> = null) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || param1)
         {
            this.§ 8§.push(§[!N§.createExplosion(param1,param2,param3,param4));
            if(!_loc5_)
            {
               §,!F§.§;v§("TntExplosions","ChannelExplosions");
            }
         }
      }
      
      public function §@,§(param1:Number, param2:Number) : int
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:§;!%§ = null;
         var _loc3_:* = int(this.§82§.length - 1);
         while(true)
         {
            §§push(_loc3_);
            if(_loc6_ || this)
            {
               if(§§pop() < 0)
               {
                  break;
               }
               if(_loc4_ = this.§82§[_loc3_])
               {
                  if(!_loc5_)
                  {
                     if(_loc4_.isInCoordinates(param1,param2))
                     {
                        if(!_loc6_)
                        {
                           continue;
                        }
                        §§push(_loc3_);
                        if(_loc6_ || _loc3_)
                        {
                           return §§pop();
                        }
                        addr84:
                        §§push(§§pop() - 1);
                     }
                     else
                     {
                        addr76:
                        §§push(_loc3_);
                        if(_loc6_ || param2)
                        {
                           §§goto(addr84);
                        }
                     }
                     _loc3_ = §§pop();
                  }
                  continue;
               }
               §§goto(addr76);
            }
            break;
         }
         return §§pop();
      }
      
      public function §'>§(param1:Number, param2:Number) : §;!%§
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:§;!%§ = null;
         var _loc3_:* = int(this.§82§.length - 1);
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§82§[_loc3_])
            {
               if(_loc5_)
               {
                  if(_loc4_.isInCoordinates(param1,param2))
                  {
                     if(!(_loc6_ && _loc3_))
                     {
                        return _loc4_;
                     }
                  }
               }
            }
            §§push(_loc3_);
            if(!(_loc6_ && _loc3_))
            {
               §§push(§§pop() - 1);
            }
            _loc3_ = §§pop();
         }
         return null;
      }
      
      public function §&!@§(param1:Number, param2:Number) : Vector.<§;!%§>
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:§;!%§ = null;
         var _loc3_:Vector.<§;!%§> = new Vector.<§;!%§>();
         var _loc4_:* = int(this.§82§.length - 1);
         while(_loc4_ >= 0)
         {
            §§push(Boolean(_loc5_ = this.§82§[_loc4_]));
            if(!(_loc7_ && this))
            {
               if(§§pop())
               {
                  if(!_loc7_)
                  {
                     §§pop();
                     if(_loc6_ || _loc3_)
                     {
                        §§push(_loc5_.isInCoordinates(param1,param2));
                        if(_loc6_)
                        {
                           addr87:
                           if(§§pop())
                           {
                              if(_loc7_ && this)
                              {
                                 continue;
                              }
                              _loc3_.push(_loc5_);
                              if(_loc7_)
                              {
                                 continue;
                              }
                           }
                        }
                        §§goto(addr87);
                     }
                     §§push(_loc4_);
                     if(!(_loc7_ && _loc3_))
                     {
                        §§push(§§pop() - 1);
                     }
                     _loc4_ = §§pop();
                     continue;
                  }
               }
            }
            §§goto(addr87);
         }
         return _loc3_;
      }
      
      public function §1F§(param1:int) : §;!%§
      {
         return this.§82§[param1];
      }
      
      public function §]C§(param1:Number, param2:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:§;!%§ = null;
         var _loc3_:* = int(this.§82§.length - 1);
         while(_loc3_ >= 0)
         {
            (_loc4_ = this.§82§[_loc3_] as §;!%§).§]C§(param2,param1);
            if(!(_loc6_ && this))
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
      
      private function §#!1§(param1:§;!%§, param2:Number) : Boolean
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:§;!%§ = null;
         if(!(_loc8_ && _loc3_))
         {
            §§push(this.mSardineCanAdded);
            if(_loc9_ || _loc3_)
            {
               if(!§§pop())
               {
                  if(_loc9_)
                  {
                     §§push(true);
                     if(_loc9_)
                     {
                        return §§pop();
                     }
                     addr73:
                     var _loc3_:* = §§pop();
                     if(!_loc8_)
                     {
                        §§push(param1.§`Y§);
                        if(_loc9_ || _loc3_)
                        {
                           §§push(param1.§@!§);
                           if(_loc9_ || param2)
                           {
                              if(§§pop() == §§pop())
                              {
                                 §§push(this.§3Z§);
                                 if(!(_loc8_ && _loc3_))
                                 {
                                    if(§§pop() < this.§#!E§.SARDINE_CAN_MAX_ROTATION_SPEED)
                                    {
                                       §§push(this);
                                       §§push(this.§3Z§);
                                       if(!(_loc8_ && _loc3_))
                                       {
                                          §§push(param2);
                                          if(!_loc8_)
                                          {
                                             §§push(§§pop() * this.§#!E§.SARDINE_CAN_ROTATION_ACCELERATION);
                                          }
                                          §§push(§§pop() + §§pop());
                                       }
                                       §§pop().§3Z§ = §§pop();
                                    }
                                    §§push(param1.§'[§());
                                    if(!_loc8_)
                                    {
                                       §§push(param2);
                                       if(!(_loc8_ && param1))
                                       {
                                          §§push(§§pop() * this.§3Z§);
                                       }
                                       §§pop().SetAngularVelocity(§§pop());
                                       if(_loc9_)
                                       {
                                          this.§4f§ = 0;
                                          addr167:
                                          §§push(Boolean(param1.§switch§()));
                                          §§push(Boolean(param1.§switch§()));
                                          if(_loc9_ || this)
                                          {
                                             if(!§§pop())
                                             {
                                                §§pop();
                                                §§push(this.§0u§(param1));
                                                if(_loc9_ || param2)
                                                {
                                                   §§push(Boolean(§§pop()));
                                                   if(_loc9_ || this)
                                                   {
                                                      addr198:
                                                      §§push(§§pop());
                                                      if(!_loc8_)
                                                      {
                                                         if(!§§pop())
                                                         {
                                                            addr202:
                                                            §§pop();
                                                            if(_loc9_ || _loc3_)
                                                            {
                                                               addr213:
                                                               §§push(this.§4f§ > 0);
                                                               if(_loc9_)
                                                               {
                                                                  §§push(§§pop());
                                                                  if(!_loc8_)
                                                                  {
                                                                     addr219:
                                                                     if(§§pop())
                                                                     {
                                                                        if(_loc9_ || _loc3_)
                                                                        {
                                                                           §§pop();
                                                                           addr248:
                                                                           if(this.§?V§.§&!?§ > this.§4f§ + this.§#!E§.SARDINE_CAN_DELAY_AFTER_HIT)
                                                                           {
                                                                              if(!_loc8_)
                                                                              {
                                                                                 §§push(this.mMightyEagleTimer);
                                                                                 if(!(_loc8_ && this))
                                                                                 {
                                                                                    if(§§pop() < this.§#!E§.MIGHTY_EAGLE_WAIT_TIME)
                                                                                    {
                                                                                       if(_loc9_ || _loc3_)
                                                                                       {
                                                                                          addr271:
                                                                                          §§push(this.mMightyEagleTimer);
                                                                                          §§push(param2);
                                                                                          if(_loc9_ || param2)
                                                                                          {
                                                                                             §§push(Number(§§pop() + §§pop()));
                                                                                             if(!(_loc8_ && this))
                                                                                             {
                                                                                                addr290:
                                                                                                _loc4_ = §§pop();
                                                                                                if(_loc9_)
                                                                                                {
                                                                                                   addr295:
                                                                                                   §§push(this.mMightyEagleTimer < this.§#!E§.MIGHTY_EAGLE_SOUND_DELAY);
                                                                                                   if(_loc9_)
                                                                                                   {
                                                                                                      addr302:
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         addr303:
                                                                                                         §§pop();
                                                                                                         if(_loc9_)
                                                                                                         {
                                                                                                            addr306:
                                                                                                            §§push(_loc4_ > this.§#!E§.MIGHTY_EAGLE_SOUND_DELAY);
                                                                                                            if(_loc9_ || param1)
                                                                                                            {
                                                                                                               addr318:
                                                                                                               if(§§pop())
                                                                                                               {
                                                                                                                  if(!(_loc8_ && param2))
                                                                                                                  {
                                                                                                                     addr326:
                                                                                                                     §,!F§.§;v§("Mighty_Eagle_Selected_1","ChannelBird");
                                                                                                                     §,!F§.§;v§("Mighty_Eagle_Flying_1","ChannelBird");
                                                                                                                  }
                                                                                                                  addr473:
                                                                                                                  return _loc3_;
                                                                                                                  addr472:
                                                                                                               }
                                                                                                               if(_loc4_ >= this.§#!E§.MIGHTY_EAGLE_WAIT_TIME)
                                                                                                               {
                                                                                                                  §§push(param1.§'[§());
                                                                                                                  if(!(_loc8_ && param1))
                                                                                                                  {
                                                                                                                     addr348:
                                                                                                                     §§push(§§pop().GetPosition());
                                                                                                                     if(_loc9_ || param1)
                                                                                                                     {
                                                                                                                        §§push(§§pop().x - this.§#!E§.MIGHTY_EAGLE_STARTING_DISTANCE_X);
                                                                                                                        if(_loc9_)
                                                                                                                        {
                                                                                                                           §§push(Number(§§pop()));
                                                                                                                        }
                                                                                                                        _loc5_ = §§pop();
                                                                                                                        if(_loc9_)
                                                                                                                        {
                                                                                                                           addr369:
                                                                                                                           §§push(param1.§'[§().GetPosition());
                                                                                                                        }
                                                                                                                        §§goto(addr472);
                                                                                                                     }
                                                                                                                     §§push(§§pop().y);
                                                                                                                     §§push(this.§#!E§.MIGHTY_EAGLE_STARTING_DISTANCE_Y * this.§#!E§.MIGHTY_EAGLE_Y_CHANGE);
                                                                                                                     if(!(_loc8_ && this))
                                                                                                                     {
                                                                                                                        addr388:
                                                                                                                        _loc6_ = §§pop() - §§pop() * 1.07;
                                                                                                                        addr387:
                                                                                                                        if(_loc9_ || this)
                                                                                                                        {
                                                                                                                           addr397:
                                                                                                                           §§push(this.§0u§(param1));
                                                                                                                           if(!(_loc8_ && param2))
                                                                                                                           {
                                                                                                                              addr407:
                                                                                                                              if(§§pop())
                                                                                                                              {
                                                                                                                                 if(!_loc8_)
                                                                                                                                 {
                                                                                                                                    addr410:
                                                                                                                                    §§push(true);
                                                                                                                                    if(!(_loc8_ && _loc3_))
                                                                                                                                    {
                                                                                                                                       addr418:
                                                                                                                                       _loc3_ = §§pop();
                                                                                                                                       if(_loc9_)
                                                                                                                                       {
                                                                                                                                          addr421:
                                                                                                                                          _loc7_ = this.addObject("BIRD_MIGHTY_EAGLE",_loc5_,_loc6_,this.§#!E§.MIGHTY_EAGLE_FLYING_ANGLE * 1.2);
                                                                                                                                          if(_loc9_ || param2)
                                                                                                                                          {
                                                                                                                                             this.mMightyEagleAdded = true;
                                                                                                                                             if(_loc9_)
                                                                                                                                             {
                                                                                                                                                this.§4f§ = 0;
                                                                                                                                                if(!(_loc8_ && this))
                                                                                                                                                {
                                                                                                                                                   _loc7_.§;S§.setScale(1.82);
                                                                                                                                                   addr469:
                                                                                                                                                   this.mMightyEagleTimer = _loc4_;
                                                                                                                                                   §§goto(addr472);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr469);
                                                                                                                                       }
                                                                                                                                       §§goto(addr472);
                                                                                                                                    }
                                                                                                                                    §§goto(addr473);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr421);
                                                                                                                           }
                                                                                                                           §§goto(addr418);
                                                                                                                        }
                                                                                                                        §§goto(addr421);
                                                                                                                     }
                                                                                                                     §§goto(addr387);
                                                                                                                  }
                                                                                                                  §§goto(addr369);
                                                                                                               }
                                                                                                               §§goto(addr469);
                                                                                                            }
                                                                                                            §§goto(addr407);
                                                                                                         }
                                                                                                         §§goto(addr326);
                                                                                                      }
                                                                                                      §§goto(addr318);
                                                                                                   }
                                                                                                   §§goto(addr303);
                                                                                                }
                                                                                                §§goto(addr421);
                                                                                             }
                                                                                             §§goto(addr295);
                                                                                          }
                                                                                          §§goto(addr387);
                                                                                       }
                                                                                       §§goto(addr410);
                                                                                    }
                                                                                    §§goto(addr473);
                                                                                 }
                                                                                 §§goto(addr388);
                                                                              }
                                                                              §§goto(addr306);
                                                                           }
                                                                           §§goto(addr473);
                                                                        }
                                                                        §§goto(addr418);
                                                                     }
                                                                     §§goto(addr248);
                                                                  }
                                                               }
                                                               §§goto(addr302);
                                                            }
                                                            §§goto(addr271);
                                                         }
                                                         §§goto(addr248);
                                                      }
                                                      §§goto(addr302);
                                                   }
                                                   §§goto(addr202);
                                                }
                                                §§goto(addr303);
                                             }
                                             §§goto(addr198);
                                          }
                                          §§goto(addr219);
                                       }
                                       §§goto(addr271);
                                    }
                                    §§goto(addr348);
                                 }
                                 §§goto(addr290);
                              }
                              else
                              {
                                 §§push(this.§4f§);
                                 if(_loc9_)
                                 {
                                    §§push(0);
                                    if(!(_loc8_ && this))
                                    {
                                       if(§§pop() == §§pop())
                                       {
                                          this.§4f§ = this.§?V§.§&!?§;
                                       }
                                       §§goto(addr167);
                                    }
                                    §§goto(addr213);
                                 }
                              }
                              §§goto(addr213);
                           }
                           §§goto(addr388);
                        }
                        §§goto(addr348);
                     }
                     §§goto(addr397);
                  }
                  §§goto(addr73);
               }
               else
               {
                  §§goto(addr51);
               }
            }
            §§goto(addr73);
         }
         addr51:
         §§push(this.mMightyEagleAdded);
         if(!(_loc8_ && this))
         {
            if(§§pop())
            {
               if(_loc9_)
               {
                  §§push(false);
                  if(_loc8_ && param1)
                  {
                     §§goto(addr73);
                  }
               }
               else
               {
                  addr72:
                  §§goto(addr73);
                  §§push(false);
               }
               §§goto(addr73);
            }
            §§goto(addr72);
         }
         return §§pop();
      }
      
      private function §?t§(param1:§;!%§, param2:Number) : Boolean
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc5_:§;!%§ = null;
         if(!(_loc8_ && param1))
         {
            §§push(Boolean(this.§#!E§.MIGHTY_EAGLE_USE_SHADE));
            §§push(Boolean(this.§#!E§.MIGHTY_EAGLE_USE_SHADE));
            if(!_loc8_)
            {
               if(§§pop())
               {
                  if(_loc9_)
                  {
                     §§pop();
                     if(!(_loc8_ && this))
                     {
                        addr46:
                        §§push(!this.§5!I§);
                        if(_loc9_)
                        {
                           addr53:
                           §§push(Boolean(§§pop()));
                           if(Boolean(§§pop()))
                           {
                              if(_loc8_ && _loc3_)
                              {
                              }
                              addr73:
                              if(§§pop())
                              {
                                 if(!(_loc8_ && this))
                                 {
                                    this.§5!I§ = true;
                                    if(_loc9_ || this)
                                    {
                                    }
                                    addr96:
                                    var _loc3_:Number = 3;
                                    addr94:
                                    if(!_loc8_)
                                    {
                                       §§push(this);
                                       §§push(this.mMightyEagleTimer);
                                       if(_loc9_)
                                       {
                                          §§push(§§pop() + param2);
                                       }
                                       §§pop().mMightyEagleTimer = §§pop();
                                       if(!(_loc8_ && param2))
                                       {
                                          addr114:
                                          §§push(this.§?V§.particles);
                                          §§push(§<!6§.§9<§);
                                          §§push(§2!H§.§"!5§);
                                          §§push(§<!6§.§!E§);
                                          §§push(param1.§'[§().GetPosition().x);
                                          if(_loc9_)
                                          {
                                             §§push(_loc3_);
                                             if(!(_loc8_ && param2))
                                             {
                                                §§push(§§pop() - §§pop());
                                                if(_loc9_)
                                                {
                                                   addr140:
                                                   §§push(Math.random() * (_loc3_ * 2));
                                                   if(_loc9_ || param2)
                                                   {
                                                      §§goto(addr154);
                                                   }
                                                   §§goto(addr165);
                                                }
                                                addr154:
                                                §§push(§§pop() + §§pop());
                                                §§push(param1.§'[§().GetPosition().y);
                                                if(_loc9_ || this)
                                                {
                                                   addr165:
                                                   §§push(_loc3_);
                                                   if(!(_loc8_ && _loc3_))
                                                   {
                                                      §§goto(addr183);
                                                   }
                                                   §§push(§§pop() + §§pop());
                                                }
                                                §§goto(addr183);
                                             }
                                             §§goto(addr176);
                                          }
                                          §§goto(addr140);
                                       }
                                       addr183:
                                       §§push(§§pop() - §§pop());
                                       if(!_loc8_)
                                       {
                                          addr176:
                                          §§push(Math.random() * (_loc3_ * 2));
                                       }
                                       §§pop().§4#§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),3500,"",§<!6§.§4!8§(param1.§1>§),0,0,1,0,4);
                                       var _loc4_:* = 1;
                                       §§push(this.mMightyEagleHasTouchedGround);
                                       if(!_loc8_)
                                       {
                                          if(§§pop())
                                          {
                                             param1.§2o§(this.§#!E§.MIGHTY_EAGLE_ROTATION_SPEED * param2);
                                             if(!_loc8_)
                                             {
                                                §§push(-1);
                                                if(!_loc8_)
                                                {
                                                   _loc4_ = §§pop();
                                                   §§goto(addr217);
                                                }
                                             }
                                             §§goto(addr226);
                                          }
                                          else
                                          {
                                             this.mMightyEagleHasTouchedGround = param1.§'[§().GetPosition().y >= -5.5;
                                             this.§]_§ = this.mMightyEagleHasTouchedGround;
                                          }
                                          §§goto(addr485);
                                       }
                                       addr217:
                                       if(this.§]_§)
                                       {
                                          this.§]_§ = false;
                                          if(!_loc8_)
                                          {
                                             this.§?V§.§4!N§();
                                             addr226:
                                             param1.§,H§(§%h§.§=c§);
                                             if(_loc9_)
                                             {
                                                this.mSardineCanAdded = false;
                                                if(!(_loc8_ && param1))
                                                {
                                                   §§push(param1.§;S§);
                                                   if(_loc9_ || param1)
                                                   {
                                                      §§pop().§`4§ = true;
                                                      §§push(param1.§;S§);
                                                   }
                                                   §§pop().§;?§();
                                                }
                                             }
                                             var _loc6_:int = 0;
                                             var _loc7_:* = this.§82§;
                                             while(true)
                                             {
                                                §§push(§§hasnext(_loc7_,_loc6_));
                                                if(!_loc8_)
                                                {
                                                   if(!§§pop())
                                                   {
                                                      if(_loc9_ || _loc3_)
                                                      {
                                                         if(!(_loc8_ && this))
                                                         {
                                                            if(_loc9_ || param1)
                                                            {
                                                               this.§=!=§();
                                                               if(!_loc8_)
                                                               {
                                                                  §§goto(addr374);
                                                               }
                                                               §§goto(addr485);
                                                            }
                                                            §§goto(addr390);
                                                         }
                                                         §§goto(addr461);
                                                      }
                                                      §§goto(addr460);
                                                   }
                                                   else
                                                   {
                                                      _loc5_ = §§nextvalue(_loc6_,_loc7_);
                                                      §§push(Boolean(_loc5_));
                                                      if(_loc9_)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            if(_loc9_ || this)
                                                            {
                                                               §§pop();
                                                               if(_loc9_ || _loc3_)
                                                               {
                                                                  §§push(_loc5_.§72§());
                                                                  if(!(_loc8_ && param2))
                                                                  {
                                                                     addr310:
                                                                     if(!§§pop())
                                                                     {
                                                                        continue;
                                                                     }
                                                                     if(_loc9_ || this)
                                                                     {
                                                                        §§push(_loc5_.§'[§());
                                                                        if(_loc9_ || param1)
                                                                        {
                                                                           §§pop().SetAwake(true);
                                                                           if(_loc8_ && this)
                                                                           {
                                                                              continue;
                                                                           }
                                                                           addr336:
                                                                           §§push(_loc5_.§'[§());
                                                                        }
                                                                        §§pop().SetLinearVelocity(new b2Vec2(0,-18));
                                                                        continue;
                                                                     }
                                                                  }
                                                                  §§goto(addr310);
                                                               }
                                                               §§goto(addr336);
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr310);
                                                   }
                                                }
                                                break;
                                             }
                                             while(true)
                                             {
                                                if(!§§pop())
                                                {
                                                   §§goto(addr461);
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
                                                            if(!(_loc8_ && param2))
                                                            {
                                                               §§push(_loc5_.§72§());
                                                               if(!_loc9_)
                                                               {
                                                               }
                                                               addr439:
                                                               if(§§pop())
                                                               {
                                                                  if(!(_loc8_ && param1))
                                                                  {
                                                                     §§push(_loc5_);
                                                                     §§push(_loc5_.§@!§);
                                                                     if(_loc9_)
                                                                     {
                                                                        §§push(§§pop() * 2);
                                                                     }
                                                                     §§pop().applyDamage(§§pop(),true,true,true);
                                                                  }
                                                               }
                                                            }
                                                            continue;
                                                         }
                                                         §§push(Boolean(§§pop()));
                                                      }
                                                   }
                                                   §§goto(addr439);
                                                }
                                             }
                                          }
                                          §§goto(addr226);
                                       }
                                       addr374:
                                       §§push(this.mMightyEagleTimer > 6000);
                                       if(!(_loc8_ && this))
                                       {
                                          if(§§pop())
                                          {
                                             if(_loc9_)
                                             {
                                                §§pop();
                                                addr390:
                                                §§push(this.isPigsAlive());
                                                if(!_loc8_)
                                                {
                                                   §§push(Boolean(§§pop()));
                                                   if(!_loc9_)
                                                   {
                                                   }
                                                }
                                                §§goto(addr502);
                                             }
                                          }
                                          if(§§pop())
                                          {
                                             _loc6_ = 0;
                                             if(!(_loc8_ && param1))
                                             {
                                                _loc7_ = this.§82§;
                                                while(true)
                                                {
                                                   §§push(§§hasnext(_loc7_,_loc6_));
                                                   break loop0;
                                                }
                                                addr461:
                                                addr460:
                                                addr458:
                                             }
                                             §§goto(addr461);
                                          }
                                          addr485:
                                          param1.§"!@§(param2,new Point(this.§#!E§.MIGHTY_EAGLE_X_DIRECTION,_loc4_ * this.§#!E§.MIGHTY_EAGLE_Y_CHANGE),this.§#!E§.MIGHTY_EAGLE_FLYING_SPEED);
                                          §§push(false);
                                       }
                                       addr502:
                                       return §§pop();
                                    }
                                    §§goto(addr114);
                                 }
                                 addr91:
                                 this.§?V§.§>!8§();
                              }
                              §§goto(addr94);
                           }
                           §§goto(addr73);
                        }
                        §§pop();
                        if(!_loc8_)
                        {
                           §§push(this.mMightyEagleTimer);
                           if(_loc9_)
                           {
                              §§goto(addr73);
                              §§push(§§pop() > this.§#!E§.MIGHTY_EAGLE_SHADING_DELAY);
                           }
                           §§goto(addr96);
                        }
                        §§goto(addr91);
                     }
                     §§goto(addr96);
                  }
                  §§goto(addr73);
               }
            }
            §§goto(addr53);
         }
         §§goto(addr46);
      }
      
      private function §<V§() : void
      {
         var _loc20_:Boolean = true;
         var _loc21_:Boolean = false;
         var _loc1_:§[!N§ = null;
         var _loc2_:Number = NaN;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc6_:§;!%§ = null;
         var _loc7_:* = 0;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:* = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:* = NaN;
         loop0:
         while(this.§ 8§.length > 0)
         {
            _loc1_ = this.§ 8§.shift();
            _loc2_ = _loc1_.§!i§;
            §§push(Number(_loc1_.x));
            if(!(_loc21_ && this))
            {
               _loc3_ = §§pop();
               §§push(Number(_loc1_.y));
               if(!_loc21_)
               {
                  _loc4_ = §§pop();
                  §§push(_loc1_.damage);
                  if(_loc20_)
                  {
                     §§push(Number(§§pop()));
                     if(_loc20_)
                     {
                        _loc5_ = §§pop();
                        §§push(0);
                        if(!_loc21_)
                        {
                           var _loc18_:* = §§pop();
                           if(_loc20_)
                           {
                              for each(_loc6_ in this.§82§)
                              {
                                 §§push(_loc1_.§8!L§ == null);
                                 if(!(_loc21_ && _loc1_))
                                 {
                                    §§push(!§§pop());
                                    if(_loc20_ || _loc3_)
                                    {
                                       addr124:
                                       if(§§pop())
                                       {
                                          if(_loc20_)
                                          {
                                             §§pop();
                                             if(!_loc21_)
                                             {
                                                §§push(_loc1_.§8!L§.indexOf(_loc6_) == -1);
                                                if(!_loc21_)
                                                {
                                                   addr140:
                                                   if(!§§pop())
                                                   {
                                                      continue;
                                                   }
                                                   §§push(_loc6_.§'[§());
                                                   if(_loc20_)
                                                   {
                                                      §§push(§§pop().GetPosition());
                                                      if(!_loc21_)
                                                      {
                                                         §§push(§§pop().x);
                                                         §§push(_loc3_);
                                                         if(!(_loc21_ && _loc1_))
                                                         {
                                                            _loc8_ = §§pop() - §§pop();
                                                            if(_loc20_ || _loc3_)
                                                            {
                                                               §§push(_loc6_.§'[§());
                                                               if(!_loc21_)
                                                               {
                                                                  addr173:
                                                                  §§push(§§pop().GetPosition().y);
                                                                  if(!(_loc21_ && _loc1_))
                                                                  {
                                                                     addr182:
                                                                     §§push(§§pop() - _loc4_);
                                                                     if(!_loc21_)
                                                                     {
                                                                        _loc9_ = §§pop();
                                                                        if(_loc20_)
                                                                        {
                                                                           §§push(Number(Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_)));
                                                                           if(!_loc21_)
                                                                           {
                                                                              addr201:
                                                                              §§push(§§pop());
                                                                              if(_loc20_ || _loc1_)
                                                                              {
                                                                                 _loc10_ = §§pop();
                                                                                 if(§§pop() <= _loc1_.§!i§)
                                                                                 {
                                                                                    _loc11_ = _loc1_.push;
                                                                                    addr217:
                                                                                    §§push(_loc10_);
                                                                                    if(_loc20_ || _loc2_)
                                                                                    {
                                                                                       §§push(1);
                                                                                       if(_loc20_ || _loc1_)
                                                                                       {
                                                                                          if(§§pop() > §§pop())
                                                                                          {
                                                                                             if(_loc20_)
                                                                                             {
                                                                                                §§push(_loc11_);
                                                                                                if(!(_loc21_ && _loc2_))
                                                                                                {
                                                                                                   §§push(_loc10_);
                                                                                                   if(_loc20_ || _loc1_)
                                                                                                   {
                                                                                                      §§push(§§pop() / §§pop());
                                                                                                      if(_loc20_)
                                                                                                      {
                                                                                                         addr256:
                                                                                                         _loc11_ = §§pop();
                                                                                                         if(_loc20_)
                                                                                                         {
                                                                                                            addr259:
                                                                                                            §§push(_loc10_);
                                                                                                            if(!(_loc21_ && this))
                                                                                                            {
                                                                                                               addr267:
                                                                                                               §§push(0);
                                                                                                               if(!(_loc21_ && _loc3_))
                                                                                                               {
                                                                                                                  addr275:
                                                                                                                  if(§§pop() > §§pop())
                                                                                                                  {
                                                                                                                     §§push(_loc11_);
                                                                                                                     if(!(_loc21_ && this))
                                                                                                                     {
                                                                                                                        addr285:
                                                                                                                        §§push(_loc8_);
                                                                                                                        §§push(_loc10_);
                                                                                                                        if(!_loc21_)
                                                                                                                        {
                                                                                                                           §§push(§§pop() / §§pop());
                                                                                                                           if(!(_loc21_ && _loc3_))
                                                                                                                           {
                                                                                                                              _loc12_ = §§pop() * §§pop();
                                                                                                                              addr309:
                                                                                                                              §§push(_loc11_);
                                                                                                                              if(_loc20_ || _loc2_)
                                                                                                                              {
                                                                                                                                 §§push(_loc9_);
                                                                                                                                 if(!_loc21_)
                                                                                                                                 {
                                                                                                                                    addr324:
                                                                                                                                    _loc13_ = §§pop() * (§§pop() / _loc10_);
                                                                                                                                    _loc6_.§'[§().ApplyImpulse(new b2Vec2(_loc12_,_loc13_),new b2Vec2(_loc3_,_loc4_));
                                                                                                                                    addr322:
                                                                                                                                    if(!_loc21_)
                                                                                                                                    {
                                                                                                                                       addr338:
                                                                                                                                       if(_loc10_ > _loc1_.§[!I§)
                                                                                                                                       {
                                                                                                                                          continue;
                                                                                                                                       }
                                                                                                                                       addr342:
                                                                                                                                       §§push(_loc5_);
                                                                                                                                       if(!_loc21_)
                                                                                                                                       {
                                                                                                                                          addr346:
                                                                                                                                          _loc14_ = §§pop();
                                                                                                                                          addr345:
                                                                                                                                          if(!(_loc20_ || _loc2_))
                                                                                                                                          {
                                                                                                                                             continue;
                                                                                                                                          }
                                                                                                                                          addr354:
                                                                                                                                          §§push(_loc10_);
                                                                                                                                          if(_loc20_)
                                                                                                                                          {
                                                                                                                                             addr358:
                                                                                                                                             addr357:
                                                                                                                                             if(§§pop() > 1)
                                                                                                                                             {
                                                                                                                                                if(!(_loc21_ && _loc3_))
                                                                                                                                                {
                                                                                                                                                   §§push(_loc14_);
                                                                                                                                                   if(_loc20_ || _loc1_)
                                                                                                                                                   {
                                                                                                                                                      addr377:
                                                                                                                                                      _loc14_ = §§pop() / _loc10_;
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr377);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             this.§,C§(_loc6_,_loc14_);
                                                                                                                                             continue;
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr377);
                                                                                                                                    }
                                                                                                                                    §§goto(addr354);
                                                                                                                                    addr322:
                                                                                                                                    addr321:
                                                                                                                                    addr323:
                                                                                                                                 }
                                                                                                                                 §§goto(addr322);
                                                                                                                              }
                                                                                                                              §§goto(addr345);
                                                                                                                           }
                                                                                                                           §§goto(addr322);
                                                                                                                        }
                                                                                                                        §§goto(addr321);
                                                                                                                     }
                                                                                                                     §§goto(addr377);
                                                                                                                  }
                                                                                                                  §§goto(addr338);
                                                                                                               }
                                                                                                               §§goto(addr358);
                                                                                                            }
                                                                                                            §§goto(addr323);
                                                                                                         }
                                                                                                         §§goto(addr342);
                                                                                                      }
                                                                                                      §§goto(addr346);
                                                                                                   }
                                                                                                   §§goto(addr377);
                                                                                                }
                                                                                                §§goto(addr256);
                                                                                             }
                                                                                             §§goto(addr322);
                                                                                          }
                                                                                          §§goto(addr259);
                                                                                       }
                                                                                       §§goto(addr275);
                                                                                    }
                                                                                    §§goto(addr267);
                                                                                 }
                                                                                 §§goto(addr338);
                                                                              }
                                                                              §§goto(addr285);
                                                                           }
                                                                           §§goto(addr357);
                                                                        }
                                                                        §§goto(addr309);
                                                                     }
                                                                     §§goto(addr324);
                                                                  }
                                                                  §§goto(addr201);
                                                               }
                                                               §§goto(addr324);
                                                            }
                                                            §§goto(addr217);
                                                         }
                                                         §§goto(addr182);
                                                      }
                                                      §§goto(addr173);
                                                   }
                                                   §§goto(addr324);
                                                }
                                                §§goto(addr140);
                                             }
                                             §§goto(addr309);
                                          }
                                       }
                                    }
                                    §§goto(addr140);
                                 }
                                 §§goto(addr124);
                              }
                           }
                           if(!_loc21_)
                           {
                              §§push(this.§?V§);
                              if(_loc20_)
                              {
                                 §§push(§§pop().particles);
                                 if(_loc20_ || _loc2_)
                                 {
                                    §§push(this.§?!G§(_loc1_.type));
                                    if(!(_loc21_ && _loc1_))
                                    {
                                       §§push(§2!H§.§"!5§);
                                       if(_loc20_)
                                       {
                                          §§push(§<!6§.§8!<§);
                                          if(!(_loc21_ && this))
                                          {
                                             §§push(_loc3_);
                                             if(!(_loc21_ && _loc1_))
                                             {
                                                §§push(_loc4_);
                                                if(!(_loc21_ && _loc1_))
                                                {
                                                   §§pop().§4#§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),600,"",§<!6§.§4Q§,0,0,0,0,1,20,true);
                                                   if(_loc20_ || _loc3_)
                                                   {
                                                      _loc7_ = 30;
                                                      addr461:
                                                      loop14:
                                                      while(true)
                                                      {
                                                         §§push(_loc7_);
                                                         loop6:
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
                                                               §§push(0.75);
                                                               §§push(_loc2_);
                                                               if(_loc20_)
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  while(true)
                                                                  {
                                                                     §§push(Math.random() * _loc2_);
                                                                  }
                                                                  addr468:
                                                               }
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() + §§pop());
                                                                  if(!_loc21_)
                                                                  {
                                                                     _loc15_ = §§pop();
                                                                     §§push(1250);
                                                                     if(!_loc21_)
                                                                     {
                                                                        §§push(Math.random() * 750);
                                                                        if(_loc20_ || this)
                                                                        {
                                                                           §§push(§§pop() + §§pop());
                                                                           if(_loc20_ || _loc3_)
                                                                           {
                                                                              _loc16_ = §§pop();
                                                                              §§push(_loc7_);
                                                                              if(!_loc21_)
                                                                              {
                                                                                 addr504:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(180);
                                                                                    if(_loc21_ && _loc3_)
                                                                                    {
                                                                                       continue loop4;
                                                                                    }
                                                                                    §§push(§§pop() / Math.PI);
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(Number(§§pop() / §§pop()));
                                                                                       if(!(_loc21_ && _loc1_))
                                                                                       {
                                                                                          break loop4;
                                                                                       }
                                                                                       addr582:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(int(§§pop()));
                                                                                          if(!(_loc20_ || _loc3_))
                                                                                          {
                                                                                             continue loop6;
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             _loc7_ = §§pop();
                                                                                             if(_loc20_ || this)
                                                                                             {
                                                                                                continue loop14;
                                                                                             }
                                                                                             continue loop0;
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 addr504:
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§push(5);
                                                                                 if(_loc21_)
                                                                                 {
                                                                                    continue loop4;
                                                                                 }
                                                                                 §§goto(addr582);
                                                                                 §§push(§§pop() + §§pop());
                                                                              }
                                                                              addr578:
                                                                           }
                                                                           break loop4;
                                                                        }
                                                                        §§goto(addr515);
                                                                     }
                                                                     §§goto(addr504);
                                                                  }
                                                                  §§goto(addr582);
                                                               }
                                                            }
                                                            addr524:
                                                            while(true)
                                                            {
                                                               _loc17_ = §§pop();
                                                               §§push(this.§?V§);
                                                               addr527:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop().particles);
                                                                  addr528:
                                                                  while(true)
                                                                  {
                                                                     §§push(§<!6§.§=,§);
                                                                     addr530:
                                                                     while(true)
                                                                     {
                                                                        §§push(§2!H§.§"!5§);
                                                                        addr532:
                                                                        while(true)
                                                                        {
                                                                           §§push(§<!6§.§!E§);
                                                                           addr534:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc3_);
                                                                              addr535:
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc4_);
                                                                                 addr536:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc16_);
                                                                                    §§push("");
                                                                                    §§push(§<!6§.§4Q§);
                                                                                    §§push(_loc15_);
                                                                                    if(!_loc21_)
                                                                                    {
                                                                                       §§push(§§pop() * Math.cos(_loc17_));
                                                                                    }
                                                                                    §§push(_loc15_);
                                                                                    if(!_loc21_)
                                                                                    {
                                                                                       addr557:
                                                                                       §§push(-§§pop());
                                                                                       if(_loc20_)
                                                                                       {
                                                                                          addr553:
                                                                                          §§push(§§pop() * Math.sin(_loc17_));
                                                                                       }
                                                                                       §§pop().§4#§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),20,0);
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc7_);
                                                                                          if(!(_loc21_ && this))
                                                                                          {
                                                                                             §§goto(addr578);
                                                                                          }
                                                                                          §§goto(addr590);
                                                                                          §§goto(addr557);
                                                                                       }
                                                                                       addr560:
                                                                                    }
                                                                                    §§goto(addr553);
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
                                                   §§goto(addr560);
                                                }
                                                §§goto(addr536);
                                             }
                                             §§goto(addr535);
                                          }
                                          §§goto(addr534);
                                       }
                                       §§goto(addr532);
                                    }
                                    §§goto(addr530);
                                 }
                                 §§goto(addr528);
                              }
                              §§goto(addr527);
                           }
                           §§goto(addr461);
                        }
                        §§goto(addr504);
                     }
                  }
                  §§goto(addr468);
               }
               §§goto(addr582);
            }
            §§goto(addr524);
         }
      }
      
      protected function §,C§(param1:§;!%§, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            param1.applyDamage(param2,false,false,false,true);
         }
      }
      
      protected function §?!G§(param1:int) : String
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(param1);
         if(_loc3_ && this)
         {
         }
         switch(§§pop())
         {
         }
         return §<!6§.§#7§;
      }
      
      public function §;2§(param1:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:§;!%§ = null;
         var _loc3_:* = int(this.§82§.length - 1);
         while(_loc3_ >= 0)
         {
            _loc2_ = this.§82§[_loc3_];
            if(!(_loc5_ || this))
            {
               continue;
            }
            if(_loc2_.§@!-§())
            {
               if(this.§#!1§(_loc2_,param1))
               {
                  this.§5k§(_loc3_,false,false,false);
                  if(_loc4_ && _loc2_)
                  {
                     addr98:
                     this.§5k§(_loc3_,false,false,false);
                     if(!_loc5_)
                     {
                        addr151:
                        if(_loc2_.§;8§())
                        {
                           if(_loc4_)
                           {
                              continue;
                           }
                           _loc2_.update(param1);
                           if(_loc4_)
                           {
                              continue;
                           }
                        }
                     }
                  }
                  else
                  {
                     addr62:
                  }
                  addr162:
                  §§push(_loc3_);
                  if(!_loc4_)
                  {
                     §§push(§§pop() - 1);
                  }
                  _loc3_ = §§pop();
                  continue;
               }
               §§goto(addr62);
            }
            else
            {
               if(_loc2_.§"!"§())
               {
                  this.§?t§(_loc2_,param1);
               }
               else
               {
                  §§push(this.§0u§(_loc2_));
                  if(_loc5_ || _loc3_)
                  {
                     if(§§pop())
                     {
                        if(!_loc4_)
                        {
                           _loc2_.§,H§(§%h§.§"h§);
                        }
                        §§goto(addr98);
                     }
                     else
                     {
                        §§push(_loc2_.isReadyToBeRemoved(param1));
                        if(_loc5_)
                        {
                           if(§§pop())
                           {
                              if(!(_loc4_ && param1))
                              {
                                 _loc2_.§,H§(§%h§.§"h§);
                                 if(_loc4_)
                                 {
                                    continue;
                                 }
                                 this.§5k§(_loc3_,false,true,true);
                              }
                              §§goto(addr162);
                           }
                           else
                           {
                              §§push(Boolean(_loc2_.§-!+§()));
                              if(!Boolean(_loc2_.§-!+§()))
                              {
                                 if(!_loc4_)
                                 {
                                    addr150:
                                    §§pop();
                                    §§goto(addr151);
                                 }
                              }
                              §§goto(addr151);
                           }
                        }
                     }
                     §§goto(addr151);
                  }
                  §§goto(addr150);
               }
               §§goto(addr162);
            }
         }
         if(_loc5_)
         {
            this.§<V§();
         }
      }
      
      private function §=!=§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§4c§ = null;
         for each(_loc1_ in this.§]J§)
         {
            if(!_loc4_)
            {
               if(_loc1_.type != §`8§.§9!+§)
               {
                  if(_loc5_ || _loc1_)
                  {
                     this.§?V§.§'O§.§[!C§.DestroyJoint(_loc1_.§<,§);
                  }
               }
            }
         }
      }
      
      public function §`W§() : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§;!%§ = null;
         var _loc1_:int = 0;
         while(true)
         {
            if(_loc1_ >= this.§82§.length)
            {
               return false;
            }
            _loc2_ = this.§82§[_loc1_];
            if(_loc3_)
            {
               addr65:
               break;
            }
            §§push(_loc2_.explode());
            if(_loc3_ && _loc2_)
            {
               return §§pop();
            }
            if(§§pop())
            {
               if(_loc4_)
               {
                  break;
               }
            }
            else
            {
               _loc1_++;
            }
         }
         §§goto(addr65);
         §§push(true);
      }
      
      public function §0u§(param1:§;!%§) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(Boolean(param1));
            §§push(Boolean(param1));
            if(!(_loc2_ && _loc3_))
            {
               if(§§pop())
               {
                  if(_loc3_)
                  {
                     §§pop();
                     if(_loc3_)
                     {
                        §§push(param1.§;!+§.§"7§() == §5b§.§-!G§);
                        if(!_loc2_)
                        {
                           addr55:
                           §§push(Boolean(!§§pop()));
                           if(_loc3_ || _loc3_)
                           {
                              addr64:
                              if(§§pop())
                              {
                                 if(_loc3_)
                                 {
                                    §§pop();
                                    if(_loc3_)
                                    {
                                       addr81:
                                       §§push(this.§?V§.§%>§.§^2§(param1.§'[§().GetPosition().x,param1.§'[§().GetPosition().y));
                                       if(_loc3_ || param1)
                                       {
                                          §§push(Boolean(§§pop()));
                                          if(_loc3_)
                                          {
                                             addr103:
                                             if(§§pop())
                                             {
                                                if(!_loc2_)
                                                {
                                                   §§goto(addr107);
                                                }
                                                else
                                                {
                                                   addr108:
                                                   §§push(false);
                                                }
                                             }
                                             §§goto(addr108);
                                          }
                                          return §§pop();
                                       }
                                       §§goto(addr107);
                                    }
                                    §§goto(addr108);
                                 }
                                 §§goto(addr107);
                              }
                           }
                           §§goto(addr103);
                        }
                        §§goto(addr107);
                     }
                     §§goto(addr81);
                  }
                  §§goto(addr55);
               }
            }
            §§goto(addr64);
         }
         addr107:
         return true;
      }
      
      public function §5k§(param1:int, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc6_:§4c§ = null;
         var _loc7_:§=t§ = null;
         if(_loc12_)
         {
            if(param1 < 0)
            {
               if(_loc12_)
               {
                  return;
               }
            }
         }
         var _loc5_:§;!%§;
         if((_loc5_ = this.§82§[param1]).§72§())
         {
            if(!_loc13_)
            {
               var _loc8_:*;
               §§push((_loc8_ = this).§5h§);
               if(!(_loc13_ && this))
               {
                  §§push(§§pop() + 1);
               }
               var _loc9_:* = §§pop();
               if(_loc12_)
               {
                  _loc8_.§5h§ = _loc9_;
               }
               if(_loc12_)
               {
                  addr106:
                  if(_loc5_ == this.§?V§.activeObject)
                  {
                     addr111:
                     §§push(this.§?V§);
                     if(!_loc13_)
                     {
                        §§pop().activeObject = null;
                        if(_loc12_ || param1)
                        {
                           addr124:
                           §§push(param2);
                           if(!_loc13_)
                           {
                              §§push(Boolean(§§pop()));
                              if(!_loc13_)
                              {
                                 if(§§pop())
                                 {
                                    §§pop();
                                    if(_loc12_)
                                    {
                                       §§push(_loc5_.§;!+§.score);
                                       if(!_loc13_)
                                       {
                                          §§push(§§pop() > 0);
                                          if(_loc12_)
                                          {
                                             addr144:
                                             if(§§pop())
                                             {
                                                addr145:
                                                §§push(this.§?V§);
                                                §§push(_loc5_.§;!+§.score);
                                                §§push(§0!'§.§=!E§);
                                                §§push(true);
                                                §§push(_loc5_.§'[§().GetPosition().x);
                                                §§push(_loc5_.§'[§().GetPosition().y);
                                                if(_loc12_ || param3)
                                                {
                                                   §§push(3);
                                                   if(_loc12_ || param3)
                                                   {
                                                      addr177:
                                                      §§push(§§pop() - §§pop());
                                                      §§push(§<!6§.§-S§(_loc5_.§1>§));
                                                   }
                                                   §§pop().addScore(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
                                                   if(!_loc13_)
                                                   {
                                                      addr184:
                                                      §§push(param3);
                                                      if(_loc12_ || param1)
                                                      {
                                                         addr192:
                                                         if(§§pop())
                                                         {
                                                            if(!(_loc13_ && param3))
                                                            {
                                                               addr200:
                                                               this.addDestructionParticles(_loc5_,this.§?V§.particles);
                                                               addr206:
                                                               §§push(param4);
                                                               if(!_loc13_)
                                                               {
                                                                  addr209:
                                                                  if(§§pop())
                                                                  {
                                                                     this.checkExplosions(_loc5_);
                                                                     addr239:
                                                                     if(!_loc13_)
                                                                     {
                                                                        addr215:
                                                                        §§push(_loc5_.isTexture());
                                                                     }
                                                                     this.§4!§(_loc5_);
                                                                     this.§05§(_loc5_);
                                                                     _loc8_ = 0;
                                                                     _loc9_ = this.§]J§;
                                                                     loop0:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§hasnext(_loc9_,_loc8_));
                                                                        if(_loc12_)
                                                                        {
                                                                           if(!§§pop())
                                                                           {
                                                                              if(!(_loc13_ && this))
                                                                              {
                                                                                 if(_loc12_ || param2)
                                                                                 {
                                                                                    if(_loc12_)
                                                                                    {
                                                                                       _loc8_ = 0;
                                                                                       if(!(_loc13_ && param3))
                                                                                       {
                                                                                          addr344:
                                                                                          _loc9_ = this.§>!!§;
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§hasnext(_loc9_,_loc8_));
                                                                                             break loop0;
                                                                                          }
                                                                                          addr421:
                                                                                       }
                                                                                       if(!(_loc13_ && this))
                                                                                       {
                                                                                          _loc5_.dispose();
                                                                                       }
                                                                                    }
                                                                                    _loc5_ = null;
                                                                                    if(_loc12_ || param1)
                                                                                    {
                                                                                       this.§82§[param1] = null;
                                                                                       if(!(_loc13_ && param2))
                                                                                       {
                                                                                          this.§82§.splice(param1,1);
                                                                                       }
                                                                                    }
                                                                                    return;
                                                                                 }
                                                                              }
                                                                              §§goto(addr344);
                                                                           }
                                                                           else
                                                                           {
                                                                              _loc6_ = §§nextvalue(_loc8_,_loc9_);
                                                                              if(_loc6_.index1 >= param1)
                                                                              {
                                                                                 if(_loc12_)
                                                                                 {
                                                                                    var _loc10_:*;
                                                                                    var _loc11_:* = (_loc10_ = _loc6_).index1 - 1;
                                                                                    if(_loc12_ || param2)
                                                                                    {
                                                                                       _loc10_.index1 = _loc11_;
                                                                                    }
                                                                                    if(!(_loc12_ || param3))
                                                                                    {
                                                                                       continue;
                                                                                    }
                                                                                    addr289:
                                                                                    if(_loc6_.index2 < param1)
                                                                                    {
                                                                                       continue;
                                                                                    }
                                                                                    if(!(_loc12_ || this))
                                                                                    {
                                                                                       continue;
                                                                                    }
                                                                                 }
                                                                                 _loc11_ = (_loc10_ = _loc6_).index2 - 1;
                                                                                 if(!_loc13_)
                                                                                 {
                                                                                    _loc10_.index2 = _loc11_;
                                                                                 }
                                                                                 continue;
                                                                              }
                                                                              §§goto(addr289);
                                                                           }
                                                                        }
                                                                        break;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        if(!§§pop())
                                                                        {
                                                                           §§goto(addr344);
                                                                        }
                                                                        else
                                                                        {
                                                                           _loc7_ = §§nextvalue(_loc8_,_loc9_);
                                                                           §§push(_loc7_.§#!?§);
                                                                           if(_loc12_ || param1)
                                                                           {
                                                                              §§push(param1);
                                                                              if(_loc12_ || param2)
                                                                              {
                                                                                 if(§§pop() == §§pop())
                                                                                 {
                                                                                    if(_loc12_ || this)
                                                                                    {
                                                                                       _loc7_.§[!%§ = true;
                                                                                       if(_loc13_ && param2)
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                       addr390:
                                                                                       if(_loc7_.§#!?§ < param1)
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                       if(!(_loc12_ || param3))
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                    }
                                                                                    §§push((_loc10_ = _loc7_).§#!?§);
                                                                                    if(!_loc13_)
                                                                                    {
                                                                                       §§push(§§pop() - 1);
                                                                                    }
                                                                                    _loc11_ = §§pop();
                                                                                    if(!(_loc13_ && param1))
                                                                                    {
                                                                                       _loc10_.§#!?§ = _loc11_;
                                                                                    }
                                                                                    continue;
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§goto(addr390);
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr215);
                                                               }
                                                               if(!§§pop())
                                                               {
                                                               }
                                                               this.§4t§(_loc5_.sprite);
                                                               if(_loc13_ && this)
                                                               {
                                                               }
                                                            }
                                                            §§goto(addr239);
                                                         }
                                                         §§goto(addr206);
                                                      }
                                                      §§goto(addr209);
                                                   }
                                                   §§goto(addr215);
                                                }
                                                §§goto(addr177);
                                             }
                                             §§goto(addr184);
                                          }
                                          §§goto(addr192);
                                       }
                                       §§goto(addr239);
                                    }
                                    §§goto(addr145);
                                 }
                                 §§goto(addr144);
                              }
                           }
                           §§goto(addr192);
                        }
                        §§goto(addr200);
                     }
                     §§goto(addr145);
                  }
               }
               §§goto(addr124);
            }
            §§goto(addr111);
         }
         else
         {
            §§push(_loc5_.§-!+§());
            if(_loc12_ || param3)
            {
               if(§§pop())
               {
                  §§push((_loc8_ = this).§]O§);
                  if(!(_loc13_ && param1))
                  {
                     §§push(§§pop() - 1);
                  }
                  _loc9_ = §§pop();
                  if(_loc12_ || param1)
                  {
                     _loc8_.§]O§ = _loc9_;
                  }
                  if(_loc12_ || param1)
                  {
                     §§goto(addr106);
                  }
                  §§goto(addr200);
               }
               §§goto(addr106);
            }
         }
         §§goto(addr209);
      }
      
      protected function addDestructionParticles(param1:§;!%§, param2:§2!H§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            param1.addDestructionParticles(param2);
         }
      }
      
      protected function §4t§(param1:Sprite) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(this.§3i§);
         if(_loc3_ || _loc2_)
         {
            if(§§pop().contains(param1))
            {
               if(!_loc2_)
               {
                  addr33:
                  this.§3i§.removeChild(param1);
                  if(!(_loc3_ || this))
                  {
                     addr45:
                     §§push(this.§-!!§);
                     if(_loc3_ || this)
                     {
                        if(§§pop().contains(param1))
                        {
                           if(!_loc2_)
                           {
                              addr71:
                              this.§-!!§.removeChild(param1);
                           }
                           return;
                        }
                        §§push(this.§,M§);
                        if(_loc3_ || this)
                        {
                           if(§§pop().contains(param1))
                           {
                              if(!_loc2_)
                              {
                                 §§goto(addr107);
                              }
                              else
                              {
                                 addr124:
                                 §§push(this.§6_§);
                              }
                           }
                           else
                           {
                              §§push(this.§6_§);
                              if(!(_loc2_ && _loc3_))
                              {
                                 if(§§pop().contains(param1))
                                 {
                                    if(!_loc2_)
                                    {
                                       §§goto(addr124);
                                    }
                                    §§goto(addr128);
                                 }
                                 else
                                 {
                                    return;
                                 }
                              }
                           }
                           §§pop().removeChild(param1);
                           addr128:
                           return;
                        }
                        addr107:
                        this.§,M§.removeChild(param1);
                        return;
                     }
                     §§goto(addr71);
                  }
               }
               return;
            }
            §§goto(addr45);
         }
         §§goto(addr33);
      }
      
      protected function checkExplosions(param1:§;!%§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            §§push(param1.§@]§());
            if(!(_loc3_ && param1))
            {
               §§push(§§pop().toUpperCase() == "WHITE_EGG");
               if(!(_loc3_ && param1))
               {
                  if(!§§pop())
                  {
                     if(_loc2_ || param1)
                     {
                        addr61:
                        §§pop();
                        if(!_loc3_)
                        {
                           §§push(param1.§&d§());
                           if(!_loc2_)
                           {
                           }
                           §§goto(addr69);
                        }
                        §§goto(addr72);
                     }
                     §§push(Boolean(§§pop()));
                  }
                  addr69:
                  if(§§pop())
                  {
                     if(_loc2_)
                     {
                        addr72:
                        if(param1.§1>§.toUpperCase() == §#$§.§"!!§)
                        {
                           if(!_loc3_)
                           {
                              this.addExplosions(§[!N§.§1!9§,param1.§'[§().GetPosition().x,param1.§'[§().GetPosition().y);
                              if(_loc2_ || _loc2_)
                              {
                              }
                           }
                        }
                        else
                        {
                           this.addExplosions(§[!N§.§%-§,param1.§'[§().GetPosition().x,param1.§'[§().GetPosition().y);
                        }
                        §§goto(addr122);
                     }
                  }
                  addr122:
                  return;
               }
               §§goto(addr61);
            }
         }
         §§goto(addr72);
      }
      
      public function §&I§(param1:Object, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && this))
         {
            this.§5k§(this.§82§.indexOf(param1),param2,param3,param4);
         }
      }
      
      public function §?!<§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && this))
         {
            §§push(this.§7^§);
            if(_loc3_ || param2)
            {
               §§push(param1);
               if(!(_loc4_ && param2))
               {
                  §§push(-§§pop());
                  if(!(_loc4_ && _loc3_))
                  {
                     addr68:
                     §§pop().x = §§pop();
                     §§goto(addr83);
                  }
                  §§pop().y = §§pop();
                  addr83:
                  if(!_loc4_)
                  {
                     addr73:
                     §§push(this.§7^§);
                     §§push(param2);
                     if(!(_loc4_ && _loc3_))
                     {
                        §§push(-§§pop());
                     }
                  }
                  return;
               }
               §§goto(addr68);
            }
            §§goto(addr73);
         }
         §§goto(addr68);
      }
      
      public function isPigsAlive(param1:Boolean = false) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§;!%§ = null;
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= this.§82§.length)
            {
               return false;
            }
            _loc3_ = this.§82§[_loc2_] as §;!%§;
            if(_loc5_ || param1)
            {
               §§push(Boolean(_loc3_));
               if(!(_loc4_ && _loc2_))
               {
                  §§push(§§pop());
                  if(_loc5_)
                  {
                     if(§§pop())
                     {
                        §§pop();
                        §§push(_loc3_.§72§());
                        if(_loc5_)
                        {
                           §§push(Boolean(§§pop()));
                        }
                        break;
                     }
                     §§push(§§pop());
                     if(_loc5_ || param1)
                     {
                        if(§§pop())
                        {
                           §§pop();
                           §§push(_loc3_.§`Y§);
                           if(_loc5_ || this)
                           {
                              §§push(0);
                              if(_loc5_ || _loc2_)
                              {
                                 §§push(§§pop() > §§pop());
                                 if(_loc5_ || param1)
                                 {
                                    addr105:
                                    if(§§pop())
                                    {
                                       addr106:
                                       §§push(param1);
                                       if(!(_loc4_ && param1))
                                       {
                                          addr115:
                                          §§push(!§§pop());
                                          §§push(!§§pop());
                                          if(!(_loc4_ && _loc3_))
                                          {
                                             addr123:
                                             if(!§§pop())
                                             {
                                                if(!(_loc4_ && _loc3_))
                                                {
                                                   §§pop();
                                                   if(!_loc4_)
                                                   {
                                                      §§push(_loc3_.§;S§);
                                                      if(!_loc4_)
                                                      {
                                                         §§push(§§pop().mTryToBlink);
                                                         if(!_loc4_)
                                                         {
                                                            §§push(0);
                                                            if(!_loc5_)
                                                            {
                                                               addr164:
                                                               §§push(§§pop() <= §§pop());
                                                               if(_loc5_)
                                                               {
                                                                  §§goto(addr167);
                                                               }
                                                            }
                                                            addr167:
                                                            §§push(§§pop() <= §§pop());
                                                            if(§§pop() <= §§pop())
                                                            {
                                                               if(_loc5_)
                                                               {
                                                                  §§pop();
                                                                  §§push(_loc3_.§;S§);
                                                               }
                                                               break;
                                                            }
                                                            if(§§pop())
                                                            {
                                                               if(!_loc4_)
                                                               {
                                                                  addr170:
                                                                  §§push(true);
                                                                  break;
                                                               }
                                                            }
                                                            else
                                                            {
                                                               addr172:
                                                               _loc2_++;
                                                            }
                                                            continue;
                                                            break;
                                                         }
                                                         addr163:
                                                         §§goto(addr164);
                                                         §§push(0);
                                                      }
                                                      §§goto(addr163);
                                                      §§push(§§pop().mTryToScream);
                                                   }
                                                   §§goto(addr170);
                                                }
                                                break;
                                             }
                                          }
                                       }
                                       §§goto(addr167);
                                    }
                                    §§goto(addr172);
                                 }
                                 §§goto(addr115);
                              }
                              §§goto(addr164);
                           }
                           §§goto(addr163);
                        }
                        §§goto(addr105);
                     }
                  }
                  §§goto(addr123);
               }
               break;
            }
            §§goto(addr106);
         }
         return §§pop();
      }
      
      public function §,v§(param1:Boolean = false) : int
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:§;!%§ = null;
         var _loc2_:int = 0;
         var _loc3_:int = this.§82§.length - 1;
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
               §§push(Boolean(_loc4_ = this.§82§[_loc3_] as §;!%§));
               if(!(_loc6_ && _loc3_))
               {
                  §§push(§§pop());
                  if(!_loc6_)
                  {
                     if(§§pop())
                     {
                        if(!_loc6_)
                        {
                           §§pop();
                           §§push(_loc4_.§72§());
                           if(_loc5_)
                           {
                              §§push(Boolean(§§pop()));
                              if(_loc5_)
                              {
                                 addr62:
                                 §§push(§§pop());
                                 if(!(_loc6_ && this))
                                 {
                                    if(§§pop())
                                    {
                                       if(!_loc5_)
                                       {
                                       }
                                       addr105:
                                       §§pop();
                                       §§push(_loc4_.§;S§);
                                       if(_loc5_)
                                       {
                                          §§push(§§pop().mTryToBlink);
                                          if(!_loc6_)
                                          {
                                             §§push(0);
                                             if(_loc5_ || _loc3_)
                                             {
                                                addr147:
                                                §§push(§§pop() <= §§pop());
                                                if(§§pop() <= §§pop())
                                                {
                                                   if(!(_loc6_ && _loc3_))
                                                   {
                                                      addr141:
                                                      §§pop();
                                                      addr146:
                                                      §§push(_loc4_.§;S§.mTryToScream <= 0);
                                                   }
                                                }
                                                if(§§pop())
                                                {
                                                   _loc2_++;
                                                }
                                                continue;
                                             }
                                          }
                                       }
                                       §§goto(addr146);
                                    }
                                    addr92:
                                    if(!§§pop())
                                    {
                                       continue;
                                    }
                                    if(_loc5_)
                                    {
                                       §§push(param1);
                                       if(_loc5_)
                                       {
                                          addr99:
                                          §§push(!§§pop());
                                          §§push(!§§pop());
                                          if(_loc5_)
                                          {
                                             addr102:
                                             if(!§§pop())
                                             {
                                                if(!_loc6_)
                                                {
                                                   §§goto(addr105);
                                                }
                                                §§goto(addr141);
                                             }
                                          }
                                          §§goto(addr147);
                                       }
                                    }
                                    §§goto(addr141);
                                 }
                                 §§goto(addr102);
                              }
                              §§pop();
                              §§push(_loc4_.§`Y§);
                              if(_loc5_)
                              {
                                 §§push(0);
                                 if(!_loc6_)
                                 {
                                    §§goto(addr92);
                                    §§push(§§pop() > §§pop());
                                 }
                              }
                              §§goto(addr141);
                           }
                           §§goto(addr105);
                        }
                        §§goto(addr99);
                     }
                     §§goto(addr62);
                  }
                  §§goto(addr102);
               }
               §§goto(addr92);
            }
            break;
         }
         return §§pop();
      }
      
      public function §3`§() : int
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§;!%§ = null;
         var _loc1_:int = 0;
         var _loc3_:int = 0;
         for each(_loc2_ in this.§82§)
         {
            if(!_loc5_)
            {
               §§push(Boolean(_loc2_));
               if(!_loc5_)
               {
                  §§push(§§pop());
                  if(!(_loc5_ && _loc3_))
                  {
                     if(§§pop())
                     {
                        if(_loc6_ || this)
                        {
                           §§pop();
                           if(!_loc6_)
                           {
                              continue;
                           }
                           addr70:
                           §§push(_loc2_.§-A§());
                           if(!_loc5_)
                           {
                              addr84:
                              §§push(Boolean(§§pop()));
                              if(_loc5_)
                              {
                              }
                              addr102:
                              if(§§pop())
                              {
                                 if(_loc6_)
                                 {
                                    _loc1_++;
                                 }
                              }
                              continue;
                           }
                           addr88:
                           if(!§§pop())
                           {
                              addr89:
                              §§pop();
                              if(_loc5_)
                              {
                                 continue;
                              }
                              §§push(_loc2_.§?8§());
                              if(_loc6_ || _loc3_)
                              {
                                 §§goto(addr102);
                                 §§push(Boolean(§§pop()));
                              }
                           }
                           §§goto(addr102);
                        }
                     }
                     §§goto(addr84);
                  }
                  §§goto(addr88);
               }
               §§goto(addr89);
            }
            §§goto(addr70);
         }
         return _loc1_;
      }
      
      public function §9!2§() : int
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§;!%§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§82§)
         {
            if(_loc6_)
            {
               §§push(Boolean(_loc2_));
               if(_loc6_ || _loc1_)
               {
                  if(§§pop())
                  {
                     if(!_loc5_)
                     {
                        §§pop();
                        if(_loc5_)
                        {
                           continue;
                        }
                        §§push(_loc2_.isTexture());
                        if(!_loc5_)
                        {
                           addr77:
                           §§push(Boolean(§§pop()));
                        }
                     }
                  }
                  if(§§pop())
                  {
                     if(_loc6_)
                     {
                        addr81:
                        _loc1_++;
                     }
                  }
                  continue;
               }
               §§goto(addr77);
            }
            §§goto(addr81);
         }
         return _loc1_;
      }
      
      public function makePigsSmile(param1:Number = 1) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§;!%§ = null;
         var _loc2_:* = int(this.§82§.length - 1);
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§82§[_loc2_];
            if(!(_loc5_ || _loc2_))
            {
               continue;
            }
            §§push(Boolean(_loc3_));
            if(_loc5_)
            {
               §§push(§§pop());
               if(_loc5_ || param1)
               {
                  if(§§pop())
                  {
                     if(!(_loc4_ && param1))
                     {
                        §§pop();
                        if(_loc5_ || _loc3_)
                        {
                           §§push(_loc3_.§72§());
                           if(!_loc4_)
                           {
                              §§push(Boolean(§§pop()));
                              if(!_loc4_)
                              {
                                 addr88:
                                 if(§§pop())
                                 {
                                    if(_loc5_)
                                    {
                                       §§pop();
                                       if(!(_loc4_ && _loc2_))
                                       {
                                          addr104:
                                          if(_loc3_.§`Y§ > 0)
                                          {
                                             if(_loc5_ || _loc3_)
                                             {
                                                addr122:
                                                §§push(_loc3_.§;S§);
                                                §§push(§[!J§.§`"§);
                                                if(!_loc4_)
                                                {
                                                   §§push(§§pop() * param1);
                                                }
                                                §§pop().mTryToScream = §§pop();
                                                if(!(_loc5_ || _loc2_))
                                                {
                                                   continue;
                                                }
                                             }
                                          }
                                          §§push(_loc2_);
                                          if(_loc5_ || param1)
                                          {
                                             §§push(§§pop() - 1);
                                          }
                                          _loc2_ = §§pop();
                                       }
                                       continue;
                                    }
                                 }
                              }
                           }
                           §§goto(addr104);
                        }
                        §§goto(addr122);
                     }
                     §§goto(addr104);
                  }
               }
            }
            §§goto(addr88);
         }
      }
      
      public function §@#§() : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§;!%§ = null;
         var _loc1_:* = int(this.§82§.length - 1);
         while(true)
         {
            if(_loc1_ < 0)
            {
               return false;
            }
            _loc2_ = this.§82§[_loc1_] as §;!%§;
            if(_loc3_ || _loc1_)
            {
               §§push(Boolean(_loc2_));
               if(!_loc4_)
               {
                  §§push(§§pop());
                  if(!_loc4_)
                  {
                     if(§§pop())
                     {
                        §§pop();
                        if(!(_loc3_ || this))
                        {
                           continue;
                        }
                        §§push(_loc2_.§-!+§());
                        if(_loc3_ || _loc2_)
                        {
                           addr78:
                           §§push(Boolean(§§pop()));
                           if(!(_loc3_ || _loc2_))
                           {
                              return §§pop();
                           }
                           addr87:
                           addr88:
                           if(§§pop())
                           {
                              §§pop();
                              if(!_loc3_)
                              {
                                 continue;
                              }
                              §§push(_loc2_.§`Y§ > 0);
                           }
                           if(§§pop())
                           {
                              if(_loc3_ || this)
                              {
                                 break;
                              }
                           }
                           else
                           {
                              §§push(_loc1_);
                              if(!_loc4_)
                              {
                                 §§push(§§pop() - 1);
                              }
                              _loc1_ = §§pop();
                           }
                           continue;
                        }
                     }
                     §§goto(addr87);
                  }
                  §§goto(addr88);
               }
               §§goto(addr78);
            }
            break;
         }
         §§goto(addr78);
         §§push(true);
      }
      
      public function isWorldAtSleep() : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§;!%§ = null;
         var _loc1_:int = this.§82§.length - 1;
         while(true)
         {
            if(_loc1_ < 0)
            {
               return true;
            }
            _loc2_ = this.§82§[_loc1_] as §;!%§;
            §§push(Boolean(_loc2_));
            if(_loc4_ || _loc2_)
            {
               §§push(§§pop());
               if(_loc4_ || _loc3_)
               {
                  if(§§pop())
                  {
                     if(!(_loc3_ && _loc3_))
                     {
                        §§pop();
                        if(!(_loc3_ && this))
                        {
                           §§push(_loc2_.§`Y§);
                           if(_loc4_)
                           {
                              §§push(0);
                              if(_loc4_)
                              {
                                 §§push(§§pop() > §§pop());
                                 if(_loc4_ || _loc3_)
                                 {
                                    addr85:
                                    §§push(Boolean(§§pop()));
                                    §§push(Boolean(§§pop()));
                                    if(_loc4_ || _loc1_)
                                    {
                                       if(§§pop())
                                       {
                                          §§pop();
                                          if(_loc4_ || _loc2_)
                                          {
                                             §§push(_loc2_.§@%§);
                                             if(!_loc4_)
                                             {
                                                continue;
                                             }
                                             §§push(§§pop() == each.§@i§);
                                             if(!(_loc3_ && _loc3_))
                                             {
                                                addr129:
                                                if(!§§pop())
                                                {
                                                   if(!_loc3_)
                                                   {
                                                      §§push(_loc2_.§'<§());
                                                      if(!_loc3_)
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                      }
                                                      §§push(§§pop());
                                                      if(!(_loc3_ && _loc1_))
                                                      {
                                                         if(§§pop())
                                                         {
                                                            §§pop();
                                                            addr150:
                                                            if(!_loc2_.§switch§())
                                                            {
                                                               if(!(_loc3_ && _loc3_))
                                                               {
                                                                  §§goto(addr158);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               addr162:
                                                               §§push(_loc2_.§-!+§());
                                                               if(!_loc3_)
                                                               {
                                                                  §§push(Boolean(§§pop()));
                                                                  if(!_loc4_)
                                                                  {
                                                                     return §§pop();
                                                                  }
                                                                  addr179:
                                                                  if(§§pop() && _loc2_.§`Y§ > 0)
                                                                  {
                                                                     break;
                                                                  }
                                                                  addr196:
                                                                  §§push(_loc1_);
                                                                  if(!_loc3_)
                                                                  {
                                                                     §§push(§§pop() - 1);
                                                                  }
                                                                  continue;
                                                                  addr188:
                                                               }
                                                               §§goto(addr179);
                                                            }
                                                         }
                                                         §§goto(addr150);
                                                      }
                                                      §§goto(addr179);
                                                   }
                                                }
                                                §§goto(addr196);
                                             }
                                             §§goto(addr150);
                                          }
                                          §§goto(addr162);
                                       }
                                       §§goto(addr129);
                                    }
                                    §§goto(addr179);
                                 }
                                 §§goto(addr129);
                              }
                           }
                           §§goto(addr185);
                        }
                        addr158:
                        return false;
                     }
                  }
                  §§goto(addr85);
               }
               §§goto(addr179);
            }
            §§goto(addr150);
         }
         §§goto(addr188);
         §§push(false);
      }
      
      public function §!!D§(param1:Boolean = false) : §;!%§
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc7_:§;!%§ = null;
         if(_loc8_)
         {
            if(!this.isPigsAlive())
            {
               if(_loc8_ || param1)
               {
                  §§goto(addr31);
               }
            }
            var _loc2_:int = this.§82§.length;
            §§push(this.§,v§(param1));
            if(!_loc9_)
            {
               §§push(int(§§pop()));
            }
            var _loc3_:* = §§pop();
            if(_loc8_ || _loc3_)
            {
               §§push(_loc3_);
               if(_loc8_)
               {
                  if(§§pop() == 0)
                  {
                     if(_loc8_ || param1)
                     {
                        §§goto(addr64);
                     }
                  }
                  §§push(int(Math.random() * _loc3_));
               }
               var _loc4_:* = §§pop();
               var _loc5_:int = 0;
               var _loc6_:int = 0;
               while(true)
               {
                  if(_loc6_ >= _loc2_)
                  {
                     return null;
                  }
                  §§push(Boolean(_loc7_ = this.§82§[_loc6_] as §;!%§));
                  §§push(Boolean(_loc7_ = this.§82§[_loc6_] as §;!%§));
                  if(_loc8_ || param1)
                  {
                     if(§§pop())
                     {
                        if(!(_loc9_ && _loc2_))
                        {
                           §§pop();
                           if(!_loc9_)
                           {
                              §§push(_loc7_.§72§());
                              if(_loc8_ || param1)
                              {
                                 addr129:
                                 §§push(Boolean(§§pop()));
                                 §§push(Boolean(§§pop()));
                                 if(_loc8_)
                                 {
                                    if(§§pop())
                                    {
                                       if(_loc8_)
                                       {
                                          §§pop();
                                          §§push(_loc7_.§`Y§);
                                          if(!(_loc9_ && param1))
                                          {
                                             §§push(0);
                                             if(_loc8_)
                                             {
                                                addr149:
                                                if(§§pop() > §§pop())
                                                {
                                                   if(!_loc8_)
                                                   {
                                                      continue;
                                                   }
                                                   addr152:
                                                   §§push(!param1);
                                                   §§push(!param1);
                                                   if(_loc8_ || _loc2_)
                                                   {
                                                      addr162:
                                                      if(!§§pop())
                                                      {
                                                         if(_loc8_ || param1)
                                                         {
                                                            §§pop();
                                                            if(!(_loc9_ && this))
                                                            {
                                                               §§push(_loc7_.§;S§);
                                                               if(!_loc9_)
                                                               {
                                                                  addr214:
                                                                  §§push(§§pop().mTryToBlink);
                                                                  if(!_loc9_)
                                                                  {
                                                                     addr215:
                                                                     §§push(0);
                                                                     if(_loc8_)
                                                                     {
                                                                        §§push(§§pop() <= §§pop());
                                                                        if(_loc8_ || this)
                                                                        {
                                                                           addr197:
                                                                           if(§§pop())
                                                                           {
                                                                              if(!_loc8_)
                                                                              {
                                                                              }
                                                                              addr216:
                                                                              if(§§pop())
                                                                              {
                                                                                 if(_loc8_)
                                                                                 {
                                                                                    if(_loc5_ >= _loc4_)
                                                                                    {
                                                                                       if(!_loc9_)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       _loc5_++;
                                                                                       addr234:
                                                                                       _loc6_++;
                                                                                    }
                                                                                    continue;
                                                                                 }
                                                                              }
                                                                              §§goto(addr234);
                                                                           }
                                                                           §§goto(addr216);
                                                                        }
                                                                        §§pop();
                                                                        §§push(_loc7_.§;S§);
                                                                     }
                                                                     §§goto(addr216);
                                                                     §§push(§§pop() <= §§pop());
                                                                  }
                                                                  §§goto(addr215);
                                                                  §§push(0);
                                                               }
                                                               §§goto(addr214);
                                                               §§push(§§pop().mTryToScream);
                                                            }
                                                            break;
                                                         }
                                                      }
                                                      §§goto(addr216);
                                                   }
                                                   §§goto(addr197);
                                                }
                                                §§goto(addr234);
                                             }
                                             §§goto(addr215);
                                          }
                                          §§goto(addr214);
                                       }
                                       §§goto(addr197);
                                    }
                                    §§goto(addr149);
                                 }
                                 §§goto(addr162);
                              }
                              §§goto(addr149);
                           }
                        }
                        §§goto(addr152);
                     }
                     §§goto(addr129);
                  }
                  §§goto(addr197);
               }
               return _loc7_;
            }
            addr64:
            return null;
         }
         addr31:
         return null;
      }
      
      public function §+v§() : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:* = 0;
         var _loc2_:* = int(this.§82§.length - 1);
         loop0:
         while(true)
         {
            §§push(_loc2_);
            if(_loc3_)
            {
               §§push(0);
               if(!(_loc4_ && _loc2_))
               {
                  while(true)
                  {
                     if(§§pop() < §§pop())
                     {
                        if(_loc3_ || _loc3_)
                        {
                           addr171:
                           §§push(_loc1_);
                           if(!(_loc4_ && _loc2_))
                           {
                              addr184:
                              §§push(int(§§pop() + this.§?V§.slingshot.§+v§()));
                              if(_loc4_ && _loc3_)
                              {
                              }
                              break;
                           }
                           _loc1_ = §§pop();
                        }
                     }
                     else
                     {
                        §§push(_loc1_);
                        §§push((this.§82§[_loc2_] as §;!%§).§;!+§.score);
                        if(!_loc3_)
                        {
                           continue;
                        }
                        §§push(§§pop() + §§pop());
                        if(!(_loc4_ && this))
                        {
                           §§push(int(§§pop()));
                           if(_loc3_ || this)
                           {
                              _loc1_ = §§pop();
                              if(!(_loc4_ && _loc2_))
                              {
                                 if((this.§82§[_loc2_] as §;!%§).§'<§())
                                 {
                                    if(_loc4_ && _loc2_)
                                    {
                                       continue loop0;
                                    }
                                    §§push(_loc1_);
                                    if(!(_loc4_ && this))
                                    {
                                       §§push(§ !§.§6]§.getValue());
                                       if(_loc4_)
                                       {
                                          continue;
                                       }
                                       §§push(§§pop() + §§pop() * int((this.§82§[_loc2_] as §;!%§).§@!§));
                                       if(_loc3_ || _loc2_)
                                       {
                                          addr117:
                                          §§push(int(§§pop()));
                                          if(!(_loc4_ && _loc1_))
                                          {
                                             _loc1_ = §§pop();
                                             if(!_loc4_)
                                             {
                                                addr128:
                                                §§push(_loc2_);
                                                if(_loc3_ || _loc2_)
                                                {
                                                   §§push(§§pop() - 1);
                                                   if(_loc3_)
                                                   {
                                                      addr139:
                                                      _loc2_ = §§pop();
                                                      if(!_loc4_)
                                                      {
                                                         continue loop0;
                                                      }
                                                   }
                                                   §§goto(addr171);
                                                }
                                                §§goto(addr139);
                                             }
                                             addr193:
                                             §§push(_loc1_);
                                             break;
                                          }
                                          break;
                                       }
                                       §§goto(addr184);
                                    }
                                    §§goto(addr139);
                                 }
                              }
                              §§goto(addr128);
                           }
                           §§goto(addr184);
                        }
                        §§goto(addr117);
                     }
                     §§goto(addr193);
                  }
                  §§goto(addr194);
               }
               §§goto(addr184);
            }
            addr194:
            return §§pop();
         }
      }
      
      public function §>w§(param1:§;!%§, param2:§;!%§) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(param2 is §5y§);
         §§push(param2 is §5y§);
         if(!(_loc4_ && param2))
         {
            if(§§pop())
            {
               if(!_loc4_)
               {
                  §§pop();
                  if(!(_loc4_ && param2))
                  {
                     §§push(param1 is §5y§);
                     if(_loc3_ || param1)
                     {
                        §§goto(addr58);
                     }
                     §§goto(addr106);
                  }
                  §§goto(addr96);
               }
               §§goto(addr106);
            }
            addr58:
            if(§§pop())
            {
               if(!_loc4_)
               {
                  return true;
               }
            }
            else
            {
               §§push(param1.§4Z§());
               if(_loc3_)
               {
                  §§push(!§§pop());
                  if(_loc3_ || _loc3_)
                  {
                     addr88:
                     if(§§pop())
                     {
                        if(!(_loc4_ && param2))
                        {
                           addr96:
                           §§pop();
                           §§push(param2.§4Z§());
                           if(_loc3_ || param1)
                           {
                              §§goto(addr106);
                           }
                        }
                        §§goto(addr106);
                     }
                     if(§§pop())
                     {
                        §§goto(addr110);
                     }
                     else
                     {
                        addr106:
                        §§push(!§§pop());
                        if(!_loc3_)
                        {
                        }
                        return §§pop();
                        §§push(false);
                     }
                  }
                  §§goto(addr106);
               }
               §§goto(addr96);
            }
            addr110:
            return true;
         }
         §§goto(addr88);
      }
      
      public function §"i§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            this.mSardineCanAdded = true;
            if(_loc2_)
            {
               addr29:
               this.§]O§ = 0;
            }
            return;
         }
         §§goto(addr29);
      }
      
      public function objectCollision(param1:§;!%§, param2:§;!%§) : Boolean
      {
         var _loc20_:Boolean = true;
         var _loc21_:Boolean = false;
         var _loc18_:* = NaN;
         var _loc19_:* = NaN;
         if(!(_loc21_ && this))
         {
            §§push(this.mMightyEagleAdded);
            if(_loc20_ || param2)
            {
               if(§§pop())
               {
                  §§push(Boolean(param1.§"!"§()));
                  if(!(_loc21_ && _loc3_))
                  {
                     §§push(§§pop());
                     if(_loc20_ || param2)
                     {
                        if(!§§pop())
                        {
                           §§pop();
                           if(!(_loc21_ && _loc3_))
                           {
                              §§push(param2.§72§());
                              if(!(_loc21_ && _loc3_))
                              {
                                 addr74:
                                 if(§§pop())
                                 {
                                    if(!_loc21_)
                                    {
                                       §§push(param2);
                                       §§push(param2.§@!§);
                                       if(_loc20_)
                                       {
                                          §§push(§§pop() * 2);
                                       }
                                       §§pop().applyDamage(§§pop(),true,true,true,false);
                                       §§push(true);
                                       if(_loc20_ || param1)
                                       {
                                          return §§pop();
                                       }
                                       §§goto(addr133);
                                    }
                                    §§goto(addr136);
                                 }
                                 else
                                 {
                                    §§push(param2.§"!"§());
                                    if(!(_loc21_ && _loc3_))
                                    {
                                       §§push(Boolean(§§pop()));
                                       if(!(_loc21_ && this))
                                       {
                                          §§push(§§pop());
                                          if(_loc20_ || param1)
                                          {
                                             if(!§§pop())
                                             {
                                                if(_loc20_)
                                                {
                                                   addr133:
                                                   §§pop();
                                                   if(_loc20_)
                                                   {
                                                      addr136:
                                                      §§push(param1.§72§());
                                                      if(!_loc21_)
                                                      {
                                                         addr141:
                                                         if(§§pop())
                                                         {
                                                            §§push(param1);
                                                            §§push(param1.§@!§);
                                                            if(_loc20_)
                                                            {
                                                               §§push(§§pop() * 2);
                                                            }
                                                            §§pop().applyDamage(§§pop(),true,true,true,false);
                                                         }
                                                         else
                                                         {
                                                            addr237:
                                                            if(this.§>w§(param1,param2))
                                                            {
                                                               if(!_loc21_)
                                                               {
                                                                  addr245:
                                                                  return false;
                                                                  addr244:
                                                               }
                                                            }
                                                            var _loc3_:Number = 10;
                                                            §§push(param1.§?]§(param2.§@]§()));
                                                            if(_loc20_ || this)
                                                            {
                                                               §§push(Number(§§pop()));
                                                            }
                                                            var _loc4_:* = §§pop();
                                                            §§push(param1.§#!&§(param2.§@]§()));
                                                            if(!_loc21_)
                                                            {
                                                               §§push(Number(§§pop()));
                                                            }
                                                            var _loc5_:* = §§pop();
                                                            §§push(param2.§?]§(param1.§@]§()));
                                                            if(_loc20_ || param1)
                                                            {
                                                               §§push(Number(§§pop()));
                                                            }
                                                            var _loc6_:* = §§pop();
                                                            §§push(param2.§#!&§(param1.§@]§()));
                                                            if(!_loc21_)
                                                            {
                                                               §§push(Number(§§pop()));
                                                            }
                                                            var _loc7_:* = §§pop();
                                                            §§push(param1.§'[§().GetMass());
                                                            if(!(_loc21_ && this))
                                                            {
                                                               §§push(param1.§'[§());
                                                               if(_loc20_)
                                                               {
                                                                  §§push(§§pop().GetLinearVelocity().x);
                                                                  if(_loc20_)
                                                                  {
                                                                     addr335:
                                                                     §§push(§§pop() * §§pop());
                                                                     if(_loc20_ || param1)
                                                                     {
                                                                        addr319:
                                                                        §§push(param2.§'[§().GetMass());
                                                                        if(!(_loc21_ && param1))
                                                                        {
                                                                           §§push(§§pop() * param2.§'[§().GetLinearVelocity().x);
                                                                        }
                                                                     }
                                                                     var _loc8_:Number = §§pop();
                                                                     §§push(param1.§'[§().GetMass());
                                                                     if(!_loc21_)
                                                                     {
                                                                        §§push(param1.§'[§());
                                                                        if(_loc20_ || this)
                                                                        {
                                                                           §§push(§§pop().GetLinearVelocity().y);
                                                                           if(_loc20_ || this)
                                                                           {
                                                                              §§push(§§pop() * §§pop());
                                                                              if(!_loc21_)
                                                                              {
                                                                                 addr365:
                                                                                 §§push(param2.§'[§().GetMass());
                                                                                 if(!_loc21_)
                                                                                 {
                                                                                    addr368:
                                                                                    §§push(§§pop() * param2.§'[§().GetLinearVelocity().y);
                                                                                 }
                                                                                 §§push(§§pop() - §§pop());
                                                                                 if(_loc20_ || param1)
                                                                                 {
                                                                                    §§push(Number(§§pop()));
                                                                                 }
                                                                              }
                                                                              var _loc9_:* = §§pop();
                                                                              §§push(Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_) / _loc3_);
                                                                              if(_loc20_ || _loc3_)
                                                                              {
                                                                                 §§push(Number(§§pop()));
                                                                              }
                                                                              var _loc10_:* = §§pop();
                                                                              §§push(_loc4_);
                                                                              if(_loc20_)
                                                                              {
                                                                                 §§push(§§pop() * _loc10_);
                                                                                 if(_loc20_)
                                                                                 {
                                                                                    §§push(Number(§§pop()));
                                                                                 }
                                                                              }
                                                                              var _loc11_:* = §§pop();
                                                                              §§push(_loc6_);
                                                                              if(!(_loc21_ && this))
                                                                              {
                                                                                 §§push(§§pop() * _loc10_);
                                                                                 if(_loc20_ || this)
                                                                                 {
                                                                                    addr429:
                                                                                    §§push(Number(§§pop()));
                                                                                 }
                                                                                 var _loc12_:* = §§pop();
                                                                                 var _loc13_:Number = Math.max(0,param1.§`Y§);
                                                                                 var _loc14_:Number = Math.max(0,param2.§`Y§);
                                                                                 §§push(param1.applyDamage(_loc12_,true,param2.§-!+§(),_loc14_ == param2.§@!§));
                                                                                 if(!_loc21_)
                                                                                 {
                                                                                    §§push(Number(§§pop()));
                                                                                 }
                                                                                 var _loc15_:* = §§pop();
                                                                                 §§push(param2.applyDamage(_loc11_,true,param1.§-!+§(),_loc13_ == param1.§@!§));
                                                                                 if(_loc20_ || param1)
                                                                                 {
                                                                                    §§push(Number(§§pop()));
                                                                                 }
                                                                                 var _loc16_:* = §§pop();
                                                                                 var _loc17_:Boolean;
                                                                                 §§push(_loc17_ = false);
                                                                                 if(_loc20_)
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       if(_loc20_ || param1)
                                                                                       {
                                                                                          §7!+§.log("--- NEW COLLISION ---");
                                                                                          §§push(§7!+§);
                                                                                          §§push("Mat Dam Factor1 = ");
                                                                                          if(!_loc21_)
                                                                                          {
                                                                                             §§push(_loc4_);
                                                                                             if(!_loc21_)
                                                                                             {
                                                                                                §§push(§§pop() + §§pop());
                                                                                                if(_loc20_ || param2)
                                                                                                {
                                                                                                   §§push(" Mat Dam Factor2 = ");
                                                                                                   if(_loc20_)
                                                                                                   {
                                                                                                      §§push(§§pop() + §§pop());
                                                                                                      if(_loc20_)
                                                                                                      {
                                                                                                         §§push(_loc6_);
                                                                                                         if(_loc20_)
                                                                                                         {
                                                                                                            addr529:
                                                                                                            §§push(§§pop() + §§pop());
                                                                                                            §§push(" Mat Vel Factor1 = ");
                                                                                                            if(_loc20_)
                                                                                                            {
                                                                                                               §§push(§§pop() + §§pop());
                                                                                                               §§push(_loc5_);
                                                                                                               if(!_loc21_)
                                                                                                               {
                                                                                                                  addr543:
                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                  if(!_loc21_)
                                                                                                                  {
                                                                                                                     addr540:
                                                                                                                     §§push(§§pop() + " Mat Vel Factor2 = ");
                                                                                                                     §§push(_loc7_);
                                                                                                                  }
                                                                                                                  §§pop().log(§§pop());
                                                                                                                  if(!_loc21_)
                                                                                                                  {
                                                                                                                     §§push(§7!+§);
                                                                                                                     §§push("Object1: " + param1.§1>§);
                                                                                                                     §§push(" force1 = ");
                                                                                                                     if(_loc20_ || param1)
                                                                                                                     {
                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                        if(_loc20_ || _loc3_)
                                                                                                                        {
                                                                                                                           §§push(_loc11_);
                                                                                                                           if(_loc20_ || param1)
                                                                                                                           {
                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                              §§push(" obj health1 = ");
                                                                                                                              if(!(_loc21_ && param2))
                                                                                                                              {
                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                 if(_loc20_ || param2)
                                                                                                                                 {
                                                                                                                                    addr599:
                                                                                                                                    §§push(_loc13_);
                                                                                                                                    if(_loc20_)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                    }
                                                                                                                                    §§pop().log(§§pop() + §§pop());
                                                                                                                                    §§push(§7!+§);
                                                                                                                                    §§push("Object2: " + param2.§1>§);
                                                                                                                                    if(_loc20_ || _loc3_)
                                                                                                                                    {
                                                                                                                                       §§push(" force2 = ");
                                                                                                                                       if(_loc20_)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                          if(!(_loc21_ && param1))
                                                                                                                                          {
                                                                                                                                             §§push(_loc12_);
                                                                                                                                             if(_loc20_)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                §§push(" obj health2 = ");
                                                                                                                                                if(_loc20_ || param2)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                   §§push(_loc14_);
                                                                                                                                                   if(_loc20_)
                                                                                                                                                   {
                                                                                                                                                      addr642:
                                                                                                                                                      addr652:
                                                                                                                                                      §§push(§§pop() + §§pop() + " new health2 = ");
                                                                                                                                                      if(_loc20_ || param2)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc16_);
                                                                                                                                                      }
                                                                                                                                                      §§pop().log(§§pop());
                                                                                                                                                      §§push(_loc15_ <= 0);
                                                                                                                                                      §§push(_loc15_ <= 0);
                                                                                                                                                      if(_loc20_)
                                                                                                                                                      {
                                                                                                                                                         if(§§pop())
                                                                                                                                                         {
                                                                                                                                                            §§pop();
                                                                                                                                                            if(!_loc21_)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc12_ != 0);
                                                                                                                                                               if(_loc20_)
                                                                                                                                                               {
                                                                                                                                                                  addr669:
                                                                                                                                                                  if(§§pop())
                                                                                                                                                                  {
                                                                                                                                                                     if(!(_loc21_ && param2))
                                                                                                                                                                     {
                                                                                                                                                                        §§push((_loc12_ - _loc13_) / _loc12_);
                                                                                                                                                                        if(!(_loc21_ && this))
                                                                                                                                                                        {
                                                                                                                                                                           §§push(Number(§§pop()));
                                                                                                                                                                        }
                                                                                                                                                                        §§push(§§pop());
                                                                                                                                                                        if(_loc20_ || this)
                                                                                                                                                                        {
                                                                                                                                                                           _loc18_ = §§pop();
                                                                                                                                                                           §§push(Number(§§pop() * _loc7_));
                                                                                                                                                                           if(_loc20_)
                                                                                                                                                                           {
                                                                                                                                                                              if((_loc18_ = §§pop()) > 1)
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc20_ || param2)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr715:
                                                                                                                                                                                    §§push(1);
                                                                                                                                                                                    if(_loc20_ || param2)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                                                                       if(!(_loc21_ && param2))
                                                                                                                                                                                       {
                                                                                                                                                                                          _loc18_ = §§pop();
                                                                                                                                                                                          if(_loc20_ || param1)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr739:
                                                                                                                                                                                             §§push(_loc17_);
                                                                                                                                                                                             if(!_loc21_)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(§§pop())
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§7!+§);
                                                                                                                                                                                                   §§push(param1.§1>§ + " is killed. Speed Multiplier for ");
                                                                                                                                                                                                   if(!(_loc21_ && _loc3_))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§pop() + param2.§1>§);
                                                                                                                                                                                                      if(_loc20_ || param1)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop() + " is ");
                                                                                                                                                                                                         if(!_loc20_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr771:
                                                                                                                                                                                                         §§pop().log(§§pop());
                                                                                                                                                                                                         if(_loc20_ || param2)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr779:
                                                                                                                                                                                                            §§push(param2);
                                                                                                                                                                                                            §§push(§§findproperty(b2Vec2));
                                                                                                                                                                                                            §§push(param2.§'[§().GetLinearVelocity().x);
                                                                                                                                                                                                            if(!(_loc21_ && _loc3_))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(_loc18_);
                                                                                                                                                                                                               if(_loc20_ || this)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr801:
                                                                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                                                                  §§push(param2.§'[§().GetLinearVelocity().y);
                                                                                                                                                                                                                  if(_loc20_ || this)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(§§pop() * _loc18_);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§pop().§ =§(new §§pop().b2Vec2(§§pop(),§§pop()));
                                                                                                                                                                                                               addr816:
                                                                                                                                                                                                               §§push(_loc16_);
                                                                                                                                                                                                               if(!(_loc21_ && _loc3_))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(0);
                                                                                                                                                                                                                  if(!_loc21_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(§§pop() <= §§pop());
                                                                                                                                                                                                                     §§push(§§pop() <= §§pop());
                                                                                                                                                                                                                     if(_loc20_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr831:
                                                                                                                                                                                                                        if(§§pop())
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(!_loc21_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr834:
                                                                                                                                                                                                                              §§pop();
                                                                                                                                                                                                                              if(_loc20_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(_loc11_);
                                                                                                                                                                                                                                 if(_loc20_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(0);
                                                                                                                                                                                                                                    if(!(_loc21_ && this))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(§§pop() == §§pop());
                                                                                                                                                                                                                                       if(!_loc21_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          addr852:
                                                                                                                                                                                                                                          if(!§§pop())
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             addr853:
                                                                                                                                                                                                                                             §§push(_loc11_);
                                                                                                                                                                                                                                             if(_loc20_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                addr856:
                                                                                                                                                                                                                                                §§push(§§pop() - _loc14_);
                                                                                                                                                                                                                                                if(_loc20_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   addr860:
                                                                                                                                                                                                                                                   §§push(_loc11_);
                                                                                                                                                                                                                                                   if(_loc20_ || param2)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(Number(§§pop() / §§pop()));
                                                                                                                                                                                                                                                      if(_loc20_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(§§pop());
                                                                                                                                                                                                                                                         if(!(_loc21_ && param2))
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            _loc19_ = §§pop();
                                                                                                                                                                                                                                                            addr882:
                                                                                                                                                                                                                                                            §§push(§§pop() * _loc5_);
                                                                                                                                                                                                                                                            if(!(_loc21_ && param1))
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(Number(§§pop()));
                                                                                                                                                                                                                                                               if(!_loc21_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  addr894:
                                                                                                                                                                                                                                                                  if((_loc19_ = §§pop()) > 1)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(!_loc21_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        addr900:
                                                                                                                                                                                                                                                                        §§push(Number(1));
                                                                                                                                                                                                                                                                        if(_loc20_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           addr903:
                                                                                                                                                                                                                                                                           _loc19_ = §§pop();
                                                                                                                                                                                                                                                                           if(!_loc21_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              addr906:
                                                                                                                                                                                                                                                                              if(_loc17_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(_loc20_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    addr910:
                                                                                                                                                                                                                                                                                    §§push(§7!+§);
                                                                                                                                                                                                                                                                                    §§push(param2.§1>§ + " is killed. Speed Multiplier for ");
                                                                                                                                                                                                                                                                                    if(_loc20_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§push(§§pop() + param1.§1>§);
                                                                                                                                                                                                                                                                                       if(_loc20_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          addr922:
                                                                                                                                                                                                                                                                                          §§push(§§pop() + " is ");
                                                                                                                                                                                                                                                                                          if(_loc20_ || this)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§push(§§pop() + _loc19_);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§pop().log(§§pop());
                                                                                                                                                                                                                                                                                       if(!_loc21_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          addr936:
                                                                                                                                                                                                                                                                                          §§push(param1);
                                                                                                                                                                                                                                                                                          §§push(§§findproperty(b2Vec2));
                                                                                                                                                                                                                                                                                          §§push(param1.§'[§().GetLinearVelocity().x);
                                                                                                                                                                                                                                                                                          if(_loc20_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§push(_loc19_);
                                                                                                                                                                                                                                                                                             if(_loc20_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                addr948:
                                                                                                                                                                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                §§push(param1.§'[§().GetLinearVelocity().y);
                                                                                                                                                                                                                                                                                                if(!_loc21_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§push(§§pop() * _loc19_);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§pop().§ =§(new §§pop().b2Vec2(§§pop(),§§pop()));
                                                                                                                                                                                                                                                                                             if(!(_loc21_ && this))
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                addr975:
                                                                                                                                                                                                                                                                                                §§push(_loc15_ <= 0);
                                                                                                                                                                                                                                                                                                if(!(_loc21_ && this))
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   addr986:
                                                                                                                                                                                                                                                                                                   if(§§pop())
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      if(!(_loc21_ && param1))
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§pop();
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr998);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr948);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr998);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr922);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr998);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr936);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr910);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr998);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr906);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr998);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr903);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr882);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr894);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr882);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr860);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr975);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr998);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr903);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr853);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr852);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr986);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr998);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr894);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr801);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr816);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§push(§§pop() + _loc18_);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr771);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr779);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr852);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr816);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr856);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr900);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr739);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr856);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr882);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr998);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr816);
                                                                                                                                                               }
                                                                                                                                                               addr998:
                                                                                                                                                               return _loc16_ <= 0;
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr739);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr669);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr831);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr642);
                                                                                                                                             }
                                                                                                                                             §§goto(addr652);
                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr642);
                                                                                                                                 }
                                                                                                                                 addr597:
                                                                                                                                 §§push(§§pop() + " new health1 = ");
                                                                                                                                 §§push(_loc15_);
                                                                                                                              }
                                                                                                                              §§goto(addr597);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr599);
                                                                                                                     }
                                                                                                                     §§goto(addr597);
                                                                                                                  }
                                                                                                                  §§goto(addr715);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr540);
                                                                                                         }
                                                                                                         §§goto(addr543);
                                                                                                         §§push(§§pop() + §§pop());
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr540);
                                                                                                }
                                                                                                §§goto(addr529);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr543);
                                                                                       }
                                                                                       §§goto(addr779);
                                                                                    }
                                                                                    §§goto(addr642);
                                                                                 }
                                                                                 §§goto(addr834);
                                                                              }
                                                                              §§goto(addr429);
                                                                           }
                                                                           §§goto(addr368);
                                                                        }
                                                                     }
                                                                     §§goto(addr365);
                                                                  }
                                                                  §§push(§§pop() - §§pop());
                                                                  if(_loc21_)
                                                                  {
                                                                  }
                                                                  §§goto(addr335);
                                                               }
                                                               §§goto(addr319);
                                                            }
                                                            §§goto(addr335);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         addr199:
                                                         if(!§§pop())
                                                         {
                                                            if(!(_loc21_ && _loc3_))
                                                            {
                                                               addr208:
                                                               §§pop();
                                                               if(!(_loc21_ && _loc3_))
                                                               {
                                                                  §§push(param2.§@!-§());
                                                                  if(!(_loc21_ && _loc3_))
                                                                  {
                                                                     addr225:
                                                                     if(§§pop())
                                                                     {
                                                                        this.mMightyEagleTimer = 0;
                                                                        if(_loc20_ || _loc3_)
                                                                        {
                                                                           §§goto(addr237);
                                                                        }
                                                                        §§goto(addr244);
                                                                     }
                                                                     §§goto(addr237);
                                                                  }
                                                                  §§goto(addr245);
                                                               }
                                                               §§goto(addr237);
                                                            }
                                                         }
                                                         §§goto(addr225);
                                                      }
                                                      §§goto(addr237);
                                                   }
                                                   return true;
                                                }
                                                addr196:
                                                §§push(Boolean(§§pop()));
                                                if(_loc20_)
                                                {
                                                   §§goto(addr199);
                                                }
                                                §§goto(addr245);
                                             }
                                             §§goto(addr141);
                                          }
                                          §§goto(addr199);
                                       }
                                       §§goto(addr225);
                                    }
                                 }
                                 §§goto(addr199);
                              }
                              §§goto(addr208);
                           }
                           §§goto(addr237);
                        }
                        §§goto(addr74);
                     }
                     §§goto(addr199);
                  }
                  else
                  {
                     addr191:
                     if(§§pop())
                     {
                        §§push(param1.§@!-§());
                        if(!_loc21_)
                        {
                           §§goto(addr196);
                        }
                        §§goto(addr208);
                     }
                  }
                  §§goto(addr237);
               }
               else
               {
                  §§push(Boolean(this.mSardineCanAdded));
                  if(_loc20_ || _loc3_)
                  {
                     §§push(§§pop());
                     if(!_loc21_)
                     {
                        if(§§pop())
                        {
                           if(!_loc21_)
                           {
                              §§pop();
                              addr176:
                              §§push(this.mMightyEagleTimer);
                              if(_loc20_ || _loc3_)
                              {
                                 §§push(§§pop() == this.§#!E§.MIGHTY_EAGLE_WAIT_TIME);
                                 if(!_loc21_)
                                 {
                                    §§goto(addr191);
                                 }
                                 §§goto(addr225);
                              }
                              §§goto(addr237);
                           }
                        }
                        §§goto(addr191);
                     }
                     §§goto(addr199);
                  }
               }
            }
            §§goto(addr196);
         }
         §§goto(addr176);
      }
      
      public function §26§(param1:§;!%§, param2:§;!%§) : void
      {
      }
      
      public function §`!>§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§;!%§ = null;
         var _loc1_:* = int(this.§82§.length - 1);
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§82§[_loc1_] as §;!%§;
            if(_loc4_ || _loc3_)
            {
               §§push(_loc2_ == null);
               if(!_loc3_)
               {
                  §§push(!§§pop());
                  if(_loc4_ || _loc3_)
                  {
                     addr66:
                     if(§§pop())
                     {
                        if(_loc4_ || _loc2_)
                        {
                           §§pop();
                           if(_loc4_ || _loc3_)
                           {
                              §§push(_loc2_.§72§());
                              if(_loc4_ || _loc1_)
                              {
                                 addr103:
                                 if(§§pop())
                                 {
                                    if(!_loc4_)
                                    {
                                       continue;
                                    }
                                    addr106:
                                    this.§5k§(_loc1_,true,true,true);
                                    if(_loc3_)
                                    {
                                       continue;
                                    }
                                 }
                              }
                              §§goto(addr103);
                           }
                           §§push(_loc1_);
                           if(!(_loc3_ && this))
                           {
                              §§push(§§pop() - 1);
                           }
                           _loc1_ = §§pop();
                           continue;
                        }
                        §§goto(addr103);
                     }
                  }
                  §§goto(addr103);
               }
               §§goto(addr66);
            }
            §§goto(addr106);
         }
      }
      
      public function §#R§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§;!%§ = null;
         var _loc1_:* = int(this.§82§.length - 1);
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§82§[_loc1_] as §;!%§;
            if(!_loc4_)
            {
               continue;
            }
            §§push(_loc2_ == null);
            if(_loc4_)
            {
               §§push(!§§pop());
               if(!_loc3_)
               {
                  if(§§pop())
                  {
                     if(!_loc3_)
                     {
                        addr60:
                        §§pop();
                        if(_loc4_ || _loc1_)
                        {
                           §§push(_loc2_.§&d§());
                           if(_loc4_ || _loc1_)
                           {
                           }
                           addr78:
                           if(§§pop())
                           {
                              if(_loc3_ && _loc1_)
                              {
                                 continue;
                              }
                              this.§5k§(_loc1_,true,true,true);
                              if(!(_loc4_ || _loc2_))
                              {
                                 continue;
                              }
                           }
                           §§push(_loc1_);
                           if(_loc4_ || this)
                           {
                              §§push(§§pop() - 1);
                           }
                           _loc1_ = §§pop();
                        }
                        continue;
                     }
                     §§goto(addr78);
                     §§push(Boolean(§§pop()));
                  }
                  §§goto(addr78);
               }
               §§goto(addr60);
            }
            §§goto(addr78);
         }
      }
      
      public function §!l§() : int
      {
         return this.§82§.length;
      }
      
      public function §@g§(param1:§@Z§) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc2_:§;!%§ = null;
         var _loc3_:§4c§ = null;
         var _loc4_:§;u§ = null;
         var _loc5_:§`8§ = null;
         var _loc6_:int = 0;
         var _loc7_:* = this.§82§;
         loop0:
         while(true)
         {
            §§push(§§hasnext(_loc7_,_loc6_));
            if(_loc8_ || param1)
            {
               if(§§pop())
               {
                  _loc2_ = §§nextvalue(_loc6_,_loc7_);
                  if(_loc8_)
                  {
                     if(!_loc2_.isGround())
                     {
                        (_loc4_ = new §;u§()).angle = _loc2_.§>8§();
                        if(_loc8_)
                        {
                           _loc4_.id = _loc2_.§1>§;
                           if(!(_loc9_ && param1))
                           {
                              _loc4_.x = _loc2_.§'[§().GetPosition().x;
                              if(!_loc8_)
                              {
                                 continue;
                              }
                              _loc4_.y = _loc2_.§'[§().GetPosition().y;
                              if(_loc9_ && _loc2_)
                              {
                                 continue;
                              }
                           }
                           _loc4_.uniqueID = _loc2_.uniqueID;
                           if(!_loc8_)
                           {
                              continue;
                           }
                        }
                        param1.addObject(_loc4_);
                        continue;
                     }
                  }
                  continue;
               }
               if(_loc8_)
               {
                  if(!_loc9_)
                  {
                     if(!_loc9_)
                     {
                        _loc6_ = 0;
                        if(_loc8_)
                        {
                           addr129:
                           _loc7_ = this.§]J§;
                           while(true)
                           {
                              §§push(§§hasnext(_loc7_,_loc6_));
                              break loop0;
                           }
                           addr194:
                        }
                     }
                     return;
                  }
               }
               §§goto(addr129);
            }
            break;
         }
         while(true)
         {
            if(§§pop())
            {
               _loc3_ = §§nextvalue(_loc6_,_loc7_);
               (_loc5_ = new §`8§(_loc3_.type,_loc3_.index1,_loc3_.index2,_loc3_.point1,_loc3_.point2,_loc3_.§@=§,_loc3_.§1D§,_loc3_.lowerLimit,_loc3_.upperLimit,_loc3_.§8l§,_loc3_.motorSpeed,_loc3_.§',§,_loc3_.maxTorque)).§=e§ = _loc3_.§=e§;
               if(_loc8_ || param1)
               {
                  param1.§,f§(_loc5_);
               }
               continue;
            }
            §§goto(addr129);
         }
      }
      
      public function §&!D§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:int = 0;
         while(this.§82§.length > _loc1_)
         {
            if(this.§82§[_loc1_].isGround())
            {
               if(!_loc3_)
               {
                  _loc1_++;
                  if(_loc3_ && _loc2_)
                  {
                     break;
                  }
               }
            }
            else
            {
               this.§&I§(this.§82§[_loc1_]);
               if(_loc3_ && _loc1_)
               {
                  break;
               }
            }
         }
      }
      
      public function §-!C§(param1:Point, param2:Point) : Array
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:Array = new Array();
         var _loc4_:* = Number(0);
         loop0:
         while(true)
         {
            §§push(_loc4_);
            while(§§pop() < this.§82§.length)
            {
               if(this.§82§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
               {
                  if(_loc6_ || _loc3_)
                  {
                     _loc3_.push(this.§82§[_loc4_]);
                     if(!_loc6_)
                     {
                     }
                     break;
                  }
                  continue loop0;
               }
               §§push(_loc4_);
               if(_loc6_ || _loc3_)
               {
                  §§push(§§pop() + 1);
                  if(_loc5_ && param2)
                  {
                     continue;
                  }
                  §§push(Number(§§pop()));
                  if(_loc5_ && _loc3_)
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
         if(!(_loc3_ && _loc3_))
         {
            this.§2!=§ = param1;
            if(!_loc3_)
            {
               addr29:
               this.§5!E§(param1);
            }
            var _loc2_:* = Number(0);
            loop0:
            while(true)
            {
               §§push(_loc2_);
               while(§§pop() < this.§82§.length)
               {
                  if(this.§82§[_loc2_].isTexture())
                  {
                     if(!(_loc4_ || this))
                     {
                        continue loop0;
                     }
                     this.§82§[_loc2_].sprite.visible = !this.§2!=§;
                     if(!(_loc4_ || _loc2_))
                     {
                        continue loop0;
                     }
                  }
                  §§push(_loc2_);
                  if(!(_loc3_ && _loc3_))
                  {
                     §§push(§§pop() + 1);
                     if(_loc3_ && param1)
                     {
                        continue;
                     }
                     §§push(Number(§§pop()));
                     if(_loc3_ && param1)
                     {
                        continue;
                     }
                  }
                  _loc2_ = §§pop();
                  if(_loc3_)
                  {
                     break;
                  }
                  continue loop0;
               }
               return;
            }
         }
         §§goto(addr29);
      }
      
      public function setDamageEnabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§&r§ = param1;
         }
      }
      
      public function §],§() : Boolean
      {
         return this.§&r§;
      }
      
      public function §]%§() : int
      {
         return this.§@G§;
      }
      
      public function §'I§() : int
      {
         return this.§5h§;
      }
      
      public function §!!M§(param1:String) : §;!%§
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§;!%§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§82§.length)
         {
            _loc3_ = this.§82§[_loc2_] as §;!%§;
            if(_loc4_ || this)
            {
               if(_loc3_.uniqueID == param1)
               {
                  if(!_loc5_)
                  {
                     return _loc3_;
                  }
                  continue;
               }
            }
            _loc2_++;
         }
         return null;
      }
   }
}
