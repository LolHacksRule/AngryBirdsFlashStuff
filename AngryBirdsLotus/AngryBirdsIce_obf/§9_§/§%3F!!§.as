package §9_§
{
   import §#J§.§'b§;
   import §#J§.§>=§;
   import §1n§.§1D§;
   import §3"§.§8+§;
   import §3O§.§@6§;
   import §4N§.§&!@§;
   import §4N§.§2D§;
   import §4N§.§7E§;
   import §4N§.§9o§;
   import §4N§.§`!%§;
   import §5!@§.§3S§;
   import §5!@§.§=!%§;
   import §5!@§.§=!3§;
   import §5!@§.§?"§;
   import §;!E§.§!c§;
   import §;8§.§3f§;
   import §[P§.Texture;
   import §[x§.§%!>§;
   import §[x§.§2^§;
   import §[x§.§^;§;
   import §[x§.§`5§;
   import §^V§.§1!,§;
   import §^V§.Sprite;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.Joints.b2WeldJoint;
   import flash.display.BitmapData;
   import flash.display.BitmapDataChannel;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §?!!§
   {
       
      
      protected var §=! §:Vector.<§+>§>;
      
      protected var §=F§:int;
      
      public var §1! §:§2^§;
      
      public var §-W§:Vector.<§7]§>;
      
      protected var §3^§:Sprite;
      
      protected var §<R§:Sprite;
      
      private var §-o§:Sprite;
      
      private var §?3§:Sprite;
      
      private var §20§:Sprite;
      
      protected var §@D§:Vector.<Texture>;
      
      protected var §?]§:Vector.<§?"§>;
      
      protected var §,!$§:int = 1;
      
      public var mMightyEagleAdded:Boolean = false;
      
      public var mMightyEagleHasTouchedGround:Boolean = false;
      
      public var §-w§:Boolean = false;
      
      public var mSardineCanAdded:Boolean = false;
      
      public var mMightyEagleTimer:Number = 0;
      
      protected var § Q§:Boolean = false;
      
      protected var §]$§:Number = 0.07;
      
      protected var §8[§:int;
      
      protected var §72§:Vector.<§3S§>;
      
      protected var §#!C§:int = 0;
      
      private var §`a§:int = 0;
      
      private var §,q§:int = 0;
      
      private var §!#§:int;
      
      private var §6!&§:Boolean = true;
      
      private var §+!F§:Boolean = true;
      
      public function §?!!§(param1:§2^§, param2:§8+§, param3:Sprite)
      {
         var _loc13_:Boolean = true;
         var _loc14_:Boolean = false;
         var _loc5_:§?"§ = null;
         var _loc6_:§=!3§ = null;
         var _loc7_:* = 0;
         var _loc8_:* = 0;
         var _loc9_:§+>§ = null;
         var _loc10_:§+>§ = null;
         this.§=! § = new Vector.<§+>§>();
         this.§-W§ = new Vector.<§7]§>();
         this.§@D§ = new Vector.<Texture>();
         loop0:
         while(true)
         {
            this.§72§ = new Vector.<§3S§>();
            loop1:
            while(true)
            {
               super();
               this.§1! § = param1;
               this.§=F§ = 0;
               this.§<R§ = param3;
               §§push(this.§<R§);
               loop2:
               while(true)
               {
                  §§pop().§<!<§ = false;
                  this.§+!F§ = true;
                  loop3:
                  while(true)
                  {
                     this.§6!&§ = true;
                     while(_loc13_)
                     {
                        this.§3^§ = new Sprite();
                        loop5:
                        while(true)
                        {
                           this.§-o§ = new Sprite();
                           this.§?3§ = new Sprite();
                           while(true)
                           {
                              this.§20§ = new Sprite();
                              continue loop5;
                              loop11:
                              while(true)
                              {
                                 §§pop().addChild(this.§?3§);
                                 if(!(_loc13_ || param1))
                                 {
                                    break;
                                 }
                                 §§push(this.§<R§);
                                 if(_loc13_)
                                 {
                                    addr111:
                                    if(_loc13_ || this)
                                    {
                                       continue loop1;
                                    }
                                    addr155:
                                    while(!_loc14_)
                                    {
                                       §§pop().addChild(this.§-o§);
                                       while(true)
                                       {
                                          continue loop11;
                                          addr104:
                                          §§pop().addObject(§§pop(),§§pop(),this.§<R§);
                                          do
                                          {
                                             this.§!#§ = this.§=! §.length;
                                          }
                                          while(_loc14_ && this);
                                          
                                          if(!_loc13_)
                                          {
                                             continue;
                                          }
                                          addr48:
                                          if(_loc14_)
                                          {
                                             continue loop5;
                                          }
                                          if(false)
                                          {
                                             while(true)
                                             {
                                                §§push(this);
                                                §§push(§!c§.§9!§(param2.theme).§;3§);
                                                §§push(this.§1! §.§1!6§.§<!7§);
                                                if(_loc13_)
                                                {
                                                   §§push(this.§1! §);
                                                   if(!_loc14_)
                                                   {
                                                      §§push(§§pop().§1!6§);
                                                      if(_loc13_ || param2)
                                                      {
                                                         §§push(§§pop().§-S§);
                                                         if(_loc13_ || param1)
                                                         {
                                                            §§push(§§pop() + §§pop());
                                                            if(!_loc14_)
                                                            {
                                                               addr90:
                                                               §§push(§§pop() / 2);
                                                               §§push(this.§1! §.§1!6§.§&p§);
                                                               if(_loc13_ || param2)
                                                               {
                                                                  addr101:
                                                                  §§push(§§pop() + §%!>§.§ if§);
                                                               }
                                                               §§goto(addr104);
                                                            }
                                                            §§goto(addr90);
                                                         }
                                                         §§goto(addr101);
                                                      }
                                                   }
                                                }
                                                §§goto(addr90);
                                                §§goto(addr48);
                                             }
                                             continue loop5;
                                             addr52:
                                          }
                                          var _loc4_:* = 0;
                                          if(_loc13_)
                                          {
                                             _loc4_ = 0;
                                          }
                                          addr313:
                                          §§push(_loc4_);
                                          if(_loc13_ || this)
                                          {
                                             §§push(param2.§?c§);
                                             if(!(_loc14_ && param1))
                                             {
                                                if(§§pop() < §§pop())
                                                {
                                                   _loc6_ = param2.§!§(_loc4_);
                                                   if(_loc13_)
                                                   {
                                                      this.addObject(_loc6_.id,_loc6_.x,_loc6_.y,_loc6_.angle,false,false,false,1,_loc6_.front);
                                                      if(!(_loc14_ && param3))
                                                      {
                                                         addr312:
                                                         _loc4_++;
                                                      }
                                                      §§goto(addr313);
                                                   }
                                                   §§goto(addr312);
                                                }
                                                if(!(_loc14_ && param3))
                                                {
                                                   this.§6!3§();
                                                   if(_loc13_)
                                                   {
                                                      this.§,3§(true);
                                                      this.§?]§ = new Vector.<§?"§>();
                                                      addr392:
                                                      §§push(0);
                                                      if(_loc13_ || param3)
                                                      {
                                                         _loc4_ = §§pop();
                                                         if(!_loc14_)
                                                         {
                                                            addr347:
                                                            §§push(_loc4_);
                                                            if(!_loc14_)
                                                            {
                                                               addr396:
                                                               if(§§pop() < param2.§5!$§)
                                                               {
                                                                  this.§?]§.push(§?"§.§<d§(param2.§?;§(_loc4_)));
                                                                  if(!_loc14_)
                                                                  {
                                                                     if(_loc13_ || param2)
                                                                     {
                                                                        _loc4_++;
                                                                        if(false)
                                                                        {
                                                                        }
                                                                        §§goto(addr347);
                                                                        addr367:
                                                                     }
                                                                     §§goto(addr392);
                                                                  }
                                                               }
                                                            }
                                                            addr400:
                                                            var _loc11_:* = §§pop();
                                                            if(_loc13_ || param2)
                                                            {
                                                               var _loc12_:* = this.§?]§;
                                                               addr572:
                                                               for each(_loc5_ in _loc12_)
                                                               {
                                                                  §§push(int(_loc5_.index1 + this.§!#§));
                                                                  if(!_loc14_)
                                                                  {
                                                                     _loc7_ = §§pop();
                                                                     if(_loc13_ || param1)
                                                                     {
                                                                        §§push(int(_loc5_.index2 + this.§!#§));
                                                                        if(_loc13_)
                                                                        {
                                                                           _loc8_ = §§pop();
                                                                           if(_loc13_)
                                                                           {
                                                                              §§push(_loc7_);
                                                                              if(!_loc13_)
                                                                              {
                                                                              }
                                                                              addr468:
                                                                              if(§§pop() < this.§=! §.length)
                                                                              {
                                                                                 §§goto(addr473);
                                                                              }
                                                                              §§goto(addr572);
                                                                           }
                                                                           addr467:
                                                                           §§goto(addr468);
                                                                           §§push(_loc8_);
                                                                        }
                                                                        §§push(§§pop() < this.§=! §.length);
                                                                        if(_loc13_)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              if(!_loc14_)
                                                                              {
                                                                                 §§goto(addr459);
                                                                              }
                                                                           }
                                                                           §§goto(addr468);
                                                                        }
                                                                        addr459:
                                                                        §§pop();
                                                                        if(!(_loc14_ && this))
                                                                        {
                                                                           §§goto(addr467);
                                                                        }
                                                                        addr473:
                                                                        _loc9_ = this.§=! §[_loc7_];
                                                                        _loc10_ = this.§=! §[_loc8_];
                                                                        addr568:
                                                                        §§push(Boolean(_loc9_));
                                                                        if(Boolean(_loc9_))
                                                                        {
                                                                           addr570:
                                                                           §§pop();
                                                                           addr571:
                                                                           §§push(Boolean(_loc10_));
                                                                           if(!(_loc14_ && this))
                                                                           {
                                                                              if(!_loc14_)
                                                                              {
                                                                                 §§goto(addr535);
                                                                              }
                                                                              §§goto(addr568);
                                                                           }
                                                                           §§goto(addr570);
                                                                        }
                                                                        addr535:
                                                                        if(§§pop())
                                                                        {
                                                                           if(_loc13_)
                                                                           {
                                                                              if(_loc5_.type != §=!%§.§;!-§)
                                                                              {
                                                                                 _loc5_.§@I§ = this.§1! §.§[f§.§#_§.CreateJoint(_loc5_.§ x§(_loc9_,_loc10_));
                                                                                 addr486:
                                                                                 §§goto(addr572);
                                                                              }
                                                                              this.§72§.push(new §3S§(_loc7_,_loc8_,_loc5_.§"!!§));
                                                                              §§goto(addr486);
                                                                           }
                                                                           §§goto(addr571);
                                                                        }
                                                                        throw new Error("Joint index out of bounds [" + _loc7_ + ", " + _loc8_ + "]");
                                                                     }
                                                                     §§goto(addr467);
                                                                  }
                                                                  §§goto(addr468);
                                                               }
                                                            }
                                                            return;
                                                            addr380:
                                                         }
                                                         §§goto(addr400);
                                                         §§push(0);
                                                      }
                                                      §§goto(addr396);
                                                   }
                                                   §§goto(addr367);
                                                }
                                                §§goto(addr380);
                                             }
                                             §§goto(addr396);
                                          }
                                          §§goto(addr400);
                                       }
                                       continue loop1;
                                       §§goto(addr111);
                                    }
                                    while(!_loc14_)
                                    {
                                       §§pop().addChild(this.§3^§);
                                       if(!_loc13_)
                                       {
                                          continue loop3;
                                       }
                                       §§goto(addr146);
                                       §§push(this.§<R§);
                                    }
                                    addr146:
                                    continue loop2;
                                 }
                              }
                           }
                        }
                     }
                     continue loop0;
                  }
               }
            }
         }
      }
      
      public function get §]! §() : Sprite
      {
         return this.§20§;
      }
      
      public function get §9z§() : Sprite
      {
         return this.§<R§;
      }
      
      public function dispose() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:Texture = null;
         while(true)
         {
            if(this.§=! §.length > 0)
            {
               this.§]k§(0);
               continue;
            }
            this.§=! § = null;
            this.§72§ = null;
            §§push(this.§<R§);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  addr79:
                  this.§<R§.dispose();
                  this.§<R§ = null;
                  this.§3^§ = null;
                  this.§20§ = null;
                  while(!(_loc2_ && _loc2_))
                  {
                     while(true)
                     {
                        this.§-o§ = null;
                        if(!(_loc3_ || _loc2_))
                        {
                           break;
                        }
                        this.§?3§ = null;
                        if(true)
                        {
                           addr112:
                           while(this.§@D§.length > 0)
                           {
                              _loc1_ = this.§@D§.pop();
                              if(_loc3_)
                              {
                                 this.§1! §.textureManager.§1l§(_loc1_);
                              }
                           }
                        }
                        continue;
                        return;
                     }
                  }
                  continue;
               }
               §§goto(addr112);
            }
            §§goto(addr79);
         }
      }
      
      private function §,3§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§3^§.visible = param1;
         }
      }
      
      private function §6!3§() : void
      {
         var _loc16_:Boolean = false;
         var _loc17_:Boolean = true;
         var _loc3_:§+>§ = null;
         var _loc4_:Rectangle = null;
         var _loc5_:* = NaN;
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         var _loc8_:int = 0;
         var _loc9_:* = 0;
         var _loc10_:BitmapData = null;
         var _loc11_:BitmapData = null;
         var _loc12_:Texture = null;
         var _loc13_:§1!,§ = null;
         var _loc1_:Rectangle = null;
         var _loc2_:Vector.<§+>§> = new Vector.<§+>§>();
         for each(_loc3_ in this.§=! §)
         {
            if(_loc17_)
            {
               if(!_loc3_.isTexture())
               {
                  continue;
               }
               if(_loc17_)
               {
                  _loc2_.push(_loc3_);
               }
            }
            _loc4_ = _loc3_.sprite.getBounds(this.§<R§);
            if(_loc17_ || this)
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
               loop1:
               while(true)
               {
                  §§push(1);
                  loop2:
                  while(true)
                  {
                     §§push(Number(§§pop()));
                     while(true)
                     {
                        _loc5_ = §§pop();
                        loop4:
                        while(true)
                        {
                           §§push(_loc1_.width > 2048);
                           while(!§§pop())
                           {
                              do
                              {
                                 §§pop();
                                 §§push(_loc1_.height > 2048);
                              }
                              while(_loc16_ && _loc3_);
                              
                              if(!_loc16_)
                              {
                                 break;
                              }
                           }
                           if(!§§pop())
                           {
                              if(!_loc16_)
                              {
                                 if(!_loc17_)
                                 {
                                    continue loop1;
                                 }
                                 §§push(int(_loc1_.width));
                                 loop7:
                                 while(true)
                                 {
                                    _loc6_ = §§pop();
                                    §§push(int(_loc1_.height));
                                    loop8:
                                    while(true)
                                    {
                                       if(_loc16_)
                                       {
                                          continue loop7;
                                       }
                                       if(_loc16_ && _loc2_)
                                       {
                                          continue loop2;
                                       }
                                       _loc7_ = §§pop();
                                       while(true)
                                       {
                                          if(!_loc17_)
                                          {
                                             break loop8;
                                          }
                                          while(true)
                                          {
                                             §§push(int(_loc1_.left));
                                             continue loop8;
                                             addr130:
                                             _loc9_ = §§pop();
                                             if(_loc16_)
                                             {
                                                break;
                                             }
                                             if(false)
                                             {
                                                continue;
                                             }
                                             _loc10_ = new BitmapData(_loc6_,_loc7_,true,0);
                                             if(!_loc16_)
                                             {
                                                this.§6q§(_loc10_.rect,_loc10_,_loc5_);
                                             }
                                             _loc11_ = this.§@@§(_loc2_,_loc6_,_loc7_,_loc8_,_loc9_,_loc5_);
                                             if(!(_loc16_ && this))
                                             {
                                                _loc10_.copyChannel(_loc11_,_loc11_.rect,new Point(0,0),BitmapDataChannel.ALPHA,BitmapDataChannel.ALPHA);
                                             }
                                             _loc12_ = this.§1! §.textureManager.§]C§(_loc10_);
                                             if(_loc17_ || this)
                                             {
                                                this.§@D§.push(_loc12_);
                                             }
                                             (_loc13_ = new §1!,§(_loc12_)).x = _loc8_ / _loc5_;
                                             if(_loc17_ || this)
                                             {
                                                _loc13_.y = _loc9_ / _loc5_;
                                                _loc13_.scaleX = 1 / _loc5_;
                                                addr424:
                                             }
                                             _loc13_.scaleY = 1 / _loc5_;
                                             addr409:
                                             if(_loc17_)
                                             {
                                                addr373:
                                                this.§3^§.addChild(_loc13_);
                                                if(!(_loc16_ && this))
                                                {
                                                   if(_loc17_ || this)
                                                   {
                                                      _loc11_.dispose();
                                                      if(_loc17_ || _loc2_)
                                                      {
                                                         if(false)
                                                         {
                                                            §§goto(addr373);
                                                         }
                                                         §§goto(addr425);
                                                      }
                                                      §§goto(addr373);
                                                   }
                                                   §§goto(addr424);
                                                }
                                                §§goto(addr409);
                                             }
                                             addr418:
                                             §§goto(addr418);
                                          }
                                       }
                                    }
                                    addr272:
                                    addr262:
                                    _loc1_.top /= 2;
                                    while(true)
                                    {
                                       _loc1_.right /= 2;
                                       §§goto(addr254);
                                    }
                                 }
                              }
                              while(true)
                              {
                                 §§push(_loc5_);
                                 if(!(_loc16_ && this))
                                 {
                                    §§push(§§pop() / 2);
                                    if(!_loc17_)
                                    {
                                       continue loop4;
                                    }
                                 }
                                 continue loop4;
                              }
                           }
                           else
                           {
                              _loc1_.left /= 2;
                           }
                           §§goto(addr272);
                        }
                     }
                  }
               }
            }
            addr425:
            return;
         }
         §§goto(addr262);
      }
      
      private function §@@§(param1:Vector.<§+>§>, param2:int, param3:int, param4:int, param5:int, param6:Number) : BitmapData
      {
         var _loc16_:Boolean = false;
         var _loc17_:Boolean = true;
         var _loc7_:§+>§ = null;
         var _loc11_:§2D§ = null;
         var _loc12_:Array = null;
         var _loc13_:Rectangle = null;
         var _loc8_:BitmapData = new BitmapData(param2,param3,true,0);
         var _loc9_:BitmapData = new BitmapData(1,1,true,4294967295);
         var _loc10_:Matrix = new Matrix();
         var _loc14_:int = 0;
         var _loc15_:* = param1;
         loop0:
         for(; §§hasnext(_loc15_,_loc14_); do
         {
            _loc10_.translate(_loc7_.sprite.x * param6 - param4,_loc7_.sprite.y * param6 - param5);
            do
            {
               _loc8_.draw(_loc9_,_loc10_);
            }
            while(!_loc17_);
            
         }
         while(false);
         )
         {
            _loc7_ = §§nextvalue(_loc14_,_loc15_);
            _loc12_ = (_loc11_ = _loc7_.§&$§.shape).§>! §();
            _loc13_ = new Rectangle(_loc12_[0].x / §2^§.§,]§ * param6,_loc12_[0].y / §2^§.§,]§ * param6,(_loc12_[1].x - _loc12_[0].x) / §2^§.§,]§ * param6,(_loc12_[1].y - _loc12_[0].y) / §2^§.§,]§ * param6);
            _loc10_.identity();
            while(true)
            {
               _loc10_.scale(_loc13_.width,_loc13_.height);
               while(true)
               {
                  _loc10_.translate(-_loc13_.width / 2,-_loc13_.height / 2);
                  if(_loc16_ && this)
                  {
                     break;
                  }
                  _loc10_.rotate((360 - _loc7_.§^k§()) / 180 * Math.PI);
                  if(_loc17_)
                  {
                     continue loop0;
                  }
               }
            }
         }
         if(!(_loc16_ && param1))
         {
            _loc9_.dispose();
         }
         return _loc8_;
      }
      
      private function §6q§(param1:Rectangle, param2:BitmapData, param3:Number) : void
      {
         var _loc16_:Boolean = false;
         var _loc17_:Boolean = true;
         var _loc6_:BitmapData = null;
         var _loc7_:Matrix = null;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         var _loc13_:int = 0;
         var _loc14_:int = 0;
         var _loc15_:int = 0;
         §§push(this.§1! §.background.§#!8§());
         if(!(_loc16_ && param1))
         {
            §§push(§§pop());
         }
         var _loc4_:* = §§pop();
         var _loc5_:§1D§;
         if(_loc5_ = this.§1! §.backgroundTextureManager.§,Y§(_loc4_))
         {
            _loc6_ = new BitmapData(_loc5_.bitmapData.width * param3,_loc5_.bitmapData.height * param3);
            (_loc7_ = new Matrix()).scale(param3,param3);
            _loc6_.draw(_loc5_.bitmapData,_loc7_);
            loop0:
            while(true)
            {
               §§push(_loc6_.width - 2);
               loop1:
               while(true)
               {
                  _loc8_ = §§pop();
                  addr371:
                  while(_loc17_)
                  {
                     §§push(_loc6_.height - 2);
                     continue loop1;
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr380);
      }
      
      public function §>l§(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §+>§
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc10_:§+>§ = null;
         var _loc11_:* = param2;
         §§push("BIRD_BLACK");
         if(!(_loc12_ && this))
         {
            §§push(_loc11_);
            if(!(_loc12_ && this))
            {
               if(§§pop() === §§pop())
               {
                  if(_loc13_ || param3)
                  {
                     §§push(0);
                     if(!_loc13_)
                     {
                        addr251:
                     }
                  }
                  else
                  {
                     addr311:
                     §§push(5);
                     if(_loc13_)
                     {
                        addr314:
                     }
                  }
               }
               else
               {
                  §§push("BIRD_BLUE");
                  if(_loc13_ || param2)
                  {
                     if(§§pop() === _loc11_)
                     {
                        §§push(1);
                        if(!_loc12_)
                        {
                           §§goto(addr251);
                        }
                        else
                        {
                           §§goto(addr314);
                        }
                     }
                     else
                     {
                        §§push("BIRD_GREEN");
                     }
                     §§goto(addr326);
                  }
                  §§push(_loc11_);
                  if(!_loc12_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc13_ || param3)
                        {
                           §§push(2);
                           if(_loc13_)
                           {
                              §§goto(addr326);
                           }
                           else
                           {
                              §§goto(addr314);
                           }
                        }
                     }
                     else if("BIRD_WHITE" !== _loc11_)
                     {
                        §§push("BIRD_YELLOW");
                        if(!_loc12_)
                        {
                           §§push(_loc11_);
                           if(_loc13_ || param1)
                           {
                              addr284:
                              if(§§pop() === §§pop())
                              {
                                 if(!_loc12_)
                                 {
                                    addr326:
                                    switch(§§pop())
                                    {
                                       case 0:
                                          _loc10_ = new § p§(this,param1,this.§1! §.§[f§.§#_§,this.§1! §,this.§=F§,param2,param3,param4,param5,param8,param9);
                                          break;
                                       case 1:
                                          _loc10_ = new §1W§(this,param1,this.§1! §.§[f§.§#_§,this.§1! §,this.§=F§,param2,param3,param4,param5,param8,param9);
                                          break;
                                       case 2:
                                          _loc10_ = new §?o§(this,param1,this.§1! §.§[f§.§#_§,this.§1! §,this.§=F§,param2,param3,param4,param5,param8,param9);
                                          break;
                                       case 3:
                                          _loc10_ = new §"!?§(this,param1,this.§1! §.§[f§.§#_§,this.§1! §,this.§=F§,param2,param3,param4,param5,param8,param9);
                                          break;
                                       case 4:
                                          _loc10_ = new §6l§(this,param1,this.§1! §.§[f§.§#_§,this.§1! §,this.§=F§,param2,param3,param4,param5,param8,param9);
                                          break;
                                       case 5:
                                          _loc10_ = new §!e§(this,param1,this.§1! §.§[f§.§#_§,this.§1! §,this.§=F§,param2,param3,param4,param5,param8,param9);
                                          break;
                                       case 6:
                                          _loc10_ = new §!k§(this,param1,this.§1! §.§[f§.§#_§,this.§1! §,this.§=F§,param2,param3,param4,param5,param8,param9);
                                          break;
                                       default:
                                          _loc10_ = new §4!;§(this,param1,this.§1! §.§[f§.§#_§,this.§1! §,this.§=F§,param2,param3,param4,param5,param8,param9);
                                    }
                                    return _loc10_;
                                    §§push(4);
                                 }
                                 §§goto(addr326);
                              }
                              else
                              {
                                 §§push("BIRD_RED");
                                 if(!_loc12_)
                                 {
                                    addr302:
                                    §§push(_loc11_);
                                    if(!(_loc12_ && param3))
                                    {
                                       addr310:
                                       if(§§pop() === §§pop())
                                       {
                                          §§goto(addr311);
                                       }
                                       else
                                       {
                                          addr317:
                                          if("BIRD_REDBIG" !== _loc11_)
                                          {
                                             §§goto(addr326);
                                             §§push(7);
                                          }
                                          §§goto(addr326);
                                       }
                                    }
                                 }
                                 §§goto(addr317);
                              }
                              §§goto(addr326);
                           }
                           §§goto(addr310);
                        }
                        §§goto(addr317);
                     }
                     §§goto(addr326);
                     §§push(3);
                  }
                  §§goto(addr317);
               }
               §§goto(addr326);
            }
            §§goto(addr284);
         }
         §§goto(addr302);
      }
      
      public function hasBirds() : Boolean
      {
         return this.§#!C§ > 0;
      }
      
      public function addObject(param1:String, param2:Number, param3:Number, param4:Number = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = true, param8:Number = 1.0, param9:Boolean = false) : §+>§
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         var _loc10_:Sprite;
         (_loc10_ = new Sprite()).scaleX = param8;
         if(!(_loc14_ && param3))
         {
            _loc10_.scaleY = param8;
         }
         var _loc11_:§+>§;
         if((_loc11_ = this.include(_loc10_,param1,param2,param3,param4,param5,param6,param7,param8)).isTexture())
         {
            if(!_loc14_)
            {
               §§push(_loc10_);
               §§push(this.§6!&§);
               if(_loc15_ || param2)
               {
                  §§push(!§§pop());
               }
               §§pop().visible = §§pop();
               this.§=! §[this.§=! §.length] = _loc11_;
               loop5:
               while(true)
               {
                  §§push(_loc11_ is §4!;§);
                  §§push(_loc11_ is §4!;§);
                  if(!_loc14_)
                  {
                     if(§§pop())
                     {
                        if(_loc15_)
                        {
                           §§pop();
                           §§push(_loc11_.§[d§());
                           if(!(_loc14_ && this))
                           {
                              addr76:
                              if(!§§pop())
                              {
                                 this.§-o§.addChild(_loc10_);
                                 if(false)
                                 {
                                    continue;
                                 }
                                 var _loc12_:*;
                                 §§push((_loc12_ = this).§#!C§);
                                 if(!_loc14_)
                                 {
                                    §§push(§§pop() + 1);
                                 }
                                 var _loc13_:* = §§pop();
                                 if(_loc15_)
                                 {
                                    _loc12_.§#!C§ = _loc13_;
                                 }
                                 if(!_loc14_)
                                 {
                                    while(true)
                                    {
                                       §§push(param5);
                                       §§goto(addr180);
                                    }
                                 }
                                 §§goto(addr202);
                              }
                              else
                              {
                                 §§push(Boolean(_loc11_.front));
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    break loop5;
                                    addr229:
                                    §§pop();
                                    §§push(param9);
                                    if(_loc15_)
                                    {
                                       §§push(Boolean(§§pop()));
                                       break;
                                    }
                                 }
                                 addr216:
                                 if(!§§pop())
                                 {
                                    this.§?3§.addChild(_loc10_);
                                    §§goto(addr210);
                                 }
                                 addr227:
                              }
                              §§goto(addr218);
                           }
                           §§goto(addr156);
                        }
                        addr180:
                        loop4:
                        while(§§pop())
                        {
                           if(!(_loc15_ || this))
                           {
                              continue loop3;
                           }
                           addr188:
                           while(true)
                           {
                              §§push(this.§1! §);
                              addr200:
                              while(true)
                              {
                                 §§pop().§2A§(_loc11_);
                                 addr202:
                                 while(true)
                                 {
                                    break loop4;
                                 }
                              }
                              §§goto(addr188);
                           }
                        }
                        loop2:
                        while(true)
                        {
                           §§push(param6);
                           if(!(_loc14_ && param3))
                           {
                              while(§§pop())
                              {
                                 if(!(_loc14_ && param1))
                                 {
                                    if(!_loc14_)
                                    {
                                       §§push(this.§1! §);
                                       if(!(_loc14_ && this))
                                       {
                                          §§pop().activeObject = _loc11_;
                                       }
                                       else
                                       {
                                          §§goto(addr200);
                                       }
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                          continue loop3;
                                       }
                                       addr210:
                                    }
                                 }
                                 break loop2;
                              }
                              break;
                              addr156:
                           }
                           §§goto(addr180);
                           §§goto(addr200);
                        }
                        return _loc11_;
                     }
                     §§goto(addr76);
                  }
                  break;
               }
               while(true)
               {
                  if(!§§pop())
                  {
                     §§goto(addr229);
                  }
                  §§goto(addr216);
                  §§goto(addr227);
               }
               addr84:
            }
            §§goto(addr198);
         }
         else
         {
            this.§=! §[this.§=! §.length] = _loc11_;
         }
         §§goto(addr84);
      }
      
      public function §<d§(param1:int, param2:§+>§, param3:§+>§) : §?"§
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc6_:§?"§ = null;
         var _loc4_:int = this.§=! §.indexOf(param2) - this.§!#§;
         var _loc5_:int = this.§=! §.indexOf(param3) - this.§!#§;
         if(_loc8_ || param2)
         {
            §§push(_loc4_);
            if(!(_loc7_ && param3))
            {
               §§push(0);
               if(_loc8_ || param3)
               {
                  §§push(§§pop() >= §§pop());
                  if(_loc8_)
                  {
                     if(§§pop())
                     {
                        if(_loc8_ || param3)
                        {
                           §§pop();
                           §§goto(addr90);
                        }
                     }
                  }
                  if(§§pop())
                  {
                     §§goto(addr90);
                  }
                  §§goto(addr147);
               }
            }
            §§goto(addr88);
         }
         addr90:
         if(_loc8_)
         {
            addr88:
            §§push(_loc5_ >= 0);
         }
         (_loc6_ = new §?"§(§=!%§.§`!;§,_loc4_,_loc5_,new Point(0,0),new Point(0,0))).§@I§ = this.§1! §.§[f§.§#_§.CreateJoint(_loc6_.§ x§(param2,param3));
         if(_loc8_ || this)
         {
            this.§?]§.push(_loc6_);
            if(_loc7_ && this)
            {
               addr147:
               return null;
            }
         }
         return _loc6_;
      }
      
      public function §">§(param1:§?"§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && _loc3_))
         {
            if(!(param1.§@I§ is b2WeldJoint))
            {
               if(!_loc4_)
               {
                  §§goto(addr31);
               }
            }
            var _loc2_:§+>§ = this.§!§(param1.index1 + this.§!#§);
            var _loc3_:§+>§ = this.§!§(param1.index2 + this.§!#§);
            if(!_loc4_)
            {
               this.§1! §.§[f§.§#_§.DestroyJoint(param1.§@I§);
               do
               {
                  param1.§@I§ = this.§1! §.§[f§.§#_§.CreateJoint(param1.§ x§(_loc2_,_loc3_));
               }
               while(!_loc5_);
               
            }
            return;
         }
         addr31:
      }
      
      public function §@O§(param1:§+>§) : Vector.<§?"§>
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:§?"§ = null;
         var _loc2_:Vector.<§?"§> = new Vector.<§?"§>();
         var _loc3_:int = this.§=! §.indexOf(param1) - this.§!#§;
         if(_loc8_ || _loc3_)
         {
            §§push(_loc3_);
            if(!(_loc7_ && this))
            {
               if(§§pop() >= 0)
               {
                  addr63:
                  addr62:
                  for each(_loc4_ in this.§?]§)
                  {
                     §§push(_loc4_.index1 == _loc3_);
                     if(!_loc7_)
                     {
                        if(!§§pop())
                        {
                           if(!(_loc7_ && _loc2_))
                           {
                              addr100:
                              §§pop();
                              if(!(_loc7_ && param1))
                              {
                                 addr112:
                                 if(_loc4_.index2 != _loc3_)
                                 {
                                    continue;
                                 }
                                 if(_loc7_ && _loc2_)
                                 {
                                    continue;
                                 }
                              }
                              _loc2_.push(_loc4_);
                              continue;
                           }
                        }
                        §§goto(addr112);
                     }
                     §§goto(addr100);
                  }
               }
               return _loc2_;
            }
            §§goto(addr63);
         }
         §§goto(addr62);
      }
      
      public function §`c§() : Vector.<§?"§>
      {
         return this.§?]§;
      }
      
      public function §?#§(param1:§+>§) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:int = this.§=! §.indexOf(param1) - this.§!#§;
         var _loc3_:* = int(this.§?]§.length - 1);
         while(true)
         {
            §§push(_loc3_);
            if(!_loc5_)
            {
               if(§§pop() < 0)
               {
                  if(!_loc5_)
                  {
                     if(_loc4_)
                     {
                        break;
                     }
                     loop3:
                     while(true)
                     {
                        §§push(this.§?]§[_loc3_].index2 == _loc2_);
                        if(_loc4_)
                        {
                           break;
                        }
                        addr117:
                        while(true)
                        {
                           §§pop();
                           continue loop3;
                        }
                     }
                     addr90:
                     if(§§pop())
                     {
                        addr103:
                        if(!(_loc5_ && this))
                        {
                           this.§?]§.splice(_loc3_,1);
                        }
                        while(true)
                        {
                        }
                        addr103:
                     }
                     while(true)
                     {
                        §§push(_loc3_);
                        if(_loc4_ || _loc3_)
                        {
                           addr65:
                           §§push(§§pop() - 1);
                           while(true)
                           {
                              _loc3_ = §§pop();
                           }
                           addr65:
                        }
                        §§goto(addr65);
                        §§goto(addr103);
                     }
                  }
                  while(_loc5_)
                  {
                     §§goto(addr103);
                  }
                  continue;
               }
               §§push(this.§?]§[_loc3_].index1 == _loc2_);
               if(!_loc5_)
               {
                  if(!§§pop())
                  {
                     §§goto(addr117);
                  }
                  §§goto(addr90);
               }
               §§goto(addr117);
            }
            §§goto(addr65);
         }
      }
      
      public function §1v§(param1:§+>§, param2:§+>§) : Boolean
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:int = this.§=! §.indexOf(param1) - this.§!#§;
         var _loc4_:int = this.§=! §.indexOf(param2) - this.§!#§;
         var _loc5_:* = int(this.§?]§.length - 1);
         loop0:
         while(true)
         {
            §§push(_loc5_);
            if(!_loc6_)
            {
               if(§§pop() < 0)
               {
                  if(!(_loc6_ && _loc3_))
                  {
                     §§push(false);
                     if(!(_loc6_ && _loc3_))
                     {
                        break;
                     }
                     loop1:
                     while(true)
                     {
                        §§pop();
                        loop2:
                        while(true)
                        {
                           §§push(this.§?]§[_loc5_].index2 == _loc3_);
                           if(!(_loc7_ || param2))
                           {
                              while(true)
                              {
                                 §§push(§§pop());
                                 if(!(_loc6_ && _loc3_))
                                 {
                                    if(!(_loc6_ && param2))
                                    {
                                       if(§§pop())
                                       {
                                          continue loop1;
                                       }
                                       addr107:
                                       addr107:
                                       if(§§pop())
                                       {
                                          break loop2;
                                       }
                                       loop6:
                                       while(true)
                                       {
                                          §§push(_loc5_);
                                          if(!_loc6_)
                                          {
                                             addr71:
                                             §§push(§§pop() - 1);
                                             while(true)
                                             {
                                                _loc5_ = §§pop();
                                                if(!(_loc6_ && param1))
                                                {
                                                   if(_loc7_)
                                                   {
                                                      break;
                                                   }
                                                   continue loop2;
                                                }
                                                continue loop6;
                                             }
                                             continue loop0;
                                             addr71:
                                          }
                                          §§goto(addr71);
                                       }
                                    }
                                    else
                                    {
                                       loop4:
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             §§pop();
                                             §§push(this.§?]§[_loc5_].index2 == _loc4_);
                                          }
                                          §§push(§§pop());
                                          addr177:
                                          while(true)
                                          {
                                             continue loop4;
                                          }
                                       }
                                    }
                                    §§goto(addr107);
                                 }
                                 while(true)
                                 {
                                    if(!§§pop())
                                    {
                                       if(_loc7_ || param1)
                                       {
                                          break;
                                       }
                                       §§goto(addr177);
                                    }
                                 }
                                 §§pop();
                              }
                           }
                           §§goto(addr107);
                        }
                     }
                  }
                  return true;
               }
               §§push(this.§?]§[_loc5_].index1 == _loc3_);
               §§goto(addr177);
            }
            §§goto(addr71);
         }
         return §§pop();
      }
      
      protected function include(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §+>§
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         var _loc10_:§+>§ = null;
         var _loc11_:§9o§ = null;
         if(!(_loc15_ && this))
         {
            §§push(param2);
            if(_loc14_ || this)
            {
               §§push("BIRD");
               if(!(_loc15_ && param2))
               {
                  if(§§pop().indexOf(§§pop()) == 0)
                  {
                     if(_loc14_)
                     {
                        _loc10_ = this.§>l§(param1,param2,param3,param4,param5,param6,param7,param8,param9);
                        if(_loc14_ || param3)
                        {
                           var _loc12_:*;
                           §§push((_loc12_ = this).§,q§);
                           if(!(_loc15_ && param3))
                           {
                              §§push(§§pop() + 1);
                           }
                           var _loc13_:* = §§pop();
                           if(_loc14_)
                           {
                              _loc12_.§,q§ = _loc13_;
                           }
                        }
                     }
                     else
                     {
                        addr96:
                        _loc10_ = new §;H§(this,param1,this.§1! §.§[f§.§#_§,this.§1! §,this.§=F§,param2,param3,param4,param5,param9);
                     }
                     §§goto(addr280);
                  }
                  else
                  {
                     addr92:
                     §§push(param2);
                     §§push("PIG");
                  }
                  §§goto(addr96);
               }
               if(§§pop().indexOf(§§pop()) == 0)
               {
                  §§goto(addr96);
               }
               else
               {
                  §§push((_loc11_ = §&!@§.§9B§(param2)) == null);
                  if(_loc14_)
                  {
                     §§push(§§pop());
                     if(_loc14_)
                     {
                        if(§§pop())
                        {
                           if(_loc14_)
                           {
                              §§pop();
                              if(!(_loc15_ && this))
                              {
                                 §§push(param2);
                                 if(_loc14_ || param2)
                                 {
                                    §§push(§§pop().indexOf("MISC_") == 0);
                                    if(_loc14_ || param1)
                                    {
                                       addr169:
                                       if(§§pop())
                                       {
                                          if(_loc14_)
                                          {
                                             addr185:
                                             §§push("MISC_FOOD_");
                                             if(!(_loc15_ && this))
                                             {
                                                §§push(§§pop() + param2.substring(5));
                                             }
                                             param2 = §§pop();
                                             if(!_loc14_)
                                             {
                                             }
                                             _loc10_ = new §13§(this,param1,this.§1! §.§[f§.§#_§,this.§1! §,this.§=F§,param2,param3,param4,param5,param9,_loc11_.front);
                                             §§goto(addr227);
                                          }
                                          _loc11_ = §&!@§.§9B§(param2);
                                       }
                                       §§push(_loc11_.§&!E§);
                                       if(!_loc15_)
                                       {
                                          §§push(§9o§.§'!<§);
                                          if(!(_loc15_ && param2))
                                          {
                                             §§push(§§pop() == §§pop());
                                             if(!(_loc15_ && param1))
                                             {
                                                addr215:
                                                if(!§§pop())
                                                {
                                                   if(!_loc15_)
                                                   {
                                                      addr218:
                                                      §§pop();
                                                      if(_loc14_)
                                                      {
                                                         addr223:
                                                         §§push(_loc11_.§&!E§);
                                                         §§push(§9o§.§>]§);
                                                      }
                                                      §§goto(addr227);
                                                   }
                                                }
                                             }
                                             §§goto(addr226);
                                          }
                                          addr226:
                                          if(§§pop())
                                          {
                                             addr227:
                                          }
                                          else
                                          {
                                             _loc10_ = new §+>§(this,param1,this.§1! §.§[f§.§#_§,this.§1! §,this.§=F§,param2,param3,param4,param5,param9,_loc11_.front);
                                          }
                                          §§goto(addr280);
                                          §§push(§§pop() == §§pop());
                                       }
                                       §§goto(addr223);
                                    }
                                    §§goto(addr226);
                                 }
                              }
                              §§goto(addr185);
                           }
                           §§goto(addr218);
                        }
                        §§goto(addr169);
                     }
                     §§goto(addr215);
                  }
                  §§goto(addr169);
               }
            }
            §§goto(addr92);
         }
         §§goto(addr96);
      }
      
      public function §&o§(param1:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§+>§ = null;
         var _loc2_:* = int(this.§=! §.length - 1);
         loop0:
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§=! §[_loc2_] as §+>§;
            if(_loc5_)
            {
               if(_loc3_)
               {
                  loop1:
                  while(_loc3_.§8!'§ > 0)
                  {
                     _loc3_.§"!D§();
                     if(_loc4_)
                     {
                        continue;
                     }
                     loop2:
                     while(true)
                     {
                        _loc3_.§,F§();
                        loop3:
                        while(true)
                        {
                           if(!_loc5_)
                           {
                              break loop1;
                           }
                           while(true)
                           {
                              addr49:
                              while(true)
                              {
                                 §§push(_loc2_);
                                 if(!(_loc4_ && _loc3_))
                                 {
                                    §§push(§§pop() - 1);
                                 }
                                 _loc2_ = §§pop();
                                 if(_loc5_)
                                 {
                                    if(true)
                                    {
                                       break;
                                    }
                                    continue loop2;
                                 }
                                 continue loop3;
                              }
                              continue loop0;
                           }
                        }
                     }
                  }
                  while(true)
                  {
                     this.§]k§(_loc2_,true,true,true);
                  }
               }
               §§goto(addr49);
            }
            §§goto(addr79);
         }
         if(!_loc4_)
         {
            this.§@!?§(param1);
         }
      }
      
      protected function §@!?§(param1:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:§3S§ = null;
         var _loc4_:* = 0;
         var _loc2_:int = this.§72§.length - 1;
         loop0:
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§72§[_loc2_];
            §§push(_loc3_.§;N§);
            if(_loc5_)
            {
               if(§§pop())
               {
                  §§push(_loc3_.update(param1));
                  loop1:
                  while(true)
                  {
                     §§push(int(§§pop()));
                     if(_loc5_)
                     {
                        §§push(§§pop());
                        if(_loc5_)
                        {
                           _loc4_ = §§pop();
                           while(true)
                           {
                              §§push(-1);
                           }
                           addr142:
                        }
                        loop2:
                        while(true)
                        {
                           if(§§pop() != §§pop())
                           {
                              §§push(_loc4_);
                              loop3:
                              while(true)
                              {
                                 §§push(§§pop() < this.§=! §.length);
                                 if(!_loc6_)
                                 {
                                    if(§§pop())
                                    {
                                       addr153:
                                       while(true)
                                       {
                                          §§pop();
                                          §§push(this.§=! §[_loc4_] == null);
                                          if(_loc5_)
                                          {
                                             continue;
                                          }
                                          addr102:
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                if(!(_loc6_ && _loc3_))
                                                {
                                                   this.§]k§(_loc4_,true,true,true);
                                                }
                                             }
                                             addr77:
                                             while(true)
                                             {
                                                this.§72§.splice(_loc2_,1);
                                                addr83:
                                                while(true)
                                                {
                                                   addr36:
                                                   while(true)
                                                   {
                                                      §§push(_loc2_);
                                                      if(!(_loc6_ && _loc3_))
                                                      {
                                                         if(!_loc6_)
                                                         {
                                                            if(_loc5_)
                                                            {
                                                               §§push(§§pop() - 1);
                                                               continue loop1;
                                                            }
                                                            continue loop2;
                                                         }
                                                         continue loop3;
                                                      }
                                                      continue loop1;
                                                   }
                                                   continue loop0;
                                                }
                                             }
                                          }
                                       }
                                       addr153:
                                    }
                                    while(true)
                                    {
                                       §§goto(addr102);
                                    }
                                 }
                                 §§goto(addr153);
                              }
                           }
                           §§goto(addr36);
                        }
                     }
                     §§goto(addr142);
                  }
               }
               §§goto(addr36);
            }
            §§goto(addr153);
         }
      }
      
      public function addExplosions(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && this))
         {
            this.§-W§.push(§7]§.createExplosion(param1,param2,param3));
         }
         do
         {
            §@6§.playSound("TntExplosions","ChannelExplosions");
         }
         while(!(_loc4_ || param3));
         
      }
      
      public function §9!0§(param1:Number, param2:Number) : int
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:§+>§ = null;
         var _loc3_:int = this.§=! §.length - 1;
         while(true)
         {
            §§push(_loc3_);
            if(!_loc5_)
            {
               if(§§pop() < 0)
               {
                  break;
               }
               if(_loc4_ = this.§=! §[_loc3_])
               {
                  if(!(_loc5_ && param2))
                  {
                     if(_loc4_.isInCoordinates(param1,param2))
                     {
                        if(!(_loc5_ && _loc3_))
                        {
                           §§push(_loc3_);
                           if(!(_loc5_ && param1))
                           {
                              return §§pop();
                           }
                        }
                        else
                        {
                           addr91:
                           §§push(_loc3_);
                           if(!(_loc6_ || param2))
                           {
                              continue;
                           }
                        }
                        §§push(§§pop() - 1);
                        continue;
                     }
                  }
               }
               §§goto(addr91);
            }
            break;
         }
         return §§pop();
      }
      
      public function §with§(param1:Number, param2:Number) : §+>§
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:§+>§ = null;
         var _loc3_:* = int(this.§=! §.length - 1);
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§=! §[_loc3_])
            {
               if(_loc5_)
               {
                  if(_loc4_.isInCoordinates(param1,param2))
                  {
                     if(_loc5_ || param2)
                     {
                        return _loc4_;
                     }
                     continue;
                  }
               }
            }
            §§push(_loc3_);
            if(!_loc6_)
            {
               §§push(§§pop() - 1);
            }
            _loc3_ = §§pop();
         }
         return null;
      }
      
      public function §!§(param1:int) : §+>§
      {
         return this.§=! §[param1];
      }
      
      public function §%1§(param1:Number, param2:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:§+>§ = null;
         var _loc3_:* = int(this.§=! §.length - 1);
         while(_loc3_ >= 0)
         {
            (_loc4_ = this.§=! §[_loc3_] as §+>§).§%1§(param2,param1);
            if(!_loc6_)
            {
               §§push(_loc3_);
               if(_loc5_ || this)
               {
                  §§push(§§pop() - 1);
               }
               _loc3_ = §§pop();
            }
         }
      }
      
      private function §@g§(param1:§+>§, param2:Number) : Boolean
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc7_:§+>§ = null;
         if(!_loc9_)
         {
            §§push(this.mSardineCanAdded);
            if(_loc8_)
            {
               if(!§§pop())
               {
                  if(_loc8_ || param1)
                  {
                     §§push(true);
                     if(!_loc9_)
                     {
                        return §§pop();
                     }
                     addr49:
                     if(§§pop())
                     {
                        if(!_loc9_)
                        {
                           §§push(false);
                           if(!(_loc9_ && this))
                           {
                              §§goto(addr60);
                           }
                           else
                           {
                              addr62:
                              var _loc3_:* = §§pop();
                              if(_loc8_)
                              {
                                 §§push(param1.§8!'§);
                                 §§push(param1.§[!3§);
                                 loop0:
                                 while(true)
                                 {
                                    if(§§pop() != §§pop())
                                    {
                                       §§push(this.§8[§);
                                       loop1:
                                       while(true)
                                       {
                                          §§push(0);
                                          addr381:
                                          while(true)
                                          {
                                             if(§§pop() == §§pop())
                                             {
                                                while(true)
                                                {
                                                   if(!_loc9_)
                                                   {
                                                      this.§8[§ = this.§1! §.§6&§;
                                                      loop4:
                                                      while(true)
                                                      {
                                                         if(_loc8_)
                                                         {
                                                            addr367:
                                                            loop11:
                                                            while(true)
                                                            {
                                                               §§push(Boolean(param1.§2h§()));
                                                               loop12:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop());
                                                                  loop13:
                                                                  while(true)
                                                                  {
                                                                     if(!§§pop())
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§pop();
                                                                           addr374:
                                                                           while(true)
                                                                           {
                                                                              §§push(this.§[%§(param1));
                                                                              if(!_loc8_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              §§push(Boolean(§§pop()));
                                                                           }
                                                                        }
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        loop17:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop());
                                                                           loop18:
                                                                           while(true)
                                                                           {
                                                                              if(!§§pop())
                                                                              {
                                                                                 §§pop();
                                                                                 continue loop1;
                                                                              }
                                                                              loop23:
                                                                              while(true)
                                                                              {
                                                                                 loop24:
                                                                                 while(§§pop())
                                                                                 {
                                                                                    if(this.mMightyEagleTimer < §`5§.§%!4§)
                                                                                    {
                                                                                       loop25:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(this.mMightyEagleTimer);
                                                                                          §§push(param2);
                                                                                          loop26:
                                                                                          while(true)
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
                                                                                                   if(!_loc8_)
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   §§push(this.mMightyEagleTimer);
                                                                                                   §§push(§`5§.§%t§);
                                                                                                   loop29:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop() < §§pop());
                                                                                                      loop30:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop());
                                                                                                         if(_loc9_)
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         if(!(_loc8_ || this))
                                                                                                         {
                                                                                                            continue loop18;
                                                                                                         }
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            §§pop();
                                                                                                            §§push(_loc4_);
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§`5§.§%t§);
                                                                                                               addr255:
                                                                                                               while(_loc8_)
                                                                                                               {
                                                                                                                  if(!_loc9_)
                                                                                                                  {
                                                                                                                     §§push(§§pop() > §§pop());
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(_loc8_)
                                                                                                                        {
                                                                                                                           continue loop12;
                                                                                                                        }
                                                                                                                        §§push(this.§[%§(param1));
                                                                                                                        addr173:
                                                                                                                        continue loop24;
                                                                                                                        if(_loc8_)
                                                                                                                        {
                                                                                                                           if(_loc8_)
                                                                                                                           {
                                                                                                                              continue loop17;
                                                                                                                           }
                                                                                                                           continue loop30;
                                                                                                                        }
                                                                                                                     }
                                                                                                                     continue loop12;
                                                                                                                  }
                                                                                                                  addr311:
                                                                                                                  while(_loc8_)
                                                                                                                  {
                                                                                                                     §§push(§§pop() > §§pop());
                                                                                                                     continue loop23;
                                                                                                                  }
                                                                                                               }
                                                                                                               continue loop26;
                                                                                                               addr223:
                                                                                                               §§push(Number(§§pop()));
                                                                                                               if(!(_loc9_ && this))
                                                                                                               {
                                                                                                                  _loc5_ = §§pop();
                                                                                                                  loop40:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(param1.§>b§());
                                                                                                                     if(_loc8_ || param2)
                                                                                                                     {
                                                                                                                        addr100:
                                                                                                                        if(!(_loc9_ && param2))
                                                                                                                        {
                                                                                                                           §§push(§§pop().GetPosition());
                                                                                                                           if(!_loc9_)
                                                                                                                           {
                                                                                                                              §§push(§§pop().y);
                                                                                                                              if(!_loc9_)
                                                                                                                              {
                                                                                                                                 §§push(§`5§.§'j§);
                                                                                                                                 if(!(_loc9_ && _loc3_))
                                                                                                                                 {
                                                                                                                                    §§push(§`5§.§^5§);
                                                                                                                                    if(_loc8_)
                                                                                                                                    {
                                                                                                                                       addr127:
                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                       §§push(1.07);
                                                                                                                                    }
                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                    if(_loc8_)
                                                                                                                                    {
                                                                                                                                       if(_loc8_ || _loc3_)
                                                                                                                                       {
                                                                                                                                          if(_loc9_)
                                                                                                                                          {
                                                                                                                                             continue loop0;
                                                                                                                                          }
                                                                                                                                          §§push(§§pop() - §§pop());
                                                                                                                                          if(_loc9_ && param2)
                                                                                                                                          {
                                                                                                                                             break;
                                                                                                                                          }
                                                                                                                                          addr149:
                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                          if(_loc8_)
                                                                                                                                          {
                                                                                                                                             _loc6_ = §§pop();
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(_loc9_ && _loc3_)
                                                                                                                                                {
                                                                                                                                                   continue loop1;
                                                                                                                                                   if(§§pop())
                                                                                                                                                   {
                                                                                                                                                      if(!_loc8_)
                                                                                                                                                      {
                                                                                                                                                         continue;
                                                                                                                                                      }
                                                                                                                                                      _loc3_ = true;
                                                                                                                                                      if(_loc8_)
                                                                                                                                                      {
                                                                                                                                                         if(true)
                                                                                                                                                         {
                                                                                                                                                            break;
                                                                                                                                                         }
                                                                                                                                                         continue loop40;
                                                                                                                                                      }
                                                                                                                                                      addr200:
                                                                                                                                                      loop35:
                                                                                                                                                      while(_loc8_ || _loc3_)
                                                                                                                                                      {
                                                                                                                                                         §§push(param1.§>b§());
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop().GetPosition());
                                                                                                                                                            addr210:
                                                                                                                                                            addr306:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop().x);
                                                                                                                                                               if(_loc9_ && param2)
                                                                                                                                                               {
                                                                                                                                                                  break;
                                                                                                                                                               }
                                                                                                                                                               §§push(§`5§.§'j§);
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() - §§pop());
                                                                                                                                                                  addr221:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     if(!_loc9_)
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr223);
                                                                                                                                                                     }
                                                                                                                                                                     else
                                                                                                                                                                     {
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§`5§.§`i§);
                                                                                                                                                                           addr422:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              if(§§pop() < §§pop())
                                                                                                                                                                              {
                                                                                                                                                                                 break loop35;
                                                                                                                                                                              }
                                                                                                                                                                              addr397:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(param1.§>b§());
                                                                                                                                                                                 addr400:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(param2);
                                                                                                                                                                                    if(_loc8_ || param2)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop() * this.§]$§);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§pop().SetAngularVelocity(§§pop());
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       this.§8[§ = 0;
                                                                                                                                                                                       addr396:
                                                                                                                                                                                       addr166:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop11;
                                                                                                                                                                                       }
                                                                                                                                                                                       if(_loc9_ && _loc3_)
                                                                                                                                                                                       {
                                                                                                                                                                                          continue;
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr173);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr100);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        addr420:
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr311);
                                                                                                                                                               §§goto(addr210);
                                                                                                                                                            }
                                                                                                                                                            continue loop40;
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(this);
                                                                                                                                                         §§push(this.§]$§);
                                                                                                                                                         if(!_loc9_)
                                                                                                                                                         {
                                                                                                                                                            §§push(param2);
                                                                                                                                                            if(_loc8_)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() * §`5§.§@l§);
                                                                                                                                                            }
                                                                                                                                                            §§push(§§pop() + §§pop());
                                                                                                                                                         }
                                                                                                                                                         §§pop().§]$§ = §§pop();
                                                                                                                                                         §§goto(addr397);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                continue loop4;
                                                                                                                                                addr81:
                                                                                                                                             }
                                                                                                                                             §§push(this);
                                                                                                                                             §§push("BIRD_MIGHTY_EAGLE");
                                                                                                                                             §§push(_loc5_);
                                                                                                                                             §§push(_loc6_);
                                                                                                                                             §§push(§`5§.§=!,§);
                                                                                                                                             if(_loc8_ || this)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() * 1.2);
                                                                                                                                             }
                                                                                                                                             _loc7_ = §§pop().addObject(§§pop(),§§pop(),§§pop(),§§pop());
                                                                                                                                             if(_loc8_ || param1)
                                                                                                                                             {
                                                                                                                                                this.mMightyEagleAdded = true;
                                                                                                                                                addr482:
                                                                                                                                                this.§8[§ = 0;
                                                                                                                                                if(!(_loc9_ && param2))
                                                                                                                                                {
                                                                                                                                                   _loc7_.§<p§.§-+§(1.82);
                                                                                                                                                   if(_loc8_)
                                                                                                                                                   {
                                                                                                                                                      if(false)
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr482);
                                                                                                                                                      }
                                                                                                                                                      addr498:
                                                                                                                                                      this.mMightyEagleTimer = _loc4_;
                                                                                                                                                      break loop24;
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr482);
                                                                                                                                                   addr493:
                                                                                                                                                }
                                                                                                                                                addr497:
                                                                                                                                                §§goto(addr497);
                                                                                                                                             }
                                                                                                                                             §§goto(addr493);
                                                                                                                                             addr152:
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             §§goto(addr221);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          §§goto(addr255);
                                                                                                                                       }
                                                                                                                                       §§goto(addr422);
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       §§goto(addr220);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr127);
                                                                                                                              }
                                                                                                                              §§goto(addr149);
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              §§goto(addr210);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr400);
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        §§goto(addr209);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  continue loop27;
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(§§pop())
                                                                                                               {
                                                                                                                  continue loop25;
                                                                                                               }
                                                                                                               addr174:
                                                                                                               §§push(_loc4_);
                                                                                                               if(!(_loc9_ && param1))
                                                                                                               {
                                                                                                                  if(_loc8_ || param1)
                                                                                                                  {
                                                                                                                     continue loop29;
                                                                                                                  }
                                                                                                                  continue loop28;
                                                                                                               }
                                                                                                               §§goto(addr221);
                                                                                                            }
                                                                                                            §§goto(addr498);
                                                                                                            addr269:
                                                                                                         }
                                                                                                         §§goto(addr422);
                                                                                                      }
                                                                                                      addr350:
                                                                                                      while(_loc8_)
                                                                                                      {
                                                                                                         if(!§§pop())
                                                                                                         {
                                                                                                            continue loop23;
                                                                                                         }
                                                                                                         §§pop();
                                                                                                         §§goto(addr306);
                                                                                                         §§push(this.§1! §.§6&§);
                                                                                                      }
                                                                                                      continue loop13;
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr374);
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    break;
                                                                                 }
                                                                                 return _loc3_;
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            addr367:
                                                         }
                                                         §§goto(addr396);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      while(true)
                                                      {
                                                      }
                                                      addr418:
                                                   }
                                                   §§goto(addr420);
                                                }
                                             }
                                             §§goto(addr367);
                                          }
                                       }
                                    }
                                    §§goto(addr418);
                                 }
                              }
                              §§goto(addr396);
                           }
                        }
                        §§goto(addr62);
                     }
                  }
                  §§push(false);
               }
               else
               {
                  addr45:
                  §§push(this.mMightyEagleAdded);
                  if(_loc8_)
                  {
                     §§goto(addr49);
                  }
               }
               §§goto(addr62);
            }
            addr60:
            return §§pop();
         }
         §§goto(addr45);
      }
      
      private function §6b§(param1:§+>§, param2:Number) : Boolean
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc5_:§+>§ = null;
         if(_loc9_)
         {
            §§push(this.§ Q§);
            if(!_loc8_)
            {
               §§push(!§§pop());
            }
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  loop1:
                  while(true)
                  {
                     §§pop();
                     loop2:
                     while(true)
                     {
                        loop3:
                        while(true)
                        {
                           §§push(this.mMightyEagleTimer);
                           if(_loc8_ && this)
                           {
                              break;
                           }
                           §§push(§§pop() > §`5§.§&!$§);
                           if(_loc9_)
                           {
                              if(!_loc8_)
                              {
                                 while(§§pop())
                                 {
                                    if(!(_loc8_ && this))
                                    {
                                       while(true)
                                       {
                                          this.§ Q§ = true;
                                       }
                                       addr69:
                                    }
                                    do
                                    {
                                       this.§1! §.§0u§();
                                    }
                                    while(_loc8_ && _loc3_);
                                    
                                    if(!(_loc8_ && this))
                                    {
                                       if(true)
                                       {
                                          break;
                                       }
                                       continue loop3;
                                    }
                                    continue loop2;
                                 }
                                 §§push(Number(3));
                                 break;
                                 addr60:
                              }
                              continue loop0;
                           }
                           continue loop1;
                        }
                        var _loc3_:* = §§pop();
                        if(_loc9_ || param2)
                        {
                           §§push(this);
                           §§push(this.mMightyEagleTimer);
                           if(_loc9_ || param2)
                           {
                              §§push(§§pop() + param2);
                           }
                           §§pop().mMightyEagleTimer = §§pop();
                           if(!_loc8_)
                           {
                              §§push(this.§1! §.particles);
                              §§push(§'b§.§"x§);
                              §§push(§>=§.§>!5§);
                              §§push(§'b§.§=<§);
                              §§push(param1.§>b§().GetPosition().x);
                              if(_loc9_)
                              {
                                 §§push(_loc3_);
                                 if(_loc9_ || param1)
                                 {
                                    §§push(§§pop() - §§pop());
                                    if(_loc9_)
                                    {
                                       §§push(Math.random() * (_loc3_ * 2));
                                       if(!_loc8_)
                                       {
                                          addr142:
                                          §§push(§§pop() + §§pop());
                                          §§push(param1.§>b§().GetPosition().y);
                                          if(_loc9_ || param2)
                                          {
                                             addr153:
                                             §§push(_loc3_);
                                             if(_loc9_ || param2)
                                             {
                                                addr171:
                                                §§push(§§pop() - §§pop());
                                                if(!_loc8_)
                                                {
                                                   addr164:
                                                   §§push(Math.random() * (_loc3_ * 2));
                                                }
                                                §§pop().§-X§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),3500,"",§'b§.§@#§(param1.§57§),0,0,1,0,4);
                                                addr183:
                                                var _loc4_:* = 1;
                                                addr272:
                                                if(this.mMightyEagleHasTouchedGround)
                                                {
                                                   addr273:
                                                   §§push(param1);
                                                   §§push(§`5§.§[M§);
                                                   if(!_loc8_)
                                                   {
                                                      §§push(§§pop() * param2);
                                                   }
                                                   §§pop().§23§(§§pop());
                                                   §§push(-1);
                                                   if(!_loc8_)
                                                   {
                                                      _loc4_ = §§pop();
                                                      addr269:
                                                      §§push(this.§-w§);
                                                      if(!(_loc8_ && param1))
                                                      {
                                                         if(§§pop())
                                                         {
                                                            this.§-w§ = false;
                                                            this.§1! §.§%§();
                                                            param1.§;v§(§7E§.§2c§);
                                                            addr226:
                                                            if(!(_loc8_ && param2))
                                                            {
                                                               this.mSardineCanAdded = false;
                                                               if(_loc9_ || this)
                                                               {
                                                                  if(!_loc9_)
                                                                  {
                                                                     §§goto(addr269);
                                                                  }
                                                                  addr204:
                                                                  param1.§<p§.§11§ = true;
                                                                  addr201:
                                                                  addr206:
                                                                  §§push(param1.§<p§);
                                                                  if(!_loc8_)
                                                                  {
                                                                     §§pop().§;&§();
                                                                     if(!(_loc8_ && param1))
                                                                     {
                                                                        if(false)
                                                                        {
                                                                           §§goto(addr201);
                                                                        }
                                                                        addr283:
                                                                        var _loc6_:int = 0;
                                                                        var _loc7_:* = this.§=! §;
                                                                        addr344:
                                                                        §§push(§§hasnext(_loc7_,_loc6_));
                                                                        if(_loc9_ || param1)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              _loc5_ = §§nextvalue(_loc6_,_loc7_);
                                                                              §§push(Boolean(_loc5_));
                                                                              if(!_loc8_)
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    if(!_loc8_)
                                                                                    {
                                                                                       addr303:
                                                                                       §§pop();
                                                                                       if(!(_loc8_ && this))
                                                                                       {
                                                                                          §§push(_loc5_.§+,§());
                                                                                          if(!(_loc8_ && param2))
                                                                                          {
                                                                                             addr321:
                                                                                             if(§§pop())
                                                                                             {
                                                                                                if(!(_loc8_ && param2))
                                                                                                {
                                                                                                   §§push(_loc5_.§>b§());
                                                                                                   if(_loc9_)
                                                                                                   {
                                                                                                      §§pop().SetAwake(true);
                                                                                                      if(!_loc8_)
                                                                                                      {
                                                                                                         §§push(_loc5_.§>b§());
                                                                                                      }
                                                                                                      §§goto(addr344);
                                                                                                   }
                                                                                                   §§pop().SetLinearVelocity(new b2Vec2(0,-18));
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr321);
                                                                                       }
                                                                                       §§goto(addr344);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr321);
                                                                              }
                                                                              §§goto(addr303);
                                                                           }
                                                                           if(_loc9_ || param1)
                                                                           {
                                                                              if(!_loc8_)
                                                                              {
                                                                                 if(!_loc8_)
                                                                                 {
                                                                                    this.§+§();
                                                                                    addr368:
                                                                                    §§push(this.mMightyEagleTimer > 6000);
                                                                                    if(!_loc8_)
                                                                                    {
                                                                                       if(§§pop())
                                                                                       {
                                                                                          if(_loc9_)
                                                                                          {
                                                                                             §§pop();
                                                                                             §§push(this.isPigsAlive());
                                                                                             if(_loc9_ || param2)
                                                                                             {
                                                                                                addr388:
                                                                                                §§push(Boolean(§§pop()));
                                                                                                if(_loc9_ || param2)
                                                                                                {
                                                                                                   addr396:
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      if(_loc9_ || this)
                                                                                                      {
                                                                                                         _loc6_ = 0;
                                                                                                         if(!_loc8_)
                                                                                                         {
                                                                                                            addr408:
                                                                                                            _loc7_ = this.§=! §;
                                                                                                            addr469:
                                                                                                            for each(_loc5_ in _loc7_)
                                                                                                            {
                                                                                                               §§push(Boolean(_loc5_));
                                                                                                               if(!(_loc8_ && param2))
                                                                                                               {
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     if(!_loc8_)
                                                                                                                     {
                                                                                                                        addr432:
                                                                                                                        §§pop();
                                                                                                                        if(_loc9_ || param2)
                                                                                                                        {
                                                                                                                           §§push(_loc5_.§+,§());
                                                                                                                           if(!(_loc8_ && param1))
                                                                                                                           {
                                                                                                                              addr450:
                                                                                                                              if(§§pop())
                                                                                                                              {
                                                                                                                                 if(!(_loc8_ && param2))
                                                                                                                                 {
                                                                                                                                    §§push(_loc5_);
                                                                                                                                    §§push(_loc5_.§[!3§);
                                                                                                                                    if(!_loc8_)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() * 2);
                                                                                                                                    }
                                                                                                                                    §§pop().applyDamage(§§pop(),true,true,true);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr450);
                                                                                                                        }
                                                                                                                        §§goto(addr469);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr450);
                                                                                                               }
                                                                                                               §§goto(addr432);
                                                                                                            }
                                                                                                         }
                                                                                                         param1.§'1§(param2,new Point(1,_loc4_ * §`5§.§^5§),§`5§.§<6§);
                                                                                                         addr479:
                                                                                                         if(!_loc9_)
                                                                                                         {
                                                                                                            addr510:
                                                                                                            §§goto(addr479);
                                                                                                         }
                                                                                                         addr476:
                                                                                                         return false;
                                                                                                         addr511:
                                                                                                      }
                                                                                                      §§goto(addr510);
                                                                                                   }
                                                                                                   §§goto(addr511);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr476);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr396);
                                                                                    }
                                                                                    §§goto(addr388);
                                                                                 }
                                                                                 §§goto(addr368);
                                                                              }
                                                                           }
                                                                           §§goto(addr408);
                                                                        }
                                                                        §§goto(addr469);
                                                                     }
                                                                     §§goto(addr206);
                                                                  }
                                                                  §§goto(addr204);
                                                               }
                                                               §§goto(addr226);
                                                            }
                                                            §§goto(addr273);
                                                         }
                                                         §§goto(addr368);
                                                      }
                                                      §§goto(addr272);
                                                   }
                                                   §§goto(addr283);
                                                }
                                                this.mMightyEagleHasTouchedGround = param1.§>b§().GetPosition().y >= -5.5;
                                                this.§-w§ = this.mMightyEagleHasTouchedGround;
                                                §§goto(addr510);
                                             }
                                             §§push(§§pop() + §§pop());
                                          }
                                          §§goto(addr171);
                                       }
                                       §§goto(addr153);
                                    }
                                    §§goto(addr142);
                                 }
                                 §§goto(addr164);
                              }
                              §§goto(addr142);
                           }
                        }
                        §§goto(addr183);
                     }
                  }
               }
               §§goto(addr60);
            }
         }
         §§goto(addr69);
      }
      
      private function §2!,§() : void
      {
         var _loc20_:Boolean = true;
         var _loc21_:Boolean = false;
         var _loc1_:§7]§ = null;
         var _loc2_:* = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:* = NaN;
         var _loc6_:§+>§ = null;
         var _loc7_:* = 0;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         var _loc12_:* = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:* = NaN;
         var _loc16_:* = NaN;
         var _loc17_:* = NaN;
         loop0:
         while(this.§-W§.length > 0)
         {
            _loc1_ = this.§-W§.shift();
            §§push(_loc1_.§-q§);
            if(!_loc21_)
            {
               §§push(Number(§§pop()));
               if(_loc20_)
               {
                  _loc2_ = §§pop();
                  _loc3_ = _loc1_.x;
                  if(_loc20_)
                  {
                     while(true)
                     {
                        §§push(_loc1_.y);
                        if(_loc20_)
                        {
                           _loc4_ = §§pop();
                           if(!_loc20_)
                           {
                              continue loop0;
                           }
                           §§push(_loc1_.damage);
                           if(!_loc21_)
                           {
                              §§push(Number(§§pop()));
                              if(!_loc21_)
                              {
                                 _loc5_ = §§pop();
                                 if(_loc20_)
                                 {
                                    if(false)
                                    {
                                       continue;
                                    }
                                    §§push(0);
                                    if(!_loc21_)
                                    {
                                       var _loc18_:* = §§pop();
                                       if(_loc20_ || _loc3_)
                                       {
                                          loop2:
                                          for each(_loc6_ in this.§=! §)
                                          {
                                             §§push(_loc6_.§>b§());
                                             if(_loc20_)
                                             {
                                                §§push(§§pop().GetPosition());
                                                if(!(_loc21_ && _loc2_))
                                                {
                                                   §§push(§§pop().x);
                                                   §§push(_loc3_);
                                                   if(_loc20_)
                                                   {
                                                      _loc8_ = §§pop() - §§pop();
                                                      §§push(_loc6_.§>b§());
                                                      while(true)
                                                      {
                                                         §§push(§§pop().GetPosition());
                                                         addr371:
                                                         while(true)
                                                         {
                                                            _loc9_ = §§pop().y - _loc4_;
                                                            while(true)
                                                            {
                                                               §§push(Number(Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_)));
                                                               §§push(Number(Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_)));
                                                               loop21:
                                                               while(true)
                                                               {
                                                                  _loc10_ = §§pop();
                                                                  §§push(_loc1_.§-q§);
                                                                  while(true)
                                                                  {
                                                                     if(§§pop() <= §§pop())
                                                                     {
                                                                        loop31:
                                                                        while(true)
                                                                        {
                                                                           §§push(Number(_loc1_.push));
                                                                           while(true)
                                                                           {
                                                                              _loc11_ = §§pop();
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc10_);
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(1);
                                                                                    while(true)
                                                                                    {
                                                                                       if(§§pop() > §§pop())
                                                                                       {
                                                                                          addr339:
                                                                                          §§push(_loc11_);
                                                                                          §§push(_loc10_);
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop() / §§pop());
                                                                                             addr342:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(Number(§§pop()));
                                                                                                addr343:
                                                                                                while(true)
                                                                                                {
                                                                                                   _loc11_ = §§pop();
                                                                                                   if(_loc21_)
                                                                                                   {
                                                                                                      continue loop31;
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          addr341:
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc10_);
                                                                                          addr323:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(0);
                                                                                             while(true)
                                                                                             {
                                                                                                if(§§pop() > §§pop())
                                                                                                {
                                                                                                   §§push(_loc11_);
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc8_);
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!_loc20_)
                                                                                                         {
                                                                                                            continue loop21;
                                                                                                         }
                                                                                                         §§push(_loc10_);
                                                                                                         loop12:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop() / §§pop());
                                                                                                            loop13:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(Number(§§pop() * §§pop()));
                                                                                                               addr333:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  _loc12_ = §§pop();
                                                                                                                  §§push(_loc11_);
                                                                                                                  §§push(_loc9_);
                                                                                                                  addr285:
                                                                                                                  while(_loc20_)
                                                                                                                  {
                                                                                                                     continue loop12;
                                                                                                                  }
                                                                                                                  continue loop13;
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   addr231:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc10_);
                                                                                                      if(_loc20_ || _loc1_)
                                                                                                      {
                                                                                                         if(!_loc20_)
                                                                                                         {
                                                                                                            break;
                                                                                                            addr244:
                                                                                                         }
                                                                                                         §§push(_loc1_.§`K§);
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(_loc20_)
                                                                                                            {
                                                                                                               if(§§pop() > §§pop())
                                                                                                               {
                                                                                                                  break;
                                                                                                               }
                                                                                                               §§goto(addr249);
                                                                                                               §§push(Number(_loc5_));
                                                                                                            }
                                                                                                            §§goto(addr341);
                                                                                                         }
                                                                                                         continue loop2;
                                                                                                      }
                                                                                                      §§goto(addr249);
                                                                                                   }
                                                                                                   §§goto(addr343);
                                                                                                   addr231:
                                                                                                }
                                                                                                §§goto(addr310);
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr231);
                                                                  }
                                                               }
                                                               while(!(_loc21_ && _loc1_))
                                                               {
                                                                  §§push(_loc14_);
                                                                  if(!(_loc21_ && _loc1_))
                                                                  {
                                                                     §§push(_loc10_);
                                                                     if(_loc20_)
                                                                     {
                                                                        §§goto(addr191);
                                                                     }
                                                                     §§goto(addr244);
                                                                  }
                                                                  §§goto(addr323);
                                                               }
                                                            }
                                                         }
                                                         §§push(_loc6_.§>b§());
                                                         if(!_loc20_)
                                                         {
                                                            continue;
                                                         }
                                                         while(true)
                                                         {
                                                            §§pop().ApplyImpulse(new b2Vec2(_loc12_,_loc13_),new b2Vec2(_loc3_,_loc4_));
                                                            if(_loc20_)
                                                            {
                                                               §§goto(addr231);
                                                            }
                                                            §§goto(addr318);
                                                         }
                                                         addr270:
                                                      }
                                                   }
                                                   §§goto(addr339);
                                                }
                                                §§goto(addr371);
                                             }
                                             §§goto(addr270);
                                          }
                                       }
                                       if(!_loc21_)
                                       {
                                          §§push(this.§1! §);
                                          loop38:
                                          while(true)
                                          {
                                             §§push(§§pop().particles);
                                             loop39:
                                             while(true)
                                             {
                                                §§push(this.§0n§(_loc1_.type));
                                                loop40:
                                                while(true)
                                                {
                                                   §§push(§>=§.§>!5§);
                                                   addr598:
                                                   while(true)
                                                   {
                                                      §§push(§'b§.§`F§);
                                                      addr600:
                                                      while(true)
                                                      {
                                                         §§push(_loc3_);
                                                         addr601:
                                                         while(true)
                                                         {
                                                            §§push(_loc4_);
                                                            addr602:
                                                            while(true)
                                                            {
                                                               §§pop().§-X§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),600,"",§'b§.§'e§,0,0,0,0,1,20,true);
                                                               loop45:
                                                               while(true)
                                                               {
                                                                  §§push(30);
                                                                  addr570:
                                                                  while(true)
                                                                  {
                                                                     _loc7_ = §§pop();
                                                                     if(_loc21_ && _loc2_)
                                                                     {
                                                                        continue loop0;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc7_);
                                                                        addr616:
                                                                        while(true)
                                                                        {
                                                                           §§push(150);
                                                                           addr617:
                                                                           loop50:
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
                                                                                 §§push(Math.random() * _loc2_);
                                                                              }
                                                                              §§push(Number(§§pop() + §§pop()));
                                                                              while(true)
                                                                              {
                                                                                 _loc15_ = §§pop();
                                                                                 addr565:
                                                                                 while(!_loc21_)
                                                                                 {
                                                                                    §§push(1250);
                                                                                    §§push(Math.random() * 750);
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop() + §§pop());
                                                                                       addr547:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(Number(§§pop()));
                                                                                          addr548:
                                                                                          while(true)
                                                                                          {
                                                                                             _loc16_ = §§pop();
                                                                                             addr549:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc7_);
                                                                                                continue loop50;
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 addr529:
                                                                                 continue loop45;
                                                                                 while(!(_loc21_ && this))
                                                                                 {
                                                                                    _loc17_ = §§pop();
                                                                                    if(_loc20_)
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(this.§1! §);
                                                                                          if(!_loc21_)
                                                                                          {
                                                                                             §§push(§§pop().particles);
                                                                                             if(!_loc21_)
                                                                                             {
                                                                                                continue loop40;
                                                                                             }
                                                                                             continue loop39;
                                                                                          }
                                                                                          continue loop38;
                                                                                       }
                                                                                       continue loop0;
                                                                                       addr429:
                                                                                    }
                                                                                    §§goto(addr565);
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
                                                }
                                             }
                                          }
                                       }
                                       while(true)
                                       {
                                          if(false)
                                          {
                                             §§goto(addr429);
                                          }
                                          §§goto(addr615);
                                          addr419:
                                          _loc7_ = §§pop();
                                          if(_loc20_ || _loc1_)
                                          {
                                             continue;
                                          }
                                          continue loop0;
                                       }
                                    }
                                    §§goto(addr570);
                                 }
                                 §§goto(addr549);
                              }
                              §§goto(addr547);
                           }
                           §§goto(addr548);
                        }
                        break;
                     }
                     while(true)
                     {
                        §§push(int(§§pop()));
                        if(!_loc21_)
                        {
                           if(_loc20_ || _loc1_)
                           {
                              §§goto(addr419);
                           }
                           §§goto(addr514);
                        }
                        §§goto(addr616);
                     }
                  }
                  §§goto(addr511);
               }
               §§goto(addr547);
            }
            §§goto(addr548);
         }
      }
      
      protected function §0n§(param1:int) : String
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
         return §'b§.§"s§;
      }
      
      public function §+!H§(param1:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:§+>§ = null;
         var _loc3_:* = int(this.§=! §.length - 1);
         loop0:
         for(; _loc3_ >= 0; while(true)
         {
            §§push(_loc3_);
            if(_loc4_)
            {
               §§push(§§pop() - 1);
            }
            _loc3_ = §§pop();
            if(true)
            {
               break;
            }
            §§goto(addr42);
         })
         {
            _loc2_ = this.§=! §[_loc3_];
            §§push(_loc2_.§8i§());
            if(!(_loc5_ && _loc2_))
            {
               if(§§pop())
               {
                  §§push(this.§@g§(_loc2_,param1));
               }
               else
               {
                  §§push(_loc2_.§[d§());
                  loop1:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        §§push(this.§[%§(_loc2_));
                        loop2:
                        while(true)
                        {
                           if(§§pop())
                           {
                              _loc2_.§;v§(§7E§.§&!2§);
                              while(!_loc5_)
                              {
                                 this.§]k§(_loc3_,false,false,false);
                                 if(_loc4_ || _loc2_)
                                 {
                                    break loop2;
                                 }
                              }
                           }
                           else
                           {
                              §§push(_loc2_.isReadyToBeRemoved(param1));
                              while(!§§pop())
                              {
                                 §§push(_loc2_.§!!8§());
                                 if(!(_loc4_ || param1))
                                 {
                                    continue;
                                 }
                                 if(_loc5_)
                                 {
                                    continue loop2;
                                 }
                                 if(_loc5_)
                                 {
                                    continue loop1;
                                 }
                                 if(!(_loc4_ || _loc2_))
                                 {
                                    addr182:
                                    if(§§pop())
                                    {
                                       this.§]k§(_loc3_,false,false,false);
                                    }
                                    break loop2;
                                 }
                                 if(!§§pop())
                                 {
                                    break loop2;
                                 }
                                 if(_loc4_ || param1)
                                 {
                                    if(!_loc5_)
                                    {
                                       if(_loc4_ || this)
                                       {
                                          _loc2_.update(param1);
                                          addr95:
                                          if(!_loc5_)
                                          {
                                             break loop2;
                                          }
                                          break;
                                       }
                                       this.§]k§(_loc3_,false,true,true);
                                       addr117:
                                    }
                                    while(true)
                                    {
                                       break loop2;
                                    }
                                    addr42:
                                 }
                                 §§goto(addr95);
                              }
                              _loc2_.§;v§(§7E§.§&!2§);
                              §§goto(addr117);
                           }
                        }
                        continue loop0;
                     }
                     this.§6b§(_loc2_,param1);
                     continue loop0;
                  }
               }
            }
            §§goto(addr182);
         }
         if(_loc4_)
         {
            this.§2!,§();
         }
      }
      
      private function §+§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§?"§ = null;
         for each(_loc1_ in this.§?]§)
         {
            if(!_loc4_)
            {
               this.§1! §.§[f§.§#_§.DestroyJoint(_loc1_.§@I§);
            }
         }
      }
      
      public function §]N§() : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§+>§ = null;
         var _loc1_:int = 0;
         while(true)
         {
            if(_loc1_ >= this.§=! §.length)
            {
               return false;
            }
            _loc2_ = this.§=! §[_loc1_];
            if(!(_loc4_ && _loc2_))
            {
               §§push(_loc2_.explode());
               if(_loc4_ && this)
               {
                  break;
               }
               if(§§pop())
               {
                  if(_loc3_)
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
      
      public function §[%§(param1:§+>§) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(Boolean(param1));
            loop0:
            while(true)
            {
               §§push(§§pop());
               while(true)
               {
                  if(§§pop())
                  {
                     §§pop();
                     loop2:
                     while(true)
                     {
                        §§push(param1.§&$§.§-7§() == §`!%§.§function§);
                        if(!_loc3_)
                        {
                           §§push(!§§pop());
                           if(_loc2_ || param1)
                           {
                              addr90:
                              §§push(Boolean(§§pop()));
                              if(_loc3_ && this)
                              {
                                 continue loop0;
                              }
                              while(true)
                              {
                              }
                           }
                           while(true)
                           {
                              §§push(§§pop());
                              if(_loc3_)
                              {
                                 break loop2;
                              }
                              if(§§pop())
                              {
                                 continue loop0;
                              }
                              loop5:
                              while(true)
                              {
                                 loop6:
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       if(_loc2_)
                                       {
                                          if(_loc2_)
                                          {
                                             §§push(true);
                                             break;
                                          }
                                          addr122:
                                          while(!_loc3_)
                                          {
                                             §§push(this.§1! §.§1!6§.§'r§(param1.§>b§().GetPosition().x,param1.§>b§().GetPosition().y));
                                             if(!_loc3_)
                                             {
                                                §§push(Boolean(§§pop()));
                                                continue loop5;
                                             }
                                             continue loop0;
                                          }
                                          continue loop2;
                                       }
                                       addr72:
                                       while(true)
                                       {
                                       }
                                    }
                                    while(true)
                                    {
                                       §§push(false);
                                       if(_loc3_ && _loc2_)
                                       {
                                          break loop6;
                                       }
                                       continue loop6;
                                    }
                                 }
                                 return §§pop();
                              }
                           }
                        }
                        §§goto(addr90);
                     }
                     continue;
                  }
                  §§goto(addr109);
               }
            }
         }
         §§goto(addr72);
      }
      
      public function §]k§(param1:int, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc6_:§?"§ = null;
         var _loc7_:§3S§ = null;
         if(!(_loc12_ && param2))
         {
            if(param1 < 0)
            {
               if(!_loc12_)
               {
                  §§goto(addr35);
               }
            }
            var _loc5_:§+>§;
            §§push((_loc5_ = this.§=! §[param1]).§+,§());
            if(!_loc12_)
            {
               if(§§pop())
               {
                  var _loc8_:*;
                  §§push((_loc8_ = this).§`a§);
                  if(!(_loc12_ && param2))
                  {
                     §§push(§§pop() + 1);
                  }
                  var _loc9_:* = §§pop();
                  if(!(_loc12_ && param3))
                  {
                     _loc8_.§`a§ = _loc9_;
                  }
                  addr201:
                  if(_loc5_ == this.§1! §.activeObject)
                  {
                     while(true)
                     {
                        §§push(this.§1! §);
                        addr208:
                        while(true)
                        {
                           §§pop().activeObject = null;
                        }
                     }
                     addr206:
                  }
                  loop2:
                  while(true)
                  {
                     §§push(param2);
                     loop3:
                     while(true)
                     {
                        if(§§pop())
                        {
                           loop4:
                           while(true)
                           {
                              §§push(this.§1! §);
                              if(!(_loc13_ || this))
                              {
                                 break;
                              }
                              §§push(_loc5_.§&$§.score);
                              §§push(§^;§.§"!+§);
                              §§push(true);
                              §§push(_loc5_.§>b§().GetPosition().x);
                              §§push(_loc5_.§>b§().GetPosition().y);
                              if(_loc13_ || param3)
                              {
                                 §§push(3);
                                 if(_loc13_)
                                 {
                                    addr195:
                                    §§push(§§pop() - §§pop());
                                    §§push(§'b§.§+[§(_loc5_.§57§));
                                 }
                                 §§pop().addScore(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
                                 while(true)
                                 {
                                    addr147:
                                    while(true)
                                    {
                                       §§push(param3);
                                       loop7:
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             if(_loc12_)
                                             {
                                                continue loop4;
                                             }
                                             _loc5_.addDestructionParticles(this.§1! §.particles);
                                          }
                                          §§push(param4);
                                          loop8:
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                this.checkExplosions(_loc5_);
                                             }
                                             addr114:
                                             while(true)
                                             {
                                                §§push(_loc5_.isTexture());
                                                if(_loc13_)
                                                {
                                                   continue loop7;
                                                }
                                                continue loop8;
                                             }
                                             continue loop3;
                                          }
                                       }
                                    }
                                 }
                                 addr200:
                              }
                              §§goto(addr195);
                           }
                           continue loop2;
                        }
                        §§goto(addr147);
                     }
                  }
               }
               else
               {
                  §§push(_loc5_.§!!8§());
                  if(_loc13_)
                  {
                     addr77:
                     if(§§pop())
                     {
                        if(_loc13_ || param2)
                        {
                           §§push((_loc8_ = this).§#!C§);
                           if(!_loc12_)
                           {
                              §§push(§§pop() - 1);
                           }
                           _loc9_ = §§pop();
                           if(_loc13_)
                           {
                              _loc8_.§#!C§ = _loc9_;
                           }
                           §§goto(addr201);
                        }
                        §§goto(addr200);
                     }
                     §§goto(addr201);
                  }
               }
               §§goto(addr128);
            }
            §§goto(addr77);
         }
         addr35:
      }
      
      private function §!U§(param1:Sprite) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(this.§?3§);
         if(!_loc2_)
         {
            if(§§pop().contains(param1))
            {
               addr125:
               this.§?3§.removeChild(param1);
            }
            else
            {
               do
               {
                  §§push(this.§-o§);
                  if(!(_loc2_ && param1))
                  {
                     if(!§§pop().contains(param1))
                     {
                        §§push(this.§3^§);
                        if(_loc3_)
                        {
                           if(§§pop().contains(param1))
                           {
                              §§push(this.§3^§);
                           }
                           else
                           {
                              §§push(this.§20§);
                              if(!_loc2_)
                              {
                                 if(!§§pop().contains(param1))
                                 {
                                    return;
                                 }
                                 if(_loc3_ || _loc3_)
                                 {
                                    if(_loc3_ || this)
                                    {
                                       addr59:
                                       this.§20§.removeChild(param1);
                                    }
                                    else
                                    {
                                       return;
                                       addr110:
                                    }
                                 }
                                 if(!_loc2_)
                                 {
                                    return;
                                 }
                                 continue;
                              }
                              §§goto(addr59);
                           }
                        }
                        §§pop().removeChild(param1);
                        return;
                     }
                     addr108:
                     this.§-o§.removeChild(param1);
                     §§goto(addr110);
                  }
                  §§goto(addr108);
               }
               while(!_loc2_);
               
            }
            return;
         }
         §§goto(addr125);
      }
      
      protected function checkExplosions(param1:§+>§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(param1.§&A§());
            loop0:
            while(true)
            {
               §§push(§§pop().toUpperCase() == "WHITE_EGG");
               if(!_loc3_)
               {
                  if(!§§pop())
                  {
                     loop3:
                     while(true)
                     {
                        §§pop();
                        addr133:
                        while(true)
                        {
                           §§push(param1.§^!;§());
                           if(_loc2_ || _loc2_)
                           {
                              §§push(Boolean(§§pop()));
                           }
                           if(_loc2_ || param1)
                           {
                              break;
                           }
                           continue loop3;
                        }
                     }
                     addr132:
                  }
                  for(; §§pop(); §§goto(addr133))
                  {
                     if(_loc2_ || this)
                     {
                        §§push(param1.§57§);
                        if(_loc2_)
                        {
                           if(§§pop().toUpperCase() == §"!?§.§<k§)
                           {
                              if(_loc2_ || _loc3_)
                              {
                                 addr110:
                                 this.addExplosions(§7]§.§#!7§,param1.§>b§().GetPosition().x,param1.§>b§().GetPosition().y);
                              }
                           }
                           else
                           {
                              this.addExplosions(§7]§.§'l§,param1.§>b§().GetPosition().x,param1.§>b§().GetPosition().y);
                              if(!(_loc3_ && param1))
                              {
                                 if(_loc2_)
                                 {
                                    break;
                                 }
                                 continue;
                              }
                           }
                           break;
                        }
                        continue loop0;
                     }
                     §§goto(addr110);
                  }
                  return;
               }
               §§goto(addr132);
            }
         }
         §§goto(addr110);
      }
      
      public function §0!;§(param1:Object, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            this.§]k§(this.§=! §.indexOf(param1),param2,param3,param4);
         }
      }
      
      public function §<E§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §§push(this.§<R§);
            loop0:
            while(true)
            {
               §§push(param1);
               if(_loc3_)
               {
                  §§push(-§§pop());
               }
               addr74:
               while(true)
               {
                  §§pop().x = §§pop();
                  continue loop0;
               }
            }
            addr70:
         }
         while(true)
         {
            §§push(this.§<R§);
            if(_loc3_ || this)
            {
               §§push(param2);
               if(_loc3_ || param1)
               {
                  §§push(-§§pop());
               }
               if(_loc3_)
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
               §§goto(addr70);
            }
            §§goto(addr74);
         }
      }
      
      public function isPigsAlive(param1:Boolean = false) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§+>§ = null;
         var _loc2_:int = 0;
         loop0:
         while(_loc2_ < this.§=! §.length)
         {
            _loc3_ = this.§=! §[_loc2_] as §+>§;
            if(!_loc5_)
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
                        while(true)
                        {
                           §§pop();
                           addr191:
                           while(true)
                           {
                              §§push(Boolean(_loc3_.§+,§()));
                           }
                        }
                        addr190:
                     }
                     while(true)
                     {
                        loop6:
                        while(true)
                        {
                           §§push(§§pop());
                           loop7:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 §§pop();
                                 §§push(_loc3_.§8!'§);
                                 loop8:
                                 while(true)
                                 {
                                    §§push(0);
                                    addr143:
                                    while(true)
                                    {
                                       §§push(§§pop() > §§pop());
                                    }
                                    loop16:
                                    while(true)
                                    {
                                       if(_loc5_ && this)
                                       {
                                          continue loop8;
                                       }
                                       §§push(0);
                                       while(true)
                                       {
                                          §§push(§§pop() <= §§pop());
                                          continue loop1;
                                          addr48:
                                          §§push(0);
                                          if(!(_loc4_ || param1))
                                          {
                                             continue;
                                          }
                                          if(!(_loc5_ && _loc2_))
                                          {
                                             §§push(§§pop() <= §§pop());
                                             if(!_loc5_)
                                             {
                                                if(!_loc5_)
                                                {
                                                   addr68:
                                                   if(!(_loc5_ && _loc3_))
                                                   {
                                                      while(true)
                                                      {
                                                         if(!§§pop())
                                                         {
                                                            while(true)
                                                            {
                                                               _loc2_++;
                                                               if(!_loc5_)
                                                               {
                                                                  if(true)
                                                                  {
                                                                     break;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc3_.§<p§);
                                                                     if(!_loc5_)
                                                                     {
                                                                        §§push(§§pop().mTryToScream);
                                                                        if(_loc5_)
                                                                        {
                                                                           continue loop16;
                                                                        }
                                                                        §§goto(addr48);
                                                                     }
                                                                     addr116:
                                                                     while(true)
                                                                     {
                                                                        continue loop16;
                                                                     }
                                                                  }
                                                                  §§goto(addr80);
                                                                  addr40:
                                                               }
                                                               addr138:
                                                               while(true)
                                                               {
                                                                  §§goto(addr40);
                                                               }
                                                            }
                                                            continue loop0;
                                                            addr34:
                                                         }
                                                         if(_loc4_)
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(true);
                                                               §§goto(addr80);
                                                            }
                                                            addr79:
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(_loc3_.§<p§);
                                                         }
                                                         §§goto(addr116);
                                                      }
                                                      addr75:
                                                   }
                                                   while(true)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         if(_loc4_)
                                                         {
                                                            §§goto(addr149);
                                                            §§push(param1);
                                                         }
                                                         break;
                                                      }
                                                      §§goto(addr34);
                                                      §§goto(addr68);
                                                   }
                                                   §§goto(addr191);
                                                   addr145:
                                                }
                                                while(true)
                                                {
                                                   §§pop();
                                                   §§goto(addr138);
                                                }
                                                addr137:
                                             }
                                             addr80:
                                             while(true)
                                             {
                                                if(!(_loc4_ || _loc3_))
                                                {
                                                   continue loop1;
                                                }
                                                addr97:
                                                if(!(_loc5_ && this))
                                                {
                                                   if(_loc4_ || _loc3_)
                                                   {
                                                      break;
                                                   }
                                                   §§goto(addr190);
                                                }
                                                else
                                                {
                                                   while(true)
                                                   {
                                                      §§push(!§§pop());
                                                      §§push(!§§pop());
                                                      addr151:
                                                      while(true)
                                                      {
                                                         if(_loc5_ && _loc2_)
                                                         {
                                                            continue loop7;
                                                         }
                                                         if(_loc5_)
                                                         {
                                                            break;
                                                         }
                                                         if(§§pop())
                                                         {
                                                            continue loop22;
                                                         }
                                                         if(_loc5_)
                                                         {
                                                            continue loop6;
                                                         }
                                                         §§pop();
                                                      }
                                                      continue loop2;
                                                      §§goto(addr97);
                                                   }
                                                   addr149:
                                                }
                                             }
                                             return §§pop();
                                          }
                                          §§goto(addr143);
                                       }
                                    }
                                 }
                              }
                              while(true)
                              {
                                 §§goto(addr145);
                              }
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr79);
         }
         return false;
      }
      
      public function §@P§(param1:Boolean = false) : int
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:§+>§ = null;
         var _loc2_:int = 0;
         var _loc3_:int = this.§=! §.length - 1;
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
               §§push(Boolean(_loc4_ = this.§=! §[_loc3_] as §+>§));
               if(_loc5_)
               {
                  §§push(§§pop());
                  if(!(_loc6_ && _loc3_))
                  {
                     if(§§pop())
                     {
                        if(!(_loc6_ && _loc2_))
                        {
                           addr58:
                           §§pop();
                           if(_loc5_ || _loc2_)
                           {
                              §§push(_loc4_.§+,§());
                              loop21:
                              while(true)
                              {
                                 §§push(Boolean(§§pop()));
                                 addr190:
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    loop15:
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          while(true)
                                          {
                                             §§pop();
                                             §§push(_loc4_.§8!'§);
                                             addr155:
                                             while(true)
                                             {
                                                §§push(0);
                                                addr156:
                                                while(true)
                                                {
                                                   §§push(§§pop() > §§pop());
                                                }
                                             }
                                          }
                                          addr192:
                                       }
                                       loop19:
                                       while(true)
                                       {
                                          addr158:
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                while(true)
                                                {
                                                   §§push(param1);
                                                   loop3:
                                                   while(true)
                                                   {
                                                      §§push(!§§pop());
                                                      if(!_loc6_)
                                                      {
                                                         §§push(§§pop());
                                                         loop4:
                                                         while(true)
                                                         {
                                                            if(!_loc5_)
                                                            {
                                                               continue loop15;
                                                            }
                                                            if(!§§pop())
                                                            {
                                                               while(!(_loc6_ && this))
                                                               {
                                                                  §§pop();
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc4_.§<p§);
                                                                     loop8:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop().mTryToBlink);
                                                                        addr133:
                                                                        while(true)
                                                                        {
                                                                           §§push(0);
                                                                           addr134:
                                                                           while(_loc5_)
                                                                           {
                                                                              §§push(§§pop() <= §§pop());
                                                                              if(!_loc5_)
                                                                              {
                                                                                 continue loop21;
                                                                              }
                                                                              §§push(§§pop());
                                                                              if(!_loc5_)
                                                                              {
                                                                                 continue loop4;
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    while(_loc6_ && param1)
                                                                                    {
                                                                                       continue loop3;
                                                                                    }
                                                                                    addr150:
                                                                                    §§pop();
                                                                                    continue loop8;
                                                                                    addr143:
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§goto(addr156);
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr192);
                                                               addr177:
                                                            }
                                                            §§goto(addr118);
                                                         }
                                                         continue loop15;
                                                      }
                                                      §§goto(addr177);
                                                   }
                                                }
                                             }
                                             §§goto(addr67);
                                             continue loop19;
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                           §§goto(addr128);
                        }
                        §§goto(addr158);
                     }
                     §§goto(addr190);
                  }
                  §§goto(addr142);
               }
               §§goto(addr58);
            }
            break;
         }
         return §§pop();
      }
      
      public function §6#§() : int
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§+>§ = null;
         var _loc1_:int = 0;
         loop0:
         for each(_loc2_ in this.§=! §)
         {
            if(_loc6_ || this)
            {
               §§push(Boolean(_loc2_));
               if(!_loc5_)
               {
                  §§push(§§pop());
                  loop1:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        loop2:
                        while(§§pop())
                        {
                           if(!_loc5_)
                           {
                              if(!(_loc5_ && this))
                              {
                                 _loc1_++;
                                 addr85:
                                 if(_loc6_ || this)
                                 {
                                    if(true)
                                    {
                                       break;
                                    }
                                    while(true)
                                    {
                                       §§push(_loc2_.§"N§());
                                    }
                                    addr104:
                                 }
                                 else
                                 {
                                    addr118:
                                    while(true)
                                    {
                                       §§push(_loc2_.§3!>§());
                                       if(!(_loc6_ || _loc1_))
                                       {
                                          continue loop1;
                                       }
                                       if(_loc6_ || this)
                                       {
                                          §§push(Boolean(§§pop()));
                                          if(!_loc5_)
                                          {
                                             continue loop2;
                                          }
                                          addr125:
                                          loop7:
                                          while(true)
                                          {
                                             §§pop();
                                             addr126:
                                             while(true)
                                             {
                                                §§goto(addr104);
                                                continue loop7;
                                             }
                                          }
                                       }
                                    }
                                    addr118:
                                 }
                                 while(true)
                                 {
                                    §§push(Boolean(§§pop()));
                                    continue loop1;
                                    §§goto(addr63);
                                 }
                              }
                              §§goto(addr126);
                           }
                           §§goto(addr85);
                        }
                        continue loop0;
                        addr73:
                     }
                  }
               }
               §§goto(addr125);
            }
            §§goto(addr118);
         }
         return _loc1_;
      }
      
      public function §7!D§() : int
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§+>§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§=! §)
         {
            if(_loc6_ || this)
            {
               §§push(Boolean(_loc2_));
               if(_loc6_ || _loc1_)
               {
                  if(§§pop())
                  {
                     if(!_loc5_)
                     {
                        addr75:
                        §§pop();
                        if(_loc6_ || this)
                        {
                           addr83:
                           §§push(_loc2_.isTexture());
                           if(!_loc5_)
                           {
                              addr88:
                              if(!§§pop())
                              {
                                 continue;
                              }
                              if(!_loc6_)
                              {
                                 continue;
                              }
                           }
                           §§goto(addr88);
                        }
                        _loc1_++;
                        continue;
                     }
                  }
                  §§goto(addr88);
               }
               §§goto(addr75);
            }
            §§goto(addr83);
         }
         return _loc1_;
      }
      
      public function makePigsSmile(param1:Number = 1) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§+>§ = null;
         var _loc2_:* = int(this.§=! §.length - 1);
         loop0:
         for(; _loc2_ >= 0; while(false)
         {
            §§goto(addr71);
         })
         {
            _loc3_ = this.§=! §[_loc2_];
            if(!(_loc5_ || _loc3_))
            {
               continue;
            }
            §§push(Boolean(_loc3_));
            loop1:
            while(true)
            {
               §§push(§§pop());
               loop2:
               while(true)
               {
                  if(!§§pop())
                  {
                     while(true)
                     {
                        loop11:
                        while(true)
                        {
                           §§push(§§pop());
                           if(!_loc5_)
                           {
                              continue loop2;
                           }
                           if(§§pop())
                           {
                              loop5:
                              while(true)
                              {
                                 §§pop();
                                 loop6:
                                 while(true)
                                 {
                                    addr71:
                                    loop7:
                                    while(true)
                                    {
                                       §§push(_loc3_.§8!'§ > 0);
                                       if(!_loc5_)
                                       {
                                          break;
                                       }
                                       if(_loc4_)
                                       {
                                          continue loop11;
                                       }
                                       if(!(_loc4_ && param1))
                                       {
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                if(!(_loc4_ && _loc2_))
                                                {
                                                   §§push(_loc3_.§<p§);
                                                   §§push(§`-§.§`w§);
                                                   if(_loc5_ || _loc3_)
                                                   {
                                                      §§push(§§pop() * param1);
                                                   }
                                                   §§pop().mTryToScream = §§pop();
                                                }
                                                loop8:
                                                while(true)
                                                {
                                                   addr42:
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
                                                         break;
                                                      }
                                                      continue loop8;
                                                   }
                                                   if(!_loc4_)
                                                   {
                                                      if(!(_loc4_ && param1))
                                                      {
                                                         continue loop0;
                                                      }
                                                      addr148:
                                                      while(true)
                                                      {
                                                         §§push(_loc3_.§+,§());
                                                         if(!_loc5_)
                                                         {
                                                            break loop7;
                                                         }
                                                         continue loop1;
                                                      }
                                                      continue loop1;
                                                   }
                                                   continue loop6;
                                                }
                                             }
                                             §§goto(addr42);
                                          }
                                          addr87:
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             §§pop();
                                          }
                                          addr147:
                                       }
                                       §§goto(addr148);
                                    }
                                    continue loop5;
                                 }
                              }
                           }
                           §§goto(addr87);
                        }
                     }
                     addr135:
                  }
                  §§goto(addr147);
               }
            }
         }
      }
      
      public function §!X§() : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§+>§ = null;
         var _loc1_:* = int(this.§=! §.length - 1);
         loop0:
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§=! §[_loc1_] as §+>§;
            if(_loc4_ || this)
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
                        §§pop();
                        addr127:
                        while(true)
                        {
                           §§push(Boolean(_loc2_.§!!8§()));
                        }
                        addr127:
                     }
                     while(true)
                     {
                        loop4:
                        while(true)
                        {
                           §§push(§§pop());
                           if(!_loc4_)
                           {
                              break;
                           }
                           if(§§pop())
                           {
                              §§pop();
                              while(true)
                              {
                                 addr75:
                                 do
                                 {
                                    §§push(_loc2_.§8!'§ > 0);
                                 }
                                 while(_loc4_ || _loc3_);
                                 
                                 continue loop4;
                              }
                              addr120:
                           }
                           while(!§§pop())
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
                              
                              if(!(_loc4_ || this))
                              {
                                 break;
                              }
                              if(!_loc3_)
                              {
                                 if(!_loc3_)
                                 {
                                    if(true)
                                    {
                                       continue loop0;
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr127);
                                 }
                              }
                              else
                              {
                                 §§goto(addr120);
                              }
                              §§goto(addr75);
                           }
                           continue loop1;
                        }
                        continue loop2;
                     }
                  }
               }
            }
            §§goto(addr127);
         }
         return false;
      }
      
      public function isWorldAtSleep() : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§+>§ = null;
         var _loc1_:int = this.§=! §.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§=! §[_loc1_] as §+>§;
            §§push(Boolean(_loc2_));
            §§push(Boolean(_loc2_));
            loop1:
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§pop();
                     §§push(_loc2_.§8!'§);
                     addr202:
                     while(true)
                     {
                        §§push(0);
                        addr203:
                        while(true)
                        {
                           §§push(Boolean(§§pop() > §§pop()));
                        }
                     }
                  }
                  addr223:
               }
               while(true)
               {
                  addr207:
                  while(true)
                  {
                     §§push(§§pop());
                     continue loop1;
                  }
               }
            }
         }
         return true;
      }
      
      public function § '§(param1:Boolean = false) : §+>§
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc5_:* = 0;
         var _loc6_:§+>§ = null;
         if(_loc7_)
         {
            if(!this.isPigsAlive())
            {
               if(!_loc8_)
               {
                  §§goto(addr28);
               }
            }
            var _loc2_:int = this.§=! §.length;
            §§push(1);
            if(_loc7_ || this)
            {
               §§push(int(§§pop() + Math.random() * this.§@P§(param1)));
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
                     if(!_loc8_)
                     {
                        _loc5_ = §§pop();
                        if(!_loc7_)
                        {
                           break;
                        }
                        loop3:
                        while(true)
                        {
                           §§push(_loc5_);
                           if(!_loc7_)
                           {
                              continue loop1;
                           }
                           §§push(_loc2_);
                           if(_loc8_)
                           {
                              break;
                           }
                           if(§§pop() >= §§pop())
                           {
                              if(!_loc7_)
                              {
                                 break loop2;
                              }
                              continue loop0;
                           }
                           §§push(Boolean(_loc6_ = this.§=! §[_loc5_]));
                           §§push(Boolean(_loc6_ = this.§=! §[_loc5_]));
                           if(!_loc8_)
                           {
                              if(§§pop())
                              {
                                 §§pop();
                                 if(!(_loc8_ && _loc2_))
                                 {
                                    addr236:
                                    §§push(Boolean(_loc6_.§+,§()));
                                    §§push(Boolean(_loc6_.§+,§()));
                                    loop21:
                                    while(true)
                                    {
                                       if(!§§pop())
                                       {
                                          addr224:
                                          loop11:
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                while(true)
                                                {
                                                   §§push(!param1);
                                                   §§push(!param1);
                                                   loop13:
                                                   for(; !§§pop(); §§push(§§pop() <= §§pop()),§§push(§§pop() <= §§pop()),if(!(_loc8_ && _loc3_))
                                                   {
                                                      if(_loc7_)
                                                      {
                                                         while(§§pop())
                                                         {
                                                            while(!(_loc7_ || _loc2_))
                                                            {
                                                               §§goto(addr207);
                                                            }
                                                            addr200:
                                                            §§pop();
                                                            while(true)
                                                            {
                                                               §§push(_loc6_.§<p§);
                                                               if(_loc7_ || this)
                                                               {
                                                                  §§push(§§pop().mTryToScream);
                                                                  if(!(_loc8_ && _loc3_))
                                                                  {
                                                                     §§push(0);
                                                                     if(!(_loc8_ && this))
                                                                     {
                                                                        §§push(§§pop() <= §§pop());
                                                                        if(!_loc8_)
                                                                        {
                                                                           break loop13;
                                                                        }
                                                                        §§goto(addr193);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr179);
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr176);
                                                                  }
                                                                  §§goto(addr205);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr175);
                                                               }
                                                               §§goto(addr200);
                                                            }
                                                            addr193:
                                                         }
                                                         break;
                                                         addr192:
                                                      }
                                                      continue loop21;
                                                   })
                                                   {
                                                      §§pop();
                                                      §§push(_loc6_.§<p§);
                                                      while(true)
                                                      {
                                                         §§push(§§pop().mTryToBlink);
                                                         addr176:
                                                         while(true)
                                                         {
                                                            if(_loc7_)
                                                            {
                                                               §§push(0);
                                                               while(true)
                                                               {
                                                                  if(_loc7_)
                                                                  {
                                                                     continue loop13;
                                                                  }
                                                                  addr206:
                                                                  addr206:
                                                                  loop17:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() > §§pop());
                                                                     addr207:
                                                                     while(true)
                                                                     {
                                                                        if(!(_loc8_ && _loc2_))
                                                                        {
                                                                           continue loop11;
                                                                        }
                                                                        addr238:
                                                                        while(true)
                                                                        {
                                                                           §§pop();
                                                                           §§push(_loc6_.§8!'§);
                                                                        }
                                                                        continue loop17;
                                                                     }
                                                                  }
                                                               }
                                                               addr179:
                                                            }
                                                            addr205:
                                                            while(true)
                                                            {
                                                               §§goto(addr206);
                                                            }
                                                         }
                                                      }
                                                   }
                                                   while(!§§pop())
                                                   {
                                                   }
                                                   §§goto(addr170);
                                                }
                                                addr226:
                                             }
                                             while(true)
                                             {
                                                _loc5_++;
                                                if(_loc7_ || param1)
                                                {
                                                   if(!_loc8_)
                                                   {
                                                      addr97:
                                                      if(_loc7_ || this)
                                                      {
                                                         break;
                                                      }
                                                      §§goto(addr226);
                                                   }
                                                   addr170:
                                                   §§goto(addr106);
                                                }
                                                §§goto(addr129);
                                             }
                                             addr104:
                                             while(false)
                                             {
                                                addr106:
                                                _loc4_++;
                                                addr171:
                                                while(true)
                                                {
                                                   if(_loc4_ >= _loc3_)
                                                   {
                                                      if(!(_loc8_ && param1))
                                                      {
                                                         break;
                                                      }
                                                      addr129:
                                                      while(!(_loc8_ && param1))
                                                      {
                                                         if(_loc7_)
                                                         {
                                                            continue;
                                                         }
                                                         §§goto(addr201);
                                                      }
                                                      §§goto(addr171);
                                                   }
                                                }
                                                return _loc6_;
                                                §§goto(addr97);
                                             }
                                             continue loop3;
                                          }
                                       }
                                       §§goto(addr238);
                                    }
                                 }
                                 §§goto(addr104);
                              }
                              §§goto(addr236);
                           }
                           §§goto(addr192);
                        }
                        continue;
                     }
                     continue loop1;
                  }
                  return null;
               }
            }
         }
         addr28:
         return null;
      }
      
      public function §%!%§() : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:* = 0;
         var _loc2_:* = int(this.§=! §.length - 1);
         loop0:
         while(true)
         {
            §§push(_loc2_);
            §§push(0);
            if(!_loc3_)
            {
               if(_loc4_)
               {
                  if(!(_loc3_ && _loc2_))
                  {
                     if(§§pop() < §§pop())
                     {
                        if(!(_loc3_ && _loc1_))
                        {
                           if(!(_loc3_ && _loc2_))
                           {
                              if(_loc4_ || _loc1_)
                              {
                                 if(!_loc3_)
                                 {
                                    §§push(_loc1_);
                                    if(_loc4_ || _loc2_)
                                    {
                                       if(_loc4_)
                                       {
                                          addr97:
                                          §§push(§§pop() + this.§1! §.slingshot.§%!%§());
                                          if(_loc4_)
                                          {
                                             if(!_loc3_)
                                             {
                                                addr103:
                                                _loc1_ = int(§§pop());
                                                §§push(_loc1_);
                                                if(_loc4_)
                                                {
                                                   if(_loc4_)
                                                   {
                                                      break;
                                                   }
                                                   loop7:
                                                   while(true)
                                                   {
                                                      _loc1_ = §§pop();
                                                      addr160:
                                                      while(true)
                                                      {
                                                         addr105:
                                                         addr174:
                                                         while(true)
                                                         {
                                                            §§push(_loc2_);
                                                            if(_loc3_ && _loc3_)
                                                            {
                                                               break;
                                                            }
                                                            §§push(§§pop() - 1);
                                                         }
                                                         loop1:
                                                         while(true)
                                                         {
                                                            _loc1_ = §§pop();
                                                            addr175:
                                                            while(true)
                                                            {
                                                               if(!(this.§=! §[_loc2_] as §+>§).§7I§())
                                                               {
                                                                  continue loop1;
                                                               }
                                                               loop3:
                                                               while(true)
                                                               {
                                                                  §§push(_loc1_);
                                                                  §§push(§2^§.§<A§.getValue());
                                                                  addr147:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() + §§pop() * int((this.§=! §[_loc2_] as §+>§).§[!3§));
                                                                     addr158:
                                                                     while(true)
                                                                     {
                                                                        continue loop7;
                                                                     }
                                                                  }
                                                                  addr116:
                                                                  while(_loc3_ && _loc2_)
                                                                  {
                                                                     continue loop3;
                                                                  }
                                                                  continue loop0;
                                                               }
                                                               continue loop1;
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                                while(true)
                                                {
                                                   _loc2_ = §§pop();
                                                   §§goto(addr116);
                                                }
                                                addr104:
                                             }
                                             else
                                             {
                                                addr173:
                                                §§push(int(§§pop()));
                                             }
                                             §§goto(addr174);
                                          }
                                          §§goto(addr158);
                                       }
                                       else
                                       {
                                          addr164:
                                          §§push(§§pop() + (this.§=! §[_loc2_] as §+>§).§&$§.score);
                                       }
                                       §§goto(addr173);
                                    }
                                    §§goto(addr103);
                                 }
                                 §§goto(addr175);
                              }
                              §§goto(addr160);
                           }
                           §§goto(addr116);
                        }
                        §§goto(addr104);
                     }
                     else
                     {
                        §§push(_loc1_);
                     }
                  }
                  §§goto(addr164);
               }
               §§goto(addr147);
            }
            §§goto(addr97);
         }
         return §§pop();
      }
      
      public function §5!D§(param1:§+>§, param2:§+>§) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §§push(param1.§!!8§());
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               §§push(Boolean(§§pop()));
               loop1:
               while(true)
               {
                  if(!§§pop())
                  {
                     while(true)
                     {
                        loop5:
                        do
                        {
                           if(§§pop())
                           {
                              return true;
                           }
                           loop6:
                           while(true)
                           {
                              §§push(param1.§#d§());
                              loop7:
                              while(true)
                              {
                                 §§push(!§§pop());
                                 if(_loc4_ || param1)
                                 {
                                    §§push(§§pop());
                                    if(_loc4_ || this)
                                    {
                                       if(§§pop())
                                       {
                                          §§pop();
                                          if(!(_loc4_ || param1))
                                          {
                                             continue loop6;
                                          }
                                          §§push(param2.§#d§());
                                          if(_loc3_)
                                          {
                                             continue;
                                          }
                                          §§push(!§§pop());
                                          if(_loc3_)
                                          {
                                             continue loop5;
                                          }
                                       }
                                       if(§§pop())
                                       {
                                          if(_loc4_ || param2)
                                          {
                                             §§push(true);
                                             continue loop5;
                                          }
                                          addr63:
                                          while(true)
                                          {
                                          }
                                       }
                                       while(true)
                                       {
                                          §§push(false);
                                          if(!_loc3_)
                                          {
                                             break;
                                          }
                                          break loop7;
                                       }
                                       return §§pop();
                                    }
                                    continue loop1;
                                 }
                              }
                              continue loop0;
                           }
                        }
                        while(!(_loc4_ || param1));
                        
                        return §§pop();
                     }
                     addr114:
                  }
                  while(true)
                  {
                     §§pop();
                     §§push(param2.§!!8§());
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr63);
      }
      
      public function §5e§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            this.mSardineCanAdded = true;
            do
            {
               this.§#!C§ = 0;
            }
            while(!_loc2_);
            
         }
      }
      
      public function objectCollision(param1:§+>§, param2:§+>§) : Boolean
      {
         var _loc20_:Boolean = false;
         var _loc21_:Boolean = true;
         var _loc18_:* = NaN;
         var _loc19_:* = NaN;
         if(!(_loc20_ && this))
         {
            §§push(this.mMightyEagleAdded);
            if(_loc21_ || param2)
            {
               if(§§pop())
               {
                  §§push(param1.§[d§());
                  loop18:
                  while(true)
                  {
                     §§push(Boolean(§§pop()));
                     §§push(Boolean(§§pop()));
                     loop9:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           addr245:
                           while(true)
                           {
                              §§pop();
                              addr246:
                              while(true)
                              {
                                 §§push(Boolean(param2.§+,§()));
                              }
                           }
                           addr245:
                        }
                        while(true)
                        {
                           if(§§pop())
                           {
                              §§push(param2);
                              §§push(param2.§[!3§);
                              if(_loc21_ || param2)
                              {
                                 §§push(§§pop() * 2);
                              }
                              §§pop().applyDamage(§§pop(),true,true,true,false);
                              return true;
                           }
                           else
                           {
                              §§push(Boolean(param2.§[d§()));
                              §§push(Boolean(param2.§[d§()));
                              loop14:
                              while(true)
                              {
                                 if(!§§pop())
                                 {
                                    while(true)
                                    {
                                       §§pop();
                                       §§push(param1.§+,§());
                                       addr178:
                                       while(true)
                                       {
                                          §§push(Boolean(§§pop()));
                                       }
                                    }
                                    addr200:
                                 }
                                 while(true)
                                 {
                                    loop13:
                                    while(true)
                                    {
                                       if(!§§pop())
                                       {
                                          loop4:
                                          while(true)
                                          {
                                             loop5:
                                             while(true)
                                             {
                                                §§push(this.§5!D§(param1,param2));
                                                if(_loc21_ || param1)
                                                {
                                                   if(!§§pop())
                                                   {
                                                      break;
                                                   }
                                                   if(!(_loc20_ && this))
                                                   {
                                                      addr50:
                                                      §§push(false);
                                                      if(_loc21_ || param1)
                                                      {
                                                         if(_loc21_)
                                                         {
                                                            return §§pop();
                                                         }
                                                         addr151:
                                                         while(true)
                                                         {
                                                            §§push(§§pop());
                                                            loop1:
                                                            while(true)
                                                            {
                                                               if(!(_loc21_ || _loc3_))
                                                               {
                                                                  continue loop14;
                                                               }
                                                               if(§§pop())
                                                               {
                                                                  loop2:
                                                                  while(true)
                                                                  {
                                                                     if(!_loc21_)
                                                                     {
                                                                        continue loop18;
                                                                     }
                                                                     §§pop();
                                                                     loop3:
                                                                     while(true)
                                                                     {
                                                                        if(!(_loc21_ || param1))
                                                                        {
                                                                           continue loop4;
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§push(this.mMightyEagleTimer);
                                                                           if(!(_loc21_ || _loc3_))
                                                                           {
                                                                              break;
                                                                           }
                                                                           §§push(§§pop() == §`5§.§%!4§);
                                                                           if(!_loc20_)
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 if(!§§pop())
                                                                                 {
                                                                                    continue loop5;
                                                                                 }
                                                                                 loop12:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(param1.§8i§());
                                                                                    if(_loc21_)
                                                                                    {
                                                                                       if(!_loc20_)
                                                                                       {
                                                                                          §§push(Boolean(§§pop()));
                                                                                          loop8:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop());
                                                                                             if(_loc20_)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             if(_loc21_)
                                                                                             {
                                                                                                if(!§§pop())
                                                                                                {
                                                                                                   §§pop();
                                                                                                   addr137:
                                                                                                   §§push(param2.§8i§());
                                                                                                   while(!(_loc20_ && _loc3_))
                                                                                                   {
                                                                                                      §§push(Boolean(§§pop()));
                                                                                                      if(_loc20_)
                                                                                                      {
                                                                                                         continue loop8;
                                                                                                      }
                                                                                                      if(_loc20_ && param1)
                                                                                                      {
                                                                                                         §§goto(addr178);
                                                                                                      }
                                                                                                      §§goto(addr137);
                                                                                                   }
                                                                                                   addr137:
                                                                                                   §§goto(addr245);
                                                                                                   addr72:
                                                                                                }
                                                                                                while(§§pop())
                                                                                                {
                                                                                                   if(!(_loc20_ && param2))
                                                                                                   {
                                                                                                      if(_loc21_)
                                                                                                      {
                                                                                                         this.mMightyEagleTimer = 0;
                                                                                                         if(_loc21_)
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         continue loop3;
                                                                                                      }
                                                                                                      continue loop12;
                                                                                                   }
                                                                                                   §§goto(addr137);
                                                                                                }
                                                                                                continue loop5;
                                                                                             }
                                                                                             continue loop9;
                                                                                          }
                                                                                          continue loop1;
                                                                                       }
                                                                                       continue loop13;
                                                                                    }
                                                                                    continue loop2;
                                                                                 }
                                                                              }
                                                                              addr121:
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr200);
                                                                           }
                                                                           §§goto(addr178);
                                                                        }
                                                                        var _loc3_:* = §§pop();
                                                                        §§push(param1.§]`§(param2.§&A§()));
                                                                        if(_loc21_ || param1)
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                        }
                                                                        var _loc4_:* = §§pop();
                                                                        §§push(param1.§8I§(param2.§&A§()));
                                                                        if(!(_loc20_ && param2))
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                        }
                                                                        var _loc5_:* = §§pop();
                                                                        §§push(param2.§]`§(param1.§&A§()));
                                                                        if(!(_loc20_ && param1))
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                        }
                                                                        var _loc6_:* = §§pop();
                                                                        §§push(param2.§8I§(param1.§&A§()));
                                                                        if(_loc21_)
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                        }
                                                                        var _loc7_:* = §§pop();
                                                                        §§push(param1.§>b§().GetMass());
                                                                        if(_loc21_)
                                                                        {
                                                                           §§push(param1.§>b§());
                                                                           if(_loc21_ || param2)
                                                                           {
                                                                              §§push(§§pop().GetLinearVelocity().x);
                                                                              if(!_loc20_)
                                                                              {
                                                                                 §§push(§§pop() * §§pop());
                                                                                 if(_loc21_)
                                                                                 {
                                                                                    addr320:
                                                                                    §§push(param2.§>b§().GetMass());
                                                                                    if(_loc21_ || this)
                                                                                    {
                                                                                       addr328:
                                                                                       §§push(§§pop() * param2.§>b§().GetLinearVelocity().x);
                                                                                    }
                                                                                    §§push(§§pop() - §§pop());
                                                                                    if(_loc21_)
                                                                                    {
                                                                                       addr337:
                                                                                       var _loc8_:Number = §§pop();
                                                                                       §§push(param1.§>b§().GetMass());
                                                                                       if(!(_loc20_ && this))
                                                                                       {
                                                                                          §§push(param1.§>b§());
                                                                                          if(_loc21_ || param1)
                                                                                          {
                                                                                             §§push(§§pop().GetLinearVelocity().y);
                                                                                             if(!(_loc20_ && param1))
                                                                                             {
                                                                                                §§push(§§pop() * §§pop());
                                                                                                if(!_loc20_)
                                                                                                {
                                                                                                   addr371:
                                                                                                   §§push(param2.§>b§().GetMass());
                                                                                                   if(_loc21_ || param1)
                                                                                                   {
                                                                                                      addr379:
                                                                                                      §§push(§§pop() * param2.§>b§().GetLinearVelocity().y);
                                                                                                   }
                                                                                                   §§push(§§pop() - §§pop());
                                                                                                   if(_loc20_ && param2)
                                                                                                   {
                                                                                                   }
                                                                                                   addr393:
                                                                                                   var _loc9_:* = §§pop();
                                                                                                   §§push(Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_) / _loc3_);
                                                                                                   if(!_loc20_)
                                                                                                   {
                                                                                                      §§push(Number(§§pop()));
                                                                                                   }
                                                                                                   var _loc10_:* = §§pop();
                                                                                                   §§push(_loc4_);
                                                                                                   if(!(_loc20_ && param1))
                                                                                                   {
                                                                                                      §§push(§§pop() * _loc10_);
                                                                                                      if(_loc21_ || param1)
                                                                                                      {
                                                                                                         addr426:
                                                                                                         §§push(Number(§§pop()));
                                                                                                      }
                                                                                                      var _loc11_:* = §§pop();
                                                                                                      §§push(_loc6_);
                                                                                                      if(_loc21_)
                                                                                                      {
                                                                                                         §§push(§§pop() * _loc10_);
                                                                                                         if(!(_loc20_ && this))
                                                                                                         {
                                                                                                            §§push(Number(§§pop()));
                                                                                                         }
                                                                                                      }
                                                                                                      var _loc12_:* = §§pop();
                                                                                                      var _loc13_:Number = Math.max(0,param1.§8!'§);
                                                                                                      var _loc14_:Number = Math.max(0,param2.§8!'§);
                                                                                                      §§push(param1.applyDamage(_loc12_,true,param2.§!!8§(),_loc14_ == param2.§[!3§));
                                                                                                      if(!(_loc20_ && param2))
                                                                                                      {
                                                                                                         §§push(Number(§§pop()));
                                                                                                      }
                                                                                                      var _loc15_:* = §§pop();
                                                                                                      §§push(param2.applyDamage(_loc11_,true,param1.§!!8§(),_loc13_ == param1.§[!3§));
                                                                                                      if(_loc21_)
                                                                                                      {
                                                                                                         §§push(Number(§§pop()));
                                                                                                      }
                                                                                                      var _loc16_:* = §§pop();
                                                                                                      var _loc17_:Boolean;
                                                                                                      if(_loc17_ = false)
                                                                                                      {
                                                                                                         §3f§.log("--- NEW COLLISION ---");
                                                                                                         §§push(§3f§);
                                                                                                         §§push("Mat Dam Factor1 = ");
                                                                                                         §§push(_loc4_);
                                                                                                         if(_loc21_ || this)
                                                                                                         {
                                                                                                            §§push(§§pop() + §§pop());
                                                                                                            if(_loc21_)
                                                                                                            {
                                                                                                               §§push(" Mat Dam Factor2 = ");
                                                                                                               if(_loc21_ || _loc3_)
                                                                                                               {
                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                  if(!_loc20_)
                                                                                                                  {
                                                                                                                     addr1061:
                                                                                                                     §§push(_loc6_);
                                                                                                                     if(!(_loc20_ && this))
                                                                                                                     {
                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                     }
                                                                                                                     §§push(§§pop() + §§pop() + " Mat Vel Factor2 = ");
                                                                                                                     if(_loc21_ || _loc3_)
                                                                                                                     {
                                                                                                                        addr1073:
                                                                                                                        §§pop().log(§§pop() + _loc7_);
                                                                                                                        loop22:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§3f§);
                                                                                                                           §§push("Object1: ");
                                                                                                                           if(!_loc20_)
                                                                                                                           {
                                                                                                                              §§push(§§pop() + param1.§57§);
                                                                                                                              if(_loc21_ || this)
                                                                                                                              {
                                                                                                                                 §§push(" force1 = ");
                                                                                                                                 if(_loc21_)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                    if(_loc21_ || _loc3_)
                                                                                                                                    {
                                                                                                                                       §§push(_loc11_);
                                                                                                                                       if(!(_loc20_ && param1))
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                          if(_loc21_)
                                                                                                                                          {
                                                                                                                                             addr980:
                                                                                                                                             §§push(" obj health1 = ");
                                                                                                                                             if(_loc21_ || _loc3_)
                                                                                                                                             {
                                                                                                                                                addr988:
                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                if(_loc21_)
                                                                                                                                                {
                                                                                                                                                   addr998:
                                                                                                                                                   addr999:
                                                                                                                                                   addr991:
                                                                                                                                                   §§push(_loc13_);
                                                                                                                                                   if(_loc21_)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                      §§push(" new health1 = ");
                                                                                                                                                   }
                                                                                                                                                   §§pop().log(§§pop() + §§pop());
                                                                                                                                                   §§push(§3f§);
                                                                                                                                                   §§push("Object2: " + param2.§57§);
                                                                                                                                                   if(_loc21_)
                                                                                                                                                   {
                                                                                                                                                      §§push(" force2 = ");
                                                                                                                                                      if(!(_loc20_ && param2))
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                         if(_loc21_)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc12_);
                                                                                                                                                            if(_loc21_ || _loc3_)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() + §§pop());
                                                                                                                                                               if(_loc21_)
                                                                                                                                                               {
                                                                                                                                                                  addr922:
                                                                                                                                                                  §§push(" obj health2 = ");
                                                                                                                                                                  if(!_loc20_)
                                                                                                                                                                  {
                                                                                                                                                                     addr925:
                                                                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                                                                     §§push(_loc14_);
                                                                                                                                                                     if(_loc21_)
                                                                                                                                                                     {
                                                                                                                                                                        addr931:
                                                                                                                                                                        §§push(§§pop() + §§pop() + " new health2 = ");
                                                                                                                                                                        if(_loc21_ || param2)
                                                                                                                                                                        {
                                                                                                                                                                           addr940:
                                                                                                                                                                           §§push(§§pop() + _loc16_);
                                                                                                                                                                        }
                                                                                                                                                                        §§pop().log(§§pop());
                                                                                                                                                                        loop23:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           addr885:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc15_);
                                                                                                                                                                              loop25:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() <= 0);
                                                                                                                                                                                 §§push(§§pop() <= 0);
                                                                                                                                                                                 loop26:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(§§pop())
                                                                                                                                                                                    {
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§pop();
                                                                                                                                                                                          §§push(_loc12_);
                                                                                                                                                                                          §§push(0);
                                                                                                                                                                                          addr847:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop() != §§pop());
                                                                                                                                                                                             addr523:
                                                                                                                                                                                             if(_loc21_ || _loc3_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§goto(addr541);
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       addr890:
                                                                                                                                                                                    }
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       loop30:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!§§pop())
                                                                                                                                                                                          {
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc16_);
                                                                                                                                                                                                if(_loc21_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(0);
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§pop() <= §§pop());
                                                                                                                                                                                                      if(_loc21_ || _loc3_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop());
                                                                                                                                                                                                         loop48:
                                                                                                                                                                                                         for(; !(_loc20_ && _loc3_); §§push(§§pop()),if(_loc21_ || param2)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(§§pop())
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§goto(addr569);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr541:
                                                                                                                                                                                                         },continue,return §§pop() <= §§pop())
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(§§pop())
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§pop();
                                                                                                                                                                                                               §§push(_loc11_);
                                                                                                                                                                                                               if(_loc21_ || param2)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(0);
                                                                                                                                                                                                                  if(_loc21_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(§§pop() == §§pop());
                                                                                                                                                                                                                     if(!_loc20_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr671:
                                                                                                                                                                                                                        §§push(!§§pop());
                                                                                                                                                                                                                        loop59:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(§§pop())
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(_loc11_);
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(_loc21_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(§§pop() - _loc14_);
                                                                                                                                                                                                                                    if(!(_loc20_ && param1))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(§§pop() / _loc11_);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    if(_loc21_ || _loc3_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr694:
                                                                                                                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                                                                                                                       if(!(_loc20_ && this))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          loop49:
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(§§pop());
                                                                                                                                                                                                                                             if(!(_loc20_ && _loc3_))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(_loc21_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   _loc19_ = §§pop();
                                                                                                                                                                                                                                                   if(!_loc20_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      addr715:
                                                                                                                                                                                                                                                      §§push(_loc5_);
                                                                                                                                                                                                                                                      if(!(_loc20_ && _loc3_))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         continue loop25;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      addr860:
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push((§§pop() - §§pop()) / _loc12_);
                                                                                                                                                                                                                                                         addr863:
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                                                                                                                            addr864:
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(_loc18_ = §§pop());
                                                                                                                                                                                                                                                               addr866:
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(§§pop() * _loc7_);
                                                                                                                                                                                                                                                                  addr868:
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                     addr869:
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(§§pop());
                                                                                                                                                                                                                                                                        break loop49;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr715);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   else
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(1);
                                                                                                                                                                                                                                                         addr735:
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(§§pop() > §§pop())
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(_loc20_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  break;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§push(1);
                                                                                                                                                                                                                                                               if(!_loc21_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  continue loop23;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               _loc19_ = Number(§§pop());
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(_loc17_);
                                                                                                                                                                                                                                                               if(!(_loc20_ && param1))
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  continue loop30;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               continue loop59;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            continue loop30;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         addr801:
                                                                                                                                                                                                                                                         addr843:
                                                                                                                                                                                                                                                         while(!(_loc20_ && _loc3_))
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            continue loop22;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         loop43:
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            addr768:
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(param2);
                                                                                                                                                                                                                                                               §§push(§§findproperty(b2Vec2));
                                                                                                                                                                                                                                                               §§push(param2.§>b§().GetLinearVelocity().x);
                                                                                                                                                                                                                                                               if(!(_loc20_ && param1))
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(_loc18_);
                                                                                                                                                                                                                                                                  if(!(_loc20_ && param2))
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     addr791:
                                                                                                                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                     §§push(param2.§>b§().GetLinearVelocity().y);
                                                                                                                                                                                                                                                                     if(!_loc20_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        addr797:
                                                                                                                                                                                                                                                                        §§push(§§pop() * _loc18_);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§pop().§03§(new §§pop().b2Vec2(§§pop(),§§pop()));
                                                                                                                                                                                                                                                                     continue loop43;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr797);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr791);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         continue loop49;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      addr734:
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                break;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             addr733:
                                                                                                                                                                                                                                             _loc19_ = §§pop();
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             _loc18_ = §§pop();
                                                                                                                                                                                                                                             §§push(1);
                                                                                                                                                                                                                                             addr872:
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(§§pop() > §§pop())
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   continue loop23;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                addr816:
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(_loc17_);
                                                                                                                                                                                                                                                   addr818:
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(§§pop())
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(§3f§);
                                                                                                                                                                                                                                                         §§push(param1.§57§ + " is killed. Speed Multiplier for ");
                                                                                                                                                                                                                                                         if(_loc21_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(§§pop() + param2.§57§);
                                                                                                                                                                                                                                                            if(!(_loc20_ && _loc3_))
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(§§pop() + " is ");
                                                                                                                                                                                                                                                               if(!_loc20_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(§§pop() + _loc18_);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§pop().log(§§pop());
                                                                                                                                                                                                                                                         §§goto(addr843);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr768);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          addr702:
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr734);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr864);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr868);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              addr674:
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           else
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              loop57:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(_loc15_);
                                                                                                                                                                                                                                 if(_loc21_ || _loc3_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(0);
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(_loc21_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(§§pop() <= §§pop());
                                                                                                                                                                                                                                          if(_loc21_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             continue loop48;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          addr569:
                                                                                                                                                                                                                                          §§pop();
                                                                                                                                                                                                                                          if(!_loc20_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(_loc16_);
                                                                                                                                                                                                                                             if(!(_loc20_ && _loc3_))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(!(_loc20_ && this))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   continue;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr866);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             else
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§goto(addr674);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             loop56:
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(!_loc20_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(_loc21_ || _loc3_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      continue loop57;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   addr851:
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(_loc12_);
                                                                                                                                                                                                                                                      if(_loc21_ || param2)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§goto(addr860);
                                                                                                                                                                                                                                                         §§push(_loc13_);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      break loop56;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   while(_loc21_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(§3f§);
                                                                                                                                                                                                                                                      §§push(param2.§57§ + " is killed. Speed Multiplier for ");
                                                                                                                                                                                                                                                      if(!(_loc20_ && param2))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(§§pop() + param1.§57§);
                                                                                                                                                                                                                                                         if(!(_loc20_ && _loc3_))
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(§§pop() + " is ");
                                                                                                                                                                                                                                                            if(!_loc20_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               addr651:
                                                                                                                                                                                                                                                               §§push(§§pop() + _loc19_);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§pop().log(§§pop());
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(param1);
                                                                                                                                                                                                                                                            §§push(§§findproperty(b2Vec2));
                                                                                                                                                                                                                                                            §§push(param1.§>b§().GetLinearVelocity().x);
                                                                                                                                                                                                                                                            if(_loc21_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(_loc19_);
                                                                                                                                                                                                                                                               if(_loc21_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  addr586:
                                                                                                                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                  §§push(param1.§>b§().GetLinearVelocity().y);
                                                                                                                                                                                                                                                                  if(_loc21_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     addr592:
                                                                                                                                                                                                                                                                     §§push(§§pop() * _loc19_);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§pop().§03§(new §§pop().b2Vec2(§§pop(),§§pop()));
                                                                                                                                                                                                                                                                  continue loop56;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr592);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr586);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         addr573:
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr651);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr743);
                                                                                                                                                                                                                                                   addr623:
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr863);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr863);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr735);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr541);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr863);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr818);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr872);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr702);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr671);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         continue loop26;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr890);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr847);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr869);
                                                                                                                                                                                             }
                                                                                                                                                                                             addr744:
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr851);
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr940);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr931);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr922);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr925);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr922);
                                                                                                                                                }
                                                                                                                                                addr997:
                                                                                                                                                §§goto(addr998);
                                                                                                                                                §§push(_loc15_);
                                                                                                                                             }
                                                                                                                                             §§goto(addr997);
                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                          }
                                                                                                                                          §§goto(addr999);
                                                                                                                                       }
                                                                                                                                       §§goto(addr998);
                                                                                                                                    }
                                                                                                                                    §§goto(addr997);
                                                                                                                                 }
                                                                                                                                 §§goto(addr988);
                                                                                                                              }
                                                                                                                              §§goto(addr991);
                                                                                                                           }
                                                                                                                           §§goto(addr980);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr1073);
                                                                                                                  }
                                                                                                                  §§push(" Mat Vel Factor1 = ");
                                                                                                                  if(!(_loc20_ && param2))
                                                                                                                  {
                                                                                                                     addr1052:
                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                     §§push(_loc5_);
                                                                                                                     if(!(_loc20_ && _loc3_))
                                                                                                                     {
                                                                                                                        §§goto(addr1061);
                                                                                                                     }
                                                                                                                     §§goto(addr1073);
                                                                                                                  }
                                                                                                                  §§goto(addr1061);
                                                                                                               }
                                                                                                               §§goto(addr1052);
                                                                                                            }
                                                                                                            §§goto(addr1073);
                                                                                                         }
                                                                                                         §§goto(addr1061);
                                                                                                      }
                                                                                                      §§goto(addr885);
                                                                                                   }
                                                                                                   §§goto(addr426);
                                                                                                }
                                                                                                §§goto(addr393);
                                                                                                §§push(Number(§§pop()));
                                                                                             }
                                                                                             §§goto(addr379);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr371);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr337);
                                                                              }
                                                                              §§goto(addr328);
                                                                           }
                                                                           §§goto(addr320);
                                                                        }
                                                                        §§goto(addr337);
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr121);
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr72);
                                                   }
                                                   §§goto(addr246);
                                                }
                                                §§goto(addr50);
                                             }
                                             §§goto(addr249);
                                          }
                                       }
                                       §§push(param1);
                                       §§push(param1.§[!3§);
                                       if(!_loc20_)
                                       {
                                          §§push(§§pop() * 2);
                                       }
                                       §§pop().applyDamage(§§pop(),true,true,true,false);
                                       return true;
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
               }
               else
               {
                  §§push(this.mSardineCanAdded);
                  if(_loc21_ || param2)
                  {
                     §§goto(addr151);
                     return Boolean(§§pop());
                  }
               }
               return §§pop();
            }
            §§goto(addr245);
         }
         §§goto(addr170);
      }
      
      public function §=!G§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§+>§ = null;
         var _loc1_:* = int(this.§=! §.length - 1);
         loop0:
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§=! §[_loc1_] as §+>§;
            if(_loc4_ || this)
            {
               §§push(_loc2_ == null);
               if(_loc4_ || _loc3_)
               {
                  §§push(!§§pop());
                  if(_loc4_ || _loc1_)
                  {
                     addr128:
                     if(§§pop())
                     {
                        loop1:
                        while(true)
                        {
                           §§pop();
                           loop2:
                           while(true)
                           {
                              loop3:
                              while(true)
                              {
                                 §§push(_loc2_.§+,§());
                                 if(!(_loc3_ && _loc2_))
                                 {
                                    if(_loc3_)
                                    {
                                       break;
                                    }
                                    §§push(Boolean(§§pop()));
                                    while(true)
                                    {
                                    }
                                 }
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       loop4:
                                       for(; _loc4_ || _loc3_; if(_loc3_ && _loc1_)
                                       {
                                          continue;
                                       },§§goto(addr69))
                                       {
                                          this.§]k§(_loc1_,true,true,true);
                                          loop5:
                                          while(true)
                                          {
                                             addr44:
                                             addr69:
                                             while(true)
                                             {
                                                §§push(_loc1_);
                                                if(!_loc3_)
                                                {
                                                   §§push(§§pop() - 1);
                                                }
                                                _loc1_ = §§pop();
                                                if(!_loc3_)
                                                {
                                                   continue loop4;
                                                }
                                                continue loop5;
                                             }
                                             addr69:
                                             while(false)
                                             {
                                                continue loop3;
                                             }
                                             continue loop0;
                                          }
                                       }
                                       continue loop2;
                                    }
                                    §§goto(addr44);
                                 }
                              }
                              continue loop1;
                           }
                        }
                        addr130:
                     }
                     §§goto(addr84);
                  }
                  §§goto(addr130);
               }
               §§goto(addr128);
            }
            §§goto(addr69);
         }
      }
      
      public function §+1§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§+>§ = null;
         var _loc1_:* = int(this.§=! §.length - 1);
         loop0:
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§=! §[_loc1_] as §+>§;
            if(!_loc3_)
            {
               §§push(_loc2_ == null);
               if(_loc4_)
               {
                  §§push(!§§pop());
                  if(!(_loc3_ && _loc2_))
                  {
                     addr113:
                     if(§§pop())
                     {
                        loop1:
                        while(true)
                        {
                           §§pop();
                           addr116:
                           while(true)
                           {
                              continue loop1;
                           }
                        }
                        addr115:
                     }
                     while(true)
                     {
                        if(§§pop())
                        {
                           while(_loc4_)
                           {
                              this.§]k§(_loc1_,true,true,true);
                              while(true)
                              {
                              }
                              if(!(_loc4_ || _loc1_))
                              {
                                 continue;
                              }
                              addr64:
                              if(true)
                              {
                                 continue loop0;
                              }
                              §§goto(addr66);
                           }
                           §§goto(addr116);
                        }
                        while(true)
                        {
                           §§push(_loc1_);
                           if(!_loc3_)
                           {
                              §§push(§§pop() - 1);
                           }
                           _loc1_ = §§pop();
                           if(_loc3_)
                           {
                              continue;
                           }
                           §§goto(addr57);
                        }
                        §§goto(addr64);
                     }
                  }
                  §§goto(addr115);
               }
               §§goto(addr113);
            }
            §§goto(addr99);
         }
      }
      
      public function §;]§() : int
      {
         return this.§=! §.length;
      }
      
      public function §?n§(param1:§8+§) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc4_:§+>§ = null;
         var _loc5_:§=!3§ = null;
         var _loc6_:§=!%§ = null;
         var _loc7_:§?"§ = null;
         var _loc2_:* = Number(0);
         loop0:
         while(true)
         {
            §§push(_loc2_);
            if(_loc9_ || _loc2_)
            {
               if(§§pop() >= this.§=! §.length)
               {
                  §§push(Number(0));
                  break;
               }
               §§push((_loc4_ = this.§=! §[_loc2_]).§,4§);
               if(_loc9_ || _loc2_)
               {
                  if(!§§pop())
                  {
                     if(_loc8_ && _loc3_)
                     {
                        continue;
                     }
                  }
                  else
                  {
                     addr60:
                     if(_loc4_.isGround())
                     {
                        if(_loc8_ && _loc3_)
                        {
                           continue;
                        }
                     }
                     else
                     {
                        (_loc5_ = new §=!3§()).angle = _loc4_.§^k§();
                        if(!(_loc8_ && this))
                        {
                           _loc5_.id = _loc4_.§57§;
                           loop1:
                           while(true)
                           {
                              _loc5_.x = _loc4_.§>b§().GetPosition().x;
                              while(true)
                              {
                                 loop3:
                                 while(true)
                                 {
                                    _loc5_.y = _loc4_.§>b§().GetPosition().y;
                                    do
                                    {
                                       param1.addObject(_loc5_);
                                    }
                                    while(!_loc9_);
                                    
                                    if(!(_loc9_ || this))
                                    {
                                       break;
                                    }
                                    if(!_loc9_)
                                    {
                                       continue loop1;
                                    }
                                    while(false)
                                    {
                                       continue loop3;
                                    }
                                    §§push(_loc2_);
                                    if(_loc9_)
                                    {
                                       §§push(§§pop() + 1);
                                       if(_loc9_ || this)
                                       {
                                          addr144:
                                          §§push(Number(§§pop()));
                                       }
                                       _loc2_ = §§pop();
                                       continue loop0;
                                    }
                                    §§goto(addr144);
                                 }
                              }
                           }
                        }
                        §§goto(addr100);
                     }
                  }
                  §§goto(addr133);
               }
               §§goto(addr60);
            }
            break;
         }
         var _loc3_:* = §§pop();
         if(_loc9_)
         {
            while(_loc3_ < this.§?]§.length)
            {
               _loc7_ = this.§?]§[_loc3_];
               _loc6_ = new §=!%§(_loc7_.type,_loc7_.index1,_loc7_.index2,_loc7_.point1,_loc7_.point2,_loc7_.§-r§,_loc7_.§;p§,_loc7_.lowerLimit,_loc7_.upperLimit,_loc7_.§7e§,_loc7_.motorSpeed,_loc7_.§ g§,_loc7_.maxTorque);
               if(_loc8_ && this)
               {
                  continue;
               }
               param1.§-%§(_loc6_);
               if(_loc8_ && _loc2_)
               {
                  continue;
               }
               §§push(_loc3_);
               if(_loc9_)
               {
                  §§push(§§pop() + 1);
                  if(!(_loc8_ && param1))
                  {
                     addr239:
                     §§push(Number(§§pop()));
                  }
                  _loc3_ = §§pop();
                  continue;
               }
               §§goto(addr239);
            }
         }
      }
      
      public function §2I§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:int = 0;
         while(true)
         {
            if(this.§=! §.length <= _loc1_)
            {
               if(_loc2_)
               {
                  break;
               }
               addr59:
               if(_loc2_)
               {
                  if(!_loc3_)
                  {
                     continue;
                  }
                  addr72:
                  _loc1_++;
               }
               continue;
            }
            if(!this.§=! §[_loc1_].isGround())
            {
               this.§0!;§(this.§=! §[_loc1_]);
               §§goto(addr59);
            }
            §§goto(addr72);
         }
      }
      
      public function §1!'§(param1:Point, param2:Point) : Array
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:Array = new Array();
         var _loc4_:* = Number(0);
         while(true)
         {
            §§push(_loc4_);
            if(_loc6_ || param2)
            {
               if(!_loc5_)
               {
                  if(§§pop() >= this.§=! §.length)
                  {
                     if(!(_loc5_ && _loc3_))
                     {
                        break;
                     }
                     loop2:
                     while(!(_loc6_ || param1))
                     {
                        while(true)
                        {
                           continue loop2;
                        }
                     }
                     continue;
                     addr68:
                  }
                  else if(this.§=! §[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
                  {
                     if(_loc6_ || this)
                     {
                        _loc3_.push(this.§=! §[_loc4_]);
                     }
                     §§goto(addr115);
                  }
                  while(true)
                  {
                     §§push(_loc4_);
                     if(!_loc5_)
                     {
                        §§push(§§pop() + 1);
                     }
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
               §§goto(addr68);
            }
         }
         return _loc3_;
      }
      
      public function setGroundTextureEnabled(param1:Boolean) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || this)
         {
            this.§6!&§ = param1;
            if(!_loc3_)
            {
               addr29:
               this.§,3§(param1);
            }
            var _loc2_:* = Number(0);
            while(true)
            {
               §§push(_loc2_);
               if(_loc4_ || this)
               {
                  if(§§pop() >= this.§=! §.length)
                  {
                     if(!_loc3_)
                     {
                        break;
                     }
                     while(true)
                     {
                        if(!_loc3_)
                        {
                           if(_loc4_)
                           {
                              break;
                           }
                           addr106:
                           while(true)
                           {
                              this.§=! §[_loc2_].sprite.visible = !this.§6!&§;
                           }
                        }
                        while(true)
                        {
                        }
                     }
                     continue;
                     addr93:
                  }
                  else if(this.§=! §[_loc2_].isTexture())
                  {
                     §§goto(addr106);
                  }
                  while(true)
                  {
                     §§push(_loc2_);
                     if(_loc4_ || _loc2_)
                     {
                        §§push(§§pop() + 1);
                        if(_loc4_ || param1)
                        {
                        }
                        while(true)
                        {
                           _loc2_ = §§pop();
                           §§goto(addr93);
                        }
                        addr92:
                     }
                  }
               }
               §§goto(addr92);
            }
            return;
         }
         §§goto(addr29);
      }
      
      public function setDamageEnabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§+!F§ = param1;
         }
      }
      
      public function §+#§() : Boolean
      {
         return this.§+!F§;
      }
      
      public function §7!1§() : int
      {
         return this.§,q§;
      }
      
      public function §^"§() : int
      {
         return this.§`a§;
      }
   }
}
